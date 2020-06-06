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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.280792, 31.977024, 22.703930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536190, 32.223125, 22.888882>,  <42.689426, 32.370785, 22.999853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536190, 32.223125, 22.888882>,  <42.280792, 31.977024, 22.703930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536190, 32.223125, 22.888882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705719, 0.228328, 0.670692,
		0.307068, -0.754542, 0.579979,
		0.638491, 0.615250, 0.462382,
		42.727737, 32.407700, 23.027596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585651, 31.554337, 22.730093>,  <42.280792, 31.977024, 22.703930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585651, 31.554337, 22.730093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421551, 31.840500, 22.956326>,  <41.323090, 32.012199, 23.092066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421551, 31.840500, 22.956326>,  <41.585651, 31.554337, 22.730093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421551, 31.840500, 22.956326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006121, 0.622321, -0.782738,
		-0.911952, -0.317657, -0.259687,
		-0.410251, 0.715409, 0.565582,
		41.298477, 32.055122, 23.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011005, 31.807404, 22.456835>,  <41.585651, 31.554337, 22.730093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011005, 31.807404, 22.456835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128769, 32.124916, 22.669712>,  <41.199429, 32.315426, 22.797440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128769, 32.124916, 22.669712>,  <41.011005, 31.807404, 22.456835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128769, 32.124916, 22.669712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086747, 0.576773, -0.812285,
		-0.951734, 0.192978, 0.238666,
		0.294409, 0.793783, 0.532195,
		41.217091, 32.363052, 22.829370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594803, 32.379974, 22.345329>,  <41.011005, 31.807404, 22.456835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594803, 32.379974, 22.345329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945366, 32.544506, 22.445511>,  <41.155704, 32.643223, 22.505619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945366, 32.544506, 22.445511>,  <40.594803, 32.379974, 22.345329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945366, 32.544506, 22.445511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158265, 0.737185, -0.656895,
		-0.454828, 0.536067, 0.711171,
		0.876404, 0.411327, 0.250452,
		41.208286, 32.667904, 22.520647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096844, 31.964851, 22.709232>,  <40.594803, 32.379974, 22.345329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096844, 31.964851, 22.709232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906555, 32.291195, 22.840725>,  <39.792381, 32.487000, 22.919621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906555, 32.291195, 22.840725>,  <40.096844, 31.964851, 22.709232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906555, 32.291195, 22.840725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281792, -0.212675, 0.935608,
		0.833239, 0.537719, -0.128730,
		-0.475717, 0.815860, 0.328734,
		39.763840, 32.535954, 22.939344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480408, 32.356697, 23.228415>,  <40.096844, 31.964851, 22.709232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480408, 32.356697, 23.228415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100849, 32.462337, 23.297523>,  <39.873116, 32.525723, 23.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100849, 32.462337, 23.297523>,  <40.480408, 32.356697, 23.228415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100849, 32.462337, 23.297523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142174, -0.131034, 0.981130,
		0.281757, 0.955553, 0.086789,
		-0.948894, 0.264101, 0.172775,
		39.816181, 32.541569, 23.349356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555996, 32.689579, 23.896877>,  <40.480408, 32.356697, 23.228415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555996, 32.689579, 23.896877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180004, 32.557076, 23.864117>,  <39.954411, 32.477573, 23.844461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180004, 32.557076, 23.864117>,  <40.555996, 32.689579, 23.896877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180004, 32.557076, 23.864117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030952, -0.156249, 0.987233,
		-0.339831, 0.930511, 0.136617,
		-0.939977, -0.331263, -0.081900,
		39.898010, 32.457695, 23.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046127, 33.012524, 24.389626>,  <40.555996, 32.689579, 23.896877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046127, 33.012524, 24.389626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879566, 32.659237, 24.303326>,  <39.779629, 32.447266, 24.251547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879566, 32.659237, 24.303326>,  <40.046127, 33.012524, 24.389626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879566, 32.659237, 24.303326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131604, -0.176248, 0.975508,
		-0.899606, 0.434595, -0.042844,
		-0.416400, -0.883212, -0.215749,
		39.754646, 32.394272, 24.238602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432632, 33.043827, 24.786732>,  <40.046127, 33.012524, 24.389626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432632, 33.043827, 24.786732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 32.656616, 24.700199>,  <39.513889, 32.424290, 24.648279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483418, 32.656616, 24.700199>,  <39.432632, 33.043827, 24.786732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483418, 32.656616, 24.700199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325152, -0.246662, 0.912926,
		-0.937101, -0.045563, -0.346073,
		0.126959, -0.968030, -0.216332,
		39.521503, 32.366207, 24.635300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704811, 32.719620, 24.827919>,  <39.432632, 33.043827, 24.786732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704811, 32.719620, 24.827919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992405, 32.446209, 24.878288>,  <39.164959, 32.282162, 24.908510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992405, 32.446209, 24.878288>,  <38.704811, 32.719620, 24.827919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992405, 32.446209, 24.878288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332521, -0.179188, 0.925916,
		-0.610326, -0.707588, -0.356120,
		0.718980, -0.683528, 0.125925,
		39.208099, 32.241150, 24.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344921, 32.054707, 24.948450>,  <38.704811, 32.719620, 24.827919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344921, 32.054707, 24.948450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714352, 32.008892, 25.094810>,  <38.936012, 31.981403, 25.182627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714352, 32.008892, 25.094810>,  <38.344921, 32.054707, 24.948450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714352, 32.008892, 25.094810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382547, -0.211415, 0.899423,
		-0.025656, -0.970663, -0.239073,
		0.923580, -0.114533, 0.365900,
		38.991425, 31.974531, 25.204580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241348, 31.505062, 25.403698>,  <38.344921, 32.054707, 24.948450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241348, 31.505062, 25.403698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593510, 31.643986, 25.532864>,  <38.804806, 31.727341, 25.610363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593510, 31.643986, 25.532864>,  <38.241348, 31.505062, 25.403698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593510, 31.643986, 25.532864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310215, -0.093259, 0.946081,
		0.358697, -0.933102, 0.025635,
		0.880399, 0.347309, 0.322914,
		38.857628, 31.748178, 25.629738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458221, 31.014015, 25.850092>,  <38.241348, 31.505062, 25.403698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458221, 31.014015, 25.850092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655769, 31.349121, 25.943249>,  <38.774300, 31.550184, 25.999144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655769, 31.349121, 25.943249>,  <38.458221, 31.014015, 25.850092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655769, 31.349121, 25.943249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340442, -0.060158, 0.938339,
		0.800119, -0.542706, 0.255500,
		0.493871, 0.837766, 0.232893,
		38.803932, 31.600451, 26.013117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820774, 30.811344, 26.482330>,  <38.458221, 31.014015, 25.850092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820774, 30.811344, 26.482330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789883, 31.209324, 26.456680>,  <38.771347, 31.448112, 26.441290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789883, 31.209324, 26.456680>,  <38.820774, 30.811344, 26.482330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789883, 31.209324, 26.456680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267050, 0.041326, 0.962796,
		0.960584, 0.091476, 0.262510,
		-0.077224, 0.994950, -0.064126,
		38.766716, 31.507809, 26.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321777, 30.896145, 26.886808>,  <38.820774, 30.811344, 26.482330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321777, 30.896145, 26.886808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140995, 31.252567, 26.870079>,  <39.032524, 31.466421, 26.860041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140995, 31.252567, 26.870079>,  <39.321777, 30.896145, 26.886808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140995, 31.252567, 26.870079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041291, 0.067734, 0.996848,
		0.891083, 0.448807, -0.067406,
		-0.451959, 0.891058, -0.041825,
		39.005409, 31.519884, 26.857533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714073, 31.458246, 27.313704>,  <39.321777, 30.896145, 26.886808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714073, 31.458246, 27.313704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342037, 31.602894, 27.287903>,  <39.118816, 31.689682, 27.272423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342037, 31.602894, 27.287903>,  <39.714073, 31.458246, 27.313704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342037, 31.602894, 27.287903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049430, 0.050790, 0.997485,
		0.363986, 0.930941, -0.029365,
		-0.930092, 0.361619, -0.064503,
		39.063011, 31.711380, 27.268553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604702, 32.060547, 27.747093>,  <39.714073, 31.458246, 27.313704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604702, 32.060547, 27.747093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224922, 31.946457, 27.694633>,  <38.997055, 31.878002, 27.663158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224922, 31.946457, 27.694633>,  <39.604702, 32.060547, 27.747093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224922, 31.946457, 27.694633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136134, -0.002371, 0.990687,
		-0.282880, 0.958457, -0.036578,
		-0.949445, -0.285226, -0.131150,
		38.940090, 31.860889, 27.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243233, 32.499779, 28.192881>,  <39.604702, 32.060547, 27.747093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243233, 32.499779, 28.192881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000801, 32.195667, 28.099377>,  <38.855343, 32.013199, 28.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000801, 32.195667, 28.099377>,  <39.243233, 32.499779, 28.192881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000801, 32.195667, 28.099377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128535, -0.196409, 0.972061,
		-0.784953, 0.619189, 0.021316,
		-0.606076, -0.760282, -0.233759,
		38.818977, 31.967583, 28.029249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651951, 32.683479, 28.457592>,  <39.243233, 32.499779, 28.192881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651951, 32.683479, 28.457592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660248, 32.284698, 28.427490>,  <38.665226, 32.045429, 28.409430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660248, 32.284698, 28.427490>,  <38.651951, 32.683479, 28.457592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660248, 32.284698, 28.427490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028609, -0.075830, 0.996710,
		-0.999376, -0.018519, -0.030094,
		0.020740, -0.996949, -0.075252,
		38.666470, 31.985615, 28.404915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272175, 32.508129, 28.930498>,  <38.651951, 32.683479, 28.457592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272175, 32.508129, 28.930498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450939, 32.155460, 28.869938>,  <38.558197, 31.943859, 28.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450939, 32.155460, 28.869938>,  <38.272175, 32.508129, 28.930498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450939, 32.155460, 28.869938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102827, -0.218749, 0.970348,
		-0.888648, -0.418094, -0.188421,
		0.446913, -0.881673, -0.151399,
		38.585014, 31.890959, 28.824518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791264, 31.955303, 29.281782>,  <38.272175, 32.508129, 28.930498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791264, 31.955303, 29.281782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160442, 31.802673, 29.261486>,  <38.381950, 31.711096, 29.249308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160442, 31.802673, 29.261486>,  <37.791264, 31.955303, 29.281782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160442, 31.802673, 29.261486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040423, -0.227167, 0.973017,
		-0.382805, -0.895989, -0.225087,
		0.922945, -0.381574, -0.050742,
		38.437325, 31.688202, 29.246264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803455, 31.267963, 29.522205>,  <37.791264, 31.955303, 29.281782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803455, 31.267963, 29.522205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194397, 31.342037, 29.563171>,  <38.428963, 31.386482, 29.587751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194397, 31.342037, 29.563171>,  <37.803455, 31.267963, 29.522205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194397, 31.342037, 29.563171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031721, -0.350295, 0.936102,
		0.209227, -0.918151, -0.336487,
		0.977353, 0.185184, 0.102416,
		38.487602, 31.397593, 29.593897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089069, 30.581581, 29.739513>,  <37.803455, 31.267963, 29.522205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089069, 30.581581, 29.739513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344345, 30.872082, 29.841709>,  <38.497509, 31.046383, 29.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344345, 30.872082, 29.841709>,  <38.089069, 30.581581, 29.739513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344345, 30.872082, 29.841709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016498, -0.318878, 0.947652,
		0.769704, -0.608994, -0.191522,
		0.638187, 0.726252, 0.255489,
		38.535801, 31.089958, 29.918356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367989, 30.191406, 30.362610>,  <38.089069, 30.581581, 29.739513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367989, 30.191406, 30.362610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519913, 30.559418, 30.401169>,  <38.611065, 30.780226, 30.424305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519913, 30.559418, 30.401169>,  <38.367989, 30.191406, 30.362610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519913, 30.559418, 30.401169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085869, -0.068692, 0.993935,
		0.921072, -0.385781, 0.052913,
		0.379806, 0.920030, 0.096397,
		38.633854, 30.835426, 30.430088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008789, 30.160469, 30.790058>,  <38.367989, 30.191406, 30.362610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008789, 30.160469, 30.790058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833420, 30.517883, 30.828796>,  <38.728199, 30.732332, 30.852039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833420, 30.517883, 30.828796>,  <39.008789, 30.160469, 30.790058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833420, 30.517883, 30.828796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040328, -0.127202, 0.991057,
		0.897866, 0.430593, 0.091802,
		-0.438419, 0.893538, 0.096845,
		38.701893, 30.785944, 30.857849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336746, 30.513147, 31.326941>,  <39.008789, 30.160469, 30.790058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336746, 30.513147, 31.326941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965710, 30.661224, 31.306789>,  <38.743088, 30.750071, 31.294699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965710, 30.661224, 31.306789>,  <39.336746, 30.513147, 31.326941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965710, 30.661224, 31.306789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080317, -0.065903, 0.994588,
		0.364871, 0.926614, 0.090864,
		-0.927588, 0.370194, -0.050377,
		38.687435, 30.772282, 31.291676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276070, 31.075081, 31.863987>,  <39.336746, 30.513147, 31.326941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276070, 31.075081, 31.863987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935246, 30.894798, 31.757507>,  <38.730751, 30.786629, 31.693619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935246, 30.894798, 31.757507>,  <39.276070, 31.075081, 31.863987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935246, 30.894798, 31.757507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217802, -0.157173, 0.963254,
		-0.475983, 0.878727, 0.035756,
		-0.852058, -0.450705, -0.266201,
		38.679626, 30.759586, 31.677647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590473, 31.327076, 32.023499>,  <39.276070, 31.075081, 31.863987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590473, 31.327076, 32.023499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610149, 30.927876, 32.007607>,  <38.621956, 30.688356, 31.998070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610149, 30.927876, 32.007607>,  <38.590473, 31.327076, 32.023499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610149, 30.927876, 32.007607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156154, -0.046977, 0.986615,
		-0.986507, -0.042323, -0.158153,
		0.049186, -0.997999, -0.039734,
		38.624905, 30.628475, 31.995686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958866, 30.949303, 32.275322>,  <38.590473, 31.327076, 32.023499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958866, 30.949303, 32.275322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304268, 30.751884, 32.316830>,  <38.511509, 30.633434, 32.341736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304268, 30.751884, 32.316830>,  <37.958866, 30.949303, 32.275322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304268, 30.751884, 32.316830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186057, -0.120505, 0.975121,
		-0.468759, -0.861333, -0.195884,
		0.863509, -0.493543, 0.103769,
		38.563320, 30.603821, 32.347961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830742, 30.366068, 32.578102>,  <37.958866, 30.949303, 32.275322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830742, 30.366068, 32.578102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211933, 30.459824, 32.654934>,  <38.440647, 30.516077, 32.701031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211933, 30.459824, 32.654934>,  <37.830742, 30.366068, 32.578102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211933, 30.459824, 32.654934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184951, -0.052230, 0.981359,
		0.240050, -0.970739, -0.006424,
		0.952979, 0.234387, 0.192078,
		38.497826, 30.530140, 32.712559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417747, 29.685167, 32.467461>,  <37.830742, 30.366068, 32.578102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417747, 29.685167, 32.467461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551903, 29.390984, 32.231964>,  <37.632397, 29.214474, 32.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551903, 29.390984, 32.231964>,  <37.417747, 29.685167, 32.467461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551903, 29.390984, 32.231964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451144, 0.423231, -0.785713,
		0.827032, 0.529126, -0.189850,
		0.335390, -0.735460, -0.588738,
		37.652519, 29.170345, 32.055344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566742, 29.961088, 31.754988>,  <37.417747, 29.685167, 32.467461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566742, 29.961088, 31.754988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518646, 29.565742, 31.717724>,  <37.489788, 29.328535, 31.695366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518646, 29.565742, 31.717724>,  <37.566742, 29.961088, 31.754988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518646, 29.565742, 31.717724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632128, 0.148579, -0.760486,
		0.765479, -0.032549, -0.642638,
		-0.120235, -0.988365, -0.093159,
		37.482574, 29.269234, 31.689775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813381, 29.567135, 31.106892>,  <37.566742, 29.961088, 31.754988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813381, 29.567135, 31.106892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488094, 29.395885, 31.264568>,  <37.292923, 29.293137, 31.359175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488094, 29.395885, 31.264568>,  <37.813381, 29.567135, 31.106892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488094, 29.395885, 31.264568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511799, 0.203699, -0.834607,
		0.277018, -0.880464, -0.384765,
		-0.813217, -0.428124, 0.394193,
		37.244129, 29.267448, 31.382826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618359, 29.146172, 30.669277>,  <37.813381, 29.567135, 31.106892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618359, 29.146172, 30.669277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303864, 29.271915, 30.882069>,  <37.115166, 29.347363, 31.009745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303864, 29.271915, 30.882069>,  <37.618359, 29.146172, 30.669277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303864, 29.271915, 30.882069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462457, 0.271638, -0.844006,
		-0.409828, -0.909610, -0.068195,
		-0.786241, 0.314360, 0.531980,
		37.067989, 29.366224, 31.041662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900047, 28.836241, 30.521589>,  <37.618359, 29.146172, 30.669277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900047, 28.836241, 30.521589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810600, 29.217831, 30.601521>,  <36.756931, 29.446785, 30.649479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810600, 29.217831, 30.601521>,  <36.900047, 28.836241, 30.521589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810600, 29.217831, 30.601521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675834, -0.004029, -0.737042,
		-0.702314, -0.299863, 0.645629,
		-0.223613, 0.953973, 0.199828,
		36.743515, 29.504023, 30.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133167, 28.978535, 30.432587>,  <36.900047, 28.836241, 30.521589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133167, 28.978535, 30.432587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352306, 29.289700, 30.309483>,  <36.483788, 29.476398, 30.235620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352306, 29.289700, 30.309483>,  <36.133167, 28.978535, 30.432587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352306, 29.289700, 30.309483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533680, 0.041680, -0.844658,
		-0.644245, 0.626986, 0.437992,
		0.547845, 0.777914, -0.307758,
		36.516659, 29.523073, 30.217155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730335, 29.500994, 30.032547>,  <36.133167, 28.978535, 30.432587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730335, 29.500994, 30.032547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118237, 29.527809, 29.938660>,  <36.350975, 29.543898, 29.882326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118237, 29.527809, 29.938660>,  <35.730335, 29.500994, 30.032547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118237, 29.527809, 29.938660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239833, 0.082556, -0.967297,
		-0.045467, 0.994329, 0.096137,
		0.969749, 0.067037, -0.234720,
		36.409161, 29.547920, 29.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769833, 30.057800, 29.579647>,  <35.730335, 29.500994, 30.032547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769833, 30.057800, 29.579647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108009, 29.852924, 29.519138>,  <36.310917, 29.730000, 29.482834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108009, 29.852924, 29.519138>,  <35.769833, 30.057800, 29.579647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108009, 29.852924, 29.519138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147491, 0.048310, -0.987883,
		0.513292, 0.857512, -0.034700,
		0.845445, -0.512191, -0.151272,
		36.361645, 29.699266, 29.473757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033382, 30.355507, 29.064310>,  <35.769833, 30.057800, 29.579647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033382, 30.355507, 29.064310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199162, 29.992153, 29.042137>,  <36.298630, 29.774141, 29.028833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199162, 29.992153, 29.042137>,  <36.033382, 30.355507, 29.064310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199162, 29.992153, 29.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212853, -0.037532, -0.976363,
		0.884832, 0.416448, -0.208907,
		0.414446, -0.908384, -0.055433,
		36.323494, 29.719639, 29.025507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645432, 30.377356, 28.556005>,  <36.033382, 30.355507, 29.064310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645432, 30.377356, 28.556005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524231, 29.997261, 28.584965>,  <36.451511, 29.769203, 28.602341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524231, 29.997261, 28.584965>,  <36.645432, 30.377356, 28.556005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524231, 29.997261, 28.584965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026057, -0.067679, -0.997367,
		0.952635, -0.304087, -0.004254,
		-0.302998, -0.950238, 0.072397,
		36.433331, 29.712191, 28.606684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015556, 30.072145, 28.004961>,  <36.645432, 30.377356, 28.556005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015556, 30.072145, 28.004961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698231, 29.856750, 28.118576>,  <36.507835, 29.727512, 28.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698231, 29.856750, 28.118576>,  <37.015556, 30.072145, 28.004961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698231, 29.856750, 28.118576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145023, -0.285973, -0.947200,
		0.591284, -0.792622, 0.148774,
		-0.793317, -0.538488, 0.284039,
		36.460236, 29.695204, 28.203789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138229, 29.405720, 27.919056>,  <37.015556, 30.072145, 28.004961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138229, 29.405720, 27.919056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752357, 29.508446, 27.895576>,  <36.520836, 29.570082, 27.881489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752357, 29.508446, 27.895576>,  <37.138229, 29.405720, 27.919056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752357, 29.508446, 27.895576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012659, -0.267752, -0.963405,
		-0.263116, -0.928635, 0.261546,
		-0.964681, 0.256798, -0.058694,
		36.462955, 29.585489, 27.877968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058960, 29.164072, 27.260611>,  <37.138229, 29.405720, 27.919056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058960, 29.164072, 27.260611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684315, 29.259171, 27.363548>,  <36.459526, 29.316229, 27.425310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684315, 29.259171, 27.363548>,  <37.058960, 29.164072, 27.260611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684315, 29.259171, 27.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264229, 0.003005, -0.964455,
		-0.230070, -0.971322, 0.060005,
		-0.936617, 0.237747, 0.257342,
		36.403328, 29.330494, 27.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533836, 28.729591, 26.868309>,  <37.058960, 29.164072, 27.260611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533836, 28.729591, 26.868309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395512, 29.091610, 26.967346>,  <36.312515, 29.308821, 27.026768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395512, 29.091610, 26.967346>,  <36.533836, 28.729591, 26.868309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395512, 29.091610, 26.967346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145746, 0.208859, -0.967024,
		-0.926914, -0.370498, 0.059680,
		-0.345816, 0.905046, 0.247593,
		36.291767, 29.363123, 27.041624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128536, 28.820063, 26.301601>,  <36.533836, 28.729591, 26.868309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128536, 28.820063, 26.301601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100170, 29.170113, 26.493069>,  <36.083149, 29.380142, 26.607948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100170, 29.170113, 26.493069>,  <36.128536, 28.820063, 26.301601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100170, 29.170113, 26.493069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190128, 0.459219, -0.867738,
		-0.979195, -0.152546, 0.133820,
		-0.070917, 0.875127, 0.478668,
		36.078896, 29.432652, 26.636669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530655, 29.185514, 26.056950>,  <36.128536, 28.820063, 26.301601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530655, 29.185514, 26.056950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779621, 29.455368, 26.215679>,  <35.929001, 29.617281, 26.310917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779621, 29.455368, 26.215679>,  <35.530655, 29.185514, 26.056950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779621, 29.455368, 26.215679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071493, 0.553887, -0.829517,
		-0.779416, 0.487933, 0.392979,
		0.622415, 0.674634, 0.396825,
		35.966347, 29.657759, 26.334726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171112, 29.806305, 26.031990>,  <35.530655, 29.185514, 26.056950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171112, 29.806305, 26.031990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564968, 29.875584, 26.023190>,  <35.801281, 29.917150, 26.017908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564968, 29.875584, 26.023190>,  <35.171112, 29.806305, 26.031990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564968, 29.875584, 26.023190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112831, 0.535093, -0.837224,
		-0.133232, 0.826848, 0.546417,
		0.984641, 0.173198, -0.022003,
		35.860359, 29.927544, 26.016588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207428, 30.397320, 25.641754>,  <35.171112, 29.806305, 26.031990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207428, 30.397320, 25.641754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596371, 30.310631, 25.676502>,  <35.829739, 30.258617, 25.697351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596371, 30.310631, 25.676502>,  <35.207428, 30.397320, 25.641754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596371, 30.310631, 25.676502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190366, 0.520437, -0.832410,
		0.135193, 0.825939, 0.547309,
		0.972360, -0.216725, 0.086871,
		35.888077, 30.245613, 25.702564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587902, 31.009447, 25.626966>,  <35.207428, 30.397320, 25.641754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587902, 31.009447, 25.626966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862926, 30.730827, 25.544910>,  <36.027939, 30.563656, 25.495676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862926, 30.730827, 25.544910>,  <35.587902, 31.009447, 25.626966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862926, 30.730827, 25.544910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211965, 0.462737, -0.860782,
		0.694504, 0.548354, 0.465803,
		0.687557, -0.696550, -0.205141,
		36.069195, 30.521862, 25.483368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233677, 31.330063, 25.541275>,  <35.587902, 31.009447, 25.626966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233677, 31.330063, 25.541275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310261, 31.001099, 25.326992>,  <36.356213, 30.803720, 25.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310261, 31.001099, 25.326992>,  <36.233677, 31.330063, 25.541275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310261, 31.001099, 25.326992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340574, 0.567562, -0.749589,
		0.920517, -0.038931, 0.388758,
		0.191462, -0.822410, -0.535709,
		36.367699, 30.754375, 25.166279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910267, 31.454235, 25.208412>,  <36.233677, 31.330063, 25.541275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910267, 31.454235, 25.208412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754074, 31.144531, 25.009197>,  <36.660358, 30.958710, 24.889668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754074, 31.144531, 25.009197>,  <36.910267, 31.454235, 25.208412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754074, 31.144531, 25.009197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230383, 0.441591, -0.867134,
		0.891316, -0.453344, 0.005941,
		-0.390486, -0.774259, -0.498040,
		36.636929, 30.912254, 24.859785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442940, 31.179277, 24.722599>,  <36.910267, 31.454235, 25.208412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442940, 31.179277, 24.722599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087559, 31.066647, 24.577618>,  <36.874332, 30.999069, 24.490629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087559, 31.066647, 24.577618>,  <37.442940, 31.179277, 24.722599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087559, 31.066647, 24.577618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158332, 0.553201, -0.817862,
		0.430800, -0.784017, -0.446909,
		-0.888450, -0.281575, -0.362454,
		36.821022, 30.982174, 24.468882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520466, 31.195269, 24.053518>,  <37.442940, 31.179277, 24.722599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520466, 31.195269, 24.053518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122917, 31.229267, 24.081776>,  <36.884388, 31.249666, 24.098730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122917, 31.229267, 24.081776>,  <37.520466, 31.195269, 24.053518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122917, 31.229267, 24.081776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010285, 0.565285, -0.824831,
		-0.110041, -0.820505, -0.560948,
		-0.993874, 0.084996, 0.070644,
		36.824757, 31.254766, 24.102968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275391, 31.159885, 23.292410>,  <37.520466, 31.195269, 24.053518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275391, 31.159885, 23.292410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989590, 31.345463, 23.501884>,  <36.818108, 31.456808, 23.627569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989590, 31.345463, 23.501884>,  <37.275391, 31.159885, 23.292410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989590, 31.345463, 23.501884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182676, 0.846258, -0.500476,
		-0.675365, -0.261926, -0.689403,
		-0.714501, 0.463942, 0.523686,
		36.775238, 31.484646, 23.658991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894176, 31.600288, 22.835556>,  <37.275391, 31.159885, 23.292410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894176, 31.600288, 22.835556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811192, 31.752213, 23.196156>,  <36.761402, 31.843367, 23.412516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811192, 31.752213, 23.196156>,  <36.894176, 31.600288, 22.835556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811192, 31.752213, 23.196156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080083, 0.925051, -0.371304,
		-0.974960, -0.004836, -0.222326,
		-0.207459, 0.379812, 0.901501,
		36.748955, 31.866156, 23.466606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414364, 32.139492, 22.753584>,  <36.894176, 31.600288, 22.835556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414364, 32.139492, 22.753584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606731, 32.214428, 23.096191>,  <36.722153, 32.259388, 23.301756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606731, 32.214428, 23.096191>,  <36.414364, 32.139492, 22.753584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606731, 32.214428, 23.096191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041283, 0.970984, -0.235553,
		-0.875795, 0.148641, 0.459227,
		0.480915, 0.187338, 0.856519,
		36.751007, 32.270630, 23.353148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076542, 32.729828, 23.097862>,  <36.414364, 32.139492, 22.753584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076542, 32.729828, 23.097862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 32.711296, 23.215195>,  <36.687668, 32.700176, 23.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 32.711296, 23.215195>,  <36.076542, 32.729828, 23.097862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458496, 32.711296, 23.215195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137355, 0.944650, -0.297944,
		-0.263294, 0.324794, 0.908397,
		0.954887, -0.046326, 0.293333,
		36.744961, 32.697399, 23.303194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414989, 33.327206, 23.517725>,  <36.076542, 32.729828, 23.097862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414989, 33.327206, 23.517725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699154, 33.192944, 23.270290>,  <36.869652, 33.112385, 23.121830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699154, 33.192944, 23.270290>,  <36.414989, 33.327206, 23.517725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699154, 33.192944, 23.270290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025850, 0.865904, -0.499542,
		0.703309, 0.370872, 0.606474,
		0.710415, -0.335655, -0.618585,
		36.912277, 33.092247, 23.084715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853897, 33.677647, 23.352972>,  <36.414989, 33.327206, 23.517725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853897, 33.677647, 23.352972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796902, 33.740402, 22.962059>,  <35.762707, 33.778057, 22.727510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796902, 33.740402, 22.962059>,  <35.853897, 33.677647, 23.352972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796902, 33.740402, 22.962059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776017, -0.630600, 0.011905,
		-0.614407, 0.760084, 0.211604,
		-0.142486, 0.156893, -0.977283,
		35.754154, 33.787472, 22.668875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179413, 33.957394, 23.274080>,  <35.853897, 33.677647, 23.352972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179413, 33.957394, 23.274080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271160, 33.765209, 22.935482>,  <35.326206, 33.649899, 22.732323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271160, 33.765209, 22.935482>,  <35.179413, 33.957394, 23.274080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271160, 33.765209, 22.935482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789704, -0.600257, 0.126721,
		-0.568998, 0.639414, -0.517099,
		0.229365, -0.480459, -0.846493,
		35.339970, 33.621071, 22.681534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709106, 33.983086, 22.727646>,  <35.179413, 33.957394, 23.274080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709106, 33.983086, 22.727646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876141, 33.622299, 22.683670>,  <34.976360, 33.405827, 22.657286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876141, 33.622299, 22.683670>,  <34.709106, 33.983086, 22.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876141, 33.622299, 22.683670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877382, -0.431722, 0.209324,
		-0.236265, 0.009046, -0.971647,
		0.417588, -0.901961, -0.109937,
		35.001415, 33.351711, 22.650688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112240, 33.634445, 22.416847>,  <34.709106, 33.983086, 22.727646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112240, 33.634445, 22.416847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398094, 33.394653, 22.561024>,  <34.569607, 33.250778, 22.647530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398094, 33.394653, 22.561024>,  <34.112240, 33.634445, 22.416847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398094, 33.394653, 22.561024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697413, -0.650377, 0.301039,
		0.053955, -0.466510, -0.882869,
		0.714635, -0.599482, 0.360441,
		34.612484, 33.214809, 22.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079834, 32.916130, 22.020378>,  <34.112240, 33.634445, 22.416847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079834, 32.916130, 22.020378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266090, 32.843628, 22.366863>,  <34.377846, 32.800125, 22.574755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266090, 32.843628, 22.366863>,  <34.079834, 32.916130, 22.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266090, 32.843628, 22.366863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705923, -0.666375, 0.240037,
		0.533714, -0.723251, -0.438244,
		0.465642, -0.181255, 0.866213,
		34.405785, 32.789253, 22.626726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264797, 32.192326, 22.112894>,  <34.079834, 32.916130, 22.020378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264797, 32.192326, 22.112894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222710, 32.338848, 22.482704>,  <34.197456, 32.426762, 22.704590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222710, 32.338848, 22.482704>,  <34.264797, 32.192326, 22.112894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222710, 32.338848, 22.482704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517588, -0.814011, 0.263608,
		0.849135, -0.450786, 0.275247,
		-0.105224, 0.366303, 0.924527,
		34.191143, 32.448738, 22.760063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527222, 31.698450, 22.544018>,  <34.264797, 32.192326, 22.112894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527222, 31.698450, 22.544018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250626, 31.927792, 22.719795>,  <34.084667, 32.065395, 22.825262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250626, 31.927792, 22.719795>,  <34.527222, 31.698450, 22.544018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250626, 31.927792, 22.719795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449463, -0.817710, 0.359629,
		0.565532, 0.051165, 0.823138,
		-0.691489, 0.573352, 0.439444,
		34.043179, 32.099796, 22.851629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596542, 31.505032, 23.194588>,  <34.527222, 31.698450, 22.544018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596542, 31.505032, 23.194588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231342, 31.667549, 23.179859>,  <34.012222, 31.765060, 23.171022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231342, 31.667549, 23.179859>,  <34.596542, 31.505032, 23.194588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231342, 31.667549, 23.179859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385429, -0.829483, 0.404230,
		0.133694, 0.383253, 0.913916,
		-0.913001, 0.406293, -0.036820,
		33.957443, 31.789436, 23.168814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302277, 31.449699, 23.801979>,  <34.596542, 31.505032, 23.194588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302277, 31.449699, 23.801979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970600, 31.513233, 23.587608>,  <33.771595, 31.551353, 23.458986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970600, 31.513233, 23.587608>,  <34.302277, 31.449699, 23.801979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970600, 31.513233, 23.587608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501765, -0.634029, 0.588421,
		-0.246330, 0.756821, 0.605428,
		-0.829189, 0.158836, -0.535927,
		33.721844, 31.560884, 23.426830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808983, 31.544447, 24.222857>,  <34.302277, 31.449699, 23.801979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808983, 31.544447, 24.222857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572800, 31.470455, 23.908623>,  <33.431091, 31.426060, 23.720083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572800, 31.470455, 23.908623>,  <33.808983, 31.544447, 24.222857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572800, 31.470455, 23.908623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650338, -0.467368, 0.598855,
		-0.477932, 0.864494, 0.155663,
		-0.590459, -0.184979, -0.785584,
		33.395660, 31.414961, 23.672947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248810, 31.700941, 24.480770>,  <33.808983, 31.544447, 24.222857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248810, 31.700941, 24.480770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190872, 31.474243, 24.156345>,  <33.156109, 31.338224, 23.961691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190872, 31.474243, 24.156345>,  <33.248810, 31.700941, 24.480770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190872, 31.474243, 24.156345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615127, -0.590470, 0.522460,
		-0.775008, 0.574582, -0.263091,
		-0.144849, -0.566745, -0.811060,
		33.147419, 31.304220, 23.913027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550674, 31.528631, 24.450380>,  <33.248810, 31.700941, 24.480770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550674, 31.528631, 24.450380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682308, 31.237415, 24.209827>,  <32.761288, 31.062687, 24.065495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682308, 31.237415, 24.209827>,  <32.550674, 31.528631, 24.450380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682308, 31.237415, 24.209827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714791, -0.608220, 0.345170,
		-0.617071, 0.316275, -0.720551,
		0.329084, -0.728038, -0.601385,
		32.781033, 31.019003, 24.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936947, 31.262705, 24.112282>,  <32.550674, 31.528631, 24.450380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936947, 31.262705, 24.112282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203930, 30.965424, 24.093742>,  <32.364120, 30.787054, 24.082619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203930, 30.965424, 24.093742>,  <31.936947, 31.262705, 24.112282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203930, 30.965424, 24.093742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685185, -0.637343, 0.352583,
		-0.291582, -0.203576, -0.934632,
		0.667459, -0.743203, -0.046350,
		32.404167, 30.742462, 24.079838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534534, 30.709742, 24.170412>,  <31.936947, 31.262705, 24.112282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534534, 30.709742, 24.170412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885080, 30.524708, 24.224079>,  <32.095409, 30.413687, 24.256279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885080, 30.524708, 24.224079>,  <31.534534, 30.709742, 24.170412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885080, 30.524708, 24.224079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462834, -0.731702, 0.500398,
		-0.133307, -0.500628, -0.855337,
		0.876365, -0.462585, 0.134167,
		32.147991, 30.385933, 24.264330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376465, 30.025612, 23.972075>,  <31.534534, 30.709742, 24.170412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376465, 30.025612, 23.972075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707264, 30.047989, 24.195843>,  <31.905743, 30.061415, 24.330103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707264, 30.047989, 24.195843>,  <31.376465, 30.025612, 23.972075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707264, 30.047989, 24.195843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417354, -0.605605, 0.677538,
		0.376689, -0.793797, -0.477485,
		0.826995, 0.055941, 0.559419,
		31.955362, 30.064772, 24.363668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532173, 29.275684, 24.181671>,  <31.376465, 30.025612, 23.972075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532173, 29.275684, 24.181671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741732, 29.487881, 24.448238>,  <31.867466, 29.615198, 24.608179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741732, 29.487881, 24.448238>,  <31.532173, 29.275684, 24.181671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741732, 29.487881, 24.448238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320417, -0.602175, 0.731245,
		0.789219, -0.596627, -0.145497,
		0.523895, 0.530493, 0.666417,
		31.898901, 29.647028, 24.648163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834213, 28.742544, 24.651514>,  <31.532173, 29.275684, 24.181671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834213, 28.742544, 24.651514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831446, 29.090286, 24.849171>,  <31.829786, 29.298931, 24.967766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831446, 29.090286, 24.849171>,  <31.834213, 28.742544, 24.651514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831446, 29.090286, 24.849171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332751, -0.467995, 0.818692,
		0.942989, -0.158763, 0.292515,
		-0.006917, 0.869353, 0.494143,
		31.829370, 29.351091, 24.997414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094742, 28.638086, 25.304300>,  <31.834213, 28.742544, 24.651514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094742, 28.638086, 25.304300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907991, 28.986980, 25.362591>,  <31.795942, 29.196316, 25.397566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907991, 28.986980, 25.362591>,  <32.094742, 28.638086, 25.304300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907991, 28.986980, 25.362591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275055, -0.299843, 0.913476,
		0.840460, 0.386397, 0.379901,
		-0.466875, 0.872234, 0.145726,
		31.767929, 29.248650, 25.406309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296303, 28.797161, 25.925303>,  <32.094742, 28.638086, 25.304300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296303, 28.797161, 25.925303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974520, 29.026855, 25.864517>,  <31.781448, 29.164673, 25.828045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974520, 29.026855, 25.864517>,  <32.296303, 28.797161, 25.925303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974520, 29.026855, 25.864517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406819, -0.346206, 0.845364,
		0.432829, 0.741884, 0.512120,
		-0.804461, 0.574238, -0.151965,
		31.733181, 29.199127, 25.818928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225960, 29.280001, 26.495382>,  <32.296303, 28.797161, 25.925303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225960, 29.280001, 26.495382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864092, 29.225269, 26.333965>,  <31.646971, 29.192430, 26.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864092, 29.225269, 26.333965>,  <32.225960, 29.280001, 26.495382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864092, 29.225269, 26.333965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341526, -0.333495, 0.878716,
		-0.254814, 0.932770, 0.254972,
		-0.904671, -0.136829, -0.403544,
		31.592690, 29.184221, 26.212902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875023, 29.589396, 26.891235>,  <32.225960, 29.280001, 26.495382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875023, 29.589396, 26.891235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598358, 29.368393, 26.705185>,  <31.432360, 29.235792, 26.593555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598358, 29.368393, 26.705185>,  <31.875023, 29.589396, 26.891235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598358, 29.368393, 26.705185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367829, -0.284751, 0.885222,
		-0.621535, 0.783361, -0.006276,
		-0.691662, -0.552505, -0.465126,
		31.390860, 29.202641, 26.565647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160978, 29.667643, 27.212868>,  <31.875023, 29.589396, 26.891235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160978, 29.667643, 27.212868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126875, 29.310715, 27.035557>,  <31.106413, 29.096558, 26.929171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126875, 29.310715, 27.035557>,  <31.160978, 29.667643, 27.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126875, 29.310715, 27.035557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381198, -0.381833, 0.841957,
		-0.920554, 0.240760, -0.307597,
		-0.085258, -0.892322, -0.443275,
		31.101297, 29.043018, 26.902575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564465, 29.455450, 27.524153>,  <31.160978, 29.667643, 27.212868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564465, 29.455450, 27.524153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743444, 29.123383, 27.391125>,  <30.850832, 28.924141, 27.311308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743444, 29.123383, 27.391125>,  <30.564465, 29.455450, 27.524153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743444, 29.123383, 27.391125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367433, -0.509693, 0.777950,
		-0.815340, -0.225897, -0.533095,
		0.447451, -0.830171, -0.332571,
		30.877680, 28.874331, 27.291353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193535, 28.918524, 27.810514>,  <30.564465, 29.455450, 27.524153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193535, 28.918524, 27.810514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520147, 28.717060, 27.697659>,  <30.716116, 28.596182, 27.629946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520147, 28.717060, 27.697659>,  <30.193535, 28.918524, 27.810514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520147, 28.717060, 27.697659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090490, -0.594343, 0.799105,
		-0.570158, -0.626968, -0.530878,
		0.816536, -0.503655, -0.282135,
		30.765108, 28.565962, 27.613016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089952, 28.197134, 28.008308>,  <30.193535, 28.918524, 27.810514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089952, 28.197134, 28.008308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482288, 28.219036, 27.933521>,  <30.717690, 28.232178, 27.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482288, 28.219036, 27.933521>,  <30.089952, 28.197134, 28.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482288, 28.219036, 27.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163700, -0.751956, 0.638564,
		-0.105629, -0.656935, -0.746511,
		0.980839, 0.054753, -0.186969,
		30.776541, 28.235462, 27.877430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341558, 27.485718, 27.906605>,  <30.089952, 28.197134, 28.008308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341558, 27.485718, 27.906605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638611, 27.737789, 27.997269>,  <30.816841, 27.889032, 28.051666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638611, 27.737789, 27.997269>,  <30.341558, 27.485718, 27.906605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638611, 27.737789, 27.997269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404975, -0.692129, 0.597455,
		0.533382, -0.351896, -0.769203,
		0.742630, 0.630180, 0.226659,
		30.861401, 27.926844, 28.065266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952801, 27.087776, 27.882656>,  <30.341558, 27.485718, 27.906605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952801, 27.087776, 27.882656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081991, 27.409958, 28.081425>,  <31.159506, 27.603268, 28.200686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081991, 27.409958, 28.081425>,  <30.952801, 27.087776, 27.882656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081991, 27.409958, 28.081425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521998, -0.589580, 0.616371,
		0.789433, 0.060318, -0.610866,
		0.322977, 0.805455, 0.496920,
		31.178885, 27.651594, 28.230501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646873, 27.053352, 27.888245>,  <30.952801, 27.087776, 27.882656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646873, 27.053352, 27.888245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519297, 27.255775, 28.208790>,  <31.442751, 27.377230, 28.401117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519297, 27.255775, 28.208790>,  <31.646873, 27.053352, 27.888245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519297, 27.255775, 28.208790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627836, -0.520587, 0.578629,
		0.709999, 0.687672, -0.151686,
		-0.318941, 0.506060, 0.801362,
		31.423615, 27.407593, 28.449198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300240, 26.973650, 28.386835>,  <31.646873, 27.053352, 27.888245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300240, 26.973650, 28.386835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001911, 27.113743, 28.613495>,  <31.822914, 27.197798, 28.749491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001911, 27.113743, 28.613495>,  <32.300240, 26.973650, 28.386835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001911, 27.113743, 28.613495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366889, -0.494028, 0.788244,
		0.556008, 0.795785, 0.239960,
		-0.745820, 0.350231, 0.566648,
		31.778166, 27.218813, 28.783489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530636, 27.253820, 28.976336>,  <32.300240, 26.973650, 28.386835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530636, 27.253820, 28.976336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166931, 27.099930, 29.039864>,  <31.948708, 27.007595, 29.077980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166931, 27.099930, 29.039864>,  <32.530636, 27.253820, 28.976336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166931, 27.099930, 29.039864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346079, -0.486842, 0.802006,
		-0.231234, 0.784199, 0.575815,
		-0.909263, -0.384729, 0.158821,
		31.894152, 26.984510, 29.087509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452415, 27.301428, 29.764477>,  <32.530636, 27.253820, 28.976336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452415, 27.301428, 29.764477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123230, 27.094105, 29.671448>,  <31.925718, 26.969711, 29.615629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123230, 27.094105, 29.671448>,  <32.452415, 27.301428, 29.764477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123230, 27.094105, 29.671448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, -0.607696, 0.777246,
		-0.544187, 0.601717, 0.584635,
		-0.822962, -0.518307, -0.232574,
		31.876341, 26.938612, 29.601675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112640, 27.174997, 30.428364>,  <32.452415, 27.301428, 29.764477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112640, 27.174997, 30.428364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963446, 26.910439, 30.168076>,  <31.873930, 26.751703, 30.011902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963446, 26.910439, 30.168076>,  <32.112640, 27.174997, 30.428364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963446, 26.910439, 30.168076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039452, -0.689392, 0.723314,
		-0.926998, 0.295458, 0.231040,
		-0.372986, -0.661395, -0.650721,
		31.851549, 26.712021, 29.972858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433233, 26.911709, 30.692223>,  <32.112640, 27.174997, 30.428364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433233, 26.911709, 30.692223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599657, 26.646912, 30.442852>,  <31.699511, 26.488033, 30.293230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599657, 26.646912, 30.442852>,  <31.433233, 26.911709, 30.692223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599657, 26.646912, 30.442852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015281, -0.680395, 0.732686,
		-0.909209, -0.314367, -0.272968,
		0.416059, -0.661994, -0.623425,
		31.724474, 26.448313, 30.255825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089258, 26.377604, 30.936922>,  <31.433233, 26.911709, 30.692223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089258, 26.377604, 30.936922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383448, 26.213955, 30.720886>,  <31.559961, 26.115767, 30.591265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383448, 26.213955, 30.720886>,  <31.089258, 26.377604, 30.936922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383448, 26.213955, 30.720886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133087, -0.694362, 0.707213,
		-0.664351, -0.592017, -0.456238,
		0.735476, -0.409118, -0.540090,
		31.604090, 26.091219, 30.558859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911779, 25.654987, 30.863472>,  <31.089258, 26.377604, 30.936922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911779, 25.654987, 30.863472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308960, 25.671963, 30.819206>,  <31.547268, 25.682148, 30.792646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308960, 25.671963, 30.819206>,  <30.911779, 25.654987, 30.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308960, 25.671963, 30.819206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106034, -0.735256, 0.669445,
		-0.052957, -0.676460, -0.734573,
		0.992951, 0.042438, -0.110664,
		31.606846, 25.684694, 30.786007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167656, 24.987606, 30.753881>,  <30.911779, 25.654987, 30.863472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167656, 24.987606, 30.753881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497501, 25.179634, 30.873577>,  <31.695408, 25.294851, 30.945395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497501, 25.179634, 30.873577>,  <31.167656, 24.987606, 30.753881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497501, 25.179634, 30.873577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270009, -0.798849, 0.537527,
		0.497100, -0.362454, -0.788365,
		0.824613, 0.480071, 0.299241,
		31.744884, 25.323656, 30.963350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671175, 24.519072, 30.684214>,  <31.167656, 24.987606, 30.753881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671175, 24.519072, 30.684214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882338, 24.779736, 30.902077>,  <32.009037, 24.936134, 31.032795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882338, 24.779736, 30.902077>,  <31.671175, 24.519072, 30.684214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882338, 24.779736, 30.902077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389398, -0.755637, 0.526670,
		0.754773, -0.065946, -0.652663,
		0.527908, 0.651662, 0.544656,
		32.040710, 24.975235, 31.065474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399376, 24.221821, 30.732903>,  <31.671175, 24.519072, 30.684214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399376, 24.221821, 30.732903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364227, 24.480076, 31.036331>,  <32.343140, 24.635029, 31.218388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364227, 24.480076, 31.036331>,  <32.399376, 24.221821, 30.732903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364227, 24.480076, 31.036331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323226, -0.701832, 0.634789,
		0.942233, 0.300970, -0.147015,
		-0.087872, 0.645638, 0.758571,
		32.337864, 24.673767, 31.263903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075314, 24.207487, 31.142862>,  <32.399376, 24.221821, 30.732903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075314, 24.207487, 31.142862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782776, 24.331463, 31.385868>,  <32.607254, 24.405848, 31.531672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782776, 24.331463, 31.385868>,  <33.075314, 24.207487, 31.142862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782776, 24.331463, 31.385868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281566, -0.674102, 0.682866,
		0.621176, 0.670465, 0.405731,
		-0.731342, 0.309940, 0.607516,
		32.563374, 24.424444, 31.568123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344780, 24.033756, 31.873236>,  <33.075314, 24.207487, 31.142862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344780, 24.033756, 31.873236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956165, 24.093975, 31.946400>,  <32.722996, 24.130106, 31.990297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956165, 24.093975, 31.946400>,  <33.344780, 24.033756, 31.873236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956165, 24.093975, 31.946400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033286, -0.677690, 0.734594,
		0.234549, 0.719772, 0.653388,
		-0.971534, 0.150549, 0.182910,
		32.664703, 24.139139, 32.001274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295059, 24.201292, 32.517712>,  <33.344780, 24.033756, 31.873236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295059, 24.201292, 32.517712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918400, 24.079094, 32.461189>,  <32.692402, 24.005775, 32.427277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918400, 24.079094, 32.461189>,  <33.295059, 24.201292, 32.517712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918400, 24.079094, 32.461189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020620, -0.471380, 0.881689,
		-0.335961, 0.827329, 0.450174,
		-0.941650, -0.305495, -0.141306,
		32.635906, 23.987446, 32.418797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931438, 24.340752, 33.120720>,  <33.295059, 24.201292, 32.517712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931438, 24.340752, 33.120720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710079, 24.058842, 32.943161>,  <32.577263, 23.889696, 32.836628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710079, 24.058842, 32.943161>,  <32.931438, 24.340752, 33.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710079, 24.058842, 32.943161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079922, -0.485548, 0.870549,
		-0.829071, 0.517240, 0.212377,
		-0.553402, -0.704773, -0.443893,
		32.544060, 23.847410, 32.809994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171253, 24.266529, 33.486320>,  <32.931438, 24.340752, 33.120720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171253, 24.266529, 33.486320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284386, 23.924313, 33.312859>,  <32.352264, 23.718983, 33.208782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284386, 23.924313, 33.312859>,  <32.171253, 24.266529, 33.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284386, 23.924313, 33.312859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135633, -0.483241, 0.864917,
		-0.949530, -0.185812, -0.252717,
		0.282835, -0.855542, -0.433650,
		32.369236, 23.667650, 33.182762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998926, 23.764366, 33.999092>,  <32.171253, 24.266529, 33.486320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998926, 23.764366, 33.999092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186829, 23.517838, 33.746277>,  <32.299568, 23.369921, 33.594585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186829, 23.517838, 33.746277>,  <31.998926, 23.764366, 33.999092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186829, 23.517838, 33.746277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087318, -0.680004, 0.727991,
		-0.878468, -0.397166, -0.265619,
		0.469754, -0.616323, -0.632041,
		32.327755, 23.332941, 33.556664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724249, 23.089300, 34.114182>,  <31.998926, 23.764366, 33.999092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724249, 23.089300, 34.114182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091213, 23.072437, 33.955898>,  <32.311390, 23.062319, 33.860928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091213, 23.072437, 33.955898>,  <31.724249, 23.089300, 34.114182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091213, 23.072437, 33.955898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244293, -0.725289, 0.643643,
		-0.314134, -0.687153, -0.655089,
		0.917410, -0.042156, -0.395704,
		32.366436, 23.059790, 33.837189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954542, 22.441870, 34.199833>,  <31.724249, 23.089300, 34.114182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954542, 22.441870, 34.199833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308578, 22.614700, 34.130634>,  <32.521000, 22.718399, 34.089115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308578, 22.614700, 34.130634>,  <31.954542, 22.441870, 34.199833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308578, 22.614700, 34.130634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442810, -0.667311, 0.598844,
		0.143308, -0.606633, -0.781959,
		0.885089, 0.432079, -0.172992,
		32.574104, 22.744324, 34.078735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363041, 21.841333, 34.113197>,  <31.954542, 22.441870, 34.199833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363041, 21.841333, 34.113197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580902, 22.163143, 34.207932>,  <32.711620, 22.356228, 34.264771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580902, 22.163143, 34.207932>,  <32.363041, 21.841333, 34.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580902, 22.163143, 34.207932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371188, -0.484483, 0.792146,
		0.752043, -0.343537, -0.562506,
		0.544657, 0.804524, 0.236835,
		32.744301, 22.404501, 34.278980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976913, 21.568516, 34.144070>,  <32.363041, 21.841333, 34.113197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976913, 21.568516, 34.144070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999592, 21.913685, 34.344929>,  <33.013199, 22.120787, 34.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999592, 21.913685, 34.344929>,  <32.976913, 21.568516, 34.144070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999592, 21.913685, 34.344929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502597, -0.459249, 0.732453,
		0.862659, 0.210847, -0.459742,
		0.056700, 0.862922, 0.502146,
		33.016602, 22.172562, 34.495571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737846, 21.785368, 34.343510>,  <32.976913, 21.568516, 34.144070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737846, 21.785368, 34.343510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485291, 21.966057, 34.595634>,  <33.333755, 22.074471, 34.746910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485291, 21.966057, 34.595634>,  <33.737846, 21.785368, 34.343510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485291, 21.966057, 34.595634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478722, -0.412388, 0.775088,
		0.610055, 0.791129, 0.044131,
		-0.631394, 0.451720, 0.630310,
		33.295872, 22.101572, 34.784729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170013, 21.997158, 34.936943>,  <33.737846, 21.785368, 34.343510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170013, 21.997158, 34.936943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807011, 21.915974, 35.084038>,  <33.589207, 21.867262, 35.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807011, 21.915974, 35.084038>,  <34.170013, 21.997158, 34.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807011, 21.915974, 35.084038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416241, -0.551929, 0.722577,
		0.056311, 0.808815, 0.585361,
		-0.907509, -0.202963, 0.367741,
		33.534760, 21.855085, 35.194359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629265, 21.639267, 35.485878>,  <34.170013, 21.997158, 34.936943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629265, 21.639267, 35.485878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879143, 21.815155, 35.743996>,  <35.029068, 21.920687, 35.898865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879143, 21.815155, 35.743996>,  <34.629265, 21.639267, 35.485878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879143, 21.815155, 35.743996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771633, 0.474341, 0.423772,
		-0.119750, -0.762659, 0.635619,
		0.624693, 0.439718, 0.645295,
		35.066551, 21.947071, 35.937584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356838, 21.534897, 36.075119>,  <34.629265, 21.639267, 35.485878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356838, 21.534897, 36.075119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566795, 21.870682, 36.131386>,  <34.692768, 22.072153, 36.165146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566795, 21.870682, 36.131386>,  <34.356838, 21.534897, 36.075119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566795, 21.870682, 36.131386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807196, 0.438501, 0.395160,
		0.270038, -0.320966, 0.907778,
		0.524894, 0.839463, 0.140670,
		34.724262, 22.122520, 36.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199760, 21.988447, 36.734905>,  <34.356838, 21.534897, 36.075119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199760, 21.988447, 36.734905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413445, 22.259323, 36.532505>,  <34.541656, 22.421848, 36.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413445, 22.259323, 36.532505>,  <34.199760, 21.988447, 36.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413445, 22.259323, 36.532505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718729, 0.678949, 0.149856,
		0.445027, 0.283620, 0.849418,
		0.534210, 0.677191, -0.505997,
		34.573708, 22.462481, 36.380707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343048, 22.532225, 37.163410>,  <34.199760, 21.988447, 36.734905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343048, 22.532225, 37.163410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323547, 22.611565, 36.771843>,  <34.311848, 22.659168, 36.536903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323547, 22.611565, 36.771843>,  <34.343048, 22.532225, 37.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323547, 22.611565, 36.771843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734349, 0.657207, 0.169737,
		0.677019, 0.727143, 0.113616,
		-0.048753, 0.198349, -0.978918,
		34.308922, 22.671070, 36.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351307, 23.237709, 37.106346>,  <34.343048, 22.532225, 37.163410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351307, 23.237709, 37.106346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182468, 23.067940, 36.785919>,  <34.081165, 22.966078, 36.593662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182468, 23.067940, 36.785919>,  <34.351307, 23.237709, 37.106346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182468, 23.067940, 36.785919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758855, 0.648840, 0.056080,
		0.495961, 0.631562, -0.595946,
		-0.422092, -0.424423, -0.801064,
		34.055840, 22.940613, 36.545601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741783, 23.365650, 37.385590>,  <34.351307, 23.237709, 37.106346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741783, 23.365650, 37.385590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587242, 23.657787, 37.610920>,  <33.494518, 23.833071, 37.746117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587242, 23.657787, 37.610920>,  <33.741783, 23.365650, 37.385590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587242, 23.657787, 37.610920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212887, 0.523643, -0.824910,
		-0.897448, -0.438627, -0.046828,
		-0.386349, 0.730345, 0.563321,
		33.471336, 23.876890, 37.779915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960640, 23.620514, 37.379250>,  <33.741783, 23.365650, 37.385590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960640, 23.620514, 37.379250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228199, 23.913971, 37.427166>,  <33.388733, 24.090046, 37.455914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228199, 23.913971, 37.427166>,  <32.960640, 23.620514, 37.379250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228199, 23.913971, 37.427166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173579, 0.310841, -0.934477,
		-0.722808, 0.604273, 0.335265,
		0.668894, 0.733643, 0.119789,
		33.428867, 24.134064, 37.463104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029102, 23.806318, 36.620174>,  <32.960640, 23.620514, 37.379250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029102, 23.806318, 36.620174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203697, 23.868858, 36.265766>,  <33.308456, 23.906384, 36.053120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203697, 23.868858, 36.265766>,  <33.029102, 23.806318, 36.620174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203697, 23.868858, 36.265766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657430, 0.727724, -0.195459,
		0.614218, 0.667812, 0.420434,
		0.436489, 0.156351, -0.886020,
		33.334644, 23.915764, 35.999962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190903, 24.561407, 36.507160>,  <33.029102, 23.806318, 36.620174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190903, 24.561407, 36.507160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142548, 24.393799, 36.147202>,  <33.113533, 24.293234, 35.931229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142548, 24.393799, 36.147202>,  <33.190903, 24.561407, 36.507160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142548, 24.393799, 36.147202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478149, 0.819025, -0.317130,
		0.869919, 0.391945, -0.299366,
		-0.120891, -0.419019, -0.899893,
		33.106281, 24.268093, 35.877232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398685, 25.069492, 35.942963>,  <33.190903, 24.561407, 36.507160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398685, 25.069492, 35.942963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148788, 24.818001, 35.757751>,  <32.998848, 24.667107, 35.646626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148788, 24.818001, 35.757751>,  <33.398685, 25.069492, 35.942963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148788, 24.818001, 35.757751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450335, 0.774561, -0.444133,
		0.637881, -0.068954, -0.767042,
		-0.624746, -0.628730, -0.463026,
		32.961365, 24.629381, 35.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289425, 25.263762, 35.223705>,  <33.398685, 25.069492, 35.942963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289425, 25.263762, 35.223705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951294, 25.063568, 35.298462>,  <32.748413, 24.943451, 35.343315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951294, 25.063568, 35.298462>,  <33.289425, 25.263762, 35.223705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951294, 25.063568, 35.298462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511262, 0.656358, -0.554802,
		0.155000, -0.564543, -0.810719,
		-0.845332, -0.500484, 0.186894,
		32.697693, 24.913424, 35.354530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982330, 25.189947, 34.573269>,  <33.289425, 25.263762, 35.223705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982330, 25.189947, 34.573269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670979, 25.116192, 34.813313>,  <32.484169, 25.071939, 34.957336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670979, 25.116192, 34.813313>,  <32.982330, 25.189947, 34.573269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670979, 25.116192, 34.813313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611585, 0.438527, -0.658527,
		-0.141738, -0.879599, -0.454109,
		-0.778379, -0.184388, 0.600106,
		32.437466, 25.060875, 34.993343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498940, 24.960236, 34.131851>,  <32.982330, 25.189947, 34.573269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498940, 24.960236, 34.131851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290485, 25.079544, 34.451714>,  <32.165413, 25.151129, 34.643631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290485, 25.079544, 34.451714>,  <32.498940, 24.960236, 34.131851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290485, 25.079544, 34.451714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596777, 0.542468, -0.591258,
		-0.610143, -0.785343, -0.104699,
		-0.521136, 0.298270, 0.799658,
		32.134144, 25.169025, 34.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787247, 24.957066, 33.911633>,  <32.498940, 24.960236, 34.131851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787247, 24.957066, 33.911633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777220, 25.190010, 34.236649>,  <31.771204, 25.329777, 34.431660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777220, 25.190010, 34.236649>,  <31.787247, 24.957066, 33.911633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777220, 25.190010, 34.236649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645875, 0.610952, -0.457803,
		-0.763032, -0.536276, 0.360820,
		-0.025066, 0.582363, 0.812542,
		31.769701, 25.364719, 34.480412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037054, 24.969091, 34.237961>,  <31.787247, 24.957066, 33.911633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037054, 24.969091, 34.237961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264524, 25.286892, 34.323174>,  <31.401007, 25.477571, 34.374302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264524, 25.286892, 34.323174>,  <31.037054, 24.969091, 34.237961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264524, 25.286892, 34.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725616, 0.606512, -0.324998,
		-0.387415, 0.030241, 0.921409,
		0.568674, 0.794499, 0.213029,
		31.435127, 25.525242, 34.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555761, 25.438543, 34.299244>,  <31.037054, 24.969091, 34.237961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555761, 25.438543, 34.299244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879969, 25.672371, 34.284611>,  <31.074493, 25.812668, 34.275833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879969, 25.672371, 34.284611>,  <30.555761, 25.438543, 34.299244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879969, 25.672371, 34.284611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557249, 0.750390, -0.355513,
		-0.180374, 0.308533, 0.933955,
		0.810518, 0.584571, -0.036578,
		31.123123, 25.847742, 34.273636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347918, 26.092375, 34.537697>,  <30.555761, 25.438543, 34.299244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347918, 26.092375, 34.537697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678492, 26.154560, 34.321239>,  <30.876837, 26.191872, 34.191364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678492, 26.154560, 34.321239>,  <30.347918, 26.092375, 34.537697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678492, 26.154560, 34.321239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392689, 0.847921, -0.356125,
		0.403482, 0.506815, 0.761801,
		0.826437, 0.155461, -0.541141,
		30.926422, 26.201199, 34.158897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521645, 26.778898, 34.610584>,  <30.347918, 26.092375, 34.537697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521645, 26.778898, 34.610584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693518, 26.650211, 34.273094>,  <30.796642, 26.572998, 34.070602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693518, 26.650211, 34.273094>,  <30.521645, 26.778898, 34.610584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693518, 26.650211, 34.273094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221318, 0.868355, -0.443823,
		0.875437, 0.377435, 0.301916,
		0.429684, -0.321719, -0.843723,
		30.822422, 26.553696, 34.019978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725683, 27.324883, 34.344761>,  <30.521645, 26.778898, 34.610584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725683, 27.324883, 34.344761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801039, 27.077103, 34.039925>,  <30.846252, 26.928434, 33.857021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801039, 27.077103, 34.039925>,  <30.725683, 27.324883, 34.344761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801039, 27.077103, 34.039925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080971, 0.763551, -0.640651,
		0.978751, 0.182400, 0.093688,
		0.188390, -0.619452, -0.762095,
		30.857555, 26.891268, 33.811295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223349, 27.683975, 33.866951>,  <30.725683, 27.324883, 34.344761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223349, 27.683975, 33.866951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012724, 27.405579, 33.671677>,  <30.886349, 27.238541, 33.554512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012724, 27.405579, 33.671677>,  <31.223349, 27.683975, 33.866951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012724, 27.405579, 33.671677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139529, 0.637212, -0.757953,
		0.838610, -0.330991, -0.432641,
		-0.526559, -0.695993, -0.488190,
		30.854755, 27.196781, 33.525219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391645, 27.778021, 33.227436>,  <31.223349, 27.683975, 33.866951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391645, 27.778021, 33.227436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055088, 27.567059, 33.180279>,  <30.853153, 27.440481, 33.151985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055088, 27.567059, 33.180279>,  <31.391645, 27.778021, 33.227436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055088, 27.567059, 33.180279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316333, 0.657513, -0.683821,
		0.438166, -0.538070, -0.720063,
		-0.841394, -0.527407, -0.117891,
		30.802670, 27.408836, 33.144913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324051, 27.752899, 32.426929>,  <31.391645, 27.778021, 33.227436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324051, 27.752899, 32.426929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979654, 27.656715, 32.606205>,  <30.773016, 27.599005, 32.713772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979654, 27.656715, 32.606205>,  <31.324051, 27.752899, 32.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979654, 27.656715, 32.606205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505583, 0.500816, -0.702545,
		-0.055530, -0.831483, -0.552769,
		-0.860990, -0.240458, 0.448194,
		30.721357, 27.584578, 32.740662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885849, 27.482250, 31.895247>,  <31.324051, 27.752899, 32.426929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885849, 27.482250, 31.895247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639008, 27.602520, 32.186115>,  <30.490904, 27.674683, 32.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639008, 27.602520, 32.186115>,  <30.885849, 27.482250, 31.895247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639008, 27.602520, 32.186115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568389, 0.468745, -0.676175,
		-0.544168, -0.830585, -0.118362,
		-0.617102, 0.300677, 0.727171,
		30.453876, 27.692722, 32.404266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174276, 27.276253, 31.720951>,  <30.885849, 27.482250, 31.895247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174276, 27.276253, 31.720951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161114, 27.586315, 31.973316>,  <30.153217, 27.772352, 32.124737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161114, 27.586315, 31.973316>,  <30.174276, 27.276253, 31.720951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161114, 27.586315, 31.973316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401345, 0.567876, -0.718636,
		-0.915335, -0.276862, 0.292419,
		-0.032905, 0.775154, 0.630915,
		30.151241, 27.818861, 32.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526945, 27.624668, 31.700260>,  <30.174276, 27.276253, 31.720951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526945, 27.624668, 31.700260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801914, 27.886948, 31.825165>,  <29.966896, 28.044315, 31.900108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801914, 27.886948, 31.825165>,  <29.526945, 27.624668, 31.700260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801914, 27.886948, 31.825165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188241, 0.576133, -0.795384,
		-0.701436, 0.487987, 0.519477,
		0.687425, 0.655698, 0.312261,
		30.008142, 28.083656, 31.918842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301117, 28.243238, 31.478561>,  <29.526945, 27.624668, 31.700260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301117, 28.243238, 31.478561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667599, 28.356705, 31.591770>,  <29.887487, 28.424784, 31.659697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667599, 28.356705, 31.591770>,  <29.301117, 28.243238, 31.478561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667599, 28.356705, 31.591770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051457, 0.783748, -0.618944,
		-0.397392, 0.552516, 0.732671,
		0.916205, 0.283664, 0.283024,
		29.942461, 28.441803, 31.676678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260633, 29.039820, 31.461460>,  <29.301117, 28.243238, 31.478561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260633, 29.039820, 31.461460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645746, 28.935394, 31.433456>,  <29.876814, 28.872740, 31.416655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645746, 28.935394, 31.433456>,  <29.260633, 29.039820, 31.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645746, 28.935394, 31.433456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132273, 0.680969, -0.720268,
		0.235709, 0.684199, 0.690154,
		0.962780, -0.261063, -0.070010,
		29.934580, 28.857075, 31.412453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692492, 29.637768, 31.597012>,  <29.260633, 29.039820, 31.461460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692492, 29.637768, 31.597012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908821, 29.389572, 31.369854>,  <30.038618, 29.240654, 31.233561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908821, 29.389572, 31.369854>,  <29.692492, 29.637768, 31.597012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908821, 29.389572, 31.369854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116360, 0.723848, -0.680077,
		0.833049, 0.301722, 0.463674,
		0.540824, -0.620490, -0.567892,
		30.071068, 29.203424, 31.199486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205866, 30.009960, 31.402306>,  <29.692492, 29.637768, 31.597012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205866, 30.009960, 31.402306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200474, 29.718689, 31.128204>,  <30.197239, 29.543926, 30.963743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200474, 29.718689, 31.128204>,  <30.205866, 30.009960, 31.402306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200474, 29.718689, 31.128204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246848, 0.661680, -0.707986,
		0.968960, -0.178696, 0.170832,
		-0.013478, -0.728180, -0.685253,
		30.196430, 29.500235, 30.922628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625340, 30.267206, 30.853685>,  <30.205866, 30.009960, 31.402306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625340, 30.267206, 30.853685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445591, 29.962276, 30.667385>,  <30.337742, 29.779318, 30.555605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445591, 29.962276, 30.667385>,  <30.625340, 30.267206, 30.853685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445591, 29.962276, 30.667385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014119, 0.515232, -0.856934,
		0.893234, -0.391656, -0.220767,
		-0.449370, -0.762326, -0.465753,
		30.310780, 29.733580, 30.527658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043432, 30.060999, 30.214033>,  <30.625340, 30.267206, 30.853685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043432, 30.060999, 30.214033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661074, 29.956245, 30.160851>,  <30.431658, 29.893393, 30.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661074, 29.956245, 30.160851>,  <31.043432, 30.060999, 30.214033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661074, 29.956245, 30.160851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007695, 0.474866, -0.880024,
		0.293601, -0.840190, -0.455938,
		-0.955897, -0.261885, -0.132956,
		30.374304, 29.877680, 30.120964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042953, 29.834778, 29.493959>,  <31.043432, 30.060999, 30.214033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042953, 29.834778, 29.493959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660547, 29.914719, 29.579834>,  <30.431103, 29.962683, 29.631359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660547, 29.914719, 29.579834>,  <31.042953, 29.834778, 29.493959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660547, 29.914719, 29.579834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079930, 0.526729, -0.846267,
		-0.282210, -0.826205, -0.487588,
		-0.956017, 0.199851, 0.214687,
		30.373741, 29.974674, 29.644239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734577, 29.727024, 28.939201>,  <31.042953, 29.834778, 29.493959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734577, 29.727024, 28.939201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453272, 29.945621, 29.121090>,  <30.284489, 30.076780, 29.230223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453272, 29.945621, 29.121090>,  <30.734577, 29.727024, 28.939201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453272, 29.945621, 29.121090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137463, 0.523014, -0.841166,
		-0.697515, -0.654067, -0.292693,
		-0.703262, 0.546491, 0.454720,
		30.242292, 30.109570, 29.257505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063494, 29.707361, 28.522331>,  <30.734577, 29.727024, 28.939201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063494, 29.707361, 28.522331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030804, 30.027061, 28.760498>,  <30.011190, 30.218882, 28.903397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030804, 30.027061, 28.760498>,  <30.063494, 29.707361, 28.522331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030804, 30.027061, 28.760498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325496, 0.543251, -0.773906,
		-0.942005, -0.257053, 0.215755,
		-0.081726, 0.799251, 0.595415,
		30.006287, 30.266836, 28.939123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438280, 29.989590, 28.299578>,  <30.063494, 29.707361, 28.522331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438280, 29.989590, 28.299578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642530, 30.257885, 28.514751>,  <29.765081, 30.418861, 28.643856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642530, 30.257885, 28.514751>,  <29.438280, 29.989590, 28.299578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642530, 30.257885, 28.514751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222125, 0.707319, -0.671089,
		-0.830615, 0.223188, 0.510163,
		0.510627, 0.670736, 0.537934,
		29.795719, 30.459106, 28.676132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048716, 30.624149, 28.265850>,  <29.438280, 29.989590, 28.299578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048716, 30.624149, 28.265850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434790, 30.710724, 28.324604>,  <29.666433, 30.762669, 28.359856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434790, 30.710724, 28.324604>,  <29.048716, 30.624149, 28.265850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434790, 30.710724, 28.324604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061692, 0.734066, -0.676270,
		-0.254192, 0.643663, 0.721862,
		0.965184, 0.216435, 0.146885,
		29.724344, 30.775654, 28.368670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031399, 31.246923, 27.985176>,  <29.048716, 30.624149, 28.265850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031399, 31.246923, 27.985176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422916, 31.174438, 28.023376>,  <29.657827, 31.130947, 28.046297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422916, 31.174438, 28.023376>,  <29.031399, 31.246923, 27.985176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422916, 31.174438, 28.023376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168964, 0.450700, -0.876539,
		0.115797, 0.874089, 0.471761,
		0.978796, -0.181212, 0.095500,
		29.716555, 31.120075, 28.052027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413788, 31.888872, 27.832952>,  <29.031399, 31.246923, 27.985176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413788, 31.888872, 27.832952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677288, 31.601376, 27.743996>,  <29.835388, 31.428877, 27.690622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677288, 31.601376, 27.743996>,  <29.413788, 31.888872, 27.832952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677288, 31.601376, 27.743996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268872, 0.500968, -0.822642,
		0.702677, 0.482122, 0.523263,
		0.658751, -0.718742, -0.222390,
		29.874914, 31.385754, 27.677279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027256, 32.237518, 27.674246>,  <29.413788, 31.888872, 27.832952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027256, 32.237518, 27.674246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097513, 31.875599, 27.519073>,  <30.139668, 31.658447, 27.425970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097513, 31.875599, 27.519073>,  <30.027256, 32.237518, 27.674246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097513, 31.875599, 27.519073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084460, 0.406456, -0.909758,
		0.980824, 0.127029, 0.147811,
		0.175645, -0.904797, -0.387933,
		30.150206, 31.604160, 27.402693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625500, 32.343880, 27.317194>,  <30.027256, 32.237518, 27.674246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625500, 32.343880, 27.317194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472776, 32.015076, 27.148190>,  <30.381142, 31.817793, 27.046787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472776, 32.015076, 27.148190>,  <30.625500, 32.343880, 27.317194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472776, 32.015076, 27.148190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073837, 0.428556, -0.900494,
		0.921287, -0.375013, -0.102931,
		-0.381808, -0.822013, -0.422512,
		30.358234, 31.768473, 27.021437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159819, 32.030312, 26.833345>,  <30.625500, 32.343880, 27.317194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159819, 32.030312, 26.833345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788864, 31.910858, 26.743214>,  <30.566292, 31.839186, 26.689135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788864, 31.910858, 26.743214>,  <31.159819, 32.030312, 26.833345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788864, 31.910858, 26.743214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159343, 0.229629, -0.960146,
		0.338475, -0.926330, -0.165370,
		-0.927386, -0.298635, -0.225328,
		30.510649, 31.821268, 26.675615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225119, 31.568338, 26.218914>,  <31.159819, 32.030312, 26.833345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225119, 31.568338, 26.218914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842413, 31.684464, 26.226048>,  <30.612789, 31.754139, 26.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842413, 31.684464, 26.226048>,  <31.225119, 31.568338, 26.218914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842413, 31.684464, 26.226048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072703, 0.298080, -0.951768,
		-0.281625, -0.909323, -0.306299,
		-0.956766, 0.290311, 0.017836,
		30.555384, 31.771557, 26.231398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985481, 31.478855, 25.518261>,  <31.225119, 31.568338, 26.218914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985481, 31.478855, 25.518261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709122, 31.718952, 25.679440>,  <30.543306, 31.863010, 25.776146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709122, 31.718952, 25.679440>,  <30.985481, 31.478855, 25.518261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709122, 31.718952, 25.679440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031241, 0.532052, -0.846135,
		-0.722276, -0.597182, -0.348842,
		-0.690899, 0.600245, 0.402945,
		30.501852, 31.899025, 25.800323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364777, 31.517002, 25.034273>,  <30.985481, 31.478855, 25.518261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364777, 31.517002, 25.034273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332758, 31.834648, 25.275261>,  <30.313547, 32.025238, 25.419853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332758, 31.834648, 25.275261>,  <30.364777, 31.517002, 25.034273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332758, 31.834648, 25.275261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047998, 0.600638, -0.798079,
		-0.995635, -0.092799, -0.009962,
		-0.080044, 0.794118, 0.602470,
		30.308744, 32.072884, 25.456001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972261, 31.905191, 24.647146>,  <30.364777, 31.517002, 25.034273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972261, 31.905191, 24.647146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149189, 32.154518, 24.905087>,  <30.255346, 32.304115, 25.059851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149189, 32.154518, 24.905087>,  <29.972261, 31.905191, 24.647146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149189, 32.154518, 24.905087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053793, 0.736155, -0.674671,
		-0.895243, 0.263731, 0.359145,
		0.442318, 0.623315, 0.644851,
		30.281885, 32.341511, 25.098541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572536, 32.473148, 24.693995>,  <29.972261, 31.905191, 24.647146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572536, 32.473148, 24.693995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920845, 32.624191, 24.819958>,  <30.129829, 32.714817, 24.895535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920845, 32.624191, 24.819958>,  <29.572536, 32.473148, 24.693995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920845, 32.624191, 24.819958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096960, 0.759761, -0.642932,
		-0.482032, 0.529314, 0.698192,
		0.870772, 0.377611, 0.314907,
		30.182077, 32.737476, 24.914431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399647, 33.145447, 24.764025>,  <29.572536, 32.473148, 24.693995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399647, 33.145447, 24.764025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799631, 33.148922, 24.763355>,  <30.039621, 33.151009, 24.762953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799631, 33.148922, 24.763355>,  <29.399647, 33.145447, 24.764025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799631, 33.148922, 24.763355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008516, 0.893272, -0.449435,
		-0.002409, 0.449432, 0.893311,
		0.999961, 0.008690, -0.001676,
		30.099619, 33.151527, 24.762852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592415, 33.796196, 24.994577>,  <29.399647, 33.145447, 24.764025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592415, 33.796196, 24.994577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884699, 33.652344, 24.762463>,  <30.060068, 33.566032, 24.623194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884699, 33.652344, 24.762463>,  <29.592415, 33.796196, 24.994577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884699, 33.652344, 24.762463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010946, 0.856062, -0.516758,
		0.682602, 0.371247, 0.629467,
		0.730708, -0.359630, -0.580286,
		30.103910, 33.544456, 24.588377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009975, 33.934204, 25.256693>,  <29.592415, 33.796196, 24.994577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009975, 33.934204, 25.256693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636448, 33.952576, 25.398609>,  <28.412333, 33.963600, 25.483759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636448, 33.952576, 25.398609>,  <29.009975, 33.934204, 25.256693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636448, 33.952576, 25.398609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184432, -0.787974, 0.587436,
		0.306545, 0.613993, 0.727353,
		-0.933817, 0.045929, 0.354789,
		28.356302, 33.966354, 25.505047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999535, 33.920052, 25.963987>,  <29.009975, 33.934204, 25.256693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999535, 33.920052, 25.963987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617720, 33.808807, 25.921055>,  <28.388632, 33.742062, 25.895296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617720, 33.808807, 25.921055>,  <28.999535, 33.920052, 25.963987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617720, 33.808807, 25.921055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109246, -0.661352, 0.742077,
		-0.277359, 0.696613, 0.661666,
		-0.954535, -0.278107, -0.107330,
		28.331360, 33.725376, 25.888855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789965, 33.889801, 26.612726>,  <28.999535, 33.920052, 25.963987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789965, 33.889801, 26.612726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498272, 33.695374, 26.420078>,  <28.323257, 33.578716, 26.304489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498272, 33.695374, 26.420078>,  <28.789965, 33.889801, 26.612726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498272, 33.695374, 26.420078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115171, -0.606620, 0.786605,
		-0.674506, 0.629085, 0.386385,
		-0.729230, -0.486070, -0.481621,
		28.279503, 33.549553, 26.275591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250208, 33.777237, 27.034348>,  <28.789965, 33.889801, 26.612726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250208, 33.777237, 27.034348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209776, 33.476761, 26.773426>,  <28.185516, 33.296474, 26.616873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209776, 33.476761, 26.773426>,  <28.250208, 33.777237, 27.034348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209776, 33.476761, 26.773426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382462, -0.575935, 0.722510,
		-0.918426, 0.322512, -0.229085,
		-0.101080, -0.751189, -0.652303,
		28.179451, 33.251404, 26.577736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565958, 33.439613, 27.189985>,  <28.250208, 33.777237, 27.034348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565958, 33.439613, 27.189985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741476, 33.155731, 26.969521>,  <27.846786, 32.985401, 26.837242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741476, 33.155731, 26.969521>,  <27.565958, 33.439613, 27.189985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741476, 33.155731, 26.969521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435870, -0.704478, 0.560114,
		-0.785796, -0.005541, -0.618461,
		0.438796, -0.709704, -0.551161,
		27.873116, 32.942822, 26.804173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021774, 32.954895, 26.912249>,  <27.565958, 33.439613, 27.189985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021774, 32.954895, 26.912249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369556, 32.757294, 26.913692>,  <27.578226, 32.638733, 26.914558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369556, 32.757294, 26.913692>,  <27.021774, 32.954895, 26.912249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369556, 32.757294, 26.913692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441387, -0.773532, 0.454781,
		-0.221871, -0.397004, -0.890596,
		0.869454, -0.494000, 0.003608,
		27.630392, 32.609093, 26.914776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852100, 32.241962, 26.816252>,  <27.021774, 32.954895, 26.912249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852100, 32.241962, 26.816252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222363, 32.215797, 26.965321>,  <27.444519, 32.200100, 27.054762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222363, 32.215797, 26.965321>,  <26.852100, 32.241962, 26.816252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222363, 32.215797, 26.965321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251389, -0.842442, 0.476544,
		0.282781, -0.534801, -0.796255,
		0.925656, -0.065412, 0.372670,
		27.500059, 32.196175, 27.077122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946960, 31.540255, 26.850952>,  <26.852100, 32.241962, 26.816252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946960, 31.540255, 26.850952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226038, 31.698322, 27.089970>,  <27.393484, 31.793163, 27.233381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226038, 31.698322, 27.089970>,  <26.946960, 31.540255, 26.850952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226038, 31.698322, 27.089970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183296, -0.707869, 0.682147,
		0.692549, -0.585458, -0.421444,
		0.697695, 0.395171, 0.597546,
		27.435347, 31.816874, 27.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476416, 31.015903, 27.183752>,  <26.946960, 31.540255, 26.850952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476416, 31.015903, 27.183752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521881, 31.323536, 27.435337>,  <27.549160, 31.508116, 27.586288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521881, 31.323536, 27.435337>,  <27.476416, 31.015903, 27.183752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521881, 31.323536, 27.435337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181995, -0.638469, 0.747820,
		0.976708, 0.029469, -0.212539,
		0.113662, 0.769083, 0.628961,
		27.555979, 31.554260, 27.624025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879259, 30.718012, 27.795418>,  <27.476416, 31.015903, 27.183752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879259, 30.718012, 27.795418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754992, 31.076744, 27.921391>,  <27.680431, 31.291983, 27.996975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754992, 31.076744, 27.921391>,  <27.879259, 30.718012, 27.795418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754992, 31.076744, 27.921391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037404, -0.319536, 0.946836,
		0.949782, 0.305934, 0.065725,
		-0.310671, 0.896829, 0.314932,
		27.661791, 31.345793, 28.015871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276974, 30.775511, 28.462015>,  <27.879259, 30.718012, 27.795418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276974, 30.775511, 28.462015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944033, 30.997032, 28.453156>,  <27.744268, 31.129946, 28.447840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944033, 30.997032, 28.453156>,  <28.276974, 30.775511, 28.462015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944033, 30.997032, 28.453156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194548, -0.254511, 0.947299,
		0.518981, 0.792795, 0.319585,
		-0.832352, 0.553805, -0.022151,
		27.694326, 31.163174, 28.446510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319723, 31.258423, 29.067451>,  <28.276974, 30.775511, 28.462015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319723, 31.258423, 29.067451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935493, 31.221928, 28.962402>,  <27.704956, 31.200029, 28.899374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935493, 31.221928, 28.962402>,  <28.319723, 31.258423, 29.067451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935493, 31.221928, 28.962402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185205, -0.494504, 0.849214,
		-0.207349, 0.864373, 0.458111,
		-0.960576, -0.091240, -0.262621,
		27.647322, 31.194555, 28.883615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755713, 31.645164, 29.545952>,  <28.319723, 31.258423, 29.067451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755713, 31.645164, 29.545952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568035, 31.338745, 29.370213>,  <27.455429, 31.154894, 29.264769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568035, 31.338745, 29.370213>,  <27.755713, 31.645164, 29.545952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568035, 31.338745, 29.370213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144824, -0.424029, 0.893994,
		-0.871138, 0.483086, 0.088011,
		-0.469195, -0.766046, -0.439351,
		27.427277, 31.108931, 29.238407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186161, 31.463139, 30.079983>,  <27.755713, 31.645164, 29.545952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186161, 31.463139, 30.079983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180748, 31.159920, 29.819160>,  <27.177500, 30.977987, 29.662666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180748, 31.159920, 29.819160>,  <27.186161, 31.463139, 30.079983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180748, 31.159920, 29.819160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169175, -0.640980, 0.748682,
		-0.985493, 0.120444, -0.119568,
		-0.013534, -0.758049, -0.652057,
		27.176687, 30.932505, 29.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542694, 31.069820, 30.180607>,  <27.186161, 31.463139, 30.079983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542694, 31.069820, 30.180607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821531, 30.826473, 30.028847>,  <26.988834, 30.680464, 29.937790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821531, 30.826473, 30.028847>,  <26.542694, 31.069820, 30.180607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821531, 30.826473, 30.028847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245185, -0.699537, 0.671217,
		-0.673750, -0.374881, -0.636809,
		0.697098, -0.608368, -0.379398,
		27.030661, 30.643963, 29.915028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303682, 30.495411, 30.414976>,  <26.542694, 31.069820, 30.180607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303682, 30.495411, 30.414976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676529, 30.393795, 30.311733>,  <26.900238, 30.332827, 30.249788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676529, 30.393795, 30.311733>,  <26.303682, 30.495411, 30.414976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676529, 30.393795, 30.311733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000361, -0.712051, 0.702128,
		-0.362153, -0.654559, -0.663624,
		0.932118, -0.254038, -0.258108,
		26.956165, 30.317583, 30.234301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397779, 29.707642, 30.223818>,  <26.303682, 30.495411, 30.414976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397779, 29.707642, 30.223818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768311, 29.807110, 30.337013>,  <26.990629, 29.866791, 30.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768311, 29.807110, 30.337013>,  <26.397779, 29.707642, 30.223818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768311, 29.807110, 30.337013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033198, -0.802147, 0.596203,
		0.375254, -0.542884, -0.751306,
		0.926327, 0.248670, 0.282987,
		27.046209, 29.881710, 30.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674803, 29.000622, 30.479544>,  <26.397779, 29.707642, 30.223818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674803, 29.000622, 30.479544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935755, 29.271297, 30.616066>,  <27.092325, 29.433702, 30.697979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935755, 29.271297, 30.616066>,  <26.674803, 29.000622, 30.479544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935755, 29.271297, 30.616066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199312, -0.587668, 0.784169,
		0.731216, -0.443548, -0.518254,
		0.652378, 0.676691, 0.341308,
		27.131468, 29.474304, 30.718458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329887, 28.650810, 30.626669>,  <26.674803, 29.000622, 30.479544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329887, 28.650810, 30.626669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343187, 28.988392, 30.840824>,  <27.351168, 29.190941, 30.969316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343187, 28.988392, 30.840824>,  <27.329887, 28.650810, 30.626669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343187, 28.988392, 30.840824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505342, -0.476359, 0.719522,
		0.862278, 0.246629, -0.442324,
		0.033250, 0.843953, 0.535386,
		27.353163, 29.241577, 31.001440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992214, 28.649559, 30.816578>,  <27.329887, 28.650810, 30.626669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992214, 28.649559, 30.816578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805882, 28.908974, 31.057377>,  <27.694082, 29.064623, 31.201857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805882, 28.908974, 31.057377>,  <27.992214, 28.649559, 30.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805882, 28.908974, 31.057377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314836, -0.514325, 0.797714,
		0.826969, 0.561132, 0.035407,
		-0.465834, 0.648537, 0.601995,
		27.666132, 29.103535, 31.237976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506323, 29.053106, 31.327602>,  <27.992214, 28.649559, 30.816578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506323, 29.053106, 31.327602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145985, 29.054718, 31.501251>,  <27.929781, 29.055685, 31.605440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145985, 29.054718, 31.501251>,  <28.506323, 29.053106, 31.327602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145985, 29.054718, 31.501251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411853, -0.308354, 0.857493,
		0.137317, 0.951263, 0.276120,
		-0.900845, 0.004027, 0.434123,
		27.875731, 29.055925, 31.631489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607801, 29.357494, 31.961853>,  <28.506323, 29.053106, 31.327602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607801, 29.357494, 31.961853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264774, 29.156021, 32.003582>,  <28.058958, 29.035137, 32.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264774, 29.156021, 32.003582>,  <28.607801, 29.357494, 31.961853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264774, 29.156021, 32.003582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371204, -0.465613, 0.803375,
		-0.356074, 0.727672, 0.586264,
		-0.857566, -0.503684, 0.104322,
		28.007505, 29.004915, 32.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367905, 29.406904, 32.711235>,  <28.607801, 29.357494, 31.961853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367905, 29.406904, 32.711235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165138, 29.091156, 32.572708>,  <28.043478, 28.901707, 32.489594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165138, 29.091156, 32.572708>,  <28.367905, 29.406904, 32.711235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165138, 29.091156, 32.572708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054336, -0.430220, 0.901087,
		-0.860282, 0.437957, 0.260976,
		-0.506914, -0.789370, -0.346314,
		28.013063, 28.854345, 32.468815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942780, 29.197556, 33.290592>,  <28.367905, 29.406904, 32.711235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942780, 29.197556, 33.290592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946447, 28.875912, 33.052830>,  <27.948648, 28.682926, 32.910172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946447, 28.875912, 33.052830>,  <27.942780, 29.197556, 33.290592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946447, 28.875912, 33.052830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035699, -0.593792, 0.803826,
		-0.999320, -0.028588, 0.023262,
		0.009167, -0.804110, -0.594410,
		27.949198, 28.634678, 32.874508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476725, 28.708654, 33.576038>,  <27.942780, 29.197556, 33.290592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476725, 28.708654, 33.576038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724642, 28.484695, 33.356087>,  <27.873392, 28.350321, 33.224113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724642, 28.484695, 33.356087>,  <27.476725, 28.708654, 33.576038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724642, 28.484695, 33.356087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147387, -0.605178, 0.782327,
		-0.770799, -0.565928, -0.292565,
		0.619795, -0.559897, -0.549882,
		27.910580, 28.316727, 33.191124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366264, 27.972769, 33.598938>,  <27.476725, 28.708654, 33.576038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366264, 27.972769, 33.598938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749304, 27.956856, 33.484798>,  <27.979128, 27.947308, 33.416313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.749304, 27.956856, 33.484798>,  <27.366264, 27.972769, 33.598938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749304, 27.956856, 33.484798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170455, -0.720259, 0.672437,
		-0.232276, -0.692564, -0.682937,
		0.957597, -0.039781, -0.285350,
		28.036583, 27.944921, 33.399193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449347, 27.253832, 33.424889>,  <27.366264, 27.972769, 33.598938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449347, 27.253832, 33.424889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825722, 27.381271, 33.470730>,  <28.051546, 27.457735, 33.498234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825722, 27.381271, 33.470730>,  <27.449347, 27.253832, 33.424889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825722, 27.381271, 33.470730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240504, -0.867165, 0.436100,
		0.238319, -0.382780, -0.892571,
		0.940937, 0.318597, 0.114602,
		28.108004, 27.476851, 33.505112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836353, 26.770164, 33.027161>,  <27.449347, 27.253832, 33.424889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836353, 26.770164, 33.027161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042786, 26.950775, 33.318306>,  <28.166645, 27.059141, 33.492992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042786, 26.950775, 33.318306>,  <27.836353, 26.770164, 33.027161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042786, 26.950775, 33.318306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292993, -0.891569, 0.345340,
		0.804870, 0.035035, -0.592416,
		0.516081, 0.451528, 0.727862,
		28.197611, 27.086233, 33.536663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106953, 26.230448, 33.254608>,  <27.836353, 26.770164, 33.027161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106953, 26.230448, 33.254608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247860, 26.476719, 33.536556>,  <28.332405, 26.624481, 33.705727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247860, 26.476719, 33.536556>,  <28.106953, 26.230448, 33.254608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247860, 26.476719, 33.536556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184179, -0.784029, 0.592771,
		0.917597, -0.078992, -0.389584,
		0.352270, 0.615678, 0.704874,
		28.353540, 26.661423, 33.748020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770426, 26.106436, 33.529079>,  <28.106953, 26.230448, 33.254608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770426, 26.106436, 33.529079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626892, 26.317127, 33.837311>,  <28.540771, 26.443542, 34.022251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626892, 26.317127, 33.837311>,  <28.770426, 26.106436, 33.529079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626892, 26.317127, 33.837311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255579, -0.738567, 0.623858,
		0.897730, 0.420805, 0.130401,
		-0.358832, 0.526728, 0.770582,
		28.519243, 26.475145, 34.068485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328442, 26.102453, 33.926556>,  <28.770426, 26.106436, 33.529079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328442, 26.102453, 33.926556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020594, 26.180855, 34.169624>,  <28.835886, 26.227896, 34.315468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020594, 26.180855, 34.169624>,  <29.328442, 26.102453, 33.926556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020594, 26.180855, 34.169624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377376, -0.628068, 0.680528,
		0.515048, 0.753069, 0.409406,
		-0.769619, 0.196005, 0.607675,
		28.789707, 26.239656, 34.351925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633179, 26.238476, 34.565510>,  <29.328442, 26.102453, 33.926556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633179, 26.238476, 34.565510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258850, 26.125572, 34.649960>,  <29.034254, 26.057831, 34.700630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258850, 26.125572, 34.649960>,  <29.633179, 26.238476, 34.565510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258850, 26.125572, 34.649960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321522, -0.438105, 0.839457,
		-0.144452, 0.853460, 0.500740,
		-0.935819, -0.282260, 0.211121,
		28.978104, 26.040894, 34.713295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527746, 26.233536, 35.330326>,  <29.633179, 26.238476, 34.565510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527746, 26.233536, 35.330326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219681, 26.014580, 35.199352>,  <29.034842, 25.883205, 35.120770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219681, 26.014580, 35.199352>,  <29.527746, 26.233536, 35.330326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219681, 26.014580, 35.199352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172612, -0.673047, 0.719175,
		-0.614045, 0.497366, 0.612843,
		-0.770165, -0.547390, -0.327430,
		28.988632, 25.850363, 35.101124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230623, 25.889565, 35.929367>,  <29.527746, 26.233536, 35.330326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230623, 25.889565, 35.929367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101221, 25.660889, 35.627766>,  <29.023581, 25.523684, 35.446804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101221, 25.660889, 35.627766>,  <29.230623, 25.889565, 35.929367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101221, 25.660889, 35.627766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130784, -0.816217, 0.562749,
		-0.937145, 0.083440, 0.338817,
		-0.323504, -0.571689, -0.754001,
		29.004169, 25.489382, 35.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707218, 25.497152, 36.221508>,  <29.230623, 25.889565, 35.929367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707218, 25.497152, 36.221508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847351, 25.304256, 35.900333>,  <28.931431, 25.188519, 35.707626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847351, 25.304256, 35.900333>,  <28.707218, 25.497152, 36.221508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847351, 25.304256, 35.900333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000308, -0.857327, 0.514772,
		-0.936626, -0.180093, -0.300496,
		0.350330, -0.482242, -0.802940,
		28.952450, 25.159584, 35.659451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400297, 24.884008, 36.262157>,  <28.707218, 25.497152, 36.221508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400297, 24.884008, 36.262157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702709, 24.791527, 36.017220>,  <28.884155, 24.736038, 35.870258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702709, 24.791527, 36.017220>,  <28.400297, 24.884008, 36.262157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702709, 24.791527, 36.017220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083198, -0.961892, 0.260465,
		-0.649229, -0.145974, -0.746454,
		0.756029, -0.231205, -0.612343,
		28.929518, 24.722166, 35.833515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221207, 24.245941, 35.998932>,  <28.400297, 24.884008, 36.262157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221207, 24.245941, 35.998932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609730, 24.245308, 35.903801>,  <28.842844, 24.244928, 35.846722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609730, 24.245308, 35.903801>,  <28.221207, 24.245941, 35.998932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609730, 24.245308, 35.903801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085023, -0.931581, 0.353451,
		-0.222114, -0.363529, -0.904716,
		0.971307, -0.001585, -0.237826,
		28.901121, 24.244833, 35.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386917, 23.710073, 35.542122>,  <28.221207, 24.245941, 35.998932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386917, 23.710073, 35.542122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740620, 23.773815, 35.717712>,  <28.952841, 23.812061, 35.823067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740620, 23.773815, 35.717712>,  <28.386917, 23.710073, 35.542122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740620, 23.773815, 35.717712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025005, -0.954788, 0.296236,
		0.466333, -0.250971, -0.848261,
		0.884256, 0.159355, 0.438974,
		29.005896, 23.821621, 35.849403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275681, 23.128389, 34.922913>,  <28.386917, 23.710073, 35.542122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275681, 23.128389, 34.922913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995691, 22.925156, 34.722157>,  <27.827698, 22.803215, 34.601704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995691, 22.925156, 34.722157>,  <28.275681, 23.128389, 34.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995691, 22.925156, 34.722157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073570, 0.750317, -0.656972,
		0.710370, -0.422939, -0.562581,
		-0.699973, -0.508083, -0.501887,
		27.785700, 22.772730, 34.571590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473093, 23.203861, 34.147034>,  <28.275681, 23.128389, 34.922913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473093, 23.203861, 34.147034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085491, 23.107899, 34.123447>,  <27.852930, 23.050322, 34.109295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085491, 23.107899, 34.123447>,  <28.473093, 23.203861, 34.147034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085491, 23.107899, 34.123447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114354, 0.647141, -0.753745,
		0.218983, -0.723640, -0.654516,
		-0.969004, -0.239904, -0.058962,
		27.794790, 23.035927, 34.105759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249689, 23.172083, 33.390667>,  <28.473093, 23.203861, 34.147034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249689, 23.172083, 33.390667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886951, 23.197479, 33.557327>,  <27.669310, 23.212717, 33.657326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886951, 23.197479, 33.557327>,  <28.249689, 23.172083, 33.390667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886951, 23.197479, 33.557327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267527, 0.677181, -0.685460,
		-0.325671, -0.733072, -0.597113,
		-0.906845, 0.063490, 0.416655,
		27.614899, 23.216526, 33.682323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813774, 22.955715, 32.868732>,  <28.249689, 23.172083, 33.390667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813774, 22.955715, 32.868732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594400, 23.168682, 33.126648>,  <27.462776, 23.296463, 33.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594400, 23.168682, 33.126648>,  <27.813774, 22.955715, 32.868732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594400, 23.168682, 33.126648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338995, 0.563326, -0.753489,
		-0.764396, -0.631820, -0.128461,
		-0.548435, 0.532417, 0.644788,
		27.429871, 23.328407, 33.320084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178661, 23.067230, 32.490017>,  <27.813774, 22.955715, 32.868732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178661, 23.067230, 32.490017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189781, 23.331055, 32.790470>,  <27.196453, 23.489349, 32.970741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189781, 23.331055, 32.790470>,  <27.178661, 23.067230, 32.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189781, 23.331055, 32.790470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520923, 0.650887, -0.552254,
		-0.853151, -0.375933, 0.361674,
		0.027799, 0.659561, 0.751137,
		27.198120, 23.528923, 33.015812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601835, 23.391527, 32.424759>,  <27.178661, 23.067230, 32.490017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601835, 23.391527, 32.424759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804934, 23.649132, 32.653648>,  <26.926792, 23.803696, 32.790981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804934, 23.649132, 32.653648>,  <26.601835, 23.391527, 32.424759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804934, 23.649132, 32.653648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611534, 0.737275, -0.287145,
		-0.606812, -0.204139, 0.768184,
		0.507745, 0.644014, 0.572225,
		26.957256, 23.842337, 32.825317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089790, 23.871054, 32.831371>,  <26.601835, 23.391527, 32.424759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089790, 23.871054, 32.831371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445711, 24.052216, 32.808998>,  <26.659264, 24.160913, 32.795574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445711, 24.052216, 32.808998>,  <26.089790, 23.871054, 32.831371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445711, 24.052216, 32.808998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438620, 0.814954, -0.378764,
		-0.125960, 0.361559, 0.923801,
		0.889802, 0.452906, -0.055935,
		26.712652, 24.188087, 32.792217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016911, 24.536970, 33.211754>,  <26.089790, 23.871054, 32.831371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016911, 24.536970, 33.211754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350719, 24.608963, 33.003456>,  <26.551004, 24.652159, 32.878475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350719, 24.608963, 33.003456>,  <26.016911, 24.536970, 33.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350719, 24.608963, 33.003456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428699, 0.805817, -0.408505,
		0.346103, 0.564151, 0.749631,
		0.834524, 0.179982, -0.520746,
		26.601076, 24.662958, 32.847233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266691, 25.305365, 33.394829>,  <26.016911, 24.536970, 33.211754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266691, 25.305365, 33.394829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403280, 25.176235, 33.041744>,  <26.485233, 25.098757, 32.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403280, 25.176235, 33.041744>,  <26.266691, 25.305365, 33.394829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403280, 25.176235, 33.041744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025027, 0.935707, -0.351889,
		0.939558, 0.142252, 0.311440,
		0.341474, -0.322826, -0.882711,
		26.505722, 25.079388, 32.776932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906086, 25.657635, 33.183022>,  <26.266691, 25.305365, 33.394829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906086, 25.657635, 33.183022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714911, 25.540825, 32.851650>,  <26.600204, 25.470739, 32.652828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714911, 25.540825, 32.851650>,  <26.906086, 25.657635, 33.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714911, 25.540825, 32.851650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044533, 0.949962, -0.309175,
		0.877264, -0.110875, -0.467029,
		-0.477939, -0.292026, -0.828429,
		26.571529, 25.453217, 32.603123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999969, 26.300762, 32.803524>,  <26.906086, 25.657635, 33.183022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999969, 26.300762, 32.803524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783707, 26.085762, 32.544670>,  <26.653948, 25.956762, 32.389359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783707, 26.085762, 32.544670>,  <26.999969, 26.300762, 32.803524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783707, 26.085762, 32.544670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147919, 0.818016, -0.555850,
		0.828130, -0.204806, -0.521780,
		-0.540666, -0.537498, -0.647129,
		26.621510, 25.924513, 32.350529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345301, 26.327765, 32.133255>,  <26.999969, 26.300762, 32.803524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345301, 26.327765, 32.133255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962364, 26.237610, 32.060928>,  <26.732601, 26.183517, 32.017532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962364, 26.237610, 32.060928>,  <27.345301, 26.327765, 32.133255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962364, 26.237610, 32.060928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042668, 0.729176, -0.682995,
		0.285788, -0.646145, -0.707688,
		-0.957342, -0.225387, -0.180820,
		26.675161, 26.169994, 32.006683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227335, 26.585045, 31.552628>,  <27.345301, 26.327765, 32.133255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227335, 26.585045, 31.552628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842983, 26.504841, 31.629055>,  <26.612371, 26.456718, 31.674911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842983, 26.504841, 31.629055>,  <27.227335, 26.585045, 31.552628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842983, 26.504841, 31.629055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276468, 0.735801, -0.618193,
		-0.016634, -0.646833, -0.762451,
		-0.960879, -0.200511, 0.191068,
		26.554720, 26.444687, 31.686375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836630, 26.443548, 30.853945>,  <27.227335, 26.585045, 31.552628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836630, 26.443548, 30.853945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573025, 26.537254, 31.139832>,  <26.414862, 26.593477, 31.311363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573025, 26.537254, 31.139832>,  <26.836630, 26.443548, 30.853945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573025, 26.537254, 31.139832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449862, 0.638773, -0.624174,
		-0.602765, -0.732863, -0.315572,
		-0.659013, 0.234266, 0.714718,
		26.375320, 26.607534, 31.354246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163383, 26.268478, 30.619257>,  <26.836630, 26.443548, 30.853945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163383, 26.268478, 30.619257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127029, 26.549080, 30.901997>,  <26.105217, 26.717440, 31.071640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127029, 26.549080, 30.901997>,  <26.163383, 26.268478, 30.619257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127029, 26.549080, 30.901997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449095, 0.604644, -0.657815,
		-0.888850, -0.377228, 0.260087,
		-0.090886, 0.701502, 0.706849,
		26.099764, 26.759531, 31.114052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448059, 26.414822, 30.558950>,  <26.163383, 26.268478, 30.619257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448059, 26.414822, 30.558950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647421, 26.720352, 30.722980>,  <25.767038, 26.903671, 30.821398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647421, 26.720352, 30.722980>,  <25.448059, 26.414822, 30.558950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647421, 26.720352, 30.722980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397964, 0.621805, -0.674524,
		-0.770206, 0.172991, 0.613886,
		0.498404, 0.763827, 0.410074,
		25.796942, 26.949501, 30.846003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930302, 27.047911, 30.543892>,  <25.448059, 26.414822, 30.558950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930302, 27.047911, 30.543892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307215, 27.175251, 30.585384>,  <25.533361, 27.251656, 30.610279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307215, 27.175251, 30.585384>,  <24.930302, 27.047911, 30.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307215, 27.175251, 30.585384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155674, 0.690837, -0.706052,
		-0.296434, 0.649151, 0.700521,
		0.942281, 0.318351, 0.103731,
		25.589899, 27.270756, 30.616505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903227, 27.763435, 30.537169>,  <24.930302, 27.047911, 30.543892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903227, 27.763435, 30.537169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270105, 27.668610, 30.409077>,  <25.490232, 27.611713, 30.332222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270105, 27.668610, 30.409077>,  <24.903227, 27.763435, 30.537169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270105, 27.668610, 30.409077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150060, 0.539008, -0.828826,
		0.369093, 0.808252, 0.458802,
		0.917198, -0.237066, -0.320230,
		25.545265, 27.597490, 30.313007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170219, 28.453932, 30.310341>,  <24.903227, 27.763435, 30.537169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170219, 28.453932, 30.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430649, 28.191566, 30.157562>,  <25.586906, 28.034147, 30.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430649, 28.191566, 30.157562>,  <25.170219, 28.453932, 30.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430649, 28.191566, 30.157562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092648, 0.568126, -0.817710,
		0.753340, 0.497002, 0.430661,
		0.651073, -0.655913, -0.381946,
		25.625971, 27.994793, 30.042978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771004, 28.815189, 30.095133>,  <25.170219, 28.453932, 30.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771004, 28.815189, 30.095133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844254, 28.480762, 29.888268>,  <25.888203, 28.280106, 29.764149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844254, 28.480762, 29.888268>,  <25.771004, 28.815189, 30.095133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844254, 28.480762, 29.888268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147880, 0.543499, -0.826281,
		0.971904, 0.074832, 0.223165,
		0.183122, -0.836068, -0.517163,
		25.899191, 28.229942, 29.733118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471180, 28.855417, 29.781137>,  <25.771004, 28.815189, 30.095133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471180, 28.855417, 29.781137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240505, 28.617390, 29.557236>,  <26.102100, 28.474573, 29.422895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240505, 28.617390, 29.557236>,  <26.471180, 28.855417, 29.781137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240505, 28.617390, 29.557236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098971, 0.629229, -0.770893,
		0.810948, -0.499963, -0.303973,
		-0.576686, -0.595070, -0.559754,
		26.067499, 28.438869, 29.389309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776117, 28.894699, 29.096464>,  <26.471180, 28.855417, 29.781137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776117, 28.894699, 29.096464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410175, 28.748249, 29.028355>,  <26.190611, 28.660379, 28.987490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410175, 28.748249, 29.028355>,  <26.776117, 28.894699, 29.096464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410175, 28.748249, 29.028355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051347, 0.523758, -0.850318,
		0.400502, -0.769176, -0.497963,
		-0.914856, -0.366123, -0.170271,
		26.135719, 28.638412, 28.977274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762014, 28.733437, 28.379827>,  <26.776117, 28.894699, 29.096464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762014, 28.733437, 28.379827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371849, 28.758755, 28.464264>,  <26.137749, 28.773945, 28.514925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371849, 28.758755, 28.464264>,  <26.762014, 28.733437, 28.379827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371849, 28.758755, 28.464264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164115, 0.430643, -0.887476,
		-0.147076, -0.900301, -0.409668,
		-0.975415, 0.063294, 0.211090,
		26.079224, 28.777742, 28.527592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374754, 28.862452, 27.647045>,  <26.762014, 28.733437, 28.379827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374754, 28.862452, 27.647045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138510, 28.966396, 27.952633>,  <25.996763, 29.028763, 28.135986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138510, 28.966396, 27.952633>,  <26.374754, 28.862452, 27.647045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138510, 28.966396, 27.952633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488250, 0.638697, -0.594708,
		-0.642489, -0.724249, -0.250342,
		-0.590610, 0.259864, 0.763971,
		25.961327, 29.044355, 28.181824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691118, 28.978546, 27.358610>,  <26.374754, 28.862452, 27.647045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691118, 28.978546, 27.358610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692329, 29.178474, 27.705059>,  <25.693056, 29.298431, 27.912930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692329, 29.178474, 27.705059>,  <25.691118, 28.978546, 27.358610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692329, 29.178474, 27.705059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438921, 0.778901, -0.447953,
		-0.898521, -0.378803, 0.221742,
		0.003029, 0.499822, 0.866123,
		25.693237, 29.328421, 27.964895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930803, 29.126280, 27.460238>,  <25.691118, 28.978546, 27.358610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930803, 29.126280, 27.460238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140100, 29.381916, 27.685726>,  <25.265678, 29.535297, 27.821020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140100, 29.381916, 27.685726>,  <24.930803, 29.126280, 27.460238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140100, 29.381916, 27.685726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549395, 0.758660, -0.350145,
		-0.651447, -0.126496, 0.748074,
		0.523242, 0.639089, 0.563723,
		25.297073, 29.573643, 27.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515833, 29.424019, 27.722519>,  <24.930803, 29.126280, 27.460238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515833, 29.424019, 27.722519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828316, 29.672680, 27.745380>,  <25.015804, 29.821877, 27.759096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828316, 29.672680, 27.745380>,  <24.515833, 29.424019, 27.722519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828316, 29.672680, 27.745380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549971, 0.728651, -0.408167,
		-0.295383, 0.287430, 0.911116,
		0.781205, 0.621653, 0.057153,
		25.062677, 29.859177, 27.762526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141563, 29.929049, 28.079081>,  <24.515833, 29.424019, 27.722519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141563, 29.929049, 28.079081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468834, 30.076790, 27.902824>,  <24.665195, 30.165434, 27.797070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468834, 30.076790, 27.902824>,  <24.141563, 29.929049, 28.079081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468834, 30.076790, 27.902824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527816, 0.786430, -0.320841,
		0.228030, 0.495082, 0.838389,
		0.818177, 0.369354, -0.440642,
		24.714287, 30.187595, 27.770632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167887, 30.591558, 28.329258>,  <24.141563, 29.929049, 28.079081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167887, 30.591558, 28.329258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410336, 30.610428, 28.011669>,  <24.555805, 30.621750, 27.821115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.410336, 30.610428, 28.011669>,  <24.167887, 30.591558, 28.329258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.410336, 30.610428, 28.011669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373193, 0.898402, -0.231519,
		0.702382, 0.436633, 0.562148,
		0.606124, 0.047175, -0.793970,
		24.592173, 30.624580, 27.773478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294306, 31.271597, 28.294054>,  <24.167887, 30.591558, 28.329258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294306, 31.271597, 28.294054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348576, 31.102261, 27.935753>,  <24.381138, 31.000660, 27.720772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348576, 31.102261, 27.935753>,  <24.294306, 31.271597, 28.294054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348576, 31.102261, 27.935753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479447, 0.763147, -0.433288,
		0.867020, 0.488253, -0.099428,
		0.135676, -0.423340, -0.895754,
		24.389278, 30.975258, 27.667027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339933, 31.835705, 27.810638>,  <24.294306, 31.271597, 28.294054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339933, 31.835705, 27.810638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269070, 31.514065, 27.583645>,  <24.226551, 31.321081, 27.447449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269070, 31.514065, 27.583645>,  <24.339933, 31.835705, 27.810638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269070, 31.514065, 27.583645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707280, 0.504977, -0.494725,
		0.684374, 0.313725, -0.658186,
		-0.177161, -0.804099, -0.567485,
		24.215921, 31.272835, 27.413399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310966, 32.072590, 27.102020>,  <24.339933, 31.835705, 27.810638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310966, 32.072590, 27.102020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.086311, 31.742706, 27.128624>,  <23.951517, 31.544777, 27.144587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.086311, 31.742706, 27.128624>,  <24.310966, 32.072590, 27.102020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.086311, 31.742706, 27.128624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704231, 0.434303, -0.561640,
		0.434303, -0.362276, -0.824704,
		0.561640, 0.824704, -0.066507,
		23.917820, 31.495295, 27.148577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110853, 32.045307, 26.388914>,  <24.310966, 32.072590, 27.102020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110853, 32.045307, 26.388914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870150, 31.766544, 26.544971>,  <23.725727, 31.599287, 26.638607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870150, 31.766544, 26.544971>,  <24.110853, 32.045307, 26.388914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870150, 31.766544, 26.544971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718046, 0.258177, -0.646339,
		0.349712, -0.669079, -0.655770,
		-0.601757, -0.696906, 0.390142,
		23.689623, 31.557472, 26.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803238, 31.697495, 25.834148>,  <24.110853, 32.045307, 26.388914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803238, 31.697495, 25.834148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585501, 31.660534, 26.167652>,  <23.454859, 31.638357, 26.367754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585501, 31.660534, 26.167652>,  <23.803238, 31.697495, 25.834148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585501, 31.660534, 26.167652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820663, 0.264569, -0.506473,
		-0.173790, -0.959930, -0.219845,
		-0.544343, -0.092399, 0.833759,
		23.422197, 31.632814, 26.417780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.230862, 31.324770, 25.598238>,  <23.803238, 31.697495, 25.834148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.230862, 31.324770, 25.598238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138260, 31.527157, 25.930599>,  <23.082699, 31.648590, 26.130016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138260, 31.527157, 25.930599>,  <23.230862, 31.324770, 25.598238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.138260, 31.527157, 25.930599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875097, 0.264811, -0.405069,
		-0.424984, -0.820897, 0.381467,
		-0.231503, 0.505969, 0.830905,
		23.068810, 31.678947, 26.179871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576082, 31.064150, 25.739796>,  <23.230862, 31.324770, 25.598238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576082, 31.064150, 25.739796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609322, 31.421242, 25.916943>,  <22.629265, 31.635496, 26.023230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609322, 31.421242, 25.916943>,  <22.576082, 31.064150, 25.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609322, 31.421242, 25.916943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872030, 0.280242, -0.401284,
		-0.482347, -0.352846, 0.801774,
		0.083099, 0.892729, 0.442866,
		22.634251, 31.689060, 26.049803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.872246, 31.212992, 25.947945>,  <22.576082, 31.064150, 25.739796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.872246, 31.212992, 25.947945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033989, 31.574184, 26.006077>,  <22.131035, 31.790899, 26.040956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.033989, 31.574184, 26.006077>,  <21.872246, 31.212992, 25.947945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033989, 31.574184, 26.006077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774880, 0.422644, -0.470035,
		-0.485855, 0.077448, 0.870601,
		0.404358, 0.902981, 0.145331,
		22.155296, 31.845079, 26.049677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294876, 31.687063, 26.084646>,  <21.872246, 31.212992, 25.947945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294876, 31.687063, 26.084646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605051, 31.915386, 25.976662>,  <21.791155, 32.052380, 25.911871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605051, 31.915386, 25.976662>,  <21.294876, 31.687063, 26.084646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605051, 31.915386, 25.976662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607677, 0.558470, -0.564660,
		-0.171548, 0.601905, 0.779925,
		0.775435, 0.570809, -0.269959,
		21.837681, 32.086628, 25.895674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.153625, 32.272148, 26.339302>,  <21.294876, 31.687063, 26.084646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.153625, 32.272148, 26.339302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.389122, 32.338783, 26.022915>,  <21.530420, 32.378765, 25.833082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.389122, 32.338783, 26.022915>,  <21.153625, 32.272148, 26.339302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389122, 32.338783, 26.022915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713713, 0.566507, -0.411926,
		0.379469, 0.807043, 0.452421,
		0.588742, 0.166585, -0.790969,
		21.565744, 32.388760, 25.785624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063126, 32.924770, 26.242287>,  <21.153625, 32.272148, 26.339302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063126, 32.924770, 26.242287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199718, 32.776268, 25.896904>,  <21.281673, 32.687168, 25.689674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199718, 32.776268, 25.896904>,  <21.063126, 32.924770, 26.242287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199718, 32.776268, 25.896904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764907, 0.424080, -0.484845,
		0.546175, 0.826031, -0.139159,
		0.341482, -0.371254, -0.863459,
		21.302162, 32.664890, 25.637867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800795, 33.406670, 25.740261>,  <21.063126, 32.924770, 26.242287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800795, 33.406670, 25.740261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913788, 33.081947, 25.535843>,  <20.981585, 32.887112, 25.413193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913788, 33.081947, 25.535843>,  <20.800795, 33.406670, 25.740261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913788, 33.081947, 25.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508587, 0.324960, -0.797333,
		0.813352, 0.485146, -0.321080,
		0.282484, -0.811809, -0.511046,
		20.998533, 32.838406, 25.382528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.322199, 33.805023, 25.251951>,  <20.800795, 33.406670, 25.740261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.322199, 33.805023, 25.251951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287834, 34.058563, 25.559418>,  <21.267216, 34.210686, 25.743898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287834, 34.058563, 25.559418>,  <21.322199, 33.805023, 25.251951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287834, 34.058563, 25.559418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381827, 0.691666, -0.613030,
		-0.920232, -0.346165, 0.182599,
		-0.085912, 0.633852, 0.768668,
		21.262060, 34.248718, 25.790018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.585354, 34.098030, 25.580875>,  <21.322199, 33.805023, 25.251951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.585354, 34.098030, 25.580875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886837, 34.360909, 25.579094>,  <21.067726, 34.518635, 25.578026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886837, 34.360909, 25.579094>,  <20.585354, 34.098030, 25.580875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886837, 34.360909, 25.579094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549897, 0.626914, -0.551899,
		-0.359914, 0.418418, 0.833899,
		0.753707, 0.657195, -0.004452,
		21.112949, 34.558067, 25.577759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348356, 34.553852, 25.167030>,  <20.585354, 34.098030, 25.580875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348356, 34.553852, 25.167030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.218090, 34.525597, 25.544167>,  <20.139931, 34.508644, 25.770449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.218090, 34.525597, 25.544167>,  <20.348356, 34.553852, 25.167030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218090, 34.525597, 25.544167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821384, 0.472739, 0.319133,
		-0.468262, 0.878367, -0.095930,
		-0.325666, -0.070643, 0.942842,
		20.120390, 34.504402, 25.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.962353, 34.163666, 24.634995>,  <20.348356, 34.553852, 25.167030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.962353, 34.163666, 24.634995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849075, 34.536606, 24.545090>,  <19.781109, 34.760372, 24.491146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849075, 34.536606, 24.545090>,  <19.962353, 34.163666, 24.634995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849075, 34.536606, 24.545090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763409, 0.361001, 0.535617,
		0.580524, -0.019902, -0.814000,
		-0.283195, 0.932353, -0.224763,
		19.764116, 34.816311, 24.477661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.488825, 34.100880, 24.020252>,  <19.962353, 34.163666, 24.634995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.488825, 34.100880, 24.020252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134018, 34.284920, 24.035778>,  <19.921133, 34.395344, 24.045094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.134018, 34.284920, 24.035778>,  <20.488825, 34.100880, 24.020252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134018, 34.284920, 24.035778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391375, -0.704594, -0.591924,
		-0.244993, -0.540239, 0.805059,
		-0.887020, 0.460097, 0.038816,
		19.867912, 34.422951, 24.047422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.979433, 33.561291, 24.107819>,  <20.488825, 34.100880, 24.020252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.979433, 33.561291, 24.107819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.804836, 33.889389, 23.959942>,  <19.700079, 34.086246, 23.871216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.804836, 33.889389, 23.959942>,  <19.979433, 33.561291, 24.107819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.804836, 33.889389, 23.959942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470205, -0.558294, -0.683531,
		-0.767061, -0.124523, 0.629374,
		-0.436491, 0.820245, -0.369694,
		19.673889, 34.135464, 23.849033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229815, 33.258358, 23.996038>,  <19.979433, 33.561291, 24.107819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229815, 33.258358, 23.996038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.414875, 33.531918, 23.770390>,  <19.525911, 33.696053, 23.635000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.414875, 33.531918, 23.770390>,  <19.229815, 33.258358, 23.996038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.414875, 33.531918, 23.770390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188607, -0.545824, -0.816396,
		-0.866244, 0.484106, -0.123539,
		0.462653, 0.683898, -0.564123,
		19.553671, 33.737087, 23.601152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716333, 33.415470, 23.508383>,  <19.229815, 33.258358, 23.996038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716333, 33.415470, 23.508383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085928, 33.500443, 23.381184>,  <19.307684, 33.551426, 23.304863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.085928, 33.500443, 23.381184>,  <18.716333, 33.415470, 23.508383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.085928, 33.500443, 23.381184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157640, -0.546026, -0.822803,
		-0.348426, 0.810388, -0.471032,
		0.923985, 0.212432, -0.317999,
		19.363123, 33.564171, 23.285784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597466, 33.641365, 22.811913>,  <18.716333, 33.415470, 23.508383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597466, 33.641365, 22.811913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978109, 33.525421, 22.852749>,  <19.206495, 33.455856, 22.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978109, 33.525421, 22.852749>,  <18.597466, 33.641365, 22.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978109, 33.525421, 22.852749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072923, -0.535704, -0.841251,
		0.298536, 0.793097, -0.530918,
		0.951609, -0.289860, 0.102092,
		19.263592, 33.438461, 22.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935469, 33.765869, 22.208435>,  <18.597466, 33.641365, 22.811913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935469, 33.765869, 22.208435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146339, 33.465534, 22.367596>,  <19.272861, 33.285332, 22.463091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146339, 33.465534, 22.367596>,  <18.935469, 33.765869, 22.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146339, 33.465534, 22.367596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089736, -0.416443, -0.904722,
		0.845003, 0.512655, -0.152162,
		0.527178, -0.750839, 0.397900,
		19.304493, 33.240284, 22.486965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.539371, 33.679184, 21.868702>,  <18.935469, 33.765869, 22.208435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.539371, 33.679184, 21.868702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536465, 33.322845, 22.050404>,  <19.534721, 33.109043, 22.159426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536465, 33.322845, 22.050404>,  <19.539371, 33.679184, 21.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536465, 33.322845, 22.050404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099896, -0.452642, -0.886079,
		0.994971, 0.038940, 0.092281,
		-0.007267, -0.890842, 0.454256,
		19.534285, 33.055592, 22.186680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000420, 33.362640, 21.516571>,  <19.539371, 33.679184, 21.868702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000420, 33.362640, 21.516571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793905, 33.065182, 21.686485>,  <19.669996, 32.886707, 21.788435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.793905, 33.065182, 21.686485>,  <20.000420, 33.362640, 21.516571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.793905, 33.065182, 21.686485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107198, -0.548218, -0.829437,
		0.849681, -0.382690, 0.362754,
		-0.516285, -0.743643, 0.424787,
		19.639019, 32.842091, 21.813921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298931, 32.783485, 21.339569>,  <20.000420, 33.362640, 21.516571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298931, 32.783485, 21.339569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.953518, 32.625992, 21.465611>,  <19.746271, 32.531498, 21.541235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.953518, 32.625992, 21.465611>,  <20.298931, 32.783485, 21.339569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953518, 32.625992, 21.465611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041439, -0.567325, -0.822451,
		0.502590, -0.723269, 0.473587,
		-0.863531, -0.393731, 0.315104,
		19.694458, 32.507874, 21.560141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.404579, 32.024384, 21.301561>,  <20.298931, 32.783485, 21.339569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.404579, 32.024384, 21.301561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012539, 32.103344, 21.293179>,  <19.777315, 32.150723, 21.288149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012539, 32.103344, 21.293179>,  <20.404579, 32.024384, 21.301561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012539, 32.103344, 21.293179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097445, -0.570399, -0.815567,
		-0.172950, -0.797294, 0.578283,
		-0.980099, 0.197403, -0.020958,
		19.718510, 32.162563, 21.286890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056410, 31.359346, 21.200577>,  <20.404579, 32.024384, 21.301561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056410, 31.359346, 21.200577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781063, 31.627106, 21.088821>,  <19.615854, 31.787762, 21.021769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781063, 31.627106, 21.088821>,  <20.056410, 31.359346, 21.200577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781063, 31.627106, 21.088821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085386, -0.457270, -0.885219,
		-0.720320, -0.585500, 0.371927,
		-0.688367, 0.669398, -0.279387,
		19.574553, 31.827925, 21.005005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544344, 30.994900, 20.777700>,  <20.056410, 31.359346, 21.200577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544344, 30.994900, 20.777700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520393, 31.382858, 20.683285>,  <19.506023, 31.615633, 20.626635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520393, 31.382858, 20.683285>,  <19.544344, 30.994900, 20.777700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520393, 31.382858, 20.683285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101662, -0.241160, -0.965146,
		-0.993015, -0.033794, 0.113042,
		-0.059877, 0.969897, -0.236040,
		19.502430, 31.673828, 20.612473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146708, 30.971283, 20.239412>,  <19.544344, 30.994900, 20.777700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146708, 30.971283, 20.239412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.293396, 31.340378, 20.191967>,  <19.381409, 31.561834, 20.163500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.293396, 31.340378, 20.191967>,  <19.146708, 30.971283, 20.239412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293396, 31.340378, 20.191967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037207, -0.112845, -0.992916,
		-0.929587, 0.368537, -0.007051,
		0.366722, 0.922739, -0.118611,
		19.403412, 31.617199, 20.156384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825659, 31.403027, 19.622950>,  <19.146708, 30.971283, 20.239412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825659, 31.403027, 19.622950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188044, 31.550648, 19.705929>,  <19.405474, 31.639219, 19.755716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188044, 31.550648, 19.705929>,  <18.825659, 31.403027, 19.622950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188044, 31.550648, 19.705929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241622, -0.048364, -0.969165,
		-0.347638, 0.928150, -0.132987,
		0.905962, 0.369051, 0.207448,
		19.459831, 31.661364, 19.768164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919741, 31.932434, 19.188517>,  <18.825659, 31.403027, 19.622950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919741, 31.932434, 19.188517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.295252, 31.839638, 19.290398>,  <19.520559, 31.783960, 19.351526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.295252, 31.839638, 19.290398>,  <18.919741, 31.932434, 19.188517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.295252, 31.839638, 19.290398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289750, 0.131708, -0.947997,
		0.186379, 0.963760, 0.190864,
		0.938780, -0.231989, 0.254702,
		19.576885, 31.770041, 19.366808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.394264, 32.507736, 18.873358>,  <18.919741, 31.932434, 19.188517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.394264, 32.507736, 18.873358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607304, 32.178375, 18.951691>,  <19.735126, 31.980759, 18.998692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607304, 32.178375, 18.951691>,  <19.394264, 32.507736, 18.873358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607304, 32.178375, 18.951691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444030, 0.074852, -0.892880,
		0.720540, 0.562502, 0.405480,
		0.532598, -0.823401, 0.195834,
		19.767082, 31.931355, 19.010441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107975, 32.743458, 18.767141>,  <19.394264, 32.507736, 18.873358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107975, 32.743458, 18.767141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124029, 32.345066, 18.735126>,  <20.133661, 32.106030, 18.715918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124029, 32.345066, 18.735126>,  <20.107975, 32.743458, 18.767141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124029, 32.345066, 18.735126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699405, 0.085212, -0.709627,
		0.713597, -0.027497, 0.700016,
		0.040137, -0.995983, -0.080039,
		20.136070, 32.046272, 18.711115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790066, 32.681057, 18.706305>,  <20.107975, 32.743458, 18.767141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790066, 32.681057, 18.706305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.672878, 32.308743, 18.618843>,  <20.602566, 32.085354, 18.566366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.672878, 32.308743, 18.618843>,  <20.790066, 32.681057, 18.706305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.672878, 32.308743, 18.618843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764460, -0.090682, -0.638262,
		0.574257, -0.354141, 0.738114,
		-0.292968, -0.930785, -0.218652,
		20.584988, 32.029507, 18.553247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344728, 32.153770, 18.746872>,  <20.790066, 32.681057, 18.706305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344728, 32.153770, 18.746872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082838, 32.011547, 18.480064>,  <20.925705, 31.926214, 18.319979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082838, 32.011547, 18.480064>,  <21.344728, 32.153770, 18.746872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082838, 32.011547, 18.480064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747127, -0.170604, -0.642414,
		0.114617, -0.918953, 0.377343,
		-0.654724, -0.355555, -0.667021,
		20.886421, 31.904881, 18.279959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604088, 31.489750, 18.536751>,  <21.344728, 32.153770, 18.746872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604088, 31.489750, 18.536751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338844, 31.584129, 18.252605>,  <21.179699, 31.640757, 18.082119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338844, 31.584129, 18.252605>,  <21.604088, 31.489750, 18.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338844, 31.584129, 18.252605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625865, -0.345788, -0.699087,
		-0.410585, -0.908162, 0.081622,
		-0.663108, 0.235951, -0.710363,
		21.139912, 31.654915, 18.039497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.442249, 30.878057, 18.167603>,  <21.604088, 31.489750, 18.536751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.442249, 30.878057, 18.167603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.367409, 31.199478, 17.941578>,  <21.322504, 31.392330, 17.805964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.367409, 31.199478, 17.941578>,  <21.442249, 30.878057, 18.167603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367409, 31.199478, 17.941578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600676, -0.361566, -0.713062,
		-0.777291, -0.472835, -0.415025,
		-0.187102, 0.803552, -0.565063,
		21.311277, 31.440544, 17.772058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523117, 30.632593, 17.632057>,  <21.442249, 30.878057, 18.167603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523117, 30.632593, 17.632057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502096, 31.009846, 17.500763>,  <21.489483, 31.236198, 17.421986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502096, 31.009846, 17.500763>,  <21.523117, 30.632593, 17.632057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502096, 31.009846, 17.500763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712053, -0.195063, -0.674486,
		-0.700157, -0.269169, -0.661309,
		-0.052554, 0.943133, -0.328237,
		21.486330, 31.292786, 17.402292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459534, 30.639471, 16.928455>,  <21.523117, 30.632593, 17.632057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459534, 30.639471, 16.928455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630028, 30.982418, 17.043861>,  <21.732325, 31.188187, 17.113106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.630028, 30.982418, 17.043861>,  <21.459534, 30.639471, 16.928455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630028, 30.982418, 17.043861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695803, -0.106912, -0.710231,
		-0.578084, 0.503477, -0.642129,
		0.426236, 0.857368, 0.288517,
		21.757898, 31.239628, 17.130417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766026, 30.967266, 16.308317>,  <21.459534, 30.639471, 16.928455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766026, 30.967266, 16.308317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965219, 31.163177, 16.594570>,  <22.084736, 31.280724, 16.766321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.965219, 31.163177, 16.594570>,  <21.766026, 30.967266, 16.308317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965219, 31.163177, 16.594570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857416, -0.154559, -0.490866,
		-0.129808, 0.858037, -0.496912,
		0.497984, 0.489779, 0.715632,
		22.114614, 31.310112, 16.809259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291048, 31.517899, 16.044706>,  <21.766026, 30.967266, 16.308317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291048, 31.517899, 16.044706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.412439, 31.390327, 16.403858>,  <22.485273, 31.313786, 16.619349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.412439, 31.390327, 16.403858>,  <22.291048, 31.517899, 16.044706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.412439, 31.390327, 16.403858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880508, -0.266268, -0.392182,
		0.364154, 0.909608, 0.200011,
		0.303476, -0.318926, 0.897880,
		22.503483, 31.294649, 16.673222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.768135, 31.917498, 16.409582>,  <22.291048, 31.517899, 16.044706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.768135, 31.917498, 16.409582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.816488, 31.525249, 16.471256>,  <22.845499, 31.289902, 16.508261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.816488, 31.525249, 16.471256>,  <22.768135, 31.917498, 16.409582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.816488, 31.525249, 16.471256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902315, 0.043801, -0.428846,
		0.413781, 0.190963, 0.890123,
		0.120882, -0.980620, 0.154184,
		22.852753, 31.231064, 16.517511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427254, 31.805975, 16.777306>,  <22.768135, 31.917498, 16.409582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427254, 31.805975, 16.777306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.310163, 31.486835, 16.566498>,  <23.239910, 31.295351, 16.440014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.310163, 31.486835, 16.566498>,  <23.427254, 31.805975, 16.777306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.310163, 31.486835, 16.566498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878479, -0.006739, -0.477734,
		0.377609, -0.602818, 0.702867,
		-0.292724, -0.797850, -0.527018,
		23.222347, 31.247480, 16.408392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046377, 31.461617, 16.734236>,  <23.427254, 31.805975, 16.777306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046377, 31.461617, 16.734236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798168, 31.308624, 16.460400>,  <23.649242, 31.216829, 16.296099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798168, 31.308624, 16.460400>,  <24.046377, 31.461617, 16.734236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.798168, 31.308624, 16.460400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784189, -0.300856, -0.542709,
		0.001613, -0.873610, 0.486624,
		-0.620520, -0.382481, -0.684590,
		23.612013, 31.193880, 16.255022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167860, 30.636951, 16.691528>,  <24.046377, 31.461617, 16.734236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167860, 30.636951, 16.691528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242725, 30.804966, 16.336330>,  <24.287645, 30.905775, 16.123211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242725, 30.804966, 16.336330>,  <24.167860, 30.636951, 16.691528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242725, 30.804966, 16.336330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140294, 0.883274, 0.447374,
		0.972259, -0.208312, 0.106388,
		0.187163, 0.420038, -0.887996,
		24.298874, 30.930977, 16.069931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648741, 31.132187, 16.551489>,  <24.167860, 30.636951, 16.691528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648741, 31.132187, 16.551489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401402, 31.252937, 16.261242>,  <24.252998, 31.325388, 16.087093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401402, 31.252937, 16.261242>,  <24.648741, 31.132187, 16.551489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401402, 31.252937, 16.261242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123225, 0.874626, 0.468877,
		0.776185, 0.379342, -0.503623,
		-0.618346, 0.301877, -0.725616,
		24.215899, 31.343500, 16.043556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801489, 31.851965, 16.179180>,  <24.648741, 31.132187, 16.551489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801489, 31.851965, 16.179180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408148, 31.779533, 16.173084>,  <24.172144, 31.736074, 16.169428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408148, 31.779533, 16.173084>,  <24.801489, 31.851965, 16.179180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408148, 31.779533, 16.173084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172598, 0.904466, 0.390066,
		-0.056851, 0.386201, -0.920661,
		-0.983350, -0.181080, -0.015238,
		24.113142, 31.725210, 16.168512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545107, 32.461788, 16.213661>,  <24.801489, 31.851965, 16.179180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545107, 32.461788, 16.213661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182804, 32.313461, 16.295731>,  <23.965422, 32.224464, 16.344973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182804, 32.313461, 16.295731>,  <24.545107, 32.461788, 16.213661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182804, 32.313461, 16.295731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226196, 0.832411, 0.505892,
		-0.358386, 0.411805, -0.837840,
		-0.905757, -0.370821, 0.205176,
		23.911077, 32.202213, 16.357283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.283215, 33.022102, 16.529734>,  <24.545107, 32.461788, 16.213661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.283215, 33.022102, 16.529734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998400, 32.741383, 16.538509>,  <23.827511, 32.572952, 16.543774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.998400, 32.741383, 16.538509>,  <24.283215, 33.022102, 16.529734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.998400, 32.741383, 16.538509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632826, 0.654970, 0.412971,
		-0.304191, 0.280169, -0.910480,
		-0.712039, -0.701797, 0.021938,
		23.784788, 32.530842, 16.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.705879, 33.190384, 16.038553>,  <24.283215, 33.022102, 16.529734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.705879, 33.190384, 16.038553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.592577, 33.014141, 16.379288>,  <23.524595, 32.908394, 16.583729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.592577, 33.014141, 16.379288>,  <23.705879, 33.190384, 16.038553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592577, 33.014141, 16.379288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642865, 0.746353, 0.172282,
		-0.711681, -0.498817, -0.494662,
		-0.283256, -0.440611, 0.851838,
		23.507601, 32.881958, 16.634840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.978628, 33.294998, 16.135489>,  <23.705879, 33.190384, 16.038553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.978628, 33.294998, 16.135489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093468, 33.194664, 16.505280>,  <23.162373, 33.134464, 16.727154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093468, 33.194664, 16.505280>,  <22.978628, 33.294998, 16.135489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093468, 33.194664, 16.505280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627180, 0.680254, 0.379342,
		-0.724030, -0.688722, 0.037984,
		0.287100, -0.250832, 0.924477,
		23.179598, 33.119415, 16.782623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379751, 33.180248, 16.598236>,  <22.978628, 33.294998, 16.135489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379751, 33.180248, 16.598236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691082, 33.272881, 16.831673>,  <22.877880, 33.328461, 16.971735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691082, 33.272881, 16.831673>,  <22.379751, 33.180248, 16.598236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691082, 33.272881, 16.831673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605790, 0.521271, 0.601078,
		-0.165012, -0.821369, 0.546008,
		0.778325, 0.231582, 0.583593,
		22.924580, 33.342354, 17.006750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079309, 33.276020, 17.284483>,  <22.379751, 33.180248, 16.598236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079309, 33.276020, 17.284483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445282, 33.434692, 17.314270>,  <22.664865, 33.529896, 17.332142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445282, 33.434692, 17.314270>,  <22.079309, 33.276020, 17.284483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445282, 33.434692, 17.314270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361789, 0.724265, 0.586983,
		0.178909, -0.563991, 0.806167,
		0.914932, 0.396679, 0.074468,
		22.719761, 33.553696, 17.336611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135002, 33.385063, 18.006924>,  <22.079309, 33.276020, 17.284483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.135002, 33.385063, 18.006924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397951, 33.612782, 17.809433>,  <22.555721, 33.749413, 17.690939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397951, 33.612782, 17.809433>,  <22.135002, 33.385063, 18.006924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397951, 33.612782, 17.809433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185390, 0.757230, 0.626286,
		0.730404, -0.320171, 0.603324,
		0.657374, 0.569292, -0.493727,
		22.595163, 33.783569, 17.661314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634125, 33.633232, 18.460331>,  <22.135002, 33.385063, 18.006924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634125, 33.633232, 18.460331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625200, 33.894413, 18.157505>,  <22.619846, 34.051121, 17.975809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625200, 33.894413, 18.157505>,  <22.634125, 33.633232, 18.460331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625200, 33.894413, 18.157505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128059, 0.749151, 0.649903,
		0.991516, 0.111449, 0.066903,
		-0.022311, 0.652956, -0.757067,
		22.618507, 34.090302, 17.930386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956553, 34.068558, 18.708397>,  <22.634125, 33.633232, 18.460331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956553, 34.068558, 18.708397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824621, 34.283543, 18.397953>,  <22.745462, 34.412533, 18.211687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824621, 34.283543, 18.397953>,  <22.956553, 34.068558, 18.708397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824621, 34.283543, 18.397953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479910, 0.612504, 0.628113,
		0.812958, 0.579632, 0.055913,
		-0.329827, 0.537462, -0.776111,
		22.725674, 34.444782, 18.165119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.136866, 34.735565, 18.722141>,  <22.956553, 34.068558, 18.708397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.136866, 34.735565, 18.722141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.838053, 34.777966, 18.459629>,  <22.658764, 34.803406, 18.302122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.838053, 34.777966, 18.459629>,  <23.136866, 34.735565, 18.722141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.838053, 34.777966, 18.459629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395934, 0.722075, 0.567313,
		0.534020, 0.683645, -0.497445,
		-0.747033, 0.106001, -0.656281,
		22.613943, 34.809765, 18.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112455, 35.471001, 18.735388>,  <23.136866, 34.735565, 18.722141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112455, 35.471001, 18.735388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786419, 35.307472, 18.571198>,  <22.590797, 35.209354, 18.472683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786419, 35.307472, 18.571198>,  <23.112455, 35.471001, 18.735388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786419, 35.307472, 18.571198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577055, 0.510171, 0.637757,
		-0.051318, 0.756696, -0.651749,
		-0.815091, -0.408824, -0.410474,
		22.541891, 35.184826, 18.448055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561556, 36.043270, 18.717045>,  <23.112455, 35.471001, 18.735388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561556, 36.043270, 18.717045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350920, 35.704193, 18.691387>,  <22.224537, 35.500748, 18.675993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350920, 35.704193, 18.691387>,  <22.561556, 36.043270, 18.717045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350920, 35.704193, 18.691387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721088, 0.405429, 0.561836,
		-0.450258, 0.342113, -0.824758,
		-0.526592, -0.847695, -0.064146,
		22.192942, 35.449886, 18.672144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858715, 36.324272, 18.640221>,  <22.561556, 36.043270, 18.717045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858715, 36.324272, 18.640221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.825327, 35.939579, 18.744610>,  <21.805294, 35.708763, 18.807243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.825327, 35.939579, 18.744610>,  <21.858715, 36.324272, 18.640221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.825327, 35.939579, 18.744610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552409, 0.262620, 0.791123,
		-0.829384, -0.078129, -0.553189,
		-0.083469, -0.961731, 0.260972,
		21.800285, 35.651058, 18.822901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137173, 36.110619, 18.768293>,  <21.858715, 36.324272, 18.640221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137173, 36.110619, 18.768293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.365803, 35.840042, 18.954079>,  <21.502981, 35.677696, 19.065550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.365803, 35.840042, 18.954079>,  <21.137173, 36.110619, 18.768293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.365803, 35.840042, 18.954079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581649, 0.065251, 0.810819,
		-0.578781, -0.733596, -0.356158,
		0.571574, -0.676446, 0.464461,
		21.537275, 35.637108, 19.093418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660774, 35.701702, 19.068634>,  <21.137173, 36.110619, 18.768293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660774, 35.701702, 19.068634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994930, 35.604870, 19.266026>,  <21.195423, 35.546772, 19.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994930, 35.604870, 19.266026>,  <20.660774, 35.701702, 19.068634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994930, 35.604870, 19.266026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503509, 0.023074, 0.863682,
		-0.220470, -0.969981, -0.102615,
		0.835388, -0.242083, 0.493481,
		21.245546, 35.532246, 19.414070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498709, 35.149132, 19.460670>,  <20.660774, 35.701702, 19.068634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498709, 35.149132, 19.460670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824171, 35.288101, 19.647118>,  <21.019449, 35.371483, 19.758986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.824171, 35.288101, 19.647118>,  <20.498709, 35.149132, 19.460670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824171, 35.288101, 19.647118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457429, -0.112226, 0.882136,
		0.358781, -0.930970, 0.067606,
		0.813655, 0.347419, 0.466117,
		21.068268, 35.392326, 19.786953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568289, 34.733696, 20.041403>,  <20.498709, 35.149132, 19.460670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568289, 34.733696, 20.041403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768953, 35.068371, 20.129303>,  <20.889353, 35.269176, 20.182043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768953, 35.068371, 20.129303>,  <20.568289, 34.733696, 20.041403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768953, 35.068371, 20.129303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420349, 0.013748, 0.907258,
		0.756071, -0.547507, 0.358598,
		0.501661, 0.836688, 0.219749,
		20.919451, 35.319378, 20.195229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788109, 34.632782, 20.680670>,  <20.568289, 34.733696, 20.041403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788109, 34.632782, 20.680670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812567, 35.029694, 20.637493>,  <20.827242, 35.267841, 20.611588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812567, 35.029694, 20.637493>,  <20.788109, 34.632782, 20.680670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812567, 35.029694, 20.637493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368303, 0.122943, 0.921541,
		0.927693, -0.016591, 0.372975,
		0.061144, 0.992275, -0.107943,
		20.830910, 35.327377, 20.605110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095301, 34.852955, 21.246941>,  <20.788109, 34.632782, 20.680670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095301, 34.852955, 21.246941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933540, 35.196613, 21.121510>,  <20.836483, 35.402809, 21.046251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.933540, 35.196613, 21.121510>,  <21.095301, 34.852955, 21.246941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933540, 35.196613, 21.121510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419129, 0.130648, 0.898477,
		0.812889, 0.494777, 0.307258,
		-0.404403, 0.859143, -0.313578,
		20.812220, 35.454357, 21.027435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.316879, 35.273376, 21.754478>,  <21.095301, 34.852955, 21.246941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.316879, 35.273376, 21.754478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996294, 35.431370, 21.574860>,  <20.803944, 35.526165, 21.467089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996294, 35.431370, 21.574860>,  <21.316879, 35.273376, 21.754478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996294, 35.431370, 21.574860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377720, 0.247816, 0.892141,
		0.463664, 0.884632, -0.049421,
		-0.801463, 0.394986, -0.449046,
		20.755856, 35.549866, 21.440145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138784, 35.859528, 22.131229>,  <21.316879, 35.273376, 21.754478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138784, 35.859528, 22.131229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803459, 35.799618, 21.921547>,  <20.602264, 35.763672, 21.795736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803459, 35.799618, 21.921547>,  <21.138784, 35.859528, 22.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803459, 35.799618, 21.921547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534264, 0.417190, 0.735196,
		0.108577, 0.896392, -0.429759,
		-0.838315, -0.149779, -0.524208,
		20.551964, 35.754684, 21.764284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718206, 36.431427, 22.347324>,  <21.138784, 35.859528, 22.131229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718206, 36.431427, 22.347324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.467157, 36.170753, 22.176960>,  <20.316528, 36.014351, 22.074741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.467157, 36.170753, 22.176960>,  <20.718206, 36.431427, 22.347324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467157, 36.170753, 22.176960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731904, 0.307458, 0.608100,
		-0.265338, 0.693384, -0.669937,
		-0.627624, -0.651681, -0.425910,
		20.278870, 35.975250, 22.049187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083893, 36.759506, 22.211082>,  <20.718206, 36.431427, 22.347324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.083893, 36.759506, 22.211082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983809, 36.372295, 22.203884>,  <19.923758, 36.139969, 22.199566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983809, 36.372295, 22.203884>,  <20.083893, 36.759506, 22.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.983809, 36.372295, 22.203884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787962, 0.192798, 0.584760,
		-0.562593, 0.160491, -0.811006,
		-0.250209, -0.968024, -0.017994,
		19.908745, 36.081886, 22.198486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284594, 36.639790, 21.978004>,  <20.083893, 36.759506, 22.211082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284594, 36.639790, 21.978004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441010, 36.365181, 22.223206>,  <19.534859, 36.200417, 22.370327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441010, 36.365181, 22.223206>,  <19.284594, 36.639790, 21.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441010, 36.365181, 22.223206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733107, 0.170352, 0.658434,
		-0.556457, -0.706870, -0.436681,
		0.391038, -0.686524, 0.613005,
		19.558321, 36.159225, 22.407106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809469, 36.048431, 22.195402>,  <19.284594, 36.639790, 21.978004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809469, 36.048431, 22.195402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053524, 36.171913, 22.487274>,  <19.199957, 36.246002, 22.662397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053524, 36.171913, 22.487274>,  <18.809469, 36.048431, 22.195402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.053524, 36.171913, 22.487274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791925, 0.209463, 0.573568,
		0.024218, -0.927809, 0.372268,
		0.610138, 0.308699, 0.729682,
		19.236565, 36.264523, 22.706179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790443, 36.693523, 22.656633>,  <18.809469, 36.048431, 22.195402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790443, 36.693523, 22.656633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536760, 36.861401, 22.396900>,  <18.384550, 36.962128, 22.241060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.536760, 36.861401, 22.396900>,  <18.790443, 36.693523, 22.656633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536760, 36.861401, 22.396900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727754, -0.040476, 0.684642,
		0.261060, 0.906761, 0.331107,
		-0.634209, 0.419697, -0.649333,
		18.346497, 36.987309, 22.202101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489353, 37.191002, 23.075666>,  <18.790443, 36.693523, 22.656633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489353, 37.191002, 23.075666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285717, 36.994240, 22.793148>,  <18.163536, 36.876183, 22.623636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285717, 36.994240, 22.793148>,  <18.489353, 37.191002, 23.075666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285717, 36.994240, 22.793148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698326, -0.243646, 0.673035,
		-0.503158, 0.835861, -0.219474,
		-0.509090, -0.491908, -0.706296,
		18.132990, 36.846668, 22.581259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933207, 37.495914, 22.925428>,  <18.489353, 37.191002, 23.075666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933207, 37.495914, 22.925428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.854160, 37.113083, 22.840618>,  <17.806732, 36.883385, 22.789732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.854160, 37.113083, 22.840618>,  <17.933207, 37.495914, 22.925428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.854160, 37.113083, 22.840618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814003, 0.039693, 0.579503,
		-0.546212, 0.287108, -0.786906,
		-0.197615, -0.957076, -0.212026,
		17.794876, 36.825962, 22.777010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.929592, 24.639418, 27.831636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.304262, 24.777214, 27.856823>,  <29.529064, 24.859892, 27.871935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.304262, 24.777214, 27.856823>,  <28.929592, 24.639418, 27.831636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304262, 24.777214, 27.856823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263526, 0.811780, -0.521121,
		-0.230637, 0.471528, 0.851157,
		0.936675, 0.344491, 0.062967,
		29.585264, 24.880562, 27.875713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946861, 25.417805, 28.073828>,  <28.929592, 24.639418, 27.831636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946861, 25.417805, 28.073828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319118, 25.369057, 27.935814>,  <29.542473, 25.339808, 27.853006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319118, 25.369057, 27.935814>,  <28.946861, 25.417805, 28.073828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319118, 25.369057, 27.935814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071598, 0.864039, -0.498308,
		0.358853, 0.488451, 0.795387,
		0.930644, -0.121872, -0.345035,
		29.598312, 25.332495, 27.832304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271408, 26.162445, 28.107691>,  <28.946861, 25.417805, 28.073828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271408, 26.162445, 28.107691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481394, 25.936855, 27.852711>,  <29.607386, 25.801502, 27.699722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481394, 25.936855, 27.852711>,  <29.271408, 26.162445, 28.107691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481394, 25.936855, 27.852711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080802, 0.712548, -0.696955,
		0.847279, 0.417384, 0.328493,
		0.524965, -0.563973, -0.637452,
		29.638884, 25.767664, 27.661474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856998, 26.569534, 27.896675>,  <29.271408, 26.162445, 28.107691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856998, 26.569534, 27.896675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.816683, 26.292072, 27.611385>,  <29.792494, 26.125595, 27.440212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.816683, 26.292072, 27.611385>,  <29.856998, 26.569534, 27.896675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816683, 26.292072, 27.611385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082966, 0.720236, -0.688750,
		0.991442, -0.010246, -0.130142,
		-0.100790, -0.693653, -0.713223,
		29.786446, 26.083977, 27.397419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423677, 26.639170, 27.463326>,  <29.856998, 26.569534, 27.896675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423677, 26.639170, 27.463326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.146889, 26.443092, 27.251331>,  <29.980816, 26.325447, 27.124134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.146889, 26.443092, 27.251331>,  <30.423677, 26.639170, 27.463326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146889, 26.443092, 27.251331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062642, 0.690593, -0.720526,
		0.719203, -0.531782, -0.447163,
		-0.691970, -0.490193, -0.529989,
		29.939297, 26.296036, 27.092335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663790, 26.665794, 26.717524>,  <30.423677, 26.639170, 27.463326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663790, 26.665794, 26.717524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271782, 26.587299, 26.704548>,  <30.036577, 26.540203, 26.696762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271782, 26.587299, 26.704548>,  <30.663790, 26.665794, 26.717524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271782, 26.587299, 26.704548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130345, 0.756829, -0.640485,
		0.150240, -0.623459, -0.767286,
		-0.980020, -0.196238, -0.032441,
		29.977776, 26.528427, 26.694815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538853, 26.771732, 25.979086>,  <30.663790, 26.665794, 26.717524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538853, 26.771732, 25.979086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.196768, 26.794827, 26.185108>,  <29.991518, 26.808683, 26.308722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.196768, 26.794827, 26.185108>,  <30.538853, 26.771732, 25.979086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196768, 26.794827, 26.185108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257409, 0.815227, -0.518792,
		-0.449838, -0.576256, -0.682330,
		-0.855211, 0.057735, 0.515054,
		29.940205, 26.812147, 26.339624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945473, 26.861549, 25.487707>,  <30.538853, 26.771732, 25.979086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945473, 26.861549, 25.487707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.754580, 27.002426, 25.809753>,  <29.640043, 27.086952, 26.002981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.754580, 27.002426, 25.809753>,  <29.945473, 26.861549, 25.487707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754580, 27.002426, 25.809753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511619, 0.633544, -0.580404,
		-0.714489, -0.688899, -0.122159,
		-0.477233, 0.352193, 0.805114,
		29.611410, 27.108084, 26.051287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155481, 27.048237, 25.246193>,  <29.945473, 26.861549, 25.487707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155481, 27.048237, 25.246193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.237904, 27.248028, 25.582779>,  <29.287357, 27.367903, 25.784731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.237904, 27.248028, 25.582779>,  <29.155481, 27.048237, 25.246193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237904, 27.248028, 25.582779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545216, 0.772675, -0.325136,
		-0.812577, -0.391785, 0.431536,
		0.206054, 0.499479, 0.841465,
		29.299719, 27.397871, 25.835218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587862, 27.316042, 25.435570>,  <29.155481, 27.048237, 25.246193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587862, 27.316042, 25.435570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837320, 27.550568, 25.642376>,  <28.986996, 27.691282, 25.766460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.837320, 27.550568, 25.642376>,  <28.587862, 27.316042, 25.435570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837320, 27.550568, 25.642376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605693, 0.780544, -0.154551,
		-0.494169, -0.216768, 0.841908,
		0.623644, 0.586312, 0.517015,
		29.024414, 27.726461, 25.797482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270723, 27.624527, 25.993401>,  <28.587862, 27.316042, 25.435570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270723, 27.624527, 25.993401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.589857, 27.857433, 25.930889>,  <28.781338, 27.997177, 25.893383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.589857, 27.857433, 25.930889>,  <28.270723, 27.624527, 25.993401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589857, 27.857433, 25.930889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578501, 0.666444, -0.470307,
		-0.169694, 0.465635, 0.868555,
		0.797835, 0.582268, -0.156279,
		28.829208, 28.032114, 25.884005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096828, 28.297024, 26.258097>,  <28.270723, 27.624527, 25.993401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096828, 28.297024, 26.258097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.392626, 28.360676, 25.996464>,  <28.570105, 28.398867, 25.839483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.392626, 28.360676, 25.996464>,  <28.096828, 28.297024, 26.258097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392626, 28.360676, 25.996464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568937, 0.667094, -0.480933,
		0.359805, 0.727780, 0.583847,
		0.739494, 0.159131, -0.654084,
		28.614473, 28.408415, 25.800238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180862, 28.961573, 26.207426>,  <28.096828, 28.297024, 26.258097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180862, 28.961573, 26.207426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.382862, 28.899281, 25.867844>,  <28.504063, 28.861904, 25.664095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.382862, 28.899281, 25.867844>,  <28.180862, 28.961573, 26.207426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382862, 28.899281, 25.867844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484633, 0.762742, -0.428200,
		0.714218, 0.627672, 0.309712,
		0.504999, -0.155731, -0.848955,
		28.534361, 28.852562, 25.613157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512512, 29.598484, 26.104040>,  <28.180862, 28.961573, 26.207426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512512, 29.598484, 26.104040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549936, 29.418430, 25.748821>,  <28.572392, 29.310398, 25.535690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549936, 29.418430, 25.748821>,  <28.512512, 29.598484, 26.104040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549936, 29.418430, 25.748821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375233, 0.810244, -0.450228,
		0.922197, 0.375348, -0.093098,
		0.093560, -0.450132, -0.888047,
		28.578005, 29.283390, 25.482407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897200, 30.049189, 25.647840>,  <28.512512, 29.598484, 26.104040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897200, 30.049189, 25.647840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.668024, 29.830837, 25.403297>,  <28.530519, 29.699825, 25.256573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.668024, 29.830837, 25.403297>,  <28.897200, 30.049189, 25.647840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668024, 29.830837, 25.403297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517798, 0.819287, -0.246282,
		0.635317, 0.175454, -0.752056,
		-0.572938, -0.545880, -0.611356,
		28.496143, 29.667072, 25.219891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921217, 30.356991, 24.975859>,  <28.897200, 30.049189, 25.647840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921217, 30.356991, 24.975859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.595592, 30.124889, 24.965958>,  <28.400219, 29.985628, 24.960016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.595592, 30.124889, 24.965958>,  <28.921217, 30.356991, 24.975859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595592, 30.124889, 24.965958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538683, 0.770298, -0.341264,
		0.217088, -0.264475, -0.939641,
		-0.814060, -0.580253, -0.024754,
		28.351374, 29.950813, 24.958530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636892, 30.354107, 24.272911>,  <28.921217, 30.356991, 24.975859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636892, 30.354107, 24.272911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.337902, 30.270500, 24.525131>,  <28.158508, 30.220335, 24.676462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.337902, 30.270500, 24.525131>,  <28.636892, 30.354107, 24.272911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337902, 30.270500, 24.525131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557790, 0.712984, -0.424881,
		-0.360763, -0.669302, -0.649527,
		-0.747476, -0.209018, 0.630548,
		28.113659, 30.207794, 24.714296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012592, 30.500830, 23.925806>,  <28.636892, 30.354107, 24.272911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012592, 30.500830, 23.925806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.837725, 30.446880, 24.281490>,  <27.732805, 30.414511, 24.494902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.837725, 30.446880, 24.281490>,  <28.012592, 30.500830, 23.925806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837725, 30.446880, 24.281490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729806, 0.631004, -0.263090,
		-0.525612, -0.763965, -0.374285,
		-0.437167, -0.134872, 0.889210,
		27.706575, 30.406418, 24.548254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274652, 30.376123, 23.824232>,  <28.012592, 30.500830, 23.925806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274652, 30.376123, 23.824232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.291006, 30.486458, 24.208366>,  <27.300817, 30.552658, 24.438847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.291006, 30.486458, 24.208366>,  <27.274652, 30.376123, 23.824232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291006, 30.486458, 24.208366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643692, 0.742379, -0.185830,
		-0.764192, -0.610563, 0.207905,
		0.040883, 0.275837, 0.960335,
		27.303270, 30.569208, 24.496468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555498, 30.534428, 23.981508>,  <27.274652, 30.376123, 23.824232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555498, 30.534428, 23.981508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.765776, 30.717922, 24.268063>,  <26.891943, 30.828020, 24.439995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.765776, 30.717922, 24.268063>,  <26.555498, 30.534428, 23.981508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765776, 30.717922, 24.268063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635947, 0.771253, -0.027205,
		-0.564993, -0.441281, 0.697176,
		0.525694, 0.458738, 0.716384,
		26.923485, 30.855543, 24.482977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973497, 30.825800, 24.339211>,  <26.555498, 30.534428, 23.981508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973497, 30.825800, 24.339211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.300201, 31.035923, 24.434673>,  <26.496223, 31.161997, 24.491951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.300201, 31.035923, 24.434673>,  <25.973497, 30.825800, 24.339211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300201, 31.035923, 24.434673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502793, 0.850902, -0.152204,
		-0.283026, 0.004320, 0.959103,
		0.816760, 0.525307, 0.238655,
		26.545229, 31.193516, 24.506269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766827, 31.276516, 24.796150>,  <25.973497, 30.825800, 24.339211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766827, 31.276516, 24.796150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.114431, 31.433197, 24.675232>,  <26.322994, 31.527206, 24.602682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.114431, 31.433197, 24.675232>,  <25.766827, 31.276516, 24.796150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114431, 31.433197, 24.675232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470421, 0.843449, -0.259417,
		0.153355, 0.367643, 0.917235,
		0.869014, 0.391704, -0.302294,
		26.375135, 31.550709, 24.584543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218559, 31.590908, 24.262180>,  <25.766827, 31.276516, 24.796150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218559, 31.590908, 24.262180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827169, 31.510857, 24.242027>,  <24.592337, 31.462826, 24.229935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.827169, 31.510857, 24.242027>,  <25.218559, 31.590908, 24.262180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827169, 31.510857, 24.242027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152972, -0.867211, 0.473862,
		-0.138527, 0.455954, 0.879157,
		-0.978473, -0.200130, -0.050384,
		24.533627, 31.450817, 24.226912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916430, 31.492565, 24.888615>,  <25.218559, 31.590908, 24.262180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916430, 31.492565, 24.888615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.689663, 31.291832, 24.627304>,  <24.553604, 31.171392, 24.470518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.689663, 31.291832, 24.627304>,  <24.916430, 31.492565, 24.888615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689663, 31.291832, 24.627304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083931, -0.824089, 0.560208,
		-0.819490, 0.262759, 0.509307,
		-0.566914, -0.501832, -0.653279,
		24.519588, 31.141283, 24.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.465675, 31.218546, 25.369709>,  <24.916430, 31.492565, 24.888615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.465675, 31.218546, 25.369709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.465239, 31.003693, 25.032310>,  <24.464975, 30.874781, 24.829872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.465239, 31.003693, 25.032310>,  <24.465675, 31.218546, 25.369709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465239, 31.003693, 25.032310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216252, -0.823664, 0.524225,
		-0.976337, -0.181834, 0.117058,
		-0.001094, -0.537135, -0.843496,
		24.464911, 30.842552, 24.779263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127741, 30.650892, 25.584827>,  <24.465675, 31.218546, 25.369709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127741, 30.650892, 25.584827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.316580, 30.554848, 25.245541>,  <24.429884, 30.497221, 25.041969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.316580, 30.554848, 25.245541>,  <24.127741, 30.650892, 25.584827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316580, 30.554848, 25.245541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160891, -0.922562, 0.350704,
		-0.866740, -0.302037, -0.396907,
		0.472097, -0.240111, -0.848216,
		24.458208, 30.482815, 24.991076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.797323, 30.056143, 25.475393>,  <24.127741, 30.650892, 25.584827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.797323, 30.056143, 25.475393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.128828, 30.026897, 25.253471>,  <24.327730, 30.009350, 25.120317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.128828, 30.026897, 25.253471>,  <23.797323, 30.056143, 25.475393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128828, 30.026897, 25.253471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168168, -0.913062, 0.371532,
		-0.533737, -0.401212, -0.744415,
		0.828761, -0.073114, -0.554806,
		24.377457, 30.004963, 25.087029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.699594, 29.357630, 25.079271>,  <23.797323, 30.056143, 25.475393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.699594, 29.357630, 25.079271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.085373, 29.463085, 25.071865>,  <24.316839, 29.526358, 25.067421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.085373, 29.463085, 25.071865>,  <23.699594, 29.357630, 25.079271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085373, 29.463085, 25.071865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225548, -0.784529, 0.577619,
		0.137755, -0.561257, -0.816097,
		0.964444, 0.263638, -0.018518,
		24.374706, 29.542177, 25.066309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930542, 28.722088, 24.914251>,  <23.699594, 29.357630, 25.079271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930542, 28.722088, 24.914251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.229530, 28.935658, 25.072346>,  <24.408922, 29.063799, 25.167202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.229530, 28.935658, 25.072346>,  <23.930542, 28.722088, 24.914251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229530, 28.935658, 25.072346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320500, -0.810998, 0.489450,
		0.581866, -0.239175, -0.777320,
		0.747470, 0.533926, 0.395237,
		24.453772, 29.095835, 25.190916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526072, 28.372725, 24.780066>,  <23.930542, 28.722088, 24.914251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526072, 28.372725, 24.780066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.623854, 28.608273, 25.088215>,  <24.682522, 28.749601, 25.273104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.623854, 28.608273, 25.088215>,  <24.526072, 28.372725, 24.780066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623854, 28.608273, 25.088215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414427, -0.781707, 0.466031,
		0.876637, 0.205340, -0.435135,
		0.244454, 0.588871, 0.770372,
		24.697189, 28.784933, 25.319326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167402, 28.144213, 24.979605>,  <24.526072, 28.372725, 24.780066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167402, 28.144213, 24.979605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.060068, 28.354374, 25.302578>,  <24.995668, 28.480471, 25.496363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.060068, 28.354374, 25.302578>,  <25.167402, 28.144213, 24.979605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060068, 28.354374, 25.302578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357193, -0.724158, 0.589923,
		0.894656, 0.446706, 0.006645,
		-0.268334, 0.525405, 0.807432,
		24.979568, 28.511995, 25.544807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779419, 28.307287, 25.334484>,  <25.167402, 28.144213, 24.979605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779419, 28.307287, 25.334484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.473055, 28.310707, 25.591640>,  <25.289236, 28.312759, 25.745935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.473055, 28.310707, 25.591640>,  <25.779419, 28.307287, 25.334484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473055, 28.310707, 25.591640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450770, -0.705862, 0.546412,
		0.458466, 0.708298, 0.536770,
		-0.765908, 0.008551, 0.642893,
		25.243282, 28.313272, 25.784508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062641, 28.424095, 25.977917>,  <25.779419, 28.307287, 25.334484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062641, 28.424095, 25.977917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.708462, 28.252811, 26.050156>,  <25.495955, 28.150042, 26.093498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.708462, 28.252811, 26.050156>,  <26.062641, 28.424095, 25.977917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708462, 28.252811, 26.050156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444957, -0.668971, 0.595392,
		-0.134140, 0.607547, 0.782875,
		-0.885449, -0.428211, 0.180597,
		25.442827, 28.124348, 26.104334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154154, 28.272194, 26.619617>,  <26.062641, 28.424095, 25.977917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154154, 28.272194, 26.619617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813187, 28.073425, 26.554562>,  <25.608606, 27.954165, 26.515528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813187, 28.073425, 26.554562>,  <26.154154, 28.272194, 26.619617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813187, 28.073425, 26.554562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283034, -0.700085, 0.655570,
		-0.439628, 0.512788, 0.737411,
		-0.852419, -0.496920, -0.162641,
		25.557461, 27.924349, 26.505770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876764, 28.097858, 27.214211>,  <26.154154, 28.272194, 26.619617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876764, 28.097858, 27.214211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.725107, 27.827599, 26.961308>,  <25.634113, 27.665443, 26.809566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.725107, 27.827599, 26.961308>,  <25.876764, 28.097858, 27.214211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725107, 27.827599, 26.961308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373556, -0.736878, 0.563443,
		-0.846585, -0.022557, 0.531775,
		-0.379143, -0.675650, -0.632256,
		25.611364, 27.624903, 26.771631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493652, 27.514557, 27.633707>,  <25.876764, 28.097858, 27.214211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493652, 27.514557, 27.633707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.591467, 27.368248, 27.274506>,  <25.650156, 27.280462, 27.058985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.591467, 27.368248, 27.274506>,  <25.493652, 27.514557, 27.633707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591467, 27.368248, 27.274506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405174, -0.802845, 0.437349,
		-0.880929, -0.470795, -0.048123,
		0.244537, -0.365775, -0.898004,
		25.664827, 27.258516, 27.005104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236391, 26.880503, 27.684761>,  <25.493652, 27.514557, 27.633707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236391, 26.880503, 27.684761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.522232, 26.882771, 27.404957>,  <25.693737, 26.884130, 27.237074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.522232, 26.882771, 27.404957>,  <25.236391, 26.880503, 27.684761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522232, 26.882771, 27.404957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307598, -0.900652, 0.306935,
		-0.628274, -0.434504, -0.645352,
		0.714602, 0.005669, -0.699508,
		25.736612, 26.884472, 27.195105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156221, 26.246983, 27.457865>,  <25.236391, 26.880503, 27.684761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156221, 26.246983, 27.457865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.526743, 26.363991, 27.362873>,  <25.749056, 26.434196, 27.305878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.526743, 26.363991, 27.362873>,  <25.156221, 26.246983, 27.457865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526743, 26.363991, 27.362873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365099, -0.852585, 0.373899,
		-0.093097, -0.433047, -0.896551,
		0.926302, 0.292522, -0.237478,
		25.804634, 26.451748, 27.291630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470736, 25.675220, 27.333328>,  <25.156221, 26.246983, 27.457865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470736, 25.675220, 27.333328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.808771, 25.888878, 27.342396>,  <26.011593, 26.017073, 27.347836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.808771, 25.888878, 27.342396>,  <25.470736, 25.675220, 27.333328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808771, 25.888878, 27.342396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466526, -0.757487, 0.456692,
		0.261111, -0.375370, -0.889336,
		0.845088, 0.534146, 0.022669,
		26.062298, 26.049122, 27.349195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061197, 25.311239, 26.911545>,  <25.470736, 25.675220, 27.333328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061197, 25.311239, 26.911545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.228809, 25.548168, 27.186810>,  <26.329376, 25.690327, 27.351969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.228809, 25.548168, 27.186810>,  <26.061197, 25.311239, 26.911545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228809, 25.548168, 27.186810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492511, -0.784999, 0.375779,
		0.762789, 0.181465, -0.620664,
		0.419030, 0.592323, 0.688162,
		26.354519, 25.725864, 27.393259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.874605, 25.022266, 26.981327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.772490, 25.232975, 27.305634>,  <26.711220, 25.359400, 27.500217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.772490, 25.232975, 27.305634>,  <26.874605, 25.022266, 26.981327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772490, 25.232975, 27.305634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603814, -0.568064, 0.559206,
		0.755140, 0.632311, -0.173051,
		-0.255287, 0.526769, 0.810766,
		26.695904, 25.391006, 27.548864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500185, 25.251862, 27.351078>,  <26.874605, 25.022266, 26.981327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500185, 25.251862, 27.351078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.186150, 25.232815, 27.598099>,  <26.997728, 25.221386, 27.746311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.186150, 25.232815, 27.598099>,  <27.500185, 25.251862, 27.351078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186150, 25.232815, 27.598099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563963, -0.467198, 0.680935,
		0.256094, 0.882870, 0.393646,
		-0.785087, -0.047618, 0.617552,
		26.950623, 25.218529, 27.783365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858559, 25.390127, 27.983627>,  <27.500185, 25.251862, 27.351078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858559, 25.390127, 27.983627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495125, 25.255749, 28.082912>,  <27.277063, 25.175121, 28.142485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495125, 25.255749, 28.082912>,  <27.858559, 25.390127, 27.983627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495125, 25.255749, 28.082912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393081, -0.486709, 0.780130,
		-0.141273, 0.806384, 0.574271,
		-0.908586, -0.335947, 0.248215,
		27.222549, 25.154964, 28.157377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753820, 25.528202, 28.805695>,  <27.858559, 25.390127, 27.983627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753820, 25.528202, 28.805695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522825, 25.225258, 28.683765>,  <27.384228, 25.043491, 28.610607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.522825, 25.225258, 28.683765>,  <27.753820, 25.528202, 28.805695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522825, 25.225258, 28.683765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293991, -0.541242, 0.787799,
		-0.761630, 0.365328, 0.535216,
		-0.577486, -0.757359, -0.304823,
		27.349579, 24.998051, 28.592319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516869, 25.350990, 29.371693>,  <27.753820, 25.528202, 28.805695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516869, 25.350990, 29.371693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.386620, 25.020657, 29.187534>,  <27.308470, 24.822456, 29.077040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.386620, 25.020657, 29.187534>,  <27.516869, 25.350990, 29.371693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386620, 25.020657, 29.187534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322236, -0.554713, 0.767110,
		-0.888894, 0.101434, 0.446742,
		-0.325625, -0.825836, -0.460396,
		27.288933, 24.772905, 29.049416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295107, 24.914001, 29.860733>,  <27.516869, 25.350990, 29.371693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295107, 24.914001, 29.860733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.347147, 24.651234, 29.563671>,  <27.378370, 24.493574, 29.385435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.347147, 24.651234, 29.563671>,  <27.295107, 24.914001, 29.860733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347147, 24.651234, 29.563671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202741, -0.715567, 0.668475,
		-0.970552, -0.237533, 0.040090,
		0.130098, -0.656918, -0.742653,
		27.386177, 24.454159, 29.340876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037899, 24.399084, 30.176313>,  <27.295107, 24.914001, 29.860733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037899, 24.399084, 30.176313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.266937, 24.244190, 29.887264>,  <27.404360, 24.151253, 29.713835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.266937, 24.244190, 29.887264>,  <27.037899, 24.399084, 30.176313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266937, 24.244190, 29.887264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216754, -0.778552, 0.588961,
		-0.790662, -0.493870, -0.361864,
		0.572600, -0.387234, -0.722619,
		27.438717, 24.128019, 29.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789064, 23.735765, 30.043114>,  <27.037899, 24.399084, 30.176313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789064, 23.735765, 30.043114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.171589, 23.729160, 29.926361>,  <27.401104, 23.725197, 29.856310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.171589, 23.729160, 29.926361>,  <26.789064, 23.735765, 30.043114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171589, 23.729160, 29.926361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143869, -0.842556, 0.519039,
		-0.254497, -0.538356, -0.803371,
		0.956312, -0.016514, -0.291881,
		27.458483, 23.724207, 29.838797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864828, 23.108215, 29.661015>,  <26.789064, 23.735765, 30.043114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864828, 23.108215, 29.661015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223579, 23.242596, 29.776081>,  <27.438829, 23.323223, 29.845121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.223579, 23.242596, 29.776081>,  <26.864828, 23.108215, 29.661015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223579, 23.242596, 29.776081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196627, -0.885468, 0.421052,
		0.396169, -0.321069, -0.860212,
		0.896877, 0.335949, 0.287664,
		27.492641, 23.343380, 29.862381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281111, 22.566122, 29.535685>,  <26.864828, 23.108215, 29.661015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281111, 22.566122, 29.535685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.489569, 22.796650, 29.787483>,  <27.614643, 22.934967, 29.938562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.489569, 22.796650, 29.787483>,  <27.281111, 22.566122, 29.535685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489569, 22.796650, 29.787483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172376, -0.793450, 0.583716,
		0.835881, -0.195689, -0.512844,
		0.521143, 0.576319, 0.629497,
		27.645912, 22.969545, 29.976332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042629, 22.270096, 29.624197>,  <27.281111, 22.566122, 29.535685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042629, 22.270096, 29.624197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994045, 22.494301, 29.951874>,  <27.964895, 22.628824, 30.148479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994045, 22.494301, 29.951874>,  <28.042629, 22.270096, 29.624197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994045, 22.494301, 29.951874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378972, -0.736596, 0.560185,
		0.917403, 0.378490, -0.122952,
		-0.121458, 0.560511, 0.819192,
		27.957607, 22.662455, 30.197632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528225, 22.030678, 30.025845>,  <28.042629, 22.270096, 29.624197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528225, 22.030678, 30.025845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.303747, 22.201462, 30.309467>,  <28.169060, 22.303932, 30.479641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.303747, 22.201462, 30.309467>,  <28.528225, 22.030678, 30.025845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303747, 22.201462, 30.309467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172221, -0.777690, 0.604597,
		0.809566, 0.461413, 0.362905,
		-0.561197, 0.426962, 0.709057,
		28.135387, 22.329550, 30.522184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978306, 21.895550, 30.658134>,  <28.528225, 22.030678, 30.025845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978306, 21.895550, 30.658134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.606853, 21.978043, 30.781494>,  <28.383982, 22.027538, 30.855511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.606853, 21.978043, 30.781494>,  <28.978306, 21.895550, 30.658134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606853, 21.978043, 30.781494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075594, -0.708646, 0.701503,
		0.363219, 0.674752, 0.642481,
		-0.928632, 0.206231, 0.308400,
		28.328264, 22.039911, 30.874014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042124, 22.033165, 31.404274>,  <28.978306, 21.895550, 30.658134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042124, 22.033165, 31.404274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.651978, 21.980064, 31.333805>,  <28.417889, 21.948204, 31.291523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.651978, 21.980064, 31.333805>,  <29.042124, 22.033165, 31.404274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651978, 21.980064, 31.333805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073094, -0.559028, 0.825921,
		-0.208126, 0.818453, 0.535554,
		-0.975367, -0.132749, -0.176172,
		28.359367, 21.940239, 31.280954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659063, 22.252779, 32.012447>,  <29.042124, 22.033165, 31.404274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659063, 22.252779, 32.012447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462761, 21.970745, 31.807697>,  <28.344978, 21.801525, 31.684847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.462761, 21.970745, 31.807697>,  <28.659063, 22.252779, 32.012447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462761, 21.970745, 31.807697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327273, -0.395295, 0.858274,
		-0.807496, 0.588727, -0.036761,
		-0.490758, -0.705083, -0.511873,
		28.315533, 21.759220, 31.654135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984592, 22.144724, 32.402020>,  <28.659063, 22.252779, 32.012447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984592, 22.144724, 32.402020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.998491, 21.826206, 32.160454>,  <28.006830, 21.635096, 32.015514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.998491, 21.826206, 32.160454>,  <27.984592, 22.144724, 32.402020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998491, 21.826206, 32.160454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318988, -0.581505, 0.748397,
		-0.947122, 0.166637, -0.274212,
		0.034745, -0.796294, -0.603912,
		28.008915, 21.587318, 31.979280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452662, 21.681995, 32.568851>,  <27.984592, 22.144724, 32.402020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452662, 21.681995, 32.568851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.693932, 21.442661, 32.357883>,  <27.838694, 21.299061, 32.231304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.693932, 21.442661, 32.357883>,  <27.452662, 21.681995, 32.568851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693932, 21.442661, 32.357883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038932, -0.682550, 0.729801,
		-0.796659, -0.419664, -0.434991,
		0.603175, -0.598338, -0.527421,
		27.874884, 21.263161, 32.199657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240442, 21.090811, 32.834373>,  <27.452662, 21.681995, 32.568851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240442, 21.090811, 32.834373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578300, 20.956177, 32.667866>,  <27.781015, 20.875397, 32.567963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578300, 20.956177, 32.667866>,  <27.240442, 21.090811, 32.834373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578300, 20.956177, 32.667866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121870, -0.636283, 0.761769,
		-0.521267, -0.694157, -0.496415,
		0.844647, -0.336586, -0.416270,
		27.831694, 20.855200, 32.542984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263746, 20.350016, 32.898384>,  <27.240442, 21.090811, 32.834373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263746, 20.350016, 32.898384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.652794, 20.423668, 32.841660>,  <27.886223, 20.467859, 32.807625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.652794, 20.423668, 32.841660>,  <27.263746, 20.350016, 32.898384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652794, 20.423668, 32.841660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230456, -0.685185, 0.690950,
		0.030057, -0.704712, -0.708857,
		0.972618, 0.184128, -0.141810,
		27.944580, 20.478907, 32.799118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538378, 19.737099, 32.959473>,  <27.263746, 20.350016, 32.898384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538378, 19.737099, 32.959473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841101, 19.982948, 33.048447>,  <28.022734, 20.130459, 33.101830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.841101, 19.982948, 33.048447>,  <27.538378, 19.737099, 32.959473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841101, 19.982948, 33.048447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244364, -0.581672, 0.775851,
		0.606241, -0.532815, -0.590406,
		0.756808, 0.614626, 0.222433,
		28.068144, 20.167336, 33.115177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133682, 19.269669, 33.118393>,  <27.538378, 19.737099, 32.959473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133682, 19.269669, 33.118393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210279, 19.619938, 33.295719>,  <28.256237, 19.830099, 33.402115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210279, 19.619938, 33.295719>,  <28.133682, 19.269669, 33.118393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210279, 19.619938, 33.295719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327486, -0.482794, 0.812196,
		0.925248, -0.010349, -0.379222,
		0.191491, 0.875673, 0.443315,
		28.267727, 19.882639, 33.428715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683748, 19.081007, 33.589943>,  <28.133682, 19.269669, 33.118393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683748, 19.081007, 33.589943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578476, 19.445271, 33.717342>,  <28.515312, 19.663828, 33.793781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578476, 19.445271, 33.717342>,  <28.683748, 19.081007, 33.589943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578476, 19.445271, 33.717342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188266, -0.275310, 0.942741,
		0.946199, 0.308074, -0.098990,
		-0.263181, 0.910657, 0.318497,
		28.499521, 19.718468, 33.812893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192879, 19.424543, 34.092609>,  <28.683748, 19.081007, 33.589943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192879, 19.424543, 34.092609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815510, 19.546753, 34.144165>,  <28.589088, 19.620079, 34.175098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.815510, 19.546753, 34.144165>,  <29.192879, 19.424543, 34.092609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815510, 19.546753, 34.144165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039568, -0.282192, 0.958541,
		0.329228, 0.909408, 0.254137,
		-0.943421, 0.305523, 0.128889,
		28.532484, 19.638411, 34.182831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932743, 19.768847, 34.177261>,  <29.192879, 19.424543, 34.092609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932743, 19.768847, 34.177261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250528, 19.910580, 34.374554>,  <30.441198, 19.995621, 34.492928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250528, 19.910580, 34.374554>,  <29.932743, 19.768847, 34.177261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250528, 19.910580, 34.374554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129105, 0.695051, -0.707273,
		-0.593433, 0.625580, 0.506445,
		0.794461, 0.354335, 0.493232,
		30.488867, 20.016880, 34.522522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914862, 20.458258, 34.267593>,  <29.932743, 19.768847, 34.177261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914862, 20.458258, 34.267593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297260, 20.340931, 34.265278>,  <30.526699, 20.270535, 34.263889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297260, 20.340931, 34.265278>,  <29.914862, 20.458258, 34.267593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297260, 20.340931, 34.265278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208397, 0.692839, -0.690322,
		0.206493, 0.658740, 0.723479,
		0.955997, -0.293318, -0.005787,
		30.584059, 20.252935, 34.263542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286999, 21.043037, 34.247059>,  <29.914862, 20.458258, 34.267593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286999, 21.043037, 34.247059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528767, 20.766258, 34.089130>,  <30.673828, 20.600191, 33.994373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528767, 20.766258, 34.089130>,  <30.286999, 21.043037, 34.247059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528767, 20.766258, 34.089130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256806, 0.638363, -0.725633,
		0.754139, 0.337196, 0.563537,
		0.604422, -0.691948, -0.394820,
		30.710093, 20.558674, 33.970684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787344, 21.466394, 34.043015>,  <30.286999, 21.043037, 34.247059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787344, 21.466394, 34.043015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847345, 21.122368, 33.847961>,  <30.883347, 20.915953, 33.730930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847345, 21.122368, 33.847961>,  <30.787344, 21.466394, 34.043015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847345, 21.122368, 33.847961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296420, 0.509645, -0.807711,
		0.943204, -0.023385, 0.331389,
		0.150002, -0.860067, -0.487631,
		30.892345, 20.864347, 33.701672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358461, 21.540501, 33.725899>,  <30.787344, 21.466394, 34.043015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358461, 21.540501, 33.725899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205898, 21.256844, 33.488701>,  <31.114361, 21.086649, 33.346382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205898, 21.256844, 33.488701>,  <31.358461, 21.540501, 33.725899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205898, 21.256844, 33.488701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335596, 0.491498, -0.803620,
		0.861338, -0.505513, 0.050525,
		-0.381408, -0.709145, -0.592994,
		31.091476, 21.044100, 33.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844698, 21.562201, 33.195663>,  <31.358461, 21.540501, 33.725899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844698, 21.562201, 33.195663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523623, 21.381336, 33.040104>,  <31.330978, 21.272818, 32.946766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.523623, 21.381336, 33.040104>,  <31.844698, 21.562201, 33.195663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523623, 21.381336, 33.040104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162104, 0.462127, -0.871872,
		0.573949, -0.762882, -0.297646,
		-0.802686, -0.452160, -0.388904,
		31.282816, 21.245687, 32.923431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068558, 21.360151, 32.499207>,  <31.844698, 21.562201, 33.195663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068558, 21.360151, 32.499207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668938, 21.377014, 32.494743>,  <31.429167, 21.387133, 32.492065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668938, 21.377014, 32.494743>,  <32.068558, 21.360151, 32.499207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668938, 21.377014, 32.494743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026900, 0.394263, -0.918604,
		-0.034327, -0.918030, -0.395022,
		-0.999049, 0.042159, -0.011161,
		31.369223, 21.389662, 32.491394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982288, 21.220867, 31.792473>,  <32.068558, 21.360151, 32.499207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982288, 21.220867, 31.792473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639256, 21.372345, 31.931694>,  <31.433435, 21.463232, 32.015228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639256, 21.372345, 31.931694>,  <31.982288, 21.220867, 31.792473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639256, 21.372345, 31.931694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075647, 0.576468, -0.813611,
		-0.508753, -0.724068, -0.465721,
		-0.857582, 0.378696, 0.348054,
		31.381981, 21.485954, 32.036110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612637, 21.162270, 31.237871>,  <31.982288, 21.220867, 31.792473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612637, 21.162270, 31.237871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.385963, 21.415726, 31.448536>,  <31.249960, 21.567799, 31.574934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.385963, 21.415726, 31.448536>,  <31.612637, 21.162270, 31.237871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385963, 21.415726, 31.448536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117541, 0.570493, -0.812848,
		-0.815510, -0.522530, -0.248809,
		-0.566681, 0.633641, 0.526661,
		31.215960, 21.605818, 31.606535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949797, 21.284595, 30.962076>,  <31.612637, 21.162270, 31.237871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949797, 21.284595, 30.962076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003731, 21.626251, 31.162979>,  <31.036091, 21.831245, 31.283522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003731, 21.626251, 31.162979>,  <30.949797, 21.284595, 30.962076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003731, 21.626251, 31.162979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112199, 0.516788, -0.848729,
		-0.984495, 0.058087, 0.165515,
		0.134836, 0.854141, 0.502258,
		31.044182, 21.882494, 31.313656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361094, 21.686026, 30.853943>,  <30.949797, 21.284595, 30.962076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361094, 21.686026, 30.853943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607115, 21.968292, 30.994652>,  <30.754726, 22.137653, 31.079077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607115, 21.968292, 30.994652>,  <30.361094, 21.686026, 30.853943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607115, 21.968292, 30.994652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282361, 0.613666, -0.737351,
		-0.736195, 0.354183, 0.576690,
		0.615052, 0.705669, 0.351770,
		30.791630, 22.179993, 31.100183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953829, 22.234320, 30.919451>,  <30.361094, 21.686026, 30.853943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953829, 22.234320, 30.919451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327087, 22.376343, 30.896915>,  <30.551043, 22.461557, 30.883394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327087, 22.376343, 30.896915>,  <29.953829, 22.234320, 30.919451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327087, 22.376343, 30.896915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302021, 0.689266, -0.658556,
		-0.194994, 0.631543, 0.750420,
		0.933146, 0.355057, -0.056337,
		30.607031, 22.482861, 30.880014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805483, 22.872179, 30.998966>,  <29.953829, 22.234320, 30.919451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805483, 22.872179, 30.998966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170849, 22.861763, 30.836487>,  <30.390068, 22.855513, 30.738998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.170849, 22.861763, 30.836487>,  <29.805483, 22.872179, 30.998966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170849, 22.861763, 30.836487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263055, 0.723773, -0.637929,
		0.310608, 0.689546, 0.654254,
		0.913414, -0.026041, -0.406199,
		30.444874, 22.853951, 30.714626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027567, 23.585745, 30.921616>,  <29.805483, 22.872179, 30.998966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027567, 23.585745, 30.921616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260853, 23.393822, 30.659428>,  <30.400826, 23.278667, 30.502115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260853, 23.393822, 30.659428>,  <30.027567, 23.585745, 30.921616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260853, 23.393822, 30.659428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, 0.793292, -0.608064,
		0.811734, 0.374795, 0.447903,
		0.583217, -0.479809, -0.655471,
		30.435818, 23.249880, 30.462786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602404, 24.011660, 30.678629>,  <30.027567, 23.585745, 30.921616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602404, 24.011660, 30.678629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565254, 23.737904, 30.389359>,  <30.542965, 23.573650, 30.215796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565254, 23.737904, 30.389359>,  <30.602404, 24.011660, 30.678629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565254, 23.737904, 30.389359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108473, 0.728947, -0.675922,
		0.989752, 0.015671, -0.141936,
		-0.092872, -0.684391, -0.723176,
		30.537394, 23.532587, 30.172405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086483, 24.247650, 30.134609>,  <30.602404, 24.011660, 30.678629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086483, 24.247650, 30.134609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812134, 24.003433, 29.976212>,  <30.647524, 23.856903, 29.881172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.812134, 24.003433, 29.976212>,  <31.086483, 24.247650, 30.134609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812134, 24.003433, 29.976212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026349, 0.564638, -0.824918,
		0.727243, -0.555356, -0.403358,
		-0.685874, -0.610544, -0.395995,
		30.606371, 23.820271, 29.857412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242420, 24.197447, 29.399864>,  <31.086483, 24.247650, 30.134609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242420, 24.197447, 29.399864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865738, 24.063038, 29.393211>,  <30.639729, 23.982393, 29.389219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865738, 24.063038, 29.393211>,  <31.242420, 24.197447, 29.399864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865738, 24.063038, 29.393211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155478, 0.478508, -0.864209,
		0.298351, -0.811246, -0.502859,
		-0.941708, -0.336021, -0.016632,
		30.583225, 23.962231, 29.388222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089727, 23.828678, 28.806591>,  <31.242420, 24.197447, 29.399864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089727, 23.828678, 28.806591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737570, 23.968018, 28.935314>,  <30.526276, 24.051620, 29.012548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737570, 23.968018, 28.935314>,  <31.089727, 23.828678, 28.806591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737570, 23.968018, 28.935314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, 0.328040, -0.921682,
		-0.426632, -0.878091, -0.216661,
		-0.880394, 0.348348, 0.321808,
		30.473452, 24.072521, 29.031857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532755, 23.554028, 28.281137>,  <31.089727, 23.828678, 28.806591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532755, 23.554028, 28.281137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.372509, 23.861282, 28.480927>,  <30.276361, 24.045635, 28.600800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.372509, 23.861282, 28.480927>,  <30.532755, 23.554028, 28.281137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372509, 23.861282, 28.480927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361484, 0.368406, -0.856508,
		-0.841924, -0.523682, 0.130080,
		-0.400615, 0.768137, 0.499473,
		30.252325, 24.091722, 28.630768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951361, 23.631140, 27.962873>,  <30.532755, 23.554028, 28.281137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951361, 23.631140, 27.962873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.978865, 23.976742, 28.162380>,  <29.995367, 24.184103, 28.282084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.978865, 23.976742, 28.162380>,  <29.951361, 23.631140, 27.962873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978865, 23.976742, 28.162380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372689, 0.485999, -0.790512,
		-0.925406, -0.131531, 0.355421,
		0.068758, 0.864005, 0.498766,
		29.999493, 24.235943, 28.312010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352392, 24.035412, 27.779585>,  <29.951361, 23.631140, 27.962873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352392, 24.035412, 27.779585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602562, 24.306946, 27.933479>,  <29.752665, 24.469866, 28.025816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602562, 24.306946, 27.933479>,  <29.352392, 24.035412, 27.779585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602562, 24.306946, 27.933479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303745, 0.665991, -0.681319,
		-0.718736, 0.309253, 0.622721,
		0.625427, 0.678837, 0.384737,
		29.790190, 24.510597, 28.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.020027, 32.511051, 17.286880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.943111, 32.123341, 17.225529>,  <21.896961, 31.890715, 17.188717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.943111, 32.123341, 17.225529>,  <22.020027, 32.511051, 17.286880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943111, 32.123341, 17.225529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811406, 0.069132, 0.580380,
		-0.551946, 0.236054, -0.799771,
		-0.192291, -0.969278, -0.153379,
		21.885424, 31.832558, 17.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.380505, 32.586620, 17.215872>,  <22.020027, 32.511051, 17.286880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.380505, 32.586620, 17.215872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.436489, 32.192802, 17.257984>,  <21.470079, 31.956512, 17.283251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.436489, 32.192802, 17.257984>,  <21.380505, 32.586620, 17.215872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.436489, 32.192802, 17.257984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825015, -0.057162, 0.562212,
		-0.547504, -0.165545, -0.820265,
		0.139960, -0.984544, 0.105281,
		21.478477, 31.897440, 17.289568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.741970, 32.444916, 17.114241>,  <21.380505, 32.586620, 17.215872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.741970, 32.444916, 17.114241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.921379, 32.136047, 17.294273>,  <21.029024, 31.950726, 17.402294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.921379, 32.136047, 17.294273>,  <20.741970, 32.444916, 17.114241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.921379, 32.136047, 17.294273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754416, -0.057055, 0.653912,
		-0.479255, -0.632843, -0.608132,
		0.448521, -0.772175, 0.450083,
		21.055935, 31.904394, 17.429298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250063, 32.012184, 17.172594>,  <20.741970, 32.444916, 17.114241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250063, 32.012184, 17.172594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.532343, 31.903511, 17.434334>,  <20.701710, 31.838306, 17.591377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.532343, 31.903511, 17.434334>,  <20.250063, 32.012184, 17.172594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532343, 31.903511, 17.434334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707896, -0.231877, 0.667170,
		-0.029531, -0.934034, -0.355960,
		0.705699, -0.271685, 0.654352,
		20.744053, 31.822004, 17.630640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073524, 31.313189, 17.472593>,  <20.250063, 32.012184, 17.172594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073524, 31.313189, 17.472593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.310383, 31.514553, 17.724289>,  <20.452497, 31.635372, 17.875307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.310383, 31.514553, 17.724289>,  <20.073524, 31.313189, 17.472593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.310383, 31.514553, 17.724289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592378, -0.257443, 0.763420,
		0.546308, -0.824803, 0.145767,
		0.592145, 0.503412, 0.629239,
		20.488026, 31.665577, 17.913061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.098225, 30.795485, 17.995962>,  <20.073524, 31.313189, 17.472593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.098225, 30.795485, 17.995962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195450, 31.154091, 18.144115>,  <20.253784, 31.369255, 18.233007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195450, 31.154091, 18.144115>,  <20.098225, 30.795485, 17.995962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195450, 31.154091, 18.144115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459741, -0.229754, 0.857818,
		0.854143, -0.378783, 0.356320,
		0.243061, 0.896514, 0.370384,
		20.268368, 31.423044, 18.255230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185074, 30.751457, 18.739796>,  <20.098225, 30.795485, 17.995962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185074, 30.751457, 18.739796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.183039, 31.149689, 18.702274>,  <20.181818, 31.388628, 18.679762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.183039, 31.149689, 18.702274>,  <20.185074, 30.751457, 18.739796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183039, 31.149689, 18.702274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264991, 0.089108, 0.960125,
		0.964237, 0.029744, 0.263366,
		-0.005090, 0.995578, -0.093804,
		20.181511, 31.448362, 18.674133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645245, 31.026146, 19.260298>,  <20.185074, 30.751457, 18.739796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645245, 31.026146, 19.260298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.366323, 31.300335, 19.176495>,  <20.198971, 31.464849, 19.126213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.366323, 31.300335, 19.176495>,  <20.645245, 31.026146, 19.260298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366323, 31.300335, 19.176495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234293, 0.058263, 0.970418,
		0.677404, 0.725762, 0.119975,
		-0.697303, 0.685474, -0.209509,
		20.157133, 31.505978, 19.113642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.805243, 31.586514, 19.701256>,  <20.645245, 31.026146, 19.260298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.805243, 31.586514, 19.701256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.422354, 31.642132, 19.599751>,  <20.192621, 31.675503, 19.538847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.422354, 31.642132, 19.599751>,  <20.805243, 31.586514, 19.701256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422354, 31.642132, 19.599751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242685, 0.091846, 0.965748,
		0.157589, 0.986018, -0.054172,
		-0.957220, 0.139045, -0.253765,
		20.135187, 31.683846, 19.523621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580183, 32.239445, 20.005949>,  <20.805243, 31.586514, 19.701256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580183, 32.239445, 20.005949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225416, 32.073524, 19.924644>,  <20.012556, 31.973972, 19.875862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225416, 32.073524, 19.924644>,  <20.580183, 32.239445, 20.005949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.225416, 32.073524, 19.924644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362498, 0.352275, 0.862843,
		-0.286303, 0.838954, -0.462803,
		-0.886919, -0.414799, -0.203262,
		19.959341, 31.949085, 19.863667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079054, 32.720188, 20.043247>,  <20.580183, 32.239445, 20.005949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079054, 32.720188, 20.043247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.864883, 32.384689, 20.082886>,  <19.736382, 32.183388, 20.106668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.864883, 32.384689, 20.082886>,  <20.079054, 32.720188, 20.043247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864883, 32.384689, 20.082886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438178, 0.376171, 0.816392,
		-0.722025, 0.393695, -0.568933,
		-0.535425, -0.838749, 0.099097,
		19.704256, 32.133064, 20.112616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344675, 32.897114, 20.229410>,  <20.079054, 32.720188, 20.043247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344675, 32.897114, 20.229410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374760, 32.522797, 20.367180>,  <19.392811, 32.298206, 20.449842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.374760, 32.522797, 20.367180>,  <19.344675, 32.897114, 20.229410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.374760, 32.522797, 20.367180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210697, 0.322692, 0.922755,
		-0.974654, -0.141974, -0.172899,
		0.075214, -0.935796, 0.344426,
		19.397324, 32.242058, 20.470509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733286, 32.718636, 20.681009>,  <19.344675, 32.897114, 20.229410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733286, 32.718636, 20.681009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.008499, 32.443413, 20.773262>,  <19.173628, 32.278278, 20.828613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.008499, 32.443413, 20.773262>,  <18.733286, 32.718636, 20.681009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008499, 32.443413, 20.773262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005309, 0.313036, 0.949726,
		-0.725658, -0.654669, 0.211727,
		0.688035, -0.688053, 0.230633,
		19.214911, 32.236996, 20.842451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466839, 32.440460, 21.241278>,  <18.733286, 32.718636, 20.681009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466839, 32.440460, 21.241278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.857079, 32.353199, 21.251156>,  <19.091223, 32.300842, 21.257084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.857079, 32.353199, 21.251156>,  <18.466839, 32.440460, 21.241278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857079, 32.353199, 21.251156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049971, 0.330178, 0.942595,
		-0.213788, -0.918363, 0.333024,
		0.975601, -0.218157, 0.024696,
		19.149759, 32.287750, 21.258564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530573, 32.118614, 21.952789>,  <18.466839, 32.440460, 21.241278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530573, 32.118614, 21.952789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.887861, 32.242729, 21.822636>,  <19.102234, 32.317200, 21.744543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.887861, 32.242729, 21.822636>,  <18.530573, 32.118614, 21.952789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887861, 32.242729, 21.822636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229752, 0.307083, 0.923533,
		0.386481, -0.899679, 0.203004,
		0.893222, 0.310287, -0.325385,
		19.155828, 32.335815, 21.725019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978699, 31.896156, 22.383951>,  <18.530573, 32.118614, 21.952789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978699, 31.896156, 22.383951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.185684, 32.194920, 22.216927>,  <19.309875, 32.374176, 22.116713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.185684, 32.194920, 22.216927>,  <18.978699, 31.896156, 22.383951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185684, 32.194920, 22.216927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261122, 0.326868, 0.908280,
		0.814890, -0.579037, -0.025891,
		0.517465, 0.746909, -0.417561,
		19.340923, 32.418991, 22.091658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563917, 31.902071, 22.789324>,  <18.978699, 31.896156, 22.383951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563917, 31.902071, 22.789324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.553631, 32.260567, 22.612194>,  <19.547459, 32.475662, 22.505917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.553631, 32.260567, 22.612194>,  <19.563917, 31.902071, 22.789324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.553631, 32.260567, 22.612194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226961, 0.436640, 0.870537,
		0.973564, -0.078116, -0.214641,
		-0.025718, 0.896239, -0.442826,
		19.545916, 32.529438, 22.479345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035997, 32.331367, 23.093510>,  <19.563917, 31.902071, 22.789324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035997, 32.331367, 23.093510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.828793, 32.610016, 22.894962>,  <19.704470, 32.777206, 22.775833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.828793, 32.610016, 22.894962>,  <20.035997, 32.331367, 23.093510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828793, 32.610016, 22.894962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181072, 0.656447, 0.732318,
		0.835989, 0.289470, -0.466186,
		-0.518011, 0.696623, -0.496368,
		19.673389, 32.819004, 22.746052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487467, 32.994434, 22.904158>,  <20.035997, 32.331367, 23.093510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487467, 32.994434, 22.904158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.104675, 33.104542, 22.940853>,  <19.875000, 33.170605, 22.962870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.104675, 33.104542, 22.940853>,  <20.487467, 32.994434, 22.904158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104675, 33.104542, 22.940853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277640, 0.776893, 0.565114,
		0.084287, 0.566273, -0.819897,
		-0.956981, 0.275268, 0.091739,
		19.817581, 33.187122, 22.968374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516710, 33.773430, 22.736994>,  <20.487467, 32.994434, 22.904158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516710, 33.773430, 22.736994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151836, 33.724751, 22.893509>,  <19.932911, 33.695545, 22.987417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.151836, 33.724751, 22.893509>,  <20.516710, 33.773430, 22.736994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151836, 33.724751, 22.893509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120087, 0.833572, 0.539200,
		-0.391785, 0.538839, -0.745759,
		-0.912186, -0.121694, 0.391288,
		19.878180, 33.688244, 23.010895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172073, 34.439713, 22.745922>,  <20.516710, 33.773430, 22.736994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172073, 34.439713, 22.745922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.989254, 34.220310, 23.025993>,  <19.879562, 34.088669, 23.194036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.989254, 34.220310, 23.025993>,  <20.172073, 34.439713, 22.745922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989254, 34.220310, 23.025993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125548, 0.739541, 0.661299,
		-0.880537, 0.390151, -0.269140,
		-0.457047, -0.548508, 0.700176,
		19.852140, 34.055759, 23.236046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712317, 34.773251, 22.309303>,  <20.172073, 34.439713, 22.745922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712317, 34.773251, 22.309303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.727736, 35.169014, 22.253323>,  <19.736988, 35.406471, 22.219734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.727736, 35.169014, 22.253323>,  <19.712317, 34.773251, 22.309303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727736, 35.169014, 22.253323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543163, -0.138306, -0.828158,
		-0.838742, -0.044092, -0.542741,
		0.038549, 0.989408, -0.139952,
		19.739300, 35.465836, 22.211336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433699, 35.037933, 21.616814>,  <19.712317, 34.773251, 22.309303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433699, 35.037933, 21.616814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.722466, 35.276318, 21.757477>,  <19.895725, 35.419350, 21.841875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.722466, 35.276318, 21.757477>,  <19.433699, 35.037933, 21.616814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722466, 35.276318, 21.757477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455109, -0.026103, -0.890053,
		-0.521257, 0.802590, -0.290071,
		0.721919, 0.595960, 0.351660,
		19.939041, 35.455105, 21.862974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521011, 35.443920, 21.081440>,  <19.433699, 35.037933, 21.616814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521011, 35.443920, 21.081440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826906, 35.564720, 21.309116>,  <20.010443, 35.637199, 21.445723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826906, 35.564720, 21.309116>,  <19.521011, 35.443920, 21.081440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826906, 35.564720, 21.309116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638751, -0.239165, -0.731298,
		-0.084720, 0.922820, -0.375799,
		0.764735, 0.301998, 0.569190,
		20.056326, 35.655319, 21.479874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755028, 36.143627, 20.871374>,  <19.521011, 35.443920, 21.081440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755028, 36.143627, 20.871374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065405, 35.949001, 21.031956>,  <20.251631, 35.832226, 21.128305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065405, 35.949001, 21.031956>,  <19.755028, 36.143627, 20.871374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065405, 35.949001, 21.031956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496417, 0.078334, -0.864543,
		0.389211, 0.870124, 0.302323,
		0.775942, -0.486568, 0.401456,
		20.298187, 35.803032, 21.152391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.251598, 36.480885, 20.581520>,  <19.755028, 36.143627, 20.871374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.251598, 36.480885, 20.581520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.406815, 36.145084, 20.733654>,  <20.499945, 35.943604, 20.824934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.406815, 36.145084, 20.733654>,  <20.251598, 36.480885, 20.581520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406815, 36.145084, 20.733654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667249, -0.028775, -0.744278,
		0.635769, 0.542590, 0.548993,
		0.388041, -0.839505, 0.380337,
		20.523228, 35.893234, 20.847755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940147, 36.620419, 20.493076>,  <20.251598, 36.480885, 20.581520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940147, 36.620419, 20.493076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907154, 36.222958, 20.523689>,  <20.887358, 35.984482, 20.542057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907154, 36.222958, 20.523689>,  <20.940147, 36.620419, 20.493076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907154, 36.222958, 20.523689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771040, -0.112282, -0.626810,
		0.631423, 0.007310, 0.775404,
		-0.082482, -0.993650, 0.076534,
		20.882410, 35.924862, 20.546650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623947, 36.391369, 20.580225>,  <20.940147, 36.620419, 20.493076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623947, 36.391369, 20.580225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.403933, 36.080826, 20.457111>,  <21.271923, 35.894501, 20.383244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.403933, 36.080826, 20.457111>,  <21.623947, 36.391369, 20.580225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403933, 36.080826, 20.457111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714682, -0.246900, -0.654423,
		0.432073, -0.579926, 0.690651,
		-0.550039, -0.776355, -0.307784,
		21.238920, 35.847919, 20.364777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127146, 35.990368, 20.215534>,  <21.623947, 36.391369, 20.580225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127146, 35.990368, 20.215534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.771236, 35.845093, 20.104973>,  <21.557692, 35.757927, 20.038635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.771236, 35.845093, 20.104973>,  <22.127146, 35.990368, 20.215534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771236, 35.845093, 20.104973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366779, -0.208586, -0.906623,
		0.271617, -0.908069, 0.318802,
		-0.889774, -0.363185, -0.276405,
		21.504305, 35.736137, 20.022051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.300169, 35.318111, 20.055788>,  <22.127146, 35.990368, 20.215534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.300169, 35.318111, 20.055788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962822, 35.395840, 19.855400>,  <21.760414, 35.442478, 19.735168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962822, 35.395840, 19.855400>,  <22.300169, 35.318111, 20.055788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962822, 35.395840, 19.855400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395802, -0.405890, -0.823768,
		-0.363412, -0.893025, 0.265403,
		-0.843369, 0.194320, -0.500967,
		21.709812, 35.454136, 19.705111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.095371, 34.643570, 19.676334>,  <22.300169, 35.318111, 20.055788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.095371, 34.643570, 19.676334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916878, 34.939560, 19.475014>,  <21.809782, 35.117153, 19.354221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916878, 34.939560, 19.475014>,  <22.095371, 34.643570, 19.676334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916878, 34.939560, 19.475014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248954, -0.437556, -0.864041,
		-0.859591, -0.510863, 0.011033,
		-0.446234, 0.739975, -0.503300,
		21.783007, 35.161552, 19.324024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747614, 34.357807, 19.083977>,  <22.095371, 34.643570, 19.676334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747614, 34.357807, 19.083977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788076, 34.750290, 19.018242>,  <21.812353, 34.985779, 18.978802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.788076, 34.750290, 19.018242>,  <21.747614, 34.357807, 19.083977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788076, 34.750290, 19.018242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456111, -0.192539, -0.868845,
		-0.884155, 0.012934, -0.467014,
		0.101156, 0.981204, -0.164336,
		21.818422, 35.044651, 18.968941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450672, 34.417786, 18.531561>,  <21.747614, 34.357807, 19.083977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450672, 34.417786, 18.531561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680313, 34.744427, 18.555420>,  <21.818098, 34.940411, 18.569736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680313, 34.744427, 18.555420>,  <21.450672, 34.417786, 18.531561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680313, 34.744427, 18.555420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439895, -0.246177, -0.863649,
		-0.690578, 0.522063, -0.500552,
		0.574104, 0.816607, 0.059649,
		21.852545, 34.989410, 18.573315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.445284, 34.721992, 17.943384>,  <21.450672, 34.417786, 18.531561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.445284, 34.721992, 17.943384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792339, 34.840393, 18.103176>,  <22.000572, 34.911434, 18.199051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.792339, 34.840393, 18.103176>,  <21.445284, 34.721992, 17.943384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792339, 34.840393, 18.103176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481165, -0.297536, -0.824592,
		-0.125219, 0.907665, -0.400579,
		0.867640, 0.296000, 0.399480,
		22.052631, 34.929192, 18.223021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658855, 35.144379, 17.461954>,  <21.445284, 34.721992, 17.943384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658855, 35.144379, 17.461954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.951921, 35.000637, 17.693150>,  <22.127760, 34.914394, 17.831867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.951921, 35.000637, 17.693150>,  <21.658855, 35.144379, 17.461954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.951921, 35.000637, 17.693150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467008, -0.352323, -0.811032,
		0.495084, 0.864138, -0.090314,
		0.732663, -0.359352, 0.577989,
		22.171721, 34.892830, 17.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188383, 34.902325, 17.050076>,  <21.658855, 35.144379, 17.461954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188383, 34.902325, 17.050076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.331839, 34.771713, 17.399876>,  <22.417912, 34.693344, 17.609756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.331839, 34.771713, 17.399876>,  <22.188383, 34.902325, 17.050076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331839, 34.771713, 17.399876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640068, -0.595894, -0.484998,
		0.679478, 0.733681, -0.004709,
		0.358640, -0.326532, 0.874502,
		22.439430, 34.673752, 17.662226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.898787, 34.790577, 16.921429>,  <22.188383, 34.902325, 17.050076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.898787, 34.790577, 16.921429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776573, 34.582829, 17.240654>,  <22.703245, 34.458179, 17.432188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776573, 34.582829, 17.240654>,  <22.898787, 34.790577, 16.921429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.776573, 34.582829, 17.240654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479242, -0.808121, -0.342443,
		0.822785, 0.277837, 0.495814,
		-0.305534, -0.519372, 0.798061,
		22.684914, 34.427017, 17.480072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445457, 34.600788, 17.206293>,  <22.898787, 34.790577, 16.921429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445457, 34.600788, 17.206293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194771, 34.324322, 17.350246>,  <23.044359, 34.158443, 17.436619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194771, 34.324322, 17.350246>,  <23.445457, 34.600788, 17.206293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194771, 34.324322, 17.350246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550404, -0.719556, -0.423432,
		0.551620, -0.067289, 0.831377,
		-0.626714, -0.691167, 0.359886,
		23.006756, 34.116970, 17.458212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.889690, 34.064194, 17.336147>,  <23.445457, 34.600788, 17.206293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.889690, 34.064194, 17.336147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.535868, 33.877869, 17.326576>,  <23.323574, 33.766071, 17.320833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.535868, 33.877869, 17.326576>,  <23.889690, 34.064194, 17.336147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535868, 33.877869, 17.326576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453880, -0.847802, -0.274271,
		0.107473, -0.253469, 0.961355,
		-0.884558, -0.465816, -0.023929,
		23.270500, 33.738125, 17.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995472, 33.398438, 17.765650>,  <23.889690, 34.064194, 17.336147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995472, 33.398438, 17.765650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.662865, 33.370670, 17.545193>,  <23.463301, 33.354008, 17.412918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.662865, 33.370670, 17.545193>,  <23.995472, 33.398438, 17.765650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.662865, 33.370670, 17.545193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285437, -0.904556, -0.316707,
		-0.476551, -0.420664, 0.771972,
		-0.831519, -0.069423, -0.551141,
		23.413408, 33.349842, 17.379850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.625658, 32.924591, 17.955635>,  <23.995472, 33.398438, 17.765650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.625658, 32.924591, 17.955635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.488403, 32.975357, 17.583366>,  <23.406052, 33.005817, 17.360004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.488403, 32.975357, 17.583366>,  <23.625658, 32.924591, 17.955635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488403, 32.975357, 17.583366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234395, -0.947911, -0.215691,
		-0.909569, -0.292157, 0.295513,
		-0.343136, 0.126919, -0.930672,
		23.385464, 33.013432, 17.304165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.369190, 32.360119, 17.836502>,  <23.625658, 32.924591, 17.955635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.369190, 32.360119, 17.836502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396864, 32.503551, 17.464130>,  <23.413467, 32.589611, 17.240707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.396864, 32.503551, 17.464130>,  <23.369190, 32.360119, 17.836502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.396864, 32.503551, 17.464130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281124, -0.902355, -0.326687,
		-0.957174, -0.239104, -0.163236,
		0.069185, 0.358586, -0.930929,
		23.417620, 32.611126, 17.184851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<24.606647, 27.200592, 26.063065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898161, 27.438686, 26.198456>,  <25.073069, 27.581543, 26.279692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898161, 27.438686, 26.198456>,  <24.606647, 27.200592, 26.063065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898161, 27.438686, 26.198456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492680, 0.799118, -0.344496,
		-0.475541, 0.084302, 0.875645,
		0.728785, 0.595235, 0.338479,
		25.116796, 27.617256, 26.299999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211151, 27.764851, 26.323238>,  <24.606647, 27.200592, 26.063065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211151, 27.764851, 26.323238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590208, 27.876347, 26.260910>,  <24.817642, 27.943245, 26.223513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590208, 27.876347, 26.260910>,  <24.211151, 27.764851, 26.323238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590208, 27.876347, 26.260910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318191, 0.865495, -0.386876,
		0.027026, 0.416200, 0.908871,
		0.947641, 0.278739, -0.155822,
		24.874500, 27.959969, 26.214163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303377, 28.410637, 26.625568>,  <24.211151, 27.764851, 26.323238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303377, 28.410637, 26.625568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592325, 28.375175, 26.351250>,  <24.765694, 28.353899, 26.186659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592325, 28.375175, 26.351250>,  <24.303377, 28.410637, 26.625568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592325, 28.375175, 26.351250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313955, 0.841591, -0.439495,
		0.616125, 0.532789, 0.580108,
		0.722372, -0.088656, -0.685797,
		24.809036, 28.348579, 26.145510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591175, 29.061356, 26.653713>,  <24.303377, 28.410637, 26.625568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591175, 29.061356, 26.653713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689318, 28.892590, 26.304592>,  <24.748203, 28.791330, 26.095119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689318, 28.892590, 26.304592>,  <24.591175, 29.061356, 26.653713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689318, 28.892590, 26.304592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187228, 0.862751, -0.469688,
		0.951181, 0.278655, 0.132688,
		0.245357, -0.421915, -0.872804,
		24.762924, 28.766014, 26.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132231, 29.520422, 26.314573>,  <24.591175, 29.061356, 26.653713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132231, 29.520422, 26.314573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983097, 29.309669, 26.009052>,  <24.893618, 29.183218, 25.825739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983097, 29.309669, 26.009052>,  <25.132231, 29.520422, 26.314573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983097, 29.309669, 26.009052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048942, 0.833173, -0.550842,
		0.926607, -0.167989, -0.336421,
		-0.372832, -0.526880, -0.763802,
		24.871248, 29.151606, 25.779911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538338, 29.613039, 25.695833>,  <25.132231, 29.520422, 26.314573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538338, 29.613039, 25.695833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199877, 29.480923, 25.528530>,  <24.996801, 29.401653, 25.428148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199877, 29.480923, 25.528530>,  <25.538338, 29.613039, 25.695833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199877, 29.480923, 25.528530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100592, 0.869675, -0.483266,
		0.523364, -0.366843, -0.769101,
		-0.846151, -0.330289, -0.418255,
		24.946032, 29.381836, 25.403053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662783, 29.734688, 25.000605>,  <25.538338, 29.613039, 25.695833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662783, 29.734688, 25.000605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267469, 29.700172, 25.050968>,  <25.030281, 29.679464, 25.081186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267469, 29.700172, 25.050968>,  <25.662783, 29.734688, 25.000605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267469, 29.700172, 25.050968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140769, 0.834148, -0.533274,
		-0.059012, -0.544749, -0.836520,
		-0.988282, -0.086287, 0.125909,
		24.970985, 29.674286, 25.088741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480400, 29.894449, 24.362484>,  <25.662783, 29.734688, 25.000605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480400, 29.894449, 24.362484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162462, 29.959896, 24.596218>,  <24.971699, 29.999165, 24.736460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162462, 29.959896, 24.596218>,  <25.480400, 29.894449, 24.362484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162462, 29.959896, 24.596218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358003, 0.651074, -0.669280,
		-0.489953, -0.741169, -0.458928,
		-0.794846, 0.163618, 0.584336,
		24.924009, 30.008982, 24.771519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975290, 29.999371, 23.910971>,  <25.480400, 29.894449, 24.362484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975290, 29.999371, 23.910971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819313, 30.163128, 24.240902>,  <24.725727, 30.261383, 24.438860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819313, 30.163128, 24.240902>,  <24.975290, 29.999371, 23.910971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819313, 30.163128, 24.240902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391562, 0.737002, -0.550915,
		-0.833442, -0.537796, -0.127084,
		-0.389941, 0.409394, 0.824829,
		24.702332, 30.285946, 24.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252766, 30.184290, 23.677441>,  <24.975290, 29.999371, 23.910971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252766, 30.184290, 23.677441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319641, 30.377762, 24.021091>,  <24.359766, 30.493845, 24.227282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319641, 30.377762, 24.021091>,  <24.252766, 30.184290, 23.677441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319641, 30.377762, 24.021091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357735, 0.841769, -0.404290,
		-0.918735, -0.239747, 0.313764,
		0.167189, 0.483680, 0.859128,
		24.369799, 30.522865, 24.278830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.635921, 30.464674, 23.790539>,  <24.252766, 30.184290, 23.677441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.635921, 30.464674, 23.790539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.920540, 30.669205, 23.983307>,  <24.091311, 30.791924, 24.098967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.920540, 30.669205, 23.983307>,  <23.635921, 30.464674, 23.790539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.920540, 30.669205, 23.983307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318324, 0.846036, -0.427661,
		-0.626395, 0.150894, 0.764762,
		0.711547, 0.511326, 0.481919,
		24.134005, 30.822603, 24.127882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.383686, 31.040567, 23.837423>,  <23.635921, 30.464674, 23.790539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.383686, 31.040567, 23.837423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734394, 31.173248, 23.976707>,  <23.944818, 31.252857, 24.060278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734394, 31.173248, 23.976707>,  <23.383686, 31.040567, 23.837423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734394, 31.173248, 23.976707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139963, 0.868719, -0.475118,
		-0.460095, 0.367832, 0.808092,
		0.876768, 0.331702, 0.348211,
		23.997425, 31.272758, 24.081171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.203745, 31.760498, 24.067486>,  <23.383686, 31.040567, 23.837423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.203745, 31.760498, 24.067486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585636, 31.694477, 23.968491>,  <23.814772, 31.654865, 23.909094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585636, 31.694477, 23.968491>,  <23.203745, 31.760498, 24.067486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585636, 31.694477, 23.968491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012208, 0.809518, -0.586968,
		0.297225, 0.563417, 0.770856,
		0.954729, -0.165050, -0.247487,
		23.872055, 31.644962, 23.894245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.503796, 31.811497, 24.367439>,  <23.203745, 31.760498, 24.067486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.503796, 31.811497, 24.367439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221592, 31.781368, 24.085564>,  <22.052271, 31.763290, 23.916439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221592, 31.781368, 24.085564>,  <22.503796, 31.811497, 24.367439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221592, 31.781368, 24.085564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466175, 0.699615, -0.541498,
		0.533798, -0.710539, -0.458470,
		-0.705508, -0.075323, -0.704688,
		22.009939, 31.758772, 23.874157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041527, 32.443920, 24.512680>,  <22.503796, 31.811497, 24.367439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041527, 32.443920, 24.512680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807058, 32.544521, 24.820744>,  <21.666378, 32.604881, 25.005583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807058, 32.544521, 24.820744>,  <22.041527, 32.443920, 24.512680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807058, 32.544521, 24.820744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778861, -0.086851, 0.621155,
		0.223114, 0.963951, -0.144979,
		-0.586171, 0.251507, 0.770161,
		21.631207, 32.619972, 25.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380665, 32.985462, 24.913830>,  <22.041527, 32.443920, 24.512680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380665, 32.985462, 24.913830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135138, 32.797344, 25.167458>,  <21.987822, 32.684475, 25.319635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135138, 32.797344, 25.167458>,  <22.380665, 32.985462, 24.913830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135138, 32.797344, 25.167458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757954, -0.126491, 0.639927,
		-0.220751, 0.873396, 0.434106,
		-0.613820, -0.470296, 0.634071,
		21.950991, 32.656254, 25.357679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.836882, 32.805367, 25.445370>,  <22.380665, 32.985462, 24.913830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.836882, 32.805367, 25.445370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528307, 32.602104, 25.598557>,  <22.343163, 32.480148, 25.690470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528307, 32.602104, 25.598557>,  <22.836882, 32.805367, 25.445370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528307, 32.602104, 25.598557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577057, -0.305090, 0.757579,
		-0.268128, 0.805418, 0.528592,
		-0.771436, -0.508156, 0.382969,
		22.296877, 32.449657, 25.713448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819389, 32.975018, 26.160591>,  <22.836882, 32.805367, 25.445370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819389, 32.975018, 26.160591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616432, 32.634010, 26.110367>,  <22.494658, 32.429405, 26.080233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616432, 32.634010, 26.110367>,  <22.819389, 32.975018, 26.160591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.616432, 32.634010, 26.110367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599388, -0.453849, 0.659360,
		-0.619101, 0.259295, 0.741269,
		-0.507393, -0.852518, -0.125560,
		22.464214, 32.378254, 26.072699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702742, 32.668510, 26.865290>,  <22.819389, 32.975018, 26.160591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702742, 32.668510, 26.865290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670660, 32.376358, 26.593964>,  <22.651411, 32.201069, 26.431168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670660, 32.376358, 26.593964>,  <22.702742, 32.668510, 26.865290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670660, 32.376358, 26.593964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577798, -0.588582, 0.565439,
		-0.812230, -0.346580, 0.469218,
		-0.080203, -0.730379, -0.678317,
		22.646599, 32.157246, 26.390469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675787, 32.111855, 27.270119>,  <22.702742, 32.668510, 26.865290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675787, 32.111855, 27.270119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808773, 31.988461, 26.913624>,  <22.888565, 31.914425, 26.699726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.808773, 31.988461, 26.913624>,  <22.675787, 32.111855, 27.270119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808773, 31.988461, 26.913624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598328, -0.661482, 0.452157,
		-0.729019, -0.683580, -0.035348,
		0.332468, -0.308481, -0.891238,
		22.908514, 31.895916, 26.646252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.619478, 31.396618, 27.382889>,  <22.675787, 32.111855, 27.270119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.619478, 31.396618, 27.382889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875988, 31.474503, 27.086010>,  <23.029894, 31.521233, 26.907883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875988, 31.474503, 27.086010>,  <22.619478, 31.396618, 27.382889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875988, 31.474503, 27.086010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609348, -0.717079, 0.338367,
		-0.466330, -0.669243, -0.578490,
		0.641273, 0.194711, -0.742197,
		23.068369, 31.532915, 26.863350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.777620, 30.748535, 27.095875>,  <22.619478, 31.396618, 27.382889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.777620, 30.748535, 27.095875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063200, 31.001247, 26.975124>,  <23.234549, 31.152874, 26.902674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063200, 31.001247, 26.975124>,  <22.777620, 30.748535, 27.095875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063200, 31.001247, 26.975124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699868, -0.630697, 0.335272,
		0.021427, -0.450640, -0.892449,
		0.713951, 0.631780, -0.301874,
		23.277386, 31.190781, 26.884562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.374546, 30.333561, 26.972937>,  <22.777620, 30.748535, 27.095875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.374546, 30.333561, 26.972937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551733, 30.691036, 27.001495>,  <23.658045, 30.905521, 27.018631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551733, 30.691036, 27.001495>,  <23.374546, 30.333561, 26.972937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.551733, 30.691036, 27.001495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752406, -0.413878, 0.512435,
		0.487509, -0.173272, -0.855752,
		0.442968, 0.893690, 0.071399,
		23.684624, 30.959143, 27.022915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992411, 30.335243, 26.575043>,  <23.374546, 30.333561, 26.972937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992411, 30.335243, 26.575043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061630, 30.623672, 26.843403>,  <24.103163, 30.796730, 27.004419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061630, 30.623672, 26.843403>,  <23.992411, 30.335243, 26.575043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.061630, 30.623672, 26.843403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808720, -0.492826, 0.321083,
		0.562162, 0.487009, -0.668428,
		0.173048, 0.721072, 0.670901,
		24.113544, 30.839994, 27.044674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686939, 30.375874, 26.537252>,  <23.992411, 30.335243, 26.575043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686939, 30.375874, 26.537252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569653, 30.545696, 26.879894>,  <24.499279, 30.647591, 27.085480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569653, 30.545696, 26.879894>,  <24.686939, 30.375874, 26.537252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569653, 30.545696, 26.879894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764079, -0.434472, 0.476884,
		0.574636, 0.794345, -0.197001,
		-0.293219, 0.424559, 0.856605,
		24.481688, 30.673063, 27.136875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267857, 30.611694, 26.728434>,  <24.686939, 30.375874, 26.537252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267857, 30.611694, 26.728434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048100, 30.609550, 27.062653>,  <24.916246, 30.608265, 27.263184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048100, 30.609550, 27.062653>,  <25.267857, 30.611694, 26.728434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048100, 30.609550, 27.062653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767438, -0.398731, 0.502049,
		0.330469, 0.917052, 0.223172,
		-0.549390, -0.005359, 0.835549,
		24.883282, 30.607943, 27.313316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789690, 30.665707, 27.211508>,  <25.267857, 30.611694, 26.728434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789690, 30.665707, 27.211508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463644, 30.525444, 27.395954>,  <25.268017, 30.441286, 27.506622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463644, 30.525444, 27.395954>,  <25.789690, 30.665707, 27.211508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463644, 30.525444, 27.395954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568434, -0.637575, 0.519981,
		0.111661, 0.685958, 0.719022,
		-0.815116, -0.350655, 0.461114,
		25.219109, 30.420248, 27.534288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979626, 30.753216, 27.919262>,  <25.789690, 30.665707, 27.211508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979626, 30.753216, 27.919262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697439, 30.474113, 27.869530>,  <25.528128, 30.306652, 27.839689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697439, 30.474113, 27.869530>,  <25.979626, 30.753216, 27.919262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697439, 30.474113, 27.869530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541338, -0.643704, 0.540923,
		-0.457464, 0.314296, 0.831832,
		-0.705464, -0.697755, -0.124331,
		25.485800, 30.264788, 27.832230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457857, 31.010015, 28.343395>,  <25.979626, 30.753216, 27.919262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457857, 31.010015, 28.343395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809660, 31.069832, 28.524109>,  <27.020741, 31.105722, 28.632536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809660, 31.069832, 28.524109>,  <26.457857, 31.010015, 28.343395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809660, 31.069832, 28.524109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261166, 0.641937, -0.720908,
		-0.397822, 0.752033, 0.525532,
		0.879506, 0.149542, 0.451782,
		27.073511, 31.114695, 28.659643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582130, 31.794178, 28.421585>,  <26.457857, 31.010015, 28.343395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582130, 31.794178, 28.421585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926271, 31.590443, 28.429268>,  <27.132755, 31.468201, 28.433878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926271, 31.590443, 28.429268>,  <26.582130, 31.794178, 28.421585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926271, 31.590443, 28.429268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383521, 0.622081, -0.682589,
		0.335721, 0.594633, 0.730550,
		0.860351, -0.509341, 0.019208,
		27.184376, 31.437641, 28.435030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991444, 32.292080, 28.501997>,  <26.582130, 31.794178, 28.421585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991444, 32.292080, 28.501997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225647, 32.002670, 28.355743>,  <27.366169, 31.829025, 28.267990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225647, 32.002670, 28.355743>,  <26.991444, 32.292080, 28.501997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225647, 32.002670, 28.355743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290932, 0.608527, -0.738277,
		0.756661, 0.325894, 0.566795,
		0.585510, -0.723525, -0.365636,
		27.401300, 31.785612, 28.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657509, 32.590794, 28.376110>,  <26.991444, 32.292080, 28.501997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657509, 32.590794, 28.376110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648943, 32.269409, 28.138123>,  <27.643803, 32.076580, 27.995329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648943, 32.269409, 28.138123>,  <27.657509, 32.590794, 28.376110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648943, 32.269409, 28.138123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475911, 0.515165, -0.712822,
		0.879233, -0.298419, 0.371343,
		-0.021417, -0.803462, -0.594971,
		27.642517, 32.028370, 27.959631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337467, 32.420048, 28.032080>,  <27.657509, 32.590794, 28.376110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337467, 32.420048, 28.032080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077732, 32.229008, 27.795349>,  <27.921890, 32.114384, 27.653311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077732, 32.229008, 27.795349>,  <28.337467, 32.420048, 28.032080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077732, 32.229008, 27.795349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293306, 0.560727, -0.774311,
		0.701665, -0.676375, -0.224017,
		-0.649337, -0.477601, -0.591826,
		27.882931, 32.085728, 27.617802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684978, 32.057125, 27.533701>,  <28.337467, 32.420048, 28.032080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684978, 32.057125, 27.533701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312561, 32.147415, 27.419018>,  <28.089109, 32.201591, 27.350208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312561, 32.147415, 27.419018>,  <28.684978, 32.057125, 27.533701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312561, 32.147415, 27.419018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361569, 0.464703, -0.808281,
		-0.049220, -0.856211, -0.514276,
		-0.931045, 0.225730, -0.286707,
		28.033247, 32.215134, 27.333006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723396, 31.907181, 26.812191>,  <28.684978, 32.057125, 27.533701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723396, 31.907181, 26.812191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412394, 32.154816, 26.856392>,  <28.225792, 32.303398, 26.882914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412394, 32.154816, 26.856392>,  <28.723396, 31.907181, 26.812191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412394, 32.154816, 26.856392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327904, 0.549035, -0.768791,
		-0.536621, -0.561506, -0.629881,
		-0.777507, 0.619089, 0.110504,
		28.179142, 32.340542, 26.889544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498554, 32.071083, 26.130400>,  <28.723396, 31.907181, 26.812191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498554, 32.071083, 26.130400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306852, 32.353958, 26.338322>,  <28.191832, 32.523682, 26.463076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306852, 32.353958, 26.338322>,  <28.498554, 32.071083, 26.130400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306852, 32.353958, 26.338322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050410, 0.613456, -0.788119,
		-0.876226, -0.351507, -0.329652,
		-0.479256, 0.707188, 0.519807,
		28.163076, 32.566116, 26.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950491, 32.283230, 25.766563>,  <28.498554, 32.071083, 26.130400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950491, 32.283230, 25.766563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019323, 32.594227, 26.008518>,  <28.060623, 32.780827, 26.153690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019323, 32.594227, 26.008518>,  <27.950491, 32.283230, 25.766563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019323, 32.594227, 26.008518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061854, 0.604306, -0.794348,
		-0.983139, 0.174105, 0.055897,
		0.172079, 0.777497, 0.604886,
		28.070948, 32.827477, 26.189983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553448, 32.771667, 25.479959>,  <27.950491, 32.283230, 25.766563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553448, 32.771667, 25.479959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762110, 32.991825, 25.740711>,  <27.887306, 33.123920, 25.897161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762110, 32.991825, 25.740711>,  <27.553448, 32.771667, 25.479959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762110, 32.991825, 25.740711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207922, 0.823056, -0.528533,
		-0.827433, 0.140172, 0.543789,
		0.521654, 0.550392, 0.651879,
		27.918606, 33.156944, 25.936275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061005, 33.372749, 25.682426>,  <27.553448, 32.771667, 25.479959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061005, 33.372749, 25.682426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445871, 33.461849, 25.745190>,  <27.676790, 33.515308, 25.782848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445871, 33.461849, 25.745190>,  <27.061005, 33.372749, 25.682426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445871, 33.461849, 25.745190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097367, 0.818959, -0.565532,
		-0.254473, 0.528858, 0.809662,
		0.962166, 0.222747, 0.156910,
		27.734522, 33.528675, 25.792263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097769, 33.960655, 26.040964>,  <27.061005, 33.372749, 25.682426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097769, 33.960655, 26.040964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436180, 33.938404, 25.828873>,  <27.639227, 33.925053, 25.701618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436180, 33.938404, 25.828873>,  <27.097769, 33.960655, 26.040964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436180, 33.938404, 25.828873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108198, 0.955931, -0.272928,
		0.522042, 0.288274, 0.802727,
		0.846029, -0.055627, -0.530227,
		27.689989, 33.921715, 25.669804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.700495, 29.084375, 32.171867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.061489, 29.073132, 31.999947>,  <27.278086, 29.066385, 31.896793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.061489, 29.073132, 31.999947>,  <26.700495, 29.084375, 32.171867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061489, 29.073132, 31.999947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288786, 0.700867, -0.652218,
		0.319572, 0.712738, 0.624402,
		0.902484, -0.028111, -0.429806,
		27.332233, 29.064697, 31.871004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854492, 29.696640, 31.991566>,  <26.700495, 29.084375, 32.171867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854492, 29.696640, 31.991566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.125608, 29.520191, 31.756275>,  <27.288279, 29.414322, 31.615101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.125608, 29.520191, 31.756275>,  <26.854492, 29.696640, 31.991566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125608, 29.520191, 31.756275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174364, 0.680774, -0.711438,
		0.714280, 0.584772, 0.384507,
		0.677791, -0.441122, -0.588227,
		27.328945, 29.387856, 31.579807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447073, 30.237711, 31.800518>,  <26.854492, 29.696640, 31.991566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447073, 30.237711, 31.800518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.423447, 29.933670, 31.541672>,  <27.409271, 29.751245, 31.386364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.423447, 29.933670, 31.541672>,  <27.447073, 30.237711, 31.800518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423447, 29.933670, 31.541672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061085, 0.649785, -0.757660,
		0.996383, -0.005222, -0.084810,
		-0.059065, -0.760100, -0.647116,
		27.405727, 29.705641, 31.347538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967403, 30.361534, 31.276207>,  <27.447073, 30.237711, 31.800518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967403, 30.361534, 31.276207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.685516, 30.124176, 31.120640>,  <27.516384, 29.981762, 31.027300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.685516, 30.124176, 31.120640>,  <27.967403, 30.361534, 31.276207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685516, 30.124176, 31.120640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044526, 0.584076, -0.810477,
		0.708089, -0.553840, -0.438030,
		-0.704718, -0.593394, -0.388918,
		27.474100, 29.946157, 31.003965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222672, 30.298275, 30.569542>,  <27.967403, 30.361534, 31.276207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222672, 30.298275, 30.569542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.840397, 30.184212, 30.540291>,  <27.611032, 30.115774, 30.522739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.840397, 30.184212, 30.540291>,  <28.222672, 30.298275, 30.569542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840397, 30.184212, 30.540291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116154, 0.593514, -0.796398,
		0.270503, -0.752612, -0.600336,
		-0.955687, -0.285160, -0.073129,
		27.553692, 30.098663, 30.518353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151371, 30.045822, 29.868345>,  <28.222672, 30.298275, 30.569542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151371, 30.045822, 29.868345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.780159, 30.120823, 29.997097>,  <27.557432, 30.165823, 30.074348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.780159, 30.120823, 29.997097>,  <28.151371, 30.045822, 29.868345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780159, 30.120823, 29.997097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230665, 0.389243, -0.891787,
		-0.292502, -0.901849, -0.317978,
		-0.928028, 0.187503, 0.321879,
		27.501751, 30.177074, 30.093660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887968, 29.941195, 29.249302>,  <28.151371, 30.045822, 29.868345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887968, 29.941195, 29.249302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625507, 30.147087, 29.470036>,  <27.468031, 30.270622, 29.602476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625507, 30.147087, 29.470036>,  <27.887968, 29.941195, 29.249302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625507, 30.147087, 29.470036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256010, 0.536062, -0.804423,
		-0.709878, -0.669097, -0.219961,
		-0.656150, 0.514730, 0.551834,
		27.428663, 30.301506, 29.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349144, 29.954674, 28.758078>,  <27.887968, 29.941195, 29.249302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349144, 29.954674, 28.758078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.315681, 30.239140, 29.037289>,  <27.295605, 30.409819, 29.204815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.315681, 30.239140, 29.037289>,  <27.349144, 29.954674, 28.758078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315681, 30.239140, 29.037289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285721, 0.653954, -0.700505,
		-0.954654, -0.258043, 0.148488,
		-0.083656, 0.711166, 0.698028,
		27.290585, 30.452490, 29.246696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716654, 30.303524, 28.567713>,  <27.349144, 29.954674, 28.758078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716654, 30.303524, 28.567713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.923859, 30.569355, 28.783119>,  <27.048182, 30.728853, 28.912363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.923859, 30.569355, 28.783119>,  <26.716654, 30.303524, 28.567713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923859, 30.569355, 28.783119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304435, 0.731587, -0.610001,
		-0.799365, 0.152043, 0.581290,
		0.518010, 0.664578, 0.538518,
		27.079262, 30.768728, 28.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035856, 30.377022, 28.592730>,  <26.716654, 30.303524, 28.567713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035856, 30.377022, 28.592730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.819115, 30.145332, 28.349125>,  <25.689070, 30.006319, 28.202963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.819115, 30.145332, 28.349125>,  <26.035856, 30.377022, 28.592730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819115, 30.145332, 28.349125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143763, -0.777801, 0.611849,
		-0.828087, 0.243978, 0.504724,
		-0.541852, -0.579225, -0.609012,
		25.656559, 29.971565, 28.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419718, 30.091925, 28.981682>,  <26.035856, 30.377022, 28.592730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419718, 30.091925, 28.981682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.534609, 29.854385, 28.681057>,  <25.603542, 29.711863, 28.500683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.534609, 29.854385, 28.681057>,  <25.419718, 30.091925, 28.981682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534609, 29.854385, 28.681057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093227, -0.763568, 0.638962,
		-0.953316, -0.253592, -0.163953,
		0.287225, -0.593848, -0.751563,
		25.620777, 29.676231, 28.455587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032789, 29.496996, 28.988949>,  <25.419718, 30.091925, 28.981682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032789, 29.496996, 28.988949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.323851, 29.354050, 28.754749>,  <25.498487, 29.268282, 28.614229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.323851, 29.354050, 28.754749>,  <25.032789, 29.496996, 28.988949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323851, 29.354050, 28.754749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014537, -0.861408, 0.507706,
		-0.685789, -0.360924, -0.632003,
		0.727656, -0.357366, -0.585497,
		25.542147, 29.246840, 28.579100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.809870, 28.877495, 28.828091>,  <25.032789, 29.496996, 28.988949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.809870, 28.877495, 28.828091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.203444, 28.863453, 28.758072>,  <25.439589, 28.855028, 28.716061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.203444, 28.863453, 28.758072>,  <24.809870, 28.877495, 28.828091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203444, 28.863453, 28.758072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049587, -0.888162, 0.456847,
		-0.171509, -0.458188, -0.872152,
		0.983934, -0.035106, -0.175047,
		25.498623, 28.852921, 28.705557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967421, 28.061937, 28.813765>,  <24.809870, 28.877495, 28.828091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967421, 28.061937, 28.813765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.327562, 28.235390, 28.828358>,  <25.543648, 28.339460, 28.837112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.327562, 28.235390, 28.828358>,  <24.967421, 28.061937, 28.813765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327562, 28.235390, 28.828358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279888, -0.641242, 0.714473,
		0.333210, -0.633066, -0.698712,
		0.900352, 0.433630, 0.036481,
		25.597668, 28.365479, 28.839302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472231, 27.572674, 28.671759>,  <24.967421, 28.061937, 28.813765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472231, 27.572674, 28.671759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.640322, 27.848011, 28.908264>,  <25.741177, 28.013214, 29.050167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.640322, 27.848011, 28.908264>,  <25.472231, 27.572674, 28.671759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640322, 27.848011, 28.908264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225926, -0.710437, 0.666511,
		0.878844, -0.146504, -0.454059,
		0.420227, 0.688343, 0.591264,
		25.766390, 28.054514, 29.085644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875006, 27.156981, 29.016741>,  <25.472231, 27.572674, 28.671759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875006, 27.156981, 29.016741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.890306, 27.493153, 29.232967>,  <25.899487, 27.694857, 29.362703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.890306, 27.493153, 29.232967>,  <25.875006, 27.156981, 29.016741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890306, 27.493153, 29.232967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242876, -0.532561, 0.810796,
		0.969303, 0.100276, -0.224492,
		0.038252, 0.840431, 0.540567,
		25.901783, 27.745281, 29.395138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536955, 27.143591, 29.444376>,  <25.875006, 27.156981, 29.016741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536955, 27.143591, 29.444376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.245274, 27.364624, 29.605827>,  <26.070265, 27.497244, 29.702698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.245274, 27.364624, 29.605827>,  <26.536955, 27.143591, 29.444376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245274, 27.364624, 29.605827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043153, -0.551535, 0.833034,
		0.682935, 0.624869, 0.378336,
		-0.729203, 0.552582, 0.403628,
		26.026512, 27.530399, 29.726915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781782, 27.289648, 30.081268>,  <26.536955, 27.143591, 29.444376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781782, 27.289648, 30.081268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.400148, 27.389244, 30.147877>,  <26.171167, 27.449001, 30.187841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.400148, 27.389244, 30.147877>,  <26.781782, 27.289648, 30.081268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400148, 27.389244, 30.147877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110917, -0.222734, 0.968549,
		0.278247, 0.942547, 0.184890,
		-0.954084, 0.248988, 0.166519,
		26.113924, 27.463940, 30.197832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793337, 27.753683, 30.641710>,  <26.781782, 27.289648, 30.081268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793337, 27.753683, 30.641710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.426414, 27.594742, 30.631443>,  <26.206261, 27.499378, 30.625282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.426414, 27.594742, 30.631443>,  <26.793337, 27.753683, 30.641710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426414, 27.594742, 30.631443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109736, -0.314248, 0.942977,
		-0.382759, 0.862184, 0.331866,
		-0.917308, -0.397351, -0.025668,
		26.151222, 27.475536, 30.623743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410257, 27.931841, 31.392889>,  <26.793337, 27.753683, 30.641710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410257, 27.931841, 31.392889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.222342, 27.619572, 31.228039>,  <26.109592, 27.432211, 31.129129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.222342, 27.619572, 31.228039>,  <26.410257, 27.931841, 31.392889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222342, 27.619572, 31.228039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225544, -0.557501, 0.798950,
		-0.853480, 0.282385, 0.437984,
		-0.469789, -0.780673, -0.412126,
		26.081406, 27.385370, 31.104401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896637, 27.732023, 31.878864>,  <26.410257, 27.931841, 31.392889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896637, 27.732023, 31.878864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.960703, 27.417492, 31.640190>,  <25.999142, 27.228773, 31.496986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.960703, 27.417492, 31.640190>,  <25.896637, 27.732023, 31.878864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960703, 27.417492, 31.640190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110294, -0.586448, 0.802443,
		-0.980909, -0.194334, -0.007201,
		0.160165, -0.786329, -0.596686,
		26.008753, 27.181593, 31.461184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579634, 27.149435, 32.227253>,  <25.896637, 27.732023, 31.878864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579634, 27.149435, 32.227253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.856941, 27.001945, 31.979568>,  <26.023325, 26.913452, 31.830957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.856941, 27.001945, 31.979568>,  <25.579634, 27.149435, 32.227253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856941, 27.001945, 31.979568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133093, -0.778919, 0.612839,
		-0.708282, -0.507274, -0.490927,
		0.693270, -0.368724, -0.619209,
		26.064922, 26.891329, 31.793806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451126, 26.371597, 32.240383>,  <25.579634, 27.149435, 32.227253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451126, 26.371597, 32.240383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.809572, 26.412785, 32.067699>,  <26.024639, 26.437496, 31.964088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.809572, 26.412785, 32.067699>,  <25.451126, 26.371597, 32.240383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809572, 26.412785, 32.067699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281203, -0.884280, 0.372791,
		-0.343369, -0.455462, -0.821372,
		0.896115, 0.102967, -0.431712,
		26.078407, 26.443674, 31.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.538929, 25.512775, 29.884037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251476, 25.694756, 30.094402>,  <32.079002, 25.803944, 30.220621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251476, 25.694756, 30.094402>,  <32.538929, 25.512775, 29.884037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251476, 25.694756, 30.094402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146909, 0.639892, -0.754292,
		-0.679693, -0.619321, -0.393012,
		-0.718634, 0.454950, 0.525914,
		32.035885, 25.831240, 30.252176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877417, 25.407480, 29.472809>,  <32.538929, 25.512775, 29.884037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877417, 25.407480, 29.472809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881556, 25.735725, 29.701366>,  <31.884039, 25.932673, 29.838501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.881556, 25.735725, 29.701366>,  <31.877417, 25.407480, 29.472809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881556, 25.735725, 29.701366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264107, 0.553375, -0.789951,
		-0.964438, -0.142734, 0.222456,
		0.010349, 0.820611, 0.571393,
		31.884661, 25.981909, 29.872784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466764, 25.810352, 29.141472>,  <31.877417, 25.407480, 29.472809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466764, 25.810352, 29.141472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599241, 26.079517, 29.406048>,  <31.678728, 26.241016, 29.564793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.599241, 26.079517, 29.406048>,  <31.466764, 25.810352, 29.141472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599241, 26.079517, 29.406048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292195, 0.739685, -0.606208,
		-0.897180, 0.007503, 0.441601,
		0.331194, 0.672911, 0.661439,
		31.698599, 26.281391, 29.604479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855568, 26.250202, 29.295942>,  <31.466764, 25.810352, 29.141472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855568, 26.250202, 29.295942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.174442, 26.466148, 29.404045>,  <31.365767, 26.595716, 29.468906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.174442, 26.466148, 29.404045>,  <30.855568, 26.250202, 29.295942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174442, 26.466148, 29.404045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322817, 0.759438, -0.564839,
		-0.510180, 0.363039, 0.779692,
		0.797186, 0.539867, 0.270255,
		31.413599, 26.628109, 29.485121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637831, 26.892792, 29.465029>,  <30.855568, 26.250202, 29.295942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637831, 26.892792, 29.465029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019604, 26.933525, 29.352821>,  <31.248667, 26.957964, 29.285496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019604, 26.933525, 29.352821>,  <30.637831, 26.892792, 29.465029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019604, 26.933525, 29.352821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248519, 0.791629, -0.558178,
		0.165228, 0.602457, 0.780862,
		0.954431, 0.101832, -0.280521,
		31.305933, 26.964075, 29.268665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746264, 27.589573, 29.458103>,  <30.637831, 26.892792, 29.465029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746264, 27.589573, 29.458103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051451, 27.456802, 29.236217>,  <31.234562, 27.377140, 29.103086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.051451, 27.456802, 29.236217>,  <30.746264, 27.589573, 29.458103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051451, 27.456802, 29.236217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178519, 0.716553, -0.674302,
		0.621300, 0.613497, 0.487451,
		0.762967, -0.331924, -0.554715,
		31.280340, 27.357225, 29.069803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250319, 28.176025, 29.519274>,  <30.746264, 27.589573, 29.458103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250319, 28.176025, 29.519274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.276161, 27.947891, 29.191727>,  <31.291666, 27.811010, 28.995199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.276161, 27.947891, 29.191727>,  <31.250319, 28.176025, 29.519274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276161, 27.947891, 29.191727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286518, 0.775430, -0.562686,
		0.955894, 0.270973, -0.113314,
		0.064605, -0.570335, -0.818868,
		31.295542, 27.776791, 28.946066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459217, 28.670189, 29.004435>,  <31.250319, 28.176025, 29.519274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459217, 28.670189, 29.004435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363503, 28.363182, 28.766556>,  <31.306074, 28.178978, 28.623829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363503, 28.363182, 28.766556>,  <31.459217, 28.670189, 29.004435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363503, 28.363182, 28.766556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025524, 0.617249, -0.786354,
		0.970614, -0.172983, -0.167288,
		-0.239285, -0.767516, -0.594695,
		31.291718, 28.132927, 28.588148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844790, 28.769270, 28.350618>,  <31.459217, 28.670189, 29.004435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844790, 28.769270, 28.350618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553474, 28.513557, 28.251892>,  <31.378685, 28.360130, 28.192656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.553474, 28.513557, 28.251892>,  <31.844790, 28.769270, 28.350618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553474, 28.513557, 28.251892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091357, 0.266382, -0.959528,
		0.679157, -0.721359, -0.135599,
		-0.728285, -0.639283, -0.246816,
		31.334990, 28.321774, 28.177847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026897, 28.386211, 27.794178>,  <31.844790, 28.769270, 28.350618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026897, 28.386211, 27.794178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630316, 28.334042, 27.792801>,  <31.392366, 28.302740, 27.791975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.630316, 28.334042, 27.792801>,  <32.026897, 28.386211, 27.794178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630316, 28.334042, 27.792801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022558, 0.197365, -0.980071,
		0.128500, -0.971616, -0.198620,
		-0.991453, -0.130420, -0.003444,
		31.332880, 28.294914, 27.791767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880186, 28.050785, 27.108271>,  <32.026897, 28.386211, 27.794178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880186, 28.050785, 27.108271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.542574, 28.210735, 27.251217>,  <31.340006, 28.306705, 27.336985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.542574, 28.210735, 27.251217>,  <31.880186, 28.050785, 27.108271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542574, 28.210735, 27.251217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220521, 0.348641, -0.910945,
		-0.488858, -0.847672, -0.206082,
		-0.844031, 0.399877, 0.357365,
		31.289364, 28.330698, 27.358427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442789, 27.827898, 26.670694>,  <31.880186, 28.050785, 27.108271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442789, 27.827898, 26.670694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267046, 28.141312, 26.846439>,  <31.161600, 28.329359, 26.951885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267046, 28.141312, 26.846439>,  <31.442789, 27.827898, 26.670694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267046, 28.141312, 26.846439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190188, 0.396874, -0.897953,
		-0.877948, -0.478085, -0.025351,
		-0.439359, 0.783534, 0.439361,
		31.135239, 28.376371, 26.978249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981562, 27.977320, 26.192486>,  <31.442789, 27.827898, 26.670694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981562, 27.977320, 26.192486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025730, 28.299511, 26.425385>,  <31.052231, 28.492826, 26.565123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025730, 28.299511, 26.425385>,  <30.981562, 27.977320, 26.192486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025730, 28.299511, 26.425385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039241, 0.588904, -0.807250,
		-0.993110, 0.066291, 0.096636,
		0.110422, 0.805480, 0.582245,
		31.058857, 28.541155, 26.600058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434120, 28.362282, 25.986004>,  <30.981562, 27.977320, 26.192486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434120, 28.362282, 25.986004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.711971, 28.599510, 26.148857>,  <30.878683, 28.741848, 26.246569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.711971, 28.599510, 26.148857>,  <30.434120, 28.362282, 25.986004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711971, 28.599510, 26.148857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043930, 0.529931, -0.846902,
		-0.718025, 0.606169, 0.342052,
		0.694629, 0.593071, 0.407133,
		30.920361, 28.777431, 26.270996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903151, 28.443756, 26.503460>,  <30.434120, 28.362282, 25.986004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903151, 28.443756, 26.503460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647734, 28.221050, 26.290939>,  <29.494484, 28.087427, 26.163427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647734, 28.221050, 26.290939>,  <29.903151, 28.443756, 26.503460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647734, 28.221050, 26.290939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332900, -0.822265, 0.461581,
		-0.693862, 0.117868, 0.710396,
		-0.638540, -0.556765, -0.531300,
		29.456171, 28.054020, 26.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561344, 28.042957, 26.969549>,  <29.903151, 28.443756, 26.503460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561344, 28.042957, 26.969549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.473541, 27.843525, 26.634113>,  <29.420860, 27.723866, 26.432852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.473541, 27.843525, 26.634113>,  <29.561344, 28.042957, 26.969549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473541, 27.843525, 26.634113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259894, -0.858376, 0.442319,
		-0.940357, -0.120852, 0.317998,
		-0.219507, -0.498583, -0.838589,
		29.407690, 27.693951, 26.382536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163744, 27.487652, 27.170620>,  <29.561344, 28.042957, 26.969549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163744, 27.487652, 27.170620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297855, 27.379887, 26.809509>,  <29.378323, 27.315228, 26.592842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297855, 27.379887, 26.809509>,  <29.163744, 27.487652, 27.170620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297855, 27.379887, 26.809509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161202, -0.927704, 0.336719,
		-0.928249, -0.258405, -0.267546,
		0.335214, -0.269430, -0.902796,
		29.398439, 27.299063, 26.538677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733013, 26.999981, 26.812977>,  <29.163744, 27.487652, 27.170620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733013, 26.999981, 26.812977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.111246, 26.949780, 26.692898>,  <29.338186, 26.919659, 26.620850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.111246, 26.949780, 26.692898>,  <28.733013, 26.999981, 26.812977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111246, 26.949780, 26.692898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003152, -0.919039, 0.394155,
		-0.325362, -0.373653, -0.868633,
		0.945584, -0.125505, -0.300198,
		29.394922, 26.912128, 26.602839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716898, 26.295818, 26.582390>,  <28.733013, 26.999981, 26.812977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716898, 26.295818, 26.582390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103903, 26.376003, 26.644012>,  <29.336105, 26.424114, 26.680986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103903, 26.376003, 26.644012>,  <28.716898, 26.295818, 26.582390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103903, 26.376003, 26.644012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102782, -0.868593, 0.484750,
		0.230988, -0.453167, -0.860979,
		0.967512, 0.200465, 0.154057,
		29.394157, 26.436142, 26.690229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968746, 25.634642, 26.534765>,  <28.716898, 26.295818, 26.582390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968746, 25.634642, 26.534765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.282871, 25.833481, 26.682373>,  <29.471346, 25.952784, 26.770939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.282871, 25.833481, 26.682373>,  <28.968746, 25.634642, 26.534765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282871, 25.833481, 26.682373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219870, -0.781145, 0.584354,
		0.578741, -0.377764, -0.722740,
		0.785313, 0.497098, 0.369022,
		29.518465, 25.982611, 26.793079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616941, 25.166714, 26.465946>,  <28.968746, 25.634642, 26.534765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616941, 25.166714, 26.465946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.669012, 25.440849, 26.752544>,  <29.700254, 25.605331, 26.924503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.669012, 25.440849, 26.752544>,  <29.616941, 25.166714, 26.465946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669012, 25.440849, 26.752544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351507, -0.707605, 0.612975,
		0.927091, 0.172059, -0.333014,
		0.130175, 0.685340, 0.716494,
		29.708065, 25.646452, 26.967493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285923, 25.081312, 26.747002>,  <29.616941, 25.166714, 26.465946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285923, 25.081312, 26.747002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089848, 25.290527, 27.025898>,  <29.972202, 25.416056, 27.193235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089848, 25.290527, 27.025898>,  <30.285923, 25.081312, 26.747002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089848, 25.290527, 27.025898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315885, -0.638954, 0.701395,
		0.812361, 0.564064, 0.147988,
		-0.490189, 0.523039, 0.697241,
		29.942791, 25.447439, 27.235071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727480, 25.087868, 27.223993>,  <30.285923, 25.081312, 26.747002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727480, 25.087868, 27.223993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376984, 25.158672, 27.403267>,  <30.166685, 25.201155, 27.510832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376984, 25.158672, 27.403267>,  <30.727480, 25.087868, 27.223993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376984, 25.158672, 27.403267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314041, -0.495673, 0.809745,
		0.365485, 0.850280, 0.378741,
		-0.876241, 0.177009, 0.448184,
		30.114111, 25.211775, 27.537722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874086, 25.217382, 27.911322>,  <30.727480, 25.087868, 27.223993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874086, 25.217382, 27.911322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480886, 25.144001, 27.908398>,  <30.244967, 25.099972, 27.906643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.480886, 25.144001, 27.908398>,  <30.874086, 25.217382, 27.911322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480886, 25.144001, 27.908398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087544, -0.503340, 0.859642,
		-0.161384, 0.844389, 0.510844,
		-0.983001, -0.183454, -0.007309,
		30.185986, 25.088964, 27.906204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583818, 25.430590, 28.490351>,  <30.874086, 25.217382, 27.911322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583818, 25.430590, 28.490351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329334, 25.146206, 28.370502>,  <30.176643, 24.975574, 28.298594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329334, 25.146206, 28.370502>,  <30.583818, 25.430590, 28.490351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329334, 25.146206, 28.370502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124333, -0.477754, 0.869651,
		-0.761432, 0.516028, 0.392348,
		-0.636210, -0.710961, -0.299618,
		30.138472, 24.932917, 28.280617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087347, 25.325750, 28.985243>,  <30.583818, 25.430590, 28.490351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087347, 25.325750, 28.985243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.060667, 24.999596, 28.755219>,  <30.044659, 24.803902, 28.617205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.060667, 24.999596, 28.755219>,  <30.087347, 25.325750, 28.985243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060667, 24.999596, 28.755219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051786, -0.572738, 0.818101,
		-0.996428, 0.084347, -0.004024,
		-0.066699, -0.815388, -0.575060,
		30.040657, 24.754980, 28.582701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550657, 25.004326, 29.264687>,  <30.087347, 25.325750, 28.985243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550657, 25.004326, 29.264687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759840, 24.723206, 29.071777>,  <29.885349, 24.554533, 28.956032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759840, 24.723206, 29.071777>,  <29.550657, 25.004326, 29.264687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759840, 24.723206, 29.071777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097769, -0.512617, 0.853033,
		-0.846733, -0.493251, -0.199364,
		0.522957, -0.702800, -0.482275,
		29.916727, 24.512365, 28.927095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253202, 24.353483, 29.330729>,  <29.550657, 25.004326, 29.264687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253202, 24.353483, 29.330729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628710, 24.235779, 29.259033>,  <29.854013, 24.165155, 29.216017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628710, 24.235779, 29.259033>,  <29.253202, 24.353483, 29.330729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628710, 24.235779, 29.259033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039911, -0.609573, 0.791725,
		-0.342233, -0.736092, -0.583992,
		0.938768, -0.294262, -0.179237,
		29.910339, 24.147501, 29.205261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697620, 23.842434, 29.418814>,  <29.253202, 24.353483, 29.330729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697620, 23.842434, 29.418814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318163, 23.783417, 29.530746>,  <28.090488, 23.748007, 29.597906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318163, 23.783417, 29.530746>,  <28.697620, 23.842434, 29.418814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318163, 23.783417, 29.530746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303333, 0.675336, -0.672243,
		-0.089795, -0.722601, -0.685408,
		-0.948645, -0.147543, 0.279830,
		28.033569, 23.739155, 29.614695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307928, 23.781322, 28.801893>,  <28.697620, 23.842434, 29.418814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307928, 23.781322, 28.801893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.014257, 23.851768, 29.064182>,  <27.838055, 23.894037, 29.221556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.014257, 23.851768, 29.064182>,  <28.307928, 23.781322, 28.801893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014257, 23.851768, 29.064182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499167, 0.514647, -0.697116,
		-0.460239, -0.839119, -0.289929,
		-0.734174, 0.176117, 0.655722,
		27.794004, 23.904604, 29.260899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660440, 23.548426, 28.497444>,  <28.307928, 23.781322, 28.801893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660440, 23.548426, 28.497444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.571791, 23.840759, 28.755672>,  <27.518600, 24.016159, 28.910610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.571791, 23.840759, 28.755672>,  <27.660440, 23.548426, 28.497444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571791, 23.840759, 28.755672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584429, 0.430408, -0.687890,
		-0.780593, -0.529745, 0.331731,
		-0.221626, 0.730835, 0.645571,
		27.505302, 24.060009, 28.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053610, 23.713886, 28.320370>,  <27.660440, 23.548426, 28.497444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053610, 23.713886, 28.320370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.131460, 24.040165, 28.538273>,  <27.178169, 24.235931, 28.669014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.131460, 24.040165, 28.538273>,  <27.053610, 23.713886, 28.320370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131460, 24.040165, 28.538273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585491, 0.542195, -0.602682,
		-0.786970, -0.201654, 0.583107,
		0.194625, 0.815696, 0.544758,
		27.189848, 24.284874, 28.701700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428236, 24.179346, 28.204096>,  <27.053610, 23.713886, 28.320370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428236, 24.179346, 28.204096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.712046, 24.427593, 28.337608>,  <26.882332, 24.576542, 28.417715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.712046, 24.427593, 28.337608>,  <26.428236, 24.179346, 28.204096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712046, 24.427593, 28.337608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412024, 0.749627, -0.517972,
		-0.571673, 0.229989, 0.787588,
		0.709525, 0.620616, 0.333780,
		26.924904, 24.613777, 28.437742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064455, 24.746178, 28.582443>,  <26.428236, 24.179346, 28.204096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064455, 24.746178, 28.582443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.418900, 24.876762, 28.450851>,  <26.631567, 24.955114, 28.371897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.418900, 24.876762, 28.450851>,  <26.064455, 24.746178, 28.582443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418900, 24.876762, 28.450851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462931, 0.657723, -0.594218,
		0.022389, 0.678839, 0.733946,
		0.886111, 0.326463, -0.328981,
		26.684732, 24.974701, 28.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002260, 25.472937, 28.567327>,  <26.064455, 24.746178, 28.582443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002260, 25.472937, 28.567327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.346134, 25.407784, 28.373665>,  <26.552460, 25.368690, 28.257467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.346134, 25.407784, 28.373665>,  <26.002260, 25.472937, 28.567327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346134, 25.407784, 28.373665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173913, 0.797848, -0.577228,
		0.480304, 0.580436, 0.657572,
		0.859687, -0.162885, -0.484156,
		26.604040, 25.358917, 28.228418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472036, 26.054377, 28.622955>,  <26.002260, 25.472937, 28.567327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472036, 26.054377, 28.622955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.552689, 25.871502, 28.276470>,  <26.601080, 25.761778, 28.068579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.552689, 25.871502, 28.276470>,  <26.472036, 26.054377, 28.622955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552689, 25.871502, 28.276470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392828, 0.772387, -0.499104,
		0.897236, 0.440907, -0.023859,
		0.201630, -0.457186, -0.866214,
		26.613178, 25.734346, 28.016605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011978, 26.436045, 28.281931>,  <26.472036, 26.054377, 28.622955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011978, 26.436045, 28.281931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.808943, 26.228870, 28.006512>,  <26.687122, 26.104567, 27.841261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.808943, 26.228870, 28.006512>,  <27.011978, 26.436045, 28.281931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808943, 26.228870, 28.006512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069775, 0.821236, -0.566307,
		0.858770, -0.239406, -0.452988,
		-0.507588, -0.517935, -0.688548,
		26.656666, 26.073490, 27.799948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979019, 26.872086, 27.572664>,  <27.011978, 26.436045, 28.281931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979019, 26.872086, 27.572664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.699226, 26.596466, 27.496834>,  <26.531351, 26.431095, 27.451336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.699226, 26.596466, 27.496834>,  <26.979019, 26.872086, 27.572664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699226, 26.596466, 27.496834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368499, 0.575040, -0.730436,
		0.612321, -0.441066, -0.656143,
		-0.699479, -0.689050, -0.189577,
		26.489382, 26.389751, 27.439962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943319, 26.811670, 26.864408>,  <26.979019, 26.872086, 27.572664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943319, 26.811670, 26.864408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.584415, 26.697952, 26.999523>,  <26.369074, 26.629721, 27.080593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.584415, 26.697952, 26.999523>,  <26.943319, 26.811670, 26.864408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584415, 26.697952, 26.999523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426747, 0.362311, -0.828624,
		0.113189, -0.887642, -0.446408,
		-0.897260, -0.284294, 0.337789,
		26.315237, 26.612663, 27.100861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500132, 26.654236, 26.212332>,  <26.943319, 26.811670, 26.864408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500132, 26.654236, 26.212332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.253084, 26.733250, 26.516838>,  <26.104855, 26.780659, 26.699541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.253084, 26.733250, 26.516838>,  <26.500132, 26.654236, 26.212332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253084, 26.733250, 26.516838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577150, 0.543707, -0.609329,
		-0.534269, -0.815698, -0.221797,
		-0.617621, 0.197535, 0.761265,
		26.067799, 26.792511, 26.745218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906923, 26.799942, 25.824482>,  <26.500132, 26.654236, 26.212332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906923, 26.799942, 25.824482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.832943, 26.926037, 26.196808>,  <25.788555, 27.001694, 26.420204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.832943, 26.926037, 26.196808>,  <25.906923, 26.799942, 25.824482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832943, 26.926037, 26.196808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704159, 0.618197, -0.349275,
		-0.685532, -0.720042, 0.107640,
		-0.184950, 0.315235, 0.930817,
		25.777458, 27.020607, 26.476053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188107, 26.865366, 25.822157>,  <25.906923, 26.799942, 25.824482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188107, 26.865366, 25.822157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.314848, 27.087540, 26.129688>,  <25.390892, 27.220844, 26.314207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.314848, 27.087540, 26.129688>,  <25.188107, 26.865366, 25.822157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314848, 27.087540, 26.129688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667121, 0.706707, -0.235616,
		-0.674206, -0.438247, 0.594463,
		0.316854, 0.555432, 0.768830,
		25.409904, 27.254169, 26.360336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.696728, 31.681351, 31.253147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013008, 31.437912, 31.279713>,  <38.202774, 31.291849, 31.295652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013008, 31.437912, 31.279713>,  <37.696728, 31.681351, 31.253147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013008, 31.437912, 31.279713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317804, 0.315316, -0.894190,
		0.523259, 0.728140, 0.442733,
		0.790696, -0.608595, 0.066414,
		38.250217, 31.255333, 31.299637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194210, 32.000919, 30.941813>,  <37.696728, 31.681351, 31.253147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194210, 32.000919, 30.941813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341530, 31.630215, 30.912205>,  <38.429920, 31.407793, 30.894440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341530, 31.630215, 30.912205>,  <38.194210, 32.000919, 30.941813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341530, 31.630215, 30.912205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548124, 0.280753, -0.787869,
		0.750946, 0.249596, 0.611378,
		0.368295, -0.926758, -0.074021,
		38.452019, 31.352188, 30.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851021, 32.127060, 30.599384>,  <38.194210, 32.000919, 30.941813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851021, 32.127060, 30.599384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.824787, 31.731628, 30.545113>,  <38.809048, 31.494370, 30.512548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.824787, 31.731628, 30.545113>,  <38.851021, 32.127060, 30.599384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824787, 31.731628, 30.545113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335910, 0.106166, -0.935892,
		0.939608, -0.106954, 0.325111,
		-0.065582, -0.988580, -0.135681,
		38.805111, 31.435055, 30.504408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380127, 31.992353, 30.267097>,  <38.851021, 32.127060, 30.599384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380127, 31.992353, 30.267097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147781, 31.692703, 30.139721>,  <39.008373, 31.512913, 30.063295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147781, 31.692703, 30.139721>,  <39.380127, 31.992353, 30.267097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147781, 31.692703, 30.139721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236444, 0.219058, -0.946630,
		0.778901, -0.625160, 0.049883,
		-0.580867, -0.749126, -0.318439,
		38.973522, 31.467966, 30.044189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748589, 31.654613, 29.682537>,  <39.380127, 31.992353, 30.267097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748589, 31.654613, 29.682537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360149, 31.566589, 29.645576>,  <39.127087, 31.513775, 29.623400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360149, 31.566589, 29.645576>,  <39.748589, 31.654613, 29.682537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360149, 31.566589, 29.645576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081436, 0.058416, -0.994965,
		0.224352, -0.973735, -0.038807,
		-0.971100, -0.220063, -0.092403,
		39.068821, 31.500570, 29.617855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603981, 31.069893, 29.225197>,  <39.748589, 31.654613, 29.682537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603981, 31.069893, 29.225197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261673, 31.276833, 29.226292>,  <39.056290, 31.400995, 29.226948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261673, 31.276833, 29.226292>,  <39.603981, 31.069893, 29.225197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261673, 31.276833, 29.226292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127895, -0.206429, -0.970067,
		-0.501298, -0.830504, 0.242822,
		-0.855770, 0.517349, 0.002734,
		39.004940, 31.432037, 29.227112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204803, 30.787577, 28.665249>,  <39.603981, 31.069893, 29.225197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204803, 30.787577, 28.665249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009918, 31.131889, 28.724136>,  <38.892986, 31.338478, 28.759468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009918, 31.131889, 28.724136>,  <39.204803, 30.787577, 28.665249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009918, 31.131889, 28.724136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163489, 0.075694, -0.983637,
		-0.857842, -0.503311, 0.103849,
		-0.487214, 0.860783, 0.147219,
		38.863754, 31.390125, 28.768303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571972, 30.675747, 28.350595>,  <39.204803, 30.787577, 28.665249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571972, 30.675747, 28.350595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611443, 31.073784, 28.347618>,  <38.635124, 31.312605, 28.345831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.611443, 31.073784, 28.347618>,  <38.571972, 30.675747, 28.350595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611443, 31.073784, 28.347618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215981, 0.014115, -0.976296,
		-0.971398, 0.097948, 0.216313,
		0.098680, 0.995091, -0.007443,
		38.641045, 31.372311, 28.345385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029789, 30.953888, 27.799919>,  <38.571972, 30.675747, 28.350595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029789, 30.953888, 27.799919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230534, 31.290962, 27.877911>,  <38.350983, 31.493206, 27.924706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230534, 31.290962, 27.877911>,  <38.029789, 30.953888, 27.799919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230534, 31.290962, 27.877911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031719, 0.243201, -0.969457,
		-0.864364, 0.480352, 0.148783,
		0.501865, 0.842683, 0.194978,
		38.381092, 31.543768, 27.936403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732166, 31.514822, 27.397461>,  <38.029789, 30.953888, 27.799919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732166, 31.514822, 27.397461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110077, 31.622402, 27.472366>,  <38.336823, 31.686951, 27.517309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110077, 31.622402, 27.472366>,  <37.732166, 31.514822, 27.397461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110077, 31.622402, 27.472366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146018, 0.166098, -0.975238,
		-0.293394, 0.948724, 0.117654,
		0.944774, 0.268949, 0.187263,
		38.393509, 31.703087, 27.528545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845181, 32.123066, 27.010855>,  <37.732166, 31.514822, 27.397461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845181, 32.123066, 27.010855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.201477, 31.964363, 27.099548>,  <38.415257, 31.869143, 27.152763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.201477, 31.964363, 27.099548>,  <37.845181, 32.123066, 27.010855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201477, 31.964363, 27.099548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359528, 0.316604, -0.877782,
		0.278063, 0.861596, 0.424657,
		0.890742, -0.396755, 0.221732,
		38.468700, 31.845337, 27.166067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288845, 32.656250, 26.869022>,  <37.845181, 32.123066, 27.010855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288845, 32.656250, 26.869022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491467, 32.312038, 26.847530>,  <38.613041, 32.105511, 26.834635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491467, 32.312038, 26.847530>,  <38.288845, 32.656250, 26.869022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491467, 32.312038, 26.847530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251053, 0.206829, -0.945619,
		0.824846, 0.465521, 0.320809,
		0.506558, -0.860530, -0.053732,
		38.643433, 32.053879, 26.831411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887390, 32.788437, 26.617687>,  <38.288845, 32.656250, 26.869022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887390, 32.788437, 26.617687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861423, 32.397606, 26.536594>,  <38.845844, 32.163105, 26.487938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.861423, 32.397606, 26.536594>,  <38.887390, 32.788437, 26.617687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861423, 32.397606, 26.536594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545108, 0.135449, -0.827351,
		0.835849, -0.164218, 0.523822,
		-0.064915, -0.977080, -0.202732,
		38.841949, 32.104481, 26.475775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524448, 32.640282, 26.349676>,  <38.887390, 32.788437, 26.617687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524448, 32.640282, 26.349676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299034, 32.327328, 26.243614>,  <39.163784, 32.139557, 26.179977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.299034, 32.327328, 26.243614>,  <39.524448, 32.640282, 26.349676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299034, 32.327328, 26.243614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417431, 0.007291, -0.908680,
		0.712867, -0.622758, 0.322481,
		-0.563536, -0.782381, -0.265155,
		39.129974, 32.092613, 26.164068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996372, 32.192272, 26.012434>,  <39.524448, 32.640282, 26.349676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996372, 32.192272, 26.012434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633011, 32.082542, 25.886227>,  <39.414993, 32.016705, 25.810503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633011, 32.082542, 25.886227>,  <39.996372, 32.192272, 26.012434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633011, 32.082542, 25.886227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340920, -0.049144, -0.938807,
		0.242031, -0.960381, 0.138165,
		-0.908402, -0.274323, -0.315519,
		39.360489, 32.000244, 25.791571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120342, 31.578922, 25.629818>,  <39.996372, 32.192272, 26.012434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120342, 31.578922, 25.629818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771564, 31.728783, 25.503738>,  <39.562298, 31.818699, 25.428091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771564, 31.728783, 25.503738>,  <40.120342, 31.578922, 25.629818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771564, 31.728783, 25.503738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330025, -0.025792, -0.943620,
		-0.361656, -0.926808, -0.101154,
		-0.871946, 0.374649, -0.315198,
		39.509979, 31.841177, 25.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892422, 31.176430, 25.053488>,  <40.120342, 31.578922, 25.629818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892422, 31.176430, 25.053488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697598, 31.521683, 25.000149>,  <39.580704, 31.728834, 24.968145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.697598, 31.521683, 25.000149>,  <39.892422, 31.176430, 25.053488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697598, 31.521683, 25.000149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233257, -0.018579, -0.972238,
		-0.841646, -0.504638, -0.192282,
		-0.487056, 0.863131, -0.133347,
		39.551479, 31.780622, 24.960144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500328, 31.076643, 24.449404>,  <39.892422, 31.176430, 25.053488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500328, 31.076643, 24.449404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510509, 31.474022, 24.493977>,  <39.516617, 31.712448, 24.520720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510509, 31.474022, 24.493977>,  <39.500328, 31.076643, 24.449404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510509, 31.474022, 24.493977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222856, 0.103025, -0.969392,
		-0.974519, 0.049505, -0.218774,
		0.025450, 0.993446, 0.111432,
		39.518143, 31.772057, 24.527407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155888, 31.316113, 23.934769>,  <39.500328, 31.076643, 24.449404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155888, 31.316113, 23.934769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314766, 31.673019, 24.020645>,  <39.410091, 31.887163, 24.072170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314766, 31.673019, 24.020645>,  <39.155888, 31.316113, 23.934769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314766, 31.673019, 24.020645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157674, 0.296806, -0.941831,
		-0.904088, 0.340240, 0.258578,
		0.397195, 0.892269, 0.214691,
		39.433926, 31.940701, 24.085052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711674, 31.905874, 23.721382>,  <39.155888, 31.316113, 23.934769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711674, 31.905874, 23.721382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074455, 32.071735, 23.751045>,  <39.292126, 32.171253, 23.768843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074455, 32.071735, 23.751045>,  <38.711674, 31.905874, 23.721382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074455, 32.071735, 23.751045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153538, 0.489357, -0.858461,
		-0.392254, 0.767197, 0.507489,
		0.906953, 0.414653, 0.074158,
		39.346542, 32.196133, 23.773293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603981, 32.638889, 23.670916>,  <38.711674, 31.905874, 23.721382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603981, 32.638889, 23.670916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973003, 32.574917, 23.530453>,  <39.194416, 32.536533, 23.446175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.973003, 32.574917, 23.530453>,  <38.603981, 32.638889, 23.670916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973003, 32.574917, 23.530453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219788, 0.530180, -0.818903,
		0.317147, 0.832664, 0.453969,
		0.922557, -0.159936, -0.351155,
		39.249771, 32.526936, 23.425106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837257, 32.553135, 23.838541>,  <38.603981, 32.638889, 23.670916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837257, 32.553135, 23.838541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463863, 32.650318, 23.733032>,  <37.239826, 32.708626, 23.669727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.463863, 32.650318, 23.733032>,  <37.837257, 32.553135, 23.838541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463863, 32.650318, 23.733032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353312, -0.749057, 0.560432,
		-0.061421, 0.616350, 0.785073,
		-0.933487, 0.242954, -0.263772,
		37.183819, 32.723206, 23.653900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277866, 32.566994, 24.459917>,  <37.837257, 32.553135, 23.838541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277866, 32.566994, 24.459917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.066383, 32.498367, 24.127403>,  <36.939495, 32.457191, 23.927895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.066383, 32.498367, 24.127403>,  <37.277866, 32.566994, 24.459917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066383, 32.498367, 24.127403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491743, -0.736357, 0.464723,
		-0.691852, 0.654481, 0.304951,
		-0.528705, -0.171562, -0.831287,
		36.907772, 32.446899, 23.878017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591621, 32.318459, 24.648870>,  <37.277866, 32.566994, 24.459917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591621, 32.318459, 24.648870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624725, 32.180897, 24.274731>,  <36.644588, 32.098358, 24.050247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.624725, 32.180897, 24.274731>,  <36.591621, 32.318459, 24.648870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624725, 32.180897, 24.274731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344662, -0.890528, 0.296931,
		-0.935071, 0.297805, -0.192233,
		0.082762, -0.343907, -0.935349,
		36.649555, 32.077724, 23.994125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926983, 32.056324, 24.456009>,  <36.591621, 32.318459, 24.648870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926983, 32.056324, 24.456009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176270, 31.872990, 24.202545>,  <36.325844, 31.762989, 24.050467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176270, 31.872990, 24.202545>,  <35.926983, 32.056324, 24.456009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176270, 31.872990, 24.202545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300816, -0.888413, 0.346744,
		-0.721876, -0.025484, -0.691553,
		0.623221, -0.458337, -0.633659,
		36.363235, 31.735489, 24.012447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531651, 31.505802, 24.198307>,  <35.926983, 32.056324, 24.456009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531651, 31.505802, 24.198307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.917439, 31.411278, 24.151051>,  <36.148911, 31.354563, 24.122698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.917439, 31.411278, 24.151051>,  <35.531651, 31.505802, 24.198307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917439, 31.411278, 24.151051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163071, -0.884289, 0.437540,
		-0.207865, -0.402729, -0.891404,
		0.964469, -0.236311, -0.118140,
		36.206779, 31.340384, 24.115608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624001, 30.750923, 24.072763>,  <35.531651, 31.505802, 24.198307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624001, 30.750923, 24.072763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.986713, 30.845154, 24.212624>,  <36.204342, 30.901691, 24.296539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.986713, 30.845154, 24.212624>,  <35.624001, 30.750923, 24.072763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986713, 30.845154, 24.212624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071784, -0.730953, 0.678642,
		0.415449, -0.640478, -0.645902,
		0.906780, 0.235575, 0.349649,
		36.258747, 30.915827, 24.317518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864319, 30.127773, 24.130415>,  <35.624001, 30.750923, 24.072763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864319, 30.127773, 24.130415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.093067, 30.358074, 24.364159>,  <36.230316, 30.496254, 24.504404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.093067, 30.358074, 24.364159>,  <35.864319, 30.127773, 24.130415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093067, 30.358074, 24.364159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040670, -0.691559, 0.721174,
		0.819336, -0.436183, -0.372066,
		0.571870, 0.575752, 0.584358,
		36.264629, 30.530800, 24.539467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237144, 29.618853, 24.624386>,  <35.864319, 30.127773, 24.130415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237144, 29.618853, 24.624386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297329, 29.984207, 24.775692>,  <36.333439, 30.203421, 24.866476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297329, 29.984207, 24.775692>,  <36.237144, 29.618853, 24.624386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297329, 29.984207, 24.775692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087465, -0.393418, 0.915190,
		0.984739, -0.104614, -0.139083,
		0.150459, 0.913388, 0.378264,
		36.342468, 30.258224, 24.889172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814816, 29.528248, 25.087313>,  <36.237144, 29.618853, 24.624386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814816, 29.528248, 25.087313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604279, 29.850979, 25.194637>,  <36.477955, 30.044617, 25.259033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604279, 29.850979, 25.194637>,  <36.814816, 29.528248, 25.087313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604279, 29.850979, 25.194637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005987, -0.319071, 0.947712,
		0.850251, 0.497216, 0.172771,
		-0.526343, 0.806827, 0.268313,
		36.446377, 30.093027, 25.275131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146908, 29.937649, 25.614618>,  <36.814816, 29.528248, 25.087313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146908, 29.937649, 25.614618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756577, 30.013721, 25.657673>,  <36.522377, 30.059364, 25.683506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756577, 30.013721, 25.657673>,  <37.146908, 29.937649, 25.614618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756577, 30.013721, 25.657673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033373, -0.357079, 0.933478,
		0.215965, 0.914508, 0.342102,
		-0.975831, 0.190181, 0.107636,
		36.463829, 30.070776, 25.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137146, 30.195623, 26.273920>,  <37.146908, 29.937649, 25.614618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137146, 30.195623, 26.273920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753056, 30.116772, 26.194813>,  <36.522602, 30.069460, 26.147348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753056, 30.116772, 26.194813>,  <37.137146, 30.195623, 26.273920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753056, 30.116772, 26.194813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155472, -0.210881, 0.965069,
		-0.231950, 0.957428, 0.171845,
		-0.960223, -0.197131, -0.197768,
		36.464989, 30.057632, 26.135483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722767, 30.579367, 26.777088>,  <37.137146, 30.195623, 26.273920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722767, 30.579367, 26.777088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.489655, 30.286076, 26.636951>,  <36.349785, 30.110100, 26.552870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.489655, 30.286076, 26.636951>,  <36.722767, 30.579367, 26.777088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489655, 30.286076, 26.636951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263412, -0.237393, 0.935018,
		-0.768750, 0.637198, -0.054792,
		-0.582784, -0.733229, -0.350341,
		36.314819, 30.066107, 26.531849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250763, 30.672876, 27.132513>,  <36.722767, 30.579367, 26.777088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250763, 30.672876, 27.132513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187286, 30.312763, 26.970375>,  <36.149200, 30.096695, 26.873093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187286, 30.312763, 26.970375>,  <36.250763, 30.672876, 27.132513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187286, 30.312763, 26.970375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288579, -0.350326, 0.891063,
		-0.944213, 0.258381, -0.204208,
		-0.158695, -0.900284, -0.405346,
		36.139679, 30.042679, 26.848772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610283, 30.457026, 27.259487>,  <36.250763, 30.672876, 27.132513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610283, 30.457026, 27.259487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815186, 30.116859, 27.211506>,  <35.938126, 29.912760, 27.182718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815186, 30.116859, 27.211506>,  <35.610283, 30.457026, 27.259487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815186, 30.116859, 27.211506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197813, -0.252742, 0.947096,
		-0.835744, -0.461424, -0.297691,
		0.512252, -0.850417, -0.119952,
		35.968861, 29.861734, 27.175520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281162, 29.955067, 27.473520>,  <35.610283, 30.457026, 27.259487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281162, 29.955067, 27.473520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.648884, 29.800434, 27.502995>,  <35.869518, 29.707655, 27.520679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.648884, 29.800434, 27.502995>,  <35.281162, 29.955067, 27.473520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648884, 29.800434, 27.502995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144639, -0.157772, 0.976825,
		-0.365998, -0.908659, -0.200956,
		0.919307, -0.386583, 0.073684,
		35.924675, 29.684460, 27.525099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202038, 29.366056, 27.966656>,  <35.281162, 29.955067, 27.473520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202038, 29.366056, 27.966656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590027, 29.461163, 27.946205>,  <35.822823, 29.518227, 27.933935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590027, 29.461163, 27.946205>,  <35.202038, 29.366056, 27.966656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590027, 29.461163, 27.946205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074026, -0.088387, 0.993332,
		0.231662, -0.967292, -0.103334,
		0.969976, 0.237767, -0.051129,
		35.881020, 29.532492, 27.930866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495369, 28.876884, 28.459671>,  <35.202038, 29.366056, 27.966656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495369, 28.876884, 28.459671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.776901, 29.152924, 28.392269>,  <35.945820, 29.318546, 28.351828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.776901, 29.152924, 28.392269>,  <35.495369, 28.876884, 28.459671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776901, 29.152924, 28.392269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300299, -0.074072, 0.950965,
		0.643777, -0.719916, -0.259370,
		0.703827, 0.690098, -0.168504,
		35.988049, 29.359953, 28.341719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150162, 28.473709, 28.675747>,  <35.495369, 28.876884, 28.459671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150162, 28.473709, 28.675747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234829, 28.863747, 28.649254>,  <36.285629, 29.097769, 28.633358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.234829, 28.863747, 28.649254>,  <36.150162, 28.473709, 28.675747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234829, 28.863747, 28.649254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346778, -0.011571, 0.937876,
		0.913752, -0.221486, -0.340590,
		0.211667, 0.975095, -0.066233,
		36.298328, 29.156275, 28.629383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757584, 28.520351, 29.095030>,  <36.150162, 28.473709, 28.675747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757584, 28.520351, 29.095030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.628635, 28.898071, 29.068581>,  <36.551266, 29.124704, 29.052711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.628635, 28.898071, 29.068581>,  <36.757584, 28.520351, 29.095030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628635, 28.898071, 29.068581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379782, 0.193003, 0.904719,
		0.867088, 0.266545, -0.420847,
		-0.322373, 0.944301, -0.066121,
		36.531925, 29.181362, 29.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370590, 29.013880, 29.153168>,  <36.757584, 28.520351, 29.095030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370590, 29.013880, 29.153168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.028816, 29.180618, 29.277222>,  <36.823753, 29.280663, 29.351654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.028816, 29.180618, 29.277222>,  <37.370590, 29.013880, 29.153168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028816, 29.180618, 29.277222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401552, 0.151026, 0.903298,
		0.329700, 0.896342, -0.296428,
		-0.854432, 0.416848, 0.310135,
		36.772488, 29.305674, 29.370262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617161, 29.494486, 29.568110>,  <37.370590, 29.013880, 29.153168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617161, 29.494486, 29.568110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229946, 29.509453, 29.667305>,  <36.997616, 29.518433, 29.726822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.229946, 29.509453, 29.667305>,  <37.617161, 29.494486, 29.568110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229946, 29.509453, 29.667305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245825, -0.054333, 0.967790,
		0.049688, 0.997822, 0.043398,
		-0.968040, 0.037419, 0.247990,
		36.939533, 29.520679, 29.741701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.488861, 25.813925, 31.661812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847385, 25.938133, 31.788433>,  <26.062500, 26.012659, 31.864405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847385, 25.938133, 31.788433>,  <25.488861, 25.813925, 31.661812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847385, 25.938133, 31.788433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168638, -0.898937, 0.404320,
		0.410110, -0.309013, -0.858091,
		0.896310, 0.310522, 0.316552,
		26.116278, 26.031290, 31.883398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924200, 25.296993, 31.374294>,  <25.488861, 25.813925, 31.661812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924200, 25.296993, 31.374294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.103127, 25.473835, 31.685280>,  <26.210484, 25.579939, 31.871872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.103127, 25.473835, 31.685280>,  <25.924200, 25.296993, 31.374294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103127, 25.473835, 31.685280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297264, -0.893356, 0.336971,
		0.843529, 0.080379, -0.531035,
		0.447318, 0.442102, 0.777465,
		26.237322, 25.606466, 31.918520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493227, 24.944679, 31.372013>,  <25.924200, 25.296993, 31.374294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493227, 24.944679, 31.372013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.510012, 25.109219, 31.736217>,  <26.520082, 25.207943, 31.954741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.510012, 25.109219, 31.736217>,  <26.493227, 24.944679, 31.372013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510012, 25.109219, 31.736217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333012, -0.864963, 0.375423,
		0.941988, 0.287458, -0.173279,
		0.041961, 0.411348, 0.910512,
		26.522600, 25.232622, 32.009373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146172, 24.808010, 31.620115>,  <26.493227, 24.944679, 31.372013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146172, 24.808010, 31.620115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.942131, 24.903152, 31.950745>,  <26.819708, 24.960238, 32.149120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.942131, 24.903152, 31.950745>,  <27.146172, 24.808010, 31.620115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942131, 24.903152, 31.950745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446704, -0.747973, 0.490909,
		0.735020, 0.619646, 0.275290,
		-0.510100, 0.237855, 0.826573,
		26.789101, 24.974508, 32.198715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679623, 24.843296, 32.176502>,  <27.146172, 24.808010, 31.620115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679623, 24.843296, 32.176502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.341961, 24.788864, 32.383919>,  <27.139364, 24.756205, 32.508369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.341961, 24.788864, 32.383919>,  <27.679623, 24.843296, 32.176502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341961, 24.788864, 32.383919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436354, -0.736327, 0.517124,
		0.311448, 0.662801, 0.680952,
		-0.844154, -0.136079, 0.518544,
		27.088715, 24.748041, 32.539482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841162, 24.787649, 32.906487>,  <27.679623, 24.843296, 32.176502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841162, 24.787649, 32.906487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482365, 24.611740, 32.888580>,  <27.267086, 24.506195, 32.877838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.482365, 24.611740, 32.888580>,  <27.841162, 24.787649, 32.906487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482365, 24.611740, 32.888580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275398, -0.635171, 0.721604,
		-0.345773, 0.634947, 0.690857,
		-0.896993, -0.439772, -0.044762,
		27.213266, 24.479809, 32.875153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634178, 24.647133, 33.582283>,  <27.841162, 24.787649, 32.906487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634178, 24.647133, 33.582283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.421724, 24.405403, 33.344734>,  <27.294252, 24.260366, 33.202206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.421724, 24.405403, 33.344734>,  <27.634178, 24.647133, 33.582283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421724, 24.405403, 33.344734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082844, -0.734597, 0.673427,
		-0.843226, 0.308483, 0.440236,
		-0.531137, -0.604322, -0.593876,
		27.262383, 24.224106, 33.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125145, 24.435591, 33.971207>,  <27.634178, 24.647133, 33.582283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125145, 24.435591, 33.971207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.160572, 24.165619, 33.678188>,  <27.181828, 24.003635, 33.502377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.160572, 24.165619, 33.678188>,  <27.125145, 24.435591, 33.971207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160572, 24.165619, 33.678188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204631, -0.707423, 0.676520,
		-0.974824, -0.209819, 0.075457,
		0.088566, -0.674928, -0.732549,
		27.187141, 23.963140, 33.458424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743744, 23.991692, 34.276272>,  <27.125145, 24.435591, 33.971207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743744, 23.991692, 34.276272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.946968, 23.801998, 33.988667>,  <27.068903, 23.688183, 33.816105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.946968, 23.801998, 33.988667>,  <26.743744, 23.991692, 34.276272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946968, 23.801998, 33.988667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065657, -0.811026, 0.581314,
		-0.858817, -0.342549, -0.380912,
		0.508058, -0.474232, -0.719013,
		27.099386, 23.659729, 33.772961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543854, 23.353680, 34.344887>,  <26.743744, 23.991692, 34.276272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543854, 23.353680, 34.344887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.877245, 23.306789, 34.128899>,  <27.077280, 23.278656, 33.999306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.877245, 23.306789, 34.128899>,  <26.543854, 23.353680, 34.344887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877245, 23.306789, 34.128899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184927, -0.861701, 0.472519,
		-0.520686, -0.493690, -0.696532,
		0.833480, -0.117226, -0.539972,
		27.127289, 23.271622, 33.966908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500710, 22.748707, 34.063110>,  <26.543854, 23.353680, 34.344887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500710, 22.748707, 34.063110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.890026, 22.835281, 34.093719>,  <27.123617, 22.887226, 34.112083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.890026, 22.835281, 34.093719>,  <26.500710, 22.748707, 34.063110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890026, 22.835281, 34.093719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172584, -0.909665, 0.377789,
		0.151378, -0.354493, -0.922724,
		0.973293, 0.216437, 0.076523,
		27.182014, 22.900213, 34.116676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815157, 22.089394, 33.977440>,  <26.500710, 22.748707, 34.063110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815157, 22.089394, 33.977440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.087591, 22.321663, 34.155849>,  <27.251051, 22.461025, 34.262897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.087591, 22.321663, 34.155849>,  <26.815157, 22.089394, 33.977440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087591, 22.321663, 34.155849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344446, -0.791638, 0.504645,
		0.646126, -0.190073, -0.739184,
		0.681086, 0.580673, 0.446028,
		27.291918, 22.495865, 34.289658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175716, 21.629160, 34.413944>,  <26.815157, 22.089394, 33.977440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175716, 21.629160, 34.413944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330336, 21.974007, 34.544994>,  <27.423107, 22.180914, 34.623623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.330336, 21.974007, 34.544994>,  <27.175716, 21.629160, 34.413944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330336, 21.974007, 34.544994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401951, -0.477203, 0.781481,
		0.830071, -0.170390, -0.530989,
		0.386547, 0.862116, 0.327624,
		27.446301, 22.232641, 34.643280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941683, 21.653725, 34.300945>,  <27.175716, 21.629160, 34.413944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941683, 21.653725, 34.300945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770800, 21.844173, 34.608398>,  <27.668270, 21.958443, 34.792870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770800, 21.844173, 34.608398>,  <27.941683, 21.653725, 34.300945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770800, 21.844173, 34.608398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346543, -0.698970, 0.625578,
		0.835106, 0.533616, 0.133607,
		-0.427206, 0.476124, 0.768636,
		27.642637, 21.987011, 34.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891525, 20.856983, 34.109146>,  <27.941683, 21.653725, 34.300945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891525, 20.856983, 34.109146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.102877, 20.524025, 34.042286>,  <28.229687, 20.324251, 34.002171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.102877, 20.524025, 34.042286>,  <27.891525, 20.856983, 34.109146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102877, 20.524025, 34.042286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096217, 0.254312, -0.962324,
		0.843540, 0.492388, 0.214464,
		0.528377, -0.832394, -0.167147,
		28.261391, 20.274307, 33.992142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621986, 21.034491, 33.950188>,  <27.891525, 20.856983, 34.109146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621986, 21.034491, 33.950188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.544081, 20.682507, 33.776875>,  <28.497337, 20.471315, 33.672886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.544081, 20.682507, 33.776875>,  <28.621986, 21.034491, 33.950188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544081, 20.682507, 33.776875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212406, 0.393424, -0.894484,
		0.957575, -0.266247, 0.110283,
		-0.194765, -0.879960, -0.433285,
		28.485651, 20.418518, 33.646889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016689, 20.982061, 33.441467>,  <28.621986, 21.034491, 33.950188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016689, 20.982061, 33.441467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.734047, 20.719612, 33.335480>,  <28.564461, 20.562143, 33.271889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.734047, 20.719612, 33.335480>,  <29.016689, 20.982061, 33.441467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734047, 20.719612, 33.335480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022872, 0.395441, -0.918206,
		0.707236, -0.642751, -0.294429,
		-0.706607, -0.656123, -0.264969,
		28.522064, 20.522776, 33.255989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179817, 20.669477, 32.776203>,  <29.016689, 20.982061, 33.441467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179817, 20.669477, 32.776203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.781153, 20.637398, 32.770119>,  <28.541954, 20.618151, 32.766468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.781153, 20.637398, 32.770119>,  <29.179817, 20.669477, 32.776203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781153, 20.637398, 32.770119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015329, 0.366950, -0.930115,
		0.080175, -0.926777, -0.366954,
		-0.996663, -0.080197, -0.015214,
		28.482153, 20.613338, 32.765556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955309, 20.592371, 32.036304>,  <29.179817, 20.669477, 32.776203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955309, 20.592371, 32.036304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.585011, 20.643478, 32.178669>,  <28.362831, 20.674143, 32.264088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.585011, 20.643478, 32.178669>,  <28.955309, 20.592371, 32.036304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585011, 20.643478, 32.178669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265688, 0.449980, -0.852601,
		-0.269088, -0.883852, -0.382620,
		-0.925744, 0.127767, 0.355912,
		28.307287, 20.681808, 32.285442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529474, 20.376425, 31.501713>,  <28.955309, 20.592371, 32.036304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529474, 20.376425, 31.501713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.332993, 20.638836, 31.730919>,  <28.215103, 20.796282, 31.868443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.332993, 20.638836, 31.730919>,  <28.529474, 20.376425, 31.501713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332993, 20.638836, 31.730919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386332, 0.425519, -0.818340,
		-0.780682, -0.623347, 0.044427,
		-0.491206, 0.656027, 0.573014,
		28.185631, 20.835644, 31.902822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967457, 20.525251, 31.203232>,  <28.529474, 20.376425, 31.501713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967457, 20.525251, 31.203232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.984102, 20.842827, 31.445862>,  <27.994089, 21.033371, 31.591440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.984102, 20.842827, 31.445862>,  <27.967457, 20.525251, 31.203232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984102, 20.842827, 31.445862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399972, 0.569569, -0.718062,
		-0.915582, -0.212731, 0.341255,
		0.041615, 0.793937, 0.606574,
		27.996586, 21.081009, 31.627834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489119, 20.973789, 30.982973>,  <27.967457, 20.525251, 31.203232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489119, 20.973789, 30.982973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.724638, 21.213566, 31.199856>,  <27.865950, 21.357431, 31.329985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.724638, 21.213566, 31.199856>,  <27.489119, 20.973789, 30.982973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724638, 21.213566, 31.199856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153006, 0.741346, -0.653449,
		-0.793667, 0.301788, 0.528221,
		0.588797, 0.599442, 0.542206,
		27.901278, 21.393398, 31.362518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113150, 21.645214, 30.927456>,  <27.489119, 20.973789, 30.982973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113150, 21.645214, 30.927456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493151, 21.726349, 31.022408>,  <27.721151, 21.775030, 31.079378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493151, 21.726349, 31.022408>,  <27.113150, 21.645214, 30.927456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493151, 21.726349, 31.022408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058538, 0.862479, -0.502696,
		-0.306701, 0.463668, 0.831232,
		0.950004, 0.202835, 0.237381,
		27.778152, 21.787199, 31.093622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118183, 22.379023, 31.127453>,  <27.113150, 21.645214, 30.927456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118183, 22.379023, 31.127453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493694, 22.277935, 31.033787>,  <27.719000, 22.217281, 30.977587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493694, 22.277935, 31.033787>,  <27.118183, 22.379023, 31.127453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493694, 22.277935, 31.033787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145117, 0.906477, -0.396535,
		0.312476, 0.338276, 0.887653,
		0.938776, -0.252721, -0.234163,
		27.775328, 22.202118, 30.963537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452906, 22.891127, 31.450111>,  <27.118183, 22.379023, 31.127453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452906, 22.891127, 31.450111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.636547, 22.732834, 31.131962>,  <27.746731, 22.637857, 30.941072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.636547, 22.732834, 31.131962>,  <27.452906, 22.891127, 31.450111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636547, 22.732834, 31.131962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101567, 0.912816, -0.395537,
		0.882559, 0.100807, 0.459269,
		0.459101, -0.395732, -0.795376,
		27.774277, 22.614115, 30.893349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844536, 23.428953, 31.227005>,  <27.452906, 22.891127, 31.450111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844536, 23.428953, 31.227005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.865795, 23.173290, 30.920109>,  <27.878550, 23.019894, 30.735971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.865795, 23.173290, 30.920109>,  <27.844536, 23.428953, 31.227005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865795, 23.173290, 30.920109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054377, 0.765333, -0.641334,
		0.997105, 0.075804, 0.005919,
		0.053146, -0.639156, -0.767239,
		27.881739, 22.981544, 30.689938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371449, 23.693312, 30.737068>,  <27.844536, 23.428953, 31.227005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371449, 23.693312, 30.737068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.115318, 23.476345, 30.519531>,  <27.961639, 23.346165, 30.389009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.115318, 23.476345, 30.519531>,  <28.371449, 23.693312, 30.737068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115318, 23.476345, 30.519531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149209, 0.606708, -0.780796,
		0.753472, -0.581110, -0.307557,
		-0.640326, -0.542417, -0.543844,
		27.923220, 23.313620, 30.356379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781725, 23.609245, 30.132832>,  <28.371449, 23.693312, 30.737068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781725, 23.609245, 30.132832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.392811, 23.552277, 30.058670>,  <28.159462, 23.518095, 30.014174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.392811, 23.552277, 30.058670>,  <28.781725, 23.609245, 30.132832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392811, 23.552277, 30.058670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036261, 0.691561, -0.721408,
		0.230963, -0.708138, -0.667231,
		-0.972287, -0.142423, -0.185403,
		28.101126, 23.509550, 30.003050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350283, 23.574318, 29.514641>,  <28.781725, 23.609245, 30.132832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350283, 23.574318, 29.514641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732014, 23.689667, 29.483395>,  <29.961052, 23.758875, 29.464647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.732014, 23.689667, 29.483395>,  <29.350283, 23.574318, 29.514641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732014, 23.689667, 29.483395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285191, -0.801369, 0.525808,
		0.089028, -0.524070, -0.847009,
		0.954327, 0.288371, -0.078116,
		30.018312, 23.776178, 29.459959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769541, 22.999771, 29.300493>,  <29.350283, 23.574318, 29.514641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769541, 22.999771, 29.300493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035130, 23.241421, 29.476753>,  <30.194483, 23.386410, 29.582510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035130, 23.241421, 29.476753>,  <29.769541, 22.999771, 29.300493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035130, 23.241421, 29.476753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348484, -0.771390, 0.532463,
		0.661588, -0.199981, -0.722709,
		0.663973, 0.604124, 0.440652,
		30.234322, 23.422657, 29.608950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361219, 22.593309, 29.312038>,  <29.769541, 22.999771, 29.300493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361219, 22.593309, 29.312038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416094, 22.879955, 29.585575>,  <30.449018, 23.051943, 29.749697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416094, 22.879955, 29.585575>,  <30.361219, 22.593309, 29.312038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416094, 22.879955, 29.585575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383724, -0.674912, 0.630278,
		0.913201, 0.175943, -0.367570,
		0.137184, 0.716616, 0.683844,
		30.457249, 23.094940, 29.790728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063051, 22.547352, 29.581842>,  <30.361219, 22.593309, 29.312038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063051, 22.547352, 29.581842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852615, 22.757374, 29.849438>,  <30.726355, 22.883387, 30.009995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.852615, 22.757374, 29.849438>,  <31.063051, 22.547352, 29.581842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852615, 22.757374, 29.849438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431848, -0.512742, 0.742026,
		0.732624, 0.679273, 0.043004,
		-0.526089, 0.525056, 0.668990,
		30.694788, 22.914890, 30.050135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613718, 22.634851, 30.064041>,  <31.063051, 22.547352, 29.581842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613718, 22.634851, 30.064041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.276054, 22.687061, 30.272026>,  <31.073456, 22.718388, 30.396818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.276054, 22.687061, 30.272026>,  <31.613718, 22.634851, 30.064041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276054, 22.687061, 30.272026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431638, -0.409739, 0.803618,
		0.317942, 0.902816, 0.289545,
		-0.844157, 0.130525, 0.519964,
		31.022808, 22.726219, 30.428015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772823, 23.020403, 30.723143>,  <31.613718, 22.634851, 30.064041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772823, 23.020403, 30.723143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424799, 22.828056, 30.766529>,  <31.215984, 22.712648, 30.792561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.424799, 22.828056, 30.766529>,  <31.772823, 23.020403, 30.723143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424799, 22.828056, 30.766529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273691, -0.288227, 0.917615,
		-0.409988, 0.828065, 0.382384,
		-0.870059, -0.480867, 0.108464,
		31.163782, 22.683796, 30.799068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610653, 23.086393, 31.485867>,  <31.772823, 23.020403, 30.723143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610653, 23.086393, 31.485867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372753, 22.789669, 31.361938>,  <31.230013, 22.611635, 31.287580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372753, 22.789669, 31.361938>,  <31.610653, 23.086393, 31.485867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372753, 22.789669, 31.361938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018205, -0.372867, 0.927706,
		-0.803704, 0.557395, 0.208258,
		-0.594751, -0.741809, -0.309822,
		31.194328, 22.567125, 31.268991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531389, 23.529289, 31.970873>,  <31.610653, 23.086393, 31.485867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531389, 23.529289, 31.970873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874514, 23.670689, 32.120110>,  <32.080387, 23.755529, 32.209652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874514, 23.670689, 32.120110>,  <31.531389, 23.529289, 31.970873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874514, 23.670689, 32.120110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007919, 0.716734, -0.697301,
		-0.513905, 0.601107, 0.612023,
		0.857811, 0.353500, 0.373093,
		32.131855, 23.776739, 32.232037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401299, 24.313940, 32.135162>,  <31.531389, 23.529289, 31.970873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401299, 24.313940, 32.135162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797190, 24.262802, 32.109558>,  <32.034725, 24.232121, 32.094196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797190, 24.262802, 32.109558>,  <31.401299, 24.313940, 32.135162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797190, 24.262802, 32.109558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051900, 0.738435, -0.672324,
		0.133219, 0.662095, 0.737484,
		0.989727, -0.127842, -0.064011,
		32.094109, 24.224449, 32.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666964, 24.875834, 32.465912>,  <31.401299, 24.313940, 32.135162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666964, 24.875834, 32.465912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928850, 24.739880, 32.195854>,  <32.085983, 24.658308, 32.033817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928850, 24.739880, 32.195854>,  <31.666964, 24.875834, 32.465912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928850, 24.739880, 32.195854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024369, 0.883246, -0.468277,
		0.755482, 0.323041, 0.569992,
		0.654716, -0.339885, -0.675148,
		32.125263, 24.637915, 31.993309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056477, 25.399271, 32.345684>,  <31.666964, 24.875834, 32.465912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056477, 25.399271, 32.345684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154369, 25.177341, 32.027622>,  <32.213104, 25.044184, 31.836784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154369, 25.177341, 32.027622>,  <32.056477, 25.399271, 32.345684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154369, 25.177341, 32.027622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105803, 0.799917, -0.590710,
		0.963802, 0.228694, 0.137060,
		0.244728, -0.554826, -0.795158,
		32.227787, 25.010893, 31.789074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481239, 25.806540, 31.974789>,  <32.056477, 25.399271, 32.345684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481239, 25.806540, 31.974789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332920, 25.545082, 31.710892>,  <32.243927, 25.388206, 31.552553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332920, 25.545082, 31.710892>,  <32.481239, 25.806540, 31.974789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332920, 25.545082, 31.710892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140152, 0.741629, -0.656006,
		0.918078, -0.150781, -0.366603,
		-0.370796, -0.653645, -0.659741,
		32.221680, 25.348989, 31.512970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741093, 26.028610, 31.346872>,  <32.481239, 25.806540, 31.974789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741093, 26.028610, 31.346872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454082, 25.780914, 31.219307>,  <32.281876, 25.632298, 31.142767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454082, 25.780914, 31.219307>,  <32.741093, 26.028610, 31.346872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454082, 25.780914, 31.219307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264378, 0.665713, -0.697804,
		0.644404, -0.416384, -0.641380,
		-0.717529, -0.619235, -0.318905,
		32.238827, 25.595142, 31.123632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857864, 25.873543, 30.646896>,  <32.741093, 26.028610, 31.346872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857864, 25.873543, 30.646896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463150, 25.819862, 30.683216>,  <32.226322, 25.787655, 30.705008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463150, 25.819862, 30.683216>,  <32.857864, 25.873543, 30.646896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463150, 25.819862, 30.683216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154873, 0.616456, -0.772008,
		0.047631, -0.775868, -0.629094,
		-0.986786, -0.134201, 0.090799,
		32.167114, 25.779602, 30.710455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.177046, 24.152948, 36.291870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830360, 24.031170, 36.133820>,  <29.622349, 23.958103, 36.038990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830360, 24.031170, 36.133820>,  <30.177046, 24.152948, 36.291870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830360, 24.031170, 36.133820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008207, 0.800731, -0.598968,
		0.498740, -0.515891, -0.696502,
		-0.866712, -0.304446, -0.395122,
		29.570347, 23.939837, 36.015282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155563, 24.272821, 35.506954>,  <30.177046, 24.152948, 36.291870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155563, 24.272821, 35.506954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777569, 24.270828, 35.637783>,  <29.550772, 24.269632, 35.716278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.777569, 24.270828, 35.637783>,  <30.155563, 24.272821, 35.506954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777569, 24.270828, 35.637783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225915, 0.733052, -0.641559,
		-0.236561, -0.680155, -0.693851,
		-0.944988, -0.004983, 0.327068,
		29.494072, 24.269333, 35.735905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854090, 24.570398, 34.952122>,  <30.155563, 24.272821, 35.506954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854090, 24.570398, 34.952122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559130, 24.597733, 35.220917>,  <29.382154, 24.614134, 35.382195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559130, 24.597733, 35.220917>,  <29.854090, 24.570398, 34.952122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559130, 24.597733, 35.220917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372610, 0.788647, -0.489078,
		-0.563385, -0.611037, -0.556087,
		-0.737400, 0.068335, 0.671990,
		29.337910, 24.618233, 35.422512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152727, 24.523441, 34.582790>,  <29.854090, 24.570398, 34.952122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152727, 24.523441, 34.582790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079739, 24.718967, 34.924026>,  <29.035946, 24.836283, 35.128769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.079739, 24.718967, 34.924026>,  <29.152727, 24.523441, 34.582790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079739, 24.718967, 34.924026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450854, 0.729461, -0.514410,
		-0.873748, -0.478485, 0.087278,
		-0.182472, 0.488815, 0.853091,
		29.024998, 24.865612, 35.179955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400383, 24.698301, 34.597565>,  <29.152727, 24.523441, 34.582790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400383, 24.698301, 34.597565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.606073, 24.948090, 34.832718>,  <28.729488, 25.097963, 34.973808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.606073, 24.948090, 34.832718>,  <28.400383, 24.698301, 34.597565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606073, 24.948090, 34.832718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420364, 0.780989, -0.461899,
		-0.747572, -0.009603, 0.664111,
		0.514228, 0.624472, 0.587882,
		28.760342, 25.135431, 35.009083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862804, 25.164104, 34.771576>,  <28.400383, 24.698301, 34.597565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862804, 25.164104, 34.771576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.222313, 25.331089, 34.825142>,  <28.438019, 25.431280, 34.857281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.222313, 25.331089, 34.825142>,  <27.862804, 25.164104, 34.771576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222313, 25.331089, 34.825142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374613, 0.889952, -0.260096,
		-0.227756, 0.183602, 0.956252,
		0.898773, 0.417463, 0.133912,
		28.491945, 25.456327, 34.865314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739117, 25.777208, 35.008995>,  <27.862804, 25.164104, 34.771576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739117, 25.777208, 35.008995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.123625, 25.845627, 34.922554>,  <28.354330, 25.886679, 34.870689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.123625, 25.845627, 34.922554>,  <27.739117, 25.777208, 35.008995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123625, 25.845627, 34.922554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237656, 0.911507, -0.335669,
		0.139568, 0.374028, 0.916855,
		0.961270, 0.171048, -0.216107,
		28.412006, 25.896942, 34.857723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670839, 26.470938, 35.057411>,  <27.739117, 25.777208, 35.008995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670839, 26.470938, 35.057411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.005781, 26.406570, 34.848434>,  <28.206747, 26.367950, 34.723049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.005781, 26.406570, 34.848434>,  <27.670839, 26.470938, 35.057411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005781, 26.406570, 34.848434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175229, 0.826254, -0.535349,
		0.517815, 0.539824, 0.663670,
		0.837355, -0.160918, -0.522439,
		28.256987, 26.358295, 34.691704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861736, 27.155455, 34.911140>,  <27.670839, 26.470938, 35.057411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861736, 27.155455, 34.911140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.095182, 26.943459, 34.665051>,  <28.235250, 26.816261, 34.517395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.095182, 26.943459, 34.665051>,  <27.861736, 27.155455, 34.911140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095182, 26.943459, 34.665051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133645, 0.684619, -0.716544,
		0.800957, 0.500409, 0.328724,
		0.583616, -0.529989, -0.615227,
		28.270267, 26.784462, 34.480484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417465, 27.606695, 34.887669>,  <27.861736, 27.155455, 34.911140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417465, 27.606695, 34.887669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.401175, 27.352192, 34.579510>,  <28.391399, 27.199490, 34.394615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.401175, 27.352192, 34.579510>,  <28.417465, 27.606695, 34.887669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401175, 27.352192, 34.579510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044450, 0.769122, -0.637555,
		0.998181, -0.060209, -0.003042,
		-0.040726, -0.636260, -0.770399,
		28.388956, 27.161314, 34.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967163, 27.693949, 34.407455>,  <28.417465, 27.606695, 34.887669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967163, 27.693949, 34.407455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.721554, 27.508232, 34.152142>,  <28.574188, 27.396803, 33.998955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.721554, 27.508232, 34.152142>,  <28.967163, 27.693949, 34.407455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721554, 27.508232, 34.152142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187905, 0.699446, -0.689541,
		0.766595, -0.543331, -0.342234,
		-0.614023, -0.464291, -0.638286,
		28.537346, 27.368946, 33.960655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291862, 27.834383, 33.728291>,  <28.967163, 27.693949, 34.407455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291862, 27.834383, 33.728291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929703, 27.701626, 33.622387>,  <28.712406, 27.621971, 33.558846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.929703, 27.701626, 33.622387>,  <29.291862, 27.834383, 33.728291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929703, 27.701626, 33.622387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083211, 0.750231, -0.655918,
		0.416323, -0.571839, -0.706878,
		-0.905401, -0.331893, -0.264755,
		28.658083, 27.602058, 33.542961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565384, 27.269943, 33.360279>,  <29.291862, 27.834383, 33.728291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565384, 27.269943, 33.360279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901213, 27.364201, 33.164486>,  <30.102709, 27.420755, 33.047009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.901213, 27.364201, 33.164486>,  <29.565384, 27.269943, 33.360279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901213, 27.364201, 33.164486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446836, -0.811986, 0.375522,
		-0.308965, -0.533996, -0.787013,
		0.839571, 0.235642, -0.489484,
		30.153084, 27.434893, 33.017639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757408, 26.683504, 33.080044>,  <29.565384, 27.269943, 33.360279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757408, 26.683504, 33.080044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081415, 26.916943, 33.102970>,  <30.275820, 27.057005, 33.116726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081415, 26.916943, 33.102970>,  <29.757408, 26.683504, 33.080044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081415, 26.916943, 33.102970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488141, -0.725219, 0.485568,
		0.324944, -0.365340, -0.872318,
		0.810018, 0.583596, 0.057318,
		30.324421, 27.092022, 33.120167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237883, 26.301626, 32.809818>,  <29.757408, 26.683504, 33.080044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237883, 26.301626, 32.809818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435566, 26.569809, 33.031174>,  <30.554176, 26.730719, 33.163986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.435566, 26.569809, 33.031174>,  <30.237883, 26.301626, 32.809818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435566, 26.569809, 33.031174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516767, -0.738455, 0.433170,
		0.699077, 0.071898, -0.711422,
		0.494209, 0.670459, 0.553391,
		30.583828, 26.770947, 33.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953634, 25.992298, 32.828091>,  <30.237883, 26.301626, 32.809818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953634, 25.992298, 32.828091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.907091, 26.267349, 33.114761>,  <30.879166, 26.432381, 33.286766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.907091, 26.267349, 33.114761>,  <30.953634, 25.992298, 32.828091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907091, 26.267349, 33.114761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644846, -0.496510, 0.581078,
		0.755404, 0.529761, -0.385641,
		-0.116358, 0.687628, 0.716679,
		30.872183, 26.473637, 33.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625212, 26.166481, 33.078136>,  <30.953634, 25.992298, 32.828091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625212, 26.166481, 33.078136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.372158, 26.294846, 33.360069>,  <31.220325, 26.371864, 33.529228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.372158, 26.294846, 33.360069>,  <31.625212, 26.166481, 33.078136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372158, 26.294846, 33.360069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553062, -0.449870, 0.701241,
		0.542119, 0.833446, 0.107120,
		-0.632636, 0.320912, 0.704831,
		31.182367, 26.391119, 33.571518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075809, 26.360958, 33.606419>,  <31.625212, 26.166481, 33.078136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075809, 26.360958, 33.606419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.717995, 26.326756, 33.781914>,  <31.503305, 26.306234, 33.887211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.717995, 26.326756, 33.781914>,  <32.075809, 26.360958, 33.606419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717995, 26.326756, 33.781914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415952, -0.518627, 0.747000,
		0.163667, 0.850714, 0.499499,
		-0.894537, -0.085509, 0.438738,
		31.449633, 26.301104, 33.913536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149723, 26.639517, 34.270477>,  <32.075809, 26.360958, 33.606419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149723, 26.639517, 34.270477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839289, 26.388718, 34.243465>,  <31.653027, 26.238237, 34.227257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839289, 26.388718, 34.243465>,  <32.149723, 26.639517, 34.270477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839289, 26.388718, 34.243465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429333, -0.603764, 0.671671,
		-0.461908, 0.492284, 0.737765,
		-0.776089, -0.626997, -0.067530,
		31.606462, 26.200619, 34.223206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061096, 26.521582, 35.010101>,  <32.149723, 26.639517, 34.270477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061096, 26.521582, 35.010101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876135, 26.220081, 34.823318>,  <31.765158, 26.039181, 34.711250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876135, 26.220081, 34.823318>,  <32.061096, 26.521582, 35.010101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876135, 26.220081, 34.823318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277187, -0.623126, 0.731356,
		-0.842230, 0.208748, 0.497064,
		-0.462403, -0.753750, -0.466954,
		31.737413, 25.993956, 34.683231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807829, 26.145540, 35.501568>,  <32.061096, 26.521582, 35.010101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807829, 26.145540, 35.501568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773375, 25.895390, 35.191345>,  <31.752703, 25.745298, 35.005211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.773375, 25.895390, 35.191345>,  <31.807829, 26.145540, 35.501568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773375, 25.895390, 35.191345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277993, -0.762616, 0.584070,
		-0.956714, -0.165290, 0.239538,
		-0.086135, -0.625377, -0.775554,
		31.747534, 25.707777, 34.958679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471533, 25.496490, 35.743603>,  <31.807829, 26.145540, 35.501568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471533, 25.496490, 35.743603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.683241, 25.404011, 35.417065>,  <31.810265, 25.348524, 35.221142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.683241, 25.404011, 35.417065>,  <31.471533, 25.496490, 35.743603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683241, 25.404011, 35.417065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465123, -0.725635, 0.507065,
		-0.709599, -0.648076, -0.276525,
		0.529273, -0.231194, -0.816345,
		31.842022, 25.334652, 35.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467203, 24.842411, 35.801239>,  <31.471533, 25.496490, 35.743603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467203, 24.842411, 35.801239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771479, 24.910873, 35.550781>,  <31.954044, 24.951950, 35.400505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.771479, 24.910873, 35.550781>,  <31.467203, 24.842411, 35.801239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771479, 24.910873, 35.550781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488152, -0.786645, 0.378016,
		-0.427854, -0.593207, -0.681943,
		0.760689, 0.171157, -0.626145,
		31.999685, 24.962221, 35.362938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664528, 24.220537, 35.508347>,  <31.467203, 24.842411, 35.801239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664528, 24.220537, 35.508347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995890, 24.440216, 35.464291>,  <32.194706, 24.572023, 35.437859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995890, 24.440216, 35.464291>,  <31.664528, 24.220537, 35.508347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995890, 24.440216, 35.464291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557683, -0.790320, 0.253741,
		0.052307, -0.271624, -0.960981,
		0.828404, 0.549195, -0.110141,
		32.244411, 24.604975, 35.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137024, 23.736591, 35.184902>,  <31.664528, 24.220537, 35.508347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137024, 23.736591, 35.184902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388088, 24.023872, 35.305054>,  <32.538727, 24.196241, 35.377144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388088, 24.023872, 35.305054>,  <32.137024, 23.736591, 35.184902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388088, 24.023872, 35.305054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706588, -0.687534, 0.167423,
		0.326764, 0.107160, -0.939011,
		0.627661, 0.718202, 0.300379,
		32.576385, 24.239332, 35.395168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726494, 23.723967, 34.739349>,  <32.137024, 23.736591, 35.184902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726494, 23.723967, 34.739349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825733, 23.863316, 35.100922>,  <32.885277, 23.946924, 35.317863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825733, 23.863316, 35.100922>,  <32.726494, 23.723967, 34.739349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825733, 23.863316, 35.100922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665414, -0.739426, 0.102339,
		0.704039, 0.576096, -0.415263,
		0.248099, 0.348372, 0.903927,
		32.900162, 23.967827, 35.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186562, 23.276489, 35.154072>,  <32.726494, 23.723967, 34.739349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186562, 23.276489, 35.154072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156425, 22.929996, 34.956501>,  <33.138344, 22.722101, 34.837959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.156425, 22.929996, 34.956501>,  <33.186562, 23.276489, 35.154072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156425, 22.929996, 34.956501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205513, 0.498190, -0.842361,
		0.975750, 0.038046, -0.215555,
		-0.075339, -0.866233, -0.493927,
		33.133823, 22.670126, 34.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410999, 23.458496, 34.506691>,  <33.186562, 23.276489, 35.154072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410999, 23.458496, 34.506691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217113, 23.116741, 34.431778>,  <33.100784, 22.911688, 34.386829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217113, 23.116741, 34.431778>,  <33.410999, 23.458496, 34.506691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217113, 23.116741, 34.431778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224802, 0.328611, -0.917321,
		0.845291, -0.402536, -0.351350,
		-0.484712, -0.854389, -0.187281,
		33.071701, 22.860424, 34.375595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733753, 23.216936, 33.927876>,  <33.410999, 23.458496, 34.506691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733753, 23.216936, 33.927876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356895, 23.083679, 33.942757>,  <33.130783, 23.003725, 33.951687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356895, 23.083679, 33.942757>,  <33.733753, 23.216936, 33.927876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356895, 23.083679, 33.942757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178418, 0.404390, -0.897015,
		0.283788, -0.851754, -0.440431,
		-0.942142, -0.333143, 0.037208,
		33.074253, 22.983736, 33.953918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556328, 22.935427, 33.327404>,  <33.733753, 23.216936, 33.927876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556328, 22.935427, 33.327404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187992, 22.962360, 33.481037>,  <32.966991, 22.978521, 33.573219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.187992, 22.962360, 33.481037>,  <33.556328, 22.935427, 33.327404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187992, 22.962360, 33.481037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349640, 0.293535, -0.889713,
		-0.172653, -0.953574, -0.246755,
		-0.920838, 0.067336, 0.384087,
		32.911739, 22.982561, 33.596264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137806, 22.587976, 32.875977>,  <33.556328, 22.935427, 33.327404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137806, 22.587976, 32.875977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903259, 22.828506, 33.093082>,  <32.762531, 22.972824, 33.223347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903259, 22.828506, 33.093082>,  <33.137806, 22.587976, 32.875977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903259, 22.828506, 33.093082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347419, 0.418598, -0.839092,
		-0.731765, -0.680577, -0.036539,
		-0.586362, 0.601324, 0.542761,
		32.727352, 23.008904, 33.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524311, 22.522137, 32.538242>,  <33.137806, 22.587976, 32.875977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524311, 22.522137, 32.538242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.484470, 22.868336, 32.734604>,  <32.460567, 23.076056, 32.852421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.484470, 22.868336, 32.734604>,  <32.524311, 22.522137, 32.538242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484470, 22.868336, 32.734604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314357, 0.440722, -0.840800,
		-0.944066, -0.238064, 0.228180,
		-0.099600, 0.865500, 0.490908,
		32.454590, 23.127985, 32.881878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986885, 22.832048, 32.328606>,  <32.524311, 22.522137, 32.538242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986885, 22.832048, 32.328606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.191689, 23.142422, 32.475998>,  <32.314571, 23.328646, 32.564434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.191689, 23.142422, 32.475998>,  <31.986885, 22.832048, 32.328606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191689, 23.142422, 32.475998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265397, 0.550883, -0.791260,
		-0.816954, 0.307337, 0.487986,
		0.512007, 0.775933, 0.368479,
		32.345291, 23.375202, 32.586540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179867, 22.867395, 32.149796>,  <31.986885, 22.832048, 32.328606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179867, 22.867395, 32.149796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.139149, 22.569561, 31.885910>,  <31.114717, 22.390860, 31.727577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.139149, 22.569561, 31.885910>,  <31.179867, 22.867395, 32.149796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139149, 22.569561, 31.885910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105553, -0.651334, 0.751414,
		-0.989190, 0.146126, -0.012291,
		-0.101796, -0.744588, -0.659716,
		31.108610, 22.346184, 31.687996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561235, 22.529228, 32.234749>,  <31.179867, 22.867395, 32.149796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561235, 22.529228, 32.234749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788126, 22.246540, 32.065609>,  <30.924261, 22.076927, 31.964127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788126, 22.246540, 32.065609>,  <30.561235, 22.529228, 32.234749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788126, 22.246540, 32.065609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345944, -0.670406, 0.656414,
		-0.747379, -0.226057, -0.624759,
		0.567229, -0.706722, -0.422844,
		30.958294, 22.034523, 31.938755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237400, 22.017366, 32.462841>,  <30.561235, 22.529228, 32.234749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237400, 22.017366, 32.462841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572439, 21.847260, 32.325684>,  <30.773462, 21.745195, 32.243389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.572439, 21.847260, 32.325684>,  <30.237400, 22.017366, 32.462841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572439, 21.847260, 32.325684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088683, -0.725208, 0.682794,
		-0.539042, -0.541497, -0.645147,
		0.837597, -0.425268, -0.342896,
		30.823719, 21.719679, 32.222816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080067, 21.378553, 32.362152>,  <30.237400, 22.017366, 32.462841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080067, 21.378553, 32.362152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477102, 21.365616, 32.409000>,  <30.715324, 21.357853, 32.437111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.477102, 21.365616, 32.409000>,  <30.080067, 21.378553, 32.362152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477102, 21.365616, 32.409000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106568, -0.694804, 0.711260,
		0.058374, -0.718471, -0.693103,
		0.992590, -0.032344, 0.117124,
		30.774879, 21.355913, 32.444138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300552, 20.617491, 32.328144>,  <30.080067, 21.378553, 32.362152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300552, 20.617491, 32.328144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608702, 20.809250, 32.496288>,  <30.793592, 20.924305, 32.597176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608702, 20.809250, 32.496288>,  <30.300552, 20.617491, 32.328144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608702, 20.809250, 32.496288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063552, -0.713742, 0.697520,
		0.634416, -0.510637, -0.580316,
		0.770375, 0.479398, 0.420357,
		30.839815, 20.953070, 32.622395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704330, 20.065632, 32.630806>,  <30.300552, 20.617491, 32.328144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704330, 20.065632, 32.630806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.837753, 20.379898, 32.839218>,  <30.917807, 20.568457, 32.964264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.837753, 20.379898, 32.839218>,  <30.704330, 20.065632, 32.630806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837753, 20.379898, 32.839218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071946, -0.572283, 0.816894,
		0.939980, -0.234996, -0.247415,
		0.333558, 0.785665, 0.521028,
		30.937820, 20.615597, 32.995525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263435, 19.810980, 33.022331>,  <30.704330, 20.065632, 32.630806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263435, 19.810980, 33.022331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153225, 20.131138, 33.235291>,  <31.087099, 20.323233, 33.363068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153225, 20.131138, 33.235291>,  <31.263435, 19.810980, 33.022331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153225, 20.131138, 33.235291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233823, -0.481403, 0.844736,
		0.932423, 0.357234, -0.054512,
		-0.275526, 0.800397, 0.532401,
		31.070568, 20.371258, 33.395012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733398, 19.860834, 33.570133>,  <31.263435, 19.810980, 33.022331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733398, 19.860834, 33.570133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404499, 20.059860, 33.680653>,  <31.207159, 20.179276, 33.746964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404499, 20.059860, 33.680653>,  <31.733398, 19.860834, 33.570133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404499, 20.059860, 33.680653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078507, -0.381670, 0.920958,
		0.563691, 0.778946, 0.274765,
		-0.822246, 0.497565, 0.276297,
		31.157825, 20.209129, 33.763542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767939, 19.752697, 34.233154>,  <31.733398, 19.860834, 33.570133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767939, 19.752697, 34.233154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407091, 19.924877, 34.245087>,  <31.190582, 20.028185, 34.252247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407091, 19.924877, 34.245087>,  <31.767939, 19.752697, 34.233154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407091, 19.924877, 34.245087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154019, -0.385833, 0.909621,
		0.403059, 0.815993, 0.414366,
		-0.902120, 0.430451, 0.029835,
		31.136456, 20.054012, 34.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.533577, 31.933208, 24.145590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171385, 31.824612, 24.276062>,  <26.954069, 31.759453, 24.354345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171385, 31.824612, 24.276062>,  <27.533577, 31.933208, 24.145590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171385, 31.824612, 24.276062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417388, -0.708716, 0.568779,
		0.076751, 0.651164, 0.755047,
		-0.905481, -0.271493, 0.326182,
		26.899740, 31.743164, 24.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599697, 31.892681, 24.833057>,  <27.533577, 31.933208, 24.145590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599697, 31.892681, 24.833057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293924, 31.659283, 24.723385>,  <27.110460, 31.519243, 24.657581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293924, 31.659283, 24.723385>,  <27.599697, 31.892681, 24.833057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293924, 31.659283, 24.723385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358463, -0.738165, 0.571504,
		-0.535863, 0.338591, 0.773438,
		-0.764431, -0.583497, -0.274183,
		27.064594, 31.484234, 24.641130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604101, 31.443277, 25.415695>,  <27.599697, 31.892681, 24.833057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604101, 31.443277, 25.415695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377081, 31.264874, 25.138866>,  <27.240870, 31.157831, 24.972769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.377081, 31.264874, 25.138866>,  <27.604101, 31.443277, 25.415695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377081, 31.264874, 25.138866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265212, -0.894798, 0.359165,
		-0.779455, 0.020298, 0.626129,
		-0.567550, -0.446010, -0.692071,
		27.206816, 31.131071, 24.931246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284111, 30.934492, 25.755062>,  <27.604101, 31.443277, 25.415695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284111, 30.934492, 25.755062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289991, 30.815861, 25.373104>,  <27.293520, 30.744682, 25.143929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289991, 30.815861, 25.373104>,  <27.284111, 30.934492, 25.755062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289991, 30.815861, 25.373104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374215, -0.883962, 0.280311,
		-0.927226, -0.361457, 0.097988,
		0.014703, -0.296580, -0.954895,
		27.294403, 30.726887, 25.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150076, 30.264563, 25.746439>,  <27.284111, 30.934492, 25.755062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150076, 30.264563, 25.746439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345823, 30.318516, 25.401806>,  <27.463272, 30.350887, 25.195026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345823, 30.318516, 25.401806>,  <27.150076, 30.264563, 25.746439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345823, 30.318516, 25.401806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455956, -0.881747, 0.120937,
		-0.743385, -0.452027, -0.493002,
		0.489370, 0.134884, -0.861582,
		27.492634, 30.358980, 25.143332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137150, 29.566565, 25.425066>,  <27.150076, 30.264563, 25.746439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137150, 29.566565, 25.425066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414471, 29.751949, 25.204327>,  <27.580864, 29.863180, 25.071882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414471, 29.751949, 25.204327>,  <27.137150, 29.566565, 25.425066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414471, 29.751949, 25.204327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600046, -0.795340, 0.085898,
		-0.399096, -0.390688, -0.829509,
		0.693301, 0.463462, -0.551848,
		27.622461, 29.890987, 25.038773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324442, 29.149338, 24.953444>,  <27.137150, 29.566565, 25.425066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324442, 29.149338, 24.953444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641603, 29.392715, 24.940178>,  <27.831900, 29.538742, 24.932219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641603, 29.392715, 24.940178>,  <27.324442, 29.149338, 24.953444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641603, 29.392715, 24.940178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608914, -0.789103, 0.080871,
		0.023035, -0.084318, -0.996173,
		0.792902, 0.608446, -0.033165,
		27.879475, 29.575249, 24.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770052, 28.885582, 24.485252>,  <27.324442, 29.149338, 24.953444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770052, 28.885582, 24.485252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999283, 29.109756, 24.724415>,  <28.136822, 29.244261, 24.867912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999283, 29.109756, 24.724415>,  <27.770052, 28.885582, 24.485252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999283, 29.109756, 24.724415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505304, -0.816052, 0.280585,
		0.645173, 0.141328, -0.750852,
		0.573079, 0.560434, 0.597908,
		28.171207, 29.277887, 24.903788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484583, 28.661179, 24.366108>,  <27.770052, 28.885582, 24.485252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484583, 28.661179, 24.366108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520607, 28.867962, 24.706612>,  <28.542221, 28.992031, 24.910913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.520607, 28.867962, 24.706612>,  <28.484583, 28.661179, 24.366108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520607, 28.867962, 24.706612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686796, -0.651228, 0.322820,
		0.721249, 0.555568, -0.413695,
		0.090061, 0.516958, 0.851260,
		28.547625, 29.023048, 24.961990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227682, 28.731796, 24.551094>,  <28.484583, 28.661179, 24.366108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227682, 28.731796, 24.551094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001461, 28.742210, 24.880814>,  <28.865728, 28.748459, 25.078646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001461, 28.742210, 24.880814>,  <29.227682, 28.731796, 24.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001461, 28.742210, 24.880814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612342, -0.656263, 0.440859,
		0.552436, 0.754083, 0.355209,
		-0.565555, 0.026036, 0.824300,
		28.831795, 28.750021, 25.128103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676132, 28.409750, 25.098610>,  <29.227682, 28.731796, 24.551094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676132, 28.409750, 25.098610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345245, 28.458153, 25.318089>,  <29.146713, 28.487194, 25.449776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345245, 28.458153, 25.318089>,  <29.676132, 28.409750, 25.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345245, 28.458153, 25.318089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406954, -0.544310, 0.733564,
		0.387429, 0.830111, 0.401017,
		-0.827217, 0.121009, 0.548698,
		29.097080, 28.494455, 25.482698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866671, 28.777197, 25.850437>,  <29.676132, 28.409750, 25.098610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866671, 28.777197, 25.850437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541191, 28.544704, 25.853729>,  <29.345903, 28.405209, 25.855705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541191, 28.544704, 25.853729>,  <29.866671, 28.777197, 25.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541191, 28.544704, 25.853729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478565, -0.661795, 0.577065,
		-0.329960, 0.473496, 0.816657,
		-0.813697, -0.581231, 0.008233,
		29.297083, 28.370335, 25.856199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460499, 29.041986, 25.590023>,  <29.866671, 28.777197, 25.850437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460499, 29.041986, 25.590023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803335, 29.066982, 25.794567>,  <31.009037, 29.081980, 25.917294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803335, 29.066982, 25.794567>,  <30.460499, 29.041986, 25.590023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803335, 29.066982, 25.794567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362559, 0.632007, -0.684922,
		-0.365984, 0.772439, 0.519031,
		0.857092, 0.062491, 0.511359,
		31.060463, 29.085730, 25.947975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579670, 29.712648, 25.586962>,  <30.460499, 29.041986, 25.590023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579670, 29.712648, 25.586962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931988, 29.536266, 25.655964>,  <31.143379, 29.430437, 25.697365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931988, 29.536266, 25.655964>,  <30.579670, 29.712648, 25.586962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931988, 29.536266, 25.655964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447374, 0.655661, -0.608247,
		0.155106, 0.612915, 0.774776,
		0.880795, -0.440957, 0.172505,
		31.196226, 29.403978, 25.707716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047638, 30.321957, 25.534971>,  <30.579670, 29.712648, 25.586962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047638, 30.321957, 25.534971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271721, 29.992867, 25.496422>,  <31.406170, 29.795412, 25.473291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271721, 29.992867, 25.496422>,  <31.047638, 30.321957, 25.534971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271721, 29.992867, 25.496422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592963, 0.479531, -0.646873,
		0.578414, 0.305237, 0.756484,
		0.560207, -0.822727, -0.096373,
		31.439783, 29.746048, 25.467510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737810, 30.517462, 25.632750>,  <31.047638, 30.321957, 25.534971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737810, 30.517462, 25.632750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768419, 30.155903, 25.464409>,  <31.786785, 29.938969, 25.363403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768419, 30.155903, 25.464409>,  <31.737810, 30.517462, 25.632750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768419, 30.155903, 25.464409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687033, 0.353694, -0.634733,
		0.722586, -0.240570, 0.648071,
		0.076521, -0.903895, -0.420853,
		31.791376, 29.884735, 25.338152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507275, 30.328583, 25.578676>,  <31.737810, 30.517462, 25.632750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507275, 30.328583, 25.578676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315170, 30.130287, 25.289238>,  <32.199909, 30.011311, 25.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315170, 30.130287, 25.289238>,  <32.507275, 30.328583, 25.578676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315170, 30.130287, 25.289238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601348, 0.414470, -0.683077,
		0.638538, -0.763189, 0.099058,
		-0.480260, -0.495739, -0.723597,
		32.171093, 29.981565, 25.072159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035534, 30.041899, 25.154060>,  <32.507275, 30.328583, 25.578676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035534, 30.041899, 25.154060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716522, 30.041054, 24.912750>,  <32.525116, 30.040546, 24.767963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716522, 30.041054, 24.912750>,  <33.035534, 30.041899, 25.154060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716522, 30.041054, 24.912750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528592, 0.479505, -0.700476,
		0.290754, -0.877537, -0.381303,
		-0.797530, -0.002112, -0.603276,
		32.477264, 30.040421, 24.731768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301296, 29.878872, 24.587152>,  <33.035534, 30.041899, 25.154060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301296, 29.878872, 24.587152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957226, 30.062958, 24.499249>,  <32.750782, 30.173409, 24.446507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957226, 30.062958, 24.499249>,  <33.301296, 29.878872, 24.587152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957226, 30.062958, 24.499249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478282, 0.578385, -0.660845,
		-0.177023, -0.673553, -0.717627,
		-0.860180, 0.460213, -0.219761,
		32.699173, 30.201021, 24.433321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286713, 29.798330, 23.968557>,  <33.301296, 29.878872, 24.587152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286713, 29.798330, 23.968557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004139, 30.080074, 23.996368>,  <32.834595, 30.249121, 24.013054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004139, 30.080074, 23.996368>,  <33.286713, 29.798330, 23.968557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004139, 30.080074, 23.996368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499921, 0.566089, -0.655456,
		-0.501034, -0.428277, -0.752026,
		-0.706431, 0.704360, 0.069525,
		32.792210, 30.291382, 24.017225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089901, 30.038273, 23.262617>,  <33.286713, 29.798330, 23.968557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089901, 30.038273, 23.262617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014530, 30.341679, 23.512146>,  <32.969307, 30.523722, 23.661863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014530, 30.341679, 23.512146>,  <33.089901, 30.038273, 23.262617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014530, 30.341679, 23.512146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272938, 0.650620, -0.708660,
		-0.943399, 0.036735, -0.329620,
		-0.188424, 0.758515, 0.623820,
		32.958004, 30.569233, 23.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989491, 30.476116, 22.782383>,  <33.089901, 30.038273, 23.262617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989491, 30.476116, 22.782383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000813, 30.705334, 23.109997>,  <33.007607, 30.842863, 23.306566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000813, 30.705334, 23.109997>,  <32.989491, 30.476116, 22.782383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000813, 30.705334, 23.109997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219496, 0.795805, -0.564373,
		-0.975203, 0.195749, -0.103257,
		0.028303, 0.573042, 0.819037,
		33.009304, 30.877247, 23.355707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672012, 31.109537, 22.672422>,  <32.989491, 30.476116, 22.782383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672012, 31.109537, 22.672422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905014, 31.208710, 22.982059>,  <33.044815, 31.268213, 23.167841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905014, 31.208710, 22.982059>,  <32.672012, 31.109537, 22.672422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905014, 31.208710, 22.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191186, 0.883834, -0.426949,
		-0.790024, 0.396695, 0.467436,
		0.582504, 0.247933, 0.774092,
		33.079765, 31.283089, 23.214287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585491, 31.919636, 22.764248>,  <32.672012, 31.109537, 22.672422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585491, 31.919636, 22.764248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931145, 31.796234, 22.923298>,  <33.138535, 31.722193, 23.018728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931145, 31.796234, 22.923298>,  <32.585491, 31.919636, 22.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931145, 31.796234, 22.923298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438408, 0.849425, -0.293725,
		-0.247137, 0.428138, 0.869264,
		0.864130, -0.308502, 0.397624,
		33.190384, 31.703684, 23.042585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784554, 32.482483, 23.089764>,  <32.585491, 31.919636, 22.764248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784554, 32.482483, 23.089764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123974, 32.272598, 23.117023>,  <33.327625, 32.146667, 23.133379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123974, 32.272598, 23.117023>,  <32.784554, 32.482483, 23.089764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123974, 32.272598, 23.117023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528666, 0.846095, -0.068076,
		-0.021942, 0.093795, 0.995350,
		0.848546, -0.524714, 0.068151,
		33.378536, 32.115185, 23.137468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160320, 32.762024, 23.575027>,  <32.784554, 32.482483, 23.089764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160320, 32.762024, 23.575027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430653, 32.565456, 23.355297>,  <33.592854, 32.447514, 23.223459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430653, 32.565456, 23.355297>,  <33.160320, 32.762024, 23.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430653, 32.565456, 23.355297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503653, 0.852056, -0.142600,
		0.538133, -0.180297, 0.823350,
		0.675830, -0.491421, -0.549326,
		33.633400, 32.418030, 23.190498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448177, 32.950329, 23.948088>,  <33.160320, 32.762024, 23.575027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448177, 32.950329, 23.948088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378338, 33.041805, 23.565002>,  <32.336433, 33.096691, 23.335152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378338, 33.041805, 23.565002>,  <32.448177, 32.950329, 23.948088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378338, 33.041805, 23.565002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943441, -0.317264, 0.096242,
		-0.281839, 0.920351, 0.271147,
		-0.174601, 0.228687, -0.957714,
		32.325958, 33.110413, 23.277689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913921, 33.470482, 23.898724>,  <32.448177, 32.950329, 23.948088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913921, 33.470482, 23.898724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932314, 33.197891, 23.606567>,  <31.943350, 33.034336, 23.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932314, 33.197891, 23.606567>,  <31.913921, 33.470482, 23.898724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932314, 33.197891, 23.606567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909758, -0.330555, 0.251145,
		-0.412584, 0.652930, -0.635183,
		0.045983, -0.681481, -0.730390,
		31.946110, 32.993446, 23.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154205, 33.116993, 23.916679>,  <31.913921, 33.470482, 23.898724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154205, 33.116993, 23.916679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823242, 33.213085, 24.119728>,  <30.624664, 33.270741, 24.241558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823242, 33.213085, 24.119728>,  <31.154205, 33.116993, 23.916679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823242, 33.213085, 24.119728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170920, -0.753289, 0.635092,
		0.534957, 0.612245, 0.582218,
		-0.827410, 0.240234, 0.507622,
		30.575020, 33.285156, 24.272015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381474, 33.126335, 24.621914>,  <31.154205, 33.116993, 23.916679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381474, 33.126335, 24.621914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983313, 33.134071, 24.659435>,  <30.744415, 33.138714, 24.681948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983313, 33.134071, 24.659435>,  <31.381474, 33.126335, 24.621914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983313, 33.134071, 24.659435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071405, -0.502914, 0.861382,
		0.063833, 0.864120, 0.499221,
		-0.995403, 0.019338, 0.093805,
		30.684692, 33.139874, 24.687576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309608, 33.183483, 25.330645>,  <31.381474, 33.126335, 24.621914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309608, 33.183483, 25.330645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948048, 33.071877, 25.200962>,  <30.731112, 33.004913, 25.123152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948048, 33.071877, 25.200962>,  <31.309608, 33.183483, 25.330645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948048, 33.071877, 25.200962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100675, -0.597884, 0.795235,
		-0.415724, 0.751454, 0.512338,
		-0.903901, -0.279019, -0.324208,
		30.676878, 32.988171, 25.103699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744551, 33.203648, 25.943256>,  <31.309608, 33.183483, 25.330645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744551, 33.203648, 25.943256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560150, 32.953686, 25.691235>,  <30.449511, 32.803707, 25.540022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560150, 32.953686, 25.691235>,  <30.744551, 33.203648, 25.943256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560150, 32.953686, 25.691235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239427, -0.596081, 0.766395,
		-0.854490, 0.504161, 0.125174,
		-0.461000, -0.624907, -0.630055,
		30.421850, 32.766212, 25.502218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127810, 33.137314, 26.157404>,  <30.744551, 33.203648, 25.943256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127810, 33.137314, 26.157404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181288, 32.810432, 25.933155>,  <30.213375, 32.614304, 25.798605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181288, 32.810432, 25.933155>,  <30.127810, 33.137314, 26.157404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181288, 32.810432, 25.933155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201961, -0.576297, 0.791892,
		-0.970226, 0.007354, -0.242091,
		0.133693, -0.817207, -0.560623,
		30.221395, 32.565269, 25.764969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586607, 32.648705, 26.352539>,  <30.127810, 33.137314, 26.157404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586607, 32.648705, 26.352539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876528, 32.427036, 26.188805>,  <30.050480, 32.294037, 26.090565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876528, 32.427036, 26.188805>,  <29.586607, 32.648705, 26.352539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876528, 32.427036, 26.188805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204975, -0.740686, 0.639820,
		-0.657758, -0.379840, -0.650443,
		0.724803, -0.554171, -0.409334,
		30.093969, 32.260784, 26.066004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291410, 31.978878, 26.102676>,  <29.586607, 32.648705, 26.352539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291410, 31.978878, 26.102676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681376, 31.916107, 26.165821>,  <29.915354, 31.878445, 26.203707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681376, 31.916107, 26.165821>,  <29.291410, 31.978878, 26.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681376, 31.916107, 26.165821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222432, -0.660178, 0.717418,
		-0.008367, -0.734533, -0.678522,
		0.974912, -0.156927, 0.157860,
		29.973848, 31.869028, 26.213179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323137, 31.357189, 26.415516>,  <29.291410, 31.978878, 26.102676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323137, 31.357189, 26.415516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701471, 31.473969, 26.472309>,  <29.928473, 31.544035, 26.506384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701471, 31.473969, 26.472309>,  <29.323137, 31.357189, 26.415516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701471, 31.473969, 26.472309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026963, -0.506483, 0.861828,
		0.323519, -0.811321, -0.486923,
		0.945837, 0.291947, 0.141981,
		29.985222, 31.561552, 26.514904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783546, 30.719946, 26.476593>,  <29.323137, 31.357189, 26.415516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783546, 30.719946, 26.476593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936108, 31.045105, 26.652653>,  <30.027643, 31.240200, 26.758289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936108, 31.045105, 26.652653>,  <29.783546, 30.719946, 26.476593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936108, 31.045105, 26.652653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070514, -0.500340, 0.862953,
		0.921716, -0.298094, -0.248151,
		0.381401, 0.812896, 0.440151,
		30.050528, 31.288973, 26.784698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310432, 30.414156, 26.886923>,  <29.783546, 30.719946, 26.476593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310432, 30.414156, 26.886923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235010, 30.778351, 27.034142>,  <30.189756, 30.996868, 27.122473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235010, 30.778351, 27.034142>,  <30.310432, 30.414156, 26.886923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235010, 30.778351, 27.034142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049301, -0.365523, 0.929496,
		0.980825, 0.193406, 0.024033,
		-0.188554, 0.910487, 0.368049,
		30.178444, 31.051497, 27.144556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717257, 30.470591, 27.460062>,  <30.310432, 30.414156, 26.886923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717257, 30.470591, 27.460062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452034, 30.754055, 27.556522>,  <30.292900, 30.924133, 27.614399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452034, 30.754055, 27.556522>,  <30.717257, 30.470591, 27.460062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452034, 30.754055, 27.556522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158227, -0.182191, 0.970448,
		0.731654, 0.681621, 0.008674,
		-0.663058, 0.708660, 0.241152,
		30.253117, 30.966654, 27.628868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954332, 30.748314, 28.054840>,  <30.717257, 30.470591, 27.460062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954332, 30.748314, 28.054840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576498, 30.878540, 28.071655>,  <30.349798, 30.956676, 28.081743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576498, 30.878540, 28.071655>,  <30.954332, 30.748314, 28.054840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576498, 30.878540, 28.071655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022309, -0.191426, 0.981254,
		0.327508, 0.925939, 0.188081,
		-0.944585, 0.325565, 0.042037,
		30.293123, 30.976210, 28.084267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965799, 31.021515, 28.664909>,  <30.954332, 30.748314, 28.054840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965799, 31.021515, 28.664909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578289, 30.974453, 28.577610>,  <30.345783, 30.946217, 28.525230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578289, 30.974453, 28.577610>,  <30.965799, 31.021515, 28.664909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578289, 30.974453, 28.577610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166670, -0.342681, 0.924549,
		-0.183567, 0.932055, 0.312372,
		-0.968775, -0.117654, -0.218251,
		30.287657, 30.939157, 28.512135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655684, 31.224939, 29.267618>,  <30.965799, 31.021515, 28.664909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655684, 31.224939, 29.267618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385796, 31.007832, 29.067554>,  <30.223864, 30.877567, 28.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385796, 31.007832, 29.067554>,  <30.655684, 31.224939, 29.267618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385796, 31.007832, 29.067554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231692, -0.487640, 0.841740,
		-0.700766, 0.683821, 0.203265,
		-0.674719, -0.542768, -0.500157,
		30.183380, 30.845001, 28.917507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062630, 31.211491, 29.766378>,  <30.655684, 31.224939, 29.267618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062630, 31.211491, 29.766378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030993, 30.909489, 29.506004>,  <30.012011, 30.728289, 29.349781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030993, 30.909489, 29.506004>,  <30.062630, 31.211491, 29.766378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030993, 30.909489, 29.506004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242833, -0.618718, 0.747142,
		-0.966839, 0.217160, -0.134404,
		-0.079091, -0.755004, -0.650934,
		30.007265, 30.682987, 29.310724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381565, 30.842571, 29.893888>,  <30.062630, 31.211491, 29.766378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381565, 30.842571, 29.893888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645960, 30.608826, 29.705582>,  <29.804596, 30.468578, 29.592598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645960, 30.608826, 29.705582>,  <29.381565, 30.842571, 29.893888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645960, 30.608826, 29.705582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171063, -0.728177, 0.663699,
		-0.730691, -0.358120, -0.581240,
		0.660930, -0.584388, -0.470811,
		29.844255, 30.433517, 29.564352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111788, 30.150251, 29.932789>,  <29.381565, 30.842571, 29.893888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111788, 30.150251, 29.932789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497772, 30.104080, 29.838531>,  <29.729362, 30.076378, 29.781977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497772, 30.104080, 29.838531>,  <29.111788, 30.150251, 29.932789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497772, 30.104080, 29.838531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067089, -0.759660, 0.646850,
		-0.253672, -0.639994, -0.725298,
		0.964961, -0.115429, -0.235641,
		29.787260, 30.069452, 29.767839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232380, 29.311550, 29.850979>,  <29.111788, 30.150251, 29.932789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232380, 29.311550, 29.850979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575687, 29.500118, 29.932114>,  <29.781672, 29.613258, 29.980795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575687, 29.500118, 29.932114>,  <29.232380, 29.311550, 29.850979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575687, 29.500118, 29.932114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188455, -0.657128, 0.729841,
		0.477349, -0.588173, -0.652833,
		0.858267, 0.471418, 0.202835,
		29.833168, 29.641544, 29.992964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626320, 28.795263, 29.884977>,  <29.232380, 29.311550, 29.850979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626320, 28.795263, 29.884977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841322, 29.072212, 30.077522>,  <29.970324, 29.238382, 30.193048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841322, 29.072212, 30.077522>,  <29.626320, 28.795263, 29.884977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841322, 29.072212, 30.077522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191880, -0.656281, 0.729711,
		0.821140, -0.299860, -0.485607,
		0.537505, 0.692372, 0.481361,
		30.002573, 29.279924, 30.221931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214727, 28.442671, 30.094267>,  <29.626320, 28.795263, 29.884977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214727, 28.442671, 30.094267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236252, 28.764355, 30.331028>,  <30.249166, 28.957365, 30.473085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236252, 28.764355, 30.331028>,  <30.214727, 28.442671, 30.094267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236252, 28.764355, 30.331028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181637, -0.590755, 0.786140,
		0.981892, 0.065209, -0.177864,
		0.053810, 0.804211, 0.591902,
		30.252396, 29.005619, 30.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796915, 28.286150, 30.619858>,  <30.214727, 28.442671, 30.094267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796915, 28.286150, 30.619858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569242, 28.576508, 30.774319>,  <30.432638, 28.750721, 30.866995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569242, 28.576508, 30.774319>,  <30.796915, 28.286150, 30.619858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569242, 28.576508, 30.774319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051184, -0.500020, 0.864500,
		0.820617, 0.472292, 0.321757,
		-0.569182, 0.725892, 0.386151,
		30.398487, 28.794275, 30.890163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217232, 28.516108, 31.285942>,  <30.796915, 28.286150, 30.619858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217232, 28.516108, 31.285942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826797, 28.599167, 31.311687>,  <30.592537, 28.649002, 31.327135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826797, 28.599167, 31.311687>,  <31.217232, 28.516108, 31.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826797, 28.599167, 31.311687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047590, -0.492969, 0.868745,
		0.212123, 0.844904, 0.491061,
		-0.976083, 0.207651, 0.064361,
		30.533972, 28.661463, 31.330996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167624, 28.735746, 31.920792>,  <31.217232, 28.516108, 31.285942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167624, 28.735746, 31.920792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789795, 28.640518, 31.830368>,  <30.563097, 28.583382, 31.776114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789795, 28.640518, 31.830368>,  <31.167624, 28.735746, 31.920792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789795, 28.640518, 31.830368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134385, -0.347865, 0.927863,
		-0.299535, 0.906814, 0.296591,
		-0.944574, -0.238070, -0.226060,
		30.506422, 28.569098, 31.762550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754772, 29.017315, 32.454411>,  <31.167624, 28.735746, 31.920792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754772, 29.017315, 32.454411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532591, 28.727741, 32.290756>,  <30.399282, 28.553997, 32.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532591, 28.727741, 32.290756>,  <30.754772, 29.017315, 32.454411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532591, 28.727741, 32.290756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090473, -0.436487, 0.895150,
		-0.826612, 0.534229, 0.176952,
		-0.555453, -0.723932, -0.409139,
		30.365955, 28.510561, 32.168015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113512, 28.833534, 32.934784>,  <30.754772, 29.017315, 32.454411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113512, 28.833534, 32.934784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129114, 28.513573, 32.695240>,  <30.138475, 28.321596, 32.551514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129114, 28.513573, 32.695240>,  <30.113512, 28.833534, 32.934784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129114, 28.513573, 32.695240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008600, -0.599027, 0.800683,
		-0.999202, -0.036381, -0.016486,
		0.039005, -0.799902, -0.598862,
		30.140816, 28.273602, 32.515583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755642, 28.273956, 33.332748>,  <30.113512, 28.833534, 32.934784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755642, 28.273956, 33.332748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961119, 28.073875, 33.053917>,  <30.084404, 27.953827, 32.886620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961119, 28.073875, 33.053917>,  <29.755642, 28.273956, 33.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961119, 28.073875, 33.053917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313725, -0.646697, 0.695241,
		-0.798561, -0.575829, -0.175275,
		0.513690, -0.500204, -0.697079,
		30.115225, 27.923815, 32.844791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235790, 27.826777, 32.926540>,  <29.755642, 28.273956, 33.332748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235790, 27.826777, 32.926540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869259, 27.867710, 33.081394>,  <28.649340, 27.892269, 33.174305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869259, 27.867710, 33.081394>,  <29.235790, 27.826777, 32.926540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869259, 27.867710, 33.081394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261980, 0.577962, -0.772869,
		-0.302838, -0.809622, -0.502793,
		-0.916327, 0.102332, 0.387134,
		28.594360, 27.898409, 33.197533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684441, 27.595860, 32.402889>,  <29.235790, 27.826777, 32.926540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684441, 27.595860, 32.402889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457499, 27.836979, 32.627296>,  <28.321333, 27.981649, 32.761940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457499, 27.836979, 32.627296>,  <28.684441, 27.595860, 32.402889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457499, 27.836979, 32.627296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378679, 0.413989, -0.827777,
		-0.731237, -0.682091, -0.006613,
		-0.567357, 0.602797, 0.561018,
		28.287291, 28.017818, 32.795601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016087, 27.542400, 32.146427>,  <28.684441, 27.595860, 32.402889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016087, 27.542400, 32.146427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023550, 27.888203, 32.347336>,  <28.028028, 28.095684, 32.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023550, 27.888203, 32.347336>,  <28.016087, 27.542400, 32.146427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023550, 27.888203, 32.347336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478074, 0.448925, -0.754925,
		-0.878122, -0.226036, 0.421675,
		0.018660, 0.864508, 0.502273,
		28.029148, 28.147554, 32.498016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351755, 27.814030, 32.048508>,  <28.016087, 27.542400, 32.146427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351755, 27.814030, 32.048508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555370, 28.131290, 32.182247>,  <27.677540, 28.321648, 32.262489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555370, 28.131290, 32.182247>,  <27.351755, 27.814030, 32.048508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555370, 28.131290, 32.182247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534325, 0.595715, -0.599683,
		-0.674818, 0.126610, 0.727043,
		0.509036, 0.793154, 0.334348,
		27.708080, 28.369236, 32.282551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879284, 28.345758, 32.109211>,  <27.351755, 27.814030, 32.048508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879284, 28.345758, 32.109211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221750, 28.551468, 32.089180>,  <27.427229, 28.674892, 32.077160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221750, 28.551468, 32.089180>,  <26.879284, 28.345758, 32.109211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221750, 28.551468, 32.089180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401084, 0.600358, -0.691883,
		-0.325752, 0.612450, 0.720271,
		0.856164, 0.514271, -0.050077,
		27.478600, 28.705750, 32.074158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
