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
	<42.989468, 32.366520, 23.343538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825607, 32.376087, 22.978767>,  <42.727291, 32.381828, 22.759905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825607, 32.376087, 22.978767>,  <42.989468, 32.366520, 23.343538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825607, 32.376087, 22.978767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904567, 0.118760, 0.409457,
		0.118093, 0.992635, -0.027017,
		-0.409650, 0.023916, -0.911929,
		42.702713, 32.383263, 22.705189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609894, 32.917709, 23.298985>,  <42.989468, 32.366520, 23.343538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609894, 32.917709, 23.298985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444336, 32.627247, 23.079388>,  <42.345001, 32.452969, 22.947630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444336, 32.627247, 23.079388>,  <42.609894, 32.917709, 23.298985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444336, 32.627247, 23.079388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871631, 0.142159, 0.469095,
		-0.262591, 0.672675, -0.691776,
		-0.413891, -0.726154, -0.548995,
		42.320168, 32.409401, 22.914690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012463, 33.141487, 23.032984>,  <42.609894, 32.917709, 23.298985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012463, 33.141487, 23.032984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963497, 32.749153, 23.093609>,  <41.934120, 32.513752, 23.129984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963497, 32.749153, 23.093609>,  <42.012463, 33.141487, 23.032984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963497, 32.749153, 23.093609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921382, 0.169066, 0.349960,
		-0.368879, -0.096810, -0.924422,
		-0.122409, -0.980839, 0.151564,
		41.926773, 32.454903, 23.139078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376343, 32.888058, 22.754099>,  <42.012463, 33.141487, 23.032984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376343, 32.888058, 22.754099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476425, 32.637562, 23.049458>,  <41.536472, 32.487267, 23.226673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476425, 32.637562, 23.049458>,  <41.376343, 32.888058, 22.754099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476425, 32.637562, 23.049458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933340, 0.046780, 0.355932,
		-0.257440, -0.778228, -0.572788,
		0.250201, -0.626237, 0.738394,
		41.551487, 32.449692, 23.270975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944244, 33.469795, 22.936861>,  <41.376343, 32.888058, 22.754099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944244, 33.469795, 22.936861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746407, 33.182831, 23.133106>,  <40.627705, 33.010654, 23.250853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746407, 33.182831, 23.133106>,  <40.944244, 33.469795, 22.936861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746407, 33.182831, 23.133106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702045, 0.662549, 0.261079,
		-0.512354, -0.215302, -0.831348,
		-0.494598, -0.717408, 0.490611,
		40.598026, 32.967609, 23.280289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239056, 33.469898, 22.818394>,  <40.944244, 33.469795, 22.936861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239056, 33.469898, 22.818394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236439, 33.316086, 23.187630>,  <40.234871, 33.223797, 23.409170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236439, 33.316086, 23.187630>,  <40.239056, 33.469898, 22.818394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236439, 33.316086, 23.187630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754298, 0.607930, 0.247903,
		-0.656499, -0.694662, -0.294028,
		-0.006540, -0.384533, 0.923088,
		40.234478, 33.200726, 23.464556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826885, 34.118450, 22.426226>,  <40.239056, 33.469898, 22.818394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826885, 34.118450, 22.426226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595161, 34.444363, 22.416943>,  <39.456127, 34.639908, 22.411373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595161, 34.444363, 22.416943>,  <39.826885, 34.118450, 22.426226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595161, 34.444363, 22.416943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548294, 0.368451, -0.750745,
		-0.603140, -0.447637, -0.660184,
		-0.579306, 0.814780, -0.023209,
		39.421371, 34.688797, 22.409981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551632, 34.273434, 21.652431>,  <39.826885, 34.118450, 22.426226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551632, 34.273434, 21.652431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565041, 34.598549, 21.885071>,  <39.573086, 34.793617, 22.024654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565041, 34.598549, 21.885071>,  <39.551632, 34.273434, 21.652431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565041, 34.598549, 21.885071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668045, 0.414604, -0.617915,
		-0.743365, 0.409251, -0.529077,
		0.033525, 0.812783, 0.581600,
		39.575100, 34.842384, 22.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623489, 34.817413, 21.164223>,  <39.551632, 34.273434, 21.652431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623489, 34.817413, 21.164223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673611, 35.039810, 21.492897>,  <39.703682, 35.173248, 21.690102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673611, 35.039810, 21.492897>,  <39.623489, 34.817413, 21.164223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673611, 35.039810, 21.492897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594425, 0.621029, -0.510864,
		-0.794329, 0.552444, -0.252681,
		0.125301, 0.555994, 0.821688,
		39.711201, 35.206608, 21.739403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367981, 35.522247, 21.042540>,  <39.623489, 34.817413, 21.164223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367981, 35.522247, 21.042540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640919, 35.502995, 21.334316>,  <39.804680, 35.491444, 21.509382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640919, 35.502995, 21.334316>,  <39.367981, 35.522247, 21.042540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640919, 35.502995, 21.334316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585737, 0.633033, -0.506144,
		-0.437398, 0.772627, 0.460142,
		0.682346, -0.048136, 0.729443,
		39.845623, 35.488552, 21.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577728, 36.154175, 21.136518>,  <39.367981, 35.522247, 21.042540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577728, 36.154175, 21.136518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872864, 35.928440, 21.284630>,  <40.049946, 35.792999, 21.373497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872864, 35.928440, 21.284630>,  <39.577728, 36.154175, 21.136518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872864, 35.928440, 21.284630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674962, 0.613892, -0.409345,
		0.003698, 0.551958, 0.833864,
		0.737844, -0.564340, 0.370280,
		40.094215, 35.759140, 21.395714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093254, 36.615089, 21.307743>,  <39.577728, 36.154175, 21.136518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093254, 36.615089, 21.307743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309834, 36.278805, 21.305225>,  <40.439781, 36.077034, 21.303715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309834, 36.278805, 21.305225>,  <40.093254, 36.615089, 21.307743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309834, 36.278805, 21.305225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669131, 0.435457, -0.602197,
		0.509012, 0.321850, 0.798323,
		0.541452, -0.840708, -0.006292,
		40.472271, 36.026592, 21.303337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818562, 36.840244, 21.423088>,  <40.093254, 36.615089, 21.307743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818562, 36.840244, 21.423088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806900, 36.480865, 21.247845>,  <40.799904, 36.265240, 21.142698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806900, 36.480865, 21.247845>,  <40.818562, 36.840244, 21.423088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806900, 36.480865, 21.247845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665833, 0.309450, -0.678902,
		0.745532, -0.311499, 0.589195,
		-0.029151, -0.898448, -0.438111,
		40.798153, 36.211330, 21.116411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551899, 36.661270, 21.216990>,  <40.818562, 36.840244, 21.423088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551899, 36.661270, 21.216990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334396, 36.427464, 20.976101>,  <41.203896, 36.287182, 20.831568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334396, 36.427464, 20.976101>,  <41.551899, 36.661270, 21.216990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334396, 36.427464, 20.976101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635193, 0.182355, -0.750517,
		0.548506, -0.790627, 0.272122,
		-0.543757, -0.584513, -0.602223,
		41.171268, 36.252110, 20.795433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022015, 36.206890, 20.857037>,  <41.551899, 36.661270, 21.216990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022015, 36.206890, 20.857037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687939, 36.196129, 20.637314>,  <41.487492, 36.189674, 20.505480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687939, 36.196129, 20.637314>,  <42.022015, 36.206890, 20.857037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687939, 36.196129, 20.637314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549896, -0.056464, -0.833323,
		-0.008598, -0.998042, 0.061951,
		-0.835189, -0.026901, -0.549304,
		41.437382, 36.188057, 20.472523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077034, 35.689095, 20.344425>,  <42.022015, 36.206890, 20.857037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077034, 35.689095, 20.344425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792763, 35.933411, 20.204784>,  <41.622200, 36.079998, 20.121000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792763, 35.933411, 20.204784>,  <42.077034, 35.689095, 20.344425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792763, 35.933411, 20.204784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481914, 0.061140, -0.874083,
		-0.512536, -0.789430, -0.337798,
		-0.710680, 0.610789, -0.349100,
		41.579559, 36.116646, 20.100054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074528, 35.374226, 19.687197>,  <42.077034, 35.689095, 20.344425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074528, 35.374226, 19.687197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872997, 35.717010, 19.643787>,  <41.752079, 35.922680, 19.617741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872997, 35.717010, 19.643787>,  <42.074528, 35.374226, 19.687197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872997, 35.717010, 19.643787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476191, 0.170721, -0.862610,
		-0.720697, -0.486283, -0.494091,
		-0.503824, 0.856962, -0.108526,
		41.721851, 35.974098, 19.611229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911781, 35.414959, 18.990482>,  <42.074528, 35.374226, 19.687197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911781, 35.414959, 18.990482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876167, 35.797081, 19.103233>,  <41.854797, 36.026356, 19.170885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876167, 35.797081, 19.103233>,  <41.911781, 35.414959, 18.990482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876167, 35.797081, 19.103233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431627, 0.292057, -0.853464,
		-0.897647, 0.045676, -0.438342,
		-0.089038, 0.955310, 0.281879,
		41.849457, 36.083675, 19.187798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652058, 35.832012, 18.402544>,  <41.911781, 35.414959, 18.990482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652058, 35.832012, 18.402544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830315, 36.108353, 18.630276>,  <41.937267, 36.274155, 18.766914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830315, 36.108353, 18.630276>,  <41.652058, 35.832012, 18.402544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830315, 36.108353, 18.630276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443472, 0.382086, -0.810767,
		-0.777648, 0.613792, -0.136098,
		0.445641, 0.690847, 0.569328,
		41.964008, 36.315605, 18.801075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492355, 36.441929, 17.988010>,  <41.652058, 35.832012, 18.402544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492355, 36.441929, 17.988010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804882, 36.513504, 18.227184>,  <41.992397, 36.556450, 18.370689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804882, 36.513504, 18.227184>,  <41.492355, 36.441929, 17.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804882, 36.513504, 18.227184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503243, 0.386059, -0.773114,
		-0.369182, 0.904952, 0.211582,
		0.781314, 0.178942, 0.597937,
		42.039276, 36.567188, 18.406565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514839, 37.128593, 17.935696>,  <41.492355, 36.441929, 17.988010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514839, 37.128593, 17.935696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872932, 37.004433, 18.063580>,  <42.087788, 36.929935, 18.140310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872932, 37.004433, 18.063580>,  <41.514839, 37.128593, 17.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872932, 37.004433, 18.063580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429360, 0.408926, -0.805251,
		0.119211, 0.858157, 0.499355,
		0.895231, -0.310398, 0.319710,
		42.141502, 36.911312, 18.159492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909649, 37.696800, 18.116503>,  <41.514839, 37.128593, 17.935696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909649, 37.696800, 18.116503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170815, 37.406322, 18.030392>,  <42.327515, 37.232037, 17.978725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170815, 37.406322, 18.030392>,  <41.909649, 37.696800, 18.116503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170815, 37.406322, 18.030392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448576, 0.599741, -0.662639,
		0.610318, 0.336075, 0.717332,
		0.652910, -0.726198, -0.215278,
		42.366688, 37.188461, 17.965809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517616, 37.991146, 18.083546>,  <41.909649, 37.696800, 18.116503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517616, 37.991146, 18.083546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619396, 37.643372, 17.914154>,  <42.680466, 37.434708, 17.812519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619396, 37.643372, 17.914154>,  <42.517616, 37.991146, 18.083546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619396, 37.643372, 17.914154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431333, 0.493954, -0.754958,
		0.865567, 0.009442, 0.500705,
		0.254453, -0.869437, -0.423478,
		42.695732, 37.382542, 17.787111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230919, 38.022015, 17.871758>,  <42.517616, 37.991146, 18.083546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230919, 38.022015, 17.871758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074829, 37.736134, 17.639576>,  <42.981174, 37.564606, 17.500267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074829, 37.736134, 17.639576>,  <43.230919, 38.022015, 17.871758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074829, 37.736134, 17.639576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592275, 0.287831, -0.752571,
		0.704938, -0.637458, 0.310983,
		-0.390222, -0.714704, -0.580453,
		42.957764, 37.521721, 17.465441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792412, 37.683052, 17.563133>,  <43.230919, 38.022015, 17.871758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792412, 37.683052, 17.563133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463409, 37.644257, 17.338963>,  <43.266010, 37.620979, 17.204460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463409, 37.644257, 17.338963>,  <43.792412, 37.683052, 17.563133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463409, 37.644257, 17.338963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473357, 0.429530, -0.769049,
		0.315309, -0.897829, -0.307381,
		-0.822504, -0.096987, -0.560429,
		43.216660, 37.615162, 17.170834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075203, 37.509377, 17.059204>,  <43.792412, 37.683052, 17.563133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075203, 37.509377, 17.059204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714146, 37.616680, 16.924583>,  <43.497509, 37.681061, 16.843811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714146, 37.616680, 16.924583>,  <44.075203, 37.509377, 17.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714146, 37.616680, 16.924583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430036, 0.593555, -0.680266,
		0.017278, -0.758770, -0.651130,
		-0.902646, 0.268256, -0.336554,
		43.443352, 37.697155, 16.823618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104683, 37.547710, 16.398006>,  <44.075203, 37.509377, 17.059204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104683, 37.547710, 16.398006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802555, 37.796669, 16.480091>,  <43.621277, 37.946045, 16.529341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802555, 37.796669, 16.480091>,  <44.104683, 37.547710, 16.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802555, 37.796669, 16.480091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338012, 0.638247, -0.691656,
		-0.561460, -0.453059, -0.692459,
		-0.755321, 0.622397, 0.205211,
		43.575958, 37.983387, 16.541655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824673, 37.642834, 15.747422>,  <44.104683, 37.547710, 16.398006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824673, 37.642834, 15.747422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753422, 37.949291, 15.994420>,  <43.710670, 38.133163, 16.142618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753422, 37.949291, 15.994420>,  <43.824673, 37.642834, 15.747422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753422, 37.949291, 15.994420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187417, 0.642457, -0.743050,
		-0.965995, -0.016627, -0.258025,
		-0.178125, 0.766141, 0.617494,
		43.699986, 38.179134, 16.179668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318565, 38.063545, 15.545364>,  <43.824673, 37.642834, 15.747422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318565, 38.063545, 15.545364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576546, 38.283356, 15.757802>,  <43.731335, 38.415241, 15.885264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576546, 38.283356, 15.757802>,  <43.318565, 38.063545, 15.545364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576546, 38.283356, 15.757802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256854, 0.498648, -0.827875,
		-0.719767, 0.670352, 0.180455,
		0.644950, 0.549527, 0.531093,
		43.770031, 38.448215, 15.917130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268089, 38.767345, 15.397582>,  <43.318565, 38.063545, 15.545364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268089, 38.767345, 15.397582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649353, 38.740013, 15.515443>,  <43.878113, 38.723614, 15.586160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.649353, 38.740013, 15.515443>,  <43.268089, 38.767345, 15.397582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649353, 38.740013, 15.515443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288291, 0.500020, -0.816620,
		-0.091531, 0.863314, 0.496297,
		0.953158, -0.068332, 0.294653,
		43.935299, 38.719513, 15.603839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532818, 39.459274, 15.403315>,  <43.268089, 38.767345, 15.397582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532818, 39.459274, 15.403315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776031, 39.147297, 15.343995>,  <43.921959, 38.960110, 15.308403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776031, 39.147297, 15.343995>,  <43.532818, 39.459274, 15.403315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776031, 39.147297, 15.343995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110605, 0.268192, -0.956995,
		0.786171, 0.565481, 0.249334,
		0.608032, -0.779939, -0.148300,
		43.958443, 38.913315, 15.299505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319958, 40.212067, 15.136332>,  <43.532818, 39.459274, 15.403315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319958, 40.212067, 15.136332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964756, 40.307663, 14.979196>,  <42.751633, 40.365021, 14.884914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964756, 40.307663, 14.979196>,  <43.319958, 40.212067, 15.136332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964756, 40.307663, 14.979196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429899, -0.128325, 0.893711,
		0.163179, 0.962505, 0.216696,
		-0.888009, 0.238992, -0.392840,
		42.698353, 40.379360, 14.861343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054737, 40.735142, 15.641252>,  <43.319958, 40.212067, 15.136332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054737, 40.735142, 15.641252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766247, 40.561943, 15.424977>,  <42.593151, 40.458023, 15.295213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766247, 40.561943, 15.424977>,  <43.054737, 40.735142, 15.641252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766247, 40.561943, 15.424977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435224, -0.323984, 0.840008,
		-0.538894, 0.841159, 0.045216,
		-0.721230, -0.432997, -0.540686,
		42.549877, 40.432045, 15.262772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473938, 40.818806, 15.853515>,  <43.054737, 40.735142, 15.641252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473938, 40.818806, 15.853515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368885, 40.500088, 15.635840>,  <42.305851, 40.308857, 15.505236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368885, 40.500088, 15.635840>,  <42.473938, 40.818806, 15.853515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368885, 40.500088, 15.635840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440535, -0.402754, 0.802320,
		-0.858459, 0.450450, -0.245239,
		-0.262634, -0.796796, -0.544187,
		42.290096, 40.261047, 15.472585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752228, 40.626144, 15.861623>,  <42.473938, 40.818806, 15.853515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752228, 40.626144, 15.861623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955280, 40.282848, 15.831336>,  <42.077110, 40.076870, 15.813164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955280, 40.282848, 15.831336>,  <41.752228, 40.626144, 15.861623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955280, 40.282848, 15.831336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608214, -0.419209, 0.674048,
		-0.610239, -0.296111, -0.734797,
		0.507627, -0.858244, -0.075719,
		42.107567, 40.025375, 15.808620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234718, 40.181831, 15.916461>,  <41.752228, 40.626144, 15.861623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234718, 40.181831, 15.916461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533398, 39.941044, 16.029648>,  <41.712605, 39.796570, 16.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533398, 39.941044, 16.029648>,  <41.234718, 40.181831, 15.916461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533398, 39.941044, 16.029648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625507, -0.490785, 0.606523,
		-0.226233, -0.629889, -0.743006,
		0.746699, -0.601972, 0.282968,
		41.757408, 39.760452, 16.114538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103020, 39.451927, 15.816555>,  <41.234718, 40.181831, 15.916461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103020, 39.451927, 15.816555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359875, 39.462822, 16.122997>,  <41.513988, 39.469360, 16.306864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359875, 39.462822, 16.122997>,  <41.103020, 39.451927, 15.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359875, 39.462822, 16.122997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563471, -0.660828, 0.495789,
		0.519771, -0.750043, -0.408992,
		0.642136, 0.027242, 0.766107,
		41.552517, 39.470993, 16.352829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340252, 38.752285, 16.113684>,  <41.103020, 39.451927, 15.816555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340252, 38.752285, 16.113684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395866, 39.009121, 16.415249>,  <41.429234, 39.163223, 16.596188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395866, 39.009121, 16.415249>,  <41.340252, 38.752285, 16.113684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395866, 39.009121, 16.415249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617252, -0.539135, 0.573004,
		0.774383, -0.545022, 0.321374,
		0.139036, 0.642093, 0.753913,
		41.437576, 39.201748, 16.641422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452316, 38.306839, 16.679918>,  <41.340252, 38.752285, 16.113684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452316, 38.306839, 16.679918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382938, 38.658394, 16.857670>,  <41.341312, 38.869328, 16.964321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382938, 38.658394, 16.857670>,  <41.452316, 38.306839, 16.679918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382938, 38.658394, 16.857670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748732, -0.410801, 0.520234,
		0.639778, -0.242487, 0.729304,
		-0.173449, 0.878887, 0.444379,
		41.330902, 38.922062, 16.990984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399506, 38.166615, 17.369699>,  <41.452316, 38.306839, 16.679918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399506, 38.166615, 17.369699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234818, 38.531128, 17.366779>,  <41.136005, 38.749836, 17.365028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234818, 38.531128, 17.366779>,  <41.399506, 38.166615, 17.369699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234818, 38.531128, 17.366779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748772, -0.333711, 0.572694,
		0.519449, 0.241255, 0.819737,
		-0.411721, 0.911281, -0.007298,
		41.111301, 38.804512, 17.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415894, 38.340542, 18.094543>,  <41.399506, 38.166615, 17.369699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415894, 38.340542, 18.094543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136627, 38.541653, 17.890671>,  <40.969067, 38.662319, 17.768347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136627, 38.541653, 17.890671>,  <41.415894, 38.340542, 18.094543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136627, 38.541653, 17.890671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699686, -0.328378, 0.634514,
		0.151650, 0.799615, 0.581049,
		-0.698170, 0.502776, -0.509681,
		40.927177, 38.692486, 17.737766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034908, 38.710049, 18.666908>,  <41.415894, 38.340542, 18.094543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034908, 38.710049, 18.666908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822094, 38.673027, 18.330250>,  <40.694405, 38.650814, 18.128254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822094, 38.673027, 18.330250>,  <41.034908, 38.710049, 18.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822094, 38.673027, 18.330250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685538, -0.536328, 0.492331,
		-0.496966, 0.838920, 0.221898,
		-0.532036, -0.092552, -0.841648,
		40.662483, 38.645260, 18.077755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379726, 38.992828, 18.885744>,  <41.034908, 38.710049, 18.666908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379726, 38.992828, 18.885744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313801, 38.747471, 18.576790>,  <40.274246, 38.600254, 18.391417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313801, 38.747471, 18.576790>,  <40.379726, 38.992828, 18.885744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313801, 38.747471, 18.576790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733381, -0.447429, 0.511821,
		-0.659537, 0.650807, -0.376112,
		-0.164814, -0.613398, -0.772386,
		40.264359, 38.563450, 18.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674637, 38.871338, 18.824142>,  <40.379726, 38.992828, 18.885744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674637, 38.871338, 18.824142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789204, 38.565613, 18.593044>,  <39.857944, 38.382179, 18.454386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789204, 38.565613, 18.593044>,  <39.674637, 38.871338, 18.824142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789204, 38.565613, 18.593044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671155, -0.590390, 0.448318,
		-0.683752, 0.259353, -0.682070,
		0.286415, -0.764314, -0.577747,
		39.875130, 38.336319, 18.419720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043243, 38.510334, 18.645239>,  <39.674637, 38.871338, 18.824142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043243, 38.510334, 18.645239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320526, 38.232498, 18.568279>,  <39.486897, 38.065796, 18.522104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320526, 38.232498, 18.568279>,  <39.043243, 38.510334, 18.645239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320526, 38.232498, 18.568279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529090, -0.671675, 0.518572,
		-0.489422, -0.257680, -0.833107,
		0.693202, -0.694589, -0.192397,
		39.528488, 38.024120, 18.510561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723583, 37.998718, 18.226938>,  <39.043243, 38.510334, 18.645239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723583, 37.998718, 18.226938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034824, 37.809647, 18.392410>,  <39.221569, 37.696205, 18.491693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034824, 37.809647, 18.392410>,  <38.723583, 37.998718, 18.226938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034824, 37.809647, 18.392410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591613, -0.772777, 0.229805,
		0.211058, -0.423550, -0.880943,
		0.778106, -0.472676, 0.413678,
		39.268257, 37.667843, 18.516514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587605, 37.302551, 18.043911>,  <38.723583, 37.998718, 18.226938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587605, 37.302551, 18.043911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842716, 37.297134, 18.351952>,  <38.995781, 37.293884, 18.536776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842716, 37.297134, 18.351952>,  <38.587605, 37.302551, 18.043911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842716, 37.297134, 18.351952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483508, -0.785335, 0.386613,
		0.599551, -0.618923, -0.507418,
		0.637776, -0.013546, 0.770102,
		39.034050, 37.293072, 18.582983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832245, 36.538067, 18.157007>,  <38.587605, 37.302551, 18.043911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832245, 36.538067, 18.157007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884403, 36.755852, 18.488441>,  <38.915699, 36.886524, 18.687302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884403, 36.755852, 18.488441>,  <38.832245, 36.538067, 18.157007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884403, 36.755852, 18.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534760, -0.665115, 0.521204,
		0.834882, -0.511059, 0.204428,
		0.130398, 0.544464, 0.828586,
		38.923523, 36.919189, 18.737017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107841, 36.139606, 18.711817>,  <38.832245, 36.538067, 18.157007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107841, 36.139606, 18.711817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951878, 36.447536, 18.913944>,  <38.858299, 36.632294, 19.035221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951878, 36.447536, 18.913944>,  <39.107841, 36.139606, 18.711817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951878, 36.447536, 18.913944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297651, -0.624653, 0.721951,
		0.871423, 0.131084, 0.472694,
		-0.389906, 0.769822, 0.505319,
		38.834908, 36.678482, 19.065540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099152, 35.915382, 19.416058>,  <39.107841, 36.139606, 18.711817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099152, 35.915382, 19.416058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867210, 36.239307, 19.451790>,  <38.728046, 36.433662, 19.473230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867210, 36.239307, 19.451790>,  <39.099152, 35.915382, 19.416058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867210, 36.239307, 19.451790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420204, -0.391202, 0.818773,
		0.697998, 0.437229, 0.567124,
		-0.579851, 0.809810, 0.089333,
		38.693256, 36.482250, 19.478590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130150, 36.027428, 20.117645>,  <39.099152, 35.915382, 19.416058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130150, 36.027428, 20.117645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818268, 36.221752, 19.959637>,  <38.631138, 36.338348, 19.864832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818268, 36.221752, 19.959637>,  <39.130150, 36.027428, 20.117645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818268, 36.221752, 19.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584551, -0.338670, 0.737294,
		0.224404, 0.805785, 0.548045,
		-0.779707, 0.485812, -0.395023,
		38.584354, 36.367496, 19.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792282, 36.444633, 20.742767>,  <39.130150, 36.027428, 20.117645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792282, 36.444633, 20.742767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509785, 36.410011, 20.461704>,  <38.340286, 36.389236, 20.293066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509785, 36.410011, 20.461704>,  <38.792282, 36.444633, 20.742767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509785, 36.410011, 20.461704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660329, -0.277384, 0.697871,
		-0.255312, 0.956852, 0.138744,
		-0.706245, -0.086558, -0.702656,
		38.297913, 36.384045, 20.250908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298309, 36.546993, 21.144367>,  <38.792282, 36.444633, 20.742767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298309, 36.546993, 21.144367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118237, 36.383545, 20.826786>,  <38.010193, 36.285477, 20.636236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118237, 36.383545, 20.826786>,  <38.298309, 36.546993, 21.144367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118237, 36.383545, 20.826786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609274, -0.509444, 0.607661,
		-0.652779, 0.757294, -0.019620,
		-0.450183, -0.408622, -0.793954,
		37.983181, 36.260960, 20.588600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524967, 36.760845, 21.117292>,  <38.298309, 36.546993, 21.144367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524967, 36.760845, 21.117292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596729, 36.415146, 20.929295>,  <37.639786, 36.207726, 20.816496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596729, 36.415146, 20.929295>,  <37.524967, 36.760845, 21.117292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596729, 36.415146, 20.929295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663582, -0.459005, 0.590739,
		-0.726273, 0.205898, -0.655845,
		0.179404, -0.864246, -0.469993,
		37.650551, 36.155872, 20.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850552, 36.486771, 20.856901>,  <37.524967, 36.760845, 21.117292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850552, 36.486771, 20.856901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085590, 36.163998, 20.832916>,  <37.226612, 35.970333, 20.818525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085590, 36.163998, 20.832916>,  <36.850552, 36.486771, 20.856901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085590, 36.163998, 20.832916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734814, -0.563174, 0.378000,
		-0.338788, -0.178052, -0.923862,
		0.587598, -0.806928, -0.059962,
		37.261871, 35.921921, 20.814928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392941, 35.945271, 20.816843>,  <36.850552, 36.486771, 20.856901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392941, 35.945271, 20.816843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741756, 35.798592, 20.946507>,  <36.951046, 35.710583, 21.024305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741756, 35.798592, 20.946507>,  <36.392941, 35.945271, 20.816843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741756, 35.798592, 20.946507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489286, -0.636672, 0.596027,
		-0.012181, -0.678365, -0.734623,
		0.872038, -0.366701, 0.324159,
		37.003368, 35.688580, 21.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260185, 35.241047, 20.713352>,  <36.392941, 35.945271, 20.816843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260185, 35.241047, 20.713352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519070, 35.310795, 21.010193>,  <36.674400, 35.352642, 21.188297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519070, 35.310795, 21.010193>,  <36.260185, 35.241047, 20.713352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519070, 35.310795, 21.010193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510062, -0.624418, 0.591556,
		0.566533, -0.761378, -0.315188,
		0.647208, 0.174371, 0.742103,
		36.713230, 35.363106, 21.232824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474751, 34.598244, 20.980312>,  <36.260185, 35.241047, 20.713352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474751, 34.598244, 20.980312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502037, 34.870331, 21.272243>,  <36.518410, 35.033585, 21.447401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502037, 34.870331, 21.272243>,  <36.474751, 34.598244, 20.980312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502037, 34.870331, 21.272243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384586, -0.657065, 0.648351,
		0.920565, -0.324908, 0.216783,
		0.068214, 0.680221, 0.729826,
		36.522503, 35.074398, 21.491192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955204, 34.402252, 21.559776>,  <36.474751, 34.598244, 20.980312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955204, 34.402252, 21.559776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624374, 34.615227, 21.631847>,  <36.425877, 34.743011, 21.675089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624374, 34.615227, 21.631847>,  <36.955204, 34.402252, 21.559776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624374, 34.615227, 21.631847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329377, -0.718813, 0.612224,
		0.455485, 0.447006, 0.769882,
		-0.827070, 0.532441, 0.180175,
		36.376255, 34.774960, 21.685900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760880, 34.225922, 22.266596>,  <36.955204, 34.402252, 21.559776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760880, 34.225922, 22.266596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 34.388031, 22.111103>,  <36.231327, 34.485298, 22.017807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 34.388031, 22.111103>,  <36.760880, 34.225922, 22.266596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429909, 34.388031, 22.111103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561526, -0.605847, 0.563594,
		-0.007099, 0.684616, 0.728869,
		-0.827429, 0.405277, -0.388731,
		36.181679, 34.509613, 21.994484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183594, 34.467773, 22.760811>,  <36.760880, 34.225922, 22.266596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183594, 34.467773, 22.760811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053619, 34.325127, 22.410442>,  <35.975636, 34.239536, 22.200220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053619, 34.325127, 22.410442>,  <36.183594, 34.467773, 22.760811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053619, 34.325127, 22.410442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585901, -0.651127, 0.482445,
		-0.742387, 0.669966, 0.002628,
		-0.324933, -0.356621, -0.875922,
		35.956139, 34.218140, 22.147665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453548, 34.555836, 22.746670>,  <36.183594, 34.467773, 22.760811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453548, 34.555836, 22.746670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580074, 34.257465, 22.512222>,  <35.655991, 34.078442, 22.371553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580074, 34.257465, 22.512222>,  <35.453548, 34.555836, 22.746670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580074, 34.257465, 22.512222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387953, -0.665531, 0.637621,
		-0.865700, 0.025696, -0.499904,
		0.316317, -0.745928, -0.586119,
		35.674969, 34.033688, 22.336388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890415, 34.104782, 22.583733>,  <35.453548, 34.555836, 22.746670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890415, 34.104782, 22.583733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250614, 33.934406, 22.618767>,  <35.466736, 33.832180, 22.639788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250614, 33.934406, 22.618767>,  <34.890415, 34.104782, 22.583733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250614, 33.934406, 22.618767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287508, -0.432066, 0.854785,
		-0.326247, -0.794916, -0.511538,
		0.900501, -0.425943, 0.087585,
		35.520763, 33.806622, 22.645042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770363, 33.472309, 22.627531>,  <34.890415, 34.104782, 22.583733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770363, 33.472309, 22.627531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111912, 33.567997, 22.812431>,  <35.316841, 33.625408, 22.923372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111912, 33.567997, 22.812431>,  <34.770363, 33.472309, 22.627531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111912, 33.567997, 22.812431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348752, -0.396298, 0.849305,
		0.386357, -0.886410, -0.254961,
		0.853873, 0.239217, 0.462250,
		35.368073, 33.639763, 22.951107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992764, 32.862885, 22.897564>,  <34.770363, 33.472309, 22.627531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992764, 32.862885, 22.897564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141716, 33.154930, 23.126743>,  <35.231087, 33.330158, 23.264252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141716, 33.154930, 23.126743>,  <34.992764, 32.862885, 22.897564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141716, 33.154930, 23.126743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327080, -0.474495, 0.817235,
		0.868533, -0.491723, 0.062111,
		0.372382, 0.730111, 0.572948,
		35.253429, 33.373962, 23.298628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576397, 32.590855, 23.308758>,  <34.992764, 32.862885, 22.897564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576397, 32.590855, 23.308758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408310, 32.908512, 23.484371>,  <35.307457, 33.099106, 23.589739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408310, 32.908512, 23.484371>,  <35.576397, 32.590855, 23.308758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408310, 32.908512, 23.484371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195276, -0.551629, 0.810908,
		0.886165, 0.255021, 0.386880,
		-0.420213, 0.794147, 0.439034,
		35.282246, 33.146755, 23.616081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630497, 32.404964, 24.006006>,  <35.576397, 32.590855, 23.308758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630497, 32.404964, 24.006006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352249, 32.691994, 24.019871>,  <35.185299, 32.864212, 24.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352249, 32.691994, 24.019871>,  <35.630497, 32.404964, 24.006006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352249, 32.691994, 24.019871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489599, -0.508826, 0.708088,
		0.525741, 0.475591, 0.705272,
		-0.695621, 0.717572, 0.034662,
		35.143562, 32.907265, 24.030270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564342, 32.585098, 24.686516>,  <35.630497, 32.404964, 24.006006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564342, 32.585098, 24.686516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236164, 32.720242, 24.502029>,  <35.039257, 32.801327, 24.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236164, 32.720242, 24.502029>,  <35.564342, 32.585098, 24.686516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236164, 32.720242, 24.502029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552649, -0.262021, 0.791153,
		0.146452, 0.903988, 0.401693,
		-0.820445, 0.337861, -0.461215,
		34.990032, 32.821598, 24.363665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279171, 33.090824, 25.214123>,  <35.564342, 32.585098, 24.686516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279171, 33.090824, 25.214123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998074, 32.956444, 24.963272>,  <34.829414, 32.875816, 24.812761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998074, 32.956444, 24.963272>,  <35.279171, 33.090824, 25.214123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998074, 32.956444, 24.963272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582171, -0.235123, 0.778328,
		-0.408934, 0.912059, -0.030351,
		-0.702744, -0.335954, -0.627124,
		34.787251, 32.855656, 24.775135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637222, 33.394516, 25.465015>,  <35.279171, 33.090824, 25.214123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637222, 33.394516, 25.465015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539310, 33.078724, 25.239872>,  <34.480564, 32.889248, 25.104786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539310, 33.078724, 25.239872>,  <34.637222, 33.394516, 25.465015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539310, 33.078724, 25.239872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707817, -0.251238, 0.660208,
		-0.662631, 0.560004, -0.497309,
		-0.244776, -0.789478, -0.562858,
		34.465878, 32.841881, 25.071014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839897, 33.438095, 25.381252>,  <34.637222, 33.394516, 25.465015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839897, 33.438095, 25.381252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935116, 33.060135, 25.291363>,  <33.992245, 32.833359, 25.237429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935116, 33.060135, 25.291363>,  <33.839897, 33.438095, 25.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935116, 33.060135, 25.291363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655300, -0.327025, 0.680908,
		-0.716880, -0.014824, -0.697039,
		0.238043, -0.944900, -0.224723,
		34.006527, 32.776665, 25.223946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197937, 33.124825, 25.335012>,  <33.839897, 33.438095, 25.381252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197937, 33.124825, 25.335012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444641, 32.812004, 25.370808>,  <33.592663, 32.624313, 25.392284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444641, 32.812004, 25.370808>,  <33.197937, 33.124825, 25.335012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444641, 32.812004, 25.370808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733936, -0.530243, 0.424478,
		-0.284510, -0.327481, -0.901005,
		0.616759, -0.782048, 0.089491,
		33.629669, 32.577389, 25.397655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824188, 32.515839, 25.094828>,  <33.197937, 33.124825, 25.335012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824188, 32.515839, 25.094828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114128, 32.374500, 25.331383>,  <33.288094, 32.289696, 25.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114128, 32.374500, 25.331383>,  <32.824188, 32.515839, 25.094828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114128, 32.374500, 25.331383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681684, -0.491875, 0.541632,
		0.099506, -0.795742, -0.597405,
		0.724848, -0.353346, 0.591389,
		33.331581, 32.268497, 25.508801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666576, 31.798336, 25.300646>,  <32.824188, 32.515839, 25.094828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666576, 31.798336, 25.300646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945953, 31.857025, 25.580830>,  <33.113579, 31.892239, 25.748940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945953, 31.857025, 25.580830>,  <32.666576, 31.798336, 25.300646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945953, 31.857025, 25.580830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421658, -0.706469, 0.568424,
		0.578254, -0.692368, -0.431565,
		0.698446, 0.146720, 0.700461,
		33.155487, 31.901041, 25.790968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870411, 31.158588, 25.403564>,  <32.666576, 31.798336, 25.300646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870411, 31.158588, 25.403564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000313, 31.367855, 25.718735>,  <33.078255, 31.493416, 25.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000313, 31.367855, 25.718735>,  <32.870411, 31.158588, 25.403564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000313, 31.367855, 25.718735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350997, -0.706924, 0.614051,
		0.878256, -0.475978, -0.045949,
		0.324758, 0.523166, 0.787928,
		33.097740, 31.524805, 25.955112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319771, 30.703251, 25.874678>,  <32.870411, 31.158588, 25.403564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319771, 30.703251, 25.874678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164616, 30.998543, 26.095425>,  <33.071522, 31.175718, 26.227873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164616, 30.998543, 26.095425>,  <33.319771, 30.703251, 25.874678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164616, 30.998543, 26.095425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323646, -0.669709, 0.668388,
		0.863015, 0.080650, 0.498698,
		-0.387888, 0.738231, 0.551867,
		33.048248, 31.220013, 26.260984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474396, 30.526907, 26.574797>,  <33.319771, 30.703251, 25.874678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474396, 30.526907, 26.574797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186134, 30.800858, 26.617886>,  <33.013176, 30.965227, 26.643738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186134, 30.800858, 26.617886>,  <33.474396, 30.526907, 26.574797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186134, 30.800858, 26.617886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393468, -0.531955, 0.749805,
		0.570826, 0.497964, 0.652832,
		-0.720653, 0.684876, 0.107721,
		32.969940, 31.006321, 26.650202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592503, 30.970331, 27.301775>,  <33.474396, 30.526907, 26.574797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592503, 30.970331, 27.301775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197422, 30.984039, 27.240765>,  <32.960373, 30.992264, 27.204159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197422, 30.984039, 27.240765>,  <33.592503, 30.970331, 27.301775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197422, 30.984039, 27.240765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156210, -0.178087, 0.971537,
		0.006132, 0.983418, 0.181251,
		-0.987705, 0.034271, -0.152527,
		32.901112, 30.994320, 27.195007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202248, 31.296680, 27.914936>,  <33.592503, 30.970331, 27.301775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202248, 31.296680, 27.914936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908649, 31.090248, 27.738338>,  <32.732491, 30.966389, 27.632380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908649, 31.090248, 27.738338>,  <33.202248, 31.296680, 27.914936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908649, 31.090248, 27.738338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352911, -0.265584, 0.897173,
		-0.580268, 0.814325, 0.012805,
		-0.733991, -0.516082, -0.441494,
		32.688454, 30.935423, 27.605890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741673, 31.263691, 28.477015>,  <33.202248, 31.296680, 27.914936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741673, 31.263691, 28.477015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585983, 31.014801, 28.205326>,  <32.492569, 30.865467, 28.042313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585983, 31.014801, 28.205326>,  <32.741673, 31.263691, 28.477015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585983, 31.014801, 28.205326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393837, -0.554164, 0.733345,
		-0.832705, 0.552938, -0.029360,
		-0.389224, -0.622223, -0.679222,
		32.469215, 30.828135, 28.001560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144894, 31.048845, 28.809744>,  <32.741673, 31.263691, 28.477015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144894, 31.048845, 28.809744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206924, 30.777260, 28.522701>,  <32.244144, 30.614307, 28.350475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206924, 30.777260, 28.522701>,  <32.144894, 31.048845, 28.809744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206924, 30.777260, 28.522701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186874, -0.733440, 0.653563,
		-0.970067, 0.032750, -0.240620,
		0.155076, -0.678966, -0.717606,
		32.253448, 30.573570, 28.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633278, 30.632515, 28.873020>,  <32.144894, 31.048845, 28.809744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633278, 30.632515, 28.873020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923677, 30.425552, 28.691818>,  <32.097919, 30.301374, 28.583097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923677, 30.425552, 28.691818>,  <31.633278, 30.632515, 28.873020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923677, 30.425552, 28.691818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143210, -0.758041, 0.636290,
		-0.672618, -0.397071, -0.624436,
		0.726001, -0.517405, -0.453007,
		32.141479, 30.270330, 28.555916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377991, 29.981182, 28.838064>,  <31.633278, 30.632515, 28.873020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377991, 29.981182, 28.838064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773714, 29.938972, 28.797791>,  <32.011147, 29.913647, 28.773626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773714, 29.938972, 28.797791>,  <31.377991, 29.981182, 28.838064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773714, 29.938972, 28.797791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010698, -0.740972, 0.671451,
		-0.145458, -0.663194, -0.734177,
		0.989307, -0.105522, -0.100686,
		32.070507, 29.907316, 28.767586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509317, 29.294397, 28.749409>,  <31.377991, 29.981182, 28.838064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509317, 29.294397, 28.749409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852808, 29.439476, 28.894207>,  <32.058903, 29.526524, 28.981085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852808, 29.439476, 28.894207>,  <31.509317, 29.294397, 28.749409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852808, 29.439476, 28.894207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010800, -0.693456, 0.720418,
		0.512319, -0.622553, -0.591572,
		0.858727, 0.362695, 0.361994,
		32.110428, 29.548285, 29.002806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896959, 28.792831, 28.851051>,  <31.509317, 29.294397, 28.749409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896959, 28.792831, 28.851051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072395, 29.053425, 29.098667>,  <32.177658, 29.209782, 29.247236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072395, 29.053425, 29.098667>,  <31.896959, 28.792831, 28.851051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072395, 29.053425, 29.098667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049767, -0.670160, 0.740546,
		0.897307, -0.355605, -0.261504,
		0.438592, 0.651483, 0.619037,
		32.203972, 29.248869, 29.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324821, 28.425163, 29.327221>,  <31.896959, 28.792831, 28.851051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324821, 28.425163, 29.327221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312664, 28.754902, 29.553329>,  <32.305370, 28.952745, 29.688993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312664, 28.754902, 29.553329>,  <32.324821, 28.425163, 29.327221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312664, 28.754902, 29.553329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074804, -0.562069, 0.823701,
		0.996735, 0.067320, -0.044581,
		-0.030394, 0.824346, 0.565270,
		32.303547, 29.002205, 29.722910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790894, 28.380032, 29.920610>,  <32.324821, 28.425163, 29.327221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790894, 28.380032, 29.920610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569206, 28.686317, 30.051163>,  <32.436195, 28.870089, 30.129494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569206, 28.686317, 30.051163>,  <32.790894, 28.380032, 29.920610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569206, 28.686317, 30.051163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007603, -0.387436, 0.921865,
		0.832340, 0.513392, 0.208901,
		-0.554214, 0.765717, 0.326382,
		32.402943, 28.916033, 30.149076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033375, 28.635515, 30.578167>,  <32.790894, 28.380032, 29.920610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033375, 28.635515, 30.578167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667042, 28.793705, 30.606037>,  <32.447243, 28.888618, 30.622759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667042, 28.793705, 30.606037>,  <33.033375, 28.635515, 30.578167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667042, 28.793705, 30.606037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051348, -0.287416, 0.956429,
		0.398269, 0.872349, 0.283531,
		-0.915830, 0.395475, 0.069675,
		32.392292, 28.912348, 30.626940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005398, 29.038485, 31.175150>,  <33.033375, 28.635515, 30.578167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005398, 29.038485, 31.175150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618244, 28.974056, 31.097935>,  <32.385952, 28.935400, 31.051605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618244, 28.974056, 31.097935>,  <33.005398, 29.038485, 31.175150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618244, 28.974056, 31.097935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155773, -0.218486, 0.963327,
		-0.197338, 0.962456, 0.186378,
		-0.967880, -0.161069, -0.193040,
		32.327881, 28.925735, 31.040022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669189, 29.405058, 31.735802>,  <33.005398, 29.038485, 31.175150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669189, 29.405058, 31.735802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409637, 29.140827, 31.584751>,  <32.253906, 28.982288, 31.494122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409637, 29.140827, 31.584751>,  <32.669189, 29.405058, 31.735802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409637, 29.140827, 31.584751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217030, -0.314999, 0.923945,
		-0.729286, 0.681481, 0.061031,
		-0.648876, -0.660575, -0.377626,
		32.214973, 28.942656, 31.471464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033176, 29.471104, 32.174637>,  <32.669189, 29.405058, 31.735802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033176, 29.471104, 32.174637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021053, 29.114513, 31.993816>,  <32.013779, 28.900558, 31.885324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021053, 29.114513, 31.993816>,  <32.033176, 29.471104, 32.174637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021053, 29.114513, 31.993816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532321, -0.368390, 0.762183,
		-0.846000, 0.263734, -0.463388,
		-0.030306, -0.891478, -0.452049,
		32.011963, 28.847071, 31.858202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365088, 29.326902, 32.266830>,  <32.033176, 29.471104, 32.174637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365088, 29.326902, 32.266830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568329, 28.994358, 32.176792>,  <31.690273, 28.794832, 32.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568329, 28.994358, 32.176792>,  <31.365088, 29.326902, 32.266830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568329, 28.994358, 32.176792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600137, -0.529196, 0.599823,
		-0.617792, -0.169680, -0.767816,
		0.508103, -0.831361, -0.225102,
		31.720760, 28.744949, 32.109261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922993, 28.789263, 32.044178>,  <31.365088, 29.326902, 32.266830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922993, 28.789263, 32.044178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240652, 28.578968, 32.166115>,  <31.431248, 28.452791, 32.239277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240652, 28.578968, 32.166115>,  <30.922993, 28.789263, 32.044178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240652, 28.578968, 32.166115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553520, -0.418664, 0.719955,
		-0.250882, -0.740487, -0.623488,
		0.794150, -0.525737, 0.304839,
		31.478897, 28.421247, 32.257568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611307, 28.155981, 32.354828>,  <30.922993, 28.789263, 32.044178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611307, 28.155981, 32.354828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993267, 28.187298, 32.469398>,  <31.222443, 28.206089, 32.538139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993267, 28.187298, 32.469398>,  <30.611307, 28.155981, 32.354828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993267, 28.187298, 32.469398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276034, -0.121449, 0.953444,
		0.109435, -0.989505, -0.094360,
		0.954897, 0.078294, 0.286428,
		31.279736, 28.210785, 32.555328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739477, 27.584999, 32.864197>,  <30.611307, 28.155981, 32.354828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739477, 27.584999, 32.864197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035339, 27.843590, 32.939011>,  <31.212856, 27.998743, 32.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035339, 27.843590, 32.939011>,  <30.739477, 27.584999, 32.864197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035339, 27.843590, 32.939011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206940, -0.045979, 0.977273,
		0.640382, -0.761548, 0.099773,
		0.739653, 0.646475, 0.187039,
		31.257235, 28.037533, 32.995121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990030, 27.260536, 33.405647>,  <30.739477, 27.584999, 32.864197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990030, 27.260536, 33.405647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139570, 27.630249, 33.436474>,  <31.229294, 27.852077, 33.454971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139570, 27.630249, 33.436474>,  <30.990030, 27.260536, 33.405647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139570, 27.630249, 33.436474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121572, -0.033546, 0.992016,
		0.919487, -0.380234, 0.099826,
		0.373850, 0.924282, 0.077071,
		31.251724, 27.907534, 33.459595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368673, 27.181255, 34.011417>,  <30.990030, 27.260536, 33.405647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368673, 27.181255, 34.011417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351036, 27.578548, 33.968441>,  <31.340454, 27.816925, 33.942654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351036, 27.578548, 33.968441>,  <31.368673, 27.181255, 34.011417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351036, 27.578548, 33.968441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140933, 0.100291, 0.984926,
		0.989037, 0.058571, 0.135557,
		-0.044093, 0.993233, -0.107446,
		31.337809, 27.876518, 33.936207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814583, 27.446358, 34.529556>,  <31.368673, 27.181255, 34.011417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814583, 27.446358, 34.529556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548794, 27.735142, 34.452358>,  <31.389320, 27.908413, 34.406040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548794, 27.735142, 34.452358>,  <31.814583, 27.446358, 34.529556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548794, 27.735142, 34.452358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098004, 0.171842, 0.980237,
		0.740859, 0.670255, -0.043429,
		-0.664472, 0.721961, -0.192998,
		31.349453, 27.951731, 34.394459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005722, 28.027855, 34.909138>,  <31.814583, 27.446358, 34.529556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005722, 28.027855, 34.909138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617290, 28.099983, 34.846542>,  <31.384232, 28.143261, 34.808987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617290, 28.099983, 34.846542>,  <32.005722, 28.027855, 34.909138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617290, 28.099983, 34.846542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103201, 0.274011, 0.956173,
		0.215297, 0.944670, -0.247477,
		-0.971080, 0.180322, -0.156484,
		31.325966, 28.154079, 34.799599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822456, 28.717379, 35.086021>,  <32.005722, 28.027855, 34.909138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822456, 28.717379, 35.086021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471436, 28.526299, 35.102531>,  <31.260822, 28.411652, 35.112438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471436, 28.526299, 35.102531>,  <31.822456, 28.717379, 35.086021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471436, 28.526299, 35.102531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173371, 0.396395, 0.901562,
		-0.447037, 0.784012, -0.430676,
		-0.877554, -0.477699, 0.041278,
		31.208170, 28.382990, 35.114914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367132, 29.239124, 35.197266>,  <31.822456, 28.717379, 35.086021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367132, 29.239124, 35.197266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183353, 28.905338, 35.318970>,  <31.073086, 28.705067, 35.391991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183353, 28.905338, 35.318970>,  <31.367132, 29.239124, 35.197266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183353, 28.905338, 35.318970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228252, 0.441976, 0.867501,
		-0.858376, 0.329123, -0.393533,
		-0.459447, -0.834467, 0.304259,
		31.045519, 28.654999, 35.410248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766125, 29.504469, 35.534592>,  <31.367132, 29.239124, 35.197266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766125, 29.504469, 35.534592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786999, 29.126354, 35.663406>,  <30.799524, 28.899485, 35.740696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786999, 29.126354, 35.663406>,  <30.766125, 29.504469, 35.534592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786999, 29.126354, 35.663406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289097, 0.294370, 0.910917,
		-0.955876, -0.140638, -0.257917,
		0.052187, -0.945287, 0.322039,
		30.802654, 28.842768, 35.760017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215923, 29.467108, 36.040787>,  <30.766125, 29.504469, 35.534592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215923, 29.467108, 36.040787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466215, 29.163788, 36.113934>,  <30.616390, 28.981796, 36.157822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466215, 29.163788, 36.113934>,  <30.215923, 29.467108, 36.040787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466215, 29.163788, 36.113934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125142, 0.133808, 0.983074,
		-0.769935, -0.638025, -0.011167,
		0.625731, -0.758301, 0.182867,
		30.653934, 28.936298, 36.168793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881947, 29.101574, 36.591694>,  <30.215923, 29.467108, 36.040787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881947, 29.101574, 36.591694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261930, 28.976761, 36.597511>,  <30.489922, 28.901873, 36.601002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261930, 28.976761, 36.597511>,  <29.881947, 29.101574, 36.591694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261930, 28.976761, 36.597511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060345, -0.137644, 0.988642,
		-0.306488, -0.940047, -0.149586,
		0.949960, -0.312034, 0.014541,
		30.546919, 28.883152, 36.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856928, 28.521307, 36.934677>,  <29.881947, 29.101574, 36.591694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856928, 28.521307, 36.934677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234612, 28.652771, 36.943184>,  <30.461222, 28.731649, 36.948288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234612, 28.652771, 36.943184>,  <29.856928, 28.521307, 36.934677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234612, 28.652771, 36.943184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023730, 0.003494, 0.999712,
		0.328492, -0.944441, 0.011099,
		0.944208, 0.328661, 0.021264,
		30.517874, 28.751369, 36.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255981, 28.000113, 37.169670>,  <29.856928, 28.521307, 36.934677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255981, 28.000113, 37.169670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384521, 28.363441, 37.276764>,  <30.461645, 28.581438, 37.341022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384521, 28.363441, 37.276764>,  <30.255981, 28.000113, 37.169670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384521, 28.363441, 37.276764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310245, -0.166144, 0.936026,
		0.894696, -0.383858, 0.228412,
		0.321351, 0.908322, 0.267739,
		30.480927, 28.635939, 37.357086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645853, 27.887819, 37.740795>,  <30.255981, 28.000113, 37.169670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645853, 27.887819, 37.740795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475073, 28.248871, 37.762596>,  <30.372604, 28.465502, 37.775677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475073, 28.248871, 37.762596>,  <30.645853, 27.887819, 37.740795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475073, 28.248871, 37.762596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373626, -0.230972, 0.898363,
		0.823479, 0.363193, 0.435860,
		-0.426950, 0.902631, 0.054502,
		30.346989, 28.519661, 37.778946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946251, 28.288126, 38.284321>,  <30.645853, 27.887819, 37.740795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946251, 28.288126, 38.284321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585985, 28.454933, 38.235493>,  <30.369825, 28.555017, 38.206196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585985, 28.454933, 38.235493>,  <30.946251, 28.288126, 38.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585985, 28.454933, 38.235493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245818, -0.257349, 0.934529,
		0.358302, 0.871703, 0.334295,
		-0.900663, 0.417020, -0.122071,
		30.315786, 28.580040, 38.198872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843531, 28.924908, 38.700970>,  <30.946251, 28.288126, 38.284321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843531, 28.924908, 38.700970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520243, 28.700661, 38.628868>,  <30.326271, 28.566113, 38.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520243, 28.700661, 38.628868>,  <30.843531, 28.924908, 38.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520243, 28.700661, 38.628868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009107, -0.294160, 0.955713,
		-0.588813, 0.774066, 0.232640,
		-0.808218, -0.560618, -0.180255,
		30.277777, 28.532475, 38.574791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434238, 28.960148, 39.297184>,  <30.843531, 28.924908, 38.700970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434238, 28.960148, 39.297184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298075, 28.622715, 39.131054>,  <30.216377, 28.420256, 39.031376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298075, 28.622715, 39.131054>,  <30.434238, 28.960148, 39.297184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298075, 28.622715, 39.131054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031229, -0.451603, 0.891672,
		-0.939759, 0.290564, 0.180074,
		-0.340409, -0.843580, -0.415324,
		30.195951, 28.369640, 39.006458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283279, 28.581396, 39.886703>,  <30.434238, 28.960148, 39.297184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283279, 28.581396, 39.886703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502890, 28.909222, 39.952293>,  <30.634657, 29.105917, 39.991646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502890, 28.909222, 39.952293>,  <30.283279, 28.581396, 39.886703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502890, 28.909222, 39.952293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800377, -0.572050, 0.179319,
		0.240763, 0.032789, -0.970030,
		0.549026, 0.819563, 0.163972,
		30.667597, 29.155090, 40.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111469, 28.459858, 40.107822>,  <30.283279, 28.581396, 39.886703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111469, 28.459858, 40.107822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264364, 28.097443, 40.035168>,  <31.356102, 27.879993, 39.991573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264364, 28.097443, 40.035168>,  <31.111469, 28.459858, 40.107822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264364, 28.097443, 40.035168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534596, 0.377152, -0.756283,
		0.753725, 0.191976, 0.628525,
		0.382238, -0.906036, -0.181639,
		31.379036, 27.825632, 39.980675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306971, 29.179003, 39.659767>,  <31.111469, 28.459858, 40.107822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306971, 29.179003, 39.659767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251139, 29.474121, 39.923939>,  <31.217640, 29.651192, 40.082443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251139, 29.474121, 39.923939>,  <31.306971, 29.179003, 39.659767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251139, 29.474121, 39.923939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478559, 0.634161, -0.607306,
		-0.866890, 0.231290, -0.441595,
		-0.139579, 0.737798, 0.660433,
		31.209265, 29.695461, 40.122070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887838, 29.762238, 39.465454>,  <31.306971, 29.179003, 39.659767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887838, 29.762238, 39.465454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151649, 29.931355, 39.714058>,  <31.309937, 30.032825, 39.863220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151649, 29.931355, 39.714058>,  <30.887838, 29.762238, 39.465454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151649, 29.931355, 39.714058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277328, 0.631627, -0.723972,
		-0.698650, 0.649841, 0.299324,
		0.659528, 0.422793, 0.621506,
		31.349508, 30.058193, 39.900509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867249, 30.527351, 39.532612>,  <30.887838, 29.762238, 39.465454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867249, 30.527351, 39.532612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250751, 30.424675, 39.581429>,  <31.480854, 30.363070, 39.610718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250751, 30.424675, 39.581429>,  <30.867249, 30.527351, 39.532612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250751, 30.424675, 39.581429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278853, 0.766402, -0.578679,
		0.055006, 0.588845, 0.806372,
		0.958757, -0.256690, 0.122044,
		31.538378, 30.347668, 39.618042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312038, 31.064436, 39.701183>,  <30.867249, 30.527351, 39.532612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312038, 31.064436, 39.701183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539391, 30.825779, 39.474571>,  <31.675802, 30.682585, 39.338604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539391, 30.825779, 39.474571>,  <31.312038, 31.064436, 39.701183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539391, 30.825779, 39.474571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242545, 0.779479, -0.577568,
		0.786202, 0.190870, 0.587755,
		0.568383, -0.596642, -0.566533,
		31.709906, 30.646786, 39.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925932, 31.434961, 39.553650>,  <31.312038, 31.064436, 39.701183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925932, 31.434961, 39.553650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879309, 31.160931, 39.266014>,  <31.851336, 30.996513, 39.093433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879309, 31.160931, 39.266014>,  <31.925932, 31.434961, 39.553650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879309, 31.160931, 39.266014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263082, 0.676863, -0.687492,
		0.957707, -0.269310, 0.101339,
		-0.116556, -0.685076, -0.719087,
		31.844341, 30.955408, 39.050289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433582, 31.433537, 39.044250>,  <31.925932, 31.434961, 39.553650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433582, 31.433537, 39.044250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139091, 31.268276, 38.829861>,  <31.962397, 31.169121, 38.701225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139091, 31.268276, 38.829861>,  <32.433582, 31.433537, 39.044250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139091, 31.268276, 38.829861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168120, 0.655514, -0.736232,
		0.655514, -0.632145, -0.413151,
		0.736232, 0.413151, 0.535975,
		31.918222, 31.144331, 38.669067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753906, 31.378468, 38.372417>,  <32.433582, 31.433537, 39.044250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753906, 31.378468, 38.372417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357407, 31.337112, 38.339577>,  <32.119507, 31.312300, 38.319874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357407, 31.337112, 38.339577>,  <32.753906, 31.378468, 38.372417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357407, 31.337112, 38.339577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023974, 0.470573, -0.882035,
		0.129828, -0.876283, -0.463975,
		-0.991247, -0.103389, -0.082102,
		32.060032, 31.306095, 38.314945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673534, 31.028633, 37.780499>,  <32.753906, 31.378468, 38.372417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673534, 31.028633, 37.780499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323708, 31.206970, 37.856773>,  <32.113811, 31.313972, 37.902538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323708, 31.206970, 37.856773>,  <32.673534, 31.028633, 37.780499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323708, 31.206970, 37.856773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048114, 0.471088, -0.880773,
		-0.482514, -0.761119, -0.433449,
		-0.874566, 0.445841, 0.190686,
		32.061337, 31.340723, 37.913979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370197, 30.982759, 37.211739>,  <32.673534, 31.028633, 37.780499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370197, 30.982759, 37.211739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173100, 31.287048, 37.380737>,  <32.054840, 31.469622, 37.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173100, 31.287048, 37.380737>,  <32.370197, 30.982759, 37.211739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173100, 31.287048, 37.380737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076702, 0.445673, -0.891904,
		-0.866788, -0.471885, -0.161253,
		-0.492743, 0.760723, 0.422499,
		32.025276, 31.515265, 37.507488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919060, 31.199308, 36.685345>,  <32.370197, 30.982759, 37.211739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919060, 31.199308, 36.685345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938437, 31.518173, 36.926071>,  <31.950062, 31.709492, 37.070507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938437, 31.518173, 36.926071>,  <31.919060, 31.199308, 36.685345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938437, 31.518173, 36.926071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044232, 0.603647, -0.796024,
		-0.997846, 0.011941, 0.064501,
		0.048442, 0.797163, 0.601818,
		31.952969, 31.757322, 37.106617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388714, 31.656301, 36.539650>,  <31.919060, 31.199308, 36.685345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388714, 31.656301, 36.539650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649174, 31.885578, 36.738632>,  <31.805449, 32.023144, 36.858021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649174, 31.885578, 36.738632>,  <31.388714, 31.656301, 36.539650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649174, 31.885578, 36.738632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156354, 0.742700, -0.651115,
		-0.742671, 0.346193, 0.573228,
		0.651148, 0.573191, 0.497453,
		31.844519, 32.057537, 36.887867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109592, 32.239574, 36.397083>,  <31.388714, 31.656301, 36.539650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109592, 32.239574, 36.397083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481207, 32.336037, 36.509327>,  <31.704176, 32.393913, 36.576672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481207, 32.336037, 36.509327>,  <31.109592, 32.239574, 36.397083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481207, 32.336037, 36.509327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052668, 0.664499, -0.745431,
		-0.366226, 0.707310, 0.604641,
		0.929034, 0.241151, 0.280609,
		31.759916, 32.408382, 36.593510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141714, 33.018490, 36.321869>,  <31.109592, 32.239574, 36.397083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141714, 33.018490, 36.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519144, 32.887836, 36.343689>,  <31.745602, 32.809444, 36.356781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519144, 32.887836, 36.343689>,  <31.141714, 33.018490, 36.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519144, 32.887836, 36.343689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228986, 0.524550, -0.820007,
		0.239226, 0.786231, 0.569747,
		0.943576, -0.326632, 0.054550,
		31.802217, 32.789848, 36.360054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561815, 33.628628, 36.328537>,  <31.141714, 33.018490, 36.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561815, 33.628628, 36.328537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836145, 33.367809, 36.199242>,  <32.000744, 33.211319, 36.121666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836145, 33.367809, 36.199242>,  <31.561815, 33.628628, 36.328537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836145, 33.367809, 36.199242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157302, 0.566465, -0.808933,
		0.710564, 0.503940, 0.491063,
		0.685824, -0.652044, -0.323239,
		32.041893, 33.172195, 36.102268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177738, 33.975487, 36.127167>,  <31.561815, 33.628628, 36.328537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177738, 33.975487, 36.127167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159584, 33.627300, 35.931114>,  <32.148689, 33.418388, 35.813480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159584, 33.627300, 35.931114>,  <32.177738, 33.975487, 36.127167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159584, 33.627300, 35.931114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186782, 0.474592, -0.860160,
		0.981352, -0.130589, 0.141047,
		-0.045388, -0.870465, -0.490134,
		32.145969, 33.366161, 35.784073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788513, 34.001163, 35.653290>,  <32.177738, 33.975487, 36.127167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788513, 34.001163, 35.653290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511551, 33.740730, 35.528927>,  <32.345375, 33.584469, 35.454308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511551, 33.740730, 35.528927>,  <32.788513, 34.001163, 35.653290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511551, 33.740730, 35.528927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211757, 0.228559, -0.950221,
		0.689738, -0.723772, -0.020382,
		-0.692402, -0.651088, -0.310910,
		32.303829, 33.545403, 35.435654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214706, 33.696892, 35.169548>,  <32.788513, 34.001163, 35.653290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214706, 33.696892, 35.169548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828709, 33.643486, 35.079250>,  <32.597111, 33.611443, 35.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828709, 33.643486, 35.079250>,  <33.214706, 33.696892, 35.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828709, 33.643486, 35.079250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230379, -0.020130, -0.972893,
		0.125348, -0.990843, 0.050183,
		-0.964994, -0.133512, -0.225746,
		32.539211, 33.603432, 35.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106850, 32.973076, 34.754616>,  <33.214706, 33.696892, 35.169548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106850, 32.973076, 34.754616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781052, 33.195610, 34.688789>,  <32.585571, 33.329132, 34.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781052, 33.195610, 34.688789>,  <33.106850, 32.973076, 34.754616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781052, 33.195610, 34.688789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137271, -0.090805, -0.986363,
		-0.563695, -0.825979, -0.002409,
		-0.814496, 0.556338, -0.164569,
		32.536701, 33.362511, 34.639420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702709, 32.635918, 34.262096>,  <33.106850, 32.973076, 34.754616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702709, 32.635918, 34.262096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561710, 33.008015, 34.221317>,  <32.477112, 33.231274, 34.196850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561710, 33.008015, 34.221317>,  <32.702709, 32.635918, 34.262096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561710, 33.008015, 34.221317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010971, -0.104824, -0.994430,
		-0.935747, -0.351656, 0.026745,
		-0.352501, 0.930242, -0.101947,
		32.455959, 33.287086, 34.190735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207336, 32.469139, 33.851620>,  <32.702709, 32.635918, 34.262096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207336, 32.469139, 33.851620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326244, 32.848888, 33.810989>,  <32.397591, 33.076736, 33.786610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326244, 32.848888, 33.810989>,  <32.207336, 32.469139, 33.851620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326244, 32.848888, 33.810989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002296, -0.105673, -0.994398,
		-0.954790, 0.295841, -0.029234,
		0.297273, 0.949374, -0.101574,
		32.415424, 33.133701, 33.780518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870186, 32.670750, 33.250549>,  <32.207336, 32.469139, 33.851620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870186, 32.670750, 33.250549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150841, 32.945744, 33.325459>,  <32.319233, 33.110741, 33.370403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150841, 32.945744, 33.325459>,  <31.870186, 32.670750, 33.250549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150841, 32.945744, 33.325459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243731, 0.015402, -0.969721,
		-0.669552, 0.726036, -0.156754,
		0.701638, 0.687484, 0.187270,
		32.361332, 33.151989, 33.381638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929882, 33.125725, 32.626690>,  <31.870186, 32.670750, 33.250549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929882, 33.125725, 32.626690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267002, 33.210114, 32.824753>,  <32.469273, 33.260746, 32.943588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267002, 33.210114, 32.824753>,  <31.929882, 33.125725, 32.626690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267002, 33.210114, 32.824753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450746, 0.226096, -0.863544,
		-0.294135, 0.950985, 0.095460,
		0.842801, 0.210970, 0.495155,
		32.519844, 33.273403, 32.973301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118202, 33.600910, 32.303658>,  <31.929882, 33.125725, 32.626690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118202, 33.600910, 32.303658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456509, 33.501095, 32.492298>,  <32.659492, 33.441208, 32.605484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456509, 33.501095, 32.492298>,  <32.118202, 33.600910, 32.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456509, 33.501095, 32.492298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526415, 0.246175, -0.813809,
		0.086977, 0.936552, 0.339566,
		0.845767, -0.249536, 0.471603,
		32.710239, 33.426235, 32.633778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679592, 34.163555, 32.307224>,  <32.118202, 33.600910, 32.303658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679592, 34.163555, 32.307224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893311, 33.833344, 32.379929>,  <33.021542, 33.635216, 32.423550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893311, 33.833344, 32.379929>,  <32.679592, 34.163555, 32.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893311, 33.833344, 32.379929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636086, 0.251041, -0.729639,
		0.556707, 0.505456, 0.659236,
		0.534296, -0.825525, 0.181757,
		33.053600, 33.585686, 32.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318901, 34.299812, 31.993326>,  <32.679592, 34.163555, 32.307224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318901, 34.299812, 31.993326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356430, 33.903828, 32.035622>,  <33.378948, 33.666237, 32.061001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356430, 33.903828, 32.035622>,  <33.318901, 34.299812, 31.993326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356430, 33.903828, 32.035622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657281, -0.018181, -0.753427,
		0.747783, 0.140189, 0.648974,
		0.093823, -0.989958, 0.105739,
		33.384579, 33.606842, 32.067345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110703, 34.157768, 32.085110>,  <33.318901, 34.299812, 31.993326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110703, 34.157768, 32.085110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950146, 33.804653, 31.987480>,  <33.853813, 33.592785, 31.928902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950146, 33.804653, 31.987480>,  <34.110703, 34.157768, 32.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950146, 33.804653, 31.987480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708329, -0.130256, -0.693760,
		0.580650, -0.451356, 0.677587,
		-0.401393, -0.882786, -0.244076,
		33.829727, 33.539818, 31.914257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734108, 33.780628, 31.979712>,  <34.110703, 34.157768, 32.085110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734108, 33.780628, 31.979712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430946, 33.607212, 31.784721>,  <34.249050, 33.503162, 31.667727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430946, 33.607212, 31.784721>,  <34.734108, 33.780628, 31.979712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430946, 33.607212, 31.784721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574582, -0.089749, -0.813511,
		0.308937, -0.896655, 0.317123,
		-0.757901, -0.433537, -0.487476,
		34.203575, 33.477150, 31.638479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090153, 33.325249, 31.539183>,  <34.734108, 33.780628, 31.979712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090153, 33.325249, 31.539183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724247, 33.375408, 31.385567>,  <34.504704, 33.405502, 31.293396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724247, 33.375408, 31.385567>,  <35.090153, 33.325249, 31.539183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724247, 33.375408, 31.385567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368511, -0.130582, -0.920407,
		-0.165573, -0.983474, 0.073238,
		-0.914760, 0.125405, -0.384042,
		34.449818, 33.413029, 31.270355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099819, 32.827412, 30.995333>,  <35.090153, 33.325249, 31.539183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099819, 32.827412, 30.995333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836472, 33.117290, 30.913982>,  <34.678463, 33.291218, 30.865171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836472, 33.117290, 30.913982>,  <35.099819, 32.827412, 30.995333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836472, 33.117290, 30.913982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184009, -0.107036, -0.977079,
		-0.729857, -0.680702, -0.062882,
		-0.658369, 0.724699, -0.203376,
		34.638962, 33.334702, 30.852970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914345, 32.678368, 30.372868>,  <35.099819, 32.827412, 30.995333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914345, 32.678368, 30.372868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792561, 33.056305, 30.421173>,  <34.719490, 33.283066, 30.450155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792561, 33.056305, 30.421173>,  <34.914345, 32.678368, 30.372868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792561, 33.056305, 30.421173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191786, 0.184992, -0.963844,
		-0.933017, -0.270293, -0.237530,
		-0.304461, 0.944838, 0.120762,
		34.701221, 33.339756, 30.457401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439705, 32.784019, 29.793135>,  <34.914345, 32.678368, 30.372868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439705, 32.784019, 29.793135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567230, 33.146347, 29.904747>,  <34.643745, 33.363743, 29.971714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567230, 33.146347, 29.904747>,  <34.439705, 32.784019, 29.793135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567230, 33.146347, 29.904747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178346, 0.231806, -0.956273,
		-0.930888, 0.354635, -0.087646,
		0.318811, 0.905815, 0.279033,
		34.662872, 33.418091, 29.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037411, 33.270550, 29.414787>,  <34.439705, 32.784019, 29.793135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037411, 33.270550, 29.414787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389774, 33.426949, 29.521454>,  <34.601192, 33.520790, 29.585455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389774, 33.426949, 29.521454>,  <34.037411, 33.270550, 29.414787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389774, 33.426949, 29.521454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180556, 0.243191, -0.953026,
		-0.437486, 0.887680, 0.143632,
		0.880912, 0.391002, 0.266668,
		34.654049, 33.544250, 29.601454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161274, 33.809662, 28.922935>,  <34.037411, 33.270550, 29.414787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161274, 33.809662, 28.922935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519600, 33.792095, 29.099838>,  <34.734596, 33.781555, 29.205980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519600, 33.792095, 29.099838>,  <34.161274, 33.809662, 28.922935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519600, 33.792095, 29.099838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433773, 0.303037, -0.848533,
		-0.096755, 0.951966, 0.290515,
		0.895812, -0.043918, 0.442258,
		34.788345, 33.778919, 29.232515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445580, 34.537277, 28.929615>,  <34.161274, 33.809662, 28.922935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445580, 34.537277, 28.929615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739635, 34.266266, 28.938709>,  <34.916069, 34.103657, 28.944166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739635, 34.266266, 28.938709>,  <34.445580, 34.537277, 28.929615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739635, 34.266266, 28.938709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354260, 0.355356, -0.864998,
		0.577984, 0.643951, 0.501260,
		0.735142, -0.677532, 0.022736,
		34.960178, 34.063007, 28.945530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062153, 34.972698, 28.912088>,  <34.445580, 34.537277, 28.929615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062153, 34.972698, 28.912088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173740, 34.610367, 28.784561>,  <35.240692, 34.392967, 28.708044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173740, 34.610367, 28.784561>,  <35.062153, 34.972698, 28.912088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173740, 34.610367, 28.784561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373611, 0.408221, -0.832929,
		0.884641, 0.113249, 0.452310,
		0.278971, -0.905831, -0.318818,
		35.257431, 34.338619, 28.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747520, 35.113026, 28.558254>,  <35.062153, 34.972698, 28.912088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747520, 35.113026, 28.558254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614983, 34.760612, 28.423199>,  <35.535461, 34.549164, 28.342165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614983, 34.760612, 28.423199>,  <35.747520, 35.113026, 28.558254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614983, 34.760612, 28.423199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500638, 0.139152, -0.854399,
		0.799734, -0.452133, 0.394969,
		-0.331341, -0.881029, -0.337640,
		35.515579, 34.496304, 28.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322407, 34.650570, 28.255556>,  <35.747520, 35.113026, 28.558254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322407, 34.650570, 28.255556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991760, 34.513546, 28.076962>,  <35.793373, 34.431332, 27.969805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991760, 34.513546, 28.076962>,  <36.322407, 34.650570, 28.255556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991760, 34.513546, 28.076962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439237, 0.103257, -0.892417,
		0.351808, -0.933805, 0.065110,
		-0.826621, -0.342559, -0.446489,
		35.743774, 34.410778, 27.943014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591717, 34.200462, 27.731848>,  <36.322407, 34.650570, 28.255556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591717, 34.200462, 27.731848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214954, 34.279961, 27.623543>,  <35.988895, 34.327660, 27.558559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214954, 34.279961, 27.623543>,  <36.591717, 34.200462, 27.731848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214954, 34.279961, 27.623543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293729, 0.096431, -0.951012,
		-0.162901, -0.975295, -0.149207,
		-0.941906, 0.198747, -0.270764,
		35.932384, 34.339584, 27.542313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537479, 33.982460, 27.013609>,  <36.591717, 34.200462, 27.731848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537479, 33.982460, 27.013609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225677, 34.230148, 27.051437>,  <36.038597, 34.378761, 27.074135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225677, 34.230148, 27.051437>,  <36.537479, 33.982460, 27.013609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225677, 34.230148, 27.051437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160635, 0.343535, -0.925300,
		-0.605454, -0.706081, -0.367254,
		-0.779501, 0.619221, 0.094573,
		35.991829, 34.415913, 27.079809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192822, 33.854958, 26.445492>,  <36.537479, 33.982460, 27.013609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192822, 33.854958, 26.445492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057873, 34.217495, 26.547256>,  <35.976906, 34.435017, 26.608316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057873, 34.217495, 26.547256>,  <36.192822, 33.854958, 26.445492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057873, 34.217495, 26.547256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040486, 0.283978, -0.957976,
		-0.940502, -0.312891, -0.132499,
		-0.337368, 0.906342, 0.254414,
		35.956661, 34.489399, 26.623581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678070, 34.058861, 25.909260>,  <36.192822, 33.854958, 26.445492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678070, 34.058861, 25.909260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768299, 34.410061, 26.078129>,  <35.822437, 34.620781, 26.179451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768299, 34.410061, 26.078129>,  <35.678070, 34.058861, 25.909260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768299, 34.410061, 26.078129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001105, 0.433111, -0.901340,
		-0.974227, 0.203780, 0.096726,
		0.225568, 0.878002, 0.422174,
		35.835968, 34.673462, 26.204781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238411, 34.450649, 25.661331>,  <35.678070, 34.058861, 25.909260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238411, 34.450649, 25.661331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553764, 34.679245, 25.752419>,  <35.742977, 34.816402, 25.807072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553764, 34.679245, 25.752419>,  <35.238411, 34.450649, 25.661331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553764, 34.679245, 25.752419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013760, 0.353689, -0.935262,
		-0.615033, 0.740476, 0.270978,
		0.788381, 0.571489, 0.227719,
		35.790279, 34.850693, 25.820734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073341, 35.158295, 25.509151>,  <35.238411, 34.450649, 25.661331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073341, 35.158295, 25.509151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470352, 35.125034, 25.473442>,  <35.708561, 35.105080, 25.452017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470352, 35.125034, 25.473442>,  <35.073341, 35.158295, 25.509151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470352, 35.125034, 25.473442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055301, 0.345620, -0.936744,
		0.108747, 0.934683, 0.338440,
		0.992530, -0.083152, -0.089274,
		35.768112, 35.100090, 25.446659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303524, 35.802586, 25.163614>,  <35.073341, 35.158295, 25.509151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303524, 35.802586, 25.163614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573185, 35.514759, 25.096981>,  <35.734982, 35.342064, 25.057001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573185, 35.514759, 25.096981>,  <35.303524, 35.802586, 25.163614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573185, 35.514759, 25.096981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160299, 0.362706, -0.918013,
		0.720987, 0.592178, 0.359864,
		0.674152, -0.719562, -0.166581,
		35.775429, 35.298889, 25.047007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366764, 36.352615, 24.656515>,  <35.303524, 35.802586, 25.163614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366764, 36.352615, 24.656515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010250, 36.360584, 24.475315>,  <34.796341, 36.365364, 24.366594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010250, 36.360584, 24.475315>,  <35.366764, 36.352615, 24.656515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010250, 36.360584, 24.475315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408630, 0.397739, 0.821477,
		0.196539, 0.917283, -0.346360,
		-0.891288, 0.019919, -0.453001,
		34.742863, 36.366558, 24.339415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985516, 36.874954, 24.902994>,  <35.366764, 36.352615, 24.656515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985516, 36.874954, 24.902994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681736, 36.655933, 24.762470>,  <34.499466, 36.524521, 24.678156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681736, 36.655933, 24.762470>,  <34.985516, 36.874954, 24.902994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681736, 36.655933, 24.762470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518650, 0.183600, 0.835041,
		-0.392727, 0.816382, -0.423422,
		-0.759452, -0.547551, -0.351312,
		34.453899, 36.491669, 24.657076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408089, 37.145424, 25.316744>,  <34.985516, 36.874954, 24.902994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408089, 37.145424, 25.316744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249470, 36.821594, 25.143612>,  <34.154297, 36.627296, 25.039734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249470, 36.821594, 25.143612>,  <34.408089, 37.145424, 25.316744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249470, 36.821594, 25.143612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659169, -0.077052, 0.748037,
		-0.638941, 0.581940, -0.503091,
		-0.396549, -0.809573, -0.432828,
		34.130505, 36.578724, 25.013763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728130, 37.256695, 25.299622>,  <34.408089, 37.145424, 25.316744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728130, 37.256695, 25.299622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764992, 36.858944, 25.278755>,  <33.787109, 36.620293, 25.266235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764992, 36.858944, 25.278755>,  <33.728130, 37.256695, 25.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764992, 36.858944, 25.278755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619287, -0.098258, 0.778993,
		-0.779738, -0.039481, -0.624860,
		0.092153, -0.994377, -0.052165,
		33.792637, 36.560631, 25.263105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081196, 37.018661, 25.384016>,  <33.728130, 37.256695, 25.299622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081196, 37.018661, 25.384016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317863, 36.711994, 25.483734>,  <33.459862, 36.527992, 25.543566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317863, 36.711994, 25.483734>,  <33.081196, 37.018661, 25.384016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317863, 36.711994, 25.483734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567963, -0.176945, 0.803809,
		-0.572145, -0.617176, -0.540133,
		0.591666, -0.766671, 0.249295,
		33.495365, 36.481995, 25.558523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609562, 36.471062, 25.513172>,  <33.081196, 37.018661, 25.384016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609562, 36.471062, 25.513172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951630, 36.363316, 25.690315>,  <33.156872, 36.298668, 25.796602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951630, 36.363316, 25.690315>,  <32.609562, 36.471062, 25.513172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951630, 36.363316, 25.690315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513918, -0.329212, 0.792154,
		-0.067579, -0.905022, -0.419962,
		0.855173, -0.269359, 0.442859,
		33.208183, 36.282509, 25.823174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487904, 35.825645, 25.907637>,  <32.609562, 36.471062, 25.513172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487904, 35.825645, 25.907637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802120, 35.965294, 26.112003>,  <32.990650, 36.049084, 26.234623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802120, 35.965294, 26.112003>,  <32.487904, 35.825645, 25.907637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802120, 35.965294, 26.112003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435195, -0.275275, 0.857222,
		0.439913, -0.895735, -0.064308,
		0.785546, 0.349117, 0.510916,
		33.037785, 36.070030, 26.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686684, 35.286690, 26.313461>,  <32.487904, 35.825645, 25.907637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686684, 35.286690, 26.313461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839058, 35.595604, 26.516819>,  <32.930485, 35.780952, 26.638834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839058, 35.595604, 26.516819>,  <32.686684, 35.286690, 26.313461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839058, 35.595604, 26.516819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438397, -0.333247, 0.834718,
		0.814060, -0.540853, 0.211621,
		0.380938, 0.772285, 0.508392,
		32.953339, 35.827290, 26.669336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908562, 35.026684, 26.919704>,  <32.686684, 35.286690, 26.313461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908562, 35.026684, 26.919704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866146, 35.420380, 26.976315>,  <32.840698, 35.656597, 27.010281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866146, 35.420380, 26.976315>,  <32.908562, 35.026684, 26.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866146, 35.420380, 26.976315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297907, -0.167237, 0.939832,
		0.948687, 0.057496, 0.310945,
		-0.106038, 0.984239, 0.141527,
		32.834335, 35.715652, 27.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118889, 35.056435, 27.528725>,  <32.908562, 35.026684, 26.919704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118889, 35.056435, 27.528725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942116, 35.413509, 27.493382>,  <32.836052, 35.627754, 27.472176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942116, 35.413509, 27.493382>,  <33.118889, 35.056435, 27.528725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942116, 35.413509, 27.493382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397989, -0.106843, 0.911147,
		0.803928, 0.437832, 0.402497,
		-0.441933, 0.892686, -0.088358,
		32.809536, 35.681316, 27.466873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453739, 35.337421, 28.039751>,  <33.118889, 35.056435, 27.528725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453739, 35.337421, 28.039751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119068, 35.551697, 27.994129>,  <32.918266, 35.680264, 27.966755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119068, 35.551697, 27.994129>,  <33.453739, 35.337421, 28.039751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119068, 35.551697, 27.994129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117545, 0.027766, 0.992679,
		0.534936, 0.843958, 0.039737,
		-0.836676, 0.535691, -0.114056,
		32.868065, 35.712402, 27.959913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489708, 35.828671, 28.536161>,  <33.453739, 35.337421, 28.039751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489708, 35.828671, 28.536161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106087, 35.830334, 28.422878>,  <32.875916, 35.831329, 28.354908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106087, 35.830334, 28.422878>,  <33.489708, 35.828671, 28.536161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106087, 35.830334, 28.422878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279470, 0.148676, 0.948574,
		0.046046, 0.988877, -0.141427,
		-0.959050, 0.004154, -0.283208,
		32.818371, 35.831581, 28.337915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159481, 36.402790, 28.897032>,  <33.489708, 35.828671, 28.536161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159481, 36.402790, 28.897032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866734, 36.151836, 28.790630>,  <32.691086, 36.001263, 28.726789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866734, 36.151836, 28.790630>,  <33.159481, 36.402790, 28.897032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866734, 36.151836, 28.790630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385234, 0.058926, 0.920935,
		-0.562106, 0.776477, -0.284816,
		-0.731869, -0.627384, -0.266003,
		32.647175, 35.963623, 28.710829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457760, 36.612656, 29.246553>,  <33.159481, 36.402790, 28.897032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457760, 36.612656, 29.246553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430450, 36.222942, 29.160667>,  <32.414062, 35.989113, 29.109135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430450, 36.222942, 29.160667>,  <32.457760, 36.612656, 29.246553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430450, 36.222942, 29.160667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525588, -0.147804, 0.837801,
		-0.847995, 0.170055, -0.501982,
		-0.068277, -0.974287, -0.214716,
		32.409966, 35.930656, 29.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833246, 36.473351, 29.416178>,  <32.457760, 36.612656, 29.246553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833246, 36.473351, 29.416178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985567, 36.103642, 29.405540>,  <32.076962, 35.881817, 29.399158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985567, 36.103642, 29.405540>,  <31.833246, 36.473351, 29.416178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985567, 36.103642, 29.405540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528238, -0.241060, 0.814159,
		-0.758915, -0.295988, -0.580033,
		0.380804, -0.924273, -0.026592,
		32.099808, 35.826359, 29.397562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248911, 36.009151, 29.657681>,  <31.833246, 36.473351, 29.416178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248911, 36.009151, 29.657681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586918, 35.798279, 29.693508>,  <31.789722, 35.671753, 29.715006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586918, 35.798279, 29.693508>,  <31.248911, 36.009151, 29.657681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586918, 35.798279, 29.693508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258773, -0.256563, 0.931242,
		-0.467957, -0.810093, -0.353221,
		0.845016, -0.527185, 0.089570,
		31.840424, 35.640121, 29.720379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066992, 35.363258, 29.866556>,  <31.248911, 36.009151, 29.657681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066992, 35.363258, 29.866556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446793, 35.406055, 29.984535>,  <31.674673, 35.431732, 30.055323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446793, 35.406055, 29.984535>,  <31.066992, 35.363258, 29.866556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446793, 35.406055, 29.984535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243931, -0.339503, 0.908425,
		0.197332, -0.934500, -0.296261,
		0.949504, 0.106994, 0.294948,
		31.731644, 35.438152, 30.073019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210640, 34.782448, 30.287565>,  <31.066992, 35.363258, 29.866556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210640, 34.782448, 30.287565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476658, 35.062466, 30.391602>,  <31.636269, 35.230476, 30.454023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476658, 35.062466, 30.391602>,  <31.210640, 34.782448, 30.287565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476658, 35.062466, 30.391602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129960, -0.234475, 0.963396,
		0.735407, -0.674505, -0.064958,
		0.665046, 0.700046, 0.260093,
		31.676172, 35.272480, 30.469629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582855, 34.439617, 30.778128>,  <31.210640, 34.782448, 30.287565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582855, 34.439617, 30.778128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641754, 34.830185, 30.841267>,  <31.677094, 35.064526, 30.879150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641754, 34.830185, 30.841267>,  <31.582855, 34.439617, 30.778128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641754, 34.830185, 30.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202077, -0.126524, 0.971162,
		0.968237, -0.174896, 0.178683,
		0.147245, 0.976423, 0.157847,
		31.685928, 35.123112, 30.888620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943541, 34.420849, 31.441612>,  <31.582855, 34.439617, 30.778128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943541, 34.420849, 31.441612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785772, 34.785625, 31.396351>,  <31.691113, 35.004490, 31.369194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785772, 34.785625, 31.396351>,  <31.943541, 34.420849, 31.441612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785772, 34.785625, 31.396351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448974, -0.083804, 0.889606,
		0.801783, 0.401680, 0.442490,
		-0.394419, 0.911938, -0.113151,
		31.667446, 35.059208, 31.362406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027077, 34.668671, 32.055347>,  <31.943541, 34.420849, 31.441612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027077, 34.668671, 32.055347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782953, 34.948051, 31.905846>,  <31.636480, 35.115681, 31.816145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782953, 34.948051, 31.905846>,  <32.027077, 34.668671, 32.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782953, 34.948051, 31.905846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362869, 0.172910, 0.915657,
		0.704169, 0.694454, 0.147919,
		-0.610305, 0.698452, -0.373754,
		31.599861, 35.157589, 31.793720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109673, 35.206875, 32.531303>,  <32.027077, 34.668671, 32.055347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109673, 35.206875, 32.531303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749830, 35.244251, 32.360668>,  <31.533924, 35.266678, 32.258289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749830, 35.244251, 32.360668>,  <32.109673, 35.206875, 32.531303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749830, 35.244251, 32.360668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414942, 0.121599, 0.901686,
		0.136123, 0.988172, -0.070620,
		-0.899607, 0.093437, -0.426586,
		31.479948, 35.272282, 32.232693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759787, 35.682320, 32.979221>,  <32.109673, 35.206875, 32.531303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759787, 35.682320, 32.979221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483810, 35.487328, 32.765175>,  <31.318224, 35.370331, 32.636749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483810, 35.487328, 32.765175>,  <31.759787, 35.682320, 32.979221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483810, 35.487328, 32.765175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560915, -0.107236, 0.820899,
		-0.457555, 0.866525, -0.199448,
		-0.689941, -0.487479, -0.535112,
		31.276829, 35.341084, 32.604641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194782, 35.981812, 33.148617>,  <31.759787, 35.682320, 32.979221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194782, 35.981812, 33.148617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095011, 35.622185, 33.004696>,  <31.035149, 35.406406, 32.918343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095011, 35.622185, 33.004696>,  <31.194782, 35.981812, 33.148617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095011, 35.622185, 33.004696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500703, -0.198296, 0.842600,
		-0.828904, 0.390323, -0.400707,
		-0.249427, -0.899070, -0.359804,
		31.020182, 35.352463, 32.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494921, 35.869999, 33.303814>,  <31.194782, 35.981812, 33.148617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494921, 35.869999, 33.303814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645584, 35.502544, 33.256088>,  <30.735983, 35.282070, 33.227455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645584, 35.502544, 33.256088>,  <30.494921, 35.869999, 33.303814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645584, 35.502544, 33.256088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547175, -0.324558, 0.771532,
		-0.747481, -0.225319, -0.624902,
		0.376658, -0.918637, -0.119312,
		30.758581, 35.226952, 33.220295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864405, 35.450733, 33.334583>,  <30.494921, 35.869999, 33.303814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864405, 35.450733, 33.334583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162970, 35.190952, 33.392658>,  <30.342108, 35.035084, 33.427502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162970, 35.190952, 33.392658>,  <29.864405, 35.450733, 33.334583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162970, 35.190952, 33.392658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444590, -0.324308, 0.834963,
		-0.495187, -0.687773, -0.530808,
		0.746410, -0.649455, 0.145184,
		30.386892, 34.996117, 33.436214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643345, 34.755077, 33.205318>,  <29.864405, 35.450733, 33.334583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643345, 34.755077, 33.205318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954498, 34.769466, 33.456268>,  <30.141190, 34.778099, 33.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954498, 34.769466, 33.456268>,  <29.643345, 34.755077, 33.205318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954498, 34.769466, 33.456268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460629, -0.646462, 0.608201,
		0.427455, -0.762098, -0.486301,
		0.777884, 0.035974, 0.627378,
		30.187864, 34.780258, 33.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815525, 34.032108, 33.365047>,  <29.643345, 34.755077, 33.205318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815525, 34.032108, 33.365047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962774, 34.266071, 33.654148>,  <30.051123, 34.406448, 33.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962774, 34.266071, 33.654148>,  <29.815525, 34.032108, 33.365047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962774, 34.266071, 33.654148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415367, -0.592001, 0.690656,
		0.831840, -0.554452, 0.025023,
		0.368121, 0.584909, 0.722751,
		30.073210, 34.441544, 33.870972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104128, 33.545139, 33.810875>,  <29.815525, 34.032108, 33.365047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104128, 33.545139, 33.810875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062521, 33.893467, 34.003067>,  <30.037558, 34.102463, 34.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062521, 33.893467, 34.003067>,  <30.104128, 33.545139, 33.810875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062521, 33.893467, 34.003067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427560, -0.475334, 0.768927,
		0.897983, -0.125454, 0.421768,
		-0.104016, 0.870815, 0.480481,
		30.031317, 34.154713, 34.147213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527664, 33.474487, 34.408466>,  <30.104128, 33.545139, 33.810875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527664, 33.474487, 34.408466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230923, 33.735043, 34.472149>,  <30.052877, 33.891376, 34.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230923, 33.735043, 34.472149>,  <30.527664, 33.474487, 34.408466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230923, 33.735043, 34.472149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238056, -0.477795, 0.845601,
		0.626885, 0.589410, 0.509520,
		-0.741852, 0.651389, 0.159210,
		30.008368, 33.930458, 34.519913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443493, 33.572315, 35.212578>,  <30.527664, 33.474487, 34.408466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443493, 33.572315, 35.212578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123825, 33.767605, 35.072315>,  <29.932024, 33.884781, 34.988155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123825, 33.767605, 35.072315>,  <30.443493, 33.572315, 35.212578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123825, 33.767605, 35.072315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511888, -0.246939, 0.822795,
		0.315120, 0.837051, 0.447264,
		-0.799169, 0.488228, -0.350661,
		29.884075, 33.914074, 34.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247227, 34.066063, 35.688278>,  <30.443493, 33.572315, 35.212578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247227, 34.066063, 35.688278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916954, 33.977669, 35.480656>,  <29.718790, 33.924633, 35.356083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916954, 33.977669, 35.480656>,  <30.247227, 34.066063, 35.688278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916954, 33.977669, 35.480656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448342, -0.301398, 0.841516,
		-0.342402, 0.927538, 0.149783,
		-0.825682, -0.220982, -0.519054,
		29.669250, 33.911373, 35.324940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813557, 34.379276, 36.085373>,  <30.247227, 34.066063, 35.688278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813557, 34.379276, 36.085373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626818, 34.117668, 35.847275>,  <29.514774, 33.960705, 35.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626818, 34.117668, 35.847275>,  <29.813557, 34.379276, 36.085373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626818, 34.117668, 35.847275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600143, -0.260069, 0.756434,
		-0.649526, 0.710370, -0.271092,
		-0.466845, -0.654017, -0.595245,
		29.486765, 33.921463, 35.668701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023449, 34.440914, 36.226208>,  <29.813557, 34.379276, 36.085373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023449, 34.440914, 36.226208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102299, 34.091351, 36.048477>,  <29.149609, 33.881615, 35.941837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102299, 34.091351, 36.048477>,  <29.023449, 34.440914, 36.226208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102299, 34.091351, 36.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591585, -0.467440, 0.656907,
		-0.781773, 0.133365, -0.609134,
		0.197126, -0.873907, -0.444329,
		29.161436, 33.829178, 35.915180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373446, 34.175556, 36.211926>,  <29.023449, 34.440914, 36.226208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373446, 34.175556, 36.211926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639387, 33.880138, 36.167160>,  <28.798952, 33.702888, 36.140301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639387, 33.880138, 36.167160>,  <28.373446, 34.175556, 36.211926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639387, 33.880138, 36.167160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508682, -0.557358, 0.656198,
		-0.547001, -0.379352, -0.746245,
		0.664856, -0.738542, -0.111905,
		28.838842, 33.658577, 36.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989498, 33.524452, 36.199661>,  <28.373446, 34.175556, 36.211926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989498, 33.524452, 36.199661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363672, 33.425129, 36.300304>,  <28.588177, 33.365536, 36.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363672, 33.425129, 36.300304>,  <27.989498, 33.524452, 36.199661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363672, 33.425129, 36.300304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353273, -0.681994, 0.640377,
		0.012584, -0.687916, -0.725681,
		0.935436, -0.248305, 0.251604,
		28.644302, 33.350639, 36.375786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857117, 32.925636, 36.514458>,  <27.989498, 33.524452, 36.199661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857117, 32.925636, 36.514458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240110, 32.950176, 36.627213>,  <28.469908, 32.964901, 36.694866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240110, 32.950176, 36.627213>,  <27.857117, 32.925636, 36.514458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240110, 32.950176, 36.627213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179469, -0.638345, 0.748537,
		0.225859, -0.767302, -0.600196,
		0.957486, 0.061347, 0.281883,
		28.527355, 32.968582, 36.711777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142378, 32.218258, 36.693314>,  <27.857117, 32.925636, 36.514458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142378, 32.218258, 36.693314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333029, 32.517735, 36.877609>,  <28.447420, 32.697422, 36.988186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333029, 32.517735, 36.877609>,  <28.142378, 32.218258, 36.693314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333029, 32.517735, 36.877609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188505, -0.424873, 0.885409,
		0.858657, -0.508864, -0.061374,
		0.476629, 0.748693, 0.460743,
		28.476017, 32.742344, 37.015831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037172, 31.488098, 36.724388>,  <28.142378, 32.218258, 36.693314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037172, 31.488098, 36.724388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741169, 31.333717, 36.504051>,  <27.563566, 31.241089, 36.371849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741169, 31.333717, 36.504051>,  <28.037172, 31.488098, 36.724388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741169, 31.333717, 36.504051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603627, -0.019836, -0.797020,
		0.296685, -0.922305, 0.247650,
		-0.740008, -0.385952, -0.550843,
		27.519167, 31.217932, 36.338799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357147, 30.902884, 36.427662>,  <28.037172, 31.488098, 36.724388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357147, 30.902884, 36.427662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030935, 30.970470, 36.206261>,  <27.835209, 31.011023, 36.073421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030935, 30.970470, 36.206261>,  <28.357147, 30.902884, 36.427662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030935, 30.970470, 36.206261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521574, -0.199803, -0.829481,
		-0.250744, -0.965158, 0.074817,
		-0.815529, 0.168965, -0.553501,
		27.786276, 31.021160, 36.040211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306677, 30.375912, 36.015587>,  <28.357147, 30.902884, 36.427662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306677, 30.375912, 36.015587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095510, 30.661926, 35.832272>,  <27.968811, 30.833534, 35.722282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095510, 30.661926, 35.832272>,  <28.306677, 30.375912, 36.015587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095510, 30.661926, 35.832272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574072, -0.097245, -0.813010,
		-0.625898, -0.692291, -0.359145,
		-0.527914, 0.715036, -0.458290,
		27.937136, 30.876436, 35.694786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188814, 30.139334, 35.319244>,  <28.306677, 30.375912, 36.015587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188814, 30.139334, 35.319244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103222, 30.525959, 35.262718>,  <28.051867, 30.757935, 35.228802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103222, 30.525959, 35.262718>,  <28.188814, 30.139334, 35.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103222, 30.525959, 35.262718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476440, -0.023025, -0.878906,
		-0.852771, -0.255397, -0.455582,
		-0.213980, 0.966562, -0.141316,
		28.039028, 30.815928, 35.220322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924709, 30.221479, 34.600163>,  <28.188814, 30.139334, 35.319244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924709, 30.221479, 34.600163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086618, 30.564167, 34.728031>,  <28.183764, 30.769779, 34.804752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086618, 30.564167, 34.728031>,  <27.924709, 30.221479, 34.600163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086618, 30.564167, 34.728031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370225, 0.166115, -0.913969,
		-0.836117, 0.488302, -0.249940,
		0.404774, 0.856719, 0.319673,
		28.208050, 30.821182, 34.823933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769449, 30.684450, 34.050251>,  <27.924709, 30.221479, 34.600163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769449, 30.684450, 34.050251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065243, 30.844646, 34.266682>,  <28.242720, 30.940763, 34.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065243, 30.844646, 34.266682>,  <27.769449, 30.684450, 34.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065243, 30.844646, 34.266682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515934, 0.179115, -0.837693,
		-0.432404, 0.898624, -0.074174,
		0.739486, 0.400491, 0.541080,
		28.287088, 30.964794, 34.429005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868721, 31.448559, 33.824471>,  <27.769449, 30.684450, 34.050251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868721, 31.448559, 33.824471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215706, 31.375462, 34.009560>,  <28.423897, 31.331602, 34.120613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215706, 31.375462, 34.009560>,  <27.868721, 31.448559, 33.824471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215706, 31.375462, 34.009560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497483, 0.327090, -0.803444,
		-0.004527, 0.927155, 0.374651,
		0.867462, -0.182745, 0.462725,
		28.475945, 31.320639, 34.148376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240276, 32.021946, 33.674164>,  <27.868721, 31.448559, 33.824471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240276, 32.021946, 33.674164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536545, 31.769024, 33.765026>,  <28.714306, 31.617271, 33.819542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536545, 31.769024, 33.765026>,  <28.240276, 32.021946, 33.674164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536545, 31.769024, 33.765026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561546, 0.396969, -0.726004,
		0.368882, 0.665286, 0.649091,
		0.740670, -0.632305, 0.227154,
		28.758745, 31.579332, 33.833172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845800, 32.455662, 33.674618>,  <28.240276, 32.021946, 33.674164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845800, 32.455662, 33.674618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980152, 32.081890, 33.627232>,  <29.060764, 31.857628, 33.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980152, 32.081890, 33.627232>,  <28.845800, 32.455662, 33.674618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980152, 32.081890, 33.627232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535905, 0.293013, -0.791801,
		0.774589, 0.202467, 0.599181,
		0.335881, -0.934425, -0.118461,
		29.080917, 31.801563, 33.591694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541616, 32.523426, 33.633259>,  <28.845800, 32.455662, 33.674618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541616, 32.523426, 33.633259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471041, 32.157692, 33.487457>,  <29.428696, 31.938251, 33.399979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471041, 32.157692, 33.487457>,  <29.541616, 32.523426, 33.633259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471041, 32.157692, 33.487457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579976, 0.202629, -0.789030,
		0.795296, -0.350619, 0.494540,
		-0.176441, -0.914334, -0.364501,
		29.418108, 31.883392, 33.378105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203382, 32.283314, 33.271461>,  <29.541616, 32.523426, 33.633259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203382, 32.283314, 33.271461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919266, 32.036518, 33.135929>,  <29.748796, 31.888441, 33.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919266, 32.036518, 33.135929>,  <30.203382, 32.283314, 33.271461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919266, 32.036518, 33.135929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208213, 0.275663, -0.938433,
		0.672410, -0.737110, -0.067335,
		-0.710290, -0.616992, -0.338835,
		29.706179, 31.851421, 33.034279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527962, 32.033928, 32.768867>,  <30.203382, 32.283314, 33.271461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527962, 32.033928, 32.768867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136906, 31.989586, 32.697392>,  <29.902271, 31.962980, 32.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136906, 31.989586, 32.697392>,  <30.527962, 32.033928, 32.768867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136906, 31.989586, 32.697392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155851, 0.188482, -0.969631,
		0.141166, -0.975800, -0.166991,
		-0.977641, -0.110853, -0.178686,
		29.843613, 31.956327, 32.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475088, 31.489250, 32.337109>,  <30.527962, 32.033928, 32.768867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475088, 31.489250, 32.337109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188852, 31.765648, 32.296207>,  <30.017111, 31.931486, 32.271667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188852, 31.765648, 32.296207>,  <30.475088, 31.489250, 32.337109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188852, 31.765648, 32.296207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352637, 0.230999, -0.906800,
		-0.602974, -0.684956, -0.408971,
		-0.715590, 0.690995, -0.102255,
		29.974174, 31.972946, 32.265530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263784, 31.271221, 31.726187>,  <30.475088, 31.489250, 32.337109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263784, 31.271221, 31.726187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132280, 31.643639, 31.789524>,  <30.053377, 31.867090, 31.827526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132280, 31.643639, 31.789524>,  <30.263784, 31.271221, 31.726187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132280, 31.643639, 31.789524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196735, 0.231499, -0.952735,
		-0.923694, -0.282071, -0.259277,
		-0.328761, 0.931045, 0.158341,
		30.033651, 31.922953, 31.837027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758547, 31.324606, 31.266298>,  <30.263784, 31.271221, 31.726187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758547, 31.324606, 31.266298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860445, 31.700806, 31.356243>,  <29.921583, 31.926525, 31.410210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860445, 31.700806, 31.356243>,  <29.758547, 31.324606, 31.266298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860445, 31.700806, 31.356243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140015, 0.194208, -0.970917,
		-0.956818, 0.278821, -0.082211,
		0.254746, 0.940501, 0.224861,
		29.936869, 31.982956, 31.423702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355247, 31.748034, 30.859598>,  <29.758547, 31.324606, 31.266298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355247, 31.748034, 30.859598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663591, 31.985523, 30.951920>,  <29.848597, 32.128017, 31.007313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663591, 31.985523, 30.951920>,  <29.355247, 31.748034, 30.859598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663591, 31.985523, 30.951920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038327, 0.318441, -0.947167,
		-0.635852, 0.738978, 0.222718,
		0.770859, 0.593722, 0.230804,
		29.894850, 32.163639, 31.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213120, 32.340240, 30.529402>,  <29.355247, 31.748034, 30.859598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213120, 32.340240, 30.529402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600800, 32.361668, 30.625553>,  <29.833408, 32.374523, 30.683245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600800, 32.361668, 30.625553>,  <29.213120, 32.340240, 30.529402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600800, 32.361668, 30.625553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177308, 0.525612, -0.832042,
		-0.170920, 0.849036, 0.499925,
		0.969200, 0.053572, 0.240379,
		29.891560, 32.377739, 30.697666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223547, 32.972599, 30.224310>,  <29.213120, 32.340240, 30.529402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223547, 32.972599, 30.224310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597033, 32.862556, 30.315956>,  <29.821125, 32.796532, 30.370943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597033, 32.862556, 30.315956>,  <29.223547, 32.972599, 30.224310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597033, 32.862556, 30.315956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357199, 0.672629, -0.648058,
		0.024174, 0.686941, 0.726310,
		0.933715, -0.275103, 0.229115,
		29.877148, 32.780025, 30.384691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706465, 33.645058, 30.300217>,  <29.223547, 32.972599, 30.224310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706465, 33.645058, 30.300217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946478, 33.333351, 30.227882>,  <30.090487, 33.146328, 30.184483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946478, 33.333351, 30.227882>,  <29.706465, 33.645058, 30.300217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946478, 33.333351, 30.227882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380159, 0.476659, -0.792638,
		0.703875, 0.406862, 0.582257,
		0.600033, -0.779268, -0.180836,
		30.126488, 33.099571, 30.173632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397806, 33.961502, 30.229618>,  <29.706465, 33.645058, 30.300217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397806, 33.961502, 30.229618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389629, 33.600967, 30.056561>,  <30.384724, 33.384647, 29.952726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389629, 33.600967, 30.056561>,  <30.397806, 33.961502, 30.229618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389629, 33.600967, 30.056561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226293, 0.417334, -0.880127,
		0.973845, -0.115898, 0.195433,
		-0.020444, -0.901332, -0.432646,
		30.383495, 33.330566, 29.926767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048107, 33.725273, 30.167479>,  <30.397806, 33.961502, 30.229618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048107, 33.725273, 30.167479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808140, 33.565762, 29.890041>,  <30.664160, 33.470055, 29.723579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808140, 33.565762, 29.890041>,  <31.048107, 33.725273, 30.167479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808140, 33.565762, 29.890041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409146, 0.592072, -0.694299,
		0.687531, -0.700302, -0.192034,
		-0.599917, -0.398783, -0.693594,
		30.628164, 33.446129, 29.681963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423519, 33.776939, 29.523682>,  <31.048107, 33.725273, 30.167479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423519, 33.776939, 29.523682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046083, 33.730515, 29.399635>,  <30.819622, 33.702660, 29.325209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046083, 33.730515, 29.399635>,  <31.423519, 33.776939, 29.523682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046083, 33.730515, 29.399635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200814, 0.544078, -0.814649,
		0.263277, -0.830969, -0.490078,
		-0.943588, -0.116064, -0.310113,
		30.763006, 33.695694, 29.306601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477566, 33.766445, 28.799192>,  <31.423519, 33.776939, 29.523682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477566, 33.766445, 28.799192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090618, 33.846905, 28.860825>,  <30.858450, 33.895180, 28.897804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090618, 33.846905, 28.860825>,  <31.477566, 33.766445, 28.799192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090618, 33.846905, 28.860825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033516, 0.501179, -0.864694,
		-0.251150, -0.841641, -0.478083,
		-0.967368, 0.201145, 0.154080,
		30.800407, 33.907249, 28.907049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284670, 33.569393, 28.173105>,  <31.477566, 33.766445, 28.799192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284670, 33.569393, 28.173105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023186, 33.829323, 28.328228>,  <30.866295, 33.985279, 28.421301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023186, 33.829323, 28.328228>,  <31.284670, 33.569393, 28.173105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023186, 33.829323, 28.328228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022478, 0.495565, -0.868280,
		-0.756411, -0.576321, -0.309350,
		-0.653711, 0.649823, 0.387805,
		30.827072, 34.024269, 28.444569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787834, 33.631390, 27.635067>,  <31.284670, 33.569393, 28.173105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787834, 33.631390, 27.635067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705322, 33.958561, 27.849895>,  <30.655815, 34.154861, 27.978792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705322, 33.958561, 27.849895>,  <30.787834, 33.631390, 27.635067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705322, 33.958561, 27.849895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214806, 0.497635, -0.840368,
		-0.954624, -0.288718, 0.073042,
		-0.206281, 0.817925, 0.537072,
		30.643438, 34.203938, 28.011017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156870, 33.938297, 27.326187>,  <30.787834, 33.631390, 27.635067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156870, 33.938297, 27.326187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340664, 34.213001, 27.551483>,  <30.450939, 34.377823, 27.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340664, 34.213001, 27.551483>,  <30.156870, 33.938297, 27.326187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340664, 34.213001, 27.551483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151898, 0.685564, -0.711989,
		-0.875101, 0.241593, 0.419323,
		0.459484, 0.686757, 0.563240,
		30.478510, 34.419029, 27.720455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704264, 34.487957, 27.360670>,  <30.156870, 33.938297, 27.326187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704264, 34.487957, 27.360670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074574, 34.636822, 27.387306>,  <30.296761, 34.726139, 27.403288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074574, 34.636822, 27.387306>,  <29.704264, 34.487957, 27.360670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074574, 34.636822, 27.387306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225321, 0.684551, -0.693268,
		-0.303593, 0.626807, 0.717596,
		0.925776, 0.372161, 0.066592,
		30.352306, 34.748470, 27.407284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575886, 35.187824, 27.506992>,  <29.704264, 34.487957, 27.360670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575886, 35.187824, 27.506992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948195, 35.153164, 27.364918>,  <30.171579, 35.132366, 27.279673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948195, 35.153164, 27.364918>,  <29.575886, 35.187824, 27.506992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948195, 35.153164, 27.364918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144025, 0.806041, -0.574069,
		0.336039, 0.585482, 0.737759,
		0.930771, -0.086654, -0.355186,
		30.227427, 35.127167, 27.258362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757734, 35.840126, 27.485241>,  <29.575886, 35.187824, 27.506992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757734, 35.840126, 27.485241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030819, 35.660355, 27.254791>,  <30.194670, 35.552494, 27.116522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030819, 35.660355, 27.254791>,  <29.757734, 35.840126, 27.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030819, 35.660355, 27.254791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022172, 0.775365, -0.631124,
		0.730351, 0.443650, 0.519386,
		0.682712, -0.449426, -0.576125,
		30.235632, 35.525528, 27.081953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202875, 36.334560, 27.324278>,  <29.757734, 35.840126, 27.485241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202875, 36.334560, 27.324278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287857, 36.063419, 27.042744>,  <30.338846, 35.900734, 26.873823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287857, 36.063419, 27.042744>,  <30.202875, 36.334560, 27.324278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287857, 36.063419, 27.042744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084207, 0.704900, -0.704291,
		0.973536, 0.208897, 0.092679,
		0.212454, -0.677848, -0.703836,
		30.351593, 35.860065, 26.831593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662840, 36.676037, 26.947290>,  <30.202875, 36.334560, 27.324278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662840, 36.676037, 26.947290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496759, 36.387524, 26.725529>,  <30.397110, 36.214417, 26.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496759, 36.387524, 26.725529>,  <30.662840, 36.676037, 26.947290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496759, 36.387524, 26.725529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171228, 0.660483, -0.731056,
		0.893470, -0.208607, -0.397738,
		-0.415202, -0.721280, -0.554403,
		30.372198, 36.171139, 26.559208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824020, 36.794281, 26.233015>,  <30.662840, 36.676037, 26.947290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824020, 36.794281, 26.233015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525776, 36.536446, 26.165405>,  <30.346828, 36.381744, 26.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525776, 36.536446, 26.165405>,  <30.824020, 36.794281, 26.233015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525776, 36.536446, 26.165405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250602, 0.506256, -0.825169,
		0.617466, -0.572897, -0.539005,
		-0.745611, -0.644589, -0.169026,
		30.302094, 36.343067, 26.114698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870203, 36.645699, 25.560478>,  <30.824020, 36.794281, 26.233015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870203, 36.645699, 25.560478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495571, 36.554810, 25.667202>,  <30.270792, 36.500275, 25.731236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495571, 36.554810, 25.667202>,  <30.870203, 36.645699, 25.560478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495571, 36.554810, 25.667202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346449, 0.485545, -0.802633,
		0.052833, -0.844165, -0.533474,
		-0.936580, -0.227227, 0.266807,
		30.214598, 36.486641, 25.747244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479977, 36.453518, 24.930531>,  <30.870203, 36.645699, 25.560478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479977, 36.453518, 24.930531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181759, 36.548733, 25.179527>,  <30.002827, 36.605862, 25.328926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181759, 36.548733, 25.179527>,  <30.479977, 36.453518, 24.930531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181759, 36.548733, 25.179527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503314, 0.411136, -0.760028,
		-0.436847, -0.879945, -0.186712,
		-0.745547, 0.238041, 0.622492,
		29.958096, 36.620144, 25.366276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884163, 36.318710, 24.535519>,  <30.479977, 36.453518, 24.930531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884163, 36.318710, 24.535519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721226, 36.561745, 24.808258>,  <29.623463, 36.707565, 24.971901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721226, 36.561745, 24.808258>,  <29.884163, 36.318710, 24.535519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721226, 36.561745, 24.808258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516828, 0.462188, -0.720605,
		-0.752968, -0.645931, 0.125747,
		-0.407342, 0.607582, 0.681848,
		29.599024, 36.744019, 25.012812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250607, 36.356106, 24.266411>,  <29.884163, 36.318710, 24.535519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250607, 36.356106, 24.266411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270697, 36.656887, 24.529331>,  <29.282751, 36.837357, 24.687082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270697, 36.656887, 24.529331>,  <29.250607, 36.356106, 24.266411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270697, 36.656887, 24.529331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480382, 0.595188, -0.644193,
		-0.875620, -0.283401, 0.391118,
		0.050224, 0.751954, 0.657299,
		29.285765, 36.882473, 24.726521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567476, 36.554985, 24.518141>,  <29.250607, 36.356106, 24.266411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567476, 36.554985, 24.518141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816456, 36.866508, 24.549175>,  <28.965843, 37.053421, 24.567797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816456, 36.866508, 24.549175>,  <28.567476, 36.554985, 24.518141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816456, 36.866508, 24.549175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516557, 0.483267, -0.706839,
		-0.587986, 0.399893, 0.703106,
		0.622449, 0.778805, 0.077587,
		29.003191, 37.100151, 24.572451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083828, 37.067177, 24.436186>,  <28.567476, 36.554985, 24.518141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083828, 37.067177, 24.436186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432386, 37.259621, 24.397808>,  <28.641521, 37.375088, 24.374783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432386, 37.259621, 24.397808>,  <28.083828, 37.067177, 24.436186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432386, 37.259621, 24.397808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342174, 0.455904, -0.821626,
		-0.351551, 0.748789, 0.561895,
		0.871395, 0.481109, -0.095942,
		28.693806, 37.403954, 24.369026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911566, 37.759739, 24.460705>,  <28.083828, 37.067177, 24.436186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911566, 37.759739, 24.460705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249401, 37.704895, 24.253677>,  <28.452103, 37.671989, 24.129461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249401, 37.704895, 24.253677>,  <27.911566, 37.759739, 24.460705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249401, 37.704895, 24.253677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437955, 0.379179, -0.815118,
		0.308009, 0.915109, 0.260203,
		0.844586, -0.137106, -0.517568,
		28.502777, 37.663765, 24.098408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921202, 38.270195, 23.985312>,  <27.911566, 37.759739, 24.460705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921202, 38.270195, 23.985312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167368, 37.992344, 23.836311>,  <28.315067, 37.825634, 23.746912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167368, 37.992344, 23.836311>,  <27.921202, 38.270195, 23.985312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167368, 37.992344, 23.836311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555305, -0.046707, -0.830334,
		0.559374, 0.717853, -0.414474,
		0.615416, -0.694626, -0.372501,
		28.351994, 37.783955, 23.724562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183683, 38.460300, 23.376856>,  <27.921202, 38.270195, 23.985312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183683, 38.460300, 23.376856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234861, 38.063713, 23.366837>,  <28.265568, 37.825760, 23.360825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234861, 38.063713, 23.366837>,  <28.183683, 38.460300, 23.376856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234861, 38.063713, 23.366837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460017, -0.036951, -0.887140,
		0.878643, 0.125027, -0.460819,
		0.127944, -0.991465, -0.025047,
		28.273245, 37.766273, 23.359322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904058, 38.325722, 22.686869>,  <28.183683, 38.460300, 23.376856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904058, 38.325722, 22.686869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595871, 38.157589, 22.495159>,  <27.410959, 38.056709, 22.380135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595871, 38.157589, 22.495159>,  <27.904058, 38.325722, 22.686869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595871, 38.157589, 22.495159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433606, -0.205568, 0.877341,
		-0.467297, 0.883778, -0.023875,
		-0.770467, -0.420332, -0.479273,
		27.364731, 38.031490, 22.351377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295444, 38.426373, 23.113161>,  <27.904058, 38.325722, 22.686869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295444, 38.426373, 23.113161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156689, 38.114628, 22.904442>,  <27.073435, 37.927582, 22.779211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156689, 38.114628, 22.904442>,  <27.295444, 38.426373, 23.113161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156689, 38.114628, 22.904442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428352, -0.363283, 0.827369,
		-0.834376, 0.510517, -0.207820,
		-0.346889, -0.779357, -0.521796,
		27.052622, 37.880821, 22.747904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622307, 38.325699, 23.455973>,  <27.295444, 38.426373, 23.113161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622307, 38.325699, 23.455973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735739, 37.988750, 23.272675>,  <26.803799, 37.786579, 23.162695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735739, 37.988750, 23.272675>,  <26.622307, 38.325699, 23.455973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735739, 37.988750, 23.272675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147112, -0.510421, 0.847248,
		-0.947597, -0.172850, -0.268669,
		0.283581, -0.842374, -0.458245,
		26.820812, 37.736038, 23.135201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095930, 38.248211, 24.022051>,  <26.622307, 38.325699, 23.455973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095930, 38.248211, 24.022051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179020, 38.211445, 24.411594>,  <26.228874, 38.189384, 24.645321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179020, 38.211445, 24.411594>,  <26.095930, 38.248211, 24.022051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179020, 38.211445, 24.411594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813417, 0.536755, 0.224160,
		-0.543327, -0.838717, 0.036734,
		0.207724, -0.091912, 0.973860,
		26.241337, 38.183872, 24.703753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456347, 38.033989, 24.378569>,  <26.095930, 38.248211, 24.022051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456347, 38.033989, 24.378569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689510, 38.260193, 24.611950>,  <25.829409, 38.395916, 24.751980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689510, 38.260193, 24.611950>,  <25.456347, 38.033989, 24.378569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689510, 38.260193, 24.611950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804286, 0.503643, 0.315386,
		-0.115501, -0.653106, 0.748406,
		0.582909, 0.565505, 0.583455,
		25.864384, 38.429844, 24.786987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953915, 38.165680, 24.840282>,  <25.456347, 38.033989, 24.378569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953915, 38.165680, 24.840282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261501, 38.416080, 24.892143>,  <25.446054, 38.566322, 24.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261501, 38.416080, 24.892143>,  <24.953915, 38.165680, 24.840282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261501, 38.416080, 24.892143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638552, 0.761849, 0.108798,
		-0.030667, -0.166451, 0.985573,
		0.768968, 0.626003, 0.129651,
		25.492191, 38.603882, 24.931038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914516, 38.764473, 24.392685>,  <24.953915, 38.165680, 24.840282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914516, 38.764473, 24.392685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594482, 38.765427, 24.152733>,  <24.402462, 38.765999, 24.008762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594482, 38.765427, 24.152733>,  <24.914516, 38.764473, 24.392685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594482, 38.765427, 24.152733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520929, 0.498650, -0.692807,
		0.297481, -0.866801, -0.400203,
		-0.800086, 0.002381, -0.599881,
		24.354456, 38.766140, 23.972769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084898, 38.438251, 23.743898>,  <24.914516, 38.764473, 24.392685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084898, 38.438251, 23.743898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759045, 38.656284, 23.664646>,  <24.563532, 38.787106, 23.617094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759045, 38.656284, 23.664646>,  <25.084898, 38.438251, 23.743898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759045, 38.656284, 23.664646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475686, 0.432509, -0.765937,
		-0.331805, -0.718206, -0.611625,
		-0.814634, 0.545083, -0.198132,
		24.514654, 38.819809, 23.605206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755169, 38.212803, 23.139437>,  <25.084898, 38.438251, 23.743898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755169, 38.212803, 23.139437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674768, 38.599979, 23.199684>,  <24.626528, 38.832287, 23.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.674768, 38.599979, 23.199684>,  <24.755169, 38.212803, 23.139437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674768, 38.599979, 23.199684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611097, 0.244067, -0.752989,
		-0.765611, -0.059308, -0.640565,
		-0.200999, 0.967943, 0.150617,
		24.614470, 38.890362, 23.244869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622149, 38.455597, 22.547539>,  <24.755169, 38.212803, 23.139437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622149, 38.455597, 22.547539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717043, 38.777710, 22.764881>,  <24.773979, 38.970978, 22.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717043, 38.777710, 22.764881>,  <24.622149, 38.455597, 22.547539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717043, 38.777710, 22.764881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600954, 0.317804, -0.733386,
		-0.763265, 0.500520, -0.408543,
		0.237237, 0.805283, 0.543358,
		24.788214, 39.019295, 22.927889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605581, 38.910084, 22.008503>,  <24.622149, 38.455597, 22.547539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605581, 38.910084, 22.008503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788637, 39.107964, 22.304028>,  <24.898472, 39.226692, 22.481342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788637, 39.107964, 22.304028>,  <24.605581, 38.910084, 22.008503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788637, 39.107964, 22.304028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498511, 0.545286, -0.673907,
		-0.736242, 0.676712, 0.002933,
		0.457641, 0.494696, 0.738810,
		24.925930, 39.256371, 22.525671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562965, 39.604946, 21.918152>,  <24.605581, 38.910084, 22.008503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562965, 39.604946, 21.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895943, 39.536701, 22.129028>,  <25.095730, 39.495754, 22.255554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895943, 39.536701, 22.129028>,  <24.562965, 39.604946, 21.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895943, 39.536701, 22.129028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519449, 0.571490, -0.635273,
		-0.192903, 0.802678, 0.564355,
		0.832443, -0.170608, 0.527193,
		25.145676, 39.485519, 22.287186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880819, 40.274342, 21.874126>,  <24.562965, 39.604946, 21.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880819, 40.274342, 21.874126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163382, 40.038906, 22.031380>,  <25.332918, 39.897644, 22.125731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163382, 40.038906, 22.031380>,  <24.880819, 40.274342, 21.874126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163382, 40.038906, 22.031380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702739, 0.516869, -0.488880,
		0.084553, 0.621616, 0.778745,
		0.706405, -0.588591, 0.393131,
		25.375303, 39.862328, 22.149319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311687, 40.700966, 22.158607>,  <24.880819, 40.274342, 21.874126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311687, 40.700966, 22.158607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543642, 40.376175, 22.132015>,  <25.682816, 40.181301, 22.116060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543642, 40.376175, 22.132015>,  <25.311687, 40.700966, 22.158607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543642, 40.376175, 22.132015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715218, 0.546457, -0.435715,
		0.390121, 0.205118, 0.897626,
		0.579887, -0.811980, -0.066480,
		25.717607, 40.132580, 22.112072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946510, 40.962048, 22.434612>,  <25.311687, 40.700966, 22.158607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946510, 40.962048, 22.434612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017748, 40.640915, 22.207016>,  <26.060490, 40.448235, 22.070457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017748, 40.640915, 22.207016>,  <25.946510, 40.962048, 22.434612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017748, 40.640915, 22.207016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673282, 0.521111, -0.524533,
		0.717617, -0.289674, 0.633336,
		0.178094, -0.802828, -0.568990,
		26.071177, 40.400066, 22.036320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704945, 40.994133, 22.286232>,  <25.946510, 40.962048, 22.434612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704945, 40.994133, 22.286232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559023, 40.750553, 22.004494>,  <26.471470, 40.604404, 21.835451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559023, 40.750553, 22.004494>,  <26.704945, 40.994133, 22.286232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559023, 40.750553, 22.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549225, 0.470113, -0.690902,
		0.751844, -0.638887, 0.162951,
		-0.364803, -0.608948, -0.704345,
		26.449581, 40.567867, 21.793190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240154, 40.788639, 21.969330>,  <26.704945, 40.994133, 22.286232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240154, 40.788639, 21.969330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962242, 40.727955, 21.688114>,  <26.795494, 40.691544, 21.519384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962242, 40.727955, 21.688114>,  <27.240154, 40.788639, 21.969330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962242, 40.727955, 21.688114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595004, 0.427895, -0.680350,
		0.404043, -0.891005, -0.207025,
		-0.694780, -0.151710, -0.703040,
		26.753807, 40.682442, 21.477201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671787, 40.718582, 21.331059>,  <27.240154, 40.788639, 21.969330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671787, 40.718582, 21.331059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298527, 40.817074, 21.226288>,  <27.074572, 40.876167, 21.163425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298527, 40.817074, 21.226288>,  <27.671787, 40.718582, 21.331059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298527, 40.817074, 21.226288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355064, 0.517313, -0.778663,
		-0.056231, -0.819609, -0.570157,
		-0.933149, 0.246227, -0.261925,
		27.018581, 40.890942, 21.147711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849449, 40.885166, 20.716690>,  <27.671787, 40.718582, 21.331059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849449, 40.885166, 20.716690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483641, 41.039890, 20.764076>,  <27.264156, 41.132725, 20.792507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483641, 41.039890, 20.764076>,  <27.849449, 40.885166, 20.716690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483641, 41.039890, 20.764076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197924, 0.683214, -0.702883,
		-0.352816, -0.619354, -0.701371,
		-0.914520, 0.386807, 0.118464,
		27.209284, 41.155933, 20.799616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603247, 40.881565, 20.027344>,  <27.849449, 40.885166, 20.716690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603247, 40.881565, 20.027344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366774, 41.136345, 20.225254>,  <27.224890, 41.289211, 20.344000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366774, 41.136345, 20.225254>,  <27.603247, 40.881565, 20.027344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366774, 41.136345, 20.225254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032575, 0.631811, -0.774438,
		-0.805879, -0.441717, -0.394264,
		-0.591183, 0.636947, 0.494774,
		27.189419, 41.327431, 20.373686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083626, 40.983879, 19.655310>,  <27.603247, 40.881565, 20.027344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083626, 40.983879, 19.655310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100151, 41.302486, 19.896591>,  <27.110065, 41.493649, 20.041361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100151, 41.302486, 19.896591>,  <27.083626, 40.983879, 19.655310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100151, 41.302486, 19.896591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049919, 0.604612, -0.794954,
		-0.997899, 0.002729, 0.064739,
		0.041311, 0.796516, 0.603205,
		27.112545, 41.541443, 20.077553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819592, 41.500229, 19.213285>,  <27.083626, 40.983879, 19.655310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819592, 41.500229, 19.213285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985012, 41.711128, 19.510197>,  <27.084265, 41.837669, 19.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985012, 41.711128, 19.510197>,  <26.819592, 41.500229, 19.213285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985012, 41.711128, 19.510197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075643, 0.792547, -0.605101,
		-0.907332, 0.306390, 0.287878,
		0.413554, 0.527252, 0.742280,
		27.109077, 41.869305, 19.732880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418653, 42.179329, 19.291763>,  <26.819592, 41.500229, 19.213285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418653, 42.179329, 19.291763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802284, 42.174114, 19.404900>,  <27.032463, 42.170986, 19.472780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802284, 42.174114, 19.404900>,  <26.418653, 42.179329, 19.291763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802284, 42.174114, 19.404900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188806, 0.773857, -0.604564,
		-0.210997, 0.633226, 0.744651,
		0.959079, -0.013033, 0.282838,
		27.090008, 42.170204, 19.489752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645054, 42.850281, 19.095177>,  <26.418653, 42.179329, 19.291763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645054, 42.850281, 19.095177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000618, 42.686306, 19.176945>,  <27.213957, 42.587921, 19.226006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000618, 42.686306, 19.176945>,  <26.645054, 42.850281, 19.095177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000618, 42.686306, 19.176945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437922, 0.629569, -0.641769,
		0.134389, 0.659996, 0.739151,
		0.888912, -0.409938, 0.204419,
		27.267292, 42.563324, 19.238270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163088, 43.387375, 19.180773>,  <26.645054, 42.850281, 19.095177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163088, 43.387375, 19.180773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353502, 43.055557, 19.063988>,  <27.467751, 42.856464, 18.993916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353502, 43.055557, 19.063988>,  <27.163088, 43.387375, 19.180773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353502, 43.055557, 19.063988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438577, 0.511700, -0.738791,
		0.762259, 0.223643, 0.607408,
		0.476036, -0.829546, -0.291964,
		27.496313, 42.806694, 18.976398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811092, 43.774128, 18.924290>,  <27.163088, 43.387375, 19.180773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811092, 43.774128, 18.924290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804436, 43.405834, 18.768356>,  <27.800442, 43.184856, 18.674795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804436, 43.405834, 18.768356>,  <27.811092, 43.774128, 18.924290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804436, 43.405834, 18.768356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437477, 0.343883, -0.830878,
		0.899076, -0.184370, 0.397078,
		-0.016640, -0.920734, -0.389835,
		27.799444, 43.129612, 18.651405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483587, 43.601791, 18.475330>,  <27.811092, 43.774128, 18.924290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483587, 43.601791, 18.475330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169968, 43.371082, 18.383591>,  <27.981796, 43.232655, 18.328547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169968, 43.371082, 18.383591>,  <28.483587, 43.601791, 18.475330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169968, 43.371082, 18.383591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171357, 0.154004, -0.973098,
		0.596580, -0.802255, -0.021912,
		-0.784047, -0.576775, -0.229348,
		27.934753, 43.198051, 18.314787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732687, 43.210522, 17.871279>,  <28.483587, 43.601791, 18.475330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732687, 43.210522, 17.871279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334539, 43.244518, 17.853302>,  <28.095652, 43.264915, 17.842516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334539, 43.244518, 17.853302>,  <28.732687, 43.210522, 17.871279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334539, 43.244518, 17.853302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061749, 0.206866, -0.976419,
		-0.073695, -0.974670, -0.211156,
		-0.995367, 0.084996, -0.044940,
		28.035929, 43.270016, 17.839821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444843, 42.905590, 17.352703>,  <28.732687, 43.210522, 17.871279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444843, 42.905590, 17.352703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214808, 43.226505, 17.416702>,  <28.076786, 43.419056, 17.455101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214808, 43.226505, 17.416702>,  <28.444843, 42.905590, 17.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214808, 43.226505, 17.416702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051752, 0.159507, -0.985839,
		-0.816452, -0.575226, -0.050211,
		-0.575089, 0.802292, 0.159998,
		28.042280, 43.467194, 17.464703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789658, 42.860031, 17.088909>,  <28.444843, 42.905590, 17.352703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789658, 42.860031, 17.088909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899786, 43.244228, 17.072617>,  <27.965862, 43.474747, 17.062841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899786, 43.244228, 17.072617>,  <27.789658, 42.860031, 17.088909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899786, 43.244228, 17.072617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156868, 0.003084, -0.987615,
		-0.948468, 0.278299, 0.151520,
		0.275320, 0.960490, -0.040731,
		27.982382, 43.532375, 17.060398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512888, 42.150566, 16.901402>,  <27.789658, 42.860031, 17.088909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512888, 42.150566, 16.901402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121424, 42.166183, 16.820709>,  <26.886545, 42.175552, 16.772293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121424, 42.166183, 16.820709>,  <27.512888, 42.150566, 16.901402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121424, 42.166183, 16.820709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182361, 0.287363, 0.940302,
		0.094680, 0.957026, -0.274112,
		-0.978663, 0.039041, -0.201731,
		26.827826, 42.177895, 16.760189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259720, 42.189819, 16.174141>,  <27.512888, 42.150566, 16.901402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259720, 42.189819, 16.174141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960445, 41.969223, 16.026588>,  <26.780880, 41.836864, 15.938057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960445, 41.969223, 16.026588>,  <27.259720, 42.189819, 16.174141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960445, 41.969223, 16.026588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536311, 0.175361, 0.825602,
		-0.390625, 0.815540, -0.426974,
		-0.748186, -0.551492, -0.368882,
		26.735991, 41.803776, 15.915924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648199, 42.579750, 16.050304>,  <27.259720, 42.189819, 16.174141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648199, 42.579750, 16.050304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562717, 42.202206, 16.151062>,  <26.511429, 41.975677, 16.211517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562717, 42.202206, 16.151062>,  <26.648199, 42.579750, 16.050304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562717, 42.202206, 16.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428068, 0.322255, 0.844340,
		-0.878116, 0.072612, -0.472905,
		-0.213705, -0.943864, 0.251894,
		26.498606, 41.919044, 16.226631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883005, 42.366169, 16.127346>,  <26.648199, 42.579750, 16.050304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883005, 42.366169, 16.127346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045712, 42.110596, 16.388515>,  <26.143335, 41.957253, 16.545218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045712, 42.110596, 16.388515>,  <25.883005, 42.366169, 16.127346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045712, 42.110596, 16.388515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449103, 0.482532, 0.751977,
		-0.795516, -0.599110, -0.090666,
		0.406768, -0.638929, 0.652924,
		26.167742, 41.918919, 16.584393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675772, 42.673199, 15.453820>,  <25.883005, 42.366169, 16.127346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675772, 42.673199, 15.453820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330355, 42.519733, 15.322919>,  <25.123104, 42.427654, 15.244378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330355, 42.519733, 15.322919>,  <25.675772, 42.673199, 15.453820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330355, 42.519733, 15.322919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207506, -0.321114, 0.924028,
		-0.459605, 0.865843, 0.197682,
		-0.863542, -0.383668, -0.327254,
		25.071293, 42.404633, 15.224743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998213, 42.925480, 15.949750>,  <25.675772, 42.673199, 15.453820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998213, 42.925480, 15.949750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978792, 42.574169, 15.759479>,  <24.967140, 42.363380, 15.645316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978792, 42.574169, 15.759479>,  <24.998213, 42.925480, 15.949750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978792, 42.574169, 15.759479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323938, -0.436652, 0.839285,
		-0.944832, 0.194838, -0.263308,
		-0.048551, -0.878279, -0.475678,
		24.964228, 42.310684, 15.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285480, 42.478836, 15.899144>,  <24.998213, 42.925480, 15.949750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285480, 42.478836, 15.899144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602192, 42.234879, 15.912505>,  <24.792219, 42.088505, 15.920522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602192, 42.234879, 15.912505>,  <24.285480, 42.478836, 15.899144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602192, 42.234879, 15.912505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358058, -0.419146, 0.834333,
		-0.494856, -0.672566, -0.550248,
		0.791778, -0.609896, 0.033401,
		24.839725, 42.051910, 15.922525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952772, 42.037525, 16.240246>,  <24.285480, 42.478836, 15.899144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952772, 42.037525, 16.240246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347229, 41.979404, 16.272282>,  <24.583902, 41.944530, 16.291504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347229, 41.979404, 16.272282>,  <23.952772, 42.037525, 16.240246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347229, 41.979404, 16.272282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133735, -0.410439, 0.902028,
		-0.098197, -0.900237, -0.424183,
		0.986140, -0.145305, 0.080089,
		24.643070, 41.935814, 16.296309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220003, 41.298588, 16.295643>,  <23.952772, 42.037525, 16.240246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220003, 41.298588, 16.295643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458502, 41.551392, 16.493652>,  <24.601601, 41.703075, 16.612459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458502, 41.551392, 16.493652>,  <24.220003, 41.298588, 16.295643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458502, 41.551392, 16.493652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177626, -0.497482, 0.849094,
		0.782903, -0.594200, -0.184361,
		0.596248, 0.632011, 0.495026,
		24.637377, 41.740993, 16.642160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482576, 40.885635, 16.744976>,  <24.220003, 41.298588, 16.295643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482576, 40.885635, 16.744976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567057, 41.236435, 16.917610>,  <24.617744, 41.446915, 17.021191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.567057, 41.236435, 16.917610>,  <24.482576, 40.885635, 16.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567057, 41.236435, 16.917610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162574, -0.403878, 0.900251,
		0.963828, -0.260298, 0.057277,
		0.211201, 0.876999, 0.431587,
		24.630417, 41.499535, 17.047087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990345, 40.766766, 17.269751>,  <24.482576, 40.885635, 16.744976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990345, 40.766766, 17.269751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890882, 41.136795, 17.384575>,  <24.831205, 41.358814, 17.453470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890882, 41.136795, 17.384575>,  <24.990345, 40.766766, 17.269751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890882, 41.136795, 17.384575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057293, -0.281803, 0.957760,
		0.966896, 0.254600, 0.017071,
		-0.248656, 0.925076, 0.287061,
		24.816286, 41.414318, 17.470694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460552, 40.960087, 17.775217>,  <24.990345, 40.766766, 17.269751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460552, 40.960087, 17.775217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113998, 41.153992, 17.823196>,  <24.906067, 41.270332, 17.851984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113998, 41.153992, 17.823196>,  <25.460552, 40.960087, 17.775217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113998, 41.153992, 17.823196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049262, -0.156057, 0.986519,
		0.496942, 0.860613, 0.111326,
		-0.866384, 0.484758, 0.119947,
		24.854084, 41.299419, 17.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574778, 41.459244, 18.398319>,  <25.460552, 40.960087, 17.775217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574778, 41.459244, 18.398319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182404, 41.394680, 18.355026>,  <24.946980, 41.355942, 18.329050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182404, 41.394680, 18.355026>,  <25.574778, 41.459244, 18.398319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182404, 41.394680, 18.355026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126138, 0.105134, 0.986426,
		-0.147840, 0.981271, -0.123490,
		-0.980934, -0.161410, -0.108233,
		24.888123, 41.346256, 18.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308477, 41.860615, 18.921732>,  <25.574778, 41.459244, 18.398319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308477, 41.860615, 18.921732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028349, 41.598362, 18.808807>,  <24.860271, 41.441010, 18.741053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028349, 41.598362, 18.808807>,  <25.308477, 41.860615, 18.921732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028349, 41.598362, 18.808807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285440, -0.105285, 0.952596,
		-0.654276, 0.747704, -0.113411,
		-0.700319, -0.655633, -0.282310,
		24.818253, 41.401672, 18.724113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667738, 42.023029, 19.443110>,  <25.308477, 41.860615, 18.921732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667738, 42.023029, 19.443110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586565, 41.660625, 19.294533>,  <24.537861, 41.443184, 19.205387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.586565, 41.660625, 19.294533>,  <24.667738, 42.023029, 19.443110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586565, 41.660625, 19.294533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309194, -0.300639, 0.902228,
		-0.929095, 0.297939, -0.219122,
		-0.202932, -0.906007, -0.371443,
		24.525686, 41.388824, 19.183100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.970701, 41.809834, 19.656837>,  <24.667738, 42.023029, 19.443110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.970701, 41.809834, 19.656837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168293, 41.470306, 19.581486>,  <24.286848, 41.266590, 19.536274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168293, 41.470306, 19.581486>,  <23.970701, 41.809834, 19.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168293, 41.470306, 19.581486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360059, -0.396912, 0.844286,
		-0.791419, -0.349231, -0.501691,
		0.493978, -0.848822, -0.188380,
		24.316486, 41.215660, 19.524971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454054, 41.377026, 19.528568>,  <23.970701, 41.809834, 19.656837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454054, 41.377026, 19.528568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.776905, 41.170498, 19.643082>,  <23.970615, 41.046581, 19.711790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.776905, 41.170498, 19.643082>,  <23.454054, 41.377026, 19.528568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.776905, 41.170498, 19.643082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547301, -0.472545, 0.690769,
		-0.221375, -0.714223, -0.663987,
		0.807127, -0.516320, 0.286285,
		24.019043, 41.015602, 19.728968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216936, 40.712189, 19.570179>,  <23.454054, 41.377026, 19.528568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216936, 40.712189, 19.570179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569441, 40.694256, 19.758377>,  <23.780945, 40.683495, 19.871296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569441, 40.694256, 19.758377>,  <23.216936, 40.712189, 19.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569441, 40.694256, 19.758377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403053, -0.591183, 0.698606,
		0.246829, -0.805290, -0.539057,
		0.881263, -0.044832, 0.470496,
		23.833820, 40.680805, 19.899527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.321192, 39.976139, 19.717987>,  <23.216936, 40.712189, 19.570179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.321192, 39.976139, 19.717987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559399, 40.168137, 19.975658>,  <23.702324, 40.283337, 20.130260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559399, 40.168137, 19.975658>,  <23.321192, 39.976139, 19.717987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559399, 40.168137, 19.975658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476549, -0.434471, 0.764288,
		0.646729, -0.762130, -0.029995,
		0.595519, 0.479993, 0.644177,
		23.738054, 40.312134, 20.168911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738262, 39.390648, 20.072021>,  <23.321192, 39.976139, 19.717987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738262, 39.390648, 20.072021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741356, 39.724823, 20.291832>,  <23.743212, 39.925327, 20.423717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741356, 39.724823, 20.291832>,  <23.738262, 39.390648, 20.072021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741356, 39.724823, 20.291832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638802, -0.418666, 0.645485,
		0.769332, -0.356030, 0.530444,
		0.007733, 0.835441, 0.549525,
		23.743675, 39.975456, 20.456690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.925346, 39.154778, 20.817265>,  <23.738262, 39.390648, 20.072021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.925346, 39.154778, 20.817265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.749981, 39.513977, 20.832226>,  <23.644762, 39.729496, 20.841202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.749981, 39.513977, 20.832226>,  <23.925346, 39.154778, 20.817265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.749981, 39.513977, 20.832226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517137, -0.286070, 0.806680,
		0.735095, 0.334316, 0.589803,
		-0.438411, 0.897996, 0.037401,
		23.618458, 39.783375, 20.843447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.830841, 39.281879, 21.537867>,  <23.925346, 39.154778, 20.817265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.830841, 39.281879, 21.537867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568577, 39.532043, 21.368649>,  <23.411219, 39.682144, 21.267118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.568577, 39.532043, 21.368649>,  <23.830841, 39.281879, 21.537867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568577, 39.532043, 21.368649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627154, -0.139090, 0.766375,
		0.420461, 0.767796, 0.483427,
		-0.655660, 0.625414, -0.423045,
		23.371880, 39.719669, 21.241735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446566, 39.616550, 22.095554>,  <23.830841, 39.281879, 21.537867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446566, 39.616550, 22.095554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.221304, 39.669453, 21.769276>,  <23.086147, 39.701195, 21.573507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.221304, 39.669453, 21.769276>,  <23.446566, 39.616550, 22.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.221304, 39.669453, 21.769276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826258, -0.075321, 0.558234,
		0.012390, 0.988350, 0.151694,
		-0.563156, 0.132255, -0.815698,
		23.052357, 39.709129, 21.524567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.869087, 40.086670, 22.319832>,  <23.446566, 39.616550, 22.095554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.869087, 40.086670, 22.319832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759439, 39.896217, 21.985607>,  <22.693651, 39.781948, 21.785072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759439, 39.896217, 21.985607>,  <22.869087, 40.086670, 22.319832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.759439, 39.896217, 21.985607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899153, -0.181321, 0.398304,
		-0.341149, 0.860479, -0.378410,
		-0.274118, -0.476130, -0.835560,
		22.677204, 39.753380, 21.734940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262438, 40.377140, 22.141966>,  <22.869087, 40.086670, 22.319832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262438, 40.377140, 22.141966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283394, 40.021339, 21.960400>,  <22.295967, 39.807858, 21.851460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283394, 40.021339, 21.960400>,  <22.262438, 40.377140, 22.141966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.283394, 40.021339, 21.960400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778435, -0.321098, 0.539384,
		-0.625535, 0.325084, -0.709244,
		0.052391, -0.889504, -0.453915,
		22.299110, 39.754490, 21.824224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529390, 40.220657, 22.105156>,  <22.262438, 40.377140, 22.141966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529390, 40.220657, 22.105156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747314, 39.888973, 22.055195>,  <21.878069, 39.689964, 22.025217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747314, 39.888973, 22.055195>,  <21.529390, 40.220657, 22.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747314, 39.888973, 22.055195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669736, -0.519903, 0.530240,
		-0.504613, -0.205231, -0.838598,
		0.544811, -0.829205, -0.124899,
		21.910757, 39.640213, 22.017723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026186, 39.713779, 22.128342>,  <21.529390, 40.220657, 22.105156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026186, 39.713779, 22.128342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360006, 39.496597, 22.165718>,  <21.560299, 39.366287, 22.188143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360006, 39.496597, 22.165718>,  <21.026186, 39.713779, 22.128342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360006, 39.496597, 22.165718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505180, -0.686482, 0.523007,
		-0.219823, -0.483679, -0.847191,
		0.834548, -0.542952, 0.093440,
		21.610371, 39.333710, 22.193750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771612, 38.996342, 21.986357>,  <21.026186, 39.713779, 22.128342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771612, 38.996342, 21.986357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114651, 39.004139, 22.191940>,  <21.320473, 39.008820, 22.315290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114651, 39.004139, 22.191940>,  <20.771612, 38.996342, 21.986357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114651, 39.004139, 22.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376464, -0.657070, 0.653096,
		0.350439, -0.753577, -0.556160,
		0.857594, 0.019496, 0.513958,
		21.371929, 39.009987, 22.346127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789190, 38.294384, 21.977369>,  <20.771612, 38.996342, 21.986357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789190, 38.294384, 21.977369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.410391, 38.374672, 22.077694>,  <20.183111, 38.422844, 22.137890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.410391, 38.374672, 22.077694>,  <20.789190, 38.294384, 21.977369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410391, 38.374672, 22.077694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282986, -0.890756, -0.355631,
		0.152032, -0.407758, 0.900344,
		-0.946998, 0.200717, 0.250814,
		20.126291, 38.434887, 22.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485714, 37.613205, 22.296524>,  <20.789190, 38.294384, 21.977369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485714, 37.613205, 22.296524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181313, 37.854465, 22.200954>,  <19.998671, 37.999222, 22.143612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181313, 37.854465, 22.200954>,  <20.485714, 37.613205, 22.296524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181313, 37.854465, 22.200954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477620, -0.770123, -0.422835,
		-0.439034, -0.207663, 0.874142,
		-0.761005, 0.603146, -0.238926,
		19.953011, 38.035408, 22.129276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.909243, 37.418026, 22.652567>,  <20.485714, 37.613205, 22.296524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.909243, 37.418026, 22.652567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748861, 37.619141, 22.346249>,  <19.652632, 37.739811, 22.162458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748861, 37.619141, 22.346249>,  <19.909243, 37.418026, 22.652567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748861, 37.619141, 22.346249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516998, -0.814281, -0.263930,
		-0.756272, 0.290090, 0.586430,
		-0.400955, 0.502786, -0.765794,
		19.628574, 37.769978, 22.116510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263632, 37.301353, 22.697565>,  <19.909243, 37.418026, 22.652567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263632, 37.301353, 22.697565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.312923, 37.389748, 22.310581>,  <19.342499, 37.442783, 22.078390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.312923, 37.389748, 22.310581>,  <19.263632, 37.301353, 22.697565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312923, 37.389748, 22.310581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583635, -0.772330, -0.250753,
		-0.802611, 0.595544, 0.033800,
		0.123230, 0.220984, -0.967461,
		19.349892, 37.456043, 22.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028580, 37.547440, 23.373281>,  <19.263632, 37.301353, 22.697565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028580, 37.547440, 23.373281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.684752, 37.742970, 23.313702>,  <18.478455, 37.860287, 23.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.684752, 37.742970, 23.313702>,  <19.028580, 37.547440, 23.373281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684752, 37.742970, 23.313702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487760, -0.697893, 0.524438,
		0.152407, 0.523444, 0.838319,
		-0.859571, 0.488827, -0.148951,
		18.426880, 37.889618, 23.269016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.459248, 29.578773, 30.302097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.771530, 29.330566, 30.331638>,  <28.958900, 29.181643, 30.349363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.771530, 29.330566, 30.331638>,  <28.459248, 29.578773, 30.302097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771530, 29.330566, 30.331638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267346, 0.224842, -0.937002,
		0.564819, 0.751270, 0.341428,
		0.780708, -0.620516, 0.073854,
		29.005743, 29.144411, 30.353794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092455, 30.010357, 30.315578>,  <28.459248, 29.578773, 30.302097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092455, 30.010357, 30.315578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215136, 29.643745, 30.212887>,  <29.288744, 29.423779, 30.151272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215136, 29.643745, 30.212887>,  <29.092455, 30.010357, 30.315578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215136, 29.643745, 30.212887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521208, 0.387416, -0.760429,
		0.796416, 0.099415, 0.596522,
		0.306700, -0.916529, -0.256728,
		29.307146, 29.368786, 30.135868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809097, 30.133266, 30.176672>,  <29.092455, 30.010357, 30.315578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809097, 30.133266, 30.176672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.712795, 29.774994, 30.027119>,  <29.655014, 29.560030, 29.937387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.712795, 29.774994, 30.027119>,  <29.809097, 30.133266, 30.176672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712795, 29.774994, 30.027119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425984, 0.248618, -0.869901,
		0.872110, -0.368701, 0.321691,
		-0.240755, -0.895684, -0.373883,
		29.640568, 29.506289, 29.914953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401846, 29.972279, 29.909445>,  <29.809097, 30.133266, 30.176672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401846, 29.972279, 29.909445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.124819, 29.774681, 29.699181>,  <29.958603, 29.656122, 29.573023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.124819, 29.774681, 29.699181>,  <30.401846, 29.972279, 29.909445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124819, 29.774681, 29.699181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429218, 0.303467, -0.850694,
		0.579759, -0.814786, 0.001860,
		-0.692569, -0.493996, -0.525659,
		29.917048, 29.626482, 29.541483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722492, 29.800392, 29.271168>,  <30.401846, 29.972279, 29.909445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722492, 29.800392, 29.271168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343647, 29.732365, 29.162319>,  <30.116339, 29.691547, 29.097010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.343647, 29.732365, 29.162319>,  <30.722492, 29.800392, 29.271168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343647, 29.732365, 29.162319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232384, 0.221296, -0.947114,
		0.221296, -0.960263, -0.170071,
		0.947114, 0.170071, 0.272122,
		30.059513, 29.681343, 29.080683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765709, 29.396975, 28.659817>,  <30.722492, 29.800392, 29.271168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765709, 29.396975, 28.659817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392241, 29.536877, 28.629017>,  <30.168159, 29.620819, 28.610537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392241, 29.536877, 28.629017>,  <30.765709, 29.396975, 28.659817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392241, 29.536877, 28.629017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182617, 0.280013, -0.942467,
		-0.308075, -0.894015, -0.325312,
		-0.933671, 0.349758, -0.076997,
		30.112139, 29.641804, 28.605917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487320, 29.176468, 27.981781>,  <30.765709, 29.396975, 28.659817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487320, 29.176468, 27.981781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.240704, 29.473293, 28.087021>,  <30.092733, 29.651388, 28.150166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.240704, 29.473293, 28.087021>,  <30.487320, 29.176468, 27.981781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240704, 29.473293, 28.087021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054402, 0.293221, -0.954496,
		-0.785443, -0.602797, -0.140412,
		-0.616539, 0.742063, 0.263102,
		30.055742, 29.695911, 28.165951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939796, 29.226614, 27.525467>,  <30.487320, 29.176468, 27.981781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939796, 29.226614, 27.525467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.912647, 29.597675, 27.672356>,  <29.896358, 29.820312, 27.760489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.912647, 29.597675, 27.672356>,  <29.939796, 29.226614, 27.525467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912647, 29.597675, 27.672356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072870, 0.362477, -0.929140,
		-0.995029, -0.089822, 0.042996,
		-0.067872, 0.927654, 0.367220,
		29.892286, 29.875971, 27.782522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473993, 29.556080, 27.060947>,  <29.939796, 29.226614, 27.525467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473993, 29.556080, 27.060947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.678062, 29.853806, 27.233330>,  <29.800505, 30.032440, 27.336760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.678062, 29.853806, 27.233330>,  <29.473993, 29.556080, 27.060947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678062, 29.853806, 27.233330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010867, 0.506606, -0.862109,
		-0.860002, 0.435143, 0.266546,
		0.510175, 0.744312, 0.430954,
		29.831116, 30.077099, 27.362616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108505, 30.182138, 26.964132>,  <29.473993, 29.556080, 27.060947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108505, 30.182138, 26.964132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.487286, 30.286320, 27.039440>,  <29.714554, 30.348829, 27.084625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.487286, 30.286320, 27.039440>,  <29.108505, 30.182138, 26.964132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487286, 30.286320, 27.039440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058751, 0.716255, -0.695361,
		-0.315959, 0.647412, 0.693561,
		0.946952, 0.260453, 0.188272,
		29.771372, 30.364456, 27.095922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114355, 30.857784, 27.116873>,  <29.108505, 30.182138, 26.964132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114355, 30.857784, 27.116873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498354, 30.830608, 27.008213>,  <29.728752, 30.814302, 26.943018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498354, 30.830608, 27.008213>,  <29.114355, 30.857784, 27.116873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498354, 30.830608, 27.008213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094325, 0.834961, -0.542164,
		0.263649, 0.546099, 0.795151,
		0.959996, -0.067938, -0.271648,
		29.786352, 30.810226, 26.926720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363878, 31.482740, 27.158806>,  <29.114355, 30.857784, 27.116873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363878, 31.482740, 27.158806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.655640, 31.338737, 26.926128>,  <29.830696, 31.252335, 26.786522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.655640, 31.338737, 26.926128>,  <29.363878, 31.482740, 27.158806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655640, 31.338737, 26.926128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146432, 0.748446, -0.646828,
		0.668230, 0.556976, 0.493201,
		0.729402, -0.360009, -0.581693,
		29.874460, 31.230734, 26.751621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706347, 32.102066, 27.041388>,  <29.363878, 31.482740, 27.158806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706347, 32.102066, 27.041388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.833418, 31.844738, 26.762756>,  <29.909660, 31.690342, 26.595577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.833418, 31.844738, 26.762756>,  <29.706347, 32.102066, 27.041388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833418, 31.844738, 26.762756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078809, 0.750007, -0.656718,
		0.944917, 0.153729, 0.288961,
		0.317680, -0.643317, -0.696579,
		29.928722, 31.651743, 26.553783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321287, 32.352421, 26.719355>,  <29.706347, 32.102066, 27.041388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321287, 32.352421, 26.719355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.215044, 32.085026, 26.441483>,  <30.151299, 31.924589, 26.274759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.215044, 32.085026, 26.441483>,  <30.321287, 32.352421, 26.719355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215044, 32.085026, 26.441483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006423, 0.719318, -0.694651,
		0.964060, -0.188967, -0.186763,
		-0.265608, -0.668485, -0.694680,
		30.135361, 31.884480, 26.233078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789726, 32.492863, 26.225714>,  <30.321287, 32.352421, 26.719355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789726, 32.492863, 26.225714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496775, 32.283245, 26.051819>,  <30.321003, 32.157475, 25.947481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496775, 32.283245, 26.051819>,  <30.789726, 32.492863, 26.225714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496775, 32.283245, 26.051819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012054, 0.628400, -0.777797,
		0.680793, -0.574880, -0.453909,
		-0.732376, -0.524048, -0.434740,
		30.277061, 32.126030, 25.921398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022923, 32.373432, 25.567169>,  <30.789726, 32.492863, 26.225714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022923, 32.373432, 25.567169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625078, 32.346596, 25.535561>,  <30.386372, 32.330494, 25.516596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.625078, 32.346596, 25.535561>,  <31.022923, 32.373432, 25.567169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625078, 32.346596, 25.535561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028548, 0.555551, -0.830993,
		0.099649, -0.828772, -0.550643,
		-0.994613, -0.067088, -0.079020,
		30.326694, 32.326469, 25.511854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890463, 32.084824, 24.900322>,  <31.022923, 32.373432, 25.567169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890463, 32.084824, 24.900322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.563478, 32.284771, 25.014786>,  <30.367289, 32.404739, 25.083464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.563478, 32.284771, 25.014786>,  <30.890463, 32.084824, 24.900322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563478, 32.284771, 25.014786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002120, 0.499426, -0.866354,
		-0.575982, -0.707603, -0.409321,
		-0.817460, 0.499872, 0.286160,
		30.318241, 32.434734, 25.100634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502657, 32.116863, 24.335285>,  <30.890463, 32.084824, 24.900322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502657, 32.116863, 24.335285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360477, 32.423435, 24.549290>,  <30.275169, 32.607380, 24.677692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.360477, 32.423435, 24.549290>,  <30.502657, 32.116863, 24.335285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360477, 32.423435, 24.549290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100705, 0.537655, -0.837130,
		-0.929255, -0.351435, -0.113925,
		-0.355449, 0.766434, 0.535009,
		30.253843, 32.653366, 24.709793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002110, 32.288311, 24.000914>,  <30.502657, 32.116863, 24.335285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002110, 32.288311, 24.000914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044115, 32.626751, 24.209946>,  <30.069319, 32.829815, 24.335365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044115, 32.626751, 24.209946>,  <30.002110, 32.288311, 24.000914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044115, 32.626751, 24.209946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156262, 0.532997, -0.831562,
		-0.982117, 0.005667, 0.188186,
		0.105015, 0.846098, 0.522580,
		30.075619, 32.880581, 24.366720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386055, 32.734234, 23.771906>,  <30.002110, 32.288311, 24.000914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386055, 32.734234, 23.771906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700912, 32.929790, 23.922314>,  <29.889828, 33.047123, 24.012558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.700912, 32.929790, 23.922314>,  <29.386055, 32.734234, 23.771906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700912, 32.929790, 23.922314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124824, 0.470770, -0.873381,
		-0.604006, 0.734413, 0.309538,
		0.787144, 0.488890, 0.376020,
		29.937056, 33.076458, 24.035120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282598, 33.334045, 23.415703>,  <29.386055, 32.734234, 23.771906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282598, 33.334045, 23.415703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.646208, 33.381802, 23.575417>,  <29.864372, 33.410454, 23.671246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.646208, 33.381802, 23.575417>,  <29.282598, 33.334045, 23.415703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646208, 33.381802, 23.575417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282998, 0.526488, -0.801700,
		-0.305930, 0.841758, 0.444803,
		0.909021, 0.119386, 0.399284,
		29.918915, 33.417618, 23.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335173, 33.994011, 23.462080>,  <29.282598, 33.334045, 23.415703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335173, 33.994011, 23.462080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698202, 33.826187, 23.455448>,  <29.916019, 33.725491, 23.451469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.698202, 33.826187, 23.455448>,  <29.335173, 33.994011, 23.462080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698202, 33.826187, 23.455448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189169, 0.443815, -0.875924,
		0.374866, 0.791830, 0.482164,
		0.907574, -0.419564, -0.016582,
		29.970474, 33.700317, 23.450474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985739, 34.734219, 23.563871>,  <29.335173, 33.994011, 23.462080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985739, 34.734219, 23.563871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.654266, 34.957897, 23.554131>,  <28.455383, 35.092102, 23.548286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.654266, 34.957897, 23.554131>,  <28.985739, 34.734219, 23.563871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654266, 34.957897, 23.554131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345721, -0.477147, 0.807965,
		0.440188, 0.677964, 0.588727,
		-0.828680, 0.559192, -0.024353,
		28.405663, 35.125656, 23.546825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851368, 34.993820, 24.238928>,  <28.985739, 34.734219, 23.563871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851368, 34.993820, 24.238928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.491594, 35.006405, 24.064560>,  <28.275730, 35.013954, 23.959938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.491594, 35.006405, 24.064560>,  <28.851368, 34.993820, 24.238928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491594, 35.006405, 24.064560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411912, -0.394436, 0.821431,
		-0.146100, 0.918385, 0.367728,
		-0.899435, 0.031460, -0.435921,
		28.221764, 35.015842, 23.933784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419397, 35.398319, 24.657440>,  <28.851368, 34.993820, 24.238928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419397, 35.398319, 24.657440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.157867, 35.189957, 24.437927>,  <28.000950, 35.064938, 24.306219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.157867, 35.189957, 24.437927>,  <28.419397, 35.398319, 24.657440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157867, 35.189957, 24.437927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442000, -0.325728, 0.835785,
		-0.614124, 0.789021, -0.017272,
		-0.653826, -0.520910, -0.548785,
		27.961720, 35.033684, 24.273293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800653, 35.411079, 25.012133>,  <28.419397, 35.398319, 24.657440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800653, 35.411079, 25.012133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.736311, 35.093712, 24.777317>,  <27.697706, 34.903290, 24.636427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.736311, 35.093712, 24.777317>,  <27.800653, 35.411079, 25.012133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736311, 35.093712, 24.777317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622509, -0.379999, 0.684166,
		-0.765903, 0.475488, -0.432785,
		-0.160855, -0.793418, -0.587038,
		27.688055, 34.855686, 24.601206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174698, 35.214310, 25.252741>,  <27.800653, 35.411079, 25.012133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174698, 35.214310, 25.252741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.329096, 34.895958, 25.066158>,  <27.421734, 34.704945, 24.954208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.329096, 34.895958, 25.066158>,  <27.174698, 35.214310, 25.252741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329096, 34.895958, 25.066158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392086, -0.599236, 0.697986,
		-0.835032, -0.086527, -0.543355,
		0.385993, -0.795883, -0.466455,
		27.444895, 34.657192, 24.926222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641983, 34.679459, 25.349678>,  <27.174698, 35.214310, 25.252741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641983, 34.679459, 25.349678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.968151, 34.482243, 25.228352>,  <27.163853, 34.363914, 25.155556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.968151, 34.482243, 25.228352>,  <26.641983, 34.679459, 25.349678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968151, 34.482243, 25.228352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189903, -0.722824, 0.664426,
		-0.546830, -0.484188, -0.683036,
		0.815423, -0.493039, -0.303313,
		27.212778, 34.334332, 25.137358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404631, 34.023956, 25.253710>,  <26.641983, 34.679459, 25.349678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404631, 34.023956, 25.253710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.800116, 33.978718, 25.293026>,  <27.037407, 33.951576, 25.316616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.800116, 33.978718, 25.293026>,  <26.404631, 34.023956, 25.253710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800116, 33.978718, 25.293026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149749, -0.723304, 0.674096,
		-0.005143, -0.681205, -0.732074,
		0.988710, -0.113094, 0.098290,
		27.096729, 33.944790, 25.322514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500443, 33.387817, 25.518188>,  <26.404631, 34.023956, 25.253710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500443, 33.387817, 25.518188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.870899, 33.523991, 25.583138>,  <27.093174, 33.605694, 25.622107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.870899, 33.523991, 25.583138>,  <26.500443, 33.387817, 25.518188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870899, 33.523991, 25.583138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108521, -0.652810, 0.749708,
		0.361221, -0.676717, -0.641540,
		0.926144, 0.340431, 0.162371,
		27.148743, 33.626122, 25.631849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938749, 32.796204, 25.536325>,  <26.500443, 33.387817, 25.518188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938749, 32.796204, 25.536325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.105085, 33.104443, 25.729515>,  <27.204887, 33.289387, 25.845428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.105085, 33.104443, 25.729515>,  <26.938749, 32.796204, 25.536325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105085, 33.104443, 25.729515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124008, -0.574152, 0.809304,
		0.900944, -0.276647, -0.334314,
		0.415839, 0.770595, 0.482972,
		27.229837, 33.335621, 25.874407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520885, 32.428360, 25.799309>,  <26.938749, 32.796204, 25.536325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520885, 32.428360, 25.799309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.434362, 32.753868, 26.015083>,  <27.382448, 32.949173, 26.144548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.434362, 32.753868, 26.015083>,  <27.520885, 32.428360, 25.799309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434362, 32.753868, 26.015083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180582, -0.509636, 0.841226,
		0.959479, 0.279377, -0.036713,
		-0.216309, 0.813769, 0.539435,
		27.369469, 32.997997, 26.176914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001591, 32.387344, 26.288197>,  <27.520885, 32.428360, 25.799309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001591, 32.387344, 26.288197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.774958, 32.675884, 26.447514>,  <27.638979, 32.849010, 26.543104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.774958, 32.675884, 26.447514>,  <28.001591, 32.387344, 26.288197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774958, 32.675884, 26.447514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073114, -0.437442, 0.896269,
		0.820756, 0.536929, 0.195105,
		-0.566580, 0.721354, 0.398291,
		27.604984, 32.892292, 26.567001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422007, 32.705128, 26.864614>,  <28.001591, 32.387344, 26.288197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422007, 32.705128, 26.864614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029259, 32.756245, 26.920612>,  <27.793610, 32.786915, 26.954210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029259, 32.756245, 26.920612>,  <28.422007, 32.705128, 26.864614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029259, 32.756245, 26.920612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083629, -0.370743, 0.924963,
		0.170102, 0.919902, 0.353335,
		-0.981871, 0.127789, 0.139995,
		27.734697, 32.794582, 26.962610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353228, 33.170746, 27.441235>,  <28.422007, 32.705128, 26.864614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353228, 33.170746, 27.441235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066771, 32.898048, 27.381420>,  <27.894896, 32.734428, 27.345531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.066771, 32.898048, 27.381420>,  <28.353228, 33.170746, 27.441235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066771, 32.898048, 27.381420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005324, -0.219583, 0.975579,
		-0.697932, 0.697860, 0.160882,
		-0.716145, -0.681744, -0.149539,
		27.851927, 32.693523, 27.336559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836233, 33.365623, 27.898077>,  <28.353228, 33.170746, 27.441235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836233, 33.365623, 27.898077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764139, 32.983189, 27.805626>,  <27.720882, 32.753727, 27.750154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.764139, 32.983189, 27.805626>,  <27.836233, 33.365623, 27.898077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764139, 32.983189, 27.805626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033735, -0.240848, 0.969977,
		-0.983045, 0.167026, 0.075663,
		-0.180234, -0.956083, -0.231129,
		27.710070, 32.696365, 27.736286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516151, 33.129787, 28.514479>,  <27.836233, 33.365623, 27.898077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516151, 33.129787, 28.514479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.613287, 32.791660, 28.324127>,  <27.671568, 32.588783, 28.209917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.613287, 32.791660, 28.324127>,  <27.516151, 33.129787, 28.514479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613287, 32.791660, 28.324127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009479, -0.492606, 0.870201,
		-0.970020, -0.206807, -0.127637,
		0.242839, -0.845323, -0.475878,
		27.686138, 32.538063, 28.181364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988607, 32.479004, 28.669064>,  <27.516151, 33.129787, 28.514479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988607, 32.479004, 28.669064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.350126, 32.340630, 28.568283>,  <27.567038, 32.257607, 28.507814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.350126, 32.340630, 28.568283>,  <26.988607, 32.479004, 28.669064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350126, 32.340630, 28.568283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051590, -0.672501, 0.738296,
		-0.424841, -0.654271, -0.625651,
		0.903797, -0.345936, -0.251952,
		27.621265, 32.236847, 28.492697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892101, 31.870804, 28.668831>,  <26.988607, 32.479004, 28.669064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892101, 31.870804, 28.668831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290520, 31.888184, 28.699837>,  <27.529570, 31.898611, 28.718441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290520, 31.888184, 28.699837>,  <26.892101, 31.870804, 28.668831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290520, 31.888184, 28.699837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021628, -0.727538, 0.685726,
		0.086192, -0.684689, -0.723720,
		0.996044, 0.043452, 0.077516,
		27.589333, 31.901218, 28.723091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072945, 31.188303, 28.786478>,  <26.892101, 31.870804, 28.668831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072945, 31.188303, 28.786478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.394957, 31.392632, 28.907131>,  <27.588163, 31.515228, 28.979523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.394957, 31.392632, 28.907131>,  <27.072945, 31.188303, 28.786478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394957, 31.392632, 28.907131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073938, -0.590894, 0.803354,
		0.588606, -0.624423, -0.513458,
		0.805032, 0.510823, 0.301635,
		27.636467, 31.545879, 28.997622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.588835, 30.657015, 28.926527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.730974, 30.981205, 29.112801>,  <27.816257, 31.175718, 29.224564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.730974, 30.981205, 29.112801>,  <27.588835, 30.657015, 28.926527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730974, 30.981205, 29.112801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047344, -0.513165, 0.856984,
		0.933534, -0.282481, -0.220724,
		0.355349, 0.810473, 0.465683,
		27.837580, 31.224346, 29.252506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124063, 30.405140, 29.308149>,  <27.588835, 30.657015, 28.926527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124063, 30.405140, 29.308149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.021965, 30.750416, 29.482391>,  <27.960707, 30.957582, 29.586937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.021965, 30.750416, 29.482391>,  <28.124063, 30.405140, 29.308149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021965, 30.750416, 29.482391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034855, -0.442020, 0.896327,
		0.966248, 0.243967, 0.082737,
		-0.255246, 0.863191, 0.435605,
		27.945391, 31.009373, 29.613073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546030, 30.380596, 29.943834>,  <28.124063, 30.405140, 29.308149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546030, 30.380596, 29.943834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251703, 30.643463, 30.009201>,  <28.075108, 30.801184, 30.048420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251703, 30.643463, 30.009201>,  <28.546030, 30.380596, 29.943834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251703, 30.643463, 30.009201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151988, -0.395430, 0.905834,
		0.659901, 0.641693, 0.390846,
		-0.735819, 0.657165, 0.163415,
		28.030958, 30.840612, 30.058226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610844, 30.580879, 30.662580>,  <28.546030, 30.380596, 29.943834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610844, 30.580879, 30.662580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230122, 30.670967, 30.579308>,  <28.001688, 30.725019, 30.529345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230122, 30.670967, 30.579308>,  <28.610844, 30.580879, 30.662580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230122, 30.670967, 30.579308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294719, -0.483795, 0.824065,
		0.084880, 0.845706, 0.526856,
		-0.951807, 0.225222, -0.208181,
		27.944580, 30.738533, 30.516853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321650, 30.918465, 31.165838>,  <28.610844, 30.580879, 30.662580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321650, 30.918465, 31.165838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992796, 30.769817, 30.993328>,  <27.795485, 30.680628, 30.889822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.992796, 30.769817, 30.993328>,  <28.321650, 30.918465, 31.165838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992796, 30.769817, 30.993328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355809, -0.255956, 0.898825,
		-0.444408, 0.892404, 0.078205,
		-0.822132, -0.371619, -0.431274,
		27.746157, 30.658331, 30.863945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692484, 31.115086, 31.570702>,  <28.321650, 30.918465, 31.165838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692484, 31.115086, 31.570702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550222, 30.814274, 31.348724>,  <27.464865, 30.633787, 31.215538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550222, 30.814274, 31.348724>,  <27.692484, 31.115086, 31.570702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550222, 30.814274, 31.348724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603060, -0.268968, 0.750983,
		-0.714024, 0.601753, -0.357860,
		-0.355654, -0.752031, -0.554942,
		27.443527, 30.588665, 31.182241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950016, 31.060854, 31.734350>,  <27.692484, 31.115086, 31.570702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950016, 31.060854, 31.734350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061916, 30.710415, 31.577282>,  <27.129057, 30.500151, 31.483042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061916, 30.710415, 31.577282>,  <26.950016, 31.060854, 31.734350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061916, 30.710415, 31.577282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515399, -0.482112, 0.708472,
		-0.810003, 0.004188, -0.586411,
		0.279748, -0.876100, -0.392671,
		27.145842, 30.447584, 31.459480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390955, 30.700680, 31.726669>,  <26.950016, 31.060854, 31.734350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390955, 30.700680, 31.726669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678030, 30.422146, 31.729305>,  <26.850275, 30.255026, 31.730886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678030, 30.422146, 31.729305>,  <26.390955, 30.700680, 31.726669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678030, 30.422146, 31.729305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526988, -0.536913, 0.658793,
		-0.455201, -0.476281, -0.752295,
		0.717688, -0.696334, 0.006591,
		26.893335, 30.213245, 31.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057985, 29.993183, 31.596529>,  <26.390955, 30.700680, 31.726669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057985, 29.993183, 31.596529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.405981, 29.967491, 31.792076>,  <26.614779, 29.952076, 31.909405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.405981, 29.967491, 31.792076>,  <26.057985, 29.993183, 31.596529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405981, 29.967491, 31.792076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461657, -0.454332, 0.761876,
		0.173175, -0.888514, -0.424915,
		0.869990, -0.064227, 0.488868,
		26.666979, 29.948223, 31.938736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124290, 29.394354, 31.944605>,  <26.057985, 29.993183, 31.596529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124290, 29.394354, 31.944605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.435884, 29.536751, 32.151081>,  <26.622841, 29.622189, 32.274967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.435884, 29.536751, 32.151081>,  <26.124290, 29.394354, 31.944605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435884, 29.536751, 32.151081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279628, -0.539602, 0.794127,
		0.561242, -0.762953, -0.320796,
		0.778984, 0.355994, 0.516191,
		26.669580, 29.643549, 32.305939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258217, 28.920614, 32.326649>,  <26.124290, 29.394354, 31.944605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258217, 28.920614, 32.326649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.444393, 29.220917, 32.514153>,  <26.556099, 29.401098, 32.626656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.444393, 29.220917, 32.514153>,  <26.258217, 28.920614, 32.326649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444393, 29.220917, 32.514153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086232, -0.488635, 0.868217,
		0.880868, -0.444526, -0.162691,
		0.465442, 0.750755, 0.468755,
		26.584026, 29.446144, 32.654778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746525, 28.562445, 32.818817>,  <26.258217, 28.920614, 32.326649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746525, 28.562445, 32.818817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715977, 28.934608, 32.962204>,  <26.697649, 29.157907, 33.048237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.715977, 28.934608, 32.962204>,  <26.746525, 28.562445, 32.818817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715977, 28.934608, 32.962204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102284, -0.364935, 0.925397,
		0.991820, 0.034005, 0.123036,
		-0.076368, 0.930412, 0.358472,
		26.693066, 29.213732, 33.069744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140474, 28.556961, 33.453991>,  <26.746525, 28.562445, 32.818817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140474, 28.556961, 33.453991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.890680, 28.868668, 33.475002>,  <26.740803, 29.055693, 33.487610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.890680, 28.868668, 33.475002>,  <27.140474, 28.556961, 33.453991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890680, 28.868668, 33.475002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259862, -0.270733, 0.926917,
		0.736539, 0.565196, 0.371571,
		-0.624486, 0.779267, 0.052532,
		26.703335, 29.102448, 33.490761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294899, 28.889975, 33.974674>,  <27.140474, 28.556961, 33.453991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294899, 28.889975, 33.974674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.913095, 28.979321, 33.895657>,  <26.684013, 29.032928, 33.848248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.913095, 28.979321, 33.895657>,  <27.294899, 28.889975, 33.974674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913095, 28.979321, 33.895657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250141, -0.239185, 0.938200,
		0.162313, 0.944933, 0.284177,
		-0.954507, 0.223366, -0.197544,
		26.626743, 29.046329, 33.836395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179230, 29.374086, 34.521553>,  <27.294899, 28.889975, 33.974674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179230, 29.374086, 34.521553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.811310, 29.296089, 34.385353>,  <26.590557, 29.249290, 34.303631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.811310, 29.296089, 34.385353>,  <27.179230, 29.374086, 34.521553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811310, 29.296089, 34.385353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334799, -0.062550, 0.940211,
		-0.204635, 0.978808, -0.007750,
		-0.919801, -0.194995, -0.340504,
		26.535370, 29.237591, 34.283203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702116, 29.829531, 34.774399>,  <27.179230, 29.374086, 34.521553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702116, 29.829531, 34.774399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.436485, 29.540798, 34.696465>,  <26.277107, 29.367558, 34.649704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.436485, 29.540798, 34.696465>,  <26.702116, 29.829531, 34.774399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436485, 29.540798, 34.696465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286562, 0.005042, 0.958049,
		-0.690569, 0.692049, -0.210198,
		-0.664076, -0.721833, -0.194833,
		26.237263, 29.324247, 34.638016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032213, 30.031546, 35.129807>,  <26.702116, 29.829531, 34.774399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032213, 30.031546, 35.129807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.036163, 29.634777, 35.079224>,  <26.038532, 29.396715, 35.048874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.036163, 29.634777, 35.079224>,  <26.032213, 30.031546, 35.129807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036163, 29.634777, 35.079224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172794, -0.126249, 0.976833,
		-0.984908, 0.012206, -0.172645,
		0.009874, -0.991924, -0.126453,
		26.039125, 29.337200, 35.041286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617516, 29.730747, 35.749130>,  <26.032213, 30.031546, 35.129807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617516, 29.730747, 35.749130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804403, 29.406208, 35.608604>,  <25.916536, 29.211485, 35.524288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.804403, 29.406208, 35.608604>,  <25.617516, 29.730747, 35.749130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804403, 29.406208, 35.608604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026635, -0.384251, 0.922845,
		-0.883741, -0.440527, -0.157919,
		0.467219, -0.811349, -0.351311,
		25.944569, 29.162804, 35.503212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168236, 29.298561, 36.006710>,  <25.617516, 29.730747, 35.749130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168236, 29.298561, 36.006710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.507076, 29.103161, 35.923008>,  <25.710381, 28.985922, 35.872787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.507076, 29.103161, 35.923008>,  <25.168236, 29.298561, 36.006710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507076, 29.103161, 35.923008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014389, -0.372527, 0.927910,
		-0.531236, -0.789045, -0.308539,
		0.847101, -0.488499, -0.209253,
		25.761208, 28.956612, 35.860233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043188, 28.671858, 36.291561>,  <25.168236, 29.298561, 36.006710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043188, 28.671858, 36.291561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.439714, 28.678322, 36.239361>,  <25.677629, 28.682199, 36.208038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.439714, 28.678322, 36.239361>,  <25.043188, 28.671858, 36.291561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439714, 28.678322, 36.239361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129128, -0.307292, 0.942814,
		-0.024868, -0.951478, -0.306710,
		0.991316, 0.016159, -0.130504,
		25.737110, 28.683170, 36.200211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379049, 28.030380, 36.470692>,  <25.043188, 28.671858, 36.291561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379049, 28.030380, 36.470692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666773, 28.307079, 36.496235>,  <25.839407, 28.473099, 36.511562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.666773, 28.307079, 36.496235>,  <25.379049, 28.030380, 36.470692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666773, 28.307079, 36.496235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122567, -0.216853, 0.968479,
		0.683791, -0.688810, -0.240770,
		0.719310, 0.691748, 0.063857,
		25.882566, 28.514605, 36.515392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852970, 27.594276, 36.872082>,  <25.379049, 28.030380, 36.470692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852970, 27.594276, 36.872082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.928656, 27.984318, 36.918331>,  <25.974066, 28.218344, 36.946079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.928656, 27.984318, 36.918331>,  <25.852970, 27.594276, 36.872082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928656, 27.984318, 36.918331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157239, -0.146315, 0.976661,
		0.969265, -0.166617, -0.181009,
		0.189212, 0.975106, 0.115619,
		25.985420, 28.276850, 36.953018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567398, 27.790901, 37.121441>,  <25.852970, 27.594276, 36.872082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567398, 27.790901, 37.121441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.291029, 28.011009, 37.308987>,  <26.125208, 28.143074, 37.421513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.291029, 28.011009, 37.308987>,  <26.567398, 27.790901, 37.121441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291029, 28.011009, 37.308987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197845, -0.479874, 0.854739,
		0.695330, 0.683320, 0.222688,
		-0.690922, 0.550268, 0.468862,
		26.083752, 28.176090, 37.449646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878790, 28.150517, 37.687706>,  <26.567398, 27.790901, 37.121441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878790, 28.150517, 37.687706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.493536, 28.060822, 37.747150>,  <26.262383, 28.007004, 37.782818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.493536, 28.060822, 37.747150>,  <26.878790, 28.150517, 37.687706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493536, 28.060822, 37.747150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255382, -0.588555, 0.767061,
		-0.084540, 0.776737, 0.624126,
		-0.963137, -0.224238, 0.148609,
		26.204596, 27.993549, 37.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525160, 27.823940, 37.922649>,  <26.878790, 28.150517, 37.687706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525160, 27.823940, 37.922649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863541, 27.623985, 37.996918>,  <28.066570, 27.504011, 38.041481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863541, 27.623985, 37.996918>,  <27.525160, 27.823940, 37.922649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863541, 27.623985, 37.996918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398109, 0.360382, -0.843584,
		0.354784, 0.787551, 0.503877,
		0.845953, -0.499888, 0.185673,
		28.117327, 27.474018, 38.052620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198006, 28.213036, 37.794147>,  <27.525160, 27.823940, 37.922649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198006, 28.213036, 37.794147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.267523, 27.821678, 37.749352>,  <28.309233, 27.586864, 37.722473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.267523, 27.821678, 37.749352>,  <28.198006, 28.213036, 37.794147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267523, 27.821678, 37.749352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372329, 0.170561, -0.912293,
		0.911684, 0.116852, 0.393927,
		0.173792, -0.978394, -0.111990,
		28.319660, 27.528160, 37.715755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864342, 28.044941, 37.451740>,  <28.198006, 28.213036, 37.794147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864342, 28.044941, 37.451740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693056, 27.685986, 37.409172>,  <28.590284, 27.470612, 37.383633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693056, 27.685986, 37.409172>,  <28.864342, 28.044941, 37.451740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693056, 27.685986, 37.409172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311040, -0.035795, -0.949723,
		0.848461, -0.439787, 0.294452,
		-0.428215, -0.897389, -0.106421,
		28.564592, 27.416769, 37.377247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284634, 27.618765, 37.139156>,  <28.864342, 28.044941, 37.451740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284634, 27.618765, 37.139156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937471, 27.439861, 37.052719>,  <28.729174, 27.332520, 37.000858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937471, 27.439861, 37.052719>,  <29.284634, 27.618765, 37.139156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937471, 27.439861, 37.052719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271827, -0.063544, -0.960246,
		0.415748, -0.892144, 0.176728,
		-0.867907, -0.447260, -0.216090,
		28.677099, 27.305683, 36.987892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446047, 27.174849, 36.634243>,  <29.284634, 27.618765, 37.139156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446047, 27.174849, 36.634243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.048853, 27.166862, 36.587616>,  <28.810537, 27.162071, 36.559639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.048853, 27.166862, 36.587616>,  <29.446047, 27.174849, 36.634243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048853, 27.166862, 36.587616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113037, 0.129460, -0.985121,
		0.034758, -0.991383, -0.126295,
		-0.992982, -0.019964, -0.116563,
		28.750957, 27.160873, 36.552647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301821, 26.824612, 36.000698>,  <29.446047, 27.174849, 36.634243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301821, 26.824612, 36.000698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953611, 27.015293, 36.049599>,  <28.744686, 27.129702, 36.078938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.953611, 27.015293, 36.049599>,  <29.301821, 26.824612, 36.000698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953611, 27.015293, 36.049599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078438, 0.110830, -0.990739,
		-0.485838, -0.872049, -0.059089,
		-0.870523, 0.476704, 0.122247,
		28.692455, 27.158304, 36.086273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838747, 26.522423, 35.626644>,  <29.301821, 26.824612, 36.000698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838747, 26.522423, 35.626644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698977, 26.896580, 35.648346>,  <28.615114, 27.121073, 35.661369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.698977, 26.896580, 35.648346>,  <28.838747, 26.522423, 35.626644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698977, 26.896580, 35.648346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034140, 0.045160, -0.998396,
		-0.936342, -0.350719, 0.016154,
		-0.349427, 0.935391, 0.054258,
		28.594149, 27.177197, 35.664623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346060, 26.618250, 35.033066>,  <28.838747, 26.522423, 35.626644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346060, 26.618250, 35.033066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422806, 26.993431, 35.148602>,  <28.468853, 27.218540, 35.217922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422806, 26.993431, 35.148602>,  <28.346060, 26.618250, 35.033066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422806, 26.993431, 35.148602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133285, 0.316484, -0.939188,
		-0.972329, 0.141699, 0.185737,
		0.191865, 0.937955, 0.288840,
		28.480366, 27.274818, 35.235252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803017, 27.094288, 34.714054>,  <28.346060, 26.618250, 35.033066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803017, 27.094288, 34.714054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.145056, 27.283451, 34.799061>,  <28.350279, 27.396948, 34.850067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.145056, 27.283451, 34.799061>,  <27.803017, 27.094288, 34.714054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145056, 27.283451, 34.799061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062324, 0.313175, -0.947648,
		-0.514705, 0.823579, 0.238322,
		0.855099, 0.472906, 0.212521,
		28.401587, 27.425323, 34.862816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714987, 27.784376, 34.617825>,  <27.803017, 27.094288, 34.714054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714987, 27.784376, 34.617825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.110821, 27.744976, 34.575840>,  <28.348322, 27.721336, 34.550648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.110821, 27.744976, 34.575840>,  <27.714987, 27.784376, 34.617825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110821, 27.744976, 34.575840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053390, 0.426003, -0.903145,
		0.133671, 0.899344, 0.416308,
		0.989587, -0.098498, -0.104960,
		28.407698, 27.715427, 34.544353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957937, 28.511660, 34.432068>,  <27.714987, 27.784376, 34.617825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957937, 28.511660, 34.432068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230541, 28.250641, 34.299568>,  <28.394104, 28.094030, 34.220070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230541, 28.250641, 34.299568>,  <27.957937, 28.511660, 34.432068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230541, 28.250641, 34.299568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060461, 0.501305, -0.863156,
		0.729306, 0.568222, 0.381098,
		0.681511, -0.652547, -0.331250,
		28.434994, 28.054876, 34.200191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413826, 28.938198, 34.056404>,  <27.957937, 28.511660, 34.432068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413826, 28.938198, 34.056404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.501591, 28.564903, 33.942616>,  <28.554249, 28.340927, 33.874340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.501591, 28.564903, 33.942616>,  <28.413826, 28.938198, 34.056404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501591, 28.564903, 33.942616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040474, 0.300037, -0.953069,
		0.974793, 0.197600, 0.103603,
		0.219411, -0.933237, -0.284476,
		28.567413, 28.284931, 33.857273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938595, 29.100801, 33.674786>,  <28.413826, 28.938198, 34.056404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938595, 29.100801, 33.674786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851574, 28.728699, 33.556606>,  <28.799360, 28.505438, 33.485699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851574, 28.728699, 33.556606>,  <28.938595, 29.100801, 33.674786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851574, 28.728699, 33.556606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037509, 0.294510, -0.954912,
		0.975327, -0.218827, -0.029179,
		-0.217554, -0.930257, -0.295451,
		28.786308, 28.449621, 33.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481712, 28.861177, 33.181992>,  <28.938595, 29.100801, 33.674786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481712, 28.861177, 33.181992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155354, 28.641674, 33.109135>,  <28.959538, 28.509972, 33.065422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155354, 28.641674, 33.109135>,  <29.481712, 28.861177, 33.181992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155354, 28.641674, 33.109135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241534, -0.037270, -0.969676,
		0.525330, -0.835149, 0.162953,
		-0.815898, -0.548759, -0.182138,
		28.910583, 28.477047, 33.054493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679329, 28.454815, 32.699093>,  <29.481712, 28.861177, 33.181992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679329, 28.454815, 32.699093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280968, 28.440453, 32.665901>,  <29.041950, 28.431835, 32.645985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280968, 28.440453, 32.665901>,  <29.679329, 28.454815, 32.699093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280968, 28.440453, 32.665901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081578, 0.038994, -0.995904,
		0.038994, -0.998594, -0.035905,
		0.995904, 0.035905, 0.082983,
		28.982197, 28.429682, 32.641006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557404, 27.924730, 32.212265>,  <29.679329, 28.454815, 32.699093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557404, 27.924730, 32.212265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241886, 28.170441, 32.220982>,  <29.052576, 28.317867, 32.226212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.241886, 28.170441, 32.220982>,  <29.557404, 27.924730, 32.212265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241886, 28.170441, 32.220982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033661, -0.007770, -0.999403,
		-0.613739, -0.789054, 0.026806,
		-0.788791, 0.614275, 0.021792,
		29.005249, 28.354723, 32.227520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151428, 27.669060, 31.774790>,  <29.557404, 27.924730, 32.212265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151428, 27.669060, 31.774790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995119, 28.034950, 31.815914>,  <28.901333, 28.254484, 31.840588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995119, 28.034950, 31.815914>,  <29.151428, 27.669060, 31.774790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995119, 28.034950, 31.815914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023989, 0.101531, -0.994543,
		-0.920174, -0.391108, -0.017733,
		-0.390774, 0.914727, 0.102809,
		28.877886, 28.309368, 31.846756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539349, 27.852036, 31.432062>,  <29.151428, 27.669060, 31.774790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539349, 27.852036, 31.432062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721439, 28.205055, 31.479176>,  <28.830694, 28.416868, 31.507442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.721439, 28.205055, 31.479176>,  <28.539349, 27.852036, 31.432062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721439, 28.205055, 31.479176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095302, 0.083226, -0.991963,
		-0.885261, 0.462792, -0.046222,
		0.455226, 0.882551, 0.117782,
		28.858007, 28.469820, 31.514511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346455, 28.226648, 30.890482>,  <28.539349, 27.852036, 31.432062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346455, 28.226648, 30.890482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.643021, 28.465740, 31.012482>,  <28.820961, 28.609196, 31.085682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.643021, 28.465740, 31.012482>,  <28.346455, 28.226648, 30.890482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643021, 28.465740, 31.012482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093609, 0.357941, -0.929040,
		-0.664486, 0.717354, 0.209430,
		0.741415, 0.597730, 0.304997,
		28.865444, 28.645060, 31.103981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222454, 28.861515, 30.580603>,  <28.346455, 28.226648, 30.890482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222454, 28.861515, 30.580603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614513, 28.829025, 30.652946>,  <28.849749, 28.809532, 30.696352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614513, 28.829025, 30.652946>,  <28.222454, 28.861515, 30.580603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614513, 28.829025, 30.652946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197600, 0.325733, -0.924582,
		0.016187, 0.941966, 0.335317,
		0.980149, -0.081225, 0.180860,
		28.908558, 28.804657, 30.707205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.301676, 42.565140, 17.822714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.660244, 42.670578, 17.965233>,  <27.875385, 42.733841, 18.050743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.660244, 42.670578, 17.965233>,  <27.301676, 42.565140, 17.822714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660244, 42.670578, 17.965233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143664, -0.587682, 0.796235,
		0.419274, -0.764948, -0.488941,
		0.896420, 0.263597, 0.356296,
		27.929171, 42.749657, 18.072121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684082, 41.963448, 18.026327>,  <27.301676, 42.565140, 17.822714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684082, 41.963448, 18.026327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.790201, 42.276379, 18.251743>,  <27.853872, 42.464138, 18.386993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.790201, 42.276379, 18.251743>,  <27.684082, 41.963448, 18.026327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790201, 42.276379, 18.251743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336944, -0.472405, 0.814434,
		0.903375, -0.405949, 0.138273,
		0.265298, 0.782329, 0.563541,
		27.869791, 42.511078, 18.420805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995529, 41.681179, 18.616236>,  <27.684082, 41.963448, 18.026327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995529, 41.681179, 18.616236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.894640, 42.045067, 18.748177>,  <27.834106, 42.263397, 18.827341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.894640, 42.045067, 18.748177>,  <27.995529, 41.681179, 18.616236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894640, 42.045067, 18.748177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198846, -0.382323, 0.902380,
		0.947018, 0.162012, 0.277324,
		-0.252224, 0.909715, 0.329851,
		27.818974, 42.317982, 18.847132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385777, 41.901394, 19.255724>,  <27.995529, 41.681179, 18.616236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385777, 41.901394, 19.255724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.045492, 42.110348, 19.279068>,  <27.841322, 42.235718, 19.293076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.045492, 42.110348, 19.279068>,  <28.385777, 41.901394, 19.255724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045492, 42.110348, 19.279068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158807, -0.361278, 0.918836,
		0.501067, 0.772397, 0.390301,
		-0.850713, 0.522380, 0.058362,
		27.790277, 42.267063, 19.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306389, 42.155842, 19.991043>,  <28.385777, 41.901394, 19.255724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306389, 42.155842, 19.991043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.935894, 42.174644, 19.841442>,  <27.713598, 42.185925, 19.751680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.935894, 42.174644, 19.841442>,  <28.306389, 42.155842, 19.991043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935894, 42.174644, 19.841442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340609, -0.529393, 0.777000,
		-0.161474, 0.847074, 0.506352,
		-0.926235, 0.047003, -0.374004,
		27.658024, 42.188744, 19.729240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875854, 42.475147, 20.499577>,  <28.306389, 42.155842, 19.991043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875854, 42.475147, 20.499577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.633999, 42.265278, 20.259869>,  <27.488886, 42.139355, 20.116043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.633999, 42.265278, 20.259869>,  <27.875854, 42.475147, 20.499577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633999, 42.265278, 20.259869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349628, -0.501186, 0.791563,
		-0.715660, 0.688133, 0.119596,
		-0.604641, -0.524676, -0.599270,
		27.452606, 42.107876, 20.080088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217791, 42.539291, 20.938042>,  <27.875854, 42.475147, 20.499577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217791, 42.539291, 20.938042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.196131, 42.244453, 20.668594>,  <27.183134, 42.067551, 20.506926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.196131, 42.244453, 20.668594>,  <27.217791, 42.539291, 20.938042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196131, 42.244453, 20.668594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483104, -0.571057, 0.663705,
		-0.873887, 0.361366, -0.325171,
		-0.054149, -0.737094, -0.673617,
		27.179886, 42.023327, 20.466509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518482, 42.248234, 20.976927>,  <27.217791, 42.539291, 20.938042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518482, 42.248234, 20.976927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.744518, 41.963718, 20.809719>,  <26.880140, 41.793007, 20.709394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.744518, 41.963718, 20.809719>,  <26.518482, 42.248234, 20.976927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744518, 41.963718, 20.809719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436055, -0.687614, 0.580554,
		-0.700385, -0.145778, -0.698720,
		0.565082, -0.711292, -0.418027,
		26.914045, 41.750332, 20.684313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022032, 41.729530, 20.813656>,  <26.518482, 42.248234, 20.976927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022032, 41.729530, 20.813656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.386002, 41.563641, 20.810989>,  <26.604383, 41.464108, 20.809389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.386002, 41.563641, 20.810989>,  <26.022032, 41.729530, 20.813656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386002, 41.563641, 20.810989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367561, -0.813688, 0.450346,
		-0.192191, -0.407331, -0.892830,
		0.909925, -0.414721, -0.006664,
		26.658979, 41.439224, 20.808990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954710, 41.130203, 20.507994>,  <26.022032, 41.729530, 20.813656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954710, 41.130203, 20.507994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.274361, 41.082314, 20.743641>,  <26.466150, 41.053577, 20.885029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.274361, 41.082314, 20.743641>,  <25.954710, 41.130203, 20.507994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274361, 41.082314, 20.743641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460028, -0.752650, 0.471054,
		0.387003, -0.647443, -0.656541,
		0.799127, -0.119729, 0.589120,
		26.514099, 41.046394, 20.920376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834650, 40.456974, 20.588606>,  <25.954710, 41.130203, 20.507994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834650, 40.456974, 20.588606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.121275, 40.536140, 20.856148>,  <26.293251, 40.583641, 21.016672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.121275, 40.536140, 20.856148>,  <25.834650, 40.456974, 20.588606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121275, 40.536140, 20.856148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348670, -0.728873, 0.589215,
		0.604124, -0.655419, -0.453277,
		0.716564, 0.197915, 0.668855,
		26.336245, 40.595516, 21.056805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911715, 39.827301, 20.890562>,  <25.834650, 40.456974, 20.588606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911715, 39.827301, 20.890562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.084213, 40.051811, 21.173122>,  <26.187712, 40.186516, 21.342659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.084213, 40.051811, 21.173122>,  <25.911715, 39.827301, 20.890562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084213, 40.051811, 21.173122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441907, -0.551204, 0.707738,
		0.786603, -0.617372, 0.010325,
		0.431247, 0.561272, 0.706400,
		26.213587, 40.220192, 21.385042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251076, 39.348217, 21.286631>,  <25.911715, 39.827301, 20.890562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251076, 39.348217, 21.286631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.203342, 39.670620, 21.518532>,  <26.174702, 39.864059, 21.657673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.203342, 39.670620, 21.518532>,  <26.251076, 39.348217, 21.286631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203342, 39.670620, 21.518532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510625, -0.550606, 0.660375,
		0.851482, -0.217232, 0.477272,
		-0.119334, 0.806005, 0.579754,
		26.167542, 39.912422, 21.692459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512163, 39.151581, 21.941519>,  <26.251076, 39.348217, 21.286631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512163, 39.151581, 21.941519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.247427, 39.447262, 21.991398>,  <26.088585, 39.624668, 22.021326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.247427, 39.447262, 21.991398>,  <26.512163, 39.151581, 21.941519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247427, 39.447262, 21.991398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392510, -0.483429, 0.782453,
		0.638673, 0.468914, 0.610096,
		-0.661841, 0.739200, 0.124699,
		26.048874, 39.669022, 22.028809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421259, 39.265713, 22.698095>,  <26.512163, 39.151581, 21.941519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421259, 39.265713, 22.698095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.092340, 39.421879, 22.532490>,  <25.894989, 39.515579, 22.433126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.092340, 39.421879, 22.532490>,  <26.421259, 39.265713, 22.698095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092340, 39.421879, 22.532490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519938, -0.219753, 0.825453,
		0.231288, 0.894028, 0.383693,
		-0.822296, 0.390414, -0.414013,
		25.845652, 39.539001, 22.408285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030632, 39.269928, 23.191534>,  <26.421259, 39.265713, 22.698095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030632, 39.269928, 23.191534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767691, 39.356327, 22.902748>,  <25.609926, 39.408165, 22.729477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.767691, 39.356327, 22.902748>,  <26.030632, 39.269928, 23.191534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767691, 39.356327, 22.902748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752868, -0.229976, 0.616686,
		-0.032835, 0.948925, 0.313790,
		-0.657352, 0.215994, -0.721966,
		25.570484, 39.421124, 22.686159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577394, 39.845627, 23.472879>,  <26.030632, 39.269928, 23.191534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577394, 39.845627, 23.472879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.352261, 39.697407, 23.177338>,  <25.217180, 39.608475, 23.000011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.352261, 39.697407, 23.177338>,  <25.577394, 39.845627, 23.472879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352261, 39.697407, 23.177338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777418, -0.066331, 0.625477,
		-0.280779, 0.926442, -0.250737,
		-0.562837, -0.370548, -0.738856,
		25.183409, 39.586243, 22.955681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888550, 40.107407, 23.591938>,  <25.577394, 39.845627, 23.472879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888550, 40.107407, 23.591938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.851255, 39.769264, 23.381538>,  <24.828878, 39.566380, 23.255299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.851255, 39.769264, 23.381538>,  <24.888550, 40.107407, 23.591938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851255, 39.769264, 23.381538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857431, -0.200360, 0.473991,
		-0.506082, 0.495202, -0.706156,
		-0.093235, -0.845358, -0.526000,
		24.823284, 39.515656, 23.223738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191984, 40.056355, 23.438396>,  <24.888550, 40.107407, 23.591938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191984, 40.056355, 23.438396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.306292, 39.683224, 23.350609>,  <24.374876, 39.459343, 23.297937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.306292, 39.683224, 23.350609>,  <24.191984, 40.056355, 23.438396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306292, 39.683224, 23.350609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796029, -0.358581, 0.487605,
		-0.533549, 0.035361, -0.845030,
		0.285769, -0.932829, -0.219469,
		24.392023, 39.403374, 23.284769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563763, 39.637653, 23.319820>,  <24.191984, 40.056355, 23.438396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563763, 39.637653, 23.319820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.845715, 39.370956, 23.416649>,  <24.014887, 39.210938, 23.474745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.845715, 39.370956, 23.416649>,  <23.563763, 39.637653, 23.319820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.845715, 39.370956, 23.416649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664041, -0.500287, 0.555664,
		-0.249380, -0.552422, -0.795387,
		0.704882, -0.666741, 0.242069,
		24.057178, 39.170933, 23.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.274963, 38.937344, 23.170866>,  <23.563763, 39.637653, 23.319820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.274963, 38.937344, 23.170866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.572514, 38.923969, 23.437859>,  <23.751043, 38.915943, 23.598055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.572514, 38.923969, 23.437859>,  <23.274963, 38.937344, 23.170866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.572514, 38.923969, 23.437859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616170, -0.421093, 0.665593,
		0.258816, -0.906401, -0.333844,
		0.743874, -0.033439, 0.667483,
		23.795675, 38.913937, 23.638103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521849, 39.026718, 23.097281>,  <23.274963, 38.937344, 23.170866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521849, 39.026718, 23.097281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.175694, 39.047783, 22.897949>,  <21.968000, 39.060421, 22.778351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.175694, 39.047783, 22.897949>,  <22.521849, 39.026718, 23.097281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175694, 39.047783, 22.897949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493129, 0.266193, -0.828230,
		0.089035, -0.962480, -0.256329,
		-0.865388, 0.052662, -0.498328,
		21.916077, 39.063580, 22.748451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.742098, 38.765259, 22.508312>,  <22.521849, 39.026718, 23.097281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.742098, 38.765259, 22.508312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.389803, 38.907795, 22.383526>,  <22.178427, 38.993317, 22.308653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.389803, 38.907795, 22.383526>,  <22.742098, 38.765259, 22.508312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389803, 38.907795, 22.383526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415866, 0.266682, -0.869446,
		-0.226625, -0.895489, -0.383067,
		-0.880737, 0.356343, -0.311967,
		22.125582, 39.014698, 22.289936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596407, 38.470211, 21.883171>,  <22.742098, 38.765259, 22.508312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596407, 38.470211, 21.883171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.401260, 38.819374, 21.881695>,  <22.284172, 39.028873, 21.880810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.401260, 38.819374, 21.881695>,  <22.596407, 38.470211, 21.883171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401260, 38.819374, 21.881695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552008, 0.305235, -0.775963,
		-0.676219, -0.380606, -0.630767,
		-0.487868, 0.872909, -0.003691,
		22.254900, 39.081245, 21.880587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289701, 38.677193, 21.127661>,  <22.596407, 38.470211, 21.883171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289701, 38.677193, 21.127661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274900, 39.006950, 21.353584>,  <22.266020, 39.204803, 21.489138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274900, 39.006950, 21.353584>,  <22.289701, 38.677193, 21.127661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.274900, 39.006950, 21.353584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561839, 0.484571, -0.670469,
		-0.826419, 0.292522, -0.481106,
		-0.037003, 0.824392, 0.564809,
		22.263800, 39.254269, 21.523027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183901, 39.235123, 20.648046>,  <22.289701, 38.677193, 21.127661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183901, 39.235123, 20.648046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344612, 39.383842, 20.982792>,  <22.441040, 39.473076, 21.183640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.344612, 39.383842, 20.982792>,  <22.183901, 39.235123, 20.648046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344612, 39.383842, 20.982792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591329, 0.592450, -0.547113,
		-0.699216, 0.714679, 0.018178,
		0.401780, 0.371801, 0.836861,
		22.465147, 39.495384, 21.233850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.243774, 39.857594, 20.499823>,  <22.183901, 39.235123, 20.648046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.243774, 39.857594, 20.499823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.493637, 39.803551, 20.807472>,  <22.643555, 39.771126, 20.992062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.493637, 39.803551, 20.807472>,  <22.243774, 39.857594, 20.499823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493637, 39.803551, 20.807472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680514, 0.577271, -0.451286,
		-0.383019, 0.805297, 0.452540,
		0.624658, -0.135108, 0.769122,
		22.681034, 39.763020, 21.038208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510891, 40.528812, 20.654701>,  <22.243774, 39.857594, 20.499823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510891, 40.528812, 20.654701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767771, 40.271809, 20.821922>,  <22.921898, 40.117607, 20.922255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767771, 40.271809, 20.821922>,  <22.510891, 40.528812, 20.654701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767771, 40.271809, 20.821922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762691, 0.481010, -0.432355,
		0.076704, 0.596502, 0.798938,
		0.642198, -0.642506, 0.418052,
		22.960430, 40.079056, 20.947338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.025587, 40.899166, 20.987465>,  <22.510891, 40.528812, 20.654701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.025587, 40.899166, 20.987465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207882, 40.550964, 20.913132>,  <23.317259, 40.342045, 20.868532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207882, 40.550964, 20.913132>,  <23.025587, 40.899166, 20.987465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207882, 40.550964, 20.913132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820170, 0.491794, -0.292335,
		0.345869, -0.019187, 0.938086,
		0.455736, -0.870500, -0.185833,
		23.344603, 40.289814, 20.857382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.731977, 40.995571, 21.206814>,  <23.025587, 40.899166, 20.987465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.731977, 40.995571, 21.206814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.728184, 40.666584, 20.979321>,  <23.725908, 40.469193, 20.842825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.728184, 40.666584, 20.979321>,  <23.731977, 40.995571, 21.206814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.728184, 40.666584, 20.979321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776375, 0.352393, -0.522553,
		0.630200, -0.446505, 0.635202,
		-0.009482, -0.822467, -0.568733,
		23.725340, 40.419846, 20.808701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450781, 40.867935, 21.096054>,  <23.731977, 40.995571, 21.206814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450781, 40.867935, 21.096054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.243879, 40.697128, 20.799377>,  <24.119740, 40.594643, 20.621372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.243879, 40.697128, 20.799377>,  <24.450781, 40.867935, 21.096054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243879, 40.697128, 20.799377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607887, 0.426718, -0.669616,
		0.602431, -0.797224, 0.038858,
		-0.517253, -0.427019, -0.741691,
		24.088703, 40.569023, 20.576870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919024, 40.674244, 20.583323>,  <24.450781, 40.867935, 21.096054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919024, 40.674244, 20.583323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574203, 40.700127, 20.382252>,  <24.367311, 40.715656, 20.261610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.574203, 40.700127, 20.382252>,  <24.919024, 40.674244, 20.583323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574203, 40.700127, 20.382252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501438, 0.253118, -0.827340,
		0.073698, -0.965268, -0.250649,
		-0.862049, 0.064711, -0.502676,
		24.315588, 40.719540, 20.231449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095240, 40.302578, 19.999193>,  <24.919024, 40.674244, 20.583323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095240, 40.302578, 19.999193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.778761, 40.528767, 19.906029>,  <24.588875, 40.664482, 19.850130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.778761, 40.528767, 19.906029>,  <25.095240, 40.302578, 19.999193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778761, 40.528767, 19.906029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376846, 0.150844, -0.913911,
		-0.481661, -0.810853, -0.332444,
		-0.791195, 0.565476, -0.232911,
		24.541403, 40.698410, 19.836155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962927, 40.121189, 19.274895>,  <25.095240, 40.302578, 19.999193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962927, 40.121189, 19.274895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.744081, 40.450565, 19.335049>,  <24.612774, 40.648190, 19.371141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.744081, 40.450565, 19.335049>,  <24.962927, 40.121189, 19.274895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744081, 40.450565, 19.335049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043843, 0.207602, -0.977230,
		-0.835911, -0.528061, -0.149684,
		-0.547112, 0.823440, 0.150385,
		24.579948, 40.697598, 19.380165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419464, 40.128147, 18.722748>,  <24.962927, 40.121189, 19.274895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419464, 40.128147, 18.722748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.452097, 40.501453, 18.862663>,  <24.471676, 40.725437, 18.946613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.452097, 40.501453, 18.862663>,  <24.419464, 40.128147, 18.722748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452097, 40.501453, 18.862663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009035, 0.351639, -0.936092,
		-0.996626, 0.073206, 0.037119,
		0.081580, 0.933269, 0.349791,
		24.476570, 40.781433, 18.967600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.829321, 40.566502, 18.402988>,  <24.419464, 40.128147, 18.722748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.829321, 40.566502, 18.402988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120483, 40.822929, 18.500298>,  <24.295181, 40.976788, 18.558683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120483, 40.822929, 18.500298>,  <23.829321, 40.566502, 18.402988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120483, 40.822929, 18.500298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023478, 0.377884, -0.925555,
		-0.685275, 0.668006, 0.290115,
		0.727906, 0.641071, 0.243271,
		24.338856, 41.015251, 18.573278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597015, 41.275234, 18.210733>,  <23.829321, 40.566502, 18.402988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597015, 41.275234, 18.210733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996141, 41.276451, 18.237125>,  <24.235617, 41.277180, 18.252960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996141, 41.276451, 18.237125>,  <23.597015, 41.275234, 18.210733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996141, 41.276451, 18.237125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062756, 0.267885, -0.961405,
		-0.020600, 0.963446, 0.267109,
		0.997816, 0.003042, 0.065981,
		24.295486, 41.277363, 18.256920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.720358, 41.884132, 17.889488>,  <23.597015, 41.275234, 18.210733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.720358, 41.884132, 17.889488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078293, 41.705582, 17.888149>,  <24.293055, 41.598450, 17.887346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078293, 41.705582, 17.888149>,  <23.720358, 41.884132, 17.889488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078293, 41.705582, 17.888149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219528, 0.446577, -0.867396,
		0.388683, 0.775444, 0.497607,
		0.894837, -0.446380, -0.003345,
		24.346745, 41.571667, 17.887146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249929, 42.494694, 17.832674>,  <23.720358, 41.884132, 17.889488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249929, 42.494694, 17.832674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.435204, 42.162365, 17.709263>,  <24.546368, 41.962967, 17.635216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.435204, 42.162365, 17.709263>,  <24.249929, 42.494694, 17.832674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435204, 42.162365, 17.709263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326805, 0.483705, -0.811928,
		0.823807, 0.275244, 0.495563,
		0.463185, -0.830825, -0.308529,
		24.574160, 41.913116, 17.616705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943029, 42.626637, 17.642860>,  <24.249929, 42.494694, 17.832674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943029, 42.626637, 17.642860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.836132, 42.297081, 17.442947>,  <24.771994, 42.099346, 17.323000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.836132, 42.297081, 17.442947>,  <24.943029, 42.626637, 17.642860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836132, 42.297081, 17.442947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268822, 0.434315, -0.859712,
		0.925374, -0.364104, 0.105413,
		-0.267242, -0.823893, -0.499783,
		24.755959, 42.049911, 17.293013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428164, 42.602882, 17.106228>,  <24.943029, 42.626637, 17.642860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428164, 42.602882, 17.106228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.158600, 42.338036, 16.975109>,  <24.996862, 42.179127, 16.896437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.158600, 42.338036, 16.975109>,  <25.428164, 42.602882, 17.106228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158600, 42.338036, 16.975109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118855, 0.340745, -0.932613,
		0.729193, -0.667456, -0.150935,
		-0.673908, -0.662115, -0.327799,
		24.956427, 42.139400, 16.876770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502138, 43.356915, 16.860783>,  <25.428164, 42.602882, 17.106228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502138, 43.356915, 16.860783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.140142, 43.222507, 16.965157>,  <24.922945, 43.141865, 17.027781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.140142, 43.222507, 16.965157>,  <25.502138, 43.356915, 16.860783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140142, 43.222507, 16.965157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408874, 0.517510, -0.751669,
		0.117535, -0.786942, -0.605729,
		-0.904990, -0.336014, 0.260935,
		24.868645, 43.121704, 17.043438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.532881, 32.910233, 27.288292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910912, 32.861908, 27.166813>,  <27.137730, 32.832912, 27.093925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910912, 32.861908, 27.166813>,  <26.532881, 32.910233, 27.288292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910912, 32.861908, 27.166813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150663, 0.663557, -0.732798,
		0.290049, 0.738308, 0.608911,
		0.945078, -0.120807, -0.303700,
		27.194435, 32.825665, 27.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749945, 33.581059, 27.173370>,  <26.532881, 32.910233, 27.288292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749945, 33.581059, 27.173370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009668, 33.349354, 26.976250>,  <27.165503, 33.210331, 26.857977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009668, 33.349354, 26.976250>,  <26.749945, 33.581059, 27.173370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009668, 33.349354, 26.976250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016138, 0.658325, -0.752560,
		0.760354, 0.480691, 0.436804,
		0.649308, -0.579262, -0.492803,
		27.204460, 33.175575, 26.828409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255157, 34.109394, 26.973940>,  <26.749945, 33.581059, 27.173370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255157, 34.109394, 26.973940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262161, 33.786423, 26.738060>,  <27.266363, 33.592640, 26.596533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262161, 33.786423, 26.738060>,  <27.255157, 34.109394, 26.973940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262161, 33.786423, 26.738060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228966, 0.577356, -0.783732,
		0.973277, -0.121297, 0.194984,
		0.017511, -0.807433, -0.589700,
		27.267414, 33.544193, 26.561150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846869, 34.213478, 26.621038>,  <27.255157, 34.109394, 26.973940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846869, 34.213478, 26.621038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656740, 33.946419, 26.391842>,  <27.542664, 33.786182, 26.254324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656740, 33.946419, 26.391842>,  <27.846869, 34.213478, 26.621038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656740, 33.946419, 26.391842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269720, 0.509332, -0.817210,
		0.837449, -0.542985, -0.062019,
		-0.475321, -0.667644, -0.572993,
		27.514145, 33.746124, 26.219944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260454, 34.132187, 26.006958>,  <27.846869, 34.213478, 26.621038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260454, 34.132187, 26.006958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900820, 34.001144, 25.890804>,  <27.685040, 33.922520, 25.821112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900820, 34.001144, 25.890804>,  <28.260454, 34.132187, 26.006958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900820, 34.001144, 25.890804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180346, 0.327239, -0.927572,
		0.398903, -0.886334, -0.235134,
		-0.899084, -0.327605, -0.290384,
		27.631094, 33.902863, 25.803690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387154, 33.709007, 25.463455>,  <28.260454, 34.132187, 26.006958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387154, 33.709007, 25.463455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001827, 33.813618, 25.439377>,  <27.770632, 33.876385, 25.424929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001827, 33.813618, 25.439377>,  <28.387154, 33.709007, 25.463455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001827, 33.813618, 25.439377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140837, 0.301720, -0.942937,
		-0.228439, -0.916826, -0.327485,
		-0.963318, 0.261525, -0.060198,
		27.712831, 33.892075, 25.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175621, 33.566483, 24.763412>,  <28.387154, 33.709007, 25.463455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175621, 33.566483, 24.763412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892399, 33.818165, 24.891640>,  <27.722466, 33.969173, 24.968576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892399, 33.818165, 24.891640>,  <28.175621, 33.566483, 24.763412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892399, 33.818165, 24.891640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039010, 0.488118, -0.871905,
		-0.705079, -0.604851, -0.370159,
		-0.708055, 0.629202, 0.320567,
		27.679983, 34.006924, 24.987810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710657, 33.582214, 24.244024>,  <28.175621, 33.566483, 24.763412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710657, 33.582214, 24.244024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594362, 33.907619, 24.445484>,  <27.524586, 34.102863, 24.566360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594362, 33.907619, 24.445484>,  <27.710657, 33.582214, 24.244024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594362, 33.907619, 24.445484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119269, 0.553098, -0.824535,
		-0.949340, -0.179654, -0.257834,
		-0.290738, 0.813515, 0.503651,
		27.507141, 34.151672, 24.596579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292318, 33.916935, 23.835825>,  <27.710657, 33.582214, 24.244024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292318, 33.916935, 23.835825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436792, 34.206604, 24.070812>,  <27.523476, 34.380405, 24.211803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436792, 34.206604, 24.070812>,  <27.292318, 33.916935, 23.835825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436792, 34.206604, 24.070812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255705, 0.528929, -0.809227,
		-0.896750, 0.442498, 0.005866,
		0.361184, 0.724175, 0.587466,
		27.545147, 34.423855, 24.247051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994450, 34.538425, 23.629200>,  <27.292318, 33.916935, 23.835825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994450, 34.538425, 23.629200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296988, 34.706020, 23.830154>,  <27.478510, 34.806576, 23.950727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296988, 34.706020, 23.830154>,  <26.994450, 34.538425, 23.629200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296988, 34.706020, 23.830154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295933, 0.465758, -0.833962,
		-0.583407, 0.779437, 0.228284,
		0.756346, 0.418983, 0.502388,
		27.523891, 34.831715, 23.980871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069841, 35.240414, 23.355995>,  <26.994450, 34.538425, 23.629200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069841, 35.240414, 23.355995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413202, 35.164154, 23.546490>,  <27.619219, 35.118397, 23.660788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413202, 35.164154, 23.546490>,  <27.069841, 35.240414, 23.355995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413202, 35.164154, 23.546490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496570, 0.541759, -0.678171,
		-0.128714, 0.818627, 0.559716,
		0.858400, -0.190648, 0.476238,
		27.670723, 35.106960, 23.689362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388132, 35.902393, 23.479956>,  <27.069841, 35.240414, 23.355995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388132, 35.902393, 23.479956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710852, 35.666214, 23.488384>,  <27.904484, 35.524506, 23.493443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710852, 35.666214, 23.488384>,  <27.388132, 35.902393, 23.479956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710852, 35.666214, 23.488384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432170, 0.565454, -0.702490,
		0.402868, 0.575876, 0.711382,
		0.806800, -0.590448, 0.021073,
		27.952892, 35.489079, 23.494705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780022, 36.367802, 23.216465>,  <27.388132, 35.902393, 23.479956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780022, 36.367802, 23.216465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026394, 36.053265, 23.197289>,  <28.174217, 35.864544, 23.185781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026394, 36.053265, 23.197289>,  <27.780022, 36.367802, 23.216465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026394, 36.053265, 23.197289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672789, 0.556696, -0.487283,
		0.409860, 0.267877, 0.871927,
		0.615931, -0.786340, -0.047943,
		28.211172, 35.817364, 23.182905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525356, 36.581894, 23.462160>,  <27.780022, 36.367802, 23.216465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525356, 36.581894, 23.462160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463242, 36.319942, 23.166317>,  <28.425972, 36.162769, 22.988811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463242, 36.319942, 23.166317>,  <28.525356, 36.581894, 23.462160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463242, 36.319942, 23.166317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516937, 0.584131, -0.625752,
		0.841821, -0.479500, 0.247825,
		-0.155286, -0.654881, -0.739606,
		28.416656, 36.123478, 22.944435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218864, 36.930851, 23.325888>,  <28.525356, 36.581894, 23.462160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218864, 36.930851, 23.325888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986313, 37.243835, 23.415104>,  <28.846783, 37.431625, 23.468634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986313, 37.243835, 23.415104>,  <29.218864, 36.930851, 23.325888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986313, 37.243835, 23.415104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632087, 0.261748, 0.729351,
		0.512312, 0.565010, -0.646761,
		-0.581380, 0.782465, 0.223039,
		28.811899, 37.478577, 23.482016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560724, 37.593887, 23.409899>,  <29.218864, 36.930851, 23.325888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560724, 37.593887, 23.409899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231791, 37.575756, 23.636776>,  <29.034430, 37.564877, 23.772903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231791, 37.575756, 23.636776>,  <29.560724, 37.593887, 23.409899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231791, 37.575756, 23.636776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564867, 0.054930, 0.823351,
		-0.068476, 0.997461, -0.019567,
		-0.822336, -0.045327, 0.567194,
		28.985090, 37.562157, 23.806934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837986, 37.885517, 24.020855>,  <29.560724, 37.593887, 23.409899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837986, 37.885517, 24.020855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490093, 37.714203, 24.118946>,  <29.281357, 37.611416, 24.177801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490093, 37.714203, 24.118946>,  <29.837986, 37.885517, 24.020855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490093, 37.714203, 24.118946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380213, -0.264676, 0.886219,
		-0.314646, 0.864014, 0.393037,
		-0.869733, -0.428283, 0.245230,
		29.229174, 37.585716, 24.192514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873358, 38.033710, 24.669212>,  <29.837986, 37.885517, 24.020855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873358, 38.033710, 24.669212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583946, 37.758163, 24.651443>,  <29.410299, 37.592834, 24.640783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583946, 37.758163, 24.651443>,  <29.873358, 38.033710, 24.669212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583946, 37.758163, 24.651443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246084, -0.317517, 0.915765,
		-0.644943, 0.651650, 0.399251,
		-0.723527, -0.688865, -0.044420,
		29.366888, 37.551502, 24.638117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603828, 37.969666, 25.415289>,  <29.873358, 38.033710, 24.669212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603828, 37.969666, 25.415289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508226, 37.641182, 25.208027>,  <29.450865, 37.444092, 25.083670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508226, 37.641182, 25.208027>,  <29.603828, 37.969666, 25.415289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508226, 37.641182, 25.208027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068572, -0.546563, 0.834606,
		-0.968594, 0.163944, 0.186943,
		-0.239005, -0.821213, -0.518156,
		29.436525, 37.394817, 25.052580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200983, 37.610806, 25.910492>,  <29.603828, 37.969666, 25.415289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200983, 37.610806, 25.910492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294561, 37.335789, 25.635521>,  <29.350708, 37.170780, 25.470537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294561, 37.335789, 25.635521>,  <29.200983, 37.610806, 25.910492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294561, 37.335789, 25.635521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168768, -0.667599, 0.725141,
		-0.957490, -0.285659, -0.040147,
		0.233945, -0.687540, -0.687430,
		29.364744, 37.129528, 25.429293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977808, 37.034302, 26.056349>,  <29.200983, 37.610806, 25.910492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977808, 37.034302, 26.056349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286743, 36.894512, 25.844173>,  <29.472105, 36.810638, 25.716869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286743, 36.894512, 25.844173>,  <28.977808, 37.034302, 26.056349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286743, 36.894512, 25.844173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281340, -0.560485, 0.778913,
		-0.569540, -0.750803, -0.334542,
		0.772316, -0.349502, -0.530449,
		29.518444, 36.789673, 25.685043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964939, 36.277153, 26.130539>,  <28.977808, 37.034302, 26.056349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964939, 36.277153, 26.130539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346399, 36.360443, 26.043640>,  <29.575275, 36.410419, 25.991501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346399, 36.360443, 26.043640>,  <28.964939, 36.277153, 26.130539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346399, 36.360443, 26.043640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300797, -0.638741, 0.708189,
		0.008700, -0.740710, -0.671769,
		0.953649, 0.208228, -0.217246,
		29.632494, 36.422913, 25.978466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277508, 35.584385, 26.038969>,  <28.964939, 36.277153, 26.130539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277508, 35.584385, 26.038969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594545, 35.827850, 26.053558>,  <29.784767, 35.973930, 26.062311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594545, 35.827850, 26.053558>,  <29.277508, 35.584385, 26.038969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594545, 35.827850, 26.053558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454653, -0.629788, 0.629808,
		0.406309, -0.482598, -0.775894,
		0.792593, 0.608660, 0.036474,
		29.832323, 36.010448, 26.064501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904072, 35.183113, 25.849455>,  <29.277508, 35.584385, 26.038969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904072, 35.183113, 25.849455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052795, 35.492123, 26.055355>,  <30.142029, 35.677528, 26.178896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052795, 35.492123, 26.055355>,  <29.904072, 35.183113, 25.849455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052795, 35.492123, 26.055355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616042, -0.620140, 0.485713,
		0.694442, 0.136516, -0.706480,
		0.371809, 0.772521, 0.514751,
		30.164337, 35.723881, 26.209780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638901, 35.121117, 25.799456>,  <29.904072, 35.183113, 25.849455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638901, 35.121117, 25.799456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535929, 35.327381, 26.126339>,  <30.474146, 35.451138, 26.322470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535929, 35.327381, 26.126339>,  <30.638901, 35.121117, 25.799456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535929, 35.327381, 26.126339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251966, -0.780633, 0.571949,
		0.932869, 0.353145, 0.071029,
		-0.257429, 0.515656, 0.817208,
		30.458700, 35.482079, 26.371502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103125, 35.156498, 26.246172>,  <30.638901, 35.121117, 25.799456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103125, 35.156498, 26.246172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814922, 35.245903, 26.508747>,  <30.642000, 35.299545, 26.666292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814922, 35.245903, 26.508747>,  <31.103125, 35.156498, 26.246172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814922, 35.245903, 26.508747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403734, -0.634432, 0.659162,
		0.563798, 0.739957, 0.366872,
		-0.720508, 0.223515, 0.656437,
		30.598770, 35.312958, 26.705679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460987, 35.053974, 26.776423>,  <31.103125, 35.156498, 26.246172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460987, 35.053974, 26.776423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082140, 35.075092, 26.903027>,  <30.854832, 35.087765, 26.978989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082140, 35.075092, 26.903027>,  <31.460987, 35.053974, 26.776423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082140, 35.075092, 26.903027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204921, -0.659522, 0.723214,
		0.246929, 0.749829, 0.613827,
		-0.947119, 0.052796, 0.316510,
		30.798004, 35.090931, 26.997980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534876, 35.270176, 27.546606>,  <31.460987, 35.053974, 26.776423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534876, 35.270176, 27.546606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185301, 35.089619, 27.474522>,  <30.975555, 34.981285, 27.431271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185301, 35.089619, 27.474522>,  <31.534876, 35.270176, 27.546606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185301, 35.089619, 27.474522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128670, -0.572414, 0.809806,
		-0.468696, 0.684533, 0.558335,
		-0.873938, -0.451394, -0.180209,
		30.923119, 34.954201, 27.420460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524548, 35.811310, 28.091299>,  <31.534876, 35.270176, 27.546606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524548, 35.811310, 28.091299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918421, 35.824425, 28.159801>,  <32.154743, 35.832294, 28.200903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918421, 35.824425, 28.159801>,  <31.524548, 35.811310, 28.091299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918421, 35.824425, 28.159801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155560, 0.278491, -0.947757,
		-0.078769, 0.959879, 0.269124,
		0.984681, 0.032789, 0.171255,
		32.213825, 35.834263, 28.211178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773579, 36.389214, 27.792112>,  <31.524548, 35.811310, 28.091299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773579, 36.389214, 27.792112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125927, 36.206810, 27.842907>,  <32.337337, 36.097370, 27.873384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125927, 36.206810, 27.842907>,  <31.773579, 36.389214, 27.792112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125927, 36.206810, 27.842907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270397, 0.264543, -0.925690,
		0.388527, 0.849750, 0.356330,
		0.880870, -0.456006, 0.126988,
		32.390186, 36.070007, 27.881002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149559, 36.756783, 27.331682>,  <31.773579, 36.389214, 27.792112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149559, 36.756783, 27.331682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388233, 36.444489, 27.405895>,  <32.531437, 36.257114, 27.450422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388233, 36.444489, 27.405895>,  <32.149559, 36.756783, 27.331682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388233, 36.444489, 27.405895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517754, 0.197910, -0.832323,
		0.613102, 0.592697, 0.522317,
		0.596687, -0.780732, 0.185533,
		32.567238, 36.210270, 27.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849308, 37.012211, 27.301859>,  <32.149559, 36.756783, 27.331682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849308, 37.012211, 27.301859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823193, 36.626999, 27.197308>,  <32.807522, 36.395874, 27.134577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823193, 36.626999, 27.197308>,  <32.849308, 37.012211, 27.301859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823193, 36.626999, 27.197308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557948, 0.181935, -0.809687,
		0.827304, -0.198698, 0.525441,
		-0.065287, -0.963026, -0.261378,
		32.803608, 36.338093, 27.118895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537979, 36.849075, 27.209787>,  <32.849308, 37.012211, 27.301859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537979, 36.849075, 27.209787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326958, 36.557102, 27.035942>,  <33.200344, 36.381920, 26.931635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326958, 36.557102, 27.035942>,  <33.537979, 36.849075, 27.209787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326958, 36.557102, 27.035942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688286, -0.067385, -0.722304,
		0.497945, -0.680191, 0.537950,
		-0.527554, -0.729931, -0.434612,
		33.168690, 36.338123, 26.905560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060932, 36.516273, 26.927076>,  <33.537979, 36.849075, 27.209787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060932, 36.516273, 26.927076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756943, 36.374859, 26.708920>,  <33.574551, 36.290009, 26.578026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756943, 36.374859, 26.708920>,  <34.060932, 36.516273, 26.927076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756943, 36.374859, 26.708920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569393, 0.042506, -0.820966,
		0.313428, -0.934453, 0.169001,
		-0.759970, -0.353541, -0.545394,
		33.528954, 36.268795, 26.545301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342815, 36.005909, 26.476168>,  <34.060932, 36.516273, 26.927076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342815, 36.005909, 26.476168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005440, 36.108810, 26.287518>,  <33.803013, 36.170551, 26.174328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005440, 36.108810, 26.287518>,  <34.342815, 36.005909, 26.476168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005440, 36.108810, 26.287518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451754, -0.135470, -0.881797,
		-0.290735, -0.956802, -0.001953,
		-0.843440, 0.257252, -0.471624,
		33.752407, 36.185986, 26.146030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296822, 35.547218, 25.880596>,  <34.342815, 36.005909, 26.476168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296822, 35.547218, 25.880596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051926, 35.852005, 25.796143>,  <33.904987, 36.034878, 25.745470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051926, 35.852005, 25.796143>,  <34.296822, 35.547218, 25.880596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051926, 35.852005, 25.796143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385543, 0.054559, -0.921075,
		-0.690307, -0.645316, -0.327174,
		-0.612235, 0.761965, -0.211135,
		33.868256, 36.080593, 25.732801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088551, 35.232304, 25.209263>,  <34.296822, 35.547218, 25.880596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088551, 35.232304, 25.209263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998394, 35.621346, 25.232048>,  <33.944298, 35.854771, 25.245720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998394, 35.621346, 25.232048>,  <34.088551, 35.232304, 25.209263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998394, 35.621346, 25.232048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327937, 0.130796, -0.935601,
		-0.917417, -0.192199, -0.348433,
		-0.225396, 0.972601, 0.056965,
		33.930775, 35.913124, 25.249138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794785, 35.400055, 24.577620>,  <34.088551, 35.232304, 25.209263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794785, 35.400055, 24.577620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893162, 35.763279, 24.713226>,  <33.952190, 35.981213, 24.794590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893162, 35.763279, 24.713226>,  <33.794785, 35.400055, 24.577620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893162, 35.763279, 24.713226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340864, 0.246391, -0.907250,
		-0.907371, 0.338693, -0.248927,
		0.245946, 0.908063, 0.339016,
		33.966946, 36.035698, 24.814932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424950, 35.914394, 24.159658>,  <33.794785, 35.400055, 24.577620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424950, 35.914394, 24.159658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766228, 36.065334, 24.303692>,  <33.970997, 36.155899, 24.390112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766228, 36.065334, 24.303692>,  <33.424950, 35.914394, 24.159658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766228, 36.065334, 24.303692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289308, 0.232061, -0.928681,
		-0.433998, 0.896524, 0.088824,
		0.853198, 0.377348, 0.360086,
		34.022186, 36.178539, 24.411718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547478, 36.452084, 23.690620>,  <33.424950, 35.914394, 24.159658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547478, 36.452084, 23.690620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902275, 36.406559, 23.869637>,  <34.115154, 36.379246, 23.977047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902275, 36.406559, 23.869637>,  <33.547478, 36.452084, 23.690620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902275, 36.406559, 23.869637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454984, 0.049673, -0.889113,
		0.078959, 0.992260, 0.095841,
		0.886992, -0.113809, 0.447540,
		34.168373, 36.372417, 24.003899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.632513, 35.935162, 31.469170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.942427, 35.702641, 31.568607>,  <31.128374, 35.563129, 31.628269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.942427, 35.702641, 31.568607>,  <30.632513, 35.935162, 31.469170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942427, 35.702641, 31.568607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469482, 0.265650, -0.842031,
		0.423436, 0.769102, 0.478732,
		0.774783, -0.581303, 0.248594,
		31.174862, 35.528252, 31.643185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273182, 36.299046, 31.174635>,  <30.632513, 35.935162, 31.469170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273182, 36.299046, 31.174635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.394096, 35.924019, 31.243443>,  <31.466644, 35.699001, 31.284727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.394096, 35.924019, 31.243443>,  <31.273182, 36.299046, 31.174635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394096, 35.924019, 31.243443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480880, -0.005823, -0.876767,
		0.823030, 0.347754, 0.449097,
		0.302284, -0.937568, 0.172020,
		31.484781, 35.642750, 31.295048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904055, 36.374771, 31.083067>,  <31.273182, 36.299046, 31.174635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904055, 36.374771, 31.083067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836580, 35.984695, 31.025719>,  <31.796095, 35.750652, 30.991310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836580, 35.984695, 31.025719>,  <31.904055, 36.374771, 31.083067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836580, 35.984695, 31.025719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564691, 0.023604, -0.824965,
		0.807879, -0.220121, 0.546697,
		-0.168688, -0.975187, -0.143369,
		31.785975, 35.692139, 30.982708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559811, 36.059105, 30.942926>,  <31.904055, 36.374771, 31.083067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559811, 36.059105, 30.942926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.280910, 35.821060, 30.783085>,  <32.113571, 35.678234, 30.687180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.280910, 35.821060, 30.783085>,  <32.559811, 36.059105, 30.942926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280910, 35.821060, 30.783085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455874, 0.062069, -0.887877,
		0.553186, -0.801245, 0.228017,
		-0.697255, -0.595108, -0.399603,
		32.071735, 35.642529, 30.663204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959896, 35.634743, 30.432119>,  <32.559811, 36.059105, 30.942926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959896, 35.634743, 30.432119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585648, 35.558388, 30.313339>,  <32.361099, 35.512573, 30.242071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585648, 35.558388, 30.313339>,  <32.959896, 35.634743, 30.432119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585648, 35.558388, 30.313339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296609, 0.031048, -0.954494,
		0.191420, -0.981121, 0.027570,
		-0.935618, -0.190887, -0.296953,
		32.304962, 35.501122, 30.224253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967621, 35.039364, 29.959679>,  <32.959896, 35.634743, 30.432119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967621, 35.039364, 29.959679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625427, 35.227314, 29.872620>,  <32.420113, 35.340084, 29.820385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.625427, 35.227314, 29.872620>,  <32.967621, 35.039364, 29.959679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625427, 35.227314, 29.872620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212110, -0.065466, -0.975051,
		-0.472401, -0.880302, -0.043661,
		-0.855481, 0.469875, -0.217647,
		32.368782, 35.368275, 29.807325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704540, 34.704010, 29.263824>,  <32.967621, 35.039364, 29.959679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704540, 34.704010, 29.263824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.493847, 35.040581, 29.312073>,  <32.367432, 35.242523, 29.341022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.493847, 35.040581, 29.312073>,  <32.704540, 34.704010, 29.263824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493847, 35.040581, 29.312073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235500, 0.280800, -0.930425,
		-0.816759, -0.461676, -0.346063,
		-0.526730, 0.841431, 0.120621,
		32.335827, 35.293011, 29.348259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172504, 34.703369, 28.709160>,  <32.704540, 34.704010, 29.263824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172504, 34.703369, 28.709160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224331, 35.085693, 28.814713>,  <32.255424, 35.315090, 28.878044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224331, 35.085693, 28.814713>,  <32.172504, 34.703369, 28.709160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224331, 35.085693, 28.814713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039526, 0.260935, -0.964547,
		-0.990783, 0.135400, -0.003972,
		0.129563, 0.955814, 0.263882,
		32.263199, 35.372437, 28.893877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756491, 35.116989, 28.228497>,  <32.172504, 34.703369, 28.709160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756491, 35.116989, 28.228497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031326, 35.362946, 28.383324>,  <32.196228, 35.510521, 28.476219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.031326, 35.362946, 28.383324>,  <31.756491, 35.116989, 28.228497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031326, 35.362946, 28.383324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170364, 0.381535, -0.908519,
		-0.706319, 0.690174, 0.157393,
		0.687087, 0.614890, 0.387067,
		32.237453, 35.547413, 28.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070677, 35.321751, 28.447542>,  <31.756491, 35.116989, 28.228497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070677, 35.321751, 28.447542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.851078, 35.055637, 28.245155>,  <30.719318, 34.895969, 28.123722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.851078, 35.055637, 28.245155>,  <31.070677, 35.321751, 28.447542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851078, 35.055637, 28.245155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021021, -0.616152, 0.787347,
		-0.835560, 0.421615, 0.352251,
		-0.548997, -0.665280, -0.505969,
		30.686378, 34.856052, 28.093365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384047, 35.253613, 28.780441>,  <31.070677, 35.321751, 28.447542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384047, 35.253613, 28.780441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.450222, 34.928440, 28.557095>,  <30.489927, 34.733337, 28.423086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.450222, 34.928440, 28.557095>,  <30.384047, 35.253613, 28.780441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450222, 34.928440, 28.557095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146099, -0.580123, 0.801319,
		-0.975339, -0.050990, -0.214742,
		0.165436, -0.812931, -0.558367,
		30.499853, 34.684563, 28.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866043, 34.787323, 28.923203>,  <30.384047, 35.253613, 28.780441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866043, 34.787323, 28.923203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.157719, 34.550087, 28.786659>,  <30.332724, 34.407745, 28.704733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.157719, 34.550087, 28.786659>,  <29.866043, 34.787323, 28.923203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157719, 34.550087, 28.786659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240888, -0.689377, 0.683179,
		-0.640511, -0.415938, -0.645555,
		0.729190, -0.593090, -0.341359,
		30.376476, 34.372162, 28.684252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551548, 34.088261, 28.890568>,  <29.866043, 34.787323, 28.923203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551548, 34.088261, 28.890568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.949255, 34.045982, 28.884064>,  <30.187880, 34.020615, 28.880161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.949255, 34.045982, 28.884064>,  <29.551548, 34.088261, 28.890568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949255, 34.045982, 28.884064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077714, -0.818586, 0.569102,
		-0.073465, -0.564575, -0.822106,
		0.994265, -0.105698, -0.016262,
		30.247534, 34.014275, 28.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600218, 33.488262, 28.802294>,  <29.551548, 34.088261, 28.890568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600218, 33.488262, 28.802294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.960564, 33.555206, 28.962509>,  <30.176771, 33.595375, 29.058638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.960564, 33.555206, 28.962509>,  <29.600218, 33.488262, 28.802294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960564, 33.555206, 28.962509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131798, -0.773682, 0.619714,
		0.413608, -0.611068, -0.674925,
		0.900865, 0.167365, 0.400539,
		30.230824, 33.605415, 29.082670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878202, 32.853836, 28.840761>,  <29.600218, 33.488262, 28.802294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878202, 32.853836, 28.840761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.120579, 33.030621, 29.105339>,  <30.266005, 33.136692, 29.264086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.120579, 33.030621, 29.105339>,  <29.878202, 32.853836, 28.840761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120579, 33.030621, 29.105339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211434, -0.712092, 0.669492,
		0.766896, -0.545526, -0.338042,
		0.605943, 0.441957, 0.661443,
		30.302362, 33.163208, 29.303772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180054, 32.238224, 29.268225>,  <29.878202, 32.853836, 28.840761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180054, 32.238224, 29.268225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.251093, 32.579643, 29.464149>,  <30.293716, 32.784496, 29.581705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.251093, 32.579643, 29.464149>,  <30.180054, 32.238224, 29.268225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251093, 32.579643, 29.464149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066434, -0.506989, 0.859389,
		0.981858, -0.120085, -0.146744,
		0.177597, 0.853547, 0.489813,
		30.304373, 32.835709, 29.611094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736130, 32.037979, 29.766029>,  <30.180054, 32.238224, 29.268225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736130, 32.037979, 29.766029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.541817, 32.362232, 29.896805>,  <30.425228, 32.556786, 29.975269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.541817, 32.362232, 29.896805>,  <30.736130, 32.037979, 29.766029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541817, 32.362232, 29.896805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050402, -0.347434, 0.936349,
		0.872625, 0.471341, 0.127920,
		-0.485784, 0.810634, 0.326936,
		30.396082, 32.605423, 29.994886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087364, 32.187309, 30.359184>,  <30.736130, 32.037979, 29.766029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087364, 32.187309, 30.359184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.743904, 32.390362, 30.387554>,  <30.537828, 32.512196, 30.404577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.743904, 32.390362, 30.387554>,  <31.087364, 32.187309, 30.359184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743904, 32.390362, 30.387554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050801, -0.221976, 0.973728,
		0.510040, 0.832487, 0.216387,
		-0.858649, 0.507633, 0.070926,
		30.486309, 32.542652, 30.408833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073753, 32.755352, 30.854910>,  <31.087364, 32.187309, 30.359184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073753, 32.755352, 30.854910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702242, 32.613087, 30.813198>,  <30.479336, 32.527729, 30.788172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.702242, 32.613087, 30.813198>,  <31.073753, 32.755352, 30.854910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702242, 32.613087, 30.813198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021496, -0.229181, 0.973146,
		-0.370011, 0.906079, 0.205213,
		-0.928778, -0.355664, -0.104277,
		30.423609, 32.506386, 30.781916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956429, 32.797455, 31.499548>,  <31.073753, 32.755352, 30.854910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956429, 32.797455, 31.499548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.625431, 32.628155, 31.351974>,  <30.426832, 32.526577, 31.263430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.625431, 32.628155, 31.351974>,  <30.956429, 32.797455, 31.499548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625431, 32.628155, 31.351974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297660, -0.226459, 0.927424,
		-0.476077, 0.877256, 0.061411,
		-0.827496, -0.423246, -0.368936,
		30.377182, 32.501183, 31.241293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364866, 33.142342, 31.775175>,  <30.956429, 32.797455, 31.499548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364866, 33.142342, 31.775175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.236938, 32.784126, 31.651413>,  <30.160181, 32.569199, 31.577156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.236938, 32.784126, 31.651413>,  <30.364866, 33.142342, 31.775175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236938, 32.784126, 31.651413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525908, -0.103848, 0.844178,
		-0.788122, 0.432704, -0.437756,
		-0.319819, -0.895535, -0.309407,
		30.140993, 32.515465, 31.558590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711218, 33.210987, 32.016838>,  <30.364866, 33.142342, 31.775175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711218, 33.210987, 32.016838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804613, 32.826519, 31.957996>,  <29.860651, 32.595840, 31.922691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.804613, 32.826519, 31.957996>,  <29.711218, 33.210987, 32.016838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804613, 32.826519, 31.957996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410215, -0.234536, 0.881315,
		-0.881593, -0.145431, -0.449046,
		0.233488, -0.961167, -0.147107,
		29.874660, 32.538170, 31.913864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060240, 32.847691, 32.170013>,  <29.711218, 33.210987, 32.016838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060240, 32.847691, 32.170013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.354065, 32.577942, 32.200043>,  <29.530359, 32.416092, 32.218060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.354065, 32.577942, 32.200043>,  <29.060240, 32.847691, 32.170013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354065, 32.577942, 32.200043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327176, -0.255090, 0.909882,
		-0.594453, -0.692926, -0.408019,
		0.734562, -0.674376, 0.075069,
		29.574434, 32.375629, 32.222565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.314888, 27.564194, 31.853880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142628, 27.919956, 31.915195>,  <32.039272, 28.133413, 31.951984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142628, 27.919956, 31.915195>,  <32.314888, 27.564194, 31.853880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142628, 27.919956, 31.915195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154513, 0.239997, -0.958398,
		-0.889193, -0.389052, -0.240780,
		-0.430653, 0.889404, 0.153290,
		32.013432, 28.186777, 31.961182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844088, 27.658678, 31.367418>,  <32.314888, 27.564194, 31.853880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844088, 27.658678, 31.367418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912714, 28.032009, 31.493568>,  <31.953890, 28.256008, 31.569258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912714, 28.032009, 31.493568>,  <31.844088, 27.658678, 31.367418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912714, 28.032009, 31.493568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009369, 0.318560, -0.947856,
		-0.985128, 0.165576, 0.045910,
		0.171567, 0.933330, 0.315373,
		31.964184, 28.312008, 31.588181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300444, 28.085819, 31.034170>,  <31.844088, 27.658678, 31.367418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300444, 28.085819, 31.034170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569498, 28.353447, 31.160603>,  <31.730930, 28.514023, 31.236462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.569498, 28.353447, 31.160603>,  <31.300444, 28.085819, 31.034170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569498, 28.353447, 31.160603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054913, 0.380839, -0.923010,
		-0.737932, 0.638207, 0.219426,
		0.672637, 0.669069, 0.316079,
		31.771290, 28.554167, 31.255426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098644, 28.734800, 30.700762>,  <31.300444, 28.085819, 31.034170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098644, 28.734800, 30.700762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477283, 28.789639, 30.817486>,  <31.704468, 28.822542, 30.887520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477283, 28.789639, 30.817486>,  <31.098644, 28.734800, 30.700762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477283, 28.789639, 30.817486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172028, 0.550718, -0.816772,
		-0.272680, 0.823356, 0.497725,
		0.946600, 0.137095, 0.291810,
		31.761263, 28.830767, 30.905029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205765, 29.439394, 30.672340>,  <31.098644, 28.734800, 30.700762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205765, 29.439394, 30.672340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565329, 29.265774, 30.648479>,  <31.781067, 29.161602, 30.634163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565329, 29.265774, 30.648479>,  <31.205765, 29.439394, 30.672340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565329, 29.265774, 30.648479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225129, 0.574396, -0.787011,
		0.375869, 0.694023, 0.614048,
		0.898910, -0.434052, -0.059653,
		31.835001, 29.135557, 30.630583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728197, 29.933636, 30.674154>,  <31.205765, 29.439394, 30.672340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728197, 29.933636, 30.674154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882887, 29.619808, 30.480289>,  <31.975700, 29.431513, 30.363970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882887, 29.619808, 30.480289>,  <31.728197, 29.933636, 30.674154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882887, 29.619808, 30.480289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423591, 0.617955, -0.662346,
		0.819154, 0.050848, 0.571315,
		0.386726, -0.784568, -0.484661,
		31.998905, 29.384438, 30.334890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073399, 30.196957, 30.086813>,  <31.728197, 29.933636, 30.674154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073399, 30.196957, 30.086813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176964, 29.815823, 30.023487>,  <32.239105, 29.587141, 29.985493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176964, 29.815823, 30.023487>,  <32.073399, 30.196957, 30.086813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176964, 29.815823, 30.023487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475976, 0.268484, -0.837475,
		0.840481, 0.141483, 0.523043,
		0.258917, -0.952837, -0.158313,
		32.254639, 29.529972, 29.975994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834202, 30.191305, 29.966993>,  <32.073399, 30.196957, 30.086813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834202, 30.191305, 29.966993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632027, 29.909035, 29.768375>,  <32.510723, 29.739672, 29.649204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632027, 29.909035, 29.768375>,  <32.834202, 30.191305, 29.966993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632027, 29.909035, 29.768375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355602, 0.353964, -0.865018,
		0.786181, -0.613784, 0.072033,
		-0.505437, -0.705676, -0.496543,
		32.480396, 29.697332, 29.619413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182346, 30.150024, 29.374933>,  <32.834202, 30.191305, 29.966993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182346, 30.150024, 29.374933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.862789, 29.943562, 29.251415>,  <32.671055, 29.819685, 29.177303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.862789, 29.943562, 29.251415>,  <33.182346, 30.150024, 29.374933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862789, 29.943562, 29.251415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190446, 0.269910, -0.943864,
		0.570529, -0.812854, -0.117329,
		-0.798891, -0.516156, -0.308796,
		32.623123, 29.788715, 29.158777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347622, 29.851864, 28.647356>,  <33.182346, 30.150024, 29.374933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347622, 29.851864, 28.647356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949272, 29.857372, 28.683231>,  <32.710262, 29.860678, 28.704756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949272, 29.857372, 28.683231>,  <33.347622, 29.851864, 28.647356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949272, 29.857372, 28.683231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077538, 0.384265, -0.919961,
		-0.047133, -0.923120, -0.381612,
		-0.995874, 0.013771, 0.089688,
		32.650509, 29.861504, 28.710138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182838, 29.733004, 27.989172>,  <33.347622, 29.851864, 28.647356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182838, 29.733004, 27.989172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847744, 29.879593, 28.151108>,  <32.646687, 29.967546, 28.248270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847744, 29.879593, 28.151108>,  <33.182838, 29.733004, 27.989172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847744, 29.879593, 28.151108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138143, 0.575026, -0.806388,
		-0.528314, -0.731465, -0.431094,
		-0.837735, 0.366473, 0.404841,
		32.596424, 29.989534, 28.272560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590427, 29.547867, 27.531399>,  <33.182838, 29.733004, 27.989172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590427, 29.547867, 27.531399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521530, 29.874348, 27.751995>,  <32.480190, 30.070236, 27.884354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521530, 29.874348, 27.751995>,  <32.590427, 29.547867, 27.531399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521530, 29.874348, 27.751995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081391, 0.569738, -0.817786,
		-0.981686, -0.095972, -0.164566,
		-0.172245, 0.816204, 0.551492,
		32.469856, 30.119209, 27.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959299, 29.885609, 27.255350>,  <32.590427, 29.547867, 27.531399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959299, 29.885609, 27.255350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134296, 30.180851, 27.460796>,  <32.239296, 30.357996, 27.584064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134296, 30.180851, 27.460796>,  <31.959299, 29.885609, 27.255350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134296, 30.180851, 27.460796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158632, 0.625569, -0.763871,
		-0.885118, 0.252714, 0.390770,
		0.437495, 0.738105, 0.513614,
		32.265545, 30.402283, 27.614882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568321, 30.459553, 27.113550>,  <31.959299, 29.885609, 27.255350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568321, 30.459553, 27.113550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916430, 30.612129, 27.238213>,  <32.125294, 30.703674, 27.313009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916430, 30.612129, 27.238213>,  <31.568321, 30.459553, 27.113550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916430, 30.612129, 27.238213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064905, 0.538394, -0.840190,
		-0.488276, 0.751422, 0.443792,
		0.870272, 0.381441, 0.311656,
		32.177509, 30.726561, 27.331709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931936, 30.790710, 27.429007>,  <31.568321, 30.459553, 27.113550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931936, 30.790710, 27.429007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565567, 30.667614, 27.325947>,  <30.345745, 30.593756, 27.264111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565567, 30.667614, 27.325947>,  <30.931936, 30.790710, 27.429007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565567, 30.667614, 27.325947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111396, -0.421807, 0.899817,
		-0.385590, 0.852862, 0.352060,
		-0.915921, -0.307742, -0.257649,
		30.290791, 30.575291, 27.248652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591114, 30.854124, 28.108225>,  <30.931936, 30.790710, 27.429007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591114, 30.854124, 28.108225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337940, 30.643982, 27.880753>,  <30.186037, 30.517897, 27.744270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337940, 30.643982, 27.880753>,  <30.591114, 30.854124, 28.108225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337940, 30.643982, 27.880753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374114, -0.435540, 0.818745,
		-0.677816, 0.730962, 0.079124,
		-0.632933, -0.525357, -0.568679,
		30.148060, 30.486374, 27.710150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908493, 31.014257, 28.299807>,  <30.591114, 30.854124, 28.108225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908493, 31.014257, 28.299807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.913755, 30.651585, 28.131161>,  <29.916912, 30.433981, 28.029974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.913755, 30.651585, 28.131161>,  <29.908493, 31.014257, 28.299807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913755, 30.651585, 28.131161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525313, -0.365040, 0.768630,
		-0.850807, 0.211368, -0.481093,
		0.013154, -0.906680, -0.421613,
		29.917702, 30.379580, 28.004677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238619, 30.678717, 28.376579>,  <29.908493, 31.014257, 28.299807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238619, 30.678717, 28.376579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.517252, 30.394039, 28.340221>,  <29.684431, 30.223232, 28.318407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.517252, 30.394039, 28.340221>,  <29.238619, 30.678717, 28.376579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517252, 30.394039, 28.340221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442529, -0.525901, 0.726359,
		-0.564751, -0.465742, -0.681279,
		0.696581, -0.711698, -0.090899,
		29.726227, 30.180531, 28.312952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890656, 30.083567, 28.517282>,  <29.238619, 30.678717, 28.376579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890656, 30.083567, 28.517282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269861, 29.967396, 28.569309>,  <29.497385, 29.897694, 28.600525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.269861, 29.967396, 28.569309>,  <28.890656, 30.083567, 28.517282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269861, 29.967396, 28.569309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284649, -0.591205, 0.754620,
		-0.142267, -0.752415, -0.643141,
		0.948016, -0.290427, 0.130065,
		29.554266, 29.880268, 28.608328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883976, 29.469681, 28.693535>,  <28.890656, 30.083567, 28.517282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883976, 29.469681, 28.693535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.265062, 29.512875, 28.807148>,  <29.493713, 29.538790, 28.875315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.265062, 29.512875, 28.807148>,  <28.883976, 29.469681, 28.693535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265062, 29.512875, 28.807148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193467, -0.505230, 0.841019,
		0.234317, -0.856202, -0.460449,
		0.952715, 0.107983, 0.284031,
		29.550877, 29.545269, 28.892357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179148, 28.775871, 28.963890>,  <28.883976, 29.469681, 28.693535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179148, 28.775871, 28.963890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.393410, 29.056564, 29.151779>,  <29.521967, 29.224981, 29.264513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.393410, 29.056564, 29.151779>,  <29.179148, 28.775871, 28.963890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393410, 29.056564, 29.151779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118299, -0.488410, 0.864558,
		0.836108, -0.518675, -0.178605,
		0.535657, 0.701735, 0.469723,
		29.554108, 29.267084, 29.292696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559311, 28.331610, 29.350126>,  <29.179148, 28.775871, 28.963890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559311, 28.331610, 29.350126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560688, 28.692009, 29.523651>,  <29.561514, 28.908249, 29.627766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.560688, 28.692009, 29.523651>,  <29.559311, 28.331610, 29.350126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560688, 28.692009, 29.523651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106389, -0.431021, 0.896048,
		0.994319, -0.049236, 0.094373,
		0.003441, 0.900998, 0.433810,
		29.561720, 28.962309, 29.653793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691017, 28.154428, 29.992331>,  <29.559311, 28.331610, 29.350126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691017, 28.154428, 29.992331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598198, 28.540966, 30.036755>,  <29.542507, 28.772888, 30.063408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.598198, 28.540966, 30.036755>,  <29.691017, 28.154428, 29.992331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598198, 28.540966, 30.036755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264134, -0.172484, 0.948938,
		0.936156, 0.190863, 0.295269,
		-0.232046, 0.966344, 0.111059,
		29.528584, 28.830870, 30.070072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014763, 28.314447, 30.611719>,  <29.691017, 28.154428, 29.992331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014763, 28.314447, 30.611719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.722616, 28.570095, 30.515312>,  <29.547329, 28.723484, 30.457468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.722616, 28.570095, 30.515312>,  <30.014763, 28.314447, 30.611719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722616, 28.570095, 30.515312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244637, 0.084688, 0.965909,
		0.637743, 0.764430, 0.094500,
		-0.730367, 0.639120, -0.241017,
		29.503506, 28.761831, 30.443007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163134, 28.886896, 31.027006>,  <30.014763, 28.314447, 30.611719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163134, 28.886896, 31.027006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.779510, 28.853115, 30.918873>,  <29.549337, 28.832846, 30.853992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.779510, 28.853115, 30.918873>,  <30.163134, 28.886896, 31.027006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779510, 28.853115, 30.918873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276502, 0.072594, 0.958268,
		-0.061305, 0.993780, -0.092973,
		-0.959056, -0.084454, -0.270331,
		29.491795, 28.827780, 30.837774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858885, 29.326593, 31.452370>,  <30.163134, 28.886896, 31.027006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858885, 29.326593, 31.452370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.541960, 29.113338, 31.333706>,  <29.351805, 28.985386, 31.262508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.541960, 29.113338, 31.333706>,  <29.858885, 29.326593, 31.452370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541960, 29.113338, 31.333706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427369, 0.137953, 0.893490,
		-0.435429, 0.834705, -0.337149,
		-0.792311, -0.533139, -0.296658,
		29.304266, 28.953398, 31.244709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188253, 29.675152, 31.715118>,  <29.858885, 29.326593, 31.452370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188253, 29.675152, 31.715118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084389, 29.293705, 31.654209>,  <29.022070, 29.064837, 31.617664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.084389, 29.293705, 31.654209>,  <29.188253, 29.675152, 31.715118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084389, 29.293705, 31.654209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499107, -0.002466, 0.866537,
		-0.826721, 0.301007, -0.475317,
		-0.259662, -0.953619, -0.152273,
		29.006491, 29.007620, 31.608528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464579, 29.555338, 31.975853>,  <29.188253, 29.675152, 31.715118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464579, 29.555338, 31.975853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607824, 29.183826, 31.937649>,  <28.693771, 28.960918, 31.914726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.607824, 29.183826, 31.937649>,  <28.464579, 29.555338, 31.975853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607824, 29.183826, 31.937649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387689, -0.240978, 0.889734,
		-0.849383, -0.281598, -0.446376,
		0.358114, -0.928780, -0.095510,
		28.715258, 28.905193, 31.908997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823029, 29.381201, 31.546041>,  <28.464579, 29.555338, 31.975853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823029, 29.381201, 31.546041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.497887, 29.609585, 31.592121>,  <27.302801, 29.746614, 31.619768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.497887, 29.609585, 31.592121>,  <27.823029, 29.381201, 31.546041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497887, 29.609585, 31.592121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216705, 0.480028, -0.850066,
		-0.540653, -0.666016, -0.513923,
		-0.812855, 0.570960, 0.115200,
		27.254030, 29.780872, 31.626680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327291, 29.274120, 30.920782>,  <27.823029, 29.381201, 31.546041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327291, 29.274120, 30.920782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.279905, 29.634987, 31.086704>,  <27.251474, 29.851507, 31.186258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.279905, 29.634987, 31.086704>,  <27.327291, 29.274120, 30.920782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279905, 29.634987, 31.086704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148978, 0.429168, -0.890854,
		-0.981719, -0.043739, -0.185244,
		-0.118466, 0.902165, 0.414806,
		27.244366, 29.905636, 31.211145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029600, 29.585413, 30.362955>,  <27.327291, 29.274120, 30.920782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029600, 29.585413, 30.362955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.146677, 29.875565, 30.612164>,  <27.216923, 30.049656, 30.761688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.146677, 29.875565, 30.612164>,  <27.029600, 29.585413, 30.362955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146677, 29.875565, 30.612164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307921, 0.545348, -0.779603,
		-0.905271, 0.420026, -0.063740,
		0.292693, 0.725379, 0.623022,
		27.234486, 30.093178, 30.799070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825693, 30.281889, 30.051157>,  <27.029600, 29.585413, 30.362955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825693, 30.281889, 30.051157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056337, 30.436642, 30.339001>,  <27.194725, 30.529493, 30.511707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056337, 30.436642, 30.339001>,  <26.825693, 30.281889, 30.051157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056337, 30.436642, 30.339001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349610, 0.679227, -0.645309,
		-0.738438, 0.623676, 0.256392,
		0.576613, 0.386883, 0.719611,
		27.229321, 30.552706, 30.554884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712729, 31.052341, 30.311234>,  <26.825693, 30.281889, 30.051157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712729, 31.052341, 30.311234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.098949, 30.958561, 30.356388>,  <27.330683, 30.902292, 30.383480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.098949, 30.958561, 30.356388>,  <26.712729, 31.052341, 30.311234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098949, 30.958561, 30.356388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253888, 0.753774, -0.606107,
		0.057012, 0.613888, 0.787331,
		0.965552, -0.234449, 0.112884,
		27.388615, 30.888226, 30.390253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094473, 31.671007, 30.314587>,  <26.712729, 31.052341, 30.311234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094473, 31.671007, 30.314587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.399582, 31.427734, 30.226681>,  <27.582647, 31.281771, 30.173937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.399582, 31.427734, 30.226681>,  <27.094473, 31.671007, 30.314587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399582, 31.427734, 30.226681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299505, 0.633448, -0.713470,
		0.573129, 0.478394, 0.665329,
		0.762771, -0.608180, -0.219766,
		27.628414, 31.245281, 30.160751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682266, 32.112968, 30.204443>,  <27.094473, 31.671007, 30.314587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682266, 32.112968, 30.204443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.773626, 31.769222, 30.021439>,  <27.828442, 31.562973, 29.911636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.773626, 31.769222, 30.021439>,  <27.682266, 32.112968, 30.204443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773626, 31.769222, 30.021439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468470, 0.508963, -0.722144,
		0.853446, -0.049395, 0.518835,
		0.228398, -0.859370, -0.457513,
		27.842146, 31.511412, 29.884184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287849, 32.292374, 29.884882>,  <27.682266, 32.112968, 30.204443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287849, 32.292374, 29.884882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.155668, 31.967659, 29.692299>,  <28.076361, 31.772831, 29.576748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.155668, 31.967659, 29.692299>,  <28.287849, 32.292374, 29.884882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155668, 31.967659, 29.692299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130930, 0.465756, -0.875174,
		0.934697, -0.352240, -0.047623,
		-0.330452, -0.811787, -0.481459,
		28.056532, 31.724123, 29.547861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764112, 32.192467, 29.304304>,  <28.287849, 32.292374, 29.884882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764112, 32.192467, 29.304304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.428473, 32.003666, 29.196140>,  <28.227089, 31.890385, 29.131243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.428473, 32.003666, 29.196140>,  <28.764112, 32.192467, 29.304304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428473, 32.003666, 29.196140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080507, 0.383865, -0.919873,
		0.537987, -0.793635, -0.284101,
		-0.839100, -0.472007, -0.270408,
		28.176743, 31.862064, 29.115019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852112, 31.856171, 28.688929>,  <28.764112, 32.192467, 29.304304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852112, 31.856171, 28.688929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.452261, 31.866268, 28.684837>,  <28.212351, 31.872328, 28.682383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.452261, 31.866268, 28.684837>,  <28.852112, 31.856171, 28.688929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452261, 31.866268, 28.684837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019125, 0.383134, -0.923495,
		-0.019395, -0.923348, -0.383475,
		-0.999629, 0.025245, -0.010228,
		28.152372, 31.873842, 28.681768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648109, 31.572853, 28.060986>,  <28.852112, 31.856171, 28.688929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648109, 31.572853, 28.060986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.332928, 31.783680, 28.188313>,  <28.143818, 31.910175, 28.264709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.332928, 31.783680, 28.188313>,  <28.648109, 31.572853, 28.060986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332928, 31.783680, 28.188313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062530, 0.445803, -0.892944,
		-0.612548, -0.723505, -0.318315,
		-0.787956, 0.527067, 0.318317,
		28.096540, 31.941799, 28.283808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044083, 31.406681, 27.639889>,  <28.648109, 31.572853, 28.060986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044083, 31.406681, 27.639889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.950251, 31.759678, 27.802952>,  <27.893951, 31.971476, 27.900789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.950251, 31.759678, 27.802952>,  <28.044083, 31.406681, 27.639889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950251, 31.759678, 27.802952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180995, 0.372373, -0.910263,
		-0.955098, -0.287313, 0.072375,
		-0.234580, 0.882490, 0.407656,
		27.879877, 32.024426, 27.925249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436377, 31.508610, 27.349758>,  <28.044083, 31.406681, 27.639889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436377, 31.508610, 27.349758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534866, 31.872360, 27.483868>,  <27.593960, 32.090611, 27.564333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534866, 31.872360, 27.483868>,  <27.436377, 31.508610, 27.349758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534866, 31.872360, 27.483868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178602, 0.382572, -0.906499,
		-0.952615, 0.163321, 0.256615,
		0.246225, 0.909376, 0.335274,
		27.608734, 32.145172, 27.584450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917150, 31.864985, 27.091137>,  <27.436377, 31.508610, 27.349758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917150, 31.864985, 27.091137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.208654, 32.126728, 27.171856>,  <27.383556, 32.283775, 27.220287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.208654, 32.126728, 27.171856>,  <26.917150, 31.864985, 27.091137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208654, 32.126728, 27.171856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132527, 0.423899, -0.895961,
		-0.671821, 0.626198, 0.395642,
		0.728761, 0.654359, 0.201796,
		27.427282, 32.323036, 27.232395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.235588, 38.014847, 16.439632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.606548, 37.895954, 16.530472>,  <42.829124, 37.824619, 16.584976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.606548, 37.895954, 16.530472>,  <42.235588, 38.014847, 16.439632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606548, 37.895954, 16.530472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366346, -0.599032, 0.712005,
		-0.075593, -0.743513, -0.664435,
		0.927403, -0.297236, 0.227101,
		42.884769, 37.806782, 16.598602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217789, 37.231606, 16.432100>,  <42.235588, 38.014847, 16.439632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217789, 37.231606, 16.432100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524704, 37.344513, 16.662437>,  <42.708851, 37.412258, 16.800640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524704, 37.344513, 16.662437>,  <42.217789, 37.231606, 16.432100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524704, 37.344513, 16.662437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321972, -0.606997, 0.726559,
		0.554623, -0.742884, -0.374856,
		0.767286, 0.282273, 0.575843,
		42.754890, 37.429195, 16.835190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455906, 36.610081, 16.723688>,  <42.217789, 37.231606, 16.432100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455906, 36.610081, 16.723688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629570, 36.884029, 16.957767>,  <42.733768, 37.048397, 17.098215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629570, 36.884029, 16.957767>,  <42.455906, 36.610081, 16.723688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629570, 36.884029, 16.957767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217365, -0.550778, 0.805851,
		0.874220, -0.477067, -0.090257,
		0.434156, 0.684872, 0.585199,
		42.759815, 37.089493, 17.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904140, 36.188904, 17.275669>,  <42.455906, 36.610081, 16.723688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904140, 36.188904, 17.275669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846931, 36.560047, 17.413437>,  <42.812607, 36.782734, 17.496098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.846931, 36.560047, 17.413437>,  <42.904140, 36.188904, 17.275669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846931, 36.560047, 17.413437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147622, -0.364105, 0.919584,
		0.978649, 0.080673, 0.189046,
		-0.143018, 0.927857, 0.344422,
		42.804028, 36.838406, 17.516764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296173, 36.300510, 17.870729>,  <42.904140, 36.188904, 17.275669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296173, 36.300510, 17.870729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990379, 36.557537, 17.891434>,  <42.806904, 36.711754, 17.903856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990379, 36.557537, 17.891434>,  <43.296173, 36.300510, 17.870729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990379, 36.557537, 17.891434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092370, -0.188650, 0.977691,
		0.637995, 0.742644, 0.203573,
		-0.764480, 0.642566, 0.051760,
		42.761036, 36.750305, 17.906961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212315, 36.319561, 18.689438>,  <43.296173, 36.300510, 17.870729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212315, 36.319561, 18.689438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922188, 36.546120, 18.532925>,  <42.748112, 36.682056, 18.439016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922188, 36.546120, 18.532925>,  <43.212315, 36.319561, 18.689438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922188, 36.546120, 18.532925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572093, -0.179778, 0.800244,
		0.382914, 0.804283, 0.454429,
		-0.725319, 0.566400, -0.391285,
		42.704594, 36.716042, 18.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057468, 36.822948, 19.237593>,  <43.212315, 36.319561, 18.689438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057468, 36.822948, 19.237593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.749256, 36.753567, 18.992252>,  <42.564331, 36.711937, 18.845049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.749256, 36.753567, 18.992252>,  <43.057468, 36.822948, 19.237593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749256, 36.753567, 18.992252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616356, -0.042489, 0.786320,
		-0.162453, 0.983924, -0.074172,
		-0.770528, -0.173456, -0.613351,
		42.518097, 36.701530, 18.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563229, 37.258163, 19.455898>,  <43.057468, 36.822948, 19.237593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563229, 37.258163, 19.455898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381065, 36.960762, 19.260021>,  <42.271767, 36.782322, 19.142494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381065, 36.960762, 19.260021>,  <42.563229, 37.258163, 19.455898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381065, 36.960762, 19.260021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644029, -0.104637, 0.757811,
		-0.614679, 0.660490, -0.431188,
		-0.455408, -0.743508, -0.489693,
		42.244442, 36.737709, 19.113113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849949, 37.344872, 19.618647>,  <42.563229, 37.258163, 19.455898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849949, 37.344872, 19.618647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.858143, 36.964554, 19.494991>,  <41.863060, 36.736362, 19.420799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.858143, 36.964554, 19.494991>,  <41.849949, 37.344872, 19.618647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858143, 36.964554, 19.494991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744334, -0.220939, 0.630201,
		-0.667493, 0.217190, -0.712237,
		0.020488, -0.950797, -0.309137,
		41.864288, 36.679314, 19.402250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227753, 37.196846, 19.522379>,  <41.849949, 37.344872, 19.618647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227753, 37.196846, 19.522379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366516, 36.822735, 19.550423>,  <41.449776, 36.598270, 19.567249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366516, 36.822735, 19.550423>,  <41.227753, 37.196846, 19.522379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366516, 36.822735, 19.550423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619186, -0.172236, 0.766122,
		-0.704459, -0.309186, -0.638859,
		0.346908, -0.935275, 0.070110,
		41.470589, 36.542152, 19.571455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617256, 36.780457, 19.613413>,  <41.227753, 37.196846, 19.522379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617256, 36.780457, 19.613413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920540, 36.564938, 19.760284>,  <41.102509, 36.435627, 19.848408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920540, 36.564938, 19.760284>,  <40.617256, 36.780457, 19.613413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920540, 36.564938, 19.760284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564862, -0.261532, 0.782644,
		-0.325657, -0.800812, -0.502641,
		0.758208, -0.538796, 0.367179,
		41.148003, 36.403297, 19.870438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306454, 36.189648, 19.806030>,  <40.617256, 36.780457, 19.613413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306454, 36.189648, 19.806030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653145, 36.193497, 20.005505>,  <40.861160, 36.195805, 20.125189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653145, 36.193497, 20.005505>,  <40.306454, 36.189648, 19.806030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653145, 36.193497, 20.005505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459991, -0.371147, 0.806634,
		0.192845, -0.928524, -0.317260,
		0.866729, 0.009618, 0.498687,
		40.913162, 36.196381, 20.155111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559586, 35.539085, 19.932863>,  <40.306454, 36.189648, 19.806030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559586, 35.539085, 19.932863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706932, 35.777519, 20.218239>,  <40.795341, 35.920578, 20.389463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.706932, 35.777519, 20.218239>,  <40.559586, 35.539085, 19.932863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706932, 35.777519, 20.218239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383733, -0.601492, 0.700683,
		0.846791, -0.531878, 0.007167,
		0.368367, 0.596082, 0.713437,
		40.817444, 35.956345, 20.432270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822880, 35.077965, 20.463898>,  <40.559586, 35.539085, 19.932863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822880, 35.077965, 20.463898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.806530, 35.424908, 20.662300>,  <40.796719, 35.633072, 20.781342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.806530, 35.424908, 20.662300>,  <40.822880, 35.077965, 20.463898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806530, 35.424908, 20.662300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413652, -0.466570, 0.781796,
		0.909517, -0.173218, 0.377855,
		-0.040875, 0.867357, 0.496005,
		40.794266, 35.685116, 20.811102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953148, 34.907421, 21.114874>,  <40.822880, 35.077965, 20.463898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953148, 34.907421, 21.114874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792038, 35.272079, 21.147537>,  <40.695374, 35.490875, 21.167135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.792038, 35.272079, 21.147537>,  <40.953148, 34.907421, 21.114874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792038, 35.272079, 21.147537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486090, -0.288645, 0.824864,
		0.775558, 0.292540, 0.559402,
		-0.402774, 0.911649, 0.081660,
		40.671207, 35.545574, 21.172035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125881, 35.212070, 21.939034>,  <40.953148, 34.907421, 21.114874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125881, 35.212070, 21.939034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796524, 35.357853, 21.765045>,  <40.598911, 35.445324, 21.660652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796524, 35.357853, 21.765045>,  <41.125881, 35.212070, 21.939034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796524, 35.357853, 21.765045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547853, -0.310696, 0.776740,
		0.147945, 0.877860, 0.455493,
		-0.823389, 0.364458, -0.434972,
		40.549507, 35.467190, 21.634554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731728, 35.232624, 22.518963>,  <41.125881, 35.212070, 21.939034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731728, 35.232624, 22.518963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476009, 35.315876, 22.222858>,  <40.322578, 35.365826, 22.045197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476009, 35.315876, 22.222858>,  <40.731728, 35.232624, 22.518963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476009, 35.315876, 22.222858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766591, -0.248001, 0.592312,
		-0.060310, 0.946139, 0.318094,
		-0.639297, 0.208126, -0.740259,
		40.284222, 35.378315, 22.000780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202061, 35.619553, 22.879797>,  <40.731728, 35.232624, 22.518963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202061, 35.619553, 22.879797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047932, 35.501244, 22.530159>,  <39.955452, 35.430260, 22.320375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.047932, 35.501244, 22.530159>,  <40.202061, 35.619553, 22.879797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047932, 35.501244, 22.530159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781288, -0.399481, 0.479587,
		-0.491032, 0.867718, -0.077151,
		-0.385326, -0.295770, -0.874096,
		39.932335, 35.412514, 22.267931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514706, 35.917233, 22.791105>,  <40.202061, 35.619553, 22.879797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514706, 35.917233, 22.791105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545845, 35.580322, 22.577744>,  <39.564529, 35.378178, 22.449726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545845, 35.580322, 22.577744>,  <39.514706, 35.917233, 22.791105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545845, 35.580322, 22.577744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760742, -0.395988, 0.514261,
		-0.644368, 0.365749, -0.671578,
		0.077847, -0.842271, -0.533403,
		39.569199, 35.327641, 22.417723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876564, 35.707184, 22.617857>,  <39.514706, 35.917233, 22.791105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876564, 35.707184, 22.617857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114368, 35.386295, 22.595928>,  <39.257050, 35.193764, 22.582771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114368, 35.386295, 22.595928>,  <38.876564, 35.707184, 22.617857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114368, 35.386295, 22.595928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691414, -0.544817, 0.474469,
		-0.410496, -0.244171, -0.878563,
		0.594508, -0.802219, -0.054822,
		39.292721, 35.145630, 22.579481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423145, 35.145973, 22.415068>,  <38.876564, 35.707184, 22.617857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423145, 35.145973, 22.415068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741493, 34.969704, 22.581146>,  <38.932503, 34.863941, 22.680794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741493, 34.969704, 22.581146>,  <38.423145, 35.145973, 22.415068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741493, 34.969704, 22.581146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602172, -0.504714, 0.618590,
		-0.063042, -0.742340, -0.667051,
		0.795874, -0.440677, 0.415198,
		38.980255, 34.837502, 22.705706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742794, 35.194721, 21.961782>,  <38.423145, 35.145973, 22.415068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742794, 35.194721, 21.961782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423489, 35.288551, 21.739883>,  <37.231903, 35.344849, 21.606745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423489, 35.288551, 21.739883>,  <37.742794, 35.194721, 21.961782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423489, 35.288551, 21.739883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597449, 0.191691, -0.778659,
		-0.076312, -0.953011, -0.293166,
		-0.798267, 0.234573, -0.554747,
		37.184010, 35.358925, 21.573460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056019, 35.080940, 21.386721>,  <37.742794, 35.194721, 21.961782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056019, 35.080940, 21.386721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.716110, 35.244804, 21.254021>,  <37.512165, 35.343124, 21.174400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.716110, 35.244804, 21.254021>,  <38.056019, 35.080940, 21.386721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716110, 35.244804, 21.254021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467405, 0.294551, -0.833530,
		-0.243749, -0.863375, -0.441780,
		-0.849776, 0.409663, -0.331749,
		37.461178, 35.367702, 21.154495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932861, 34.843861, 20.620905>,  <38.056019, 35.080940, 21.386721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932861, 34.843861, 20.620905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741211, 35.187588, 20.692467>,  <37.626221, 35.393826, 20.735405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741211, 35.187588, 20.692467>,  <37.932861, 34.843861, 20.620905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741211, 35.187588, 20.692467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596371, 0.468257, -0.651980,
		-0.644032, -0.205687, -0.736828,
		-0.479129, 0.859319, 0.178907,
		37.597473, 35.445385, 20.746140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686871, 35.124767, 20.030466>,  <37.932861, 34.843861, 20.620905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686871, 35.124767, 20.030466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692101, 35.450733, 20.262241>,  <37.695240, 35.646313, 20.401306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692101, 35.450733, 20.262241>,  <37.686871, 35.124767, 20.030466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692101, 35.450733, 20.262241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413433, 0.523227, -0.745189,
		-0.910441, 0.249305, -0.330068,
		0.013078, 0.814912, 0.579438,
		37.696026, 35.695206, 20.436073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394051, 35.637630, 19.622433>,  <37.686871, 35.124767, 20.030466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394051, 35.637630, 19.622433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.594906, 35.830967, 19.909275>,  <37.715420, 35.946968, 20.081381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.594906, 35.830967, 19.909275>,  <37.394051, 35.637630, 19.622433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594906, 35.830967, 19.909275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341598, 0.650933, -0.677936,
		-0.794461, 0.585379, 0.161750,
		0.502138, 0.483340, 0.717105,
		37.745548, 35.975967, 20.124407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331524, 36.266640, 19.417440>,  <37.394051, 35.637630, 19.622433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331524, 36.266640, 19.417440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621365, 36.329746, 19.685787>,  <37.795269, 36.367611, 19.846796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621365, 36.329746, 19.685787>,  <37.331524, 36.266640, 19.417440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621365, 36.329746, 19.685787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537639, 0.479596, -0.693492,
		-0.431158, 0.863189, 0.262692,
		0.724601, 0.157771, 0.670866,
		37.838745, 36.377079, 19.887047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481739, 37.010780, 19.391352>,  <37.331524, 36.266640, 19.417440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481739, 37.010780, 19.391352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800579, 36.802952, 19.514431>,  <37.991882, 36.678253, 19.588278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800579, 36.802952, 19.514431>,  <37.481739, 37.010780, 19.391352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800579, 36.802952, 19.514431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573393, 0.491480, -0.655491,
		0.189345, 0.698924, 0.689676,
		0.797100, -0.519570, 0.307699,
		38.039711, 36.647079, 19.606741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899212, 37.510502, 19.575546>,  <37.481739, 37.010780, 19.391352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899212, 37.510502, 19.575546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.134953, 37.189789, 19.535946>,  <38.276398, 36.997360, 19.512186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.134953, 37.189789, 19.535946>,  <37.899212, 37.510502, 19.575546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134953, 37.189789, 19.535946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750490, 0.588726, -0.300277,
		0.299043, 0.102670, 0.948700,
		0.589354, -0.801786, -0.099002,
		38.311760, 36.949253, 19.506245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546078, 37.671928, 19.799461>,  <37.899212, 37.510502, 19.575546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546078, 37.671928, 19.799461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614861, 37.350292, 19.571823>,  <38.656132, 37.157310, 19.435240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614861, 37.350292, 19.571823>,  <38.546078, 37.671928, 19.799461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614861, 37.350292, 19.571823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763622, 0.473770, -0.438661,
		0.622343, -0.359144, 0.695489,
		0.171959, -0.804088, -0.569098,
		38.666447, 37.109066, 19.401094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211800, 37.524242, 19.826221>,  <38.546078, 37.671928, 19.799461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211800, 37.524242, 19.826221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120327, 37.325600, 19.491299>,  <39.065441, 37.206413, 19.290344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120327, 37.325600, 19.491299>,  <39.211800, 37.524242, 19.826221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120327, 37.325600, 19.491299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737440, 0.473118, -0.482018,
		0.635520, -0.727693, 0.258024,
		-0.228685, -0.496610, -0.837306,
		39.051720, 37.176617, 19.240107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797039, 37.274315, 19.639822>,  <39.211800, 37.524242, 19.826221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797039, 37.274315, 19.639822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568378, 37.271435, 19.311634>,  <39.431183, 37.269707, 19.114721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568378, 37.271435, 19.311634>,  <39.797039, 37.274315, 19.639822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568378, 37.271435, 19.311634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717833, 0.479947, -0.504348,
		0.397410, -0.877268, -0.269195,
		-0.571647, -0.007196, -0.820468,
		39.396885, 37.269276, 19.065495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346100, 37.270065, 19.085522>,  <39.797039, 37.274315, 19.639822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346100, 37.270065, 19.085522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.005184, 37.364414, 18.898777>,  <39.800632, 37.421024, 18.786730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.005184, 37.364414, 18.898777>,  <40.346100, 37.270065, 19.085522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005184, 37.364414, 18.898777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477346, 0.715672, -0.509857,
		0.213862, -0.657403, -0.722554,
		-0.852293, 0.235869, -0.466864,
		39.749496, 37.435177, 18.758718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462616, 37.146553, 18.397995>,  <40.346100, 37.270065, 19.085522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462616, 37.146553, 18.397995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163055, 37.410240, 18.425064>,  <39.983318, 37.568455, 18.441305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163055, 37.410240, 18.425064>,  <40.462616, 37.146553, 18.397995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163055, 37.410240, 18.425064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484180, 0.614033, -0.623325,
		-0.452462, -0.434041, -0.779029,
		-0.748898, 0.659221, 0.067672,
		39.938385, 37.608006, 18.445366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289936, 37.358700, 17.690378>,  <40.462616, 37.146553, 18.397995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289936, 37.358700, 17.690378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186398, 37.638252, 17.957081>,  <40.124275, 37.805984, 18.117102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.186398, 37.638252, 17.957081>,  <40.289936, 37.358700, 17.690378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186398, 37.638252, 17.957081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529208, 0.680069, -0.507390,
		-0.808046, 0.221517, -0.545886,
		-0.258844, 0.698882, 0.666756,
		40.108746, 37.847916, 18.157108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129448, 37.892590, 17.245470>,  <40.289936, 37.358700, 17.690378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129448, 37.892590, 17.245470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169983, 38.091984, 17.589851>,  <40.194302, 38.211620, 17.796480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169983, 38.091984, 17.589851>,  <40.129448, 37.892590, 17.245470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169983, 38.091984, 17.589851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369409, 0.784684, -0.497804,
		-0.923725, 0.368490, -0.104628,
		0.101336, 0.498485, 0.860955,
		40.200382, 38.241528, 17.848139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814735, 38.643639, 17.114552>,  <40.129448, 37.892590, 17.245470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814735, 38.643639, 17.114552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.075123, 38.657604, 17.417873>,  <40.231354, 38.665981, 17.599867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.075123, 38.657604, 17.417873>,  <39.814735, 38.643639, 17.114552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075123, 38.657604, 17.417873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494512, 0.738397, -0.458507,
		-0.575935, 0.673462, 0.463408,
		0.650966, 0.034909, 0.758304,
		40.270412, 38.668076, 17.645365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109520, 39.262295, 16.950550>,  <39.814735, 38.643639, 17.114552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109520, 39.262295, 16.950550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345783, 39.124725, 17.242535>,  <40.487541, 39.042183, 17.417725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345783, 39.124725, 17.242535>,  <40.109520, 39.262295, 16.950550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345783, 39.124725, 17.242535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763615, 0.530611, -0.367892,
		-0.260799, 0.774707, 0.576032,
		0.590658, -0.343921, 0.729960,
		40.522980, 39.021549, 17.461523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358906, 39.841904, 17.208048>,  <40.109520, 39.262295, 16.950550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358906, 39.841904, 17.208048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.601685, 39.530045, 17.269718>,  <40.747353, 39.342930, 17.306721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.601685, 39.530045, 17.269718>,  <40.358906, 39.841904, 17.208048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601685, 39.530045, 17.269718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762123, 0.515967, -0.391083,
		0.225356, 0.354868, 0.907350,
		0.606946, -0.779645, 0.154177,
		40.783768, 39.296150, 17.315971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963039, 40.112804, 17.468266>,  <40.358906, 39.841904, 17.208048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963039, 40.112804, 17.468266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068092, 39.754665, 17.324387>,  <41.131123, 39.539783, 17.238060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068092, 39.754665, 17.324387>,  <40.963039, 40.112804, 17.468266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068092, 39.754665, 17.324387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860754, 0.385858, -0.331990,
		0.436038, -0.222420, 0.872009,
		0.262630, -0.895345, -0.359698,
		41.146881, 39.486061, 17.216476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635769, 39.925156, 17.717203>,  <40.963039, 40.112804, 17.468266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635769, 39.925156, 17.717203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576408, 39.723103, 17.377129>,  <41.540794, 39.601871, 17.173084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576408, 39.723103, 17.377129>,  <41.635769, 39.925156, 17.717203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576408, 39.723103, 17.377129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874079, 0.335124, -0.351679,
		0.462563, -0.795318, 0.391795,
		-0.148397, -0.505134, -0.850187,
		41.531891, 39.571564, 17.122072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137161, 39.328201, 17.661951>,  <41.635769, 39.925156, 17.717203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137161, 39.328201, 17.661951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.012516, 39.477551, 17.312439>,  <41.937729, 39.567162, 17.102732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.012516, 39.477551, 17.312439>,  <42.137161, 39.328201, 17.661951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012516, 39.477551, 17.312439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948898, 0.170552, -0.265527,
		0.049884, -0.911869, -0.407439,
		-0.311616, 0.373373, -0.873778,
		41.919033, 39.589561, 17.050306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.595087, 31.793467, 32.353813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.978350, 31.850513, 32.453087>,  <29.208307, 31.884741, 32.512650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.978350, 31.850513, 32.453087>,  <28.595087, 31.793467, 32.353813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978350, 31.850513, 32.453087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162212, -0.443838, 0.881303,
		0.235843, -0.884685, -0.402133,
		0.958158, 0.142618, 0.248182,
		29.265797, 31.893299, 32.527542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771364, 31.153652, 32.503250>,  <28.595087, 31.793467, 32.353813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771364, 31.153652, 32.503250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074059, 31.344643, 32.681850>,  <29.255674, 31.459238, 32.789013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074059, 31.344643, 32.681850>,  <28.771364, 31.153652, 32.503250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074059, 31.344643, 32.681850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230773, -0.443926, 0.865837,
		0.611632, -0.758251, -0.225746,
		0.756736, 0.477477, 0.446504,
		29.301079, 31.487886, 32.815800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139744, 30.716894, 32.900379>,  <28.771364, 31.153652, 32.503250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139744, 30.716894, 32.900379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237162, 31.065266, 33.071102>,  <29.295612, 31.274288, 33.173534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237162, 31.065266, 33.071102>,  <29.139744, 30.716894, 32.900379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237162, 31.065266, 33.071102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104091, -0.414046, 0.904285,
		0.964287, -0.264662, -0.010184,
		0.243546, 0.870930, 0.426809,
		29.310226, 31.326546, 33.199146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572088, 30.574289, 33.523960>,  <29.139744, 30.716894, 32.900379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572088, 30.574289, 33.523960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.424833, 30.945667, 33.543823>,  <29.336481, 31.168493, 33.555740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.424833, 30.945667, 33.543823>,  <29.572088, 30.574289, 33.523960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424833, 30.945667, 33.543823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180215, -0.123645, 0.975825,
		0.912140, 0.350287, 0.212837,
		-0.368135, 0.928445, 0.049655,
		29.314392, 31.224201, 33.558720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729399, 30.864185, 34.206844>,  <29.572088, 30.574289, 33.523960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729399, 30.864185, 34.206844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407244, 31.079708, 34.108021>,  <29.213951, 31.209023, 34.048725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.407244, 31.079708, 34.108021>,  <29.729399, 30.864185, 34.206844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407244, 31.079708, 34.108021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414734, -0.214437, 0.884314,
		0.423497, 0.814679, 0.396167,
		-0.805385, 0.538809, -0.247062,
		29.165628, 31.241350, 34.033901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579592, 31.228975, 34.775558>,  <29.729399, 30.864185, 34.206844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579592, 31.228975, 34.775558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232191, 31.238701, 34.577522>,  <29.023750, 31.244535, 34.458702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232191, 31.238701, 34.577522>,  <29.579592, 31.228975, 34.775558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232191, 31.238701, 34.577522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495519, -0.068301, 0.865908,
		-0.012762, 0.997369, 0.071367,
		-0.868504, 0.024313, -0.495086,
		28.971640, 31.245995, 34.428997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167965, 31.829485, 34.900768>,  <29.579592, 31.228975, 34.775558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167965, 31.829485, 34.900768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914225, 31.538982, 34.794823>,  <28.761980, 31.364681, 34.731255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914225, 31.538982, 34.794823>,  <29.167965, 31.829485, 34.900768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914225, 31.538982, 34.794823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517738, 0.144701, 0.843213,
		-0.574062, 0.672023, -0.467801,
		-0.634350, -0.726255, -0.264865,
		28.723919, 31.321106, 34.715363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608448, 32.017525, 35.140244>,  <29.167965, 31.829485, 34.900768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608448, 32.017525, 35.140244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502333, 31.640259, 35.060173>,  <28.438663, 31.413900, 35.012131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502333, 31.640259, 35.060173>,  <28.608448, 32.017525, 35.140244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502333, 31.640259, 35.060173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613105, 0.004785, 0.789986,
		-0.744126, 0.332303, -0.579526,
		-0.265288, -0.943160, -0.200177,
		28.422747, 31.357311, 35.000118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891495, 32.071636, 35.020863>,  <28.608448, 32.017525, 35.140244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891495, 32.071636, 35.020863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953699, 31.688026, 35.115601>,  <27.991022, 31.457861, 35.172443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.953699, 31.688026, 35.115601>,  <27.891495, 32.071636, 35.020863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953699, 31.688026, 35.115601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734768, 0.047953, 0.676621,
		-0.660252, -0.279243, -0.697202,
		0.155509, -0.959022, 0.236840,
		28.000351, 31.400320, 35.186653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190655, 31.764172, 35.016109>,  <27.891495, 32.071636, 35.020863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190655, 31.764172, 35.016109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.424501, 31.513107, 35.221737>,  <27.564810, 31.362469, 35.345116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.424501, 31.513107, 35.221737>,  <27.190655, 31.764172, 35.016109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424501, 31.513107, 35.221737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661321, -0.001617, 0.750101,
		-0.469976, -0.778487, -0.416029,
		0.584616, -0.627659, 0.514070,
		27.599886, 31.324810, 35.375957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751509, 31.310209, 35.329601>,  <27.190655, 31.764172, 35.016109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751509, 31.310209, 35.329601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081696, 31.226025, 35.539101>,  <27.279808, 31.175514, 35.664799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081696, 31.226025, 35.539101>,  <26.751509, 31.310209, 35.329601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081696, 31.226025, 35.539101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556694, -0.150252, 0.817016,
		-0.093251, -0.965988, -0.241187,
		0.825467, -0.210455, 0.523749,
		27.329336, 31.162886, 35.696224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477957, 30.697866, 35.741714>,  <26.751509, 31.310209, 35.329601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477957, 30.697866, 35.741714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796143, 30.848396, 35.931709>,  <26.987055, 30.938715, 36.045708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796143, 30.848396, 35.931709>,  <26.477957, 30.697866, 35.741714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796143, 30.848396, 35.931709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415678, -0.231502, 0.879556,
		0.440961, -0.897098, -0.027721,
		0.795465, 0.376327, 0.474987,
		27.034782, 30.961294, 36.074207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899466, 30.246756, 36.289394>,  <26.477957, 30.697866, 35.741714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899466, 30.246756, 36.289394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.884472, 30.639942, 36.361359>,  <26.875475, 30.875854, 36.404537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.884472, 30.639942, 36.361359>,  <26.899466, 30.246756, 36.289394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884472, 30.639942, 36.361359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330682, -0.182100, 0.926007,
		0.942998, -0.024782, 0.331876,
		-0.037486, 0.982968, 0.179915,
		26.873226, 30.934832, 36.415333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789568, 30.166700, 37.056496>,  <26.899466, 30.246756, 36.289394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789568, 30.166700, 37.056496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.760406, 30.547394, 36.937237>,  <26.742910, 30.775810, 36.865681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.760406, 30.547394, 36.937237>,  <26.789568, 30.166700, 37.056496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760406, 30.547394, 36.937237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360451, 0.253594, 0.897644,
		0.929925, 0.172908, 0.324565,
		-0.072903, 0.951731, -0.298148,
		26.738535, 30.832912, 36.847794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364109, 29.564905, 37.174782>,  <26.789568, 30.166700, 37.056496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364109, 29.564905, 37.174782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.267637, 29.187229, 37.085041>,  <26.209753, 28.960623, 37.031197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.267637, 29.187229, 37.085041>,  <26.364109, 29.564905, 37.174782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267637, 29.187229, 37.085041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232774, 0.168146, -0.957885,
		0.942151, -0.283247, 0.179229,
		-0.241181, -0.944192, -0.224351,
		26.195282, 28.903971, 37.017735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800703, 29.470259, 36.585583>,  <26.364109, 29.564905, 37.174782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800703, 29.470259, 36.585583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.527843, 29.178452, 36.565670>,  <26.364128, 29.003366, 36.553722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.527843, 29.178452, 36.565670>,  <26.800703, 29.470259, 36.585583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527843, 29.178452, 36.565670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049233, 0.022106, -0.998543,
		0.729555, -0.683604, 0.020837,
		-0.682148, -0.729518, -0.049783,
		26.323198, 28.959597, 36.550735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037411, 28.915028, 36.173485>,  <26.800703, 29.470259, 36.585583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037411, 28.915028, 36.173485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.642641, 28.850647, 36.169968>,  <26.405779, 28.812019, 36.167858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.642641, 28.850647, 36.169968>,  <27.037411, 28.915028, 36.173485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642641, 28.850647, 36.169968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000691, 0.058763, -0.998272,
		0.161191, -0.985211, -0.058106,
		-0.986923, -0.160952, -0.008791,
		26.346563, 28.802362, 36.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994534, 28.483360, 35.608368>,  <27.037411, 28.915028, 36.173485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994534, 28.483360, 35.608368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.629843, 28.624073, 35.693226>,  <26.411028, 28.708500, 35.744141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.629843, 28.624073, 35.693226>,  <26.994534, 28.483360, 35.608368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629843, 28.624073, 35.693226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236395, -0.026945, -0.971283,
		-0.335962, -0.935695, 0.107725,
		-0.911727, 0.351780, 0.212141,
		26.356325, 28.729607, 35.756866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682600, 28.202320, 35.044422>,  <26.994534, 28.483360, 35.608368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682600, 28.202320, 35.044422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.421593, 28.469795, 35.187016>,  <26.264988, 28.630280, 35.272572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.421593, 28.469795, 35.187016>,  <26.682600, 28.202320, 35.044422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421593, 28.469795, 35.187016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369418, 0.130037, -0.920120,
		-0.661629, -0.732083, 0.162174,
		-0.652516, 0.668688, 0.356481,
		26.225838, 28.670403, 35.293961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007345, 28.021238, 34.792431>,  <26.682600, 28.202320, 35.044422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007345, 28.021238, 34.792431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.010080, 28.411049, 34.882095>,  <26.011721, 28.644936, 34.935894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.010080, 28.411049, 34.882095>,  <26.007345, 28.021238, 34.792431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010080, 28.411049, 34.882095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065647, 0.224119, -0.972348,
		-0.997819, -0.008067, 0.065507,
		0.006837, 0.974529, 0.224160,
		26.012131, 28.703407, 34.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629284, 28.273586, 34.239758>,  <26.007345, 28.021238, 34.792431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629284, 28.273586, 34.239758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.792301, 28.616791, 34.364803>,  <25.890112, 28.822714, 34.439831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.792301, 28.616791, 34.364803>,  <25.629284, 28.273586, 34.239758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792301, 28.616791, 34.364803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094180, 0.301014, -0.948958,
		-0.908316, 0.416183, 0.041868,
		0.407543, 0.858011, 0.312612,
		25.914564, 28.874193, 34.458588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376196, 28.847471, 33.908401>,  <25.629284, 28.273586, 34.239758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376196, 28.847471, 33.908401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.746973, 28.946632, 34.021057>,  <25.969439, 29.006128, 34.088650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.746973, 28.946632, 34.021057>,  <25.376196, 28.847471, 33.908401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746973, 28.946632, 34.021057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189598, 0.338269, -0.921752,
		-0.323774, 0.907810, 0.266555,
		0.926943, 0.247901, 0.281641,
		26.025057, 29.021002, 34.105549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441580, 29.555321, 33.702469>,  <25.376196, 28.847471, 33.908401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441580, 29.555321, 33.702469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.807430, 29.397469, 33.737637>,  <26.026939, 29.302757, 33.758736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.807430, 29.397469, 33.737637>,  <25.441580, 29.555321, 33.702469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807430, 29.397469, 33.737637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311249, 0.548480, -0.776076,
		0.258042, 0.737182, 0.624482,
		0.914625, -0.394629, 0.087916,
		26.081818, 29.279079, 33.764011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925829, 30.111317, 33.765739>,  <25.441580, 29.555321, 33.702469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925829, 30.111317, 33.765739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.145531, 29.792053, 33.666733>,  <26.277351, 29.600494, 33.607327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.145531, 29.792053, 33.666733>,  <25.925829, 30.111317, 33.765739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145531, 29.792053, 33.666733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383656, 0.503985, -0.773826,
		0.742381, 0.330064, 0.583033,
		0.549252, -0.798158, -0.247519,
		26.310307, 29.552607, 33.592476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431843, 30.419710, 33.485214>,  <25.925829, 30.111317, 33.765739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431843, 30.419710, 33.485214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.521889, 30.054668, 33.348698>,  <26.575916, 29.835644, 33.266788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.521889, 30.054668, 33.348698>,  <26.431843, 30.419710, 33.485214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521889, 30.054668, 33.348698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513716, 0.408810, -0.754301,
		0.827901, -0.005524, 0.560847,
		0.225114, -0.912603, -0.341292,
		26.589422, 29.780888, 33.246311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094574, 30.502274, 33.274635>,  <26.431843, 30.419710, 33.485214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094574, 30.502274, 33.274635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930399, 30.194202, 33.079342>,  <26.831894, 30.009359, 32.962166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.930399, 30.194202, 33.079342>,  <27.094574, 30.502274, 33.274635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930399, 30.194202, 33.079342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622653, 0.154464, -0.767101,
		0.666218, -0.618844, 0.416156,
		-0.410435, -0.770177, -0.488232,
		26.807268, 29.963150, 32.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664774, 30.191019, 32.947231>,  <27.094574, 30.502274, 33.274635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664774, 30.191019, 32.947231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.347872, 30.041344, 32.754433>,  <27.157730, 29.951538, 32.638756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.347872, 30.041344, 32.754433>,  <27.664774, 30.191019, 32.947231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347872, 30.041344, 32.754433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542263, -0.069553, -0.837325,
		0.279793, -0.924741, 0.258012,
		-0.792254, -0.374188, -0.481992,
		27.110195, 29.929087, 32.609837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926134, 29.795187, 32.484566>,  <27.664774, 30.191019, 32.947231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926134, 29.795187, 32.484566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.564867, 29.847416, 32.320988>,  <27.348106, 29.878754, 32.222839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.564867, 29.847416, 32.320988>,  <27.926134, 29.795187, 32.484566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564867, 29.847416, 32.320988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427398, 0.184187, -0.885103,
		-0.040249, -0.974180, -0.222159,
		-0.903167, 0.130575, -0.408949,
		27.293917, 29.886589, 32.198303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875135, 29.085682, 32.429173>,  <27.926134, 29.795187, 32.484566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875135, 29.085682, 32.429173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.194929, 28.862705, 32.339657>,  <28.386806, 28.728920, 32.285946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.194929, 28.862705, 32.339657>,  <27.875135, 29.085682, 32.429173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194929, 28.862705, 32.339657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139483, -0.534660, 0.833476,
		-0.584269, -0.635135, -0.505206,
		0.799483, -0.557442, -0.223795,
		28.434774, 28.695473, 32.272518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684250, 28.382587, 32.603977>,  <27.875135, 29.085682, 32.429173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684250, 28.382587, 32.603977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084032, 28.374073, 32.593910>,  <28.323902, 28.368965, 32.587868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084032, 28.374073, 32.593910>,  <27.684250, 28.382587, 32.603977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084032, 28.374073, 32.593910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011039, -0.503327, 0.864025,
		-0.031060, -0.863834, -0.502818,
		0.999456, -0.021287, -0.025169,
		28.383869, 28.367687, 32.586361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885252, 27.720430, 32.813976>,  <27.684250, 28.382587, 32.603977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885252, 27.720430, 32.813976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.201715, 27.956051, 32.879810>,  <28.391594, 28.097424, 32.919312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.201715, 27.956051, 32.879810>,  <27.885252, 27.720430, 32.813976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201715, 27.956051, 32.879810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106165, -0.397275, 0.911538,
		0.602329, -0.703697, -0.376843,
		0.791157, 0.589053, 0.164583,
		28.439062, 28.132767, 32.929184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292736, 27.307022, 33.113533>,  <27.885252, 27.720430, 32.813976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292736, 27.307022, 33.113533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.435480, 27.663692, 33.224934>,  <28.521126, 27.877695, 33.291775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.435480, 27.663692, 33.224934>,  <28.292736, 27.307022, 33.113533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435480, 27.663692, 33.224934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118449, -0.338921, 0.933329,
		0.926618, -0.300079, -0.226565,
		0.356860, 0.891675, 0.278506,
		28.542538, 27.931194, 33.308487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958485, 27.116116, 33.533699>,  <28.292736, 27.307022, 33.113533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958485, 27.116116, 33.533699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843304, 27.488857, 33.622002>,  <28.774195, 27.712502, 33.674984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843304, 27.488857, 33.622002>,  <28.958485, 27.116116, 33.533699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843304, 27.488857, 33.622002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123081, -0.192592, 0.973529,
		0.949702, 0.307500, -0.059237,
		-0.287952, 0.931854, 0.220753,
		28.756918, 27.768414, 33.688229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471798, 27.203526, 34.165710>,  <28.958485, 27.116116, 33.533699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471798, 27.203526, 34.165710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163179, 27.457474, 34.149433>,  <28.978008, 27.609844, 34.139668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.163179, 27.457474, 34.149433>,  <29.471798, 27.203526, 34.165710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163179, 27.457474, 34.149433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070735, -0.022042, 0.997252,
		0.632231, 0.772302, 0.061914,
		-0.771544, 0.634873, -0.040693,
		28.931717, 27.647936, 34.137226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708872, 27.775043, 34.524769>,  <29.471798, 27.203526, 34.165710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708872, 27.775043, 34.524769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.309975, 27.754444, 34.546124>,  <29.070637, 27.742085, 34.558937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.309975, 27.754444, 34.546124>,  <29.708872, 27.775043, 34.524769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309975, 27.754444, 34.546124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051497, 0.037418, 0.997972,
		-0.053392, 0.997972, -0.034663,
		-0.997245, -0.051499, 0.053391,
		29.010801, 27.738995, 34.562141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110216, 28.469330, 34.568443>,  <29.708872, 27.775043, 34.524769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110216, 28.469330, 34.568443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491447, 28.369907, 34.637566>,  <30.720186, 28.310253, 34.679039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.491447, 28.369907, 34.637566>,  <30.110216, 28.469330, 34.568443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491447, 28.369907, 34.637566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210606, 0.134387, -0.968290,
		0.217451, 0.959250, 0.180428,
		0.953079, -0.248555, 0.172801,
		30.777370, 28.295341, 34.689407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513634, 28.930429, 34.182823>,  <30.110216, 28.469330, 34.568443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513634, 28.930429, 34.182823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771585, 28.632210, 34.250092>,  <30.926357, 28.453278, 34.290455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771585, 28.632210, 34.250092>,  <30.513634, 28.930429, 34.182823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771585, 28.632210, 34.250092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191826, -0.055106, -0.979881,
		0.739819, 0.664166, 0.107480,
		0.644881, -0.745551, 0.168173,
		30.965050, 28.408545, 34.300545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066008, 29.165337, 33.856583>,  <30.513634, 28.930429, 34.182823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066008, 29.165337, 33.856583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162365, 28.777718, 33.878189>,  <31.220179, 28.545147, 33.891151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162365, 28.777718, 33.878189>,  <31.066008, 29.165337, 33.856583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162365, 28.777718, 33.878189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368035, 0.039709, -0.928963,
		0.898065, 0.243658, 0.366210,
		0.240891, -0.969048, 0.054014,
		31.234632, 28.487003, 33.894394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689556, 29.127092, 33.587223>,  <31.066008, 29.165337, 33.856583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689556, 29.127092, 33.587223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554684, 28.752232, 33.551327>,  <31.473761, 28.527315, 33.529789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.554684, 28.752232, 33.551327>,  <31.689556, 29.127092, 33.587223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554684, 28.752232, 33.551327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454761, -0.078668, -0.887132,
		0.824319, -0.339934, 0.452706,
		-0.337179, -0.937153, -0.089742,
		31.453529, 28.471087, 33.524403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234615, 28.814840, 33.291817>,  <31.689556, 29.127092, 33.587223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234615, 28.814840, 33.291817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931540, 28.570339, 33.200367>,  <31.749693, 28.423637, 33.145496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931540, 28.570339, 33.200367>,  <32.234615, 28.814840, 33.291817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931540, 28.570339, 33.200367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300939, -0.016400, -0.953502,
		0.579083, -0.791265, 0.196376,
		-0.757693, -0.611254, -0.228626,
		31.704231, 28.386963, 33.131779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521038, 28.340147, 32.947117>,  <32.234615, 28.814840, 33.291817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521038, 28.340147, 32.947117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137859, 28.273502, 32.853668>,  <31.907953, 28.233515, 32.797600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137859, 28.273502, 32.853668>,  <32.521038, 28.340147, 32.947117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137859, 28.273502, 32.853668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248077, -0.071674, -0.966085,
		0.144218, -0.983414, 0.109993,
		-0.957945, -0.166614, -0.233626,
		31.850475, 28.223518, 32.783581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646584, 27.783199, 32.515499>,  <32.521038, 28.340147, 32.947117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646584, 27.783199, 32.515499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308201, 27.990341, 32.464600>,  <32.105171, 28.114626, 32.434059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308201, 27.990341, 32.464600>,  <32.646584, 27.783199, 32.515499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308201, 27.990341, 32.464600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128820, -0.033104, -0.991115,
		-0.517466, -0.854828, -0.038705,
		-0.845952, 0.517854, -0.127249,
		32.054417, 28.145697, 32.426426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.433805, 33.016289, 37.769070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143385, 32.949047, 37.502357>,  <28.969133, 32.908703, 37.342331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.143385, 32.949047, 37.502357>,  <29.433805, 33.016289, 37.769070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143385, 32.949047, 37.502357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441355, 0.629649, -0.639334,
		0.527310, -0.758474, -0.382963,
		-0.726051, -0.168104, -0.666776,
		28.925570, 32.898617, 37.302326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712605, 33.261608, 37.187794>,  <29.433805, 33.016289, 37.769070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712605, 33.261608, 37.187794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376202, 33.143684, 37.006336>,  <29.174360, 33.072929, 36.897461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376202, 33.143684, 37.006336>,  <29.712605, 33.261608, 37.187794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376202, 33.143684, 37.006336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257478, 0.519354, -0.814847,
		0.475825, -0.802097, -0.360875,
		-0.841009, -0.294808, -0.453644,
		29.123899, 33.055241, 36.870243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813971, 32.823936, 36.593182>,  <29.712605, 33.261608, 37.187794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813971, 32.823936, 36.593182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461971, 33.008663, 36.548779>,  <29.250771, 33.119499, 36.522137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.461971, 33.008663, 36.548779>,  <29.813971, 32.823936, 36.593182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461971, 33.008663, 36.548779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328629, 0.423248, -0.844313,
		-0.342935, -0.779476, -0.524225,
		-0.879999, 0.461820, -0.111012,
		29.197971, 33.147209, 36.515476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753414, 32.687325, 35.968941>,  <29.813971, 32.823936, 36.593182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753414, 32.687325, 35.968941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.477938, 32.971382, 36.027443>,  <29.312651, 33.141819, 36.062546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.477938, 32.971382, 36.027443>,  <29.753414, 32.687325, 35.968941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477938, 32.971382, 36.027443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188462, 0.370116, -0.909668,
		-0.700131, -0.598919, -0.388732,
		-0.688693, 0.710148, 0.146256,
		29.271330, 33.184425, 36.071320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304399, 32.689148, 35.305485>,  <29.753414, 32.687325, 35.968941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304399, 32.689148, 35.305485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283079, 33.036327, 35.502995>,  <29.270287, 33.244637, 35.621502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283079, 33.036327, 35.502995>,  <29.304399, 32.689148, 35.305485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283079, 33.036327, 35.502995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226575, 0.492096, -0.840539,
		-0.972534, 0.067074, -0.222887,
		-0.053303, 0.867953, 0.493777,
		29.267088, 33.296715, 35.651127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769562, 33.146919, 34.957455>,  <29.304399, 32.689148, 35.305485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769562, 33.146919, 34.957455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.031897, 33.382141, 35.146801>,  <29.189297, 33.523273, 35.260406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.031897, 33.382141, 35.146801>,  <28.769562, 33.146919, 34.957455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031897, 33.382141, 35.146801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283504, 0.389291, -0.876401,
		-0.699645, 0.708976, 0.088596,
		0.655837, 0.588052, 0.473363,
		29.228647, 33.558556, 35.288811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699085, 33.699993, 34.552692>,  <28.769562, 33.146919, 34.957455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699085, 33.699993, 34.552692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.985285, 33.813740, 34.807941>,  <29.157003, 33.881989, 34.961090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.985285, 33.813740, 34.807941>,  <28.699085, 33.699993, 34.552692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985285, 33.813740, 34.807941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455513, 0.502653, -0.734743,
		-0.529689, 0.816380, 0.230116,
		0.715498, 0.284364, 0.638122,
		29.199934, 33.899048, 34.999378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805981, 34.509354, 34.580044>,  <28.699085, 33.699993, 34.552692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805981, 34.509354, 34.580044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145321, 34.343369, 34.711567>,  <29.348925, 34.243778, 34.790482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145321, 34.343369, 34.711567>,  <28.805981, 34.509354, 34.580044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145321, 34.343369, 34.711567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506348, 0.454504, -0.732829,
		0.154651, 0.788184, 0.595691,
		0.848348, -0.414960, 0.328806,
		29.399826, 34.218880, 34.810207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299515, 35.078602, 34.736549>,  <28.805981, 34.509354, 34.580044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299515, 35.078602, 34.736549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.508320, 34.743256, 34.673752>,  <29.633602, 34.542049, 34.636074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.508320, 34.743256, 34.673752>,  <29.299515, 35.078602, 34.736549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508320, 34.743256, 34.673752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622613, 0.500343, -0.601672,
		0.582973, 0.216332, 0.783162,
		0.522010, -0.838366, -0.156995,
		29.664923, 34.491745, 34.626652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025993, 35.163174, 34.965027>,  <29.299515, 35.078602, 34.736549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025993, 35.163174, 34.965027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020723, 34.865776, 34.697582>,  <30.017561, 34.687336, 34.537117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020723, 34.865776, 34.697582>,  <30.025993, 35.163174, 34.965027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020723, 34.865776, 34.697582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671546, 0.488842, -0.556830,
		0.740846, -0.456339, 0.492851,
		-0.013177, -0.743497, -0.668609,
		30.016769, 34.642727, 34.496998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768812, 35.080860, 34.734295>,  <30.025993, 35.163174, 34.965027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768812, 35.080860, 34.734295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551842, 34.894108, 34.454926>,  <30.421659, 34.782059, 34.287304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551842, 34.894108, 34.454926>,  <30.768812, 35.080860, 34.734295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551842, 34.894108, 34.454926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605957, 0.358396, -0.710189,
		0.581884, -0.808442, 0.088504,
		-0.542427, -0.466878, -0.698425,
		30.389114, 34.754044, 34.245399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315271, 34.675537, 34.333607>,  <30.768812, 35.080860, 34.734295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315271, 34.675537, 34.333607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.980280, 34.705383, 34.117065>,  <30.779285, 34.723289, 33.987141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.980280, 34.705383, 34.117065>,  <31.315271, 34.675537, 34.333607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980280, 34.705383, 34.117065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540438, 0.259860, -0.800250,
		0.080967, -0.962760, -0.257951,
		-0.837479, 0.074612, -0.541352,
		30.729036, 34.727768, 33.954659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438438, 33.934917, 34.407455>,  <31.315271, 34.675537, 34.333607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438438, 33.934917, 34.407455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783720, 33.748142, 34.484241>,  <31.990889, 33.636078, 34.530315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783720, 33.748142, 34.484241>,  <31.438438, 33.934917, 34.407455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783720, 33.748142, 34.484241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288337, -0.143844, 0.946663,
		-0.414414, -0.872515, -0.258801,
		0.863205, -0.466933, 0.191967,
		32.042683, 33.608063, 34.541832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244087, 33.348755, 34.802303>,  <31.438438, 33.934917, 34.407455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244087, 33.348755, 34.802303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637657, 33.391129, 34.859814>,  <31.873798, 33.416553, 34.894318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637657, 33.391129, 34.859814>,  <31.244087, 33.348755, 34.802303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637657, 33.391129, 34.859814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066137, -0.531657, 0.844374,
		0.165889, -0.840308, -0.516104,
		0.983924, 0.105938, 0.143772,
		31.932835, 33.422909, 34.902946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462927, 32.699322, 34.957542>,  <31.244087, 33.348755, 34.802303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462927, 32.699322, 34.957542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.721769, 32.965630, 35.106140>,  <31.877075, 33.125412, 35.195297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.721769, 32.965630, 35.106140>,  <31.462927, 32.699322, 34.957542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721769, 32.965630, 35.106140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027828, -0.466318, 0.884179,
		0.761890, -0.582497, -0.283232,
		0.647108, 0.665766, 0.371493,
		31.915901, 33.165359, 35.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036568, 32.246010, 35.157246>,  <31.462927, 32.699322, 34.957542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036568, 32.246010, 35.157246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.054913, 32.600601, 35.341442>,  <32.065922, 32.813354, 35.451962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.054913, 32.600601, 35.341442>,  <32.036568, 32.246010, 35.157246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054913, 32.600601, 35.341442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092397, -0.462765, 0.881653,
		0.994665, 0.002110, -0.103133,
		0.045867, 0.886479, 0.460491,
		32.068672, 32.866547, 35.479588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583439, 32.101921, 35.626289>,  <32.036568, 32.246010, 35.157246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583439, 32.101921, 35.626289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470181, 32.451763, 35.783714>,  <32.402225, 32.661671, 35.878170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.470181, 32.451763, 35.783714>,  <32.583439, 32.101921, 35.626289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470181, 32.451763, 35.783714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083972, -0.386169, 0.918598,
		0.955394, 0.293144, 0.035899,
		-0.283145, 0.874608, 0.393560,
		32.385239, 32.714146, 35.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056538, 32.347950, 36.222164>,  <32.583439, 32.101921, 35.626289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056538, 32.347950, 36.222164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.686329, 32.483589, 36.289608>,  <32.464203, 32.564972, 36.330074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.686329, 32.483589, 36.289608>,  <33.056538, 32.347950, 36.222164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686329, 32.483589, 36.289608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024325, -0.497551, 0.867094,
		0.377920, 0.798410, 0.468742,
		-0.925519, 0.339094, 0.168613,
		32.408672, 32.585316, 36.340191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981640, 32.631382, 36.930058>,  <33.056538, 32.347950, 36.222164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981640, 32.631382, 36.930058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.592415, 32.599480, 36.843536>,  <32.358879, 32.580338, 36.791626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.592415, 32.599480, 36.843536>,  <32.981640, 32.631382, 36.930058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592415, 32.599480, 36.843536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166614, -0.405153, 0.898939,
		-0.159330, 0.910764, 0.380951,
		-0.973064, -0.079756, -0.216298,
		32.300495, 32.575554, 36.778648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562798, 32.926510, 37.524460>,  <32.981640, 32.631382, 36.930058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562798, 32.926510, 37.524460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365803, 32.644630, 37.320160>,  <32.247608, 32.475502, 37.197582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365803, 32.644630, 37.320160>,  <32.562798, 32.926510, 37.524460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365803, 32.644630, 37.320160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251987, -0.446256, 0.858695,
		-0.833043, 0.551596, 0.042200,
		-0.492485, -0.704697, -0.510746,
		32.218056, 32.433220, 37.166935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949965, 32.804882, 37.929375>,  <32.562798, 32.926510, 37.524460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949965, 32.804882, 37.929375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957651, 32.480267, 37.695782>,  <31.962263, 32.285496, 37.555626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957651, 32.480267, 37.695782>,  <31.949965, 32.804882, 37.929375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957651, 32.480267, 37.695782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438826, -0.531671, 0.724402,
		-0.898367, 0.242348, -0.366339,
		0.019214, -0.811538, -0.583984,
		31.963415, 32.236805, 37.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319836, 32.492596, 37.996548>,  <31.949965, 32.804882, 37.929375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319836, 32.492596, 37.996548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533836, 32.193787, 37.838699>,  <31.662237, 32.014500, 37.743992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.533836, 32.193787, 37.838699>,  <31.319836, 32.492596, 37.996548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533836, 32.193787, 37.838699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363364, -0.625140, 0.690773,
		-0.762719, -0.226173, -0.605893,
		0.535002, -0.747025, -0.394623,
		31.694338, 31.969679, 37.720314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857441, 31.857950, 38.248123>,  <31.319836, 32.492596, 37.996548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857441, 31.857950, 38.248123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216806, 31.730301, 38.127453>,  <31.432426, 31.653711, 38.055050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.216806, 31.730301, 38.127453>,  <30.857441, 31.857950, 38.248123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216806, 31.730301, 38.127453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027517, -0.726524, 0.686590,
		-0.438285, -0.608541, -0.661501,
		0.898415, -0.319124, -0.301679,
		31.486330, 31.634563, 38.036949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764574, 31.244099, 38.102673>,  <30.857441, 31.857950, 38.248123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764574, 31.244099, 38.102673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159714, 31.253929, 38.164055>,  <31.396797, 31.259827, 38.200886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159714, 31.253929, 38.164055>,  <30.764574, 31.244099, 38.102673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159714, 31.253929, 38.164055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060949, -0.847058, 0.527995,
		0.142963, -0.530932, -0.835268,
		0.987849, 0.024576, 0.153458,
		31.456068, 31.261301, 38.210091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902042, 30.568249, 37.999725>,  <30.764574, 31.244099, 38.102673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902042, 30.568249, 37.999725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200365, 30.743229, 38.200687>,  <31.379358, 30.848217, 38.321266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.200365, 30.743229, 38.200687>,  <30.902042, 30.568249, 37.999725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200365, 30.743229, 38.200687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056814, -0.793198, 0.606308,
		0.663737, -0.423645, -0.616424,
		0.745805, 0.437450, 0.502406,
		31.424107, 30.874464, 38.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421257, 30.118549, 37.999977>,  <30.902042, 30.568249, 37.999725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421257, 30.118549, 37.999977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.498228, 30.349873, 38.317097>,  <31.544411, 30.488667, 38.507370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.498228, 30.349873, 38.317097>,  <31.421257, 30.118549, 37.999977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498228, 30.349873, 38.317097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069648, -0.797814, 0.598867,
		0.978837, -0.170455, -0.113243,
		0.192426, 0.578306, 0.792802,
		31.555956, 30.523365, 38.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308256, 29.621956, 37.517826>,  <31.421257, 30.118549, 37.999977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308256, 29.621956, 37.517826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035633, 29.330261, 37.493519>,  <30.872059, 29.155245, 37.478935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035633, 29.330261, 37.493519>,  <31.308256, 29.621956, 37.517826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035633, 29.330261, 37.493519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308596, -0.211133, -0.927465,
		0.663511, -0.650874, 0.368940,
		-0.681559, -0.729236, -0.060768,
		30.831165, 29.111490, 37.475288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742235, 29.112480, 37.077915>,  <31.308256, 29.621956, 37.517826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742235, 29.112480, 37.077915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.358980, 29.000034, 37.056202>,  <31.129026, 28.932566, 37.043175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.358980, 29.000034, 37.056202>,  <31.742235, 29.112480, 37.077915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358980, 29.000034, 37.056202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111235, -0.190787, -0.975309,
		0.263819, -0.940518, 0.214070,
		-0.958137, -0.281117, -0.054285,
		31.071539, 28.915699, 37.039917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790497, 28.508430, 36.769863>,  <31.742235, 29.112480, 37.077915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790497, 28.508430, 36.769863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418337, 28.638794, 36.702766>,  <31.195040, 28.717012, 36.662506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418337, 28.638794, 36.702766>,  <31.790497, 28.508430, 36.769863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418337, 28.638794, 36.702766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017937, -0.416606, -0.908910,
		-0.366102, -0.848661, 0.381765,
		-0.930402, 0.325906, -0.167743,
		31.139217, 28.736567, 36.652443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403362, 27.946537, 36.562641>,  <31.790497, 28.508430, 36.769863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403362, 27.946537, 36.562641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.183002, 28.254036, 36.432693>,  <31.050787, 28.438536, 36.354725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.183002, 28.254036, 36.432693>,  <31.403362, 27.946537, 36.562641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183002, 28.254036, 36.432693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010870, -0.382626, -0.923839,
		-0.834502, -0.512472, 0.202431,
		-0.550897, 0.768746, -0.324873,
		31.017733, 28.484659, 36.335232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042845, 27.614799, 36.163509>,  <31.403362, 27.946537, 36.562641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042845, 27.614799, 36.163509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963322, 27.987366, 36.041565>,  <30.915607, 28.210905, 35.968399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963322, 27.987366, 36.041565>,  <31.042845, 27.614799, 36.163509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963322, 27.987366, 36.041565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178357, -0.340262, -0.923261,
		-0.963672, -0.129177, 0.233771,
		-0.198807, 0.931415, -0.304862,
		30.903679, 28.266790, 35.950108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564022, 27.464920, 35.686890>,  <31.042845, 27.614799, 36.163509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564022, 27.464920, 35.686890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.693840, 27.834686, 35.606766>,  <30.771730, 28.056547, 35.558693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.693840, 27.834686, 35.606766>,  <30.564022, 27.464920, 35.686890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693840, 27.834686, 35.606766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104223, -0.175534, -0.978941,
		-0.940111, 0.338586, 0.039377,
		0.324543, 0.924417, -0.200310,
		30.791203, 28.112011, 35.546673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138865, 27.714840, 35.151394>,  <30.564022, 27.464920, 35.686890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138865, 27.714840, 35.151394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469404, 27.939457, 35.134357>,  <30.667728, 28.074228, 35.124134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469404, 27.939457, 35.134357>,  <30.138865, 27.714840, 35.151394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469404, 27.939457, 35.134357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016174, -0.099265, -0.994930,
		-0.562925, 0.821471, -0.091110,
		0.826350, 0.561544, -0.042593,
		30.717310, 28.107920, 35.121578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497055, 28.064962, 35.242210>,  <30.138865, 27.714840, 35.151394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497055, 28.064962, 35.242210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.155209, 27.894077, 35.124142>,  <28.950102, 27.791546, 35.053299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.155209, 27.894077, 35.124142>,  <29.497055, 28.064962, 35.242210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155209, 27.894077, 35.124142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235566, -0.187613, 0.953578,
		-0.462757, 0.884472, 0.059700,
		-0.854614, -0.427211, -0.295170,
		28.898825, 27.765913, 35.035591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948410, 28.434227, 35.612862>,  <29.497055, 28.064962, 35.242210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948410, 28.434227, 35.612862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.798140, 28.079792, 35.504261>,  <28.707977, 27.867130, 35.439098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.798140, 28.079792, 35.504261>,  <28.948410, 28.434227, 35.612862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798140, 28.079792, 35.504261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316580, -0.152639, 0.936204,
		-0.871003, 0.437660, -0.223175,
		-0.375674, -0.886090, -0.271504,
		28.685438, 27.813965, 35.422810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249365, 28.372721, 36.052437>,  <28.948410, 28.434227, 35.612862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249365, 28.372721, 36.052437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.382902, 28.017288, 35.926598>,  <28.463024, 27.804029, 35.851093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.382902, 28.017288, 35.926598>,  <28.249365, 28.372721, 36.052437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382902, 28.017288, 35.926598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087663, -0.361565, 0.928216,
		-0.938543, -0.282301, -0.198602,
		0.333844, -0.888581, -0.314597,
		28.483055, 27.750713, 35.832218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754427, 27.913359, 36.327099>,  <28.249365, 28.372721, 36.052437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754427, 27.913359, 36.327099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.063896, 27.678307, 36.232342>,  <28.249578, 27.537275, 36.175488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.063896, 27.678307, 36.232342>,  <27.754427, 27.913359, 36.327099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063896, 27.678307, 36.232342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148183, -0.531350, 0.834092,
		-0.616011, -0.610211, -0.498169,
		0.773674, -0.587630, -0.236894,
		28.296000, 27.502018, 36.161274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502451, 27.258944, 36.389412>,  <27.754427, 27.913359, 36.327099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502451, 27.258944, 36.389412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.897032, 27.226238, 36.446301>,  <28.133780, 27.206615, 36.480434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.897032, 27.226238, 36.446301>,  <27.502451, 27.258944, 36.389412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897032, 27.226238, 36.446301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163754, -0.438561, 0.883657,
		-0.009875, -0.894975, -0.446008,
		0.986452, -0.081761, 0.142225,
		28.192966, 27.201710, 36.488968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539667, 26.730152, 36.754047>,  <27.502451, 27.258944, 36.389412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539667, 26.730152, 36.754047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.900349, 26.891850, 36.815392>,  <28.116756, 26.988869, 36.852200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.900349, 26.891850, 36.815392>,  <27.539667, 26.730152, 36.754047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900349, 26.891850, 36.815392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068020, -0.217653, 0.973653,
		0.426973, -0.888377, -0.168762,
		0.901703, 0.404244, 0.153359,
		28.170860, 27.013123, 36.861401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891722, 26.307474, 37.364376>,  <27.539667, 26.730152, 36.754047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891722, 26.307474, 37.364376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.110498, 26.642220, 37.355320>,  <28.241764, 26.843067, 37.349888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.110498, 26.642220, 37.355320>,  <27.891722, 26.307474, 37.364376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110498, 26.642220, 37.355320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041954, -0.000391, 0.999120,
		0.836119, -0.547410, -0.035324,
		0.546942, 0.836865, -0.022639,
		28.274582, 26.893278, 37.348530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616835, 26.243959, 37.781921>,  <27.891722, 26.307474, 37.364376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616835, 26.243959, 37.781921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504341, 26.626297, 37.747826>,  <28.436844, 26.855700, 37.727367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504341, 26.626297, 37.747826>,  <28.616835, 26.243959, 37.781921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504341, 26.626297, 37.747826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057108, 0.105341, 0.992795,
		0.957938, 0.274340, -0.084212,
		-0.281235, 0.955846, -0.085243,
		28.419971, 26.913052, 37.722252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163073, 26.664234, 38.075867>,  <28.616835, 26.243959, 37.781921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163073, 26.664234, 38.075867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.834148, 26.891499, 38.088516>,  <28.636793, 27.027857, 38.096107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.834148, 26.891499, 38.088516>,  <29.163073, 26.664234, 38.075867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834148, 26.891499, 38.088516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241294, 0.297821, 0.923623,
		0.515347, 0.767136, -0.381994,
		-0.822311, 0.568159, 0.031624,
		28.587456, 27.061947, 38.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.161840, 33.176533, 23.566553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808184, 33.360176, 23.531879>,  <30.595989, 33.470364, 23.511076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808184, 33.360176, 23.531879>,  <31.161840, 33.176533, 23.566553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808184, 33.360176, 23.531879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264844, -0.339627, 0.902503,
		0.384907, 0.820897, 0.421871,
		-0.884140, 0.459110, -0.086684,
		30.542942, 33.497910, 23.505875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128922, 33.459644, 24.151291>,  <31.161840, 33.176533, 23.566553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128922, 33.459644, 24.151291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747469, 33.473351, 24.031681>,  <30.518599, 33.481575, 23.959915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747469, 33.473351, 24.031681>,  <31.128922, 33.459644, 24.151291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747469, 33.473351, 24.031681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300920, -0.128657, 0.944931,
		-0.006096, 0.991097, 0.133001,
		-0.953630, 0.034262, -0.299025,
		30.461380, 33.483627, 23.941973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740135, 33.939526, 24.641811>,  <31.128922, 33.459644, 24.151291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740135, 33.939526, 24.641811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502155, 33.676800, 24.456501>,  <30.359367, 33.519165, 24.345314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502155, 33.676800, 24.456501>,  <30.740135, 33.939526, 24.641811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502155, 33.676800, 24.456501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316898, -0.338011, 0.886185,
		-0.738654, 0.674048, -0.007044,
		-0.594950, -0.656817, -0.463278,
		30.323669, 33.479755, 24.317518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210337, 33.937096, 25.021986>,  <30.740135, 33.939526, 24.641811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210337, 33.937096, 25.021986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174627, 33.586929, 24.831963>,  <30.153202, 33.376831, 24.717949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174627, 33.586929, 24.831963>,  <30.210337, 33.937096, 25.021986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174627, 33.586929, 24.831963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248191, -0.442366, 0.861808,
		-0.964589, 0.194841, -0.177779,
		-0.089272, -0.875414, -0.475059,
		30.147846, 33.324306, 24.689445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722822, 33.547691, 25.451336>,  <30.210337, 33.937096, 25.021986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722822, 33.547691, 25.451336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874010, 33.262249, 25.215401>,  <29.964724, 33.090984, 25.073839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874010, 33.262249, 25.215401>,  <29.722822, 33.547691, 25.451336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874010, 33.262249, 25.215401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167213, -0.679242, 0.714612,
		-0.910592, -0.171473, -0.376057,
		0.377970, -0.713602, -0.589840,
		29.987402, 33.048168, 25.038448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211712, 33.021614, 25.402691>,  <29.722822, 33.547691, 25.451336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211712, 33.021614, 25.402691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550982, 32.831482, 25.309174>,  <29.754543, 32.717403, 25.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550982, 32.831482, 25.309174>,  <29.211712, 33.021614, 25.402691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550982, 32.831482, 25.309174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231760, -0.729863, 0.643107,
		-0.476327, -0.491283, -0.729214,
		0.848174, -0.475333, -0.233794,
		29.805433, 32.688881, 25.239035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983047, 32.276722, 25.558258>,  <29.211712, 33.021614, 25.402691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983047, 32.276722, 25.558258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381020, 32.267258, 25.519150>,  <29.619802, 32.261581, 25.495686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381020, 32.267258, 25.519150>,  <28.983047, 32.276722, 25.558258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381020, 32.267258, 25.519150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042825, -0.779847, 0.624504,
		-0.091019, -0.625523, -0.774878,
		0.994928, -0.023657, -0.097769,
		29.679499, 32.260159, 25.489819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156399, 31.585350, 25.432211>,  <28.983047, 32.276722, 25.558258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156399, 31.585350, 25.432211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507917, 31.726063, 25.561184>,  <29.718828, 31.810492, 25.638567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507917, 31.726063, 25.561184>,  <29.156399, 31.585350, 25.432211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507917, 31.726063, 25.561184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122389, -0.819237, 0.560243,
		0.461231, -0.452879, -0.762999,
		0.878798, 0.351784, 0.322430,
		29.771557, 31.831598, 25.657913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799833, 31.095964, 25.254198>,  <29.156399, 31.585350, 25.432211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799833, 31.095964, 25.254198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894983, 31.331764, 25.562977>,  <29.952072, 31.473244, 25.748245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894983, 31.331764, 25.562977>,  <29.799833, 31.095964, 25.254198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894983, 31.331764, 25.562977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163752, -0.807725, 0.566362,
		0.957393, -0.008314, -0.288668,
		0.237873, 0.589501, 0.771949,
		29.966345, 31.508614, 25.794561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255722, 30.777531, 25.632015>,  <29.799833, 31.095964, 25.254198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255722, 30.777531, 25.632015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170559, 31.048229, 25.913918>,  <30.119461, 31.210648, 26.083059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170559, 31.048229, 25.913918>,  <30.255722, 30.777531, 25.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170559, 31.048229, 25.913918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069572, -0.708964, 0.701804,
		0.974592, 0.198451, 0.103862,
		-0.212909, 0.676747, 0.704758,
		30.106686, 31.251253, 26.125345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795567, 30.624729, 26.094540>,  <30.255722, 30.777531, 25.632015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795567, 30.624729, 26.094540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518393, 30.830418, 26.296696>,  <30.352089, 30.953831, 26.417990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518393, 30.830418, 26.296696>,  <30.795567, 30.624729, 26.094540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518393, 30.830418, 26.296696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076222, -0.644782, 0.760556,
		0.716960, 0.565538, 0.407597,
		-0.692935, 0.514221, 0.505389,
		30.310513, 30.984684, 26.448313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061209, 30.799618, 26.698648>,  <30.795567, 30.624729, 26.094540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061209, 30.799618, 26.698648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665871, 30.802036, 26.759491>,  <30.428667, 30.803488, 26.795996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665871, 30.802036, 26.759491>,  <31.061209, 30.799618, 26.698648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665871, 30.802036, 26.759491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107314, -0.681011, 0.724367,
		0.107964, 0.732249, 0.672425,
		-0.988346, 0.006045, 0.152105,
		30.369368, 30.803850, 26.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724838, 31.091345, 26.663870>,  <31.061209, 30.799618, 26.698648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724838, 31.091345, 26.663870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075264, 31.092785, 26.856743>,  <32.285519, 31.093649, 26.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075264, 31.092785, 26.856743>,  <31.724838, 31.091345, 26.663870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075264, 31.092785, 26.856743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397376, 0.561038, -0.726174,
		-0.273138, 0.827782, 0.490073,
		0.876064, 0.003602, 0.482181,
		32.338081, 31.093866, 27.001398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977209, 31.817394, 26.753580>,  <31.724838, 31.091345, 26.663870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977209, 31.817394, 26.753580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298855, 31.579605, 26.752693>,  <32.491840, 31.436932, 26.752161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298855, 31.579605, 26.752693>,  <31.977209, 31.817394, 26.753580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298855, 31.579605, 26.752693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503466, 0.682988, -0.529197,
		0.316109, 0.424417, 0.848496,
		0.804112, -0.594473, -0.002220,
		32.540089, 31.401262, 26.752028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631760, 32.222115, 27.029020>,  <31.977209, 31.817394, 26.753580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631760, 32.222115, 27.029020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767635, 31.911812, 26.816299>,  <32.849159, 31.725630, 26.688667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767635, 31.911812, 26.816299>,  <32.631760, 32.222115, 27.029020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767635, 31.911812, 26.816299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596711, 0.614811, -0.515697,
		0.727014, -0.142159, 0.671745,
		0.339685, -0.775757, -0.531804,
		32.869541, 31.679085, 26.656757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290817, 32.305527, 27.024246>,  <32.631760, 32.222115, 27.029020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290817, 32.305527, 27.024246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252522, 32.050667, 26.718338>,  <33.229546, 31.897751, 26.534792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252522, 32.050667, 26.718338>,  <33.290817, 32.305527, 27.024246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252522, 32.050667, 26.718338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660948, 0.533795, -0.527458,
		0.744300, -0.555973, 0.370016,
		-0.095740, -0.637148, -0.764772,
		33.223801, 31.859522, 26.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928951, 32.094921, 26.806005>,  <33.290817, 32.305527, 27.024246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928951, 32.094921, 26.806005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695675, 32.053402, 26.483734>,  <33.555710, 32.028492, 26.290371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695675, 32.053402, 26.483734>,  <33.928951, 32.094921, 26.806005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695675, 32.053402, 26.483734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647368, 0.539749, -0.538132,
		0.490719, -0.835403, -0.247581,
		-0.583189, -0.103795, -0.805678,
		33.520718, 32.022263, 26.242031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374386, 31.908588, 26.216646>,  <33.928951, 32.094921, 26.806005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374386, 31.908588, 26.216646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064716, 32.009861, 25.984592>,  <33.878914, 32.070625, 25.845360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064716, 32.009861, 25.984592>,  <34.374386, 31.908588, 26.216646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064716, 32.009861, 25.984592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632890, 0.294645, -0.715985,
		-0.010340, -0.921457, -0.388342,
		-0.774173, 0.253181, -0.580134,
		33.832466, 32.085815, 25.810553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545231, 31.636822, 25.487545>,  <34.374386, 31.908588, 26.216646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545231, 31.636822, 25.487545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257969, 31.913532, 25.457325>,  <34.085613, 32.079559, 25.439194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257969, 31.913532, 25.457325>,  <34.545231, 31.636822, 25.487545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257969, 31.913532, 25.457325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474369, 0.407217, -0.780480,
		-0.509150, -0.596341, -0.620599,
		-0.718151, 0.691774, -0.075550,
		34.042522, 32.121063, 25.434660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333679, 31.562428, 24.866566>,  <34.545231, 31.636822, 25.487545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333679, 31.562428, 24.866566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235153, 31.934967, 24.973831>,  <34.176037, 32.158493, 25.038191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235153, 31.934967, 24.973831>,  <34.333679, 31.562428, 24.866566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235153, 31.934967, 24.973831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334990, 0.341450, -0.878176,
		-0.909455, -0.126479, -0.396099,
		-0.246319, 0.931351, 0.268165,
		34.161259, 32.214371, 25.054281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063267, 31.930662, 24.253014>,  <34.333679, 31.562428, 24.866566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063267, 31.930662, 24.253014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190163, 32.202240, 24.517860>,  <34.266300, 32.365185, 24.676767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190163, 32.202240, 24.517860>,  <34.063267, 31.930662, 24.253014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190163, 32.202240, 24.517860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548912, 0.437880, -0.712009,
		-0.773340, 0.589320, -0.233767,
		0.317240, 0.678942, 0.662115,
		34.285336, 32.405922, 24.716496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877884, 32.477161, 23.881306>,  <34.063267, 31.930662, 24.253014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877884, 32.477161, 23.881306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154930, 32.581955, 24.150124>,  <34.321159, 32.644829, 24.311415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154930, 32.581955, 24.150124>,  <33.877884, 32.477161, 23.881306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154930, 32.581955, 24.150124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424574, 0.605127, -0.673467,
		-0.583108, 0.751789, 0.307893,
		0.692619, 0.261981, 0.672045,
		34.362717, 32.660549, 24.351738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986961, 33.204842, 23.684811>,  <33.877884, 32.477161, 23.881306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986961, 33.204842, 23.684811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286613, 33.111897, 23.932945>,  <34.466404, 33.056129, 24.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286613, 33.111897, 23.932945>,  <33.986961, 33.204842, 23.684811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286613, 33.111897, 23.932945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630479, 0.537413, -0.560075,
		-0.203238, 0.810676, 0.549089,
		0.749127, -0.232361, 0.620337,
		34.511353, 33.042187, 24.119047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262417, 33.919334, 23.926832>,  <33.986961, 33.204842, 23.684811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262417, 33.919334, 23.926832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532753, 33.633453, 23.998878>,  <34.694954, 33.461926, 24.042107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532753, 33.633453, 23.998878>,  <34.262417, 33.919334, 23.926832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532753, 33.633453, 23.998878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696006, 0.538444, -0.475030,
		0.242521, 0.446407, 0.861338,
		0.675840, -0.714701, 0.180118,
		34.735504, 33.419044, 24.052914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791290, 34.189808, 24.282398>,  <34.262417, 33.919334, 23.926832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791290, 34.189808, 24.282398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944950, 33.879089, 24.082790>,  <35.037144, 33.692657, 23.963026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944950, 33.879089, 24.082790>,  <34.791290, 34.189808, 24.282398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944950, 33.879089, 24.082790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723187, 0.589161, -0.360403,
		0.573962, -0.222438, 0.788092,
		0.384145, -0.776795, -0.499020,
		35.060192, 33.646049, 23.933084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547535, 34.271996, 24.382898>,  <34.791290, 34.189808, 24.282398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547535, 34.271996, 24.382898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472351, 34.057674, 24.053635>,  <35.427242, 33.929081, 23.856077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472351, 34.057674, 24.053635>,  <35.547535, 34.271996, 24.382898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472351, 34.057674, 24.053635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696332, 0.518366, -0.496406,
		0.692671, -0.666496, 0.275663,
		-0.187959, -0.535799, -0.823159,
		35.415962, 33.896935, 23.806686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154152, 34.610031, 24.030834>,  <35.547535, 34.271996, 24.382898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154152, 34.610031, 24.030834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416084, 34.838978, 24.228256>,  <36.573242, 34.976345, 24.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416084, 34.838978, 24.228256>,  <36.154152, 34.610031, 24.030834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416084, 34.838978, 24.228256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492891, -0.171641, 0.852993,
		0.572937, -0.801835, 0.169717,
		0.654830, 0.572363, 0.493557,
		36.612534, 35.010685, 24.376324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559223, 34.288811, 24.655209>,  <36.154152, 34.610031, 24.030834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559223, 34.288811, 24.655209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459694, 34.675690, 24.675686>,  <36.399975, 34.907818, 24.687971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459694, 34.675690, 24.675686>,  <36.559223, 34.288811, 24.655209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459694, 34.675690, 24.675686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458785, -0.164248, 0.873235,
		0.852996, 0.193797, 0.484603,
		-0.248825, 0.967194, 0.051192,
		36.385048, 34.965847, 24.691044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914684, 34.669971, 25.234528>,  <36.559223, 34.288811, 24.655209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914684, 34.669971, 25.234528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581303, 34.878407, 25.160969>,  <36.381275, 35.003468, 25.116835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581303, 34.878407, 25.160969>,  <36.914684, 34.669971, 25.234528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581303, 34.878407, 25.160969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276995, -0.106012, 0.955005,
		0.478149, 0.846892, 0.232696,
		-0.833455, 0.521091, -0.183895,
		36.331264, 35.034733, 25.105801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031525, 35.328358, 25.560101>,  <36.914684, 34.669971, 25.234528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031525, 35.328358, 25.560101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641346, 35.249756, 25.520336>,  <36.407238, 35.202595, 25.496477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641346, 35.249756, 25.520336>,  <37.031525, 35.328358, 25.560101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641346, 35.249756, 25.520336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101489, 0.000512, 0.994837,
		-0.195441, 0.980503, -0.020443,
		-0.975450, -0.196506, -0.099411,
		36.348709, 35.190804, 25.490513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771511, 35.566929, 26.250713>,  <37.031525, 35.328358, 25.560101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771511, 35.566929, 26.250713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446362, 35.367931, 26.129562>,  <36.251270, 35.248535, 26.056871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446362, 35.367931, 26.129562>,  <36.771511, 35.566929, 26.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446362, 35.367931, 26.129562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288544, -0.107742, 0.951385,
		-0.505937, 0.860753, -0.055966,
		-0.812878, -0.497490, -0.302876,
		36.202499, 35.218685, 26.038700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221092, 35.818680, 26.678093>,  <36.771511, 35.566929, 26.250713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221092, 35.818680, 26.678093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088730, 35.468582, 26.536980>,  <36.009312, 35.258526, 26.452312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088730, 35.468582, 26.536980>,  <36.221092, 35.818680, 26.678093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088730, 35.468582, 26.536980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289429, -0.261692, 0.920732,
		-0.898183, 0.406781, -0.166725,
		-0.330906, -0.875241, -0.352781,
		35.989460, 35.206009, 26.431145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498291, 35.633659, 27.077299>,  <36.221092, 35.818680, 26.678093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498291, 35.633659, 27.077299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635208, 35.292683, 26.919224>,  <35.717358, 35.088097, 26.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635208, 35.292683, 26.919224>,  <35.498291, 35.633659, 27.077299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635208, 35.292683, 26.919224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297729, -0.497324, 0.814878,
		-0.891175, -0.161268, -0.424028,
		0.342294, -0.852444, -0.395188,
		35.737896, 35.036949, 26.800667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972858, 35.201839, 27.148067>,  <35.498291, 35.633659, 27.077299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972858, 35.201839, 27.148067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288956, 34.957790, 27.125179>,  <35.478615, 34.811359, 27.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288956, 34.957790, 27.125179>,  <34.972858, 35.201839, 27.148067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288956, 34.957790, 27.125179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297499, -0.463600, 0.834608,
		-0.535742, -0.642514, -0.547865,
		0.790237, -0.610124, -0.057223,
		35.526028, 34.774754, 27.108013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690796, 34.492886, 27.305445>,  <34.972858, 35.201839, 27.148067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690796, 34.492886, 27.305445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084126, 34.474548, 27.375847>,  <35.320122, 34.463547, 27.418089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084126, 34.474548, 27.375847>,  <34.690796, 34.492886, 27.305445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084126, 34.474548, 27.375847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171618, -0.554317, 0.814420,
		0.060229, -0.831042, -0.552939,
		0.983321, -0.045843, 0.176008,
		35.379120, 34.460796, 27.428650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795002, 33.740002, 27.440990>,  <34.690796, 34.492886, 27.305445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795002, 33.740002, 27.440990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067966, 33.984837, 27.600822>,  <35.231743, 34.131737, 27.696722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067966, 33.984837, 27.600822>,  <34.795002, 33.740002, 27.440990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067966, 33.984837, 27.600822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206398, -0.363053, 0.908621,
		0.701228, -0.702522, -0.121415,
		0.682407, 0.612091, 0.399582,
		35.272690, 34.168465, 27.720697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215126, 33.246937, 27.821987>,  <34.795002, 33.740002, 27.440990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215126, 33.246937, 27.821987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309719, 33.600170, 27.984093>,  <35.366474, 33.812111, 28.081356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309719, 33.600170, 27.984093>,  <35.215126, 33.246937, 27.821987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309719, 33.600170, 27.984093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157929, -0.376616, 0.912808,
		0.958715, -0.279866, 0.050402,
		0.236482, 0.883083, 0.405266,
		35.380665, 33.865093, 28.105673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611565, 33.131851, 28.423517>,  <35.215126, 33.246937, 27.821987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611565, 33.131851, 28.423517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491562, 33.506535, 28.495716>,  <35.419559, 33.731342, 28.539036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491562, 33.506535, 28.495716>,  <35.611565, 33.131851, 28.423517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491562, 33.506535, 28.495716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071090, -0.210642, 0.974975,
		0.951284, 0.279669, 0.129785,
		-0.300008, 0.936704, 0.180499,
		35.401558, 33.787544, 28.549866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961349, 33.258015, 29.058073>,  <35.611565, 33.131851, 28.423517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961349, 33.258015, 29.058073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 33.522720, 29.042721>,  <35.482162, 33.681545, 29.033508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 33.522720, 29.042721>,  <35.961349, 33.258015, 29.058073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661858, 33.522720, 29.042721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346553, -0.341421, 0.873689,
		0.565071, 0.667458, 0.484968,
		-0.748729, 0.661764, -0.038383,
		35.437241, 33.721249, 29.031206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989571, 33.711479, 29.588507>,  <35.961349, 33.258015, 29.058073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989571, 33.711479, 29.588507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601849, 33.713692, 29.490185>,  <35.369217, 33.715019, 29.431190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601849, 33.713692, 29.490185>,  <35.989571, 33.711479, 29.588507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601849, 33.713692, 29.490185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245645, -0.064417, 0.967217,
		-0.010481, 0.997908, 0.063799,
		-0.969303, 0.005534, -0.245807,
		35.311058, 33.715351, 29.416443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740753, 34.149551, 30.024437>,  <35.989571, 33.711479, 29.588507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740753, 34.149551, 30.024437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418392, 33.958477, 29.884529>,  <35.224976, 33.843834, 29.800585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418392, 33.958477, 29.884529>,  <35.740753, 34.149551, 30.024437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418392, 33.958477, 29.884529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411198, 0.026561, 0.911159,
		-0.425954, 0.878131, -0.217827,
		-0.805903, -0.477682, -0.349772,
		35.176620, 33.815174, 29.779598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127045, 34.564781, 30.256348>,  <35.740753, 34.149551, 30.024437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127045, 34.564781, 30.256348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968975, 34.207993, 30.168507>,  <34.874134, 33.993919, 30.115803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968975, 34.207993, 30.168507>,  <35.127045, 34.564781, 30.256348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968975, 34.207993, 30.168507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415183, -0.039822, 0.908866,
		-0.819428, 0.450332, -0.354596,
		-0.395171, -0.891973, -0.219602,
		34.850426, 33.940399, 30.102627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369503, 34.598850, 30.483070>,  <35.127045, 34.564781, 30.256348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369503, 34.598850, 30.483070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435448, 34.204620, 30.467728>,  <34.475014, 33.968082, 30.458521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435448, 34.204620, 30.467728>,  <34.369503, 34.598850, 30.483070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435448, 34.204620, 30.467728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502262, -0.117359, 0.856715,
		-0.848855, -0.121972, -0.514363,
		0.164860, -0.985571, -0.038359,
		34.484905, 33.908951, 30.456221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808453, 34.305801, 30.740305>,  <34.369503, 34.598850, 30.483070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808453, 34.305801, 30.740305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064529, 33.998543, 30.744381>,  <34.218174, 33.814186, 30.746826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064529, 33.998543, 30.744381>,  <33.808453, 34.305801, 30.740305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064529, 33.998543, 30.744381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307456, -0.244040, 0.919737,
		-0.704006, -0.591941, -0.392404,
		0.640192, -0.768147, 0.010190,
		34.256588, 33.768097, 30.747438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403271, 33.711540, 30.689951>,  <33.808453, 34.305801, 30.740305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403271, 33.711540, 30.689951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741264, 33.597340, 30.870834>,  <33.944061, 33.528820, 30.979364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741264, 33.597340, 30.870834>,  <33.403271, 33.711540, 30.689951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741264, 33.597340, 30.870834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526992, -0.300607, 0.794931,
		-0.091016, -0.910014, -0.404464,
		0.844983, -0.285501, 0.452210,
		33.994759, 33.511688, 31.006496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341782, 32.928928, 30.810696>,  <33.403271, 33.711540, 30.689951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341782, 32.928928, 30.810696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595947, 33.099739, 31.068035>,  <33.748447, 33.202225, 31.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595947, 33.099739, 31.068035>,  <33.341782, 32.928928, 30.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595947, 33.099739, 31.068035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585236, -0.277202, 0.762009,
		0.503734, -0.860703, 0.073772,
		0.635413, 0.427024, 0.643351,
		33.786572, 33.227844, 31.261040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363773, 32.519482, 31.350447>,  <33.341782, 32.928928, 30.810696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363773, 32.519482, 31.350447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502277, 32.851616, 31.525101>,  <33.585381, 33.050896, 31.629892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502277, 32.851616, 31.525101>,  <33.363773, 32.519482, 31.350447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502277, 32.851616, 31.525101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435867, -0.269755, 0.858634,
		0.830737, -0.487625, 0.268510,
		0.346259, 0.830334, 0.436635,
		33.606155, 33.100716, 31.656092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471294, 32.346447, 32.050713>,  <33.363773, 32.519482, 31.350447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471294, 32.346447, 32.050713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434856, 32.744587, 32.063274>,  <33.412994, 32.983471, 32.070812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434856, 32.744587, 32.063274>,  <33.471294, 32.346447, 32.050713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434856, 32.744587, 32.063274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386087, -0.064367, 0.920214,
		0.917953, 0.071702, 0.390154,
		-0.091094, 0.995347, 0.031403,
		33.407528, 33.043190, 32.072697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694290, 32.498219, 32.701801>,  <33.471294, 32.346447, 32.050713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694290, 32.498219, 32.701801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480129, 32.821804, 32.604702>,  <33.351635, 33.015953, 32.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480129, 32.821804, 32.604702>,  <33.694290, 32.498219, 32.701801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480129, 32.821804, 32.604702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527373, -0.095699, 0.844227,
		0.659716, 0.580020, 0.477862,
		-0.535399, 0.808962, -0.242753,
		33.319508, 33.064491, 32.531876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711178, 32.938839, 33.238503>,  <33.694290, 32.498219, 32.701801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711178, 32.938839, 33.238503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402725, 33.089848, 33.033432>,  <33.217655, 33.180450, 32.910389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402725, 33.089848, 33.033432>,  <33.711178, 32.938839, 33.238503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402725, 33.089848, 33.033432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517651, 0.097048, 0.850070,
		0.370671, 0.920903, 0.120586,
		-0.771129, 0.377518, -0.512679,
		33.171387, 33.203102, 32.879627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622276, 33.551941, 33.647102>,  <33.711178, 32.938839, 33.238503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622276, 33.551941, 33.647102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296997, 33.464321, 33.431427>,  <33.101830, 33.411751, 33.302021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296997, 33.464321, 33.431427>,  <33.622276, 33.551941, 33.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296997, 33.464321, 33.431427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579721, 0.223218, 0.783644,
		-0.051297, 0.949838, -0.308506,
		-0.813199, -0.219047, -0.539191,
		33.053036, 33.398605, 33.269669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191177, 34.081089, 33.671043>,  <33.622276, 33.551941, 33.647102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191177, 34.081089, 33.671043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930618, 33.799000, 33.559093>,  <32.774281, 33.629745, 33.491924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930618, 33.799000, 33.559093>,  <33.191177, 34.081089, 33.671043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930618, 33.799000, 33.559093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657825, 0.341133, 0.671487,
		-0.378076, 0.621517, -0.686131,
		-0.651402, -0.705227, -0.279875,
		32.735199, 33.587433, 33.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510563, 34.415211, 33.619457>,  <33.191177, 34.081089, 33.671043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510563, 34.415211, 33.619457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472828, 34.021763, 33.680904>,  <32.450188, 33.785694, 33.717773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472828, 34.021763, 33.680904>,  <32.510563, 34.415211, 33.619457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472828, 34.021763, 33.680904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545651, 0.180153, 0.818419,
		-0.832685, -0.006611, -0.553707,
		-0.094341, -0.983616, 0.153618,
		32.444527, 33.726677, 33.726990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951181, 34.451908, 34.016842>,  <32.510563, 34.415211, 33.619457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951181, 34.451908, 34.016842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112682, 34.090042, 34.071342>,  <32.209583, 33.872921, 34.104042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112682, 34.090042, 34.071342>,  <31.951181, 34.451908, 34.016842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112682, 34.090042, 34.071342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277669, 0.020725, 0.960453,
		-0.871714, -0.425615, -0.242830,
		0.403750, -0.904667, 0.136247,
		32.233807, 33.818642, 34.112217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356136, 34.191429, 33.738659>,  <31.951181, 34.451908, 34.016842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356136, 34.191429, 33.738659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061228, 34.442043, 33.637562>,  <30.884283, 34.592411, 33.576904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061228, 34.442043, 33.637562>,  <31.356136, 34.191429, 33.738659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061228, 34.442043, 33.637562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329498, 0.006869, -0.944131,
		-0.589798, -0.779361, -0.211507,
		-0.737272, 0.626538, -0.252747,
		30.840046, 34.630005, 33.561737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179085, 34.009640, 32.982300>,  <31.356136, 34.191429, 33.738659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179085, 34.009640, 32.982300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026558, 34.372894, 33.051441>,  <30.935041, 34.590847, 33.092926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026558, 34.372894, 33.051441>,  <31.179085, 34.009640, 32.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026558, 34.372894, 33.051441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195522, 0.261979, -0.945060,
		-0.903531, -0.326572, -0.277458,
		-0.381318, 0.908140, 0.172854,
		30.912163, 34.645336, 33.103298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782492, 34.175682, 32.424297>,  <31.179085, 34.009640, 32.982300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782492, 34.175682, 32.424297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868587, 34.530186, 32.588352>,  <30.920246, 34.742889, 32.686783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868587, 34.530186, 32.588352>,  <30.782492, 34.175682, 32.424297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868587, 34.530186, 32.588352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336362, 0.326997, -0.883138,
		-0.916805, 0.328041, -0.227722,
		0.215241, 0.886263, 0.410133,
		30.933159, 34.796066, 32.711391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486446, 34.615021, 31.866932>,  <30.782492, 34.175682, 32.424297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486446, 34.615021, 31.866932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733751, 34.817150, 32.107731>,  <30.882133, 34.938427, 32.252213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733751, 34.817150, 32.107731>,  <30.486446, 34.615021, 31.866932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733751, 34.817150, 32.107731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402429, 0.454391, -0.794720,
		-0.675132, 0.733607, 0.077576,
		0.618262, 0.505322, 0.601999,
		30.919230, 34.968746, 32.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330019, 35.208248, 31.681633>,  <30.486446, 34.615021, 31.866932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330019, 35.208248, 31.681633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692596, 35.239540, 31.847641>,  <30.910143, 35.258316, 31.947247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692596, 35.239540, 31.847641>,  <30.330019, 35.208248, 31.681633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692596, 35.239540, 31.847641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326401, 0.493831, -0.805974,
		-0.268001, 0.866032, 0.422095,
		0.906442, 0.078229, 0.415021,
		30.964529, 35.263008, 31.972147>
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
