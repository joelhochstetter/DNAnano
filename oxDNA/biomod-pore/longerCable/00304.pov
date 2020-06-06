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
	<24.127319, 35.239429, 35.067307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178822, 34.842815, 35.060673>,  <24.209723, 34.604847, 35.056694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178822, 34.842815, 35.060673>,  <24.127319, 35.239429, 35.067307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178822, 34.842815, 35.060673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195918, -0.041828, 0.979728,
		-0.972131, -0.122896, -0.199646,
		0.128756, -0.991537, -0.016585,
		24.217449, 34.545353, 35.055698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896456, 35.030396, 35.249195>,  <24.127319, 35.239429, 35.067307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896456, 35.030396, 35.249195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866032, 34.842113, 34.897594>,  <24.847776, 34.729145, 34.686634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866032, 34.842113, 34.897594>,  <24.896456, 35.030396, 35.249195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866032, 34.842113, 34.897594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422471, 0.783306, -0.456015,
		0.903179, -0.406040, 0.139280,
		-0.076062, -0.470705, -0.879006,
		24.843214, 34.700901, 34.633892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426596, 35.167358, 35.727139>,  <24.896456, 35.030396, 35.249195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426596, 35.167358, 35.727139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813345, 35.067303, 35.747498>,  <26.045395, 35.007271, 35.759712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813345, 35.067303, 35.747498>,  <25.426596, 35.167358, 35.727139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813345, 35.067303, 35.747498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183173, -0.818745, -0.544154,
		0.177785, 0.516804, -0.837440,
		0.966871, -0.250139, 0.050896,
		26.103407, 34.992260, 35.762768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593033, 35.020294, 35.101219>,  <25.426596, 35.167358, 35.727139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593033, 35.020294, 35.101219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922871, 34.858780, 35.259712>,  <26.120773, 34.761871, 35.354809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922871, 34.858780, 35.259712>,  <25.593033, 35.020294, 35.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922871, 34.858780, 35.259712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, -0.742313, -0.668725,
		0.564152, 0.534720, -0.629132,
		0.824594, -0.403790, 0.396231,
		26.170248, 34.737644, 35.378582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205402, 34.899689, 34.538582>,  <25.593033, 35.020294, 35.101219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205402, 34.899689, 34.538582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255461, 34.627472, 34.827358>,  <26.285496, 34.464142, 35.000626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255461, 34.627472, 34.827358>,  <26.205402, 34.899689, 34.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255461, 34.627472, 34.827358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088182, -0.732410, -0.675129,
		0.988212, 0.020827, -0.151670,
		0.125145, -0.680545, 0.721940,
		26.293005, 34.423309, 35.043941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875246, 34.644478, 34.498333>,  <26.205402, 34.899689, 34.538582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875246, 34.644478, 34.498333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596579, 34.393692, 34.637802>,  <26.429379, 34.243221, 34.721485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596579, 34.393692, 34.637802>,  <26.875246, 34.644478, 34.498333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596579, 34.393692, 34.637802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114815, -0.382322, -0.916868,
		0.708146, -0.678786, 0.194367,
		-0.696668, -0.626961, 0.348675,
		26.387579, 34.205605, 34.742405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004086, 34.003349, 34.114769>,  <26.875246, 34.644478, 34.498333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004086, 34.003349, 34.114769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627872, 33.993309, 34.250278>,  <26.402143, 33.987286, 34.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627872, 33.993309, 34.250278>,  <27.004086, 34.003349, 34.114769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627872, 33.993309, 34.250278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301419, -0.398242, -0.866343,
		0.156656, -0.916937, 0.366996,
		-0.940535, -0.025098, 0.338769,
		26.345713, 33.985779, 34.351910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764278, 33.260941, 34.260868>,  <27.004086, 34.003349, 34.114769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764278, 33.260941, 34.260868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461729, 33.494053, 34.142033>,  <26.280199, 33.633923, 34.070732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461729, 33.494053, 34.142033>,  <26.764278, 33.260941, 34.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461729, 33.494053, 34.142033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101070, -0.552831, -0.827141,
		-0.646287, -0.595599, 0.477048,
		-0.756371, 0.582786, -0.297090,
		26.234818, 33.668888, 34.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175400, 32.810104, 33.985077>,  <26.764278, 33.260941, 34.260868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175400, 32.810104, 33.985077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158190, 33.178497, 33.830189>,  <26.147863, 33.399532, 33.737255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158190, 33.178497, 33.830189>,  <26.175400, 32.810104, 33.985077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158190, 33.178497, 33.830189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058685, -0.389240, -0.919265,
		-0.997349, -0.016829, 0.070795,
		-0.043026, 0.920983, -0.387220,
		26.145283, 33.454792, 33.714024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715221, 32.721092, 33.409103>,  <26.175400, 32.810104, 33.985077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715221, 32.721092, 33.409103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893719, 33.071480, 33.335838>,  <26.000816, 33.281712, 33.291878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893719, 33.071480, 33.335838>,  <25.715221, 32.721092, 33.409103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893719, 33.071480, 33.335838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099113, -0.251793, -0.962693,
		-0.889407, 0.411439, -0.199180,
		0.446242, 0.875967, -0.183167,
		26.027592, 33.334270, 33.280888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346897, 32.943806, 32.842892>,  <25.715221, 32.721092, 33.409103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346897, 32.943806, 32.842892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696457, 33.137283, 32.823574>,  <25.906193, 33.253372, 32.811985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696457, 33.137283, 32.823574>,  <25.346897, 32.943806, 32.842892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696457, 33.137283, 32.823574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042723, -0.175387, -0.983572,
		-0.484221, 0.857482, -0.173936,
		0.873902, 0.483698, -0.048292,
		25.958628, 33.282394, 32.809086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277542, 33.388657, 32.342690>,  <25.346897, 32.943806, 32.842892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277542, 33.388657, 32.342690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675705, 33.352058, 32.353970>,  <25.914602, 33.330101, 32.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675705, 33.352058, 32.353970>,  <25.277542, 33.388657, 32.342690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675705, 33.352058, 32.353970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023663, -0.050333, -0.998452,
		0.092772, 0.994533, -0.047937,
		0.995406, -0.091494, 0.028203,
		25.974327, 33.324612, 32.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454390, 33.929337, 31.945002>,  <25.277542, 33.388657, 32.342690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454390, 33.929337, 31.945002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686487, 33.604267, 31.966450>,  <25.825747, 33.409225, 31.979319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686487, 33.604267, 31.966450>,  <25.454390, 33.929337, 31.945002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686487, 33.604267, 31.966450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053539, -0.027634, -0.998183,
		0.812680, 0.582062, 0.027475,
		0.580246, -0.812674, 0.053621,
		25.860561, 33.360466, 31.982536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149111, 34.019932, 31.739189>,  <25.454390, 33.929337, 31.945002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149111, 34.019932, 31.739189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299332, 33.829365, 32.057178>,  <26.389463, 33.715023, 32.247974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299332, 33.829365, 32.057178>,  <26.149111, 34.019932, 31.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299332, 33.829365, 32.057178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553787, -0.572444, -0.604671,
		0.743156, 0.667332, 0.048853,
		0.375551, -0.476419, 0.794976,
		26.411997, 33.686440, 32.295670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456156, 34.676041, 31.894520>,  <26.149111, 34.019932, 31.739189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456156, 34.676041, 31.894520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666233, 35.014515, 31.858423>,  <26.792280, 35.217598, 31.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666233, 35.014515, 31.858423>,  <26.456156, 34.676041, 31.894520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666233, 35.014515, 31.858423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611229, -0.301319, 0.731851,
		0.592090, -0.439520, -0.675463,
		0.525193, 0.846185, -0.090240,
		26.823792, 35.268372, 31.831350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160212, 34.482922, 31.925999>,  <26.456156, 34.676041, 31.894520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160212, 34.482922, 31.925999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185385, 34.879044, 31.975546>,  <27.200489, 35.116714, 32.005276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185385, 34.879044, 31.975546>,  <27.160212, 34.482922, 31.925999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185385, 34.879044, 31.975546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756751, -0.128269, 0.640996,
		0.650667, 0.053398, -0.757483,
		0.062934, 0.990301, 0.123869,
		27.204266, 35.176132, 32.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917706, 34.147121, 32.577965>,  <27.160212, 34.482922, 31.925999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917706, 34.147121, 32.577965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623802, 33.887115, 32.655537>,  <26.447460, 33.731110, 32.702080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623802, 33.887115, 32.655537>,  <26.917706, 34.147121, 32.577965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623802, 33.887115, 32.655537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190174, 0.471819, 0.860942,
		-0.651125, 0.595705, -0.470289,
		-0.734759, -0.650017, 0.193926,
		26.403374, 33.692112, 32.713715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369640, 34.536724, 32.994949>,  <26.917706, 34.147121, 32.577965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369640, 34.536724, 32.994949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265759, 34.159004, 33.075794>,  <26.203430, 33.932373, 33.124302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265759, 34.159004, 33.075794>,  <26.369640, 34.536724, 32.994949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265759, 34.159004, 33.075794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253716, 0.268664, 0.929219,
		-0.931763, 0.190041, -0.309357,
		-0.259703, -0.944301, 0.202114,
		26.187847, 33.875713, 33.136429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734064, 34.656345, 33.302818>,  <26.369640, 34.536724, 32.994949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734064, 34.656345, 33.302818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866701, 34.296158, 33.415386>,  <25.946283, 34.080044, 33.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866701, 34.296158, 33.415386>,  <25.734064, 34.656345, 33.302818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866701, 34.296158, 33.415386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246431, 0.205270, 0.947173,
		-0.910669, -0.383427, -0.153838,
		0.331593, -0.900471, 0.281422,
		25.966179, 34.026016, 33.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123621, 34.342854, 33.615055>,  <25.734064, 34.656345, 33.302818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123621, 34.342854, 33.615055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481237, 34.193577, 33.714188>,  <25.695807, 34.104012, 33.773666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481237, 34.193577, 33.714188>,  <25.123621, 34.342854, 33.615055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481237, 34.193577, 33.714188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234554, 0.081372, 0.968691,
		-0.381676, -0.924178, -0.014785,
		0.894040, -0.373194, 0.247827,
		25.749449, 34.081619, 33.788536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309954, 34.505222, 34.303902>,  <25.123621, 34.342854, 33.615055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309954, 34.505222, 34.303902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538963, 34.184780, 34.234104>,  <25.676369, 33.992516, 34.192226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538963, 34.184780, 34.234104>,  <25.309954, 34.505222, 34.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538963, 34.184780, 34.234104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198119, -0.071348, 0.977578,
		-0.795592, -0.594257, 0.117866,
		0.572523, -0.801104, -0.174498,
		25.710720, 33.944450, 34.181755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094456, 33.890160, 34.806786>,  <25.309954, 34.505222, 34.303902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094456, 33.890160, 34.806786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468090, 33.920605, 34.667248>,  <25.692270, 33.938869, 34.583523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468090, 33.920605, 34.667248>,  <25.094456, 33.890160, 34.806786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468090, 33.920605, 34.667248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347659, 0.028760, 0.937180,
		0.081363, -0.996684, 0.000404,
		0.934084, 0.076112, -0.348846,
		25.748316, 33.943439, 34.562595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426388, 33.426003, 35.180569>,  <25.094456, 33.890160, 34.806786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426388, 33.426003, 35.180569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693720, 33.690823, 35.044907>,  <25.854118, 33.849716, 34.963509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693720, 33.690823, 35.044907>,  <25.426388, 33.426003, 35.180569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693720, 33.690823, 35.044907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280878, 0.197578, 0.939186,
		0.688798, -0.722946, -0.053909,
		0.668330, 0.662051, -0.339151,
		25.894218, 33.889439, 34.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054968, 33.162724, 35.628899>,  <25.426388, 33.426003, 35.180569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054968, 33.162724, 35.628899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051435, 33.524673, 35.458664>,  <26.049316, 33.741844, 35.356522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051435, 33.524673, 35.458664>,  <26.054968, 33.162724, 35.628899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051435, 33.524673, 35.458664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524967, 0.366433, 0.768204,
		0.851077, -0.216634, -0.478265,
		-0.008833, 0.904874, -0.425588,
		26.048786, 33.796135, 35.330986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497128, 33.637745, 36.039902>,  <26.054968, 33.162724, 35.628899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497128, 33.637745, 36.039902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414282, 33.884621, 35.736275>,  <26.364574, 34.032745, 35.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414282, 33.884621, 35.736275>,  <26.497128, 33.637745, 36.039902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414282, 33.884621, 35.736275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335079, 0.773715, 0.537668,
		0.919144, -0.142989, -0.367054,
		-0.207114, 0.617187, -0.759068,
		26.352148, 34.069778, 35.508553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114359, 34.083073, 36.001167>,  <26.497128, 33.637745, 36.039902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114359, 34.083073, 36.001167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811493, 34.279488, 35.828850>,  <26.629772, 34.397335, 35.725460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811493, 34.279488, 35.828850>,  <27.114359, 34.083073, 36.001167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811493, 34.279488, 35.828850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301498, 0.847743, 0.436383,
		0.579481, 0.200532, -0.789929,
		-0.757166, 0.491038, -0.430791,
		26.584343, 34.426800, 35.699612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360617, 34.671295, 35.857552>,  <27.114359, 34.083073, 36.001167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360617, 34.671295, 35.857552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975269, 34.770485, 35.816696>,  <26.744061, 34.829998, 35.792183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975269, 34.770485, 35.816696>,  <27.360617, 34.671295, 35.857552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975269, 34.770485, 35.816696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231979, 0.961612, 0.146588,
		0.134569, 0.117524, -0.983910,
		-0.963368, 0.247973, -0.102140,
		26.686258, 34.844875, 35.786053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288448, 35.383919, 35.467861>,  <27.360617, 34.671295, 35.857552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288448, 35.383919, 35.467861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940763, 35.328873, 35.657822>,  <26.732153, 35.295845, 35.771797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940763, 35.328873, 35.657822>,  <27.288448, 35.383919, 35.467861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940763, 35.328873, 35.657822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009740, 0.965064, 0.261835,
		-0.494341, 0.222965, -0.840187,
		-0.869213, -0.137619, 0.474899,
		26.680000, 35.287586, 35.800293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697983, 35.793697, 35.218235>,  <27.288448, 35.383919, 35.467861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697983, 35.793697, 35.218235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686628, 35.716873, 35.610622>,  <26.679815, 35.670780, 35.846054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686628, 35.716873, 35.610622>,  <26.697983, 35.793697, 35.218235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686628, 35.716873, 35.610622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240078, 0.953953, 0.179824,
		-0.970339, -0.230406, -0.073187,
		-0.028384, -0.192061, 0.980973,
		26.678114, 35.659256, 35.904915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261038, 36.350254, 35.531986>,  <26.697983, 35.793697, 35.218235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261038, 36.350254, 35.531986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465477, 36.184315, 35.833099>,  <26.588140, 36.084751, 36.013767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465477, 36.184315, 35.833099>,  <26.261038, 36.350254, 35.531986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465477, 36.184315, 35.833099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099195, 0.841490, 0.531089,
		-0.853778, -0.346112, 0.388934,
		0.511100, -0.414851, 0.752778,
		26.618807, 36.059860, 36.058933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929623, 36.213737, 36.223602>,  <26.261038, 36.350254, 35.531986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929623, 36.213737, 36.223602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322668, 36.263897, 36.278366>,  <26.558495, 36.293995, 36.311226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322668, 36.263897, 36.278366>,  <25.929623, 36.213737, 36.223602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322668, 36.263897, 36.278366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181673, 0.801473, 0.569769,
		-0.038283, -0.584736, 0.810320,
		0.982614, 0.125401, 0.136914,
		26.617453, 36.301517, 36.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210127, 36.154751, 36.960064>,  <25.929623, 36.213737, 36.223602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210127, 36.154751, 36.960064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401403, 36.445713, 36.763203>,  <26.516169, 36.620293, 36.645088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401403, 36.445713, 36.763203>,  <26.210127, 36.154751, 36.960064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401403, 36.445713, 36.763203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203023, 0.636750, 0.743862,
		0.854468, -0.255790, 0.452168,
		0.478190, 0.727407, -0.492151,
		26.544861, 36.663937, 36.615559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484541, 36.556179, 37.550030>,  <26.210127, 36.154751, 36.960064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484541, 36.556179, 37.550030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520874, 36.805473, 37.239334>,  <26.542673, 36.955051, 37.052917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520874, 36.805473, 37.239334>,  <26.484541, 36.556179, 37.550030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520874, 36.805473, 37.239334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577226, 0.668531, 0.468911,
		0.811517, 0.405763, 0.420472,
		0.090832, 0.623236, -0.776741,
		26.548124, 36.992443, 37.006313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675001, 37.133801, 37.760559>,  <26.484541, 36.556179, 37.550030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675001, 37.133801, 37.760559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513569, 37.256027, 37.415596>,  <26.416710, 37.329365, 37.208618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513569, 37.256027, 37.415596>,  <26.675001, 37.133801, 37.760559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513569, 37.256027, 37.415596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451847, 0.753054, 0.478271,
		0.795585, 0.582699, -0.165851,
		-0.403583, 0.305566, -0.862410,
		26.392494, 37.347698, 37.156872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680567, 37.930618, 37.685757>,  <26.675001, 37.133801, 37.760559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680567, 37.930618, 37.685757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382120, 37.743069, 37.496666>,  <26.203053, 37.630539, 37.383213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382120, 37.743069, 37.496666>,  <26.680567, 37.930618, 37.685757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382120, 37.743069, 37.496666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659335, 0.619128, 0.426565,
		0.092673, 0.629951, -0.771086,
		-0.746116, -0.468873, -0.472726,
		26.158285, 37.602406, 37.354847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417219, 38.502834, 37.357899>,  <26.680567, 37.930618, 37.685757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417219, 38.502834, 37.357899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226782, 38.244652, 37.118996>,  <26.112520, 38.089741, 36.975655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226782, 38.244652, 37.118996>,  <26.417219, 38.502834, 37.357899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226782, 38.244652, 37.118996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865166, 0.465469, 0.186616,
		0.157553, 0.605576, -0.780035,
		-0.476093, -0.645458, -0.597260,
		26.083954, 38.051014, 36.939819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985243, 38.913017, 36.767044>,  <26.417219, 38.502834, 37.357899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985243, 38.913017, 36.767044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842745, 38.554745, 36.873512>,  <25.757246, 38.339783, 36.937393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842745, 38.554745, 36.873512>,  <25.985243, 38.913017, 36.767044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842745, 38.554745, 36.873512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871405, 0.421284, 0.251343,
		-0.337256, -0.142403, -0.930580,
		-0.356246, -0.895679, 0.266171,
		25.735870, 38.286041, 36.953365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291046, 38.773548, 36.373379>,  <25.985243, 38.913017, 36.767044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291046, 38.773548, 36.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322092, 38.557610, 36.708652>,  <25.340719, 38.428047, 36.909817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322092, 38.557610, 36.708652>,  <25.291046, 38.773548, 36.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322092, 38.557610, 36.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844675, 0.411003, 0.342929,
		-0.529622, -0.734606, -0.424093,
		0.077614, -0.539844, 0.838180,
		25.345377, 38.395657, 36.960106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673666, 38.603203, 36.571400>,  <25.291046, 38.773548, 36.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673666, 38.603203, 36.571400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882227, 38.603729, 36.912724>,  <25.007364, 38.604046, 37.117519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882227, 38.603729, 36.912724>,  <24.673666, 38.603203, 36.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882227, 38.603729, 36.912724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753746, 0.469482, 0.459841,
		-0.400008, -0.882941, 0.245782,
		0.521402, 0.001317, 0.853310,
		25.038649, 38.604126, 37.168716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338104, 38.339333, 37.121826>,  <24.673666, 38.603203, 36.571400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338104, 38.339333, 37.121826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604120, 38.565571, 37.316895>,  <24.763729, 38.701313, 37.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604120, 38.565571, 37.316895>,  <24.338104, 38.339333, 37.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604120, 38.565571, 37.316895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739807, 0.409739, 0.533666,
		0.102020, -0.715693, 0.690924,
		0.665040, 0.565594, 0.487673,
		24.803633, 38.735249, 37.463196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.304621, 38.253529, 37.854137>,  <24.338104, 38.339333, 37.121826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.304621, 38.253529, 37.854137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435980, 38.612183, 37.735344>,  <24.514795, 38.827374, 37.664070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435980, 38.612183, 37.735344>,  <24.304621, 38.253529, 37.854137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435980, 38.612183, 37.735344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924586, 0.369444, 0.093016,
		0.193119, 0.244038, 0.950342,
		0.328399, 0.896637, -0.296981,
		24.534500, 38.881172, 37.646248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614912, 37.854965, 38.341148>,  <24.304621, 38.253529, 37.854137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614912, 37.854965, 38.341148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245605, 37.783989, 38.477440>,  <24.024021, 37.741402, 38.559216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245605, 37.783989, 38.477440>,  <24.614912, 37.854965, 38.341148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245605, 37.783989, 38.477440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375195, -0.607038, 0.700523,
		0.082531, 0.774608, 0.627033,
		-0.923264, -0.177445, 0.340729,
		23.968626, 37.730755, 38.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391922, 38.050251, 38.334839>,  <24.614912, 37.854965, 38.341148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391922, 38.050251, 38.334839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209904, 38.081348, 37.980011>,  <25.100693, 38.100006, 37.767117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209904, 38.081348, 37.980011>,  <25.391922, 38.050251, 38.334839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209904, 38.081348, 37.980011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859848, -0.220622, -0.460421,
		-0.231505, -0.972255, 0.033539,
		-0.455046, 0.077751, -0.887067,
		25.073389, 38.104671, 37.713890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376715, 37.523945, 37.972992>,  <25.391922, 38.050251, 38.334839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376715, 37.523945, 37.972992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353331, 37.777260, 37.664310>,  <25.339300, 37.929249, 37.479099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353331, 37.777260, 37.664310>,  <25.376715, 37.523945, 37.972992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353331, 37.777260, 37.664310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801561, -0.431000, -0.414415,
		-0.595048, -0.642797, -0.482421,
		-0.058461, 0.633286, -0.771706,
		25.335793, 37.967247, 37.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278927, 37.092503, 37.250927>,  <25.376715, 37.523945, 37.972992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278927, 37.092503, 37.250927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415201, 37.462246, 37.182240>,  <25.496965, 37.684093, 37.141029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415201, 37.462246, 37.182240>,  <25.278927, 37.092503, 37.250927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415201, 37.462246, 37.182240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673246, -0.367343, -0.641716,
		-0.656257, 0.103018, -0.747472,
		0.340687, 0.924363, -0.171715,
		25.517406, 37.739555, 37.130726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338114, 37.277775, 36.455826>,  <25.278927, 37.092503, 37.250927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338114, 37.277775, 36.455826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618790, 37.473743, 36.662750>,  <25.787195, 37.591324, 36.786903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618790, 37.473743, 36.662750>,  <25.338114, 37.277775, 36.455826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618790, 37.473743, 36.662750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711705, -0.448082, -0.541017,
		-0.033256, 0.747799, -0.663092,
		0.701691, 0.489918, 0.517311,
		25.829298, 37.620720, 36.817944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877340, 37.746361, 36.060116>,  <25.338114, 37.277775, 36.455826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877340, 37.746361, 36.060116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053324, 37.634094, 36.401329>,  <26.158915, 37.566734, 36.606056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053324, 37.634094, 36.401329>,  <25.877340, 37.746361, 36.060116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053324, 37.634094, 36.401329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745409, -0.415598, -0.521194,
		0.500799, 0.865162, 0.026364,
		0.439960, -0.280666, 0.853031,
		26.185312, 37.549896, 36.657238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470430, 37.686234, 35.842236>,  <25.877340, 37.746361, 36.060116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470430, 37.686234, 35.842236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520487, 37.515259, 36.200375>,  <26.550522, 37.412674, 36.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520487, 37.515259, 36.200375>,  <26.470430, 37.686234, 35.842236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520487, 37.515259, 36.200375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617643, -0.672676, -0.407461,
		0.776438, 0.603994, 0.179820,
		0.125143, -0.427433, 0.895344,
		26.558029, 37.387028, 36.468979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218464, 37.513557, 35.969044>,  <26.470430, 37.686234, 35.842236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218464, 37.513557, 35.969044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986158, 37.260818, 36.174366>,  <26.846775, 37.109177, 36.297558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986158, 37.260818, 36.174366>,  <27.218464, 37.513557, 35.969044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986158, 37.260818, 36.174366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406177, -0.771355, -0.489930,
		0.705502, -0.076041, 0.704617,
		-0.580765, -0.631846, 0.513306,
		26.811930, 37.071266, 36.328358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683443, 36.949207, 36.125401>,  <27.218464, 37.513557, 35.969044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683443, 36.949207, 36.125401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300087, 36.837757, 36.150246>,  <27.070074, 36.770885, 36.165154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300087, 36.837757, 36.150246>,  <27.683443, 36.949207, 36.125401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300087, 36.837757, 36.150246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158454, -0.700203, -0.696138,
		0.237454, -0.657329, 0.715217,
		-0.958388, -0.278630, 0.062109,
		27.012571, 36.754169, 36.168877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679173, 36.294781, 36.432022>,  <27.683443, 36.949207, 36.125401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679173, 36.294781, 36.432022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393045, 36.406185, 36.175663>,  <27.221369, 36.473030, 36.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393045, 36.406185, 36.175663>,  <27.679173, 36.294781, 36.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393045, 36.406185, 36.175663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363040, -0.635550, -0.681380,
		-0.597100, -0.720073, 0.353506,
		-0.715314, 0.278515, -0.640902,
		27.178452, 36.489738, 35.983395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306406, 35.950890, 36.149536>,  <27.679173, 36.294781, 36.432022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306406, 35.950890, 36.149536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965754, 35.745743, 36.192783>,  <27.761362, 35.622654, 36.218731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965754, 35.745743, 36.192783>,  <28.306406, 35.950890, 36.149536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965754, 35.745743, 36.192783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258094, -0.589872, -0.765139,
		0.456192, -0.623712, 0.634722,
		-0.851632, -0.512868, 0.108119,
		27.710264, 35.591881, 36.225220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252184, 35.328434, 35.684135>,  <28.306406, 35.950890, 36.149536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252184, 35.328434, 35.684135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226160, 35.700676, 35.540058>,  <28.210546, 35.924023, 35.453609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226160, 35.700676, 35.540058>,  <28.252184, 35.328434, 35.684135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226160, 35.700676, 35.540058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814932, -0.158766, -0.557386,
		-0.575894, -0.329798, -0.748050,
		-0.065060, 0.930605, -0.360196,
		28.206642, 35.979858, 35.431999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330658, 35.383110, 34.947838>,  <28.252184, 35.328434, 35.684135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330658, 35.383110, 34.947838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450483, 35.742031, 35.077515>,  <28.522379, 35.957386, 35.155323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450483, 35.742031, 35.077515>,  <28.330658, 35.383110, 34.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450483, 35.742031, 35.077515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804854, -0.055206, -0.590900,
		-0.512321, 0.437942, -0.738738,
		0.299563, 0.897306, 0.324196,
		28.540352, 36.011223, 35.174774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545391, 35.902809, 34.350273>,  <28.330658, 35.383110, 34.947838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545391, 35.902809, 34.350273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763077, 35.940460, 34.683731>,  <28.893688, 35.963051, 34.883808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763077, 35.940460, 34.683731>,  <28.545391, 35.902809, 34.350273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763077, 35.940460, 34.683731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829815, -0.206599, -0.518385,
		0.123437, 0.973887, -0.190544,
		0.544215, 0.094129, 0.833649,
		28.926342, 35.968700, 34.933826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135288, 36.128242, 34.099960>,  <28.545391, 35.902809, 34.350273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135288, 36.128242, 34.099960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220753, 35.986008, 34.463917>,  <29.272032, 35.900665, 34.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220753, 35.986008, 34.463917>,  <29.135288, 36.128242, 34.099960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220753, 35.986008, 34.463917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973907, 0.004584, -0.226903,
		0.076512, 0.934632, 0.347288,
		0.213663, -0.355587, 0.909894,
		29.284851, 35.879330, 34.736885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613848, 36.526928, 34.525658>,  <29.135288, 36.128242, 34.099960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613848, 36.526928, 34.525658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649897, 36.148170, 34.649120>,  <29.671526, 35.920918, 34.723198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649897, 36.148170, 34.649120>,  <29.613848, 36.526928, 34.525658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649897, 36.148170, 34.649120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974422, 0.019775, -0.223853,
		0.205861, 0.320935, 0.924458,
		0.090123, -0.946895, 0.308655,
		29.676933, 35.864101, 34.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119566, 36.525967, 33.965153>,  <29.613848, 36.526928, 34.525658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119566, 36.525967, 33.965153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322496, 36.338200, 33.676083>,  <30.444256, 36.225540, 33.502640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322496, 36.338200, 33.676083>,  <30.119566, 36.525967, 33.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322496, 36.338200, 33.676083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645787, -0.348178, 0.679508,
		-0.570595, -0.811430, 0.126504,
		0.507327, -0.469419, -0.722680,
		30.474695, 36.197372, 33.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113314, 35.859081, 34.234241>,  <30.119566, 36.525967, 33.965153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113314, 35.859081, 34.234241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427320, 35.972019, 34.013687>,  <30.615725, 36.039780, 33.881355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427320, 35.972019, 34.013687>,  <30.113314, 35.859081, 34.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427320, 35.972019, 34.013687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604976, -0.540853, 0.584364,
		-0.133230, -0.792314, -0.595390,
		0.785018, 0.282341, -0.551389,
		30.662827, 36.056721, 33.848270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603239, 35.314148, 33.897671>,  <30.113314, 35.859081, 34.234241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603239, 35.314148, 33.897671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793982, 35.659546, 33.963379>,  <30.908428, 35.866783, 34.002804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793982, 35.659546, 33.963379>,  <30.603239, 35.314148, 33.897671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793982, 35.659546, 33.963379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712152, -0.489089, 0.503618,
		0.515214, -0.123169, -0.848165,
		0.476858, 0.863494, 0.164271,
		30.937038, 35.918594, 34.012661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301737, 35.200676, 33.512512>,  <30.603239, 35.314148, 33.897671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301737, 35.200676, 33.512512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271114, 35.449207, 33.824432>,  <31.252741, 35.598328, 34.011585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271114, 35.449207, 33.824432>,  <31.301737, 35.200676, 33.512512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271114, 35.449207, 33.824432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561016, -0.619702, 0.548845,
		0.824258, 0.479497, -0.301135,
		-0.076555, 0.621331, 0.779800,
		31.248148, 35.635605, 34.058372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949306, 35.330967, 33.837883>,  <31.301737, 35.200676, 33.512512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949306, 35.330967, 33.837883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678480, 35.413403, 34.120476>,  <31.515984, 35.462864, 34.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678480, 35.413403, 34.120476>,  <31.949306, 35.330967, 33.837883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678480, 35.413403, 34.120476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535684, -0.520226, 0.665137,
		0.504602, 0.828791, 0.241832,
		-0.677067, 0.206084, 0.706477,
		31.475361, 35.475227, 34.332420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773636, 35.188084, 33.880112>,  <31.949306, 35.330967, 33.837883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773636, 35.188084, 33.880112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675236, 34.913807, 33.606087>,  <32.616196, 34.749241, 33.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675236, 34.913807, 33.606087>,  <32.773636, 35.188084, 33.880112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675236, 34.913807, 33.606087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330197, 0.723795, -0.605880,
		0.911291, 0.077157, -0.404469,
		-0.246005, -0.685688, -0.685065,
		32.601433, 34.708099, 33.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439949, 35.876503, 34.278736>,  <32.773636, 35.188084, 33.880112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439949, 35.876503, 34.278736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219757, 36.193481, 34.383808>,  <32.087643, 36.383667, 34.446850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219757, 36.193481, 34.383808>,  <32.439949, 35.876503, 34.278736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219757, 36.193481, 34.383808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511039, 0.071051, 0.856616,
		0.660156, 0.605793, -0.444082,
		-0.550484, 0.792444, 0.262679,
		32.054611, 36.431213, 34.462612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844143, 36.495899, 34.428810>,  <32.439949, 35.876503, 34.278736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844143, 36.495899, 34.428810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513344, 36.509121, 34.653301>,  <32.314865, 36.517056, 34.787998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513344, 36.509121, 34.653301>,  <32.844143, 36.495899, 34.428810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513344, 36.509121, 34.653301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556794, -0.089986, 0.825762,
		0.077799, 0.995394, 0.056013,
		-0.826999, 0.033056, 0.561230,
		32.265244, 36.519039, 34.821671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310669, 36.965481, 34.162529>,  <32.844143, 36.495899, 34.428810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310669, 36.965481, 34.162529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301765, 37.183990, 33.827606>,  <33.296425, 37.315094, 33.626652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301765, 37.183990, 33.827606>,  <33.310669, 36.965481, 34.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301765, 37.183990, 33.827606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161567, 0.824545, 0.542238,
		0.986611, 0.147352, 0.069906,
		-0.022259, 0.546272, -0.837312,
		33.295086, 37.347874, 33.576412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478947, 37.690948, 34.251877>,  <33.310669, 36.965481, 34.162529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478947, 37.690948, 34.251877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473858, 38.068336, 34.119392>,  <33.470802, 38.294769, 34.039902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473858, 38.068336, 34.119392>,  <33.478947, 37.690948, 34.251877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473858, 38.068336, 34.119392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168674, -0.328521, -0.929313,
		-0.985590, 0.044043, 0.163319,
		-0.012724, 0.943469, -0.331216,
		33.470039, 38.351376, 34.020027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882988, 37.773582, 33.817757>,  <33.478947, 37.690948, 34.251877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882988, 37.773582, 33.817757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181072, 38.021660, 33.719757>,  <33.359921, 38.170506, 33.660957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181072, 38.021660, 33.719757>,  <32.882988, 37.773582, 33.817757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181072, 38.021660, 33.719757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089612, -0.457212, -0.884831,
		-0.660784, 0.637428, -0.396295,
		0.745208, 0.620195, -0.244998,
		33.404636, 38.207718, 33.646259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731606, 37.910442, 33.143761>,  <32.882988, 37.773582, 33.817757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731606, 37.910442, 33.143761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121960, 37.990498, 33.178608>,  <33.356171, 38.038532, 33.199516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121960, 37.990498, 33.178608>,  <32.731606, 37.910442, 33.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121960, 37.990498, 33.178608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137983, -0.256365, -0.956681,
		-0.169133, 0.945633, -0.277799,
		0.975887, 0.200138, 0.087121,
		33.414726, 38.050541, 33.204746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919960, 38.429016, 32.679508>,  <32.731606, 37.910442, 33.143761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919960, 38.429016, 32.679508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244602, 38.202309, 32.736176>,  <33.439388, 38.066284, 32.770176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244602, 38.202309, 32.736176>,  <32.919960, 38.429016, 32.679508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244602, 38.202309, 32.736176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026306, -0.206797, -0.978030,
		0.583611, 0.797503, -0.152929,
		0.811607, -0.566767, 0.141668,
		33.488083, 38.032280, 32.778675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345928, 38.544228, 32.140400>,  <32.919960, 38.429016, 32.679508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345928, 38.544228, 32.140400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532219, 38.218540, 32.279045>,  <33.643993, 38.023129, 32.362232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532219, 38.218540, 32.279045>,  <33.345928, 38.544228, 32.140400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532219, 38.218540, 32.279045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135452, -0.321482, -0.937178,
		0.874501, 0.483418, -0.039435,
		0.465726, -0.814221, 0.346616,
		33.671936, 37.974274, 32.383030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076469, 38.478325, 31.852758>,  <33.345928, 38.544228, 32.140400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076469, 38.478325, 31.852758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970360, 38.109009, 31.963871>,  <33.906696, 37.887417, 32.030537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970360, 38.109009, 31.963871>,  <34.076469, 38.478325, 31.852758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970360, 38.109009, 31.963871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398380, -0.367319, -0.840458,
		0.878023, -0.112288, 0.465261,
		-0.265272, -0.923292, 0.277781,
		33.890778, 37.832020, 32.047207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657795, 38.005207, 31.783079>,  <34.076469, 38.478325, 31.852758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657795, 38.005207, 31.783079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351093, 37.749123, 31.801905>,  <34.167072, 37.595470, 31.813200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351093, 37.749123, 31.801905>,  <34.657795, 38.005207, 31.783079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351093, 37.749123, 31.801905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414224, -0.549440, -0.725626,
		0.490414, -0.536882, 0.686477,
		-0.766754, -0.640213, 0.047063,
		34.121067, 37.557060, 31.816023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952557, 37.379459, 31.758614>,  <34.657795, 38.005207, 31.783079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952557, 37.379459, 31.758614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580196, 37.282043, 31.649721>,  <34.356781, 37.223595, 31.584385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580196, 37.282043, 31.649721>,  <34.952557, 37.379459, 31.758614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580196, 37.282043, 31.649721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362556, -0.525399, -0.769746,
		0.044430, -0.815258, 0.577391,
		-0.930903, -0.243536, -0.272233,
		34.300926, 37.208984, 31.568050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942635, 36.657124, 31.709724>,  <34.952557, 37.379459, 31.758614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942635, 36.657124, 31.709724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638027, 36.796116, 31.490875>,  <34.455261, 36.879513, 31.359566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638027, 36.796116, 31.490875>,  <34.942635, 36.657124, 31.709724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638027, 36.796116, 31.490875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247335, -0.624463, -0.740859,
		-0.599086, -0.699505, 0.389601,
		-0.761525, 0.347476, -0.547119,
		34.409573, 36.900360, 31.326738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652588, 36.075428, 31.386326>,  <34.942635, 36.657124, 31.709724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652588, 36.075428, 31.386326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526890, 36.388481, 31.171392>,  <34.451469, 36.576313, 31.042433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526890, 36.388481, 31.171392>,  <34.652588, 36.075428, 31.386326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526890, 36.388481, 31.171392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357849, -0.426604, -0.830634,
		-0.879315, -0.453308, -0.146007,
		-0.314245, 0.782637, -0.537335,
		34.432617, 36.623272, 31.010193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291855, 35.685936, 30.769991>,  <34.652588, 36.075428, 31.386326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291855, 35.685936, 30.769991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336151, 36.063488, 30.645527>,  <34.362728, 36.290020, 30.570848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336151, 36.063488, 30.645527>,  <34.291855, 35.685936, 30.769991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336151, 36.063488, 30.645527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254069, -0.329570, -0.909303,
		-0.960825, 0.021644, -0.276309,
		0.110744, 0.943883, -0.311160,
		34.369373, 36.346653, 30.552179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966290, 35.749550, 30.056980>,  <34.291855, 35.685936, 30.769991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966290, 35.749550, 30.056980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214985, 36.062389, 30.073799>,  <34.364201, 36.250092, 30.083891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214985, 36.062389, 30.073799>,  <33.966290, 35.749550, 30.056980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214985, 36.062389, 30.073799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259624, -0.155147, -0.953166,
		-0.738943, 0.603537, -0.299512,
		0.621739, 0.782095, 0.042048,
		34.401508, 36.297016, 30.086414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800659, 36.306835, 29.462812>,  <33.966290, 35.749550, 30.056980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800659, 36.306835, 29.462812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182522, 36.353683, 29.572300>,  <34.411640, 36.381794, 29.637993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182522, 36.353683, 29.572300>,  <33.800659, 36.306835, 29.462812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182522, 36.353683, 29.572300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294620, -0.239239, -0.925183,
		-0.042874, 0.963871, -0.262896,
		0.954652, 0.117121, 0.273718,
		34.468918, 36.388821, 29.654415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093250, 36.626144, 28.856131>,  <33.800659, 36.306835, 29.462812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093250, 36.626144, 28.856131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431194, 36.532574, 29.048586>,  <34.633961, 36.476433, 29.164059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431194, 36.532574, 29.048586>,  <34.093250, 36.626144, 28.856131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431194, 36.532574, 29.048586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509834, 0.079499, -0.856592,
		0.162129, 0.968999, 0.186429,
		0.844858, -0.233926, 0.481139,
		34.684650, 36.462395, 29.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656651, 37.043751, 28.556711>,  <34.093250, 36.626144, 28.856131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656651, 37.043751, 28.556711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832024, 36.733082, 28.737623>,  <34.937248, 36.546680, 28.846170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832024, 36.733082, 28.737623>,  <34.656651, 37.043751, 28.556711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832024, 36.733082, 28.737623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642337, -0.081202, -0.762108,
		0.628635, 0.624648, 0.463285,
		0.438430, -0.776673, 0.452281,
		34.963554, 36.500080, 28.873308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316734, 37.245068, 28.596951>,  <34.656651, 37.043751, 28.556711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316734, 37.245068, 28.596951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336468, 36.847080, 28.631851>,  <35.348309, 36.608288, 28.652792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336468, 36.847080, 28.631851>,  <35.316734, 37.245068, 28.596951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336468, 36.847080, 28.631851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654920, -0.033732, -0.754945,
		0.754086, 0.094384, 0.649958,
		0.049331, -0.994964, 0.087251,
		35.351269, 36.548592, 28.658026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973309, 37.064888, 28.651463>,  <35.316734, 37.245068, 28.596951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973309, 37.064888, 28.651463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778851, 36.753139, 28.493351>,  <35.662178, 36.566090, 28.398483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778851, 36.753139, 28.493351>,  <35.973309, 37.064888, 28.651463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778851, 36.753139, 28.493351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683555, -0.057330, -0.727645,
		0.544444, -0.623934, 0.560613,
		-0.486142, -0.779372, -0.395280,
		35.633007, 36.519329, 28.374767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477333, 36.609226, 28.384556>,  <35.973309, 37.064888, 28.651463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477333, 36.609226, 28.384556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153870, 36.480499, 28.187578>,  <35.959789, 36.403263, 28.069391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153870, 36.480499, 28.187578>,  <36.477333, 36.609226, 28.384556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153870, 36.480499, 28.187578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551831, -0.124929, -0.824546,
		0.203831, -0.938524, 0.278614,
		-0.808663, -0.321816, -0.492442,
		35.911270, 36.383953, 28.039846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707619, 36.132507, 27.948538>,  <36.477333, 36.609226, 28.384556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707619, 36.132507, 27.948538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350803, 36.196983, 27.779646>,  <36.136715, 36.235668, 27.678310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350803, 36.196983, 27.779646>,  <36.707619, 36.132507, 27.948538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350803, 36.196983, 27.779646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408098, -0.114166, -0.905771,
		-0.194210, -0.980297, 0.036058,
		-0.892042, 0.161194, -0.422230,
		36.083191, 36.245342, 27.652977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599854, 35.547565, 27.603724>,  <36.707619, 36.132507, 27.948538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599854, 35.547565, 27.603724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349224, 35.820370, 27.452848>,  <36.198845, 35.984051, 27.362324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349224, 35.820370, 27.452848>,  <36.599854, 35.547565, 27.603724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349224, 35.820370, 27.452848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346574, -0.189656, -0.918650,
		-0.698063, -0.706324, -0.117533,
		-0.626574, 0.682009, -0.377186,
		36.161251, 36.024971, 27.339693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403603, 35.228588, 27.093620>,  <36.599854, 35.547565, 27.603724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403603, 35.228588, 27.093620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282837, 35.593063, 26.981493>,  <36.210377, 35.811749, 26.914217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282837, 35.593063, 26.981493>,  <36.403603, 35.228588, 27.093620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282837, 35.593063, 26.981493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223403, -0.218231, -0.949982,
		-0.926790, -0.349435, -0.137677,
		-0.301912, 0.911192, -0.280319,
		36.192265, 35.866421, 26.897398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833183, 35.166645, 26.571636>,  <36.403603, 35.228588, 27.093620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833183, 35.166645, 26.571636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038227, 35.508270, 26.536306>,  <36.161255, 35.713245, 26.515108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038227, 35.508270, 26.536306>,  <35.833183, 35.166645, 26.571636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038227, 35.508270, 26.536306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249176, -0.246413, -0.936585,
		-0.821668, 0.458099, -0.339127,
		0.512614, 0.854064, -0.088322,
		36.192013, 35.764488, 26.509809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706722, 35.418880, 25.794777>,  <35.833183, 35.166645, 26.571636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706722, 35.418880, 25.794777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010616, 35.652092, 25.909931>,  <36.192955, 35.792019, 25.979025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010616, 35.652092, 25.909931>,  <35.706722, 35.418880, 25.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010616, 35.652092, 25.909931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326659, 0.040597, -0.944270,
		-0.562222, 0.811438, -0.159608,
		0.759737, 0.583026, 0.287888,
		36.238537, 35.827000, 25.996298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770573, 35.922970, 25.239861>,  <35.706722, 35.418880, 25.794777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770573, 35.922970, 25.239861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116394, 35.949852, 25.439068>,  <36.323887, 35.965981, 25.558592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116394, 35.949852, 25.439068>,  <35.770573, 35.922970, 25.239861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116394, 35.949852, 25.439068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490412, 0.103512, -0.865321,
		-0.109707, 0.992355, 0.056533,
		0.864558, 0.067207, 0.498019,
		36.375763, 35.970013, 25.588474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115051, 36.546093, 25.001163>,  <35.770573, 35.922970, 25.239861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115051, 36.546093, 25.001163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384159, 36.287159, 25.144463>,  <36.545624, 36.131798, 25.230442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384159, 36.287159, 25.144463>,  <36.115051, 36.546093, 25.001163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384159, 36.287159, 25.144463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505822, 0.049066, -0.861241,
		0.539932, 0.760626, 0.360446,
		0.672768, -0.647333, 0.358249,
		36.585991, 36.092960, 25.251938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812672, 36.868240, 24.808632>,  <36.115051, 36.546093, 25.001163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812672, 36.868240, 24.808632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871647, 36.480213, 24.885817>,  <36.907032, 36.247398, 24.932127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871647, 36.480213, 24.885817>,  <36.812672, 36.868240, 24.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871647, 36.480213, 24.885817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669386, -0.045756, -0.741504,
		0.728137, 0.238491, 0.642602,
		0.147439, -0.970066, 0.192959,
		36.915878, 36.189194, 24.943705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525295, 36.834446, 24.664127>,  <36.812672, 36.868240, 24.808632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525295, 36.834446, 24.664127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350822, 36.474628, 24.654676>,  <37.246140, 36.258736, 24.649006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350822, 36.474628, 24.654676>,  <37.525295, 36.834446, 24.664127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350822, 36.474628, 24.654676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403487, -0.172045, -0.898665,
		0.804326, -0.401517, 0.437999,
		-0.436185, -0.899547, -0.023626,
		37.219967, 36.204765, 24.647589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020271, 36.403275, 24.467237>,  <37.525295, 36.834446, 24.664127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020271, 36.403275, 24.467237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712830, 36.159103, 24.390688>,  <37.528366, 36.012600, 24.344759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712830, 36.159103, 24.390688>,  <38.020271, 36.403275, 24.467237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712830, 36.159103, 24.390688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438656, -0.285146, -0.852217,
		0.465648, -0.738964, 0.486933,
		-0.768604, -0.610429, -0.191373,
		37.482246, 35.975975, 24.333277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222481, 35.650494, 24.427795>,  <38.020271, 36.403275, 24.467237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222481, 35.650494, 24.427795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896503, 35.697716, 24.200842>,  <37.700916, 35.726048, 24.064669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896503, 35.697716, 24.200842>,  <38.222481, 35.650494, 24.427795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896503, 35.697716, 24.200842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501634, -0.346585, -0.792617,
		-0.290219, -0.930560, 0.223228,
		-0.814946, 0.118054, -0.567386,
		37.652020, 35.733131, 24.030626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415779, 35.264050, 23.973898>,  <38.222481, 35.650494, 24.427795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415779, 35.264050, 23.973898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091496, 35.399021, 23.782524>,  <37.896927, 35.480003, 23.667700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091496, 35.399021, 23.782524>,  <38.415779, 35.264050, 23.973898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091496, 35.399021, 23.782524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493086, -0.047034, -0.868708,
		-0.315628, -0.940176, -0.128250,
		-0.810707, 0.337427, -0.478433,
		37.848282, 35.500248, 23.638994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244968, 34.737484, 23.415653>,  <38.415779, 35.264050, 23.973898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244968, 34.737484, 23.415653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117680, 35.113533, 23.366804>,  <38.041306, 35.339161, 23.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117680, 35.113533, 23.366804>,  <38.244968, 34.737484, 23.415653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117680, 35.113533, 23.366804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269474, -0.033807, -0.962414,
		-0.908912, -0.339168, -0.242579,
		-0.318219, 0.940118, -0.122125,
		38.022213, 35.395569, 23.330166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931366, 34.743832, 22.748558>,  <38.244968, 34.737484, 23.415653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931366, 34.743832, 22.748558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002857, 35.128372, 22.832327>,  <38.045750, 35.359097, 22.882587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002857, 35.128372, 22.832327>,  <37.931366, 34.743832, 22.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002857, 35.128372, 22.832327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477652, 0.101307, -0.872689,
		-0.860178, 0.256003, -0.441086,
		0.178726, 0.961353, 0.209422,
		38.056477, 35.416779, 22.895153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809532, 35.169746, 22.212227>,  <37.931366, 34.743832, 22.748558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809532, 35.169746, 22.212227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081455, 35.377274, 22.419571>,  <38.244610, 35.501789, 22.543978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081455, 35.377274, 22.419571>,  <37.809532, 35.169746, 22.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081455, 35.377274, 22.419571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501091, 0.187513, -0.844835,
		-0.535512, 0.834068, -0.132501,
		0.679804, 0.518815, 0.518360,
		38.285397, 35.532917, 22.575079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119579, 35.637108, 21.672781>,  <37.809532, 35.169746, 22.212227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119579, 35.637108, 21.672781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367104, 35.641018, 21.986973>,  <38.515617, 35.643364, 22.175488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367104, 35.641018, 21.986973>,  <38.119579, 35.637108, 21.672781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367104, 35.641018, 21.986973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779759, 0.113447, -0.615716,
		-0.095130, 0.993496, 0.062579,
		0.618811, 0.009777, 0.785479,
		38.552746, 35.643951, 22.222616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503212, 36.132450, 21.418745>,  <38.119579, 35.637108, 21.672781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503212, 36.132450, 21.418745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710930, 35.970688, 21.719887>,  <38.835560, 35.873631, 21.900572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710930, 35.970688, 21.719887>,  <38.503212, 36.132450, 21.418745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710930, 35.970688, 21.719887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854531, 0.256611, -0.451584,
		-0.010569, 0.877844, 0.478831,
		0.519293, -0.404403, 0.752856,
		38.866718, 35.849365, 21.945744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006245, 36.647606, 21.611921>,  <38.503212, 36.132450, 21.418745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006245, 36.647606, 21.611921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142605, 36.293224, 21.737692>,  <39.224422, 36.080593, 21.813154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142605, 36.293224, 21.737692>,  <39.006245, 36.647606, 21.611921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142605, 36.293224, 21.737692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900506, 0.211697, -0.379833,
		0.269954, 0.412628, 0.869979,
		0.340902, -0.885958, 0.314425,
		39.244877, 36.027435, 21.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604179, 36.838131, 21.762295>,  <39.006245, 36.647606, 21.611921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604179, 36.838131, 21.762295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655121, 36.441395, 21.764425>,  <39.685684, 36.203354, 21.765703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655121, 36.441395, 21.764425>,  <39.604179, 36.838131, 21.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655121, 36.441395, 21.764425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960042, 0.121919, -0.251904,
		0.249199, 0.037194, 0.967738,
		0.127355, -0.991843, 0.005325,
		39.693329, 36.143841, 21.766024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281448, 36.753044, 22.128651>,  <39.604179, 36.838131, 21.762295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281448, 36.753044, 22.128651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188339, 36.424770, 21.919922>,  <40.132473, 36.227806, 21.794683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188339, 36.424770, 21.919922>,  <40.281448, 36.753044, 22.128651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188339, 36.424770, 21.919922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956210, -0.095242, -0.276752,
		0.177425, -0.563393, 0.806913,
		-0.232773, -0.820681, -0.521824,
		40.118507, 36.178566, 21.763374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573753, 36.084389, 22.422001>,  <40.281448, 36.753044, 22.128651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573753, 36.084389, 22.422001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512138, 36.038837, 22.029409>,  <40.475170, 36.011505, 21.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512138, 36.038837, 22.029409>,  <40.573753, 36.084389, 22.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512138, 36.038837, 22.029409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987313, 0.021004, -0.157388,
		0.038538, -0.993273, 0.109197,
		-0.154036, -0.113877, -0.981481,
		40.465927, 36.004673, 21.734964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106853, 35.582653, 22.203381>,  <40.573753, 36.084389, 22.422001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106853, 35.582653, 22.203381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997635, 35.760845, 21.862326>,  <40.932102, 35.867760, 21.657692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997635, 35.760845, 21.862326>,  <41.106853, 35.582653, 22.203381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997635, 35.760845, 21.862326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960741, 0.171621, -0.217997,
		0.049216, -0.878687, -0.474855,
		-0.273046, 0.445484, -0.852637,
		40.915722, 35.894489, 21.606535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550396, 35.414776, 21.710737>,  <41.106853, 35.582653, 22.203381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550396, 35.414776, 21.710737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414986, 35.759453, 21.559540>,  <41.333740, 35.966259, 21.468822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414986, 35.759453, 21.559540>,  <41.550396, 35.414776, 21.710737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414986, 35.759453, 21.559540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940728, 0.301095, -0.156121,
		-0.020718, -0.408439, -0.912551,
		-0.338530, 0.861696, -0.377992,
		41.313427, 36.017963, 21.446142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080196, 35.527794, 21.225607>,  <41.550396, 35.414776, 21.710737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080196, 35.527794, 21.225607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893211, 35.879616, 21.261087>,  <41.781021, 36.090710, 21.282375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893211, 35.879616, 21.261087>,  <42.080196, 35.527794, 21.225607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893211, 35.879616, 21.261087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869758, 0.475547, -0.131819,
		-0.158123, 0.015527, -0.987297,
		-0.467460, 0.879553, 0.088699,
		41.752972, 36.143482, 21.287697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474937, 35.960827, 20.748751>,  <42.080196, 35.527794, 21.225607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474937, 35.960827, 20.748751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267601, 36.203995, 20.989338>,  <42.143200, 36.349895, 21.133690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267601, 36.203995, 20.989338>,  <42.474937, 35.960827, 20.748751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267601, 36.203995, 20.989338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737796, 0.673527, -0.044922,
		-0.432413, 0.420475, -0.797634,
		-0.518340, 0.607916, 0.601467,
		42.112099, 36.386368, 21.169779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257839, 36.671307, 20.476852>,  <42.474937, 35.960827, 20.748751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257839, 36.671307, 20.476852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395493, 36.556358, 20.834398>,  <42.478085, 36.487389, 21.048925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395493, 36.556358, 20.834398>,  <42.257839, 36.671307, 20.476852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395493, 36.556358, 20.834398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911172, 0.331951, -0.244079,
		-0.226579, 0.898459, 0.376077,
		0.344134, -0.287367, 0.893863,
		42.498734, 36.470146, 21.102558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543530, 37.272591, 20.863653>,  <42.257839, 36.671307, 20.476852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543530, 37.272591, 20.863653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885826, 37.473461, 20.813816>,  <43.091206, 37.593983, 20.783915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885826, 37.473461, 20.813816>,  <42.543530, 37.272591, 20.863653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885826, 37.473461, 20.813816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023976, -0.202056, -0.979080,
		-0.516845, 0.840828, -0.160868,
		0.855743, 0.502176, -0.124591,
		43.142548, 37.624115, 20.776440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526459, 37.635387, 20.284039>,  <42.543530, 37.272591, 20.863653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526459, 37.635387, 20.284039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926258, 37.630329, 20.295660>,  <43.166138, 37.627296, 20.302633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926258, 37.630329, 20.295660>,  <42.526459, 37.635387, 20.284039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926258, 37.630329, 20.295660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024744, -0.261366, -0.964923,
		0.019795, 0.965157, -0.260922,
		0.999498, -0.012644, 0.029055,
		43.226109, 37.626537, 20.304377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745964, 37.924988, 19.663321>,  <42.526459, 37.635387, 20.284039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745964, 37.924988, 19.663321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061306, 37.717396, 19.795473>,  <43.250511, 37.592842, 19.874765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061306, 37.717396, 19.795473>,  <42.745964, 37.924988, 19.663321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061306, 37.717396, 19.795473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059054, -0.470705, -0.880312,
		0.612375, 0.713512, -0.340436,
		0.788358, -0.518978, 0.330383,
		43.297813, 37.561703, 19.894588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099171, 37.753025, 18.984493>,  <42.745964, 37.924988, 19.663321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099171, 37.753025, 18.984493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301460, 37.549629, 19.263256>,  <43.422836, 37.427589, 19.430513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301460, 37.549629, 19.263256>,  <43.099171, 37.753025, 18.984493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301460, 37.549629, 19.263256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114793, -0.760976, -0.638544,
		0.855022, 0.402928, -0.326475,
		0.505727, -0.508492, 0.696905,
		43.453178, 37.397083, 19.472328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822731, 37.754051, 18.739418>,  <43.099171, 37.753025, 18.984493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822731, 37.754051, 18.739418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634686, 37.468563, 18.947107>,  <43.521858, 37.297272, 19.071720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634686, 37.468563, 18.947107>,  <43.822731, 37.754051, 18.739418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634686, 37.468563, 18.947107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317951, -0.685737, -0.654730,
		0.823345, -0.142712, 0.549305,
		-0.470117, -0.713721, 0.519223,
		43.493649, 37.254448, 19.102875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384159, 37.198448, 18.941362>,  <43.822731, 37.754051, 18.739418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384159, 37.198448, 18.941362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010635, 37.099785, 18.837700>,  <43.786522, 37.040588, 18.775501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010635, 37.099785, 18.837700>,  <44.384159, 37.198448, 18.941362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010635, 37.099785, 18.837700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357769, -0.640250, -0.679766,
		0.001743, -0.727489, 0.686117,
		-0.933808, -0.246657, -0.259157,
		43.730492, 37.025787, 18.759953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223713, 36.450867, 19.039629>,  <44.384159, 37.198448, 18.941362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223713, 36.450867, 19.039629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996792, 36.598419, 18.745123>,  <43.860638, 36.686951, 18.568419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996792, 36.598419, 18.745123>,  <44.223713, 36.450867, 19.039629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996792, 36.598419, 18.745123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302202, -0.738431, -0.602822,
		-0.766054, -0.564485, 0.307437,
		-0.567305, 0.368886, -0.736266,
		43.826599, 36.709084, 18.524242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109989, 36.500477, 19.775631>,  <44.223713, 36.450867, 19.039629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109989, 36.500477, 19.775631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972847, 36.864456, 19.682289>,  <43.890564, 37.082844, 19.626284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972847, 36.864456, 19.682289>,  <44.109989, 36.500477, 19.775631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972847, 36.864456, 19.682289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207287, 0.169005, 0.963571,
		0.916234, 0.378734, 0.130675,
		-0.342853, 0.909944, -0.233355,
		43.869991, 37.137440, 19.612282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359947, 36.897316, 20.209852>,  <44.109989, 36.500477, 19.775631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359947, 36.897316, 20.209852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053818, 37.128757, 20.097071>,  <43.870140, 37.267620, 20.029402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053818, 37.128757, 20.097071>,  <44.359947, 36.897316, 20.209852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053818, 37.128757, 20.097071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120556, 0.301441, 0.945833,
		0.632251, 0.757862, -0.160947,
		-0.765327, 0.578600, -0.281952,
		43.824219, 37.302338, 20.012486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497200, 37.593861, 20.410248>,  <44.359947, 36.897316, 20.209852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497200, 37.593861, 20.410248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100025, 37.614162, 20.367348>,  <43.861721, 37.626343, 20.341608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100025, 37.614162, 20.367348>,  <44.497200, 37.593861, 20.410248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100025, 37.614162, 20.367348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080966, 0.370921, 0.925128,
		0.086736, 0.927276, -0.364191,
		-0.992936, 0.050755, -0.107251,
		43.802143, 37.629391, 20.335173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339458, 38.257263, 20.620340>,  <44.497200, 37.593861, 20.410248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339458, 38.257263, 20.620340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000122, 38.055012, 20.683165>,  <43.796520, 37.933662, 20.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000122, 38.055012, 20.683165>,  <44.339458, 38.257263, 20.620340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000122, 38.055012, 20.683165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064439, 0.393040, 0.917260,
		-0.525520, 0.768026, -0.366013,
		-0.848337, -0.505624, 0.157059,
		43.745621, 37.903324, 20.730282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981724, 38.681900, 20.928919>,  <44.339458, 38.257263, 20.620340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981724, 38.681900, 20.928919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790276, 38.337711, 20.998781>,  <43.675407, 38.131199, 21.040699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790276, 38.337711, 20.998781>,  <43.981724, 38.681900, 20.928919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790276, 38.337711, 20.998781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279701, 0.337978, 0.898631,
		-0.832279, 0.381253, -0.402439,
		-0.478622, -0.860475, 0.174655,
		43.646690, 38.079567, 21.051178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410526, 38.801235, 21.071100>,  <43.981724, 38.681900, 20.928919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410526, 38.801235, 21.071100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447731, 38.447395, 21.253893>,  <43.470055, 38.235092, 21.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447731, 38.447395, 21.253893>,  <43.410526, 38.801235, 21.071100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447731, 38.447395, 21.253893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466050, 0.366905, 0.805095,
		-0.879856, -0.287859, -0.378142,
		0.093012, -0.884600, 0.456980,
		43.475636, 38.182014, 21.390987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810146, 38.763264, 21.354744>,  <43.410526, 38.801235, 21.071100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810146, 38.763264, 21.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032616, 38.492779, 21.547995>,  <43.166096, 38.330486, 21.663944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032616, 38.492779, 21.547995>,  <42.810146, 38.763264, 21.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032616, 38.492779, 21.547995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400994, 0.290833, 0.868689,
		-0.727929, -0.676868, -0.109406,
		0.556169, -0.676215, 0.483126,
		43.199467, 38.289913, 21.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352856, 38.468403, 21.794107>,  <42.810146, 38.763264, 21.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352856, 38.468403, 21.794107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718063, 38.380924, 21.931839>,  <42.937187, 38.328438, 22.014479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718063, 38.380924, 21.931839>,  <42.352856, 38.468403, 21.794107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718063, 38.380924, 21.931839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280348, 0.276743, 0.919140,
		-0.296306, -0.935727, 0.191360,
		0.913021, -0.218700, 0.344330,
		42.991970, 38.315315, 22.035137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269482, 37.988560, 22.302059>,  <42.352856, 38.468403, 21.794107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269482, 37.988560, 22.302059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626831, 38.146870, 22.387146>,  <42.841240, 38.241856, 22.438198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626831, 38.146870, 22.387146>,  <42.269482, 37.988560, 22.302059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626831, 38.146870, 22.387146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244204, 0.030295, 0.969251,
		0.377159, -0.917849, 0.123714,
		0.893374, 0.395773, 0.212717,
		42.894844, 38.265602, 22.450960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349117, 37.729992, 23.003450>,  <42.269482, 37.988560, 22.302059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349117, 37.729992, 23.003450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614521, 38.023132, 22.943203>,  <42.773762, 38.199017, 22.907055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614521, 38.023132, 22.943203>,  <42.349117, 37.729992, 23.003450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614521, 38.023132, 22.943203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142049, 0.321047, 0.936350,
		0.734561, -0.599880, 0.317118,
		0.663507, 0.732852, -0.150617,
		42.813572, 38.242989, 22.898018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708870, 37.731873, 23.659338>,  <42.349117, 37.729992, 23.003450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708870, 37.731873, 23.659338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781719, 38.081474, 23.479143>,  <42.825428, 38.291237, 23.371025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781719, 38.081474, 23.479143>,  <42.708870, 37.731873, 23.659338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781719, 38.081474, 23.479143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200007, 0.481503, 0.853318,
		0.962718, -0.065312, 0.262503,
		0.182127, 0.874008, -0.450489,
		42.836357, 38.343678, 23.343996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127697, 38.039112, 24.084112>,  <42.708870, 37.731873, 23.659338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127697, 38.039112, 24.084112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916092, 38.308376, 23.877422>,  <42.789131, 38.469936, 23.753408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916092, 38.308376, 23.877422>,  <43.127697, 38.039112, 24.084112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916092, 38.308376, 23.877422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400787, 0.338531, 0.851332,
		0.748010, 0.657460, 0.090708,
		-0.529009, 0.673159, -0.516726,
		42.757389, 38.510323, 23.722404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232765, 38.714386, 24.444996>,  <43.127697, 38.039112, 24.084112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232765, 38.714386, 24.444996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910831, 38.741535, 24.209152>,  <42.717670, 38.757824, 24.067646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910831, 38.741535, 24.209152>,  <43.232765, 38.714386, 24.444996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910831, 38.741535, 24.209152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520524, 0.396549, 0.756177,
		0.285134, 0.915501, -0.283824,
		-0.804831, 0.067875, -0.589610,
		42.669384, 38.761898, 24.032269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915417, 39.301300, 24.707319>,  <43.232765, 38.714386, 24.444996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915417, 39.301300, 24.707319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627357, 39.146111, 24.477240>,  <42.454521, 39.052998, 24.339191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627357, 39.146111, 24.477240>,  <42.915417, 39.301300, 24.707319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627357, 39.146111, 24.477240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686526, 0.278595, 0.671615,
		-0.100324, 0.878554, -0.466988,
		-0.720151, -0.387978, -0.575200,
		42.411312, 39.029716, 24.304680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401272, 39.882812, 24.523201>,  <42.915417, 39.301300, 24.707319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401272, 39.882812, 24.523201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233921, 39.523014, 24.472824>,  <42.133511, 39.307133, 24.442598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233921, 39.523014, 24.472824>,  <42.401272, 39.882812, 24.523201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233921, 39.523014, 24.472824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654905, 0.202679, 0.728026,
		-0.629333, 0.387069, -0.673883,
		-0.418378, -0.899499, -0.125941,
		42.108406, 39.253166, 24.435041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801147, 39.983738, 24.836861>,  <42.401272, 39.882812, 24.523201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801147, 39.983738, 24.836861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771957, 39.597141, 24.738417>,  <41.754444, 39.365185, 24.679350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771957, 39.597141, 24.738417>,  <41.801147, 39.983738, 24.836861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771957, 39.597141, 24.738417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702956, -0.125206, 0.700126,
		-0.707480, 0.224098, -0.670263,
		-0.072976, -0.966490, -0.246111,
		41.750065, 39.307194, 24.664583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136688, 39.778168, 24.588163>,  <41.801147, 39.983738, 24.836861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136688, 39.778168, 24.588163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286015, 39.447388, 24.756348>,  <41.375610, 39.248920, 24.857258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286015, 39.447388, 24.756348>,  <41.136688, 39.778168, 24.588163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286015, 39.447388, 24.756348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725736, 0.021992, 0.687621,
		-0.577876, -0.561844, -0.591938,
		0.373318, -0.826951, 0.420460,
		41.398010, 39.199303, 24.882486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699116, 39.141369, 24.587532>,  <41.136688, 39.778168, 24.588163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699116, 39.141369, 24.587532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927273, 39.121330, 24.915468>,  <41.064167, 39.109306, 25.112230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927273, 39.121330, 24.915468>,  <40.699116, 39.141369, 24.587532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927273, 39.121330, 24.915468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815657, 0.082981, 0.572554,
		-0.096715, -0.995291, 0.006469,
		0.570394, -0.050098, 0.819842,
		41.098392, 39.106300, 25.161421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204239, 38.862324, 24.992748>,  <40.699116, 39.141369, 24.587532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204239, 38.862324, 24.992748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513973, 38.973316, 25.220222>,  <40.699814, 39.039913, 25.356707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513973, 38.973316, 25.220222>,  <40.204239, 38.862324, 24.992748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513973, 38.973316, 25.220222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632298, 0.304519, 0.712367,
		0.024494, -0.911192, 0.411253,
		0.774338, 0.277484, 0.568686,
		40.746273, 39.056561, 25.390829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018562, 38.607990, 25.707298>,  <40.204239, 38.862324, 24.992748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018562, 38.607990, 25.707298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277454, 38.902084, 25.787813>,  <40.432789, 39.078541, 25.836123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277454, 38.902084, 25.787813>,  <40.018562, 38.607990, 25.707298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277454, 38.902084, 25.787813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545665, 0.262474, 0.795837,
		0.532295, -0.624928, 0.571075,
		0.647233, 0.735236, 0.201288,
		40.471626, 39.122654, 25.848200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377014, 38.462128, 26.427984>,  <40.018562, 38.607990, 25.707298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377014, 38.462128, 26.427984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380943, 38.850601, 26.332731>,  <40.383301, 39.083687, 26.275579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380943, 38.850601, 26.332731>,  <40.377014, 38.462128, 26.427984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380943, 38.850601, 26.332731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382098, 0.223719, 0.896633,
		0.924069, 0.082179, 0.373286,
		0.009827, 0.971183, -0.238133,
		40.383892, 39.141956, 26.261292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627766, 38.769817, 27.022644>,  <40.377014, 38.462128, 26.427984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627766, 38.769817, 27.022644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426949, 39.029266, 26.793825>,  <40.306458, 39.184937, 26.656534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426949, 39.029266, 26.793825>,  <40.627766, 38.769817, 27.022644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426949, 39.029266, 26.793825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418120, 0.396971, 0.817061,
		0.757054, 0.649383, 0.071907,
		-0.502041, 0.648626, -0.572049,
		40.276337, 39.223854, 26.622210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876972, 39.468220, 27.278923>,  <40.627766, 38.769817, 27.022644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876972, 39.468220, 27.278923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528629, 39.522900, 27.090063>,  <40.319626, 39.555710, 26.976748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528629, 39.522900, 27.090063>,  <40.876972, 39.468220, 27.278923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528629, 39.522900, 27.090063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302033, 0.609002, 0.733412,
		0.387798, 0.781300, -0.489064,
		-0.870855, 0.136702, -0.472148,
		40.267372, 39.563911, 26.948420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809132, 40.103188, 27.413998>,  <40.876972, 39.468220, 27.278923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809132, 40.103188, 27.413998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440498, 39.970001, 27.334188>,  <40.219318, 39.890091, 27.286303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440498, 39.970001, 27.334188>,  <40.809132, 40.103188, 27.413998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440498, 39.970001, 27.334188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315410, 0.342733, 0.884901,
		-0.226259, 0.878446, -0.420880,
		-0.921587, -0.332966, -0.199524,
		40.164021, 39.870110, 27.274332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296082, 40.561275, 27.765985>,  <40.809132, 40.103188, 27.413998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296082, 40.561275, 27.765985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024891, 40.288040, 27.657372>,  <39.862175, 40.124100, 27.592203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024891, 40.288040, 27.657372>,  <40.296082, 40.561275, 27.765985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024891, 40.288040, 27.657372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587654, 0.281754, 0.758470,
		-0.441599, 0.673795, -0.592445,
		-0.677977, -0.683092, -0.271536,
		39.821499, 40.083111, 27.575911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664375, 40.916786, 27.761341>,  <40.296082, 40.561275, 27.765985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664375, 40.916786, 27.761341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565231, 40.530628, 27.793802>,  <39.505745, 40.298935, 27.813278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565231, 40.530628, 27.793802>,  <39.664375, 40.916786, 27.761341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565231, 40.530628, 27.793802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572706, 0.213568, 0.791452,
		-0.781393, 0.149691, -0.605820,
		-0.247857, -0.965392, 0.081152,
		39.490875, 40.241009, 27.818148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928680, 40.877178, 27.839085>,  <39.664375, 40.916786, 27.761341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928680, 40.877178, 27.839085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087711, 40.542271, 27.989241>,  <39.183132, 40.341328, 28.079334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087711, 40.542271, 27.989241>,  <38.928680, 40.877178, 27.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087711, 40.542271, 27.989241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625496, 0.052016, 0.778491,
		-0.671329, -0.544319, -0.503025,
		0.397582, -0.837264, 0.375389,
		39.206985, 40.291092, 28.101858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324459, 40.588127, 28.114765>,  <38.928680, 40.877178, 27.839085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324459, 40.588127, 28.114765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638012, 40.399509, 28.276340>,  <38.826145, 40.286339, 28.373285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638012, 40.399509, 28.276340>,  <38.324459, 40.588127, 28.114765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638012, 40.399509, 28.276340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544290, -0.208807, 0.812495,
		-0.298782, -0.856764, -0.420338,
		0.783886, -0.471544, 0.403940,
		38.873177, 40.258045, 28.397522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092369, 39.938759, 28.495012>,  <38.324459, 40.588127, 28.114765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092369, 39.938759, 28.495012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449589, 40.010509, 28.660072>,  <38.663921, 40.053562, 28.759108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449589, 40.010509, 28.660072>,  <38.092369, 39.938759, 28.495012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449589, 40.010509, 28.660072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366464, -0.242160, 0.898367,
		0.261077, -0.953510, -0.150525,
		0.893053, 0.179381, 0.412649,
		38.717506, 40.064323, 28.783867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143280, 39.438457, 28.936914>,  <38.092369, 39.938759, 28.495012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143280, 39.438457, 28.936914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413021, 39.709576, 29.054111>,  <38.574867, 39.872246, 29.124430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413021, 39.709576, 29.054111>,  <38.143280, 39.438457, 28.936914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413021, 39.709576, 29.054111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270535, -0.142414, 0.952118,
		0.687065, -0.721328, 0.087329,
		0.674353, 0.677793, 0.292992,
		38.615326, 39.912914, 29.142010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627266, 39.257027, 29.460821>,  <38.143280, 39.438457, 28.936914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627266, 39.257027, 29.460821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619408, 39.652767, 29.518513>,  <38.614693, 39.890209, 29.553127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619408, 39.652767, 29.518513>,  <38.627266, 39.257027, 29.460821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619408, 39.652767, 29.518513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122896, -0.145555, 0.981688,
		0.992225, 0.001562, 0.124447,
		-0.019648, 0.989349, 0.144231,
		38.613514, 39.949574, 29.561783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817360, 39.361923, 30.183191>,  <38.627266, 39.257027, 29.460821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817360, 39.361923, 30.183191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654934, 39.704685, 30.056183>,  <38.557480, 39.910343, 29.979979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654934, 39.704685, 30.056183>,  <38.817360, 39.361923, 30.183191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654934, 39.704685, 30.056183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324512, 0.189600, 0.926684,
		0.854286, 0.479331, 0.201088,
		-0.406063, 0.856909, -0.317521,
		38.533115, 39.961758, 29.960926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928055, 39.928890, 30.694080>,  <38.817360, 39.361923, 30.183191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928055, 39.928890, 30.694080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587448, 39.999836, 30.496716>,  <38.383083, 40.042404, 30.378298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587448, 39.999836, 30.496716>,  <38.928055, 39.928890, 30.694080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587448, 39.999836, 30.496716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469140, 0.162488, 0.868047,
		0.234136, 0.970638, -0.055152,
		-0.851521, 0.177367, -0.493410,
		38.331993, 40.053047, 30.348692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562695, 40.281792, 31.176607>,  <38.928055, 39.928890, 30.694080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562695, 40.281792, 31.176607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306377, 40.229237, 30.874052>,  <38.152588, 40.197704, 30.692520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306377, 40.229237, 30.874052>,  <38.562695, 40.281792, 31.176607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306377, 40.229237, 30.874052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766687, 0.058601, 0.639341,
		-0.039678, 0.989597, -0.138285,
		-0.640794, -0.131389, -0.756387,
		38.114140, 40.189819, 30.647137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052372, 40.577328, 31.433914>,  <38.562695, 40.281792, 31.176607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052372, 40.577328, 31.433914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886902, 40.359547, 31.142036>,  <37.787621, 40.228878, 30.966909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886902, 40.359547, 31.142036>,  <38.052372, 40.577328, 31.433914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886902, 40.359547, 31.142036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868726, -0.003735, 0.495279,
		-0.272379, 0.838786, -0.471431,
		-0.413672, -0.544448, -0.729692,
		37.762798, 40.196213, 30.923128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326878, 40.912346, 31.218428>,  <38.052372, 40.577328, 31.433914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326878, 40.912346, 31.218428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318481, 40.528728, 31.105438>,  <37.313446, 40.298557, 31.037643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318481, 40.528728, 31.105438>,  <37.326878, 40.912346, 31.218428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318481, 40.528728, 31.105438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922524, -0.090329, 0.375220,
		-0.385368, 0.268465, -0.882846,
		-0.020987, -0.959045, -0.282476,
		37.312183, 40.241016, 31.020695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647293, 40.839371, 30.954359>,  <37.326878, 40.912346, 31.218428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647293, 40.839371, 30.954359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814594, 40.494236, 31.067902>,  <36.914974, 40.287155, 31.136026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814594, 40.494236, 31.067902>,  <36.647293, 40.839371, 30.954359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814594, 40.494236, 31.067902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749280, -0.151087, 0.644788,
		-0.513460, -0.482375, -0.709700,
		0.418256, -0.862837, 0.283856,
		36.940071, 40.235386, 31.153059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056961, 40.485565, 30.977276>,  <36.647293, 40.839371, 30.954359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056961, 40.485565, 30.977276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338810, 40.273201, 31.165590>,  <36.507919, 40.145782, 31.278580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338810, 40.273201, 31.165590>,  <36.056961, 40.485565, 30.977276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338810, 40.273201, 31.165590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643846, -0.199472, 0.738697,
		-0.298270, -0.823620, -0.482375,
		0.704625, -0.530907, 0.470788,
		36.550198, 40.113930, 31.306826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721462, 39.890846, 31.076824>,  <36.056961, 40.485565, 30.977276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721462, 39.890846, 31.076824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021923, 39.893242, 31.340862>,  <36.202202, 39.894680, 31.499285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021923, 39.893242, 31.340862>,  <35.721462, 39.890846, 31.076824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021923, 39.893242, 31.340862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604795, -0.394502, 0.691802,
		0.264551, -0.918876, -0.292712,
		0.751156, 0.005986, 0.660098,
		36.247269, 39.895039, 31.538891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776657, 39.175426, 31.398502>,  <35.721462, 39.890846, 31.076824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776657, 39.175426, 31.398502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949718, 39.436302, 31.647488>,  <36.053555, 39.592827, 31.796879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949718, 39.436302, 31.647488>,  <35.776657, 39.175426, 31.398502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949718, 39.436302, 31.647488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496609, -0.403840, 0.768305,
		0.752456, -0.641530, 0.149162,
		0.432653, 0.652191, 0.622461,
		36.079514, 39.631958, 31.834227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970055, 38.834251, 31.977245>,  <35.776657, 39.175426, 31.398502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970055, 38.834251, 31.977245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968094, 39.202507, 32.133396>,  <35.966919, 39.423462, 32.227085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968094, 39.202507, 32.133396>,  <35.970055, 38.834251, 31.977245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968094, 39.202507, 32.133396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431123, -0.354183, 0.829872,
		0.902280, -0.164233, 0.398646,
		-0.004902, 0.920642, 0.390377,
		35.966625, 39.478699, 32.250507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334194, 38.717663, 32.607265>,  <35.970055, 38.834251, 31.977245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334194, 38.717663, 32.607265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091236, 39.035248, 32.596748>,  <35.945461, 39.225800, 32.590439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091236, 39.035248, 32.596748>,  <36.334194, 38.717663, 32.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091236, 39.035248, 32.596748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482323, -0.342283, 0.806354,
		0.631216, 0.502458, 0.590848,
		-0.607396, 0.793964, -0.026293,
		35.909016, 39.273438, 32.588860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522949, 39.161964, 33.159012>,  <36.334194, 38.717663, 32.607265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522949, 39.161964, 33.159012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131573, 39.184200, 33.079460>,  <35.896748, 39.197540, 33.031731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131573, 39.184200, 33.079460>,  <36.522949, 39.161964, 33.159012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131573, 39.184200, 33.079460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204507, -0.394460, 0.895867,
		-0.028648, 0.917230, 0.397326,
		-0.978446, 0.055591, -0.198881,
		35.838039, 39.200878, 33.019794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206631, 38.889332, 33.481747>,  <36.522949, 39.161964, 33.159012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206631, 38.889332, 33.481747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202187, 38.489368, 33.478477>,  <37.199520, 38.249390, 33.476517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202187, 38.489368, 33.478477>,  <37.206631, 38.889332, 33.481747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202187, 38.489368, 33.478477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927502, -0.007253, -0.373748,
		0.373653, -0.011733, 0.927494,
		-0.011113, -0.999905, -0.008172,
		37.198853, 38.189396, 33.476025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830395, 38.638382, 33.810265>,  <37.206631, 38.889332, 33.481747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830395, 38.638382, 33.810265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706837, 38.332737, 33.583740>,  <37.632702, 38.149349, 33.447826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706837, 38.332737, 33.583740>,  <37.830395, 38.638382, 33.810265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706837, 38.332737, 33.583740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932324, -0.125559, -0.339128,
		0.188027, -0.632743, 0.751187,
		-0.308899, -0.764115, -0.566313,
		37.614166, 38.103504, 33.413845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269688, 38.074673, 33.822479>,  <37.830395, 38.638382, 33.810265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269688, 38.074673, 33.822479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090694, 38.022797, 33.468544>,  <37.983299, 37.991673, 33.256184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090694, 38.022797, 33.468544>,  <38.269688, 38.074673, 33.822479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090694, 38.022797, 33.468544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878895, -0.246588, -0.408334,
		-0.165234, -0.960403, 0.224328,
		-0.447482, -0.129691, -0.884839,
		37.956451, 37.983891, 33.203091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683891, 37.526054, 33.474865>,  <38.269688, 38.074673, 33.822479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683891, 37.526054, 33.474865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473495, 37.694153, 33.179100>,  <38.347256, 37.795010, 33.001640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473495, 37.694153, 33.179100>,  <38.683891, 37.526054, 33.474865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473495, 37.694153, 33.179100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805067, -0.034299, -0.592191,
		-0.274225, -0.906763, -0.320282,
		-0.525992, 0.420243, -0.739411,
		38.315697, 37.820225, 32.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760033, 37.042641, 32.998714>,  <38.683891, 37.526054, 33.474865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760033, 37.042641, 32.998714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686268, 37.392933, 32.820236>,  <38.642010, 37.603107, 32.713150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686268, 37.392933, 32.820236>,  <38.760033, 37.042641, 32.998714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686268, 37.392933, 32.820236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814764, -0.117693, -0.567722,
		-0.549685, -0.468239, -0.691809,
		-0.184408, 0.875729, -0.446198,
		38.630947, 37.655651, 32.686378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747410, 36.912483, 32.300510>,  <38.760033, 37.042641, 32.998714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747410, 36.912483, 32.300510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822193, 37.304241, 32.331070>,  <38.867062, 37.539295, 32.349407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822193, 37.304241, 32.331070>,  <38.747410, 36.912483, 32.300510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822193, 37.304241, 32.331070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643752, -0.063400, -0.762603,
		-0.742044, 0.191757, -0.642339,
		0.186958, 0.979393, 0.076398,
		38.878281, 37.598061, 32.353989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947563, 37.017044, 31.711100>,  <38.747410, 36.912483, 32.300510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947563, 37.017044, 31.711100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085461, 37.348293, 31.887901>,  <39.168201, 37.547043, 31.993982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085461, 37.348293, 31.887901>,  <38.947563, 37.017044, 31.711100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085461, 37.348293, 31.887901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806228, -0.020049, -0.591266,
		-0.480778, 0.560191, -0.674565,
		0.344746, 0.828121, 0.442003,
		39.188885, 37.596729, 32.020504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181026, 37.332394, 31.161280>,  <38.947563, 37.017044, 31.711100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181026, 37.332394, 31.161280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376934, 37.504414, 31.464643>,  <39.494480, 37.607624, 31.646662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376934, 37.504414, 31.464643>,  <39.181026, 37.332394, 31.161280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376934, 37.504414, 31.464643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871634, -0.260932, -0.414931,
		0.019454, 0.864277, -0.502640,
		0.489771, 0.430046, 0.758409,
		39.523865, 37.633427, 31.692165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735649, 37.697098, 30.781456>,  <39.181026, 37.332394, 31.161280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735649, 37.697098, 30.781456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860046, 37.688744, 31.161530>,  <39.934685, 37.683731, 31.389574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860046, 37.688744, 31.161530>,  <39.735649, 37.697098, 30.781456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860046, 37.688744, 31.161530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927987, -0.209224, -0.308326,
		0.205242, 0.977645, -0.045683,
		0.310991, -0.020888, 0.950183,
		39.953342, 37.682476, 31.446585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249779, 38.271809, 30.878922>,  <39.735649, 37.697098, 30.781456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249779, 38.271809, 30.878922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321873, 37.992260, 31.155788>,  <40.365131, 37.824532, 31.321909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321873, 37.992260, 31.155788>,  <40.249779, 38.271809, 30.878922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321873, 37.992260, 31.155788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903960, -0.159731, -0.396665,
		0.387778, 0.697186, 0.602960,
		0.180238, -0.698869, 0.692168,
		40.375942, 37.782600, 31.363440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940208, 38.334957, 31.179943>,  <40.249779, 38.271809, 30.878922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940208, 38.334957, 31.179943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836285, 37.952770, 31.235922>,  <40.773930, 37.723457, 31.269508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836285, 37.952770, 31.235922>,  <40.940208, 38.334957, 31.179943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836285, 37.952770, 31.235922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859916, -0.294857, -0.416657,
		0.439365, 0.012091, 0.898227,
		-0.259811, -0.955465, 0.139947,
		40.758343, 37.666130, 31.277906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582008, 37.936920, 31.352680>,  <40.940208, 38.334957, 31.179943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582008, 37.936920, 31.352680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310429, 37.687000, 31.198458>,  <41.147480, 37.537048, 31.105925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310429, 37.687000, 31.198458>,  <41.582008, 37.936920, 31.352680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310429, 37.687000, 31.198458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640525, -0.247426, -0.726985,
		0.358824, -0.740544, 0.568189,
		-0.678950, -0.624800, -0.385555,
		41.106743, 37.499561, 31.082790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916344, 37.387871, 31.130259>,  <41.582008, 37.936920, 31.352680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916344, 37.387871, 31.130259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578320, 37.382030, 30.916468>,  <41.375507, 37.378525, 30.788193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578320, 37.382030, 30.916468>,  <41.916344, 37.387871, 31.130259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578320, 37.382030, 30.916468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533263, -0.095638, -0.840526,
		-0.038840, -0.995309, 0.088607,
		-0.845058, -0.014605, -0.534476,
		41.324802, 37.377651, 30.756124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988194, 36.842018, 30.715929>,  <41.916344, 37.387871, 31.130259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988194, 36.842018, 30.715929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689762, 37.023422, 30.520916>,  <41.510704, 37.132267, 30.403908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689762, 37.023422, 30.520916>,  <41.988194, 36.842018, 30.715929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689762, 37.023422, 30.520916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480245, -0.140665, -0.865782,
		-0.461221, -0.880079, -0.112850,
		-0.746083, 0.453513, -0.487531,
		41.465939, 37.159477, 30.374657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024017, 36.525826, 30.127224>,  <41.988194, 36.842018, 30.715929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024017, 36.525826, 30.127224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815514, 36.855118, 30.037273>,  <41.690411, 37.052692, 29.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815514, 36.855118, 30.037273>,  <42.024017, 36.525826, 30.127224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815514, 36.855118, 30.037273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373486, -0.016866, -0.927483,
		-0.767329, -0.567451, -0.298675,
		-0.521263, 0.823235, -0.224877,
		41.659134, 37.102089, 29.969810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726982, 36.378601, 29.518969>,  <42.024017, 36.525826, 30.127224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726982, 36.378601, 29.518969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678844, 36.775494, 29.531551>,  <41.649963, 37.013630, 29.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678844, 36.775494, 29.531551>,  <41.726982, 36.378601, 29.518969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678844, 36.775494, 29.531551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239595, 0.059781, -0.969031,
		-0.963386, -0.109080, -0.244928,
		-0.120344, 0.992234, 0.031457,
		41.642742, 37.073162, 29.540989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472992, 36.644386, 28.806520>,  <41.726982, 36.378601, 29.518969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472992, 36.644386, 28.806520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645729, 36.962887, 28.975986>,  <41.749371, 37.153988, 29.077667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645729, 36.962887, 28.975986>,  <41.472992, 36.644386, 28.806520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645729, 36.962887, 28.975986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391827, 0.257465, -0.883280,
		-0.812391, 0.547446, -0.200807,
		0.431847, 0.796250, 0.423667,
		41.775284, 37.201763, 29.103086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242039, 37.250111, 28.411032>,  <41.472992, 36.644386, 28.806520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242039, 37.250111, 28.411032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587490, 37.336884, 28.593060>,  <41.794762, 37.388947, 28.702276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587490, 37.336884, 28.593060>,  <41.242039, 37.250111, 28.411032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587490, 37.336884, 28.593060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350978, 0.389260, -0.851640,
		-0.361887, 0.895220, 0.260038,
		0.863628, 0.216929, 0.455070,
		41.846577, 37.401962, 28.729580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326309, 37.894321, 28.202496>,  <41.242039, 37.250111, 28.411032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326309, 37.894321, 28.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686104, 37.751255, 28.302891>,  <41.901981, 37.665417, 28.363129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686104, 37.751255, 28.302891>,  <41.326309, 37.894321, 28.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686104, 37.751255, 28.302891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299333, 0.085947, -0.950270,
		0.318303, 0.929888, 0.184368,
		0.899490, -0.357661, 0.250989,
		41.955952, 37.643955, 28.378187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828594, 38.321415, 27.903889>,  <41.326309, 37.894321, 28.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828594, 38.321415, 27.903889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021748, 37.984367, 27.999237>,  <42.137642, 37.782139, 28.056446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021748, 37.984367, 27.999237>,  <41.828594, 38.321415, 27.903889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021748, 37.984367, 27.999237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363816, -0.054558, -0.929872,
		0.796529, 0.535746, 0.280211,
		0.482887, -0.842615, 0.238370,
		42.166615, 37.731583, 28.070747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481209, 38.355412, 27.477201>,  <41.828594, 38.321415, 27.903889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481209, 38.355412, 27.477201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398251, 37.980923, 27.590681>,  <42.348476, 37.756229, 27.658768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398251, 37.980923, 27.590681>,  <42.481209, 38.355412, 27.477201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398251, 37.980923, 27.590681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354059, -0.342178, -0.870377,
		0.911938, -0.080065, 0.402442,
		-0.207393, -0.936218, 0.283697,
		42.336033, 37.700058, 27.675791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133064, 37.897820, 27.420347>,  <42.481209, 38.355412, 27.477201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133064, 37.897820, 27.420347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801918, 37.675896, 27.387291>,  <42.603230, 37.542744, 27.367458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801918, 37.675896, 27.387291>,  <43.133064, 37.897820, 27.420347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801918, 37.675896, 27.387291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326554, -0.356912, -0.875201,
		0.456072, -0.751534, 0.476650,
		-0.827865, -0.554807, -0.082639,
		42.553558, 37.509453, 27.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363552, 37.522812, 26.841230>,  <43.133064, 37.897820, 27.420347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363552, 37.522812, 26.841230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985424, 37.405296, 26.897875>,  <42.758549, 37.334785, 26.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985424, 37.405296, 26.897875>,  <43.363552, 37.522812, 26.841230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985424, 37.405296, 26.897875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023643, -0.494798, -0.868686,
		0.325282, -0.817840, 0.474689,
		-0.945321, -0.293792, 0.141613,
		42.701828, 37.317158, 26.940359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359135, 36.841805, 26.816885>,  <43.363552, 37.522812, 26.841230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359135, 36.841805, 26.816885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979603, 36.935482, 26.732145>,  <42.751884, 36.991688, 26.681301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979603, 36.935482, 26.732145>,  <43.359135, 36.841805, 26.816885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979603, 36.935482, 26.732145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030196, -0.600480, -0.799069,
		-0.314350, -0.764575, 0.562680,
		-0.948827, 0.234197, -0.211848,
		42.694954, 37.005741, 26.668591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006386, 36.218811, 26.644156>,  <43.359135, 36.841805, 26.816885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006386, 36.218811, 26.644156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756569, 36.486191, 26.482603>,  <42.606678, 36.646618, 26.385672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756569, 36.486191, 26.482603>,  <43.006386, 36.218811, 26.644156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756569, 36.486191, 26.482603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077634, -0.567713, -0.819557,
		-0.777126, -0.480489, 0.406454,
		-0.624538, 0.668454, -0.403883,
		42.569206, 36.686726, 26.361439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440147, 35.872742, 26.436127>,  <43.006386, 36.218811, 26.644156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440147, 35.872742, 26.436127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440140, 36.200943, 26.207472>,  <42.440136, 36.397865, 26.070278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440140, 36.200943, 26.207472>,  <42.440147, 35.872742, 26.436127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440140, 36.200943, 26.207472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157419, -0.564515, -0.810273,
		-0.987532, 0.089969, 0.129176,
		-0.000022, 0.820505, -0.571639,
		42.440132, 36.447094, 26.035980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879318, 35.901493, 25.985676>,  <42.440147, 35.872742, 26.436127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879318, 35.901493, 25.985676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148159, 36.127144, 25.793825>,  <42.309464, 36.262535, 25.678715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148159, 36.127144, 25.793825>,  <41.879318, 35.901493, 25.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148159, 36.127144, 25.793825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208116, -0.477713, -0.853509,
		-0.710609, 0.673464, -0.203669,
		0.672103, 0.564125, -0.479626,
		42.349789, 36.296383, 25.649937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518787, 36.037727, 25.327188>,  <41.879318, 35.901493, 25.985676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518787, 36.037727, 25.327188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886406, 36.174618, 25.248968>,  <42.106976, 36.256752, 25.202036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886406, 36.174618, 25.248968>,  <41.518787, 36.037727, 25.327188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886406, 36.174618, 25.248968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028930, -0.436226, -0.899372,
		-0.393091, 0.832220, -0.391011,
		0.919044, 0.342223, -0.195552,
		42.162121, 36.277287, 25.190302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557743, 36.208069, 24.540821>,  <41.518787, 36.037727, 25.327188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557743, 36.208069, 24.540821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933254, 36.137421, 24.659140>,  <42.158562, 36.095032, 24.730131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933254, 36.137421, 24.659140>,  <41.557743, 36.208069, 24.540821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933254, 36.137421, 24.659140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183960, -0.468963, -0.863848,
		0.291288, 0.865379, -0.407763,
		0.938781, -0.176616, 0.295798,
		42.214890, 36.084435, 24.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919216, 36.392853, 23.962715>,  <41.557743, 36.208069, 24.540821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919216, 36.392853, 23.962715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170036, 36.151104, 24.159304>,  <42.320530, 36.006054, 24.277256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170036, 36.151104, 24.159304>,  <41.919216, 36.392853, 23.962715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170036, 36.151104, 24.159304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419697, -0.269401, -0.866762,
		0.656249, 0.749773, 0.084725,
		0.627050, -0.604370, 0.491472,
		42.358150, 35.969791, 24.306746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463203, 36.487831, 23.519577>,  <41.919216, 36.392853, 23.962715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463203, 36.487831, 23.519577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538692, 36.155876, 23.729593>,  <42.583984, 35.956703, 23.855604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538692, 36.155876, 23.729593>,  <42.463203, 36.487831, 23.519577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538692, 36.155876, 23.729593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385560, -0.429103, -0.816832,
		0.903177, 0.356588, 0.238992,
		0.188720, -0.829889, 0.525042,
		42.595310, 35.906910, 23.887106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074036, 36.350830, 23.342165>,  <42.463203, 36.487831, 23.519577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074036, 36.350830, 23.342165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944828, 35.995346, 23.472303>,  <42.867302, 35.782055, 23.550386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944828, 35.995346, 23.472303>,  <43.074036, 36.350830, 23.342165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944828, 35.995346, 23.472303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378728, -0.436436, -0.816143,
		0.867309, -0.140410, 0.477557,
		-0.323018, -0.888712, 0.325347,
		42.847923, 35.728733, 23.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623863, 35.963078, 23.372618>,  <43.074036, 36.350830, 23.342165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623863, 35.963078, 23.372618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324562, 35.699413, 23.342621>,  <43.144981, 35.541214, 23.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324562, 35.699413, 23.342621>,  <43.623863, 35.963078, 23.372618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324562, 35.699413, 23.342621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445851, -0.415937, -0.792599,
		0.491261, -0.626498, 0.605114,
		-0.748251, -0.659164, -0.074992,
		43.100086, 35.501663, 23.320124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863628, 35.291023, 23.358507>,  <43.623863, 35.963078, 23.372618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863628, 35.291023, 23.358507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510689, 35.221798, 23.183462>,  <43.298923, 35.180264, 23.078436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510689, 35.221798, 23.183462>,  <43.863628, 35.291023, 23.358507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510689, 35.221798, 23.183462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450642, -0.578635, -0.679782,
		-0.135569, -0.797013, 0.588550,
		-0.882351, -0.173068, -0.437612,
		43.245983, 35.169876, 23.052179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065559, 34.711414, 22.948437>,  <43.863628, 35.291023, 23.358507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065559, 34.711414, 22.948437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689137, 34.770786, 22.826855>,  <43.463284, 34.806408, 22.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689137, 34.770786, 22.826855>,  <44.065559, 34.711414, 22.948437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689137, 34.770786, 22.826855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186331, -0.522495, -0.832034,
		-0.282312, -0.839624, 0.464039,
		-0.941053, 0.148428, -0.303955,
		43.406822, 34.815315, 22.735668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657372, 34.109734, 22.690454>,  <44.065559, 34.711414, 22.948437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657372, 34.109734, 22.690454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513302, 34.435867, 22.509121>,  <43.426861, 34.631546, 22.400320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513302, 34.435867, 22.509121>,  <43.657372, 34.109734, 22.690454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513302, 34.435867, 22.509121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187596, -0.412721, -0.891330,
		-0.913829, -0.406077, -0.004302,
		-0.360173, 0.815330, -0.453335,
		43.405251, 34.680466, 22.373121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304523, 33.791538, 22.131779>,  <43.657372, 34.109734, 22.690454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304523, 33.791538, 22.131779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353325, 34.172955, 22.021601>,  <43.382607, 34.401806, 21.955494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353325, 34.172955, 22.021601>,  <43.304523, 33.791538, 22.131779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353325, 34.172955, 22.021601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330306, -0.300708, -0.894691,
		-0.935955, 0.018177, -0.351649,
		0.122007, 0.953543, -0.275445,
		43.389927, 34.459019, 21.938967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966496, 33.457348, 22.282499>,  <43.304523, 33.791538, 22.131779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966496, 33.457348, 22.282499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309757, 33.278034, 22.382584>,  <44.515717, 33.170444, 22.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309757, 33.278034, 22.382584>,  <43.966496, 33.457348, 22.282499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309757, 33.278034, 22.382584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202695, 0.151925, 0.967385,
		-0.471677, -0.880886, 0.039510,
		0.858158, -0.448285, 0.250210,
		44.567204, 33.143547, 22.457647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820351, 33.020515, 22.808838>,  <43.966496, 33.457348, 22.282499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820351, 33.020515, 22.808838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204571, 33.125458, 22.845745>,  <44.435104, 33.188423, 22.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204571, 33.125458, 22.845745>,  <43.820351, 33.020515, 22.808838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204571, 33.125458, 22.845745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121492, 0.097414, 0.987801,
		0.250170, -0.960041, 0.125445,
		0.960550, 0.262358, 0.092267,
		44.492737, 33.204166, 22.873425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115711, 32.554703, 23.286680>,  <43.820351, 33.020515, 22.808838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115711, 32.554703, 23.286680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353390, 32.876369, 23.280237>,  <44.495995, 33.069370, 23.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353390, 32.876369, 23.280237>,  <44.115711, 32.554703, 23.286680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353390, 32.876369, 23.280237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114311, 0.104251, 0.987960,
		0.796159, -0.585196, 0.153870,
		0.594191, 0.804162, -0.016106,
		44.531647, 33.117619, 23.275406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694618, 32.477543, 23.732132>,  <44.115711, 32.554703, 23.286680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694618, 32.477543, 23.732132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681385, 32.872841, 23.672430>,  <44.673447, 33.110020, 23.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.681385, 32.872841, 23.672430>,  <44.694618, 32.477543, 23.732132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681385, 32.872841, 23.672430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008864, 0.149041, 0.988791,
		0.999413, 0.034033, 0.003829,
		-0.033081, 0.988245, -0.149255,
		44.671459, 33.169315, 23.627653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918819, 32.695377, 24.309780>,  <44.694618, 32.477543, 23.732132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918819, 32.695377, 24.309780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757763, 33.037270, 24.178745>,  <44.661129, 33.242405, 24.100124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757763, 33.037270, 24.178745>,  <44.918819, 32.695377, 24.309780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757763, 33.037270, 24.178745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115555, 0.307552, 0.944489,
		0.908033, 0.418148, -0.025066,
		-0.402645, 0.854730, -0.327587,
		44.636971, 33.293690, 24.080469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260891, 33.224216, 24.704321>,  <44.918819, 32.695377, 24.309780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260891, 33.224216, 24.704321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917122, 33.384338, 24.577110>,  <44.710861, 33.480412, 24.500784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917122, 33.384338, 24.577110>,  <45.260891, 33.224216, 24.704321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917122, 33.384338, 24.577110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239759, 0.233831, 0.942252,
		0.451556, 0.886045, -0.104982,
		-0.859425, 0.400309, -0.318025,
		44.659294, 33.504433, 24.481703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221584, 33.803234, 25.176086>,  <45.260891, 33.224216, 24.704321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221584, 33.803234, 25.176086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857574, 33.778881, 25.012060>,  <44.639168, 33.764267, 24.913645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857574, 33.778881, 25.012060>,  <45.221584, 33.803234, 25.176086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857574, 33.778881, 25.012060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411138, 0.259390, 0.873889,
		0.053159, 0.963851, -0.261083,
		-0.910022, -0.060886, -0.410065,
		44.584568, 33.760616, 24.889040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853790, 34.452530, 25.311209>,  <45.221584, 33.803234, 25.176086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853790, 34.452530, 25.311209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570354, 34.183987, 25.224335>,  <44.400291, 34.022861, 25.172211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570354, 34.183987, 25.224335>,  <44.853790, 34.452530, 25.311209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570354, 34.183987, 25.224335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597867, 0.407766, 0.690132,
		-0.374768, 0.618870, -0.690325,
		-0.708593, -0.671362, -0.217185,
		44.357777, 33.982578, 25.159180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173923, 34.857601, 25.483377>,  <44.853790, 34.452530, 25.311209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173923, 34.857601, 25.483377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064011, 34.473213, 25.470499>,  <43.998062, 34.242580, 25.462772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064011, 34.473213, 25.470499>,  <44.173923, 34.857601, 25.483377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064011, 34.473213, 25.470499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513305, 0.118300, 0.850013,
		-0.813026, 0.250096, -0.525776,
		-0.274784, -0.960967, -0.032194,
		43.981575, 34.184921, 25.460840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599205, 34.857418, 25.867262>,  <44.173923, 34.857601, 25.483377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599205, 34.857418, 25.867262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653717, 34.461193, 25.861532>,  <43.686424, 34.223457, 25.858093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653717, 34.461193, 25.861532>,  <43.599205, 34.857418, 25.867262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653717, 34.461193, 25.861532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453293, -0.075209, 0.888183,
		-0.880882, -0.114547, -0.459266,
		0.136280, -0.990566, -0.014327,
		43.694603, 34.164024, 25.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012314, 34.588875, 26.003092>,  <43.599205, 34.857418, 25.867262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012314, 34.588875, 26.003092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247036, 34.277775, 26.093204>,  <43.387871, 34.091114, 26.147272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247036, 34.277775, 26.093204>,  <43.012314, 34.588875, 26.003092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247036, 34.277775, 26.093204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555969, -0.184731, 0.810415,
		-0.588688, -0.600809, -0.540809,
		0.586809, -0.777755, 0.225283,
		43.423080, 34.044449, 26.160789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587307, 34.148853, 26.276493>,  <43.012314, 34.588875, 26.003092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587307, 34.148853, 26.276493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934361, 34.033577, 26.438560>,  <43.142593, 33.964413, 26.535801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934361, 34.033577, 26.438560>,  <42.587307, 34.148853, 26.276493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934361, 34.033577, 26.438560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454956, -0.131423, 0.880763,
		-0.200583, -0.948510, -0.245143,
		0.867630, -0.288196, 0.405169,
		43.194649, 33.947121, 26.560112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471535, 33.487175, 26.539047>,  <42.587307, 34.148853, 26.276493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471535, 33.487175, 26.539047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779480, 33.673302, 26.713764>,  <42.964249, 33.784977, 26.818594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779480, 33.673302, 26.713764>,  <42.471535, 33.487175, 26.539047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779480, 33.673302, 26.713764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360935, -0.246995, 0.899288,
		0.526341, -0.849983, -0.022203,
		0.769864, 0.465319, 0.436792,
		43.010441, 33.812897, 26.844803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537434, 33.070656, 27.161171>,  <42.471535, 33.487175, 26.539047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537434, 33.070656, 27.161171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719727, 33.421642, 27.220982>,  <42.829102, 33.632233, 27.256868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719727, 33.421642, 27.220982>,  <42.537434, 33.070656, 27.161171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719727, 33.421642, 27.220982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325077, 0.007688, 0.945657,
		0.828632, -0.479577, 0.288748,
		0.455735, 0.877466, 0.149529,
		42.856445, 33.684883, 27.265841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635098, 33.021702, 27.773239>,  <42.537434, 33.070656, 27.161171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635098, 33.021702, 27.773239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705368, 33.412987, 27.728994>,  <42.747532, 33.647758, 27.702448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705368, 33.412987, 27.728994>,  <42.635098, 33.021702, 27.773239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705368, 33.412987, 27.728994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423668, 0.176549, 0.888446,
		0.888618, -0.109217, 0.445454,
		0.175678, 0.978214, -0.110612,
		42.758072, 33.706451, 27.695810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925674, 33.340637, 28.501150>,  <42.635098, 33.021702, 27.773239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925674, 33.340637, 28.501150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763779, 33.638668, 28.289093>,  <42.666641, 33.817486, 28.161860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763779, 33.638668, 28.289093>,  <42.925674, 33.340637, 28.501150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763779, 33.638668, 28.289093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505183, 0.301056, 0.808799,
		0.762217, 0.595172, 0.254550,
		-0.404740, 0.745075, -0.530141,
		42.642357, 33.862190, 28.130051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841198, 33.904617, 29.024551>,  <42.925674, 33.340637, 28.501150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841198, 33.904617, 29.024551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608696, 34.053917, 28.735325>,  <42.469196, 34.143497, 28.561789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608696, 34.053917, 28.735325>,  <42.841198, 33.904617, 29.024551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608696, 34.053917, 28.735325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569506, 0.448084, 0.689118,
		0.581209, 0.812344, -0.047881,
		-0.581256, 0.373253, -0.723065,
		42.434319, 34.165894, 28.518406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908382, 34.529728, 29.089201>,  <42.841198, 33.904617, 29.024551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908382, 34.529728, 29.089201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557125, 34.454357, 28.913307>,  <42.346371, 34.409134, 28.807772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557125, 34.454357, 28.913307>,  <42.908382, 34.529728, 29.089201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557125, 34.454357, 28.913307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478140, 0.376260, 0.793606,
		0.015917, 0.907151, -0.420504,
		-0.878140, -0.188428, -0.439734,
		42.293682, 34.397827, 28.781387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443558, 35.191753, 29.063293>,  <42.908382, 34.529728, 29.089201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443558, 35.191753, 29.063293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197308, 34.879333, 29.021395>,  <42.049557, 34.691883, 28.996256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197308, 34.879333, 29.021395>,  <42.443558, 35.191753, 29.063293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197308, 34.879333, 29.021395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644843, 0.422882, 0.636670,
		-0.452975, 0.459494, -0.763989,
		-0.615623, -0.781049, -0.104747,
		42.012619, 34.645020, 28.989971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768326, 35.543461, 28.836105>,  <42.443558, 35.191753, 29.063293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768326, 35.543461, 28.836105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706280, 35.177162, 28.984352>,  <41.669052, 34.957382, 29.073299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706280, 35.177162, 28.984352>,  <41.768326, 35.543461, 28.836105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706280, 35.177162, 28.984352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571849, 0.389144, 0.722188,
		-0.805561, -0.099915, -0.584028,
		-0.155113, -0.915742, 0.370616,
		41.659744, 34.902439, 29.095537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076687, 35.572853, 29.065897>,  <41.768326, 35.543461, 28.836105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076687, 35.572853, 29.065897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189140, 35.231251, 29.241005>,  <41.256611, 35.026291, 29.346069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189140, 35.231251, 29.241005>,  <41.076687, 35.572853, 29.065897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189140, 35.231251, 29.241005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487153, 0.266027, 0.831813,
		-0.826829, -0.447111, -0.341241,
		0.281133, -0.854003, 0.437770,
		41.273479, 34.975048, 29.372335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482147, 35.291286, 29.368834>,  <41.076687, 35.572853, 29.065897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482147, 35.291286, 29.368834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806484, 35.144020, 29.550817>,  <41.001087, 35.055660, 29.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806484, 35.144020, 29.550817>,  <40.482147, 35.291286, 29.368834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806484, 35.144020, 29.550817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383515, 0.252961, 0.888216,
		-0.442097, -0.894687, 0.063915,
		0.810843, -0.368165, 0.454960,
		41.049736, 35.033569, 29.687305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127769, 35.036343, 29.948727>,  <40.482147, 35.291286, 29.368834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127769, 35.036343, 29.948727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519745, 35.046696, 30.027771>,  <40.754929, 35.052906, 30.075197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519745, 35.046696, 30.027771>,  <40.127769, 35.036343, 29.948727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519745, 35.046696, 30.027771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199230, 0.152900, 0.967951,
		-0.005162, -0.987903, 0.154989,
		0.979939, 0.025882, 0.197609,
		40.813728, 35.054462, 30.087053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127567, 34.598061, 30.515444>,  <40.127769, 35.036343, 29.948727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127567, 34.598061, 30.515444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466915, 34.809704, 30.522486>,  <40.670525, 34.936687, 30.526711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466915, 34.809704, 30.522486>,  <40.127567, 34.598061, 30.515444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466915, 34.809704, 30.522486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078535, 0.092897, 0.992574,
		0.523541, -0.843456, 0.120365,
		0.848374, 0.529106, 0.017605,
		40.721428, 34.968437, 30.527767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522331, 34.282101, 31.073303>,  <40.127567, 34.598061, 30.515444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522331, 34.282101, 31.073303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676479, 34.646301, 31.013327>,  <40.768967, 34.864822, 30.977341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676479, 34.646301, 31.013327>,  <40.522331, 34.282101, 31.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676479, 34.646301, 31.013327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078278, 0.129649, 0.988465,
		0.919436, -0.392662, -0.021310,
		0.385370, 0.910498, -0.149940,
		40.792091, 34.919453, 30.968344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011692, 34.297531, 31.656548>,  <40.522331, 34.282101, 31.073303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011692, 34.297531, 31.656548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940247, 34.669056, 31.526680>,  <40.897381, 34.891972, 31.448759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940247, 34.669056, 31.526680>,  <41.011692, 34.297531, 31.656548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940247, 34.669056, 31.526680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008419, 0.331404, 0.943451,
		0.983884, 0.165777, -0.067012,
		-0.178611, 0.928811, -0.324667,
		40.886662, 34.947701, 31.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540604, 34.709793, 31.905497>,  <41.011692, 34.297531, 31.656548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540604, 34.709793, 31.905497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223965, 34.945457, 31.840675>,  <41.033981, 35.086857, 31.801783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223965, 34.945457, 31.840675>,  <41.540604, 34.709793, 31.905497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223965, 34.945457, 31.840675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043354, 0.318697, 0.946865,
		0.609501, 0.742511, -0.277823,
		-0.791599, 0.589159, -0.162055,
		40.986485, 35.122204, 31.792059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724594, 35.339851, 32.294830>,  <41.540604, 34.709793, 31.905497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724594, 35.339851, 32.294830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332909, 35.391373, 32.232147>,  <41.097897, 35.422283, 32.194538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332909, 35.391373, 32.232147>,  <41.724594, 35.339851, 32.294830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332909, 35.391373, 32.232147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090568, 0.413642, 0.905924,
		0.181502, 0.901283, -0.393378,
		-0.979211, 0.128799, -0.156704,
		41.039146, 35.430012, 32.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446285, 36.073318, 32.348202>,  <41.724594, 35.339851, 32.294830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446285, 36.073318, 32.348202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130600, 35.840904, 32.427750>,  <40.941189, 35.701458, 32.475479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130600, 35.840904, 32.427750>,  <41.446285, 36.073318, 32.348202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130600, 35.840904, 32.427750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129044, 0.473494, 0.871293,
		-0.600413, 0.661970, -0.448665,
		-0.789210, -0.581033, 0.198869,
		40.893837, 35.666595, 32.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985950, 36.496632, 32.754974>,  <41.446285, 36.073318, 32.348202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985950, 36.496632, 32.754974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857246, 36.124821, 32.827023>,  <40.780025, 35.901733, 32.870251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857246, 36.124821, 32.827023>,  <40.985950, 36.496632, 32.754974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857246, 36.124821, 32.827023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015970, 0.195538, 0.980566,
		-0.946688, 0.312626, -0.077760,
		-0.321756, -0.929532, 0.180121,
		40.760719, 35.845963, 32.881058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253773, 36.488701, 33.112736>,  <40.985950, 36.496632, 32.754974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253773, 36.488701, 33.112736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422691, 36.134232, 33.189014>,  <40.524044, 35.921551, 33.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422691, 36.134232, 33.189014>,  <40.253773, 36.488701, 33.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422691, 36.134232, 33.189014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159731, 0.134336, 0.977978,
		-0.892272, -0.443459, -0.084819,
		0.422298, -0.886170, 0.190698,
		40.549381, 35.868382, 33.246223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809948, 36.275539, 33.624634>,  <40.253773, 36.488701, 33.112736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809948, 36.275539, 33.624634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130665, 36.037807, 33.649620>,  <40.323093, 35.895168, 33.664612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130665, 36.037807, 33.649620>,  <39.809948, 36.275539, 33.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130665, 36.037807, 33.649620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087703, -0.013633, 0.996053,
		-0.591131, -0.804107, -0.063055,
		0.801794, -0.594328, 0.062464,
		40.371204, 35.859509, 33.668358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617886, 35.802116, 34.085899>,  <39.809948, 36.275539, 33.624634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617886, 35.802116, 34.085899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016773, 35.831871, 34.088024>,  <40.256104, 35.849724, 34.089298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016773, 35.831871, 34.088024>,  <39.617886, 35.802116, 34.085899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016773, 35.831871, 34.088024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001592, -0.092453, 0.995716,
		0.074561, -0.992935, -0.092314,
		0.997215, 0.074389, 0.005313,
		40.315937, 35.854187, 34.089619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960838, 35.288235, 34.517399>,  <39.617886, 35.802116, 34.085899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960838, 35.288235, 34.517399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240120, 35.573032, 34.487503>,  <40.407688, 35.743912, 34.469566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240120, 35.573032, 34.487503>,  <39.960838, 35.288235, 34.517399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240120, 35.573032, 34.487503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049633, 0.056001, 0.997196,
		0.714179, -0.699953, 0.003762,
		0.698201, 0.711990, -0.074736,
		40.449581, 35.786629, 34.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302605, 35.120796, 35.070347>,  <39.960838, 35.288235, 34.517399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302605, 35.120796, 35.070347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474819, 35.471447, 34.984394>,  <40.578148, 35.681835, 34.932823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474819, 35.471447, 34.984394>,  <40.302605, 35.120796, 35.070347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474819, 35.471447, 34.984394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209224, 0.134664, 0.968551,
		0.877991, -0.461951, -0.125433,
		0.430532, 0.876623, -0.214885,
		40.603977, 35.734432, 34.919930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951500, 35.079403, 35.462479>,  <40.302605, 35.120796, 35.070347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951500, 35.079403, 35.462479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889423, 35.462875, 35.367107>,  <40.852177, 35.692959, 35.309887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889423, 35.462875, 35.367107>,  <40.951500, 35.079403, 35.462479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889423, 35.462875, 35.367107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316979, 0.276911, 0.907108,
		0.935650, 0.065198, -0.346856,
		-0.155190, 0.958681, -0.238426,
		40.842865, 35.750481, 35.295578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462265, 35.486214, 35.895546>,  <40.951500, 35.079403, 35.462479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462265, 35.486214, 35.895546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207539, 35.773903, 35.784412>,  <41.054703, 35.946514, 35.717731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207539, 35.773903, 35.784412>,  <41.462265, 35.486214, 35.895546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207539, 35.773903, 35.784412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153027, 0.471080, 0.868715,
		0.755680, 0.510693, -0.410050,
		-0.636813, 0.719219, -0.277836,
		41.016495, 35.989670, 35.701061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775154, 36.041084, 36.245262>,  <41.462265, 35.486214, 35.895546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775154, 36.041084, 36.245262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410408, 36.170799, 36.144588>,  <41.191563, 36.248627, 36.084183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410408, 36.170799, 36.144588>,  <41.775154, 36.041084, 36.245262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410408, 36.170799, 36.144588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047861, 0.524959, 0.849781,
		0.407697, 0.786929, -0.463169,
		-0.911862, 0.324285, -0.251688,
		41.136848, 36.268085, 36.069080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664238, 36.839699, 36.241093>,  <41.775154, 36.041084, 36.245262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664238, 36.839699, 36.241093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314060, 36.660332, 36.313217>,  <41.103954, 36.552711, 36.356491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314060, 36.660332, 36.313217>,  <41.664238, 36.839699, 36.241093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314060, 36.660332, 36.313217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081058, 0.504010, 0.859886,
		-0.476471, 0.738168, -0.477582,
		-0.875446, -0.448422, 0.180311,
		41.051426, 36.525806, 36.367310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268318, 37.330914, 36.640465>,  <41.664238, 36.839699, 36.241093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268318, 37.330914, 36.640465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100452, 36.974075, 36.707458>,  <40.999733, 36.759972, 36.747654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100452, 36.974075, 36.707458>,  <41.268318, 37.330914, 36.640465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100452, 36.974075, 36.707458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207820, 0.274050, 0.938993,
		-0.883569, 0.359255, -0.300403,
		-0.419664, -0.892094, 0.167482,
		40.974552, 36.706448, 36.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725433, 37.469273, 36.933182>,  <41.268318, 37.330914, 36.640465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725433, 37.469273, 36.933182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772148, 37.087368, 37.042580>,  <40.800179, 36.858227, 37.108219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772148, 37.087368, 37.042580>,  <40.725433, 37.469273, 36.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772148, 37.087368, 37.042580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468501, 0.189849, 0.862824,
		-0.875710, -0.228901, -0.425132,
		0.116790, -0.954758, 0.273493,
		40.807186, 36.800941, 37.124626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055553, 37.298058, 37.150917>,  <40.725433, 37.469273, 36.933182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055553, 37.298058, 37.150917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293148, 37.014782, 37.303566>,  <40.435707, 36.844814, 37.395157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293148, 37.014782, 37.303566>,  <40.055553, 37.298058, 37.150917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293148, 37.014782, 37.303566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336087, 0.212545, 0.917535,
		-0.730904, -0.673267, -0.111765,
		0.593990, -0.708193, 0.381626,
		40.471344, 36.802322, 37.418053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682102, 36.885811, 37.642677>,  <40.055553, 37.298058, 37.150917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682102, 36.885811, 37.642677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060429, 36.806217, 37.745308>,  <40.287426, 36.758461, 37.806889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060429, 36.806217, 37.745308>,  <39.682102, 36.885811, 37.642677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060429, 36.806217, 37.745308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198658, 0.270430, 0.942020,
		-0.256830, -0.941952, 0.216249,
		0.945819, -0.198980, 0.256581,
		40.344173, 36.746525, 37.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623531, 36.405708, 38.097786>,  <39.682102, 36.885811, 37.642677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623531, 36.405708, 38.097786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946503, 36.634655, 38.154995>,  <40.140285, 36.772022, 38.189320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946503, 36.634655, 38.154995>,  <39.623531, 36.405708, 38.097786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946503, 36.634655, 38.154995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263826, 0.133476, 0.955290,
		0.527684, -0.809064, 0.258777,
		0.807431, 0.572364, 0.143019,
		40.188732, 36.806362, 38.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773643, 36.373306, 38.885387>,  <39.623531, 36.405708, 38.097786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773643, 36.373306, 38.885387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997505, 36.677776, 38.754295>,  <40.131821, 36.860458, 38.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997505, 36.677776, 38.754295>,  <39.773643, 36.373306, 38.885387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997505, 36.677776, 38.754295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096850, 0.452827, 0.886323,
		0.823050, -0.464290, 0.327144,
		0.559651, 0.761172, -0.327732,
		40.165401, 36.906128, 38.655975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206345, 36.489651, 39.407215>,  <39.773643, 36.373306, 38.885387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206345, 36.489651, 39.407215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216560, 36.823334, 39.186871>,  <40.222691, 37.023544, 39.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216560, 36.823334, 39.186871>,  <40.206345, 36.489651, 39.407215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216560, 36.823334, 39.186871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161565, 0.547236, 0.821236,
		0.986532, 0.068028, 0.148753,
		0.025536, 0.834209, -0.550857,
		40.224220, 37.073597, 39.021614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549397, 36.869476, 39.823853>,  <40.206345, 36.489651, 39.407215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549397, 36.869476, 39.823853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368629, 37.115917, 39.565800>,  <40.260170, 37.263783, 39.410969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368629, 37.115917, 39.565800>,  <40.549397, 36.869476, 39.823853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368629, 37.115917, 39.565800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188173, 0.641082, 0.744047,
		0.871987, 0.457644, -0.173782,
		-0.451917, 0.616098, -0.645131,
		40.233055, 37.300747, 39.372261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814613, 37.513077, 39.970661>,  <40.549397, 36.869476, 39.823853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814613, 37.513077, 39.970661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461037, 37.552181, 39.787758>,  <40.248890, 37.575645, 39.678017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461037, 37.552181, 39.787758>,  <40.814613, 37.513077, 39.970661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461037, 37.552181, 39.787758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286511, 0.659570, 0.694895,
		0.369528, 0.745258, -0.555013,
		-0.883946, 0.097766, -0.457254,
		40.195854, 37.581512, 39.650581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545868, 38.265797, 39.938412>,  <40.814613, 37.513077, 39.970661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545868, 38.265797, 39.938412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236267, 38.013023, 39.954269>,  <40.050507, 37.861359, 39.963783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236267, 38.013023, 39.954269>,  <40.545868, 38.265797, 39.938412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236267, 38.013023, 39.954269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389198, 0.524211, 0.757448,
		-0.499438, 0.570842, -0.651691,
		-0.774007, -0.631935, 0.039640,
		40.004066, 37.823444, 39.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882408, 38.531227, 39.863914>,  <40.545868, 38.265797, 39.938412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882408, 38.531227, 39.863914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801342, 38.199425, 40.072086>,  <39.752705, 38.000343, 40.196991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801342, 38.199425, 40.072086>,  <39.882408, 38.531227, 39.863914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801342, 38.199425, 40.072086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729688, 0.482351, 0.484657,
		-0.653057, -0.281532, -0.703034,
		-0.202663, -0.829504, 0.520433,
		39.740543, 37.950573, 40.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103321, 38.419300, 39.784565>,  <39.882408, 38.531227, 39.863914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103321, 38.419300, 39.784565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239227, 38.242359, 40.116562>,  <39.320770, 38.136192, 40.315758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239227, 38.242359, 40.116562>,  <39.103321, 38.419300, 39.784565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239227, 38.242359, 40.116562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526551, 0.641751, 0.557583,
		-0.779296, -0.626479, -0.014877,
		0.339766, -0.442356, 0.829988,
		39.341156, 38.109653, 40.365559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502106, 38.438168, 40.283596>,  <39.103321, 38.419300, 39.784565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502106, 38.438168, 40.283596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833038, 38.389645, 40.502979>,  <39.031597, 38.360531, 40.634609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833038, 38.389645, 40.502979>,  <38.502106, 38.438168, 40.283596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833038, 38.389645, 40.502979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377230, 0.603466, 0.702514,
		-0.416193, -0.788108, 0.453508,
		0.827333, -0.121305, 0.548457,
		39.081238, 38.353252, 40.667515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319962, 38.265614, 40.978603>,  <38.502106, 38.438168, 40.283596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319962, 38.265614, 40.978603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661026, 38.472275, 40.947525>,  <38.865665, 38.596272, 40.928879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661026, 38.472275, 40.947525>,  <38.319962, 38.265614, 40.978603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661026, 38.472275, 40.947525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344026, 0.667137, 0.660738,
		0.393207, -0.536656, 0.746584,
		0.852663, 0.516652, -0.077699,
		38.916824, 38.627270, 40.924213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622353, 38.248623, 41.592937>,  <38.319962, 38.265614, 40.978603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622353, 38.248623, 41.592937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688972, 38.585026, 41.387035>,  <38.728947, 38.786865, 41.263496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688972, 38.585026, 41.387035>,  <38.622353, 38.248623, 41.592937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688972, 38.585026, 41.387035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277696, 0.540920, 0.793908,
		0.946121, 0.010719, 0.323635,
		0.166551, 0.841005, -0.514753,
		38.738937, 38.837326, 41.232609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929409, 38.654171, 42.017662>,  <38.622353, 38.248623, 41.592937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929409, 38.654171, 42.017662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795753, 38.914303, 41.744774>,  <38.715561, 39.070381, 41.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795753, 38.914303, 41.744774>,  <38.929409, 38.654171, 42.017662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795753, 38.914303, 41.744774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244422, 0.639271, 0.729103,
		0.910278, 0.410374, -0.054653,
		-0.334143, 0.650328, -0.682219,
		38.695511, 39.109402, 41.540108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298538, 39.246578, 42.085293>,  <38.929409, 38.654171, 42.017662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298538, 39.246578, 42.085293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960602, 39.355019, 41.900791>,  <38.757839, 39.420082, 41.790089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960602, 39.355019, 41.900791>,  <39.298538, 39.246578, 42.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960602, 39.355019, 41.900791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133579, 0.727940, 0.672503,
		0.518079, 0.629770, -0.578779,
		-0.844838, 0.271097, -0.461254,
		38.707150, 39.436348, 41.762417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232628, 39.908806, 42.157078>,  <39.298538, 39.246578, 42.085293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232628, 39.908806, 42.157078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865063, 39.804470, 42.038715>,  <38.644524, 39.741867, 41.967697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865063, 39.804470, 42.038715>,  <39.232628, 39.908806, 42.157078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865063, 39.804470, 42.038715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392952, 0.670867, 0.628908,
		0.034473, 0.694190, -0.718966,
		-0.918913, -0.260839, -0.295910,
		38.589390, 39.726219, 41.949944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883785, 40.616089, 41.993206>,  <39.232628, 39.908806, 42.157078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883785, 40.616089, 41.993206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581425, 40.355808, 42.022057>,  <38.400009, 40.199642, 42.039368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581425, 40.355808, 42.022057>,  <38.883785, 40.616089, 41.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581425, 40.355808, 42.022057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420420, 0.566913, 0.708418,
		-0.501855, 0.505173, -0.702098,
		-0.755902, -0.650700, 0.072123,
		38.354652, 40.160599, 42.043694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242805, 41.061687, 42.172092>,  <38.883785, 40.616089, 41.993206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242805, 41.061687, 42.172092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135132, 40.691376, 42.278286>,  <38.070526, 40.469189, 42.342003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135132, 40.691376, 42.278286>,  <38.242805, 41.061687, 42.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135132, 40.691376, 42.278286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434849, 0.362788, 0.824191,
		-0.859329, 0.106417, -0.500229,
		-0.269186, -0.925776, 0.265479,
		38.054375, 40.413643, 42.357929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534485, 40.832672, 41.948349>,  <38.242805, 41.061687, 42.172092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534485, 40.832672, 41.948349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698154, 40.704887, 42.290230>,  <37.796356, 40.628216, 42.495358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698154, 40.704887, 42.290230>,  <37.534485, 40.832672, 41.948349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698154, 40.704887, 42.290230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519679, 0.688349, 0.506072,
		-0.750008, -0.651243, 0.115635,
		0.409173, -0.319465, 0.854705,
		37.820908, 40.609047, 42.546642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023109, 40.663544, 42.512527>,  <37.534485, 40.832672, 41.948349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023109, 40.663544, 42.512527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343182, 40.780678, 42.721889>,  <37.535225, 40.850956, 42.847507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343182, 40.780678, 42.721889>,  <37.023109, 40.663544, 42.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343182, 40.780678, 42.721889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596925, 0.473556, 0.647630,
		-0.058216, -0.830658, 0.553731,
		0.800182, 0.292834, 0.523410,
		37.583237, 40.868526, 42.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002731, 40.507484, 43.279266>,  <37.023109, 40.663544, 42.512527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002731, 40.507484, 43.279266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178146, 40.847389, 43.162247>,  <37.283398, 41.051331, 43.092033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178146, 40.847389, 43.162247>,  <37.002731, 40.507484, 43.279266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178146, 40.847389, 43.162247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700957, 0.527134, 0.480404,
		0.562443, -0.005612, 0.826817,
		0.438540, 0.849764, -0.292549,
		37.309708, 41.102318, 43.074482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144096, 40.949810, 43.834457>,  <37.002731, 40.507484, 43.279266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144096, 40.949810, 43.834457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131710, 41.225777, 43.545170>,  <37.124279, 41.391357, 43.371597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131710, 41.225777, 43.545170>,  <37.144096, 40.949810, 43.834457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131710, 41.225777, 43.545170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726898, 0.481096, 0.490066,
		0.686047, 0.540886, 0.486604,
		-0.030967, 0.689920, -0.723223,
		37.122421, 41.432751, 43.328201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784756, 40.998341, 43.433540>,  <37.144096, 40.949810, 43.834457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784756, 40.998341, 43.433540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573452, 40.675762, 43.539818>,  <37.446671, 40.482216, 43.603584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573452, 40.675762, 43.539818>,  <37.784756, 40.998341, 43.433540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573452, 40.675762, 43.539818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362007, -0.496964, -0.788655,
		0.768046, -0.320430, 0.554463,
		-0.528257, -0.806444, 0.265694,
		37.414974, 40.433830, 43.619526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246510, 40.395832, 43.413235>,  <37.784756, 40.998341, 43.433540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246510, 40.395832, 43.413235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869495, 40.282433, 43.342514>,  <37.643288, 40.214394, 43.300083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869495, 40.282433, 43.342514>,  <38.246510, 40.395832, 43.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869495, 40.282433, 43.342514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281460, -0.388592, -0.877369,
		0.180028, -0.876713, 0.446055,
		-0.942533, -0.283498, -0.176802,
		37.586735, 40.197384, 43.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273506, 39.643150, 43.309685>,  <38.246510, 40.395832, 43.413235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273506, 39.643150, 43.309685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992973, 39.841152, 43.104515>,  <37.824654, 39.959953, 42.981411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992973, 39.841152, 43.104515>,  <38.273506, 39.643150, 43.309685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992973, 39.841152, 43.104515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379620, -0.349668, -0.856517,
		-0.603338, -0.795423, 0.057319,
		-0.701336, 0.495010, -0.512926,
		37.782574, 39.989655, 42.950638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915791, 39.232430, 42.861820>,  <38.273506, 39.643150, 43.309685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915791, 39.232430, 42.861820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946014, 39.594749, 42.695053>,  <37.964149, 39.812141, 42.594994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946014, 39.594749, 42.695053>,  <37.915791, 39.232430, 42.861820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946014, 39.594749, 42.695053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482280, -0.399152, -0.779797,
		-0.872752, -0.142150, -0.467008,
		0.075559, 0.905799, -0.416917,
		37.968681, 39.866489, 42.569977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416054, 39.277920, 42.311382>,  <37.915791, 39.232430, 42.861820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416054, 39.277920, 42.311382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701931, 39.543320, 42.222851>,  <37.873459, 39.702560, 42.169731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701931, 39.543320, 42.222851>,  <37.416054, 39.277920, 42.311382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701931, 39.543320, 42.222851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366778, -0.624958, -0.689131,
		-0.595555, 0.411340, -0.690010,
		0.714694, 0.663496, -0.221327,
		37.916340, 39.742367, 42.156452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416183, 39.243847, 41.624298>,  <37.416054, 39.277920, 42.311382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416183, 39.243847, 41.624298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768291, 39.411671, 41.712921>,  <37.979557, 39.512363, 41.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768291, 39.411671, 41.712921>,  <37.416183, 39.243847, 41.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768291, 39.411671, 41.712921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454873, -0.613449, -0.645578,
		-0.134943, 0.669067, -0.730849,
		0.880273, 0.419560, 0.221560,
		38.032375, 39.537540, 41.779388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640629, 39.397110, 41.054890>,  <37.416183, 39.243847, 41.624298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640629, 39.397110, 41.054890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961361, 39.444500, 41.289162>,  <38.153801, 39.472935, 41.429726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961361, 39.444500, 41.289162>,  <37.640629, 39.397110, 41.054890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961361, 39.444500, 41.289162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574277, -0.423659, -0.700513,
		0.165134, 0.898040, -0.407744,
		0.801833, 0.118480, 0.585685,
		38.201912, 39.480045, 41.464867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052940, 39.828766, 40.670776>,  <37.640629, 39.397110, 41.054890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052940, 39.828766, 40.670776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243576, 39.588451, 40.927502>,  <38.357956, 39.444263, 41.081535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243576, 39.588451, 40.927502>,  <38.052940, 39.828766, 40.670776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243576, 39.588451, 40.927502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571390, -0.343138, -0.745500,
		0.668113, 0.722022, 0.179745,
		0.476590, -0.600783, 0.641811,
		38.386555, 39.408218, 41.120045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774769, 39.950943, 40.565025>,  <38.052940, 39.828766, 40.670776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774769, 39.950943, 40.565025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751614, 39.610962, 40.774494>,  <38.737720, 39.406975, 40.900173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751614, 39.610962, 40.774494>,  <38.774769, 39.950943, 40.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751614, 39.610962, 40.774494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768333, -0.372855, -0.520234,
		0.637427, 0.372234, 0.674632,
		-0.057891, -0.849953, 0.523668,
		38.734245, 39.355976, 40.931595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492382, 39.761715, 40.657936>,  <38.774769, 39.950943, 40.565025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492382, 39.761715, 40.657936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280685, 39.487789, 40.858307>,  <39.153667, 39.323433, 40.978531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280685, 39.487789, 40.858307>,  <39.492382, 39.761715, 40.657936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280685, 39.487789, 40.858307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418894, -0.724311, -0.547632,
		0.737855, -0.079995, 0.670202,
		-0.529242, -0.684817, 0.500927,
		39.121914, 39.282345, 41.008583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966080, 39.335655, 40.942753>,  <39.492382, 39.761715, 40.657936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966080, 39.335655, 40.942753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631023, 39.122669, 40.894020>,  <39.429989, 38.994877, 40.864780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631023, 39.122669, 40.894020>,  <39.966080, 39.335655, 40.942753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631023, 39.122669, 40.894020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501141, -0.660409, -0.559211,
		0.217297, -0.529474, 0.820024,
		-0.837639, -0.532463, -0.121836,
		39.379730, 38.962929, 40.857468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121502, 38.654694, 40.900978>,  <39.966080, 39.335655, 40.942753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121502, 38.654694, 40.900978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774502, 38.699661, 40.707153>,  <39.566303, 38.726643, 40.590858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774502, 38.699661, 40.707153>,  <40.121502, 38.654694, 40.900978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774502, 38.699661, 40.707153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337558, -0.582472, -0.739446,
		-0.365371, -0.805040, 0.467349,
		-0.867501, 0.112415, -0.484566,
		39.514252, 38.733387, 40.561783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771919, 37.972927, 40.829723>,  <40.121502, 38.654694, 40.900978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771919, 37.972927, 40.829723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635311, 38.217236, 40.543976>,  <39.553345, 38.363823, 40.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635311, 38.217236, 40.543976>,  <39.771919, 37.972927, 40.829723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635311, 38.217236, 40.543976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241477, -0.677531, -0.694724,
		-0.908324, -0.409766, 0.083903,
		-0.341521, 0.610773, -0.714367,
		39.532856, 38.400467, 40.329666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100929, 37.624687, 40.397942>,  <39.771919, 37.972927, 40.829723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100929, 37.624687, 40.397942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315262, 37.892239, 40.191841>,  <39.443863, 38.052769, 40.068180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315262, 37.892239, 40.191841>,  <39.100929, 37.624687, 40.397942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315262, 37.892239, 40.191841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123165, -0.665644, -0.736035,
		-0.835291, 0.330933, -0.439059,
		0.535835, 0.668880, -0.515247,
		39.476013, 38.092903, 40.037266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045422, 37.551422, 39.624298>,  <39.100929, 37.624687, 40.397942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045422, 37.551422, 39.624298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362381, 37.795422, 39.624088>,  <39.552559, 37.941822, 39.623962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362381, 37.795422, 39.624088>,  <39.045422, 37.551422, 39.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362381, 37.795422, 39.624088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311914, -0.405920, -0.859034,
		-0.524224, 0.680535, -0.511919,
		0.792401, 0.610000, -0.000525,
		39.600101, 37.978420, 39.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133564, 37.875072, 38.957581>,  <39.045422, 37.551422, 39.624298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133564, 37.875072, 38.957581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474365, 37.825848, 39.161129>,  <39.678844, 37.796314, 39.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474365, 37.825848, 39.161129>,  <39.133564, 37.875072, 38.957581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474365, 37.825848, 39.161129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376045, -0.532418, -0.758367,
		0.364257, 0.837489, -0.407345,
		0.852002, -0.123061, 0.508870,
		39.729965, 37.788929, 39.313789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718845, 38.226238, 38.640675>,  <39.133564, 37.875072, 38.957581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718845, 38.226238, 38.640675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896851, 37.956516, 38.876400>,  <40.003654, 37.794685, 39.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896851, 37.956516, 38.876400>,  <39.718845, 38.226238, 38.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896851, 37.956516, 38.876400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527342, -0.334551, -0.781016,
		0.723793, 0.658327, 0.206708,
		0.445010, -0.674300, 0.589309,
		40.030354, 37.754227, 39.053192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398033, 38.263557, 38.483479>,  <39.718845, 38.226238, 38.640675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398033, 38.263557, 38.483479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351410, 37.905170, 38.654896>,  <40.323437, 37.690136, 38.757748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351410, 37.905170, 38.654896>,  <40.398033, 38.263557, 38.483479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351410, 37.905170, 38.654896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501169, -0.425581, -0.753466,
		0.857464, 0.126952, 0.498637,
		-0.116557, -0.895971, 0.428545,
		40.316444, 37.636379, 38.783459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960434, 37.846775, 38.303783>,  <40.398033, 38.263557, 38.483479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960434, 37.846775, 38.303783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717487, 37.551544, 38.421326>,  <40.571720, 37.374405, 38.491852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717487, 37.551544, 38.421326>,  <40.960434, 37.846775, 38.303783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717487, 37.551544, 38.421326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273331, -0.541464, -0.795052,
		0.745922, -0.402565, 0.530604,
		-0.607363, -0.738077, 0.293857,
		40.535278, 37.330120, 38.509483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418407, 37.291374, 38.267746>,  <40.960434, 37.846775, 38.303783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418407, 37.291374, 38.267746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056026, 37.122025, 38.267418>,  <40.838596, 37.020416, 38.267223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056026, 37.122025, 38.267418>,  <41.418407, 37.291374, 38.267746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056026, 37.122025, 38.267418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263599, -0.562556, -0.783611,
		0.331300, -0.710131, 0.621252,
		-0.905956, -0.423372, -0.000815,
		40.784241, 36.995014, 38.267174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556286, 36.583328, 38.167938>,  <41.418407, 37.291374, 38.267746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556286, 36.583328, 38.167938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172623, 36.639671, 38.069820>,  <40.942425, 36.673477, 38.010948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172623, 36.639671, 38.069820>,  <41.556286, 36.583328, 38.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172623, 36.639671, 38.069820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163737, -0.430652, -0.887541,
		-0.230654, -0.891458, 0.390001,
		-0.959161, 0.140858, -0.245297,
		40.884876, 36.681931, 37.996231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323891, 35.990623, 37.983410>,  <41.556286, 36.583328, 38.167938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323891, 35.990623, 37.983410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061691, 36.223598, 37.791126>,  <40.904369, 36.363384, 37.675755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061691, 36.223598, 37.791126>,  <41.323891, 35.990623, 37.983410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061691, 36.223598, 37.791126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267073, -0.416616, -0.868967,
		-0.706392, -0.697993, 0.117539,
		-0.655502, 0.582440, -0.480709,
		40.865040, 36.398331, 37.646912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050220, 35.578598, 37.431232>,  <41.323891, 35.990623, 37.983410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050220, 35.578598, 37.431232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986588, 35.962826, 37.340027>,  <40.948406, 36.193363, 37.285301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986588, 35.962826, 37.340027>,  <41.050220, 35.578598, 37.431232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986588, 35.962826, 37.340027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096383, -0.214745, -0.971903,
		-0.982549, -0.176591, -0.058420,
		-0.159084, 0.960573, -0.228018,
		40.938862, 36.250999, 37.271622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534237, 35.580318, 36.972004>,  <41.050220, 35.578598, 37.431232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534237, 35.580318, 36.972004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742264, 35.914753, 36.902161>,  <40.867081, 36.115414, 36.860252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742264, 35.914753, 36.902161>,  <40.534237, 35.580318, 36.972004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742264, 35.914753, 36.902161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050223, -0.234014, -0.970935,
		-0.852649, 0.496179, -0.163694,
		0.520065, 0.836088, -0.174612,
		40.898285, 36.165581, 36.849777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330166, 34.951416, 36.689095>,  <40.534237, 35.580318, 36.972004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330166, 34.951416, 36.689095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688515, 34.806946, 36.585579>,  <40.903522, 34.720264, 36.523468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688515, 34.806946, 36.585579>,  <40.330166, 34.951416, 36.689095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688515, 34.806946, 36.585579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434926, 0.593712, 0.677012,
		-0.090871, -0.719069, 0.688972,
		0.895869, -0.361172, -0.258791,
		40.957275, 34.698593, 36.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641342, 34.559113, 37.319485>,  <40.330166, 34.951416, 36.689095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641342, 34.559113, 37.319485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884327, 34.729527, 37.051311>,  <41.030117, 34.831776, 36.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884327, 34.729527, 37.051311>,  <40.641342, 34.559113, 37.319485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884327, 34.729527, 37.051311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410729, 0.553960, 0.724175,
		0.679917, -0.715277, 0.161527,
		0.607465, 0.426036, -0.670432,
		41.066566, 34.857338, 36.850182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309322, 34.748535, 37.562237>,  <40.641342, 34.559113, 37.319485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309322, 34.748535, 37.562237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078251, 34.655994, 37.875351>,  <40.939606, 34.600471, 38.063221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078251, 34.655994, 37.875351>,  <41.309322, 34.748535, 37.562237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078251, 34.655994, 37.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798618, 0.038117, 0.600629,
		-0.168793, 0.972124, 0.162740,
		-0.577683, -0.231349, 0.782790,
		40.904945, 34.586590, 38.110188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722240, 34.122852, 37.210068>,  <41.309322, 34.748535, 37.562237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722240, 34.122852, 37.210068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700127, 34.167717, 36.813206>,  <41.686859, 34.194637, 36.575089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700127, 34.167717, 36.813206>,  <41.722240, 34.122852, 37.210068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700127, 34.167717, 36.813206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992952, 0.110502, -0.042836,
		0.104830, -0.987527, -0.117481,
		-0.055283, 0.112163, -0.992151,
		41.683540, 34.201366, 36.515560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982689, 33.528999, 36.790199>,  <41.722240, 34.122852, 37.210068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982689, 33.528999, 36.790199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040974, 33.884659, 36.616676>,  <42.075943, 34.098053, 36.512562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040974, 33.884659, 36.616676>,  <41.982689, 33.528999, 36.790199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040974, 33.884659, 36.616676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988150, -0.152183, 0.019993,
		-0.048241, -0.431580, -0.900784,
		0.145712, 0.889145, -0.433807,
		42.084686, 34.151402, 36.486534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391190, 33.390068, 36.020508>,  <41.982689, 33.528999, 36.790199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391190, 33.390068, 36.020508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442554, 33.716377, 36.246082>,  <42.473373, 33.912163, 36.381428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442554, 33.716377, 36.246082>,  <42.391190, 33.390068, 36.020508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442554, 33.716377, 36.246082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988166, -0.057141, -0.142350,
		-0.083900, 0.575546, -0.813454,
		0.128411, 0.815771, 0.563941,
		42.481079, 33.961109, 36.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730522, 33.893700, 35.650043>,  <42.391190, 33.390068, 36.020508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730522, 33.893700, 35.650043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807301, 33.923996, 36.041435>,  <42.853367, 33.942173, 36.276272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807301, 33.923996, 36.041435>,  <42.730522, 33.893700, 35.650043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807301, 33.923996, 36.041435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981260, -0.032018, -0.190009,
		0.016938, 0.996614, -0.080465,
		0.191942, 0.075738, 0.978479,
		42.864883, 33.946716, 36.334980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220898, 34.519810, 35.931324>,  <42.730522, 33.893700, 35.650043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220898, 34.519810, 35.931324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271103, 34.176857, 36.130981>,  <43.301228, 33.971085, 36.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271103, 34.176857, 36.130981>,  <43.220898, 34.519810, 35.931324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271103, 34.176857, 36.130981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956572, -0.028830, -0.290066,
		0.263087, 0.513875, 0.816528,
		0.125517, -0.857381, 0.499143,
		43.308758, 33.919643, 36.280724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620625, 34.652901, 36.605423>,  <43.220898, 34.519810, 35.931324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620625, 34.652901, 36.605423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634628, 34.315022, 36.391785>,  <43.643032, 34.112293, 36.263599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634628, 34.315022, 36.391785>,  <43.620625, 34.652901, 36.605423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634628, 34.315022, 36.391785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975999, 0.143839, -0.163512,
		0.214942, -0.515555, 0.829459,
		0.035009, -0.844697, -0.534098,
		43.645130, 34.061611, 36.231556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284351, 34.413483, 36.870453>,  <43.620625, 34.652901, 36.605423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284351, 34.413483, 36.870453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127644, 34.335785, 36.510723>,  <44.033619, 34.289165, 36.294884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127644, 34.335785, 36.510723>,  <44.284351, 34.413483, 36.870453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127644, 34.335785, 36.510723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817163, 0.375719, -0.437128,
		0.422804, -0.906147, 0.011538,
		-0.391767, -0.194248, -0.899325,
		44.010113, 34.277512, 36.240925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768543, 33.998585, 36.427261>,  <44.284351, 34.413483, 36.870453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768543, 33.998585, 36.427261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530727, 34.232208, 36.206211>,  <44.388039, 34.372383, 36.073582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530727, 34.232208, 36.206211>,  <44.768543, 33.998585, 36.427261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530727, 34.232208, 36.206211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800595, 0.493812, -0.339407,
		0.074661, -0.644222, -0.761186,
		-0.594537, 0.584061, -0.552629,
		44.352367, 34.407425, 36.040421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827271, 33.970085, 35.645847>,  <44.768543, 33.998585, 36.427261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827271, 33.970085, 35.645847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703777, 34.333298, 35.759098>,  <44.629681, 34.551224, 35.827049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703777, 34.333298, 35.759098>,  <44.827271, 33.970085, 35.645847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703777, 34.333298, 35.759098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650767, 0.418746, -0.633367,
		-0.693674, -0.011296, -0.720200,
		-0.308736, 0.908033, 0.283122,
		44.611156, 34.605709, 35.844036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640556, 34.341919, 35.059982>,  <44.827271, 33.970085, 35.645847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640556, 34.341919, 35.059982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771202, 34.582153, 35.351906>,  <44.849590, 34.726292, 35.527061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771202, 34.582153, 35.351906>,  <44.640556, 34.341919, 35.059982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771202, 34.582153, 35.351906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558445, 0.500338, -0.661665,
		-0.762536, 0.623669, -0.171974,
		0.326615, 0.600582, 0.729811,
		44.869186, 34.762329, 35.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150475, 34.771683, 34.660934>,  <44.640556, 34.341919, 35.059982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150475, 34.771683, 34.660934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257099, 35.021389, 34.954666>,  <45.321075, 35.171215, 35.130905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257099, 35.021389, 34.954666>,  <45.150475, 34.771683, 34.660934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257099, 35.021389, 34.954666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622582, 0.470085, -0.625628,
		-0.735756, 0.623947, -0.263352,
		0.266561, 0.624268, 0.734326,
		45.337067, 35.208668, 35.174965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352268, 35.487976, 34.386921>,  <45.150475, 34.771683, 34.660934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352268, 35.487976, 34.386921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538834, 35.418308, 34.733822>,  <45.650772, 35.376507, 34.941963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538834, 35.418308, 34.733822>,  <45.352268, 35.487976, 34.386921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538834, 35.418308, 34.733822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856560, 0.333671, -0.393660,
		-0.220814, 0.926461, 0.304813,
		0.466418, -0.174165, 0.867249,
		45.678761, 35.366058, 34.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974945, 35.984554, 34.567158>,  <45.352268, 35.487976, 34.386921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974945, 35.984554, 34.567158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076721, 35.659103, 34.776260>,  <46.137787, 35.463833, 34.901722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076721, 35.659103, 34.776260>,  <45.974945, 35.984554, 34.567158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076721, 35.659103, 34.776260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967041, 0.208676, -0.145896,
		0.009618, 0.542650, 0.839904,
		0.254438, -0.813625, 0.522758,
		46.153053, 35.415016, 34.933086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695232, 36.057301, 34.958305>,  <45.974945, 35.984554, 34.567158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695232, 36.057301, 34.958305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602543, 35.671333, 34.908928>,  <46.546928, 35.439754, 34.879303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602543, 35.671333, 34.908928>,  <46.695232, 36.057301, 34.958305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602543, 35.671333, 34.908928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972781, -0.230051, -0.027813,
		-0.001561, -0.126528, 0.991962,
		-0.231721, -0.964918, -0.123443,
		46.533028, 35.381859, 34.871895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253841, 35.805630, 35.177216>,  <46.695232, 36.057301, 34.958305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253841, 35.805630, 35.177216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072460, 35.510365, 34.977413>,  <46.963631, 35.333206, 34.857533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072460, 35.510365, 34.977413>,  <47.253841, 35.805630, 35.177216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.072460, 35.510365, 34.977413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849798, -0.527057, 0.007428,
		-0.268748, -0.421107, 0.866281,
		-0.453452, -0.738160, -0.499501,
		46.936424, 35.288918, 34.827564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374458, 35.106216, 35.371090>,  <47.253841, 35.805630, 35.177216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374458, 35.106216, 35.371090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725182, 34.924145, 35.309097>,  <47.935616, 34.814903, 35.271900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.725182, 34.924145, 35.309097>,  <47.374458, 35.106216, 35.371090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.725182, 34.924145, 35.309097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396725, -0.502683, -0.768062,
		0.271698, 0.734929, -0.621337,
		0.876807, -0.455181, -0.154986,
		47.988224, 34.787590, 35.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738968, 35.261684, 34.759083>,  <47.374458, 35.106216, 35.371090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738968, 35.261684, 34.759083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781418, 34.878323, 34.865067>,  <47.806889, 34.648308, 34.928658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781418, 34.878323, 34.865067>,  <47.738968, 35.261684, 34.759083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781418, 34.878323, 34.865067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584482, -0.275697, -0.763133,
		0.804437, -0.073879, -0.589427,
		0.106124, -0.958401, 0.264961,
		47.813255, 34.590801, 34.944553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.647900, 33.085388, 26.606907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.322693, 33.209644, 26.409927>,  <38.127567, 33.284199, 26.291740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.322693, 33.209644, 26.409927>,  <38.647900, 33.085388, 26.606907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322693, 33.209644, 26.409927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497146, 0.069870, 0.864849,
		0.303068, 0.947955, 0.097630,
		-0.813016, 0.310644, -0.492447,
		38.078789, 33.302837, 26.262194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374878, 33.535873, 27.088497>,  <38.647900, 33.085388, 26.606907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374878, 33.535873, 27.088497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071972, 33.482834, 26.832695>,  <37.890228, 33.451008, 26.679214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071972, 33.482834, 26.832695>,  <38.374878, 33.535873, 27.088497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071972, 33.482834, 26.832695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650118, 0.059464, 0.757503,
		-0.062419, 0.989384, -0.131236,
		-0.757266, -0.132601, -0.639504,
		37.844791, 33.443054, 26.640844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960098, 34.096027, 27.206305>,  <38.374878, 33.535873, 27.088497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960098, 34.096027, 27.206305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703384, 33.838867, 27.039068>,  <37.549358, 33.684570, 26.938726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703384, 33.838867, 27.039068>,  <37.960098, 34.096027, 27.206305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703384, 33.838867, 27.039068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629166, 0.129681, 0.766377,
		-0.438484, 0.754893, -0.487717,
		-0.641780, -0.642899, -0.418090,
		37.510849, 33.645996, 26.913641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316158, 34.479126, 27.035784>,  <37.960098, 34.096027, 27.206305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316158, 34.479126, 27.035784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224644, 34.090054, 27.051573>,  <37.169735, 33.856609, 27.061047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224644, 34.090054, 27.051573>,  <37.316158, 34.479126, 27.035784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224644, 34.090054, 27.051573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794345, 0.209972, 0.570025,
		-0.562738, 0.099058, -0.820679,
		-0.228785, -0.972676, 0.039473,
		37.156010, 33.798252, 27.063416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629616, 34.508286, 27.234539>,  <37.316158, 34.479126, 27.035784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629616, 34.508286, 27.234539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726429, 34.133156, 27.334059>,  <36.784515, 33.908077, 27.393770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726429, 34.133156, 27.334059>,  <36.629616, 34.508286, 27.234539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726429, 34.133156, 27.334059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497029, 0.100386, 0.861908,
		-0.833297, -0.332268, -0.441831,
		0.242031, -0.937828, 0.248798,
		36.799038, 33.851807, 27.408699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002720, 34.128998, 27.507959>,  <36.629616, 34.508286, 27.234539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002720, 34.128998, 27.507959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303825, 33.917587, 27.664932>,  <36.484489, 33.790741, 27.759115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303825, 33.917587, 27.664932>,  <36.002720, 34.128998, 27.507959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303825, 33.917587, 27.664932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393852, 0.116074, 0.911816,
		-0.527471, -0.840943, -0.120785,
		0.752765, -0.528527, 0.392433,
		36.529655, 33.759029, 27.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698692, 33.584839, 27.822153>,  <36.002720, 34.128998, 27.507959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698692, 33.584839, 27.822153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052994, 33.642475, 27.998642>,  <36.265575, 33.677055, 28.104534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052994, 33.642475, 27.998642>,  <35.698692, 33.584839, 27.822153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052994, 33.642475, 27.998642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451039, 0.042838, 0.891476,
		0.109552, -0.988637, 0.102934,
		0.885755, 0.144090, 0.441221,
		36.318722, 33.685703, 28.131008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591061, 33.205589, 28.408270>,  <35.698692, 33.584839, 27.822153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591061, 33.205589, 28.408270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914253, 33.435387, 28.460604>,  <36.108170, 33.573265, 28.492004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914253, 33.435387, 28.460604>,  <35.591061, 33.205589, 28.408270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914253, 33.435387, 28.460604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240707, 0.119168, 0.963255,
		0.537792, -0.809788, 0.234570,
		0.807985, 0.574493, 0.130834,
		36.156651, 33.607735, 28.499853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947155, 32.911621, 29.049152>,  <35.591061, 33.205589, 28.408270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947155, 32.911621, 29.049152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057693, 33.291569, 28.990662>,  <36.124016, 33.519539, 28.955568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057693, 33.291569, 28.990662>,  <35.947155, 32.911621, 29.049152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057693, 33.291569, 28.990662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194725, 0.204334, 0.959338,
		0.941125, -0.236633, 0.241430,
		0.276344, 0.949870, -0.146226,
		36.140598, 33.576530, 28.946795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351517, 33.064594, 29.682747>,  <35.947155, 32.911621, 29.049152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351517, 33.064594, 29.682747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254078, 33.410866, 29.507812>,  <36.195614, 33.618629, 29.402851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254078, 33.410866, 29.507812>,  <36.351517, 33.064594, 29.682747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254078, 33.410866, 29.507812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009543, 0.448758, 0.893602,
		0.969829, 0.221855, -0.101056,
		-0.243600, 0.865677, -0.437336,
		36.181000, 33.670570, 29.376612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842072, 33.511650, 29.828798>,  <36.351517, 33.064594, 29.682747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842072, 33.511650, 29.828798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522999, 33.738937, 29.747967>,  <36.331554, 33.875309, 29.699467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522999, 33.738937, 29.747967>,  <36.842072, 33.511650, 29.828798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522999, 33.738937, 29.747967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061509, 0.409985, 0.910016,
		0.599939, 0.713470, -0.361987,
		-0.797678, 0.568219, -0.202081,
		36.283695, 33.909405, 29.687342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950375, 34.078850, 30.199972>,  <36.842072, 33.511650, 29.828798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950375, 34.078850, 30.199972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554779, 34.110050, 30.149681>,  <36.317421, 34.128773, 30.119507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554779, 34.110050, 30.149681>,  <36.950375, 34.078850, 30.199972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554779, 34.110050, 30.149681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118016, 0.096671, 0.988295,
		0.089247, 0.992255, -0.086401,
		-0.988993, 0.078005, -0.125730,
		36.258080, 34.133453, 30.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807034, 34.651623, 30.421394>,  <36.950375, 34.078850, 30.199972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807034, 34.651623, 30.421394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440708, 34.491177, 30.429283>,  <36.220913, 34.394909, 30.434017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.440708, 34.491177, 30.429283>,  <36.807034, 34.651623, 30.421394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440708, 34.491177, 30.429283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058801, 0.182512, 0.981444,
		-0.397267, 0.897664, -0.190733,
		-0.915817, -0.401111, 0.019722,
		36.165962, 34.370842, 30.435200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204311, 35.150623, 30.736664>,  <36.807034, 34.651623, 30.421394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204311, 35.150623, 30.736664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047390, 34.783474, 30.760670>,  <35.953236, 34.563183, 30.775074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047390, 34.783474, 30.760670>,  <36.204311, 35.150623, 30.736664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047390, 34.783474, 30.760670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195646, 0.147018, 0.969592,
		-0.898787, 0.368635, -0.237254,
		-0.392306, -0.917875, 0.060016,
		35.929699, 34.508110, 30.778675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596722, 35.311813, 31.131861>,  <36.204311, 35.150623, 30.736664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596722, 35.311813, 31.131861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684032, 34.923691, 31.173532>,  <35.736420, 34.690815, 31.198536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684032, 34.923691, 31.173532>,  <35.596722, 35.311813, 31.131861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684032, 34.923691, 31.173532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083737, 0.087736, 0.992618,
		-0.972287, -0.225391, -0.062100,
		0.218279, -0.970310, 0.104178,
		35.749516, 34.632599, 31.204786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189503, 35.097450, 31.715586>,  <35.596722, 35.311813, 31.131861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189503, 35.097450, 31.715586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446674, 34.794861, 31.667604>,  <35.600979, 34.613308, 31.638817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446674, 34.794861, 31.667604>,  <35.189503, 35.097450, 31.715586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446674, 34.794861, 31.667604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109826, -0.063940, 0.991892,
		-0.758008, -0.650893, 0.041972,
		0.642933, -0.756472, -0.119952,
		35.639553, 34.567921, 31.631618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904331, 34.543713, 32.106911>,  <35.189503, 35.097450, 31.715586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904331, 34.543713, 32.106911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301445, 34.508354, 32.074490>,  <35.539711, 34.487137, 32.055038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301445, 34.508354, 32.074490>,  <34.904331, 34.543713, 32.106911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301445, 34.508354, 32.074490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065440, -0.167078, 0.983770,
		-0.100504, -0.981973, -0.160087,
		0.992782, -0.088396, -0.081053,
		35.599281, 34.481834, 32.050175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946644, 33.951702, 32.424229>,  <34.904331, 34.543713, 32.106911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946644, 33.951702, 32.424229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305828, 34.125309, 32.395111>,  <35.521339, 34.229473, 32.377640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305828, 34.125309, 32.395111>,  <34.946644, 33.951702, 32.424229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305828, 34.125309, 32.395111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132214, -0.108295, 0.985288,
		0.419749, -0.894372, -0.154627,
		0.897959, 0.434017, -0.072792,
		35.575214, 34.255512, 32.373272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510773, 33.478405, 32.797134>,  <34.946644, 33.951702, 32.424229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510773, 33.478405, 32.797134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604904, 33.865917, 32.765942>,  <35.661381, 34.098427, 32.747227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.604904, 33.865917, 32.765942>,  <35.510773, 33.478405, 32.797134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604904, 33.865917, 32.765942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379785, -0.017805, 0.924903,
		0.894642, -0.247268, -0.372120,
		0.235325, 0.968783, -0.077980,
		35.675503, 34.156551, 32.742546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071175, 33.502243, 33.271774>,  <35.510773, 33.478405, 32.797134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071175, 33.502243, 33.271774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.973839, 33.887424, 33.225300>,  <35.915440, 34.118534, 33.197414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.973839, 33.887424, 33.225300>,  <36.071175, 33.502243, 33.271774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973839, 33.887424, 33.225300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428437, 0.214182, 0.877820,
		0.870189, 0.163826, -0.464685,
		-0.243337, 0.962957, -0.116190,
		35.900837, 34.176311, 33.190441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559200, 33.818588, 33.666168>,  <36.071175, 33.502243, 33.271774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559200, 33.818588, 33.666168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277782, 34.099380, 33.621883>,  <36.108932, 34.267857, 33.595314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277782, 34.099380, 33.621883>,  <36.559200, 33.818588, 33.666168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277782, 34.099380, 33.621883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029524, 0.126780, 0.991491,
		0.710040, 0.700824, -0.068470,
		-0.703542, 0.701977, -0.110710,
		36.066719, 34.309975, 33.588669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711147, 34.431160, 34.023491>,  <36.559200, 33.818588, 33.666168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711147, 34.431160, 34.023491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315239, 34.475651, 33.987774>,  <36.077694, 34.502346, 33.966343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315239, 34.475651, 33.987774>,  <36.711147, 34.431160, 34.023491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315239, 34.475651, 33.987774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065338, 0.202895, 0.977018,
		0.126789, 0.972863, -0.193553,
		-0.989775, 0.111229, -0.089290,
		36.018307, 34.509018, 33.960987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972507, 35.113251, 34.355354>,  <36.711147, 34.431160, 34.023491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972507, 35.113251, 34.355354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315834, 34.989140, 34.518829>,  <37.521828, 34.914673, 34.616913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315834, 34.989140, 34.518829>,  <36.972507, 35.113251, 34.355354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315834, 34.989140, 34.518829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345321, -0.239830, -0.907323,
		0.379540, 0.919895, -0.098703,
		0.858314, -0.310281, 0.408684,
		37.573330, 34.896057, 34.641434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494156, 35.259159, 33.910900>,  <36.972507, 35.113251, 34.355354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494156, 35.259159, 33.910900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689907, 34.997204, 34.141251>,  <37.807358, 34.840031, 34.279461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689907, 34.997204, 34.141251>,  <37.494156, 35.259159, 33.910900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689907, 34.997204, 34.141251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491320, -0.338526, -0.802499,
		0.720495, 0.675665, 0.156092,
		0.489379, -0.654887, 0.575874,
		37.836720, 34.800739, 34.314014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186680, 35.314034, 33.663044>,  <37.494156, 35.259159, 33.910900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186680, 35.314034, 33.663044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161800, 34.958855, 33.845329>,  <38.146873, 34.745747, 33.954700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161800, 34.958855, 33.845329>,  <38.186680, 35.314034, 33.663044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161800, 34.958855, 33.845329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536612, -0.414741, -0.734872,
		0.841533, 0.198835, 0.502281,
		-0.062198, -0.887950, 0.455716,
		38.143143, 34.692471, 33.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787800, 35.008266, 33.505756>,  <38.186680, 35.314034, 33.663044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787800, 35.008266, 33.505756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569035, 34.701260, 33.639503>,  <38.437775, 34.517056, 33.719753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569035, 34.701260, 33.639503>,  <38.787800, 35.008266, 33.505756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569035, 34.701260, 33.639503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286694, -0.546951, -0.786544,
		0.786570, -0.334309, 0.519177,
		-0.546913, -0.767517, 0.334371,
		38.404961, 34.471004, 33.739815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286789, 34.428307, 33.505913>,  <38.787800, 35.008266, 33.505756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286789, 34.428307, 33.505913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918335, 34.274082, 33.527298>,  <38.697262, 34.181545, 33.540127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918335, 34.274082, 33.527298>,  <39.286789, 34.428307, 33.505913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918335, 34.274082, 33.527298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227236, -0.644147, -0.730369,
		0.316040, -0.660617, 0.680958,
		-0.921131, -0.385564, 0.053461,
		38.641994, 34.158413, 33.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389725, 33.677780, 33.453789>,  <39.286789, 34.428307, 33.505913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389725, 33.677780, 33.453789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999908, 33.717941, 33.373608>,  <38.766018, 33.742039, 33.325497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999908, 33.717941, 33.373608>,  <39.389725, 33.677780, 33.453789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999908, 33.717941, 33.373608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074231, -0.699180, -0.711082,
		-0.211548, -0.707861, 0.673929,
		-0.974545, 0.100402, -0.200456,
		38.707546, 33.748062, 33.313473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176350, 33.014156, 33.396381>,  <39.389725, 33.677780, 33.453789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176350, 33.014156, 33.396381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911198, 33.255650, 33.219250>,  <38.752106, 33.400547, 33.112972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911198, 33.255650, 33.219250>,  <39.176350, 33.014156, 33.396381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911198, 33.255650, 33.219250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073346, -0.640959, -0.764063,
		-0.745128, -0.473999, 0.469157,
		-0.662876, 0.603736, -0.442831,
		38.712334, 33.436771, 33.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653778, 32.545410, 33.133656>,  <39.176350, 33.014156, 33.396381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653778, 32.545410, 33.133656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628189, 32.882008, 32.919067>,  <38.612835, 33.083965, 32.790314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.628189, 32.882008, 32.919067>,  <38.653778, 32.545410, 33.133656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628189, 32.882008, 32.919067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105893, -0.528814, -0.842106,
		-0.992318, -0.110677, -0.055281,
		-0.063968, 0.841491, -0.536471,
		38.608997, 33.134457, 32.758125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185612, 32.377605, 32.576229>,  <38.653778, 32.545410, 33.133656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185612, 32.377605, 32.576229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410423, 32.687737, 32.461002>,  <38.545311, 32.873817, 32.391865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410423, 32.687737, 32.461002>,  <38.185612, 32.377605, 32.576229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410423, 32.687737, 32.461002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048652, -0.378670, -0.924252,
		-0.825684, 0.505443, -0.250546,
		0.562031, 0.775330, -0.288071,
		38.579033, 32.920334, 32.374580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885277, 32.647400, 31.934673>,  <38.185612, 32.377605, 32.576229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885277, 32.647400, 31.934673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248543, 32.814388, 31.922382>,  <38.466503, 32.914581, 31.915009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248543, 32.814388, 31.922382>,  <37.885277, 32.647400, 31.934673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248543, 32.814388, 31.922382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100561, -0.288837, -0.952082,
		-0.406345, 0.861562, -0.304294,
		0.908169, 0.417474, -0.030728,
		38.520992, 32.939629, 31.913164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937954, 32.968842, 31.262316>,  <37.885277, 32.647400, 31.934673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937954, 32.968842, 31.262316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313225, 32.923092, 31.393003>,  <38.538387, 32.895641, 31.471416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313225, 32.923092, 31.393003>,  <37.937954, 32.968842, 31.262316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313225, 32.923092, 31.393003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303380, -0.182835, -0.935164,
		0.166693, 0.976468, -0.136833,
		0.938176, -0.114373, 0.326719,
		38.594677, 32.888779, 31.491018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432076, 33.563343, 30.898672>,  <37.937954, 32.968842, 31.262316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432076, 33.563343, 30.898672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636784, 33.239250, 31.012947>,  <38.759609, 33.044796, 31.081512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636784, 33.239250, 31.012947>,  <38.432076, 33.563343, 30.898672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636784, 33.239250, 31.012947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314392, -0.132846, -0.939952,
		0.799531, 0.570856, 0.186744,
		0.511769, -0.810231, 0.285688,
		38.790314, 32.996181, 31.098654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118645, 33.644997, 30.609879>,  <38.432076, 33.563343, 30.898672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118645, 33.644997, 30.609879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000210, 33.264973, 30.649321>,  <38.929150, 33.036957, 30.672987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000210, 33.264973, 30.649321>,  <39.118645, 33.644997, 30.609879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000210, 33.264973, 30.649321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338079, -0.200791, -0.919448,
		0.893329, -0.238896, 0.380646,
		-0.296082, -0.950059, 0.098607,
		38.911385, 32.979954, 30.678902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663937, 33.268494, 30.552074>,  <39.118645, 33.644997, 30.609879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663937, 33.268494, 30.552074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337608, 33.064983, 30.442099>,  <39.141811, 32.942879, 30.376112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337608, 33.064983, 30.442099>,  <39.663937, 33.268494, 30.552074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337608, 33.064983, 30.442099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408725, -0.170916, -0.896511,
		0.409130, -0.843764, 0.347385,
		-0.815817, -0.508774, -0.274940,
		39.092865, 32.912350, 30.359617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019089, 32.927563, 30.076693>,  <39.663937, 33.268494, 30.552074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019089, 32.927563, 30.076693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633976, 32.825794, 30.040207>,  <39.402908, 32.764732, 30.018316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.633976, 32.825794, 30.040207>,  <40.019089, 32.927563, 30.076693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633976, 32.825794, 30.040207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160064, -0.264799, -0.950926,
		0.217780, -0.930136, 0.295667,
		-0.962783, -0.254418, -0.091214,
		39.345142, 32.749470, 30.012842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095535, 32.298897, 29.819910>,  <40.019089, 32.927563, 30.076693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095535, 32.298897, 29.819910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732903, 32.439262, 29.726131>,  <39.515324, 32.523479, 29.669865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732903, 32.439262, 29.726131>,  <40.095535, 32.298897, 29.819910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732903, 32.439262, 29.726131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061974, -0.438809, -0.896441,
		-0.417441, -0.827232, 0.376073,
		-0.906589, 0.350904, -0.234443,
		39.460926, 32.544537, 29.655798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739079, 31.725140, 29.500042>,  <40.095535, 32.298897, 29.819910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739079, 31.725140, 29.500042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538067, 32.058128, 29.406702>,  <39.417461, 32.257923, 29.350698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538067, 32.058128, 29.406702>,  <39.739079, 31.725140, 29.500042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538067, 32.058128, 29.406702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181383, -0.365414, -0.913002,
		-0.845319, -0.416484, 0.334628,
		-0.502529, 0.832474, -0.233349,
		39.387310, 32.307869, 29.336697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046707, 31.503214, 29.120878>,  <39.739079, 31.725140, 29.500042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046707, 31.503214, 29.120878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146358, 31.872023, 29.002344>,  <39.206150, 32.093307, 28.931225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146358, 31.872023, 29.002344>,  <39.046707, 31.503214, 29.120878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146358, 31.872023, 29.002344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105080, -0.329909, -0.938146,
		-0.962752, 0.202582, -0.179076,
		0.249130, 0.922020, -0.296333,
		39.221096, 32.148628, 28.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.610840, 31.825691, 28.556828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940296, 32.052517, 28.554098>,  <39.137970, 32.188614, 28.552460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940296, 32.052517, 28.554098>,  <38.610840, 31.825691, 28.556828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940296, 32.052517, 28.554098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033405, -0.060528, -0.997607,
		-0.566121, 0.821446, -0.068796,
		0.823645, 0.567065, -0.006826,
		39.187389, 32.222637, 28.552050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429001, 32.367924, 28.167593>,  <38.610840, 31.825691, 28.556828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429001, 32.367924, 28.167593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826942, 32.333775, 28.145781>,  <39.065708, 32.313286, 28.132694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826942, 32.333775, 28.145781>,  <38.429001, 32.367924, 28.167593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826942, 32.333775, 28.145781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070032, -0.190688, -0.979149,
		0.073194, 0.977931, -0.195686,
		0.994856, -0.085372, -0.054529,
		39.125401, 32.308163, 28.129421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605618, 32.752373, 27.584631>,  <38.429001, 32.367924, 28.167593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605618, 32.752373, 27.584631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912952, 32.504032, 27.646845>,  <39.097355, 32.355026, 27.684174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.912952, 32.504032, 27.646845>,  <38.605618, 32.752373, 27.584631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912952, 32.504032, 27.646845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203524, 0.006603, -0.979048,
		0.606820, 0.783897, 0.131432,
		0.768341, -0.620855, 0.155535,
		39.143456, 32.317776, 27.693506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083374, 33.066883, 27.192919>,  <38.605618, 32.752373, 27.584631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083374, 33.066883, 27.192919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219913, 32.696747, 27.258930>,  <39.301838, 32.474667, 27.298538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219913, 32.696747, 27.258930>,  <39.083374, 33.066883, 27.192919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219913, 32.696747, 27.258930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487471, 0.024160, -0.872805,
		0.803652, 0.378375, 0.459322,
		0.341344, -0.925337, 0.165030,
		39.322315, 32.419147, 27.308439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738811, 33.187149, 27.122217>,  <39.083374, 33.066883, 27.192919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738811, 33.187149, 27.122217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717102, 32.791451, 27.067883>,  <39.704075, 32.554031, 27.035282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717102, 32.791451, 27.067883>,  <39.738811, 33.187149, 27.122217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717102, 32.791451, 27.067883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734419, 0.052619, -0.676654,
		0.676523, -0.136488, 0.723663,
		-0.054277, -0.989243, -0.135837,
		39.700817, 32.494678, 27.027132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463898, 32.865025, 26.994940>,  <39.738811, 33.187149, 27.122217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463898, 32.865025, 26.994940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.211838, 32.591656, 26.847509>,  <40.060604, 32.427635, 26.759052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.211838, 32.591656, 26.847509>,  <40.463898, 32.865025, 26.994940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211838, 32.591656, 26.847509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561470, -0.073174, -0.824256,
		0.536345, -0.726346, 0.429832,
		-0.630147, -0.683423, -0.368575,
		40.022793, 32.386627, 26.736937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948704, 32.474266, 26.572693>,  <40.463898, 32.865025, 26.994940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948704, 32.474266, 26.572693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582939, 32.372036, 26.447134>,  <40.363480, 32.310699, 26.371798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582939, 32.372036, 26.447134>,  <40.948704, 32.474266, 26.572693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582939, 32.372036, 26.447134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377879, -0.260967, -0.888315,
		0.145113, -0.930902, 0.335207,
		-0.914412, -0.255574, -0.313898,
		40.308617, 32.295364, 26.352964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024052, 31.784933, 26.329004>,  <40.948704, 32.474266, 26.572693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024052, 31.784933, 26.329004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696453, 31.920092, 26.143503>,  <40.499893, 32.001186, 26.032202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.696453, 31.920092, 26.143503>,  <41.024052, 31.784933, 26.329004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696453, 31.920092, 26.143503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409314, -0.222372, -0.884880,
		-0.402124, -0.914536, 0.043816,
		-0.818999, 0.337897, -0.463754,
		40.450752, 32.021461, 26.004377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860710, 31.328091, 25.828089>,  <41.024052, 31.784933, 26.329004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860710, 31.328091, 25.828089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695671, 31.671707, 25.706882>,  <40.596649, 31.877876, 25.634159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695671, 31.671707, 25.706882>,  <40.860710, 31.328091, 25.828089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695671, 31.671707, 25.706882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267217, -0.203872, -0.941824,
		-0.870840, -0.469560, -0.145435,
		-0.412593, 0.859040, -0.303014,
		40.571892, 31.929419, 25.615978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309868, 31.155481, 25.368229>,  <40.860710, 31.328091, 25.828089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309868, 31.155481, 25.368229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469830, 31.507343, 25.265247>,  <40.565807, 31.718460, 25.203459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.469830, 31.507343, 25.265247>,  <40.309868, 31.155481, 25.368229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469830, 31.507343, 25.265247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256780, -0.377167, -0.889836,
		-0.879853, 0.289739, -0.376709,
		0.399902, 0.879657, -0.257453,
		40.589802, 31.771240, 25.188011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183136, 31.208155, 24.608232>,  <40.309868, 31.155481, 25.368229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183136, 31.208155, 24.608232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457329, 31.492903, 24.669357>,  <40.621845, 31.663752, 24.706032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457329, 31.492903, 24.669357>,  <40.183136, 31.208155, 24.608232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457329, 31.492903, 24.669357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373872, -0.164058, -0.912855,
		-0.624766, 0.682879, -0.378608,
		0.685483, 0.711872, 0.152812,
		40.662975, 31.706465, 24.715200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166470, 31.561680, 24.008675>,  <40.183136, 31.208155, 24.608232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166470, 31.561680, 24.008675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514904, 31.668633, 24.173462>,  <40.723965, 31.732803, 24.272333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.514904, 31.668633, 24.173462>,  <40.166470, 31.561680, 24.008675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514904, 31.668633, 24.173462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424774, 0.010890, -0.905234,
		-0.246528, 0.963530, -0.104090,
		0.871086, 0.267380, 0.411967,
		40.776230, 31.748846, 24.297052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339634, 32.142067, 23.582247>,  <40.166470, 31.561680, 24.008675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339634, 32.142067, 23.582247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671703, 31.992340, 23.747509>,  <40.870945, 31.902504, 23.846666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.671703, 31.992340, 23.747509>,  <40.339634, 32.142067, 23.582247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671703, 31.992340, 23.747509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452016, 0.018132, -0.891825,
		0.326334, 0.927124, 0.184250,
		0.830173, -0.374317, 0.413158,
		40.920753, 31.880045, 23.871456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968456, 32.583042, 23.214499>,  <40.339634, 32.142067, 23.582247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968456, 32.583042, 23.214499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145630, 32.288849, 23.419584>,  <41.251934, 32.112335, 23.542637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145630, 32.288849, 23.419584>,  <40.968456, 32.583042, 23.214499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145630, 32.288849, 23.419584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747903, -0.012258, -0.663694,
		0.494420, 0.677435, 0.544639,
		0.442933, -0.735481, 0.512716,
		41.278511, 32.068203, 23.573399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711662, 32.766823, 23.375957>,  <40.968456, 32.583042, 23.214499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711662, 32.766823, 23.375957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736229, 32.368797, 23.407143>,  <41.750969, 32.129982, 23.425854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.736229, 32.368797, 23.407143>,  <41.711662, 32.766823, 23.375957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736229, 32.368797, 23.407143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831758, 0.007848, -0.555083,
		0.551730, 0.098941, 0.828133,
		0.061419, -0.995062, 0.077965,
		41.754654, 32.070278, 23.430532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452820, 32.586441, 23.373419>,  <41.711662, 32.766823, 23.375957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452820, 32.586441, 23.373419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.290337, 32.232853, 23.280817>,  <42.192844, 32.020702, 23.225256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.290337, 32.232853, 23.280817>,  <42.452820, 32.586441, 23.373419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290337, 32.232853, 23.280817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773693, -0.197916, -0.601854,
		0.486200, -0.423594, 0.764315,
		-0.406212, -0.883967, -0.231505,
		42.168472, 31.967663, 23.211365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960102, 32.088154, 23.450207>,  <42.452820, 32.586441, 23.373419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960102, 32.088154, 23.450207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.694336, 31.930252, 23.196363>,  <42.534878, 31.835512, 23.044058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.694336, 31.930252, 23.196363>,  <42.960102, 32.088154, 23.450207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694336, 31.930252, 23.196363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747125, -0.372451, -0.550531,
		-0.019038, -0.839912, 0.542389,
		-0.664411, -0.394751, -0.634610,
		42.495014, 31.811827, 23.005980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204205, 31.497297, 23.189653>,  <42.960102, 32.088154, 23.450207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204205, 31.497297, 23.189653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924969, 31.581474, 22.915897>,  <42.757427, 31.631981, 22.751644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.924969, 31.581474, 22.915897>,  <43.204205, 31.497297, 23.189653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924969, 31.581474, 22.915897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630972, -0.271010, -0.726930,
		-0.338454, -0.939291, 0.056405,
		-0.698085, 0.210442, -0.684391,
		42.715542, 31.644606, 22.710581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326298, 31.051056, 22.535789>,  <43.204205, 31.497297, 23.189653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326298, 31.051056, 22.535789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097630, 31.359331, 22.423197>,  <42.960426, 31.544296, 22.355642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097630, 31.359331, 22.423197>,  <43.326298, 31.051056, 22.535789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097630, 31.359331, 22.423197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545049, 0.100289, -0.832384,
		-0.613278, -0.629272, -0.477395,
		-0.571674, 0.770687, -0.281479,
		42.926128, 31.590538, 22.338753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175724, 30.899157, 21.897657>,  <43.326298, 31.051056, 22.535789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175724, 30.899157, 21.897657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137894, 31.295444, 21.936703>,  <43.115196, 31.533218, 21.960129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137894, 31.295444, 21.936703>,  <43.175724, 30.899157, 21.897657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137894, 31.295444, 21.936703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480173, 0.131288, -0.867293,
		-0.872060, -0.035153, -0.488134,
		-0.094574, 0.990721, 0.097611,
		43.109520, 31.592661, 21.965986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874683, 31.189447, 21.227947>,  <43.175724, 30.899157, 21.897657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874683, 31.189447, 21.227947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002632, 31.523109, 21.407665>,  <43.079399, 31.723307, 21.515497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002632, 31.523109, 21.407665>,  <42.874683, 31.189447, 21.227947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002632, 31.523109, 21.407665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470110, 0.271987, -0.839655,
		-0.822606, 0.479798, -0.305145,
		0.319869, 0.834156, 0.449296,
		43.098595, 31.773355, 21.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644684, 31.775326, 20.811987>,  <42.874683, 31.189447, 21.227947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644684, 31.775326, 20.811987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949226, 31.939705, 21.012571>,  <43.131950, 32.038334, 21.132921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949226, 31.939705, 21.012571>,  <42.644684, 31.775326, 20.811987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949226, 31.939705, 21.012571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457292, 0.207906, -0.864673,
		-0.459591, 0.887636, -0.029632,
		0.761354, 0.410946, 0.501461,
		43.177631, 32.062988, 21.163010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687893, 32.566475, 20.711248>,  <42.644684, 31.775326, 20.811987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687893, 32.566475, 20.711248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.037682, 32.392056, 20.796253>,  <43.247555, 32.287403, 20.847256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.037682, 32.392056, 20.796253>,  <42.687893, 32.566475, 20.711248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037682, 32.392056, 20.796253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411847, 0.435946, -0.800208,
		0.256289, 0.787280, 0.560808,
		0.874470, -0.436051, 0.212510,
		43.300022, 32.261242, 20.860006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129162, 33.026772, 20.450043>,  <42.687893, 32.566475, 20.711248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129162, 33.026772, 20.450043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.342552, 32.690144, 20.483885>,  <43.470585, 32.488167, 20.504190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.342552, 32.690144, 20.483885>,  <43.129162, 33.026772, 20.450043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342552, 32.690144, 20.483885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616804, 0.318637, -0.719738,
		0.578754, 0.436148, 0.689071,
		0.533476, -0.841573, 0.084606,
		43.502594, 32.437672, 20.509266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492107, 33.266121, 20.045334>,  <43.129162, 33.026772, 20.450043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492107, 33.266121, 20.045334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.211418, 33.415405, 19.802584>,  <42.043003, 33.504974, 19.656933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.211418, 33.415405, 19.802584>,  <42.492107, 33.266121, 20.045334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211418, 33.415405, 19.802584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669289, -0.053344, 0.741085,
		0.244208, 0.926212, 0.287219,
		-0.701723, 0.373211, -0.606876,
		42.000900, 33.527370, 19.620522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158966, 33.730034, 20.481321>,  <42.492107, 33.266121, 20.045334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158966, 33.730034, 20.481321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914921, 33.692146, 20.166670>,  <41.768494, 33.669415, 19.977879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914921, 33.692146, 20.166670>,  <42.158966, 33.730034, 20.481321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914921, 33.692146, 20.166670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786914, -0.043257, 0.615544,
		-0.092329, 0.994564, -0.048141,
		-0.610116, -0.094716, -0.786631,
		41.731888, 33.663731, 19.930681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642517, 34.199810, 20.631327>,  <42.158966, 33.730034, 20.481321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642517, 34.199810, 20.631327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507996, 33.943214, 20.355530>,  <41.427284, 33.789257, 20.190052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507996, 33.943214, 20.355530>,  <41.642517, 34.199810, 20.631327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507996, 33.943214, 20.355530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802407, -0.188083, 0.566364,
		-0.492996, 0.743720, -0.451481,
		-0.336300, -0.641487, -0.689490,
		41.407104, 33.750767, 20.148684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986958, 34.403549, 20.418678>,  <41.642517, 34.199810, 20.631327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986958, 34.403549, 20.418678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978821, 34.016029, 20.319870>,  <40.973938, 33.783520, 20.260584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.978821, 34.016029, 20.319870>,  <40.986958, 34.403549, 20.418678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978821, 34.016029, 20.319870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625568, -0.180399, 0.759026,
		-0.779904, 0.169971, -0.602378,
		-0.020344, -0.968796, -0.247022,
		40.972717, 33.725391, 20.245764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236828, 34.250374, 20.321926>,  <40.986958, 34.403549, 20.418678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236828, 34.250374, 20.321926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.429138, 33.906963, 20.393238>,  <40.544525, 33.700916, 20.436026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.429138, 33.906963, 20.393238>,  <40.236828, 34.250374, 20.321926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429138, 33.906963, 20.393238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671783, -0.229979, 0.704143,
		-0.563526, -0.458301, -0.687313,
		0.480777, -0.858528, 0.178280,
		40.573372, 33.649406, 20.446722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694244, 33.822803, 20.365805>,  <40.236828, 34.250374, 20.321926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694244, 33.822803, 20.365805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000385, 33.623055, 20.528221>,  <40.184071, 33.503204, 20.625671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000385, 33.623055, 20.528221>,  <39.694244, 33.822803, 20.365805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000385, 33.623055, 20.528221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583399, -0.271822, 0.765349,
		-0.271822, -0.822643, -0.499371,
		-0.765349, 0.499371, -0.406042,
		40.229988, 33.473244, 20.650034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442757, 33.216496, 20.643038>,  <39.694244, 33.822803, 20.365805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442757, 33.216496, 20.643038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778145, 33.277584, 20.852280>,  <39.979378, 33.314236, 20.977825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778145, 33.277584, 20.852280>,  <39.442757, 33.216496, 20.643038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778145, 33.277584, 20.852280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460645, -0.314231, 0.830099,
		0.291147, -0.936982, -0.193126,
		0.838474, 0.152719, 0.523104,
		40.029686, 33.323399, 21.009211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411427, 32.647865, 21.088339>,  <39.442757, 33.216496, 20.643038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411427, 32.647865, 21.088339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668068, 32.909317, 21.248894>,  <39.822052, 33.066189, 21.345226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668068, 32.909317, 21.248894>,  <39.411427, 32.647865, 21.088339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668068, 32.909317, 21.248894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363705, -0.201476, 0.909465,
		0.675326, -0.729500, 0.108463,
		0.641602, 0.653634, 0.401385,
		39.860550, 33.105408, 21.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648544, 32.390965, 21.776476>,  <39.411427, 32.647865, 21.088339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648544, 32.390965, 21.776476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743664, 32.778904, 21.797825>,  <39.800735, 33.011669, 21.810635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743664, 32.778904, 21.797825>,  <39.648544, 32.390965, 21.776476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743664, 32.778904, 21.797825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120213, -0.025143, 0.992430,
		0.963848, -0.242411, 0.110609,
		0.237795, 0.969848, 0.053375,
		39.815002, 33.069859, 21.813837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187176, 32.408466, 22.320284>,  <39.648544, 32.390965, 21.776476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187176, 32.408466, 22.320284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004814, 32.761959, 22.278000>,  <39.895397, 32.974052, 22.252630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004814, 32.761959, 22.278000>,  <40.187176, 32.408466, 22.320284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004814, 32.761959, 22.278000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324798, -0.054617, 0.944205,
		0.828647, 0.464803, 0.311934,
		-0.455907, 0.883728, -0.105709,
		39.868042, 33.027077, 22.246286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350227, 32.933086, 22.984980>,  <40.187176, 32.408466, 22.320284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350227, 32.933086, 22.984980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011497, 33.072411, 22.824200>,  <39.808258, 33.156006, 22.727732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011497, 33.072411, 22.824200>,  <40.350227, 32.933086, 22.984980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011497, 33.072411, 22.824200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382421, 0.126482, 0.915290,
		0.369648, 0.928805, 0.026095,
		-0.846826, 0.348315, -0.401948,
		39.757450, 33.176907, 22.703615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297104, 33.607849, 23.323915>,  <40.350227, 32.933086, 22.984980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297104, 33.607849, 23.323915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956764, 33.475979, 23.160275>,  <39.752560, 33.396854, 23.062090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956764, 33.475979, 23.160275>,  <40.297104, 33.607849, 23.323915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956764, 33.475979, 23.160275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493601, 0.234776, 0.837400,
		-0.180026, 0.914436, -0.362489,
		-0.850852, -0.329679, -0.409100,
		39.701508, 33.377075, 23.037544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833305, 34.154697, 23.449020>,  <40.297104, 33.607849, 23.323915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833305, 34.154697, 23.449020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605721, 33.834660, 23.372982>,  <39.469170, 33.642639, 23.327360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605721, 33.834660, 23.372982>,  <39.833305, 34.154697, 23.449020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605721, 33.834660, 23.372982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483202, 0.138210, 0.864531,
		-0.665432, 0.583738, -0.465242,
		-0.568960, -0.800093, -0.190094,
		39.435032, 33.594631, 23.315954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211094, 34.291607, 23.697855>,  <39.833305, 34.154697, 23.449020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211094, 34.291607, 23.697855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192970, 33.893452, 23.664019>,  <39.182095, 33.654560, 23.643717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192970, 33.893452, 23.664019>,  <39.211094, 34.291607, 23.697855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192970, 33.893452, 23.664019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535774, -0.047255, 0.843038,
		-0.843144, 0.083523, -0.531160,
		-0.045313, -0.995385, -0.084592,
		39.179375, 33.594837, 23.638641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517830, 34.170433, 24.003653>,  <39.211094, 34.291607, 23.697855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517830, 34.170433, 24.003653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676060, 33.803059, 24.003546>,  <38.770996, 33.582634, 24.003483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676060, 33.803059, 24.003546>,  <38.517830, 34.170433, 24.003653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676060, 33.803059, 24.003546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577348, -0.248892, 0.777639,
		-0.714275, -0.307462, -0.628711,
		0.395575, -0.918433, -0.000265,
		38.794731, 33.527527, 24.003466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897331, 33.650784, 24.103342>,  <38.517830, 34.170433, 24.003653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897331, 33.650784, 24.103342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246136, 33.489063, 24.213709>,  <38.455418, 33.392029, 24.279928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246136, 33.489063, 24.213709>,  <37.897331, 33.650784, 24.103342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246136, 33.489063, 24.213709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415056, -0.311956, 0.854642,
		-0.259461, -0.859780, -0.439839,
		0.872014, -0.404304, 0.275916,
		38.507740, 33.367771, 24.296484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783058, 32.864876, 24.262739>,  <37.897331, 33.650784, 24.103342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783058, 32.864876, 24.262739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093945, 33.031696, 24.451210>,  <38.280476, 33.131786, 24.564293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093945, 33.031696, 24.451210>,  <37.783058, 32.864876, 24.262739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093945, 33.031696, 24.451210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340437, -0.351048, 0.872277,
		0.529187, -0.838353, -0.130861,
		0.777215, 0.417048, 0.471176,
		38.327110, 33.156811, 24.592564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956833, 32.359344, 24.788729>,  <37.783058, 32.864876, 24.262739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956833, 32.359344, 24.788729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105637, 32.713646, 24.899759>,  <38.194920, 32.926228, 24.966377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.105637, 32.713646, 24.899759>,  <37.956833, 32.359344, 24.788729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105637, 32.713646, 24.899759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315208, -0.160725, 0.935314,
		0.873073, -0.435436, 0.219407,
		0.372005, 0.885756, 0.277578,
		38.217239, 32.979374, 24.983032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073799, 32.268120, 25.452948>,  <37.956833, 32.359344, 24.788729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073799, 32.268120, 25.452948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098099, 32.667225, 25.441767>,  <38.112679, 32.906689, 25.435059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098099, 32.667225, 25.441767>,  <38.073799, 32.268120, 25.452948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098099, 32.667225, 25.441767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232159, 0.041359, 0.971798,
		0.970779, -0.052546, 0.234152,
		0.060749, 0.997762, -0.027951,
		38.116322, 32.966553, 25.433382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454884, 32.423653, 26.014317>,  <38.073799, 32.268120, 25.452948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454884, 32.423653, 26.014317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285629, 32.777184, 25.934515>,  <38.184078, 32.989304, 25.886633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285629, 32.777184, 25.934515>,  <38.454884, 32.423653, 26.014317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285629, 32.777184, 25.934515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396906, 0.017134, 0.917699,
		0.814509, 0.467493, 0.343548,
		-0.423132, 0.883831, -0.199506,
		38.158691, 33.042332, 25.874662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.620800, 32.084343, 31.509583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367832, 32.366604, 31.381771>,  <39.216053, 32.535961, 31.305084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367832, 32.366604, 31.381771>,  <39.620800, 32.084343, 31.509583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367832, 32.366604, 31.381771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170460, 0.275606, 0.946036,
		0.755639, 0.652757, -0.054012,
		-0.632418, 0.705655, -0.319528,
		39.178108, 32.578300, 31.285913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838238, 32.728241, 31.768406>,  <39.620800, 32.084343, 31.509583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838238, 32.728241, 31.768406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448513, 32.787903, 31.700912>,  <39.214680, 32.823700, 31.660416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448513, 32.787903, 31.700912>,  <39.838238, 32.728241, 31.768406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448513, 32.787903, 31.700912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084057, 0.454236, 0.886907,
		0.208934, 0.878306, -0.430029,
		-0.974311, 0.149158, -0.168733,
		39.156219, 32.832649, 31.650293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712639, 33.468971, 31.910410>,  <39.838238, 32.728241, 31.768406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712639, 33.468971, 31.910410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347324, 33.306202, 31.917652>,  <39.128136, 33.208542, 31.921997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.347324, 33.306202, 31.917652>,  <39.712639, 33.468971, 31.910410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347324, 33.306202, 31.917652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240043, 0.573593, 0.783180,
		-0.329078, 0.710919, -0.621532,
		-0.913284, -0.406921, 0.018106,
		39.073338, 33.184124, 31.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145515, 34.005531, 31.918447>,  <39.712639, 33.468971, 31.910410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145515, 34.005531, 31.918447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967979, 33.673283, 32.052948>,  <38.861458, 33.473934, 32.133648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967979, 33.673283, 32.052948>,  <39.145515, 34.005531, 31.918447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967979, 33.673283, 32.052948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280924, 0.485297, 0.827991,
		-0.850933, 0.273035, -0.448738,
		-0.443842, -0.830625, 0.336253,
		38.834827, 33.424095, 32.153824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441814, 34.165363, 32.012901>,  <39.145515, 34.005531, 31.918447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441814, 34.165363, 32.012901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503601, 33.846043, 32.245743>,  <38.540672, 33.654449, 32.385448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503601, 33.846043, 32.245743>,  <38.441814, 34.165363, 32.012901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503601, 33.846043, 32.245743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200457, 0.551601, 0.809662,
		-0.967449, -0.241753, -0.074823,
		0.154466, -0.798306, 0.582107,
		38.549942, 33.606552, 32.420376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856148, 34.124313, 32.377033>,  <38.441814, 34.165363, 32.012901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856148, 34.124313, 32.377033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126793, 33.929718, 32.598129>,  <38.289181, 33.812962, 32.730785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.126793, 33.929718, 32.598129>,  <37.856148, 34.124313, 32.377033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126793, 33.929718, 32.598129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279411, 0.524888, 0.804004,
		-0.681264, -0.698444, 0.219218,
		0.676616, -0.486486, 0.552740,
		38.329777, 33.783772, 32.763950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499256, 33.921021, 32.938339>,  <37.856148, 34.124313, 32.377033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499256, 33.921021, 32.938339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875668, 33.874184, 33.065311>,  <38.101513, 33.846081, 33.141495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.875668, 33.874184, 33.065311>,  <37.499256, 33.921021, 32.938339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875668, 33.874184, 33.065311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253854, 0.375883, 0.891218,
		-0.223676, -0.919239, 0.323990,
		0.941025, -0.117098, 0.317429,
		38.157974, 33.839054, 33.160542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414612, 33.578083, 33.544014>,  <37.499256, 33.921021, 32.938339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414612, 33.578083, 33.544014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779339, 33.742302, 33.546581>,  <37.998177, 33.840832, 33.548122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.779339, 33.742302, 33.546581>,  <37.414612, 33.578083, 33.544014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779339, 33.742302, 33.546581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159172, 0.339029, 0.927213,
		0.378494, -0.846467, 0.374480,
		0.911815, 0.410552, 0.006413,
		38.052883, 33.865467, 33.548508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692360, 33.504528, 34.193890>,  <37.414612, 33.578083, 33.544014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692360, 33.504528, 34.193890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930519, 33.788456, 34.043343>,  <38.073414, 33.958813, 33.953014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930519, 33.788456, 34.043343>,  <37.692360, 33.504528, 34.193890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930519, 33.788456, 34.043343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006894, 0.472947, 0.881064,
		0.803400, -0.521991, 0.286486,
		0.595400, 0.709822, -0.376367,
		38.109138, 34.001404, 33.930431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127678, 33.592194, 34.687843>,  <37.692360, 33.504528, 34.193890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127678, 33.592194, 34.687843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132694, 33.915607, 34.452518>,  <38.135704, 34.109657, 34.311325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132694, 33.915607, 34.452518>,  <38.127678, 33.592194, 34.687843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132694, 33.915607, 34.452518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068260, 0.587678, 0.806210,
		0.997589, 0.030049, 0.062560,
		0.012540, 0.808537, -0.588312,
		38.136456, 34.158169, 34.276024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624050, 34.046604, 35.022205>,  <38.127678, 33.592194, 34.687843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624050, 34.046604, 35.022205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360233, 34.259140, 34.809532>,  <38.201942, 34.386662, 34.681927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360233, 34.259140, 34.809532>,  <38.624050, 34.046604, 35.022205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360233, 34.259140, 34.809532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213531, 0.545758, 0.810279,
		0.720702, 0.647943, -0.246493,
		-0.659540, 0.531336, -0.531685,
		38.162373, 34.418541, 34.650028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816216, 34.769234, 34.969292>,  <38.624050, 34.046604, 35.022205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816216, 34.769234, 34.969292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421879, 34.763103, 34.902504>,  <38.185276, 34.759426, 34.862431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421879, 34.763103, 34.902504>,  <38.816216, 34.769234, 34.969292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421879, 34.763103, 34.902504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135673, 0.658021, 0.740676,
		0.098516, 0.752843, -0.650785,
		-0.985843, -0.015326, -0.166966,
		38.126125, 34.758507, 34.852413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690819, 35.534386, 34.887341>,  <38.816216, 34.769234, 34.969292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690819, 35.534386, 34.887341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020287, 35.758713, 34.853767>,  <39.217968, 35.893311, 34.833622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.020287, 35.758713, 34.853767>,  <38.690819, 35.534386, 34.887341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020287, 35.758713, 34.853767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235437, 0.472862, 0.849100,
		0.515880, -0.679620, 0.521521,
		0.823673, 0.560819, -0.083932,
		39.267387, 35.926960, 34.828587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158096, 35.389225, 35.528538>,  <38.690819, 35.534386, 34.887341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158096, 35.389225, 35.528538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222488, 35.756580, 35.383961>,  <39.261124, 35.976994, 35.297215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222488, 35.756580, 35.383961>,  <39.158096, 35.389225, 35.528538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222488, 35.756580, 35.383961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279277, 0.393640, 0.875815,
		0.946621, -0.040043, 0.319853,
		0.160977, 0.918392, -0.361445,
		39.270782, 36.032097, 35.275528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372662, 35.863811, 36.044819>,  <39.158096, 35.389225, 35.528538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372662, 35.863811, 36.044819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276932, 36.133667, 35.765511>,  <39.219494, 36.295582, 35.597923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276932, 36.133667, 35.765511>,  <39.372662, 35.863811, 36.044819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276932, 36.133667, 35.765511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406077, 0.583707, 0.703127,
		0.881944, 0.451828, 0.134261,
		-0.239324, 0.674639, -0.698274,
		39.205135, 36.336060, 35.556030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840313, 36.140560, 36.461937>,  <39.372662, 35.863811, 36.044819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840313, 36.140560, 36.461937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226768, 36.236748, 36.424526>,  <40.458641, 36.294460, 36.402081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226768, 36.236748, 36.424526>,  <39.840313, 36.140560, 36.461937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226768, 36.236748, 36.424526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082363, -0.056081, -0.995023,
		-0.244515, 0.969036, -0.034377,
		0.966141, 0.240467, -0.093525,
		40.516609, 36.308887, 36.396469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843189, 36.562401, 35.907246>,  <39.840313, 36.140560, 36.461937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843189, 36.562401, 35.907246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.234257, 36.492565, 35.954021>,  <40.468899, 36.450665, 35.982086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.234257, 36.492565, 35.954021>,  <39.843189, 36.562401, 35.907246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234257, 36.492565, 35.954021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088090, -0.164743, -0.982395,
		0.190782, 0.970761, -0.145685,
		0.977672, -0.174590, 0.116944,
		40.527557, 36.440189, 35.989105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120819, 36.928791, 35.367081>,  <39.843189, 36.562401, 35.907246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120819, 36.928791, 35.367081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398060, 36.656914, 35.463104>,  <40.564404, 36.493790, 35.520718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398060, 36.656914, 35.463104>,  <40.120819, 36.928791, 35.367081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398060, 36.656914, 35.463104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011843, -0.343718, -0.938998,
		0.720740, 0.647981, -0.246282,
		0.693105, -0.679690, 0.240057,
		40.605991, 36.453007, 35.535122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681202, 37.032619, 34.902893>,  <40.120819, 36.928791, 35.367081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681202, 37.032619, 34.902893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720055, 36.658562, 35.039165>,  <40.743366, 36.434128, 35.120930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720055, 36.658562, 35.039165>,  <40.681202, 37.032619, 34.902893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720055, 36.658562, 35.039165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013055, -0.341078, -0.939944,
		0.995186, 0.095750, -0.020922,
		0.097136, -0.935146, 0.340686,
		40.749195, 36.378017, 35.141373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269081, 36.797138, 34.631969>,  <40.681202, 37.032619, 34.902893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269081, 36.797138, 34.631969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041817, 36.479435, 34.718079>,  <40.905457, 36.288811, 34.769745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041817, 36.479435, 34.718079>,  <41.269081, 36.797138, 34.631969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041817, 36.479435, 34.718079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074659, -0.310269, -0.947713,
		0.819523, -0.522382, 0.235582,
		-0.568162, -0.794261, 0.215272,
		40.871368, 36.241158, 34.782661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629318, 36.291943, 34.295025>,  <41.269081, 36.797138, 34.631969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629318, 36.291943, 34.295025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258881, 36.150341, 34.347233>,  <41.036617, 36.065380, 34.378555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258881, 36.150341, 34.347233>,  <41.629318, 36.291943, 34.295025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258881, 36.150341, 34.347233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008883, -0.366285, -0.930461,
		0.377195, -0.860532, 0.342358,
		-0.926091, -0.354007, 0.130517,
		40.981052, 36.044140, 34.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640102, 35.766174, 33.954357>,  <41.629318, 36.291943, 34.295025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640102, 35.766174, 33.954357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244595, 35.804253, 34.000435>,  <41.007290, 35.827099, 34.028084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244595, 35.804253, 34.000435>,  <41.640102, 35.766174, 33.954357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244595, 35.804253, 34.000435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140224, -0.324518, -0.935428,
		-0.051660, -0.941077, 0.334222,
		-0.988771, 0.095190, 0.115197,
		40.947964, 35.832809, 34.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489403, 35.128777, 33.702942>,  <41.640102, 35.766174, 33.954357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489403, 35.128777, 33.702942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162010, 35.358101, 33.717941>,  <40.965576, 35.495697, 33.726940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.162010, 35.358101, 33.717941>,  <41.489403, 35.128777, 33.702942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162010, 35.358101, 33.717941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265468, -0.319496, -0.909642,
		-0.509527, -0.754479, 0.413696,
		-0.818480, 0.573310, 0.037498,
		40.916466, 35.530094, 33.729191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963993, 34.689930, 33.489441>,  <41.489403, 35.128777, 33.702942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963993, 34.689930, 33.489441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.832115, 35.063221, 33.432331>,  <40.752987, 35.287197, 33.398064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.832115, 35.063221, 33.432331>,  <40.963993, 34.689930, 33.489441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832115, 35.063221, 33.432331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212593, -0.220736, -0.951882,
		-0.919840, -0.283479, 0.271174,
		-0.329696, 0.933229, -0.142777,
		40.733208, 35.343189, 33.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331554, 34.640991, 33.082859>,  <40.963993, 34.689930, 33.489441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331554, 34.640991, 33.082859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485527, 35.006477, 33.030792>,  <40.577911, 35.225769, 32.999550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485527, 35.006477, 33.030792>,  <40.331554, 34.640991, 33.082859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485527, 35.006477, 33.030792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044952, -0.122309, -0.991474,
		-0.921849, 0.387504, -0.006008,
		0.384934, 0.913718, -0.130170,
		40.601006, 35.280594, 32.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818710, 34.930492, 32.634235>,  <40.331554, 34.640991, 33.082859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818710, 34.930492, 32.634235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145218, 35.156273, 32.585098>,  <40.341122, 35.291740, 32.555614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145218, 35.156273, 32.585098>,  <39.818710, 34.930492, 32.634235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145218, 35.156273, 32.585098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054566, -0.136365, -0.989155,
		-0.575083, 0.814124, -0.080511,
		0.816273, 0.564453, -0.122845,
		40.390099, 35.325607, 32.548244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760220, 35.398899, 32.104309>,  <39.818710, 34.930492, 32.634235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760220, 35.398899, 32.104309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160049, 35.401352, 32.115685>,  <40.399948, 35.402824, 32.122509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160049, 35.401352, 32.115685>,  <39.760220, 35.398899, 32.104309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160049, 35.401352, 32.115685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028784, -0.067252, -0.997321,
		-0.004206, 0.997717, -0.067400,
		0.999577, 0.006135, 0.028435,
		40.459923, 35.403191, 32.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013824, 35.910793, 31.577948>,  <39.760220, 35.398899, 32.104309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013824, 35.910793, 31.577948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320087, 35.664959, 31.653894>,  <40.503845, 35.517456, 31.699463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320087, 35.664959, 31.653894>,  <40.013824, 35.910793, 31.577948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320087, 35.664959, 31.653894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272879, 0.043044, -0.961085,
		0.582499, 0.787673, 0.200665,
		0.765658, -0.614589, 0.189866,
		40.549786, 35.480583, 31.710854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378010, 36.485817, 31.718050>,  <40.013824, 35.910793, 31.577948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378010, 36.485817, 31.718050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533051, 36.841072, 31.619278>,  <40.626076, 37.054226, 31.560015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533051, 36.841072, 31.619278>,  <40.378010, 36.485817, 31.718050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533051, 36.841072, 31.619278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708109, 0.458366, 0.537106,
		0.590209, -0.033329, 0.806562,
		0.387602, 0.888138, -0.246931,
		40.649330, 37.107513, 31.545198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523701, 36.940517, 32.317886>,  <40.378010, 36.485817, 31.718050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523701, 36.940517, 32.317886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466396, 37.194881, 32.014545>,  <40.432014, 37.347500, 31.832541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466396, 37.194881, 32.014545>,  <40.523701, 36.940517, 32.317886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466396, 37.194881, 32.014545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676916, 0.496030, 0.543819,
		0.721984, 0.591250, 0.359392,
		-0.143264, 0.635907, -0.758352,
		40.423416, 37.385654, 31.787039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403896, 37.569469, 32.659130>,  <40.523701, 36.940517, 32.317886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403896, 37.569469, 32.659130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.280792, 37.657070, 32.288765>,  <40.206932, 37.709633, 32.066544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.280792, 37.657070, 32.288765>,  <40.403896, 37.569469, 32.659130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280792, 37.657070, 32.288765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795979, 0.473867, 0.376653,
		0.521250, 0.852928, 0.028487,
		-0.307759, 0.219005, -0.925916,
		40.188465, 37.722771, 32.010990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172268, 38.194084, 32.681690>,  <40.403896, 37.569469, 32.659130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172268, 38.194084, 32.681690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.979832, 38.036114, 32.368618>,  <39.864368, 37.941334, 32.180775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.979832, 38.036114, 32.368618>,  <40.172268, 38.194084, 32.681690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979832, 38.036114, 32.368618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866325, 0.350912, 0.355446,
		0.134277, 0.849056, -0.510954,
		-0.481093, -0.394924, -0.782678,
		39.835503, 37.917637, 32.133816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687710, 38.711010, 32.516361>,  <40.172268, 38.194084, 32.681690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687710, 38.711010, 32.516361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535065, 38.371925, 32.368977>,  <39.443478, 38.168476, 32.280548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535065, 38.371925, 32.368977>,  <39.687710, 38.711010, 32.516361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535065, 38.371925, 32.368977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906575, 0.265532, 0.328047,
		-0.180251, 0.459222, -0.869841,
		-0.381617, -0.847707, -0.368457,
		39.420578, 38.117615, 32.258438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995209, 38.880459, 32.399601>,  <39.687710, 38.711010, 32.516361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995209, 38.880459, 32.399601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959972, 38.482578, 32.378384>,  <38.938831, 38.243851, 32.365654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959972, 38.482578, 32.378384>,  <38.995209, 38.880459, 32.399601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959972, 38.482578, 32.378384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935213, 0.064253, 0.348207,
		-0.342954, 0.080276, -0.935916,
		-0.088088, -0.994699, -0.053039,
		38.933544, 38.184170, 32.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356564, 38.759705, 32.030651>,  <38.995209, 38.880459, 32.399601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356564, 38.759705, 32.030651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443489, 38.430695, 32.240879>,  <38.495644, 38.233288, 32.367016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.443489, 38.430695, 32.240879>,  <38.356564, 38.759705, 32.030651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443489, 38.430695, 32.240879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900897, 0.038235, 0.432344,
		-0.375710, -0.567441, -0.732703,
		0.217315, -0.822526, 0.525571,
		38.508682, 38.183937, 32.398552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803669, 38.416439, 31.907410>,  <38.356564, 38.759705, 32.030651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803669, 38.416439, 31.907410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956867, 38.259060, 32.241718>,  <38.048786, 38.164631, 32.442303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.956867, 38.259060, 32.241718>,  <37.803669, 38.416439, 31.907410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956867, 38.259060, 32.241718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892310, 0.076470, 0.444899,
		-0.238957, -0.916160, -0.321791,
		0.382991, -0.393449, 0.835772,
		38.071766, 38.141026, 32.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292587, 37.863533, 32.156479>,  <37.803669, 38.416439, 31.907410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292587, 37.863533, 32.156479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514439, 37.915199, 32.485283>,  <37.647549, 37.946201, 32.682568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514439, 37.915199, 32.485283>,  <37.292587, 37.863533, 32.156479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514439, 37.915199, 32.485283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790313, -0.227347, 0.568963,
		0.260374, -0.965209, -0.024008,
		0.554627, 0.129169, 0.822012,
		37.680828, 37.953949, 32.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152832, 37.261696, 32.538311>,  <37.292587, 37.863533, 32.156479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152832, 37.261696, 32.538311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290123, 37.529423, 32.801888>,  <37.372498, 37.690060, 32.960033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290123, 37.529423, 32.801888>,  <37.152832, 37.261696, 32.538311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290123, 37.529423, 32.801888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810473, -0.143510, 0.567925,
		0.474687, -0.728984, 0.493208,
		0.343228, 0.669318, 0.658944,
		37.393093, 37.730217, 32.999573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269215, 36.896172, 33.243805>,  <37.152832, 37.261696, 32.538311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269215, 36.896172, 33.243805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223774, 37.290363, 33.294285>,  <37.196510, 37.526878, 33.324574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223774, 37.290363, 33.294285>,  <37.269215, 36.896172, 33.243805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223774, 37.290363, 33.294285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749832, -0.168376, 0.639845,
		0.651803, -0.021937, 0.758071,
		-0.113605, 0.985479, 0.126197,
		37.189693, 37.586006, 33.332146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466072, 37.273220, 33.834034>,  <37.269215, 36.896172, 33.243805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466072, 37.273220, 33.834034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123787, 37.403339, 33.673069>,  <36.918415, 37.481411, 33.576488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123787, 37.403339, 33.673069>,  <37.466072, 37.273220, 33.834034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123787, 37.403339, 33.673069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500252, -0.321226, 0.804091,
		0.132305, 0.889378, 0.437609,
		-0.855712, 0.325300, -0.402414,
		36.867073, 37.500931, 33.552345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.745266, 36.645145, 28.403671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554874, 36.979412, 28.294044>,  <42.440639, 37.179970, 28.228270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554874, 36.979412, 28.294044>,  <42.745266, 36.645145, 28.403671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554874, 36.979412, 28.294044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002435, 0.312882, 0.949789,
		0.879453, 0.451413, -0.150960,
		-0.475980, 0.835662, -0.274066,
		42.412079, 37.230110, 28.211824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005577, 37.125191, 28.944695>,  <42.745266, 36.645145, 28.403671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005577, 37.125191, 28.944695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689529, 37.280045, 28.754606>,  <42.499901, 37.372955, 28.640554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689529, 37.280045, 28.754606>,  <43.005577, 37.125191, 28.944695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689529, 37.280045, 28.754606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426595, 0.209402, 0.879868,
		0.440137, 0.897930, -0.000305,
		-0.790124, 0.387133, -0.475219,
		42.452492, 37.396183, 28.612041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881218, 37.810387, 29.286623>,  <43.005577, 37.125191, 28.944695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881218, 37.810387, 29.286623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565613, 37.637348, 29.112122>,  <42.376251, 37.533524, 29.007420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565613, 37.637348, 29.112122>,  <42.881218, 37.810387, 29.286623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565613, 37.637348, 29.112122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472196, -0.027284, 0.881071,
		-0.393055, 0.901173, -0.182745,
		-0.789011, -0.432600, -0.436255,
		42.328911, 37.507568, 28.981245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384678, 38.152058, 29.646446>,  <42.881218, 37.810387, 29.286623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384678, 38.152058, 29.646446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186523, 37.848885, 29.476681>,  <42.067631, 37.666981, 29.374823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186523, 37.848885, 29.476681>,  <42.384678, 38.152058, 29.646446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186523, 37.848885, 29.476681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716605, 0.080420, 0.692827,
		-0.490988, 0.647353, -0.582980,
		-0.495387, -0.757936, -0.424412,
		42.037907, 37.621502, 29.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794632, 38.344177, 29.578753>,  <42.384678, 38.152058, 29.646446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794632, 38.344177, 29.578753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743576, 37.947617, 29.567238>,  <41.712944, 37.709679, 29.560329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743576, 37.947617, 29.567238>,  <41.794632, 38.344177, 29.578753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743576, 37.947617, 29.567238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701536, 0.069724, 0.709215,
		-0.701111, 0.110718, -0.704404,
		-0.127636, -0.991403, -0.028788,
		41.705284, 37.650196, 29.558601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055580, 38.251102, 29.697042>,  <41.794632, 38.344177, 29.578753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055580, 38.251102, 29.697042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225082, 37.894512, 29.761173>,  <41.326786, 37.680557, 29.799652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225082, 37.894512, 29.761173>,  <41.055580, 38.251102, 29.697042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225082, 37.894512, 29.761173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618829, -0.155687, 0.769943,
		-0.661422, -0.425486, -0.617642,
		0.423759, -0.891473, 0.160328,
		41.352211, 37.627071, 29.809271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536079, 37.699451, 29.722359>,  <41.055580, 38.251102, 29.697042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536079, 37.699451, 29.722359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821671, 37.535492, 29.949415>,  <40.993023, 37.437115, 30.085649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821671, 37.535492, 29.949415>,  <40.536079, 37.699451, 29.722359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821671, 37.535492, 29.949415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649066, -0.083429, 0.756143,
		-0.262588, -0.908305, -0.325621,
		0.713975, -0.409904, 0.567643,
		41.035862, 37.412521, 30.119709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223774, 37.112579, 30.065832>,  <40.536079, 37.699451, 29.722359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223774, 37.112579, 30.065832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560581, 37.174526, 30.272530>,  <40.762665, 37.211693, 30.396549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560581, 37.174526, 30.272530>,  <40.223774, 37.112579, 30.065832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560581, 37.174526, 30.272530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524854, 0.013849, 0.851079,
		0.124651, -0.987838, 0.092945,
		0.842016, 0.154871, 0.516745,
		40.813187, 37.220985, 30.427553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232807, 36.684246, 30.595116>,  <40.223774, 37.112579, 30.065832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232807, 36.684246, 30.595116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491566, 36.955456, 30.734724>,  <40.646820, 37.118179, 30.818489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491566, 36.955456, 30.734724>,  <40.232807, 36.684246, 30.595116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491566, 36.955456, 30.734724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552970, 0.101902, 0.826946,
		0.525120, -0.727946, 0.440844,
		0.646895, 0.678020, 0.349022,
		40.685635, 37.158863, 30.839430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478172, 36.166153, 31.089077>,  <40.232807, 36.684246, 30.595116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478172, 36.166153, 31.089077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618675, 35.804638, 31.186882>,  <40.702976, 35.587730, 31.245565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618675, 35.804638, 31.186882>,  <40.478172, 36.166153, 31.089077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618675, 35.804638, 31.186882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369050, -0.106363, -0.923303,
		0.860477, 0.414555, 0.296182,
		0.351257, -0.903787, 0.244515,
		40.724052, 35.533501, 31.260237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232201, 36.132111, 30.785065>,  <40.478172, 36.166153, 31.089077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232201, 36.132111, 30.785065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079483, 35.764069, 30.820032>,  <40.987854, 35.543243, 30.841013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079483, 35.764069, 30.820032>,  <41.232201, 36.132111, 30.785065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079483, 35.764069, 30.820032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447565, -0.266810, -0.853521,
		0.808652, -0.286744, 0.513673,
		-0.381795, -0.920103, 0.087420,
		40.964943, 35.488037, 30.846258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798695, 35.737923, 30.642233>,  <41.232201, 36.132111, 30.785065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798695, 35.737923, 30.642233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486610, 35.493988, 30.586567>,  <41.299358, 35.347630, 30.553167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486610, 35.493988, 30.586567>,  <41.798695, 35.737923, 30.642233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486610, 35.493988, 30.586567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370276, -0.270966, -0.888523,
		0.504143, -0.744768, 0.437219,
		-0.780215, -0.609834, -0.139164,
		41.252544, 35.311039, 30.544817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041370, 35.335861, 30.133448>,  <41.798695, 35.737923, 30.642233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041370, 35.335861, 30.133448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674614, 35.184521, 30.184309>,  <41.454559, 35.093716, 30.214827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674614, 35.184521, 30.184309>,  <42.041370, 35.335861, 30.133448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674614, 35.184521, 30.184309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153918, -0.629072, -0.761956,
		0.368277, -0.679056, 0.635023,
		-0.916887, -0.378353, 0.127154,
		41.399548, 35.071014, 30.222456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068615, 34.570217, 30.264223>,  <42.041370, 35.335861, 30.133448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068615, 34.570217, 30.264223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737621, 34.707333, 30.086342>,  <41.539024, 34.789600, 29.979612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737621, 34.707333, 30.086342>,  <42.068615, 34.570217, 30.264223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737621, 34.707333, 30.086342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173334, -0.597374, -0.783007,
		-0.534061, -0.725010, 0.434902,
		-0.827487, 0.342790, -0.444703,
		41.489376, 34.810169, 29.952930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825211, 33.963150, 29.936127>,  <42.068615, 34.570217, 30.264223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825211, 33.963150, 29.936127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631783, 34.271240, 29.769794>,  <41.515728, 34.456093, 29.669994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631783, 34.271240, 29.769794>,  <41.825211, 33.963150, 29.936127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631783, 34.271240, 29.769794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255218, -0.330355, -0.908696,
		-0.837274, -0.545542, -0.036827,
		-0.483566, 0.770226, -0.415830,
		41.486713, 34.502308, 29.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180073, 33.714081, 29.402290>,  <41.825211, 33.963150, 29.936127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180073, 33.714081, 29.402290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369877, 34.060150, 29.337402>,  <41.483761, 34.267792, 29.298470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369877, 34.060150, 29.337402>,  <41.180073, 33.714081, 29.402290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369877, 34.060150, 29.337402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413280, -0.381684, -0.826750,
		-0.777199, 0.325260, -0.538672,
		0.474512, 0.865172, -0.162221,
		41.512230, 34.319702, 29.288736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122475, 33.764751, 28.736137>,  <41.180073, 33.714081, 29.402290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122475, 33.764751, 28.736137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394627, 34.047272, 28.814333>,  <41.557919, 34.216785, 28.861250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394627, 34.047272, 28.814333>,  <41.122475, 33.764751, 28.736137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394627, 34.047272, 28.814333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408483, -0.144024, -0.901331,
		-0.608459, 0.693103, -0.386504,
		0.680382, 0.706304, 0.195488,
		41.598740, 34.259163, 28.872980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147976, 34.040604, 28.071505>,  <41.122475, 33.764751, 28.736137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147976, 34.040604, 28.071505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474854, 34.162903, 28.266937>,  <41.670979, 34.236282, 28.384197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474854, 34.162903, 28.266937>,  <41.147976, 34.040604, 28.071505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474854, 34.162903, 28.266937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551379, -0.167848, -0.817195,
		-0.167848, 0.937201, -0.305747,
		0.817195, 0.305747, 0.488580,
		41.720013, 34.254627, 28.413511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584297, 34.617611, 27.598499>,  <41.147976, 34.040604, 28.071505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584297, 34.617611, 27.598499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844364, 34.478989, 27.868959>,  <42.000404, 34.395817, 28.031235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844364, 34.478989, 27.868959>,  <41.584297, 34.617611, 27.598499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844364, 34.478989, 27.868959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673813, -0.148207, -0.723886,
		0.351077, 0.926247, 0.137154,
		0.650170, -0.346555, 0.676149,
		42.039413, 34.375023, 28.071804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249866, 34.883041, 27.427767>,  <41.584297, 34.617611, 27.598499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249866, 34.883041, 27.427767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360966, 34.560856, 27.637178>,  <42.427624, 34.367542, 27.762825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360966, 34.560856, 27.637178>,  <42.249866, 34.883041, 27.427767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360966, 34.560856, 27.637178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762492, -0.146658, -0.630157,
		0.584349, 0.574209, 0.573428,
		0.277744, -0.805466, 0.523529,
		42.444290, 34.319218, 27.794237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950195, 34.987865, 27.590286>,  <42.249866, 34.883041, 27.427767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950195, 34.987865, 27.590286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880154, 34.594730, 27.613516>,  <42.838131, 34.358849, 27.627453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880154, 34.594730, 27.613516>,  <42.950195, 34.987865, 27.590286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880154, 34.594730, 27.613516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662043, -0.161196, -0.731926,
		0.728724, -0.089713, 0.678905,
		-0.175100, -0.982836, 0.058074,
		42.827625, 34.299881, 27.630938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578754, 34.752964, 27.483181>,  <42.950195, 34.987865, 27.590286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578754, 34.752964, 27.483181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355122, 34.425571, 27.430231>,  <43.220943, 34.229137, 27.398462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355122, 34.425571, 27.430231>,  <43.578754, 34.752964, 27.483181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355122, 34.425571, 27.430231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629337, -0.314984, -0.710437,
		0.539782, -0.480498, 0.691200,
		-0.559080, -0.818478, -0.132373,
		43.187397, 34.180027, 27.390520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113003, 34.313107, 27.516525>,  <43.578754, 34.752964, 27.483181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113003, 34.313107, 27.516525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809254, 34.139549, 27.322582>,  <43.627003, 34.035416, 27.206217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809254, 34.139549, 27.322582>,  <44.113003, 34.313107, 27.516525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809254, 34.139549, 27.322582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626821, -0.288001, -0.723982,
		0.174491, -0.853693, 0.490674,
		-0.759374, -0.433893, -0.484859,
		43.581440, 34.009380, 27.177124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.571285, 35.749241, 23.358595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908257, 35.757458, 23.573959>,  <37.110439, 35.762386, 23.703178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908257, 35.757458, 23.573959>,  <36.571285, 35.749241, 23.358595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908257, 35.757458, 23.573959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538120, -0.018275, 0.842670,
		0.027153, -0.999622, -0.004339,
		0.842430, 0.020546, 0.538413,
		37.160984, 35.763618, 23.735483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493279, 35.267971, 23.946081>,  <36.571285, 35.749241, 23.358595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493279, 35.267971, 23.946081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803337, 35.472309, 24.094772>,  <36.989372, 35.594913, 24.183987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803337, 35.472309, 24.094772>,  <36.493279, 35.267971, 23.946081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803337, 35.472309, 24.094772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439071, 0.012520, 0.898365,
		0.454275, -0.859579, 0.234004,
		0.775145, 0.510850, 0.371729,
		37.035881, 35.625565, 24.206291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749962, 34.988003, 24.619513>,  <36.493279, 35.267971, 23.946081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749962, 34.988003, 24.619513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874588, 35.368088, 24.617889>,  <36.949364, 35.596138, 24.616917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.874588, 35.368088, 24.617889>,  <36.749962, 34.988003, 24.619513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874588, 35.368088, 24.617889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313735, 0.106900, 0.943474,
		0.896936, -0.292685, 0.331423,
		0.311569, 0.950215, -0.004057,
		36.968060, 35.653152, 24.616673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163643, 34.982189, 25.286024>,  <36.749962, 34.988003, 24.619513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163643, 34.982189, 25.286024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081600, 35.350044, 25.152037>,  <37.032375, 35.570755, 25.071644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081600, 35.350044, 25.152037>,  <37.163643, 34.982189, 25.286024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081600, 35.350044, 25.152037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097786, 0.321277, 0.941923,
		0.973842, 0.225951, 0.024031,
		-0.205108, 0.919634, -0.334968,
		37.020069, 35.625935, 25.051546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446259, 35.343628, 25.853733>,  <37.163643, 34.982189, 25.286024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446259, 35.343628, 25.853733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196533, 35.582550, 25.652355>,  <37.046700, 35.725903, 25.531528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196533, 35.582550, 25.652355>,  <37.446259, 35.343628, 25.853733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196533, 35.582550, 25.652355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309135, 0.402955, 0.861431,
		0.717404, 0.693436, -0.066922,
		-0.624314, 0.597306, -0.503446,
		37.009239, 35.761742, 25.501322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543262, 36.051762, 26.138777>,  <37.446259, 35.343628, 25.853733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543262, 36.051762, 26.138777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173912, 35.993038, 25.996893>,  <36.952301, 35.957802, 25.911762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173912, 35.993038, 25.996893>,  <37.543262, 36.051762, 26.138777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173912, 35.993038, 25.996893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383733, 0.379522, 0.841850,
		0.011028, 0.913460, -0.406779,
		-0.923378, -0.146811, -0.354710,
		36.896900, 35.948994, 25.890480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201675, 36.634373, 26.299507>,  <37.543262, 36.051762, 26.138777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201675, 36.634373, 26.299507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909084, 36.369003, 26.236507>,  <36.733528, 36.209782, 26.198708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909084, 36.369003, 26.236507>,  <37.201675, 36.634373, 26.299507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909084, 36.369003, 26.236507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419561, 0.255835, 0.870929,
		-0.537503, 0.703146, -0.465485,
		-0.731477, -0.663427, -0.157500,
		36.689640, 36.169975, 26.189257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600727, 37.023071, 26.546141>,  <37.201675, 36.634373, 26.299507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600727, 37.023071, 26.546141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484558, 36.642406, 26.506138>,  <36.414856, 36.414009, 26.482136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.484558, 36.642406, 26.506138>,  <36.600727, 37.023071, 26.546141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484558, 36.642406, 26.506138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657426, 0.122498, 0.743495,
		-0.695302, 0.281677, -0.661221,
		-0.290424, -0.951657, -0.100009,
		36.397430, 36.356911, 26.476135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931400, 37.077827, 26.489098>,  <36.600727, 37.023071, 26.546141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931400, 37.077827, 26.489098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051136, 36.728504, 26.642841>,  <36.122978, 36.518909, 26.735086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051136, 36.728504, 26.642841>,  <35.931400, 37.077827, 26.489098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051136, 36.728504, 26.642841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592769, 0.145451, 0.792129,
		-0.747678, -0.464948, -0.474131,
		0.299336, -0.873308, 0.384358,
		36.140938, 36.466511, 26.758148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247772, 36.822147, 26.717707>,  <35.931400, 37.077827, 26.489098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247772, 36.822147, 26.717707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526951, 36.602093, 26.901102>,  <35.694458, 36.470058, 27.011139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526951, 36.602093, 26.901102>,  <35.247772, 36.822147, 26.717707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526951, 36.602093, 26.901102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558528, -0.017453, 0.829302,
		-0.448231, -0.834889, -0.319450,
		0.697951, -0.550141, 0.458486,
		35.736336, 36.437050, 27.038649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890999, 36.350975, 27.120396>,  <35.247772, 36.822147, 26.717707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890999, 36.350975, 27.120396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252972, 36.349236, 27.290611>,  <35.470154, 36.348190, 27.392740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252972, 36.349236, 27.290611>,  <34.890999, 36.350975, 27.120396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252972, 36.349236, 27.290611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424995, -0.060800, 0.903151,
		0.021941, -0.998140, -0.056870,
		0.904930, -0.004353, 0.425539,
		35.524452, 36.347931, 27.418274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845745, 35.766891, 27.438772>,  <34.890999, 36.350975, 27.120396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845745, 35.766891, 27.438772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.120850, 35.993046, 27.620903>,  <35.285912, 36.128738, 27.730181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.120850, 35.993046, 27.620903>,  <34.845745, 35.766891, 27.438772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120850, 35.993046, 27.620903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625448, 0.143109, 0.767030,
		0.368504, -0.812319, 0.452042,
		0.687765, 0.565382, 0.455327,
		35.327179, 36.162663, 27.757502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909523, 35.472046, 28.073305>,  <34.845745, 35.766891, 27.438772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909523, 35.472046, 28.073305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150513, 35.777866, 28.164940>,  <35.295105, 35.961361, 28.219921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.150513, 35.777866, 28.164940>,  <34.909523, 35.472046, 28.073305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150513, 35.777866, 28.164940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369499, 0.012767, 0.929143,
		0.707456, -0.644432, 0.290194,
		0.602475, 0.764555, 0.229085,
		35.331257, 36.007233, 28.233665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237007, 35.267311, 28.626144>,  <34.909523, 35.472046, 28.073305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237007, 35.267311, 28.626144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275906, 35.665249, 28.637676>,  <35.299244, 35.904011, 28.644596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275906, 35.665249, 28.637676>,  <35.237007, 35.267311, 28.626144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275906, 35.665249, 28.637676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465200, 0.019829, 0.884983,
		0.879848, -0.099474, 0.464729,
		0.097248, 0.994843, 0.028829,
		35.305080, 35.963703, 28.646324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885300, 34.863216, 28.888065>,  <35.237007, 35.267311, 28.626144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885300, 34.863216, 28.888065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974594, 34.499924, 29.029640>,  <36.028172, 34.281948, 29.114586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974594, 34.499924, 29.029640>,  <35.885300, 34.863216, 28.888065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974594, 34.499924, 29.029640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319730, -0.274787, -0.906788,
		0.920835, 0.315596, 0.229047,
		0.223240, -0.908235, 0.353939,
		36.041565, 34.227451, 29.135822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597675, 34.792484, 28.776291>,  <35.885300, 34.863216, 28.888065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597675, 34.792484, 28.776291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459923, 34.421307, 28.833324>,  <36.377270, 34.198601, 28.867544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459923, 34.421307, 28.833324>,  <36.597675, 34.792484, 28.776291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459923, 34.421307, 28.833324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341397, -0.265256, -0.901713,
		0.874557, -0.261854, 0.408145,
		-0.344380, -0.927939, 0.142586,
		36.356609, 34.142925, 28.876101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216625, 34.342911, 28.730955>,  <36.597675, 34.792484, 28.776291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216625, 34.342911, 28.730955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889107, 34.122124, 28.667820>,  <36.692596, 33.989651, 28.629938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.889107, 34.122124, 28.667820>,  <37.216625, 34.342911, 28.730955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889107, 34.122124, 28.667820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414683, -0.378519, -0.827503,
		0.397007, -0.743007, 0.538820,
		-0.818794, -0.551964, -0.157838,
		36.643467, 33.956535, 28.620468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532684, 33.757355, 28.619530>,  <37.216625, 34.342911, 28.730955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532684, 33.757355, 28.619530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160194, 33.722511, 28.477980>,  <36.936699, 33.701607, 28.393049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160194, 33.722511, 28.477980>,  <37.532684, 33.757355, 28.619530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160194, 33.722511, 28.477980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362676, -0.316894, -0.876381,
		-0.035803, -0.944453, 0.326692,
		-0.931227, -0.087107, -0.353876,
		36.880825, 33.696381, 28.371817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555016, 33.097725, 28.237188>,  <37.532684, 33.757355, 28.619530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555016, 33.097725, 28.237188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256123, 33.323170, 28.096338>,  <37.076786, 33.458435, 28.011829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256123, 33.323170, 28.096338>,  <37.555016, 33.097725, 28.237188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256123, 33.323170, 28.096338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310867, -0.171875, -0.934784,
		-0.587373, -0.807963, -0.046777,
		-0.747231, 0.563608, -0.352123,
		37.031952, 33.492252, 27.990702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298073, 32.721874, 27.811327>,  <37.555016, 33.097725, 28.237188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298073, 32.721874, 27.811327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127026, 33.054386, 27.669273>,  <37.024395, 33.253891, 27.584042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127026, 33.054386, 27.669273>,  <37.298073, 32.721874, 27.811327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127026, 33.054386, 27.669273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310534, -0.233868, -0.921344,
		-0.848946, -0.504267, -0.158132,
		-0.427621, 0.831277, -0.355133,
		36.998741, 33.303768, 27.562733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921360, 32.540169, 27.168886>,  <37.298073, 32.721874, 27.811327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921360, 32.540169, 27.168886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982498, 32.933636, 27.130850>,  <37.019180, 33.169716, 27.108028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982498, 32.933636, 27.130850>,  <36.921360, 32.540169, 27.168886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982498, 32.933636, 27.130850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445062, -0.154425, -0.882084,
		-0.882360, 0.092500, -0.461395,
		0.152843, 0.983665, -0.095090,
		37.028351, 33.228737, 27.102324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788963, 32.706123, 26.472683>,  <36.921360, 32.540169, 27.168886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788963, 32.706123, 26.472683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999390, 33.026623, 26.586706>,  <37.125645, 33.218922, 26.655121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.999390, 33.026623, 26.586706>,  <36.788963, 32.706123, 26.472683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999390, 33.026623, 26.586706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464074, 0.010426, -0.885735,
		-0.712664, 0.598243, -0.366353,
		0.526065, 0.801247, 0.285060,
		37.157207, 33.266998, 26.672224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785637, 33.319752, 25.957417>,  <36.788963, 32.706123, 26.472683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785637, 33.319752, 25.957417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116871, 33.343620, 26.180384>,  <37.315613, 33.357941, 26.314165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116871, 33.343620, 26.180384>,  <36.785637, 33.319752, 25.957417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116871, 33.343620, 26.180384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539824, 0.183332, -0.821571,
		-0.151214, 0.981239, 0.119604,
		0.828085, 0.059667, 0.557419,
		37.365295, 33.361519, 26.347609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092110, 33.815365, 25.638084>,  <36.785637, 33.319752, 25.957417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092110, 33.815365, 25.638084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394966, 33.634518, 25.826693>,  <37.576679, 33.526009, 25.939857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.394966, 33.634518, 25.826693>,  <37.092110, 33.815365, 25.638084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394966, 33.634518, 25.826693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594442, 0.177531, -0.784297,
		0.270882, 0.874114, 0.403171,
		0.757140, -0.452114, 0.471520,
		37.622108, 33.498882, 25.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649715, 34.202023, 25.682758>,  <37.092110, 33.815365, 25.638084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649715, 34.202023, 25.682758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795643, 33.831947, 25.724600>,  <37.883198, 33.609901, 25.749704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.795643, 33.831947, 25.724600>,  <37.649715, 34.202023, 25.682758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795643, 33.831947, 25.724600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556333, 0.126521, -0.821271,
		0.746593, 0.357809, 0.560867,
		0.364819, -0.925184, 0.104601,
		37.905090, 33.554394, 25.755980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363522, 34.240971, 25.353205>,  <37.649715, 34.202023, 25.682758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363522, 34.240971, 25.353205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288921, 33.849213, 25.384218>,  <38.244164, 33.614159, 25.402826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288921, 33.849213, 25.384218>,  <38.363522, 34.240971, 25.353205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288921, 33.849213, 25.384218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524023, -0.165921, -0.835387,
		0.831035, -0.115168, 0.544167,
		-0.186498, -0.979391, 0.077535,
		38.232971, 33.555397, 25.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955116, 33.912380, 25.384926>,  <38.363522, 34.240971, 25.353205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955116, 33.912380, 25.384926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707989, 33.627937, 25.250690>,  <38.559711, 33.457272, 25.170149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.707989, 33.627937, 25.250690>,  <38.955116, 33.912380, 25.384926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707989, 33.627937, 25.250690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594613, -0.143249, -0.791147,
		0.514521, -0.688332, 0.511338,
		-0.617821, -0.711111, -0.335587,
		38.522644, 33.414604, 25.150015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443810, 33.355721, 25.189867>,  <38.955116, 33.912380, 25.384926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443810, 33.355721, 25.189867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085583, 33.305325, 25.019176>,  <38.870647, 33.275089, 24.916761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085583, 33.305325, 25.019176>,  <39.443810, 33.355721, 25.189867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085583, 33.305325, 25.019176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434314, -0.039225, -0.899907,
		0.096637, -0.991256, 0.089846,
		-0.895562, -0.125986, -0.426726,
		38.816914, 33.267529, 24.891159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416565, 32.703979, 25.546026>,  <39.443810, 33.355721, 25.189867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416565, 32.703979, 25.546026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739494, 32.500511, 25.665676>,  <39.933254, 32.378429, 25.737465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739494, 32.500511, 25.665676>,  <39.416565, 32.703979, 25.546026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739494, 32.500511, 25.665676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461684, -0.228772, 0.857037,
		-0.367520, -0.830010, -0.419539,
		0.807327, -0.508672, 0.299124,
		39.981693, 32.347908, 25.755413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154415, 32.008213, 25.819361>,  <39.416565, 32.703979, 25.546026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154415, 32.008213, 25.819361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.499058, 32.094894, 26.002956>,  <39.705845, 32.146904, 26.113113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.499058, 32.094894, 26.002956>,  <39.154415, 32.008213, 25.819361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499058, 32.094894, 26.002956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436517, -0.145074, 0.887923,
		0.259003, -0.965398, -0.030402,
		0.861609, 0.216703, 0.458987,
		39.757542, 32.159904, 26.140652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302948, 31.505697, 26.225523>,  <39.154415, 32.008213, 25.819361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302948, 31.505697, 26.225523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502033, 31.819561, 26.373360>,  <39.621483, 32.007877, 26.462061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502033, 31.819561, 26.373360>,  <39.302948, 31.505697, 26.225523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502033, 31.819561, 26.373360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471431, -0.112946, 0.874641,
		0.728037, -0.609554, 0.313697,
		0.497710, 0.784657, 0.369591,
		39.651344, 32.054958, 26.484238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468239, 31.212765, 26.859377>,  <39.302948, 31.505697, 26.225523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468239, 31.212765, 26.859377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546093, 31.600525, 26.919224>,  <39.592804, 31.833181, 26.955132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.546093, 31.600525, 26.919224>,  <39.468239, 31.212765, 26.859377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546093, 31.600525, 26.919224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318143, -0.081898, 0.944499,
		0.927849, -0.231427, 0.292467,
		0.194631, 0.969399, 0.149616,
		39.604481, 31.891344, 26.964109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826828, 31.233143, 27.421392>,  <39.468239, 31.212765, 26.859377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826828, 31.233143, 27.421392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.686901, 31.607647, 27.408455>,  <39.602947, 31.832350, 27.400692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.686901, 31.607647, 27.408455>,  <39.826828, 31.233143, 27.421392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686901, 31.607647, 27.408455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194266, -0.038724, 0.980184,
		0.916456, 0.349164, 0.195430,
		-0.349813, 0.936261, -0.032342,
		39.581959, 31.888525, 27.398752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229671, 31.645521, 27.917267>,  <39.826828, 31.233143, 27.421392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229671, 31.645521, 27.917267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900242, 31.864162, 27.856680>,  <39.702583, 31.995348, 27.820328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900242, 31.864162, 27.856680>,  <40.229671, 31.645521, 27.917267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900242, 31.864162, 27.856680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093932, 0.131916, 0.986800,
		0.559371, 0.826935, -0.057299,
		-0.823578, 0.546605, -0.151466,
		39.653168, 32.028145, 27.811239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419827, 32.374634, 28.274706>,  <40.229671, 31.645521, 27.917267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419827, 32.374634, 28.274706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.022373, 32.376259, 28.229677>,  <39.783901, 32.377235, 28.202660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.022373, 32.376259, 28.229677>,  <40.419827, 32.374634, 28.274706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022373, 32.376259, 28.229677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085996, 0.618122, 0.781364,
		0.072756, 0.786072, -0.613838,
		-0.993635, 0.004061, -0.112571,
		39.724281, 32.377476, 28.195906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112438, 33.056068, 28.224371>,  <40.419827, 32.374634, 28.274706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112438, 33.056068, 28.224371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837616, 32.801800, 28.365158>,  <39.672722, 32.649239, 28.449631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837616, 32.801800, 28.365158>,  <40.112438, 33.056068, 28.224371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837616, 32.801800, 28.365158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129021, 0.583432, 0.801848,
		-0.715060, 0.505502, -0.482864,
		-0.687054, -0.635669, 0.351968,
		39.631500, 32.611099, 28.470749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641003, 33.427650, 28.639788>,  <40.112438, 33.056068, 28.224371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641003, 33.427650, 28.639788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529121, 33.055645, 28.735153>,  <39.461994, 32.832443, 28.792372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529121, 33.055645, 28.735153>,  <39.641003, 33.427650, 28.639788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529121, 33.055645, 28.735153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334970, 0.327248, 0.883574,
		-0.899758, 0.167274, -0.403058,
		-0.279699, -0.930015, 0.238413,
		39.445213, 32.776642, 28.806677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975105, 33.503632, 28.975574>,  <39.641003, 33.427650, 28.639788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975105, 33.503632, 28.975574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082878, 33.130024, 29.069399>,  <39.147541, 32.905861, 29.125694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082878, 33.130024, 29.069399>,  <38.975105, 33.503632, 28.975574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082878, 33.130024, 29.069399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413122, 0.107916, 0.904259,
		-0.869905, -0.340541, -0.356787,
		0.269434, -0.934016, 0.234562,
		39.163708, 32.849819, 29.139767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378689, 33.099491, 29.224434>,  <38.975105, 33.503632, 28.975574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378689, 33.099491, 29.224434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696690, 32.906723, 29.371796>,  <38.887489, 32.791061, 29.460213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696690, 32.906723, 29.371796>,  <38.378689, 33.099491, 29.224434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696690, 32.906723, 29.371796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438858, -0.037661, 0.897767,
		-0.418782, -0.875403, -0.241437,
		0.795000, -0.481925, 0.368406,
		38.935188, 32.762146, 29.482317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122753, 32.578121, 29.712889>,  <38.378689, 33.099491, 29.224434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122753, 32.578121, 29.712889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515903, 32.592438, 29.785198>,  <38.751793, 32.601028, 29.828585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515903, 32.592438, 29.785198>,  <38.122753, 32.578121, 29.712889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515903, 32.592438, 29.785198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165639, -0.258359, 0.951743,
		0.080768, -0.965386, -0.248006,
		0.982874, 0.035791, 0.180773,
		38.810764, 32.603176, 29.839430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209057, 32.003002, 30.108988>,  <38.122753, 32.578121, 29.712889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209057, 32.003002, 30.108988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462193, 32.308548, 30.159615>,  <38.614075, 32.491875, 30.189991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462193, 32.308548, 30.159615>,  <38.209057, 32.003002, 30.108988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462193, 32.308548, 30.159615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193630, -0.002138, 0.981072,
		0.749680, -0.645369, 0.146554,
		0.632841, 0.763867, 0.126566,
		38.652046, 32.537708, 30.197584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515785, 31.754587, 30.728931>,  <38.209057, 32.003002, 30.108988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515785, 31.754587, 30.728931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647625, 32.132202, 30.723976>,  <38.726730, 32.358772, 30.721003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647625, 32.132202, 30.723976>,  <38.515785, 31.754587, 30.728931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647625, 32.132202, 30.723976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181358, 0.076187, 0.980462,
		0.926537, -0.320916, 0.196320,
		0.329602, 0.944038, -0.012389,
		38.746506, 32.415413, 30.720259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.286232, 33.622597, 27.170658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952137, 33.714973, 26.971041>,  <43.751678, 33.770401, 26.851271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952137, 33.714973, 26.971041>,  <44.286232, 33.622597, 27.170658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952137, 33.714973, 26.971041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451417, -0.230266, -0.862091,
		-0.314009, -0.945326, 0.088074,
		-0.835237, 0.230946, -0.499041,
		43.701565, 33.784256, 26.821329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149097, 33.076042, 26.669744>,  <44.286232, 33.622597, 27.170658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149097, 33.076042, 26.669744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941288, 33.383144, 26.519732>,  <43.816601, 33.567406, 26.429724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.941288, 33.383144, 26.519732>,  <44.149097, 33.076042, 26.669744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941288, 33.383144, 26.519732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289519, -0.254779, -0.922641,
		-0.803910, -0.587915, -0.089915,
		-0.519526, 0.767752, -0.375032,
		43.785431, 33.613472, 26.407223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247318, 33.046665, 25.932985>,  <44.149097, 33.076042, 26.669744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247318, 33.046665, 25.932985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.034241, 33.384827, 25.917356>,  <43.906395, 33.587723, 25.907978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.034241, 33.384827, 25.917356>,  <44.247318, 33.046665, 25.932985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034241, 33.384827, 25.917356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123649, 0.032071, -0.991808,
		-0.837227, -0.533160, -0.121618,
		-0.532693, 0.845406, -0.039074,
		43.874432, 33.638447, 25.905634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711510, 32.864220, 25.471746>,  <44.247318, 33.046665, 25.932985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711510, 32.864220, 25.471746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.793087, 33.255802, 25.468918>,  <43.842033, 33.490753, 25.467220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.793087, 33.255802, 25.468918>,  <43.711510, 32.864220, 25.471746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793087, 33.255802, 25.468918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315251, -0.072510, -0.946234,
		-0.926835, 0.190750, -0.323406,
		0.203944, 0.978957, -0.007070,
		43.854271, 33.549488, 25.466797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426472, 33.136757, 24.933023>,  <43.711510, 32.864220, 25.471746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426472, 33.136757, 24.933023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.721226, 33.396507, 25.008186>,  <43.898079, 33.552357, 25.053284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.721226, 33.396507, 25.008186>,  <43.426472, 33.136757, 24.933023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721226, 33.396507, 25.008186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181541, 0.077662, -0.980312,
		-0.651183, 0.756493, -0.060660,
		0.736888, 0.649375, 0.187906,
		43.942291, 33.591320, 25.064558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341953, 33.567406, 24.426302>,  <43.426472, 33.136757, 24.933023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341953, 33.567406, 24.426302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718807, 33.621552, 24.548981>,  <43.944920, 33.654037, 24.622587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.718807, 33.621552, 24.548981>,  <43.341953, 33.567406, 24.426302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718807, 33.621552, 24.548981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304081, 0.040100, -0.951802,
		-0.141138, 0.989984, -0.003382,
		0.942133, 0.135363, 0.306695,
		44.001446, 33.662159, 24.640989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609356, 34.089645, 24.075268>,  <43.341953, 33.567406, 24.426302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609356, 34.089645, 24.075268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936855, 33.896774, 24.199955>,  <44.133354, 33.781052, 24.274767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936855, 33.896774, 24.199955>,  <43.609356, 34.089645, 24.075268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936855, 33.896774, 24.199955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377894, 0.043799, -0.924812,
		0.432267, 0.874980, 0.218071,
		0.818744, -0.482173, 0.311716,
		44.182480, 33.752121, 24.293470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108261, 34.401657, 23.626392>,  <43.609356, 34.089645, 24.075268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108261, 34.401657, 23.626392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276867, 34.067650, 23.767855>,  <44.378029, 33.867245, 23.852732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.276867, 34.067650, 23.767855>,  <44.108261, 34.401657, 23.626392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276867, 34.067650, 23.767855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489564, -0.118735, -0.863846,
		0.763318, 0.537259, 0.358746,
		0.421513, -0.835018, 0.353655,
		44.403320, 33.817146, 23.873951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694927, 34.422737, 23.386663>,  <44.108261, 34.401657, 23.626392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694927, 34.422737, 23.386663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.672333, 34.031197, 23.465307>,  <44.658775, 33.796272, 23.512493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.672333, 34.031197, 23.465307>,  <44.694927, 34.422737, 23.386663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672333, 34.031197, 23.465307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567317, -0.193513, -0.800440,
		0.821560, 0.066323, 0.566252,
		-0.056490, -0.978854, 0.196609,
		44.655384, 33.737541, 23.524290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285797, 34.232212, 23.088020>,  <44.694927, 34.422737, 23.386663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285797, 34.232212, 23.088020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.071320, 33.902225, 23.159489>,  <44.942635, 33.704235, 23.202370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.071320, 33.902225, 23.159489>,  <45.285797, 34.232212, 23.088020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071320, 33.902225, 23.159489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304955, -0.386703, -0.870324,
		0.787082, -0.412176, 0.458926,
		-0.536194, -0.824968, 0.178672,
		44.910461, 33.654736, 23.213091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679920, 33.698879, 22.967417>,  <45.285797, 34.232212, 23.088020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679920, 33.698879, 22.967417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.321045, 33.525196, 22.935118>,  <45.105721, 33.420986, 22.915739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.321045, 33.525196, 22.935118>,  <45.679920, 33.698879, 22.967417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321045, 33.525196, 22.935118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300081, -0.465179, -0.832803,
		0.324045, -0.771411, 0.547649,
		-0.897188, -0.434204, -0.080747,
		45.051888, 33.394936, 22.910894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747387, 32.892246, 22.990683>,  <45.679920, 33.698879, 22.967417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747387, 32.892246, 22.990683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.428459, 33.031929, 22.793768>,  <45.237103, 33.115738, 22.675619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.428459, 33.031929, 22.793768>,  <45.747387, 32.892246, 22.990683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428459, 33.031929, 22.793768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318124, -0.449996, -0.834447,
		-0.512918, -0.821925, 0.247699,
		-0.797316, 0.349204, -0.492285,
		45.189262, 33.136688, 22.646082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241207, 32.361290, 22.748955>,  <45.747387, 32.892246, 22.990683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241207, 32.361290, 22.748955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.305935, 32.688793, 22.528612>,  <45.344772, 32.885296, 22.396406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.305935, 32.688793, 22.528612>,  <45.241207, 32.361290, 22.748955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305935, 32.688793, 22.528612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436187, -0.560068, -0.704319,
		-0.885187, -0.126305, -0.447762,
		0.161818, 0.818762, -0.550857,
		45.354481, 32.934422, 22.363356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855843, 32.464901, 22.050692>,  <45.241207, 32.361290, 22.748955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855843, 32.464901, 22.050692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.230663, 32.601006, 22.082087>,  <45.455555, 32.682667, 22.100924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.230663, 32.601006, 22.082087>,  <44.855843, 32.464901, 22.050692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230663, 32.601006, 22.082087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304786, -0.687275, -0.659363,
		-0.170412, 0.641778, -0.747717,
		0.937051, 0.340257, 0.078485,
		45.511780, 32.703083, 22.105633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182812, 32.511818, 21.795521>,  <44.855843, 32.464901, 22.050692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182812, 32.511818, 21.795521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.855431, 32.387138, 21.602449>,  <43.659000, 32.312332, 21.486607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.855431, 32.387138, 21.602449>,  <44.182812, 32.511818, 21.795521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855431, 32.387138, 21.602449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475221, -0.104952, 0.873585,
		-0.322949, 0.944368, -0.062225,
		-0.818455, -0.311694, -0.482677,
		43.609894, 32.293629, 21.457645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506023, 32.865055, 22.125412>,  <44.182812, 32.511818, 21.795521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506023, 32.865055, 22.125412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.396801, 32.528080, 21.939621>,  <43.331268, 32.325893, 21.828146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.396801, 32.528080, 21.939621>,  <43.506023, 32.865055, 22.125412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396801, 32.528080, 21.939621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634949, -0.204892, 0.744889,
		-0.722689, 0.498318, -0.478957,
		-0.273057, -0.842436, -0.464480,
		43.314884, 32.275349, 21.800278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736164, 32.861759, 22.081739>,  <43.506023, 32.865055, 22.125412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736164, 32.861759, 22.081739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831154, 32.479076, 22.014437>,  <42.888149, 32.249466, 21.974054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831154, 32.479076, 22.014437>,  <42.736164, 32.861759, 22.081739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831154, 32.479076, 22.014437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825423, -0.290059, 0.484295,
		-0.512136, 0.023877, -0.858573,
		0.237473, -0.956711, -0.168258,
		42.902397, 32.192062, 21.963959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154568, 32.505676, 21.887632>,  <42.736164, 32.861759, 22.081739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154568, 32.505676, 21.887632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.388527, 32.207870, 22.016378>,  <42.528900, 32.029186, 22.093626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.388527, 32.207870, 22.016378>,  <42.154568, 32.505676, 21.887632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388527, 32.207870, 22.016378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690484, -0.248820, 0.679206,
		-0.425592, -0.619506, -0.659609,
		0.584896, -0.744514, 0.321864,
		42.563995, 31.984516, 22.112938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837086, 31.884403, 21.809437>,  <42.154568, 32.505676, 21.887632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837086, 31.884403, 21.809437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.100471, 31.822868, 22.104124>,  <42.258503, 31.785948, 22.280937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.100471, 31.822868, 22.104124>,  <41.837086, 31.884403, 21.809437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100471, 31.822868, 22.104124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751293, -0.192252, 0.631346,
		0.044512, -0.969213, -0.242168,
		0.658466, -0.153837, 0.736720,
		42.298012, 31.776716, 22.325140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593369, 31.369322, 22.189533>,  <41.837086, 31.884403, 21.809437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593369, 31.369322, 22.189533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.873062, 31.467731, 22.458025>,  <42.040878, 31.526777, 22.619120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.873062, 31.467731, 22.458025>,  <41.593369, 31.369322, 22.189533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873062, 31.467731, 22.458025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678995, -0.065243, 0.731238,
		0.223696, -0.967065, 0.121429,
		0.699233, 0.246025, 0.671227,
		42.082832, 31.541538, 22.659393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595886, 30.911415, 22.750713>,  <41.593369, 31.369322, 22.189533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595886, 30.911415, 22.750713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767406, 31.233955, 22.913649>,  <41.870319, 31.427481, 23.011410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767406, 31.233955, 22.913649>,  <41.595886, 30.911415, 22.750713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767406, 31.233955, 22.913649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701478, 0.013067, 0.712571,
		0.569261, -0.591291, 0.571242,
		0.428801, 0.806353, 0.407339,
		41.896046, 31.475861, 23.035851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680111, 30.779963, 23.462385>,  <41.595886, 30.911415, 22.750713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680111, 30.779963, 23.462385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706890, 31.177458, 23.426594>,  <41.722958, 31.415955, 23.405119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706890, 31.177458, 23.426594>,  <41.680111, 30.779963, 23.462385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706890, 31.177458, 23.426594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487535, 0.110828, 0.866041,
		0.870533, -0.014357, 0.491901,
		0.066950, 0.993736, -0.089480,
		41.726974, 31.475578, 23.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945896, 31.073626, 24.108494>,  <41.680111, 30.779963, 23.462385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945896, 31.073626, 24.108494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749481, 31.379723, 23.941986>,  <41.631630, 31.563381, 23.842081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749481, 31.379723, 23.941986>,  <41.945896, 31.073626, 24.108494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749481, 31.379723, 23.941986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533427, 0.113655, 0.838176,
		0.688720, 0.633627, 0.352393,
		-0.491040, 0.765245, -0.416270,
		41.602169, 31.609297, 23.817104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960468, 31.530087, 24.597116>,  <41.945896, 31.073626, 24.108494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960468, 31.530087, 24.597116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671787, 31.664804, 24.355221>,  <41.498577, 31.745636, 24.210083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671787, 31.664804, 24.355221>,  <41.960468, 31.530087, 24.597116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671787, 31.664804, 24.355221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505665, 0.340089, 0.792870,
		0.472701, 0.878014, -0.075139,
		-0.721704, 0.336795, -0.604741,
		41.455276, 31.765842, 24.173798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866192, 32.112888, 24.819590>,  <41.960468, 31.530087, 24.597116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866192, 32.112888, 24.819590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.519890, 32.027294, 24.638622>,  <41.312111, 31.975937, 24.530041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.519890, 32.027294, 24.638622>,  <41.866192, 32.112888, 24.819590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519890, 32.027294, 24.638622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500472, 0.368965, 0.783193,
		-0.000666, 0.904475, -0.426527,
		-0.865752, -0.213986, -0.452419,
		41.260162, 31.963099, 24.502897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452694, 32.631626, 25.073339>,  <41.866192, 32.112888, 24.819590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452694, 32.631626, 25.073339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208042, 32.340565, 24.949127>,  <41.061249, 32.165928, 24.874599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208042, 32.340565, 24.949127>,  <41.452694, 32.631626, 25.073339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208042, 32.340565, 24.949127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656432, 0.247676, 0.712568,
		-0.441589, 0.639674, -0.629139,
		-0.611634, -0.727649, -0.310532,
		41.024551, 32.122269, 24.855968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801720, 32.982246, 24.776093>,  <41.452694, 32.631626, 25.073339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801720, 32.982246, 24.776093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.749905, 32.616386, 24.929260>,  <40.718815, 32.396870, 25.021160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.749905, 32.616386, 24.929260>,  <40.801720, 32.982246, 24.776093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749905, 32.616386, 24.929260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593947, 0.380801, 0.708673,
		-0.794008, -0.135637, -0.592583,
		-0.129534, -0.914655, 0.382920,
		40.711044, 32.341991, 25.044136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153545, 33.073700, 25.196978>,  <40.801720, 32.982246, 24.776093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153545, 33.073700, 25.196978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.270927, 32.710941, 25.317924>,  <40.341358, 32.493286, 25.390491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.270927, 32.710941, 25.317924>,  <40.153545, 33.073700, 25.196978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270927, 32.710941, 25.317924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443675, 0.150960, 0.883382,
		-0.846779, -0.393387, -0.358066,
		0.293457, -0.906894, 0.302366,
		40.358963, 32.438873, 25.408634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568249, 32.836712, 24.714642>,  <40.153545, 33.073700, 25.196978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568249, 32.836712, 24.714642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227379, 32.987198, 24.569164>,  <39.022858, 33.077488, 24.481878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227379, 32.987198, 24.569164>,  <39.568249, 32.836712, 24.714642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227379, 32.987198, 24.569164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437961, 0.132451, -0.889183,
		-0.286349, -0.917018, -0.277637,
		-0.852170, 0.376211, -0.363691,
		38.971729, 33.100060, 24.460056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306030, 32.366528, 24.135693>,  <39.568249, 32.836712, 24.714642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306030, 32.366528, 24.135693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169312, 32.738670, 24.082596>,  <39.087280, 32.961956, 24.050737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169312, 32.738670, 24.082596>,  <39.306030, 32.366528, 24.135693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169312, 32.738670, 24.082596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363980, 0.000828, -0.931407,
		-0.866427, -0.366664, -0.338913,
		-0.341794, 0.930353, -0.132741,
		39.066772, 33.017776, 24.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914433, 32.342140, 23.529358>,  <39.306030, 32.366528, 24.135693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914433, 32.342140, 23.529358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027775, 32.724709, 23.557573>,  <39.095779, 32.954250, 23.574503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027775, 32.724709, 23.557573>,  <38.914433, 32.342140, 23.529358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027775, 32.724709, 23.557573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134761, 0.033115, -0.990325,
		-0.949501, 0.290116, -0.119504,
		0.283351, 0.956418, 0.070539,
		39.112782, 33.011635, 23.578735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609024, 32.620403, 22.989134>,  <38.914433, 32.342140, 23.529358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609024, 32.620403, 22.989134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872314, 32.897968, 23.105900>,  <39.030289, 33.064507, 23.175961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872314, 32.897968, 23.105900>,  <38.609024, 32.620403, 22.989134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872314, 32.897968, 23.105900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164053, 0.246229, -0.955226,
		-0.734726, 0.676647, 0.048236,
		0.658229, 0.693916, 0.291917,
		39.069782, 33.106144, 23.193476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534935, 33.156059, 22.509550>,  <38.609024, 32.620403, 22.989134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534935, 33.156059, 22.509550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.900932, 33.207470, 22.662529>,  <39.120529, 33.238316, 22.754316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.900932, 33.207470, 22.662529>,  <38.534935, 33.156059, 22.509550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900932, 33.207470, 22.662529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338679, 0.270491, -0.901183,
		-0.219274, 0.954105, 0.203969,
		0.914995, 0.128526, 0.382447,
		39.175430, 33.246029, 22.777264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763882, 33.927177, 22.270916>,  <38.534935, 33.156059, 22.509550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763882, 33.927177, 22.270916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058846, 33.683037, 22.386639>,  <39.235825, 33.536552, 22.456072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058846, 33.683037, 22.386639>,  <38.763882, 33.927177, 22.270916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058846, 33.683037, 22.386639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502910, 0.210200, -0.838390,
		0.450903, 0.763730, 0.461956,
		0.737406, -0.610355, 0.289308,
		39.280067, 33.499931, 22.473431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411629, 34.254860, 22.175009>,  <38.763882, 33.927177, 22.270916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411629, 34.254860, 22.175009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.506382, 33.866272, 22.179749>,  <39.563232, 33.633121, 22.182592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.506382, 33.866272, 22.179749>,  <39.411629, 34.254860, 22.175009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506382, 33.866272, 22.179749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589302, 0.133979, -0.796726,
		0.772404, 0.195714, 0.604225,
		0.236884, -0.971466, 0.011848,
		39.577446, 33.574833, 22.183304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741737, 34.856895, 22.232988>,  <39.411629, 34.254860, 22.175009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741737, 34.856895, 22.232988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594162, 35.213070, 22.126398>,  <39.505615, 35.426773, 22.062445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594162, 35.213070, 22.126398>,  <39.741737, 34.856895, 22.232988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594162, 35.213070, 22.126398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735759, -0.104608, 0.669115,
		0.567929, 0.442923, 0.693740,
		-0.368937, 0.890436, -0.266475,
		39.483482, 35.480202, 22.046455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659218, 35.247322, 22.836962>,  <39.741737, 34.856895, 22.232988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659218, 35.247322, 22.836962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398209, 35.404724, 22.577929>,  <39.241604, 35.499165, 22.422508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.398209, 35.404724, 22.577929>,  <39.659218, 35.247322, 22.836962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398209, 35.404724, 22.577929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725687, -0.078490, 0.683533,
		0.218144, 0.915966, 0.336777,
		-0.652527, 0.393503, -0.647583,
		39.202450, 35.522774, 22.383654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377483, 35.747120, 23.205853>,  <39.659218, 35.247322, 22.836962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377483, 35.747120, 23.205853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126587, 35.706039, 22.897043>,  <38.976048, 35.681393, 22.711758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126587, 35.706039, 22.897043>,  <39.377483, 35.747120, 23.205853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126587, 35.706039, 22.897043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776113, -0.000217, 0.630594,
		-0.064931, 0.994712, -0.079571,
		-0.627242, -0.102702, -0.772023,
		38.938416, 35.675228, 22.665436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944275, 36.255428, 23.346655>,  <39.377483, 35.747120, 23.205853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944275, 36.255428, 23.346655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754517, 36.023697, 23.081530>,  <38.640663, 35.884659, 22.922455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754517, 36.023697, 23.081530>,  <38.944275, 36.255428, 23.346655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754517, 36.023697, 23.081530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812516, -0.001596, 0.582936,
		-0.338772, 0.815090, -0.469960,
		-0.474395, -0.579332, -0.662814,
		38.612198, 35.849895, 22.882685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372578, 36.651451, 23.233522>,  <38.944275, 36.255428, 23.346655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372578, 36.651451, 23.233522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279930, 36.272404, 23.145552>,  <38.224342, 36.044975, 23.092770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279930, 36.272404, 23.145552>,  <38.372578, 36.651451, 23.233522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279930, 36.272404, 23.145552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837182, 0.079027, 0.541186,
		-0.495458, 0.309470, -0.811634,
		-0.231622, -0.947620, -0.219928,
		38.210445, 35.988117, 23.079573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627178, 36.618382, 23.063272>,  <38.372578, 36.651451, 23.233522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627178, 36.618382, 23.063272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752934, 36.254997, 23.173437>,  <37.828388, 36.036964, 23.239536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752934, 36.254997, 23.173437>,  <37.627178, 36.618382, 23.063272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752934, 36.254997, 23.173437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799116, -0.096661, 0.593356,
		-0.512421, -0.406630, -0.756358,
		0.314387, -0.908465, 0.275413,
		37.847248, 35.982456, 23.256062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970467, 36.246170, 22.999121>,  <37.627178, 36.618382, 23.063272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970467, 36.246170, 22.999121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231056, 36.056793, 23.236248>,  <37.387409, 35.943165, 23.378525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.231056, 36.056793, 23.236248>,  <36.970467, 36.246170, 22.999121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231056, 36.056793, 23.236248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697394, -0.066063, 0.713637,
		-0.298705, -0.878342, -0.373217,
		0.651473, -0.473446, 0.592817,
		37.426498, 35.914761, 23.414093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.668968, 35.622463, 21.516228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.529579, 35.263275, 21.623726>,  <43.445946, 35.047764, 21.688225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.529579, 35.263275, 21.623726>,  <43.668968, 35.622463, 21.516228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529579, 35.263275, 21.623726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430075, 0.407931, 0.805374,
		-0.832828, 0.165071, -0.528346,
		-0.348473, -0.897966, 0.268743,
		43.425037, 34.993885, 21.704350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950760, 35.685017, 21.658972>,  <43.668968, 35.622463, 21.516228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950760, 35.685017, 21.658972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.077206, 35.375710, 21.878839>,  <43.153072, 35.190125, 22.010761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.077206, 35.375710, 21.878839>,  <42.950760, 35.685017, 21.658972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077206, 35.375710, 21.878839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526702, 0.338854, 0.779591,
		-0.789088, -0.535950, -0.300164,
		0.316110, -0.773263, 0.549672,
		43.172039, 35.143730, 22.043741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420086, 35.483105, 22.021814>,  <42.950760, 35.685017, 21.658972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420086, 35.483105, 22.021814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.696861, 35.293571, 22.239697>,  <42.862926, 35.179852, 22.370426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.696861, 35.293571, 22.239697>,  <42.420086, 35.483105, 22.021814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696861, 35.293571, 22.239697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434272, 0.329559, 0.838331,
		-0.576738, -0.816626, 0.022264,
		0.691940, -0.473829, 0.544707,
		42.904442, 35.151424, 22.403109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080147, 34.982746, 22.464951>,  <42.420086, 35.483105, 22.021814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080147, 34.982746, 22.464951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.433308, 35.057636, 22.637197>,  <42.645203, 35.102570, 22.740545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.433308, 35.057636, 22.637197>,  <42.080147, 34.982746, 22.464951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433308, 35.057636, 22.637197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466602, 0.247075, 0.849257,
		0.052604, -0.950738, 0.305501,
		0.882902, 0.187221, 0.430619,
		42.698177, 35.113804, 22.766382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057793, 34.767998, 23.231668>,  <42.080147, 34.982746, 22.464951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057793, 34.767998, 23.231668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407257, 34.957031, 23.277941>,  <42.616936, 35.070454, 23.305704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407257, 34.957031, 23.277941>,  <42.057793, 34.767998, 23.231668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407257, 34.957031, 23.277941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220829, 0.173303, 0.959792,
		0.433536, -0.864077, 0.255769,
		0.873659, 0.472586, 0.115680,
		42.669353, 35.098808, 23.312645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329258, 34.615536, 23.858648>,  <42.057793, 34.767998, 23.231668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329258, 34.615536, 23.858648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512867, 34.959667, 23.769979>,  <42.623032, 35.166145, 23.716778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512867, 34.959667, 23.769979>,  <42.329258, 34.615536, 23.858648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512867, 34.959667, 23.769979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258405, 0.368012, 0.893193,
		0.850014, -0.352717, 0.391239,
		0.459025, 0.860324, -0.221672,
		42.650574, 35.217766, 23.703478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713676, 34.719070, 24.435669>,  <42.329258, 34.615536, 23.858648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713676, 34.719070, 24.435669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686062, 35.082142, 24.270092>,  <42.669495, 35.299984, 24.170746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686062, 35.082142, 24.270092>,  <42.713676, 34.719070, 24.435669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686062, 35.082142, 24.270092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020203, 0.416119, 0.909086,
		0.997410, 0.054397, -0.047066,
		-0.069036, 0.907681, -0.413942,
		42.665352, 35.354446, 24.145908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013981, 35.054878, 25.015623>,  <42.713676, 34.719070, 24.435669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013981, 35.054878, 25.015623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.851078, 35.334499, 24.780516>,  <42.753334, 35.502270, 24.639452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.851078, 35.334499, 24.780516>,  <43.013981, 35.054878, 25.015623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851078, 35.334499, 24.780516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008003, 0.646262, 0.763074,
		0.913277, 0.306066, -0.268792,
		-0.407261, 0.699049, -0.587767,
		42.728901, 35.544212, 24.604185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387493, 35.743877, 25.182686>,  <43.013981, 35.054878, 25.015623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387493, 35.743877, 25.182686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.011955, 35.824986, 25.071360>,  <42.786633, 35.873650, 25.004564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.011955, 35.824986, 25.071360>,  <43.387493, 35.743877, 25.182686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011955, 35.824986, 25.071360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023468, 0.844034, 0.535776,
		0.343550, 0.496477, -0.797173,
		-0.938841, 0.202773, -0.278316,
		42.730305, 35.885818, 24.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397755, 36.525124, 24.863199>,  <43.387493, 35.743877, 25.182686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397755, 36.525124, 24.863199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.045326, 36.402134, 25.006966>,  <42.833870, 36.328342, 25.093225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.045326, 36.402134, 25.006966>,  <43.397755, 36.525124, 24.863199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045326, 36.402134, 25.006966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057281, 0.823653, 0.564193,
		-0.469509, 0.476505, -0.743307,
		-0.881068, -0.307471, 0.359418,
		42.781006, 36.309895, 25.114792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115215, 37.160553, 25.115053>,  <43.397755, 36.525124, 24.863199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115215, 37.160553, 25.115053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.887489, 36.880352, 25.287186>,  <42.750854, 36.712231, 25.390465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.887489, 36.880352, 25.287186>,  <43.115215, 37.160553, 25.115053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887489, 36.880352, 25.287186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248017, 0.645395, 0.722463,
		-0.783819, 0.304577, -0.541166,
		-0.569312, -0.700498, 0.430332,
		42.716698, 36.670204, 25.416285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435925, 37.512077, 25.284620>,  <43.115215, 37.160553, 25.115053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435925, 37.512077, 25.284620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457520, 37.202126, 25.536539>,  <42.470474, 37.016155, 25.687691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457520, 37.202126, 25.536539>,  <42.435925, 37.512077, 25.284620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457520, 37.202126, 25.536539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158649, 0.616051, 0.771564,
		-0.985858, -0.141569, -0.089677,
		0.053983, -0.774880, 0.629799,
		42.473713, 36.969662, 25.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003754, 38.053177, 24.888573>,  <42.435925, 37.512077, 25.284620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003754, 38.053177, 24.888573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.893738, 38.430420, 24.813848>,  <41.827728, 38.656765, 24.769014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.893738, 38.430420, 24.813848>,  <42.003754, 38.053177, 24.888573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893738, 38.430420, 24.813848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303114, -0.099336, -0.947763,
		-0.912400, -0.317301, -0.258548,
		-0.275043, 0.943108, -0.186813,
		41.811226, 38.713352, 24.757805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556740, 38.084831, 24.318451>,  <42.003754, 38.053177, 24.888573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556740, 38.084831, 24.318451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715183, 38.451618, 24.337486>,  <41.810249, 38.671692, 24.348907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715183, 38.451618, 24.337486>,  <41.556740, 38.084831, 24.318451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715183, 38.451618, 24.337486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316883, -0.087874, -0.944385,
		-0.861793, 0.389155, -0.325380,
		0.396105, 0.916971, 0.047587,
		41.834015, 38.726711, 24.351763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487133, 38.432941, 23.589550>,  <41.556740, 38.084831, 24.318451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487133, 38.432941, 23.589550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.745499, 38.649517, 23.804823>,  <41.900517, 38.779461, 23.933987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.745499, 38.649517, 23.804823>,  <41.487133, 38.432941, 23.589550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745499, 38.649517, 23.804823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555915, 0.149573, -0.817671,
		-0.523217, 0.827327, -0.204384,
		0.645912, 0.541440, 0.538183,
		41.939274, 38.811951, 23.966278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673161, 39.074799, 23.235752>,  <41.487133, 38.432941, 23.589550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673161, 39.074799, 23.235752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964066, 38.945999, 23.478210>,  <42.138607, 38.868721, 23.623686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.964066, 38.945999, 23.478210>,  <41.673161, 39.074799, 23.235752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964066, 38.945999, 23.478210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586294, -0.167738, -0.792543,
		0.356869, 0.931763, 0.066795,
		0.727258, -0.321995, 0.606147,
		42.182243, 38.849400, 23.660055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286659, 39.413605, 22.913549>,  <41.673161, 39.074799, 23.235752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286659, 39.413605, 22.913549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436443, 39.150879, 23.175350>,  <42.526314, 38.993244, 23.332432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436443, 39.150879, 23.175350>,  <42.286659, 39.413605, 22.913549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436443, 39.150879, 23.175350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743563, -0.209008, -0.635161,
		0.553978, 0.724509, 0.410115,
		0.374463, -0.656812, 0.654504,
		42.548782, 38.953835, 23.371702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961689, 39.556831, 22.867918>,  <42.286659, 39.413605, 22.913549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961689, 39.556831, 22.867918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910542, 39.184013, 23.003534>,  <42.879852, 38.960323, 23.084904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910542, 39.184013, 23.003534>,  <42.961689, 39.556831, 22.867918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910542, 39.184013, 23.003534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584659, -0.346971, -0.733338,
		0.801139, 0.104453, 0.589293,
		-0.127868, -0.932041, 0.339042,
		42.872181, 38.904400, 23.105247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616978, 39.251312, 22.650145>,  <42.961689, 39.556831, 22.867918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616978, 39.251312, 22.650145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383755, 38.937199, 22.733438>,  <43.243820, 38.748730, 22.783415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383755, 38.937199, 22.733438>,  <43.616978, 39.251312, 22.650145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383755, 38.937199, 22.733438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364700, -0.482030, -0.796643,
		0.725970, -0.388548, 0.567448,
		-0.583061, -0.785288, 0.208236,
		43.208836, 38.701611, 22.795910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082977, 38.732090, 22.650606>,  <43.616978, 39.251312, 22.650145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082977, 38.732090, 22.650606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.713074, 38.592129, 22.590750>,  <43.491131, 38.508152, 22.554836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.713074, 38.592129, 22.590750>,  <44.082977, 38.732090, 22.650606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713074, 38.592129, 22.590750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318473, -0.496300, -0.807627,
		0.208323, -0.794515, 0.570392,
		-0.924757, -0.349902, -0.149641,
		43.435646, 38.487160, 22.545858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065125, 37.928711, 22.663628>,  <44.082977, 38.732090, 22.650606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065125, 37.928711, 22.663628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.746651, 38.056965, 22.458380>,  <43.555569, 38.133915, 22.335232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.746651, 38.056965, 22.458380>,  <44.065125, 37.928711, 22.663628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746651, 38.056965, 22.458380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270601, -0.569818, -0.775939,
		-0.541169, -0.756641, 0.366919,
		-0.796185, 0.320626, -0.513116,
		43.507797, 38.153152, 22.304443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932091, 37.377815, 22.242016>,  <44.065125, 37.928711, 22.663628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932091, 37.377815, 22.242016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679752, 37.645561, 22.085049>,  <43.528351, 37.806210, 21.990870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.679752, 37.645561, 22.085049>,  <43.932091, 37.377815, 22.242016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679752, 37.645561, 22.085049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143404, -0.396455, -0.906785,
		-0.762544, -0.628312, 0.154111,
		-0.630842, 0.669363, -0.392417,
		43.490501, 37.846371, 21.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674763, 37.002987, 21.721544>,  <43.932091, 37.377815, 22.242016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674763, 37.002987, 21.721544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.560841, 37.374775, 21.627764>,  <43.492489, 37.597847, 21.571495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.560841, 37.374775, 21.627764>,  <43.674763, 37.002987, 21.721544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560841, 37.374775, 21.627764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004961, -0.243148, -0.969977,
		-0.958574, -0.277414, 0.064637,
		-0.284801, 0.929473, -0.234452,
		43.475399, 37.653618, 21.557428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032375, 36.971523, 21.344486>,  <43.674763, 37.002987, 21.721544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032375, 36.971523, 21.344486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237423, 37.302139, 21.251493>,  <43.360451, 37.500511, 21.195698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.237423, 37.302139, 21.251493>,  <43.032375, 36.971523, 21.344486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237423, 37.302139, 21.251493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054956, -0.301793, -0.951788,
		-0.856854, 0.475131, -0.200129,
		0.512622, 0.826542, -0.232481,
		43.391209, 37.550102, 21.181749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744980, 36.540878, 21.954798>,  <43.032375, 36.971523, 21.344486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744980, 36.540878, 21.954798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.681969, 36.906105, 21.804335>,  <42.644161, 37.125240, 21.714058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.681969, 36.906105, 21.804335>,  <42.744980, 36.540878, 21.954798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681969, 36.906105, 21.804335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887740, -0.297784, -0.351057,
		-0.432552, 0.278628, 0.857476,
		-0.157528, 0.913067, -0.376157,
		42.634708, 37.180027, 21.691488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183292, 36.835072, 22.361568>,  <42.744980, 36.540878, 21.954798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183292, 36.835072, 22.361568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.222538, 36.904190, 21.969545>,  <42.246086, 36.945660, 21.734331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.222538, 36.904190, 21.969545>,  <42.183292, 36.835072, 22.361568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222538, 36.904190, 21.969545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917571, -0.365557, -0.156309,
		-0.385277, 0.914609, 0.122688,
		0.098112, 0.172797, -0.980059,
		42.251972, 36.956028, 21.675528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576187, 37.259117, 22.037924>,  <42.183292, 36.835072, 22.361568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576187, 37.259117, 22.037924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.736732, 37.024170, 21.756811>,  <41.833061, 36.883202, 21.588144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.736732, 37.024170, 21.756811>,  <41.576187, 37.259117, 22.037924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736732, 37.024170, 21.756811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904608, -0.374418, -0.203703,
		-0.143484, 0.717501, -0.681619,
		0.401367, -0.587370, -0.702781,
		41.857143, 36.847958, 21.545977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156189, 37.270802, 21.448284>,  <41.576187, 37.259117, 22.037924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156189, 37.270802, 21.448284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354446, 36.928574, 21.388498>,  <41.473400, 36.723236, 21.352627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.354446, 36.928574, 21.388498>,  <41.156189, 37.270802, 21.448284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354446, 36.928574, 21.388498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864265, -0.468828, -0.182337,
		0.085928, 0.219552, -0.971809,
		0.495644, -0.855568, -0.149466,
		41.503139, 36.671902, 21.343658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812206, 37.042416, 20.825888>,  <41.156189, 37.270802, 21.448284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812206, 37.042416, 20.825888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.971222, 36.746166, 21.042568>,  <41.066631, 36.568417, 21.172577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.971222, 36.746166, 21.042568>,  <40.812206, 37.042416, 20.825888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971222, 36.746166, 21.042568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899779, -0.430382, 0.071895,
		0.179890, -0.515991, -0.837492,
		0.397539, -0.740624, 0.541700,
		41.090485, 36.523979, 21.205078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596062, 36.486500, 20.533295>,  <40.812206, 37.042416, 20.825888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596062, 36.486500, 20.533295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666515, 36.318287, 20.889301>,  <40.708786, 36.217358, 21.102905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666515, 36.318287, 20.889301>,  <40.596062, 36.486500, 20.533295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666515, 36.318287, 20.889301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918559, -0.395252, -0.004974,
		0.353872, -0.816656, -0.455902,
		0.176134, -0.420533, 0.890016,
		40.719357, 36.192127, 21.156305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205250, 35.822475, 20.477541>,  <40.596062, 36.486500, 20.533295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205250, 35.822475, 20.477541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293663, 35.860271, 20.865812>,  <40.346710, 35.882950, 21.098776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293663, 35.860271, 20.865812>,  <40.205250, 35.822475, 20.477541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293663, 35.860271, 20.865812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933037, -0.269220, 0.238668,
		0.283878, -0.958432, 0.028656,
		0.221033, 0.094490, 0.970678,
		40.359974, 35.888618, 21.157017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805882, 35.245911, 20.886421>,  <40.205250, 35.822475, 20.477541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805882, 35.245911, 20.886421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931229, 35.493290, 21.174677>,  <40.006435, 35.641720, 21.347630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.931229, 35.493290, 21.174677>,  <39.805882, 35.245911, 20.886421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931229, 35.493290, 21.174677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802601, -0.233125, 0.549077,
		0.507576, -0.750446, 0.423317,
		0.313367, 0.618453, 0.720637,
		40.025238, 35.678825, 21.390867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764683, 34.856853, 21.522257>,  <39.805882, 35.245911, 20.886421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764683, 34.856853, 21.522257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.759026, 35.247925, 21.606104>,  <39.755630, 35.482567, 21.656412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.759026, 35.247925, 21.606104>,  <39.764683, 34.856853, 21.522257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759026, 35.247925, 21.606104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880695, -0.111450, 0.460386,
		0.473473, -0.178095, 0.862616,
		-0.014146, 0.977681, 0.209616,
		39.754784, 35.541229, 21.668989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067432, 34.326553, 21.904671>,  <39.764683, 34.856853, 21.522257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067432, 34.326553, 21.904671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000664, 33.932274, 21.895407>,  <39.960602, 33.695705, 21.889849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000664, 33.932274, 21.895407>,  <40.067432, 34.326553, 21.904671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000664, 33.932274, 21.895407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577460, -0.078695, -0.812618,
		0.799173, -0.149016, 0.582337,
		-0.166920, -0.985699, -0.023160,
		39.950588, 33.636566, 21.888458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710293, 33.946491, 21.939003>,  <40.067432, 34.326553, 21.904671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710293, 33.946491, 21.939003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449341, 33.699268, 21.763548>,  <40.292770, 33.550934, 21.658276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.449341, 33.699268, 21.763548>,  <40.710293, 33.946491, 21.939003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449341, 33.699268, 21.763548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524165, 0.050074, -0.850143,
		0.547404, -0.784534, 0.291298,
		-0.652380, -0.618060, -0.438636,
		40.253628, 33.513851, 21.631956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173386, 33.493980, 21.544127>,  <40.710293, 33.946491, 21.939003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173386, 33.493980, 21.544127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.811039, 33.450104, 21.380478>,  <40.593632, 33.423779, 21.282288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.811039, 33.450104, 21.380478>,  <41.173386, 33.493980, 21.544127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811039, 33.450104, 21.380478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418502, -0.082761, -0.904437,
		0.065349, -0.990514, 0.120876,
		-0.905862, -0.109690, -0.409123,
		40.539280, 33.417198, 21.257740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247055, 32.877552, 21.224457>,  <41.173386, 33.493980, 21.544127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247055, 32.877552, 21.224457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941551, 33.065456, 21.047375>,  <40.758247, 33.178200, 20.941126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.941551, 33.065456, 21.047375>,  <41.247055, 32.877552, 21.224457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941551, 33.065456, 21.047375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541822, 0.093784, -0.835245,
		-0.350847, -0.877798, -0.326156,
		-0.763764, 0.469762, -0.442707,
		40.712421, 33.206387, 20.914562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095772, 32.495651, 20.617598>,  <41.247055, 32.877552, 21.224457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095772, 32.495651, 20.617598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967159, 32.869324, 20.555717>,  <40.889992, 33.093525, 20.518589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.967159, 32.869324, 20.555717>,  <41.095772, 32.495651, 20.617598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967159, 32.869324, 20.555717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365773, -0.028160, -0.930278,
		-0.873402, -0.355694, -0.332643,
		-0.321527, 0.934178, -0.154699,
		40.870701, 33.149578, 20.509308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105583, 32.488964, 19.931602>,  <41.095772, 32.495651, 20.617598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105583, 32.488964, 19.931602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044113, 32.867485, 20.045368>,  <41.007233, 33.094597, 20.113626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044113, 32.867485, 20.045368>,  <41.105583, 32.488964, 19.931602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044113, 32.867485, 20.045368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431739, 0.323207, -0.842104,
		-0.888811, -0.006619, -0.458226,
		-0.153676, 0.946305, 0.284412,
		40.998009, 33.151375, 20.130692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968872, 32.807243, 19.271240>,  <41.105583, 32.488964, 19.931602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968872, 32.807243, 19.271240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.096695, 33.078461, 19.536009>,  <41.173389, 33.241192, 19.694870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.096695, 33.078461, 19.536009>,  <40.968872, 32.807243, 19.271240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096695, 33.078461, 19.536009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504640, 0.469465, -0.724529,
		-0.802012, 0.565558, -0.192150,
		0.319555, 0.678047, 0.661919,
		41.192562, 33.281876, 19.734585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795326, 33.478043, 19.021027>,  <40.968872, 32.807243, 19.271240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795326, 33.478043, 19.021027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098553, 33.497047, 19.281202>,  <41.280491, 33.508450, 19.437307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098553, 33.497047, 19.281202>,  <40.795326, 33.478043, 19.021027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098553, 33.497047, 19.281202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566811, 0.445304, -0.693130,
		-0.322576, 0.894118, 0.310641,
		0.758070, 0.047512, 0.650441,
		41.325974, 33.511299, 19.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053093, 34.147129, 18.931303>,  <40.795326, 33.478043, 19.021027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053093, 34.147129, 18.931303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342022, 33.941021, 19.115803>,  <41.515381, 33.817356, 19.226503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.342022, 33.941021, 19.115803>,  <41.053093, 34.147129, 18.931303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342022, 33.941021, 19.115803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690253, 0.578118, -0.435121,
		-0.042455, 0.632677, 0.773251,
		0.722321, -0.515266, 0.461251,
		41.558720, 33.786442, 19.254179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.807590, 34.581020, 33.715160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198658, 34.578186, 33.799175>,  <35.433300, 34.576485, 33.849586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198658, 34.578186, 33.799175>,  <34.807590, 34.581020, 33.715160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198658, 34.578186, 33.799175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209791, -0.026232, -0.977394,
		0.012440, 0.999631, -0.024158,
		0.977667, -0.007091, 0.210039,
		35.491959, 34.576057, 33.862186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057285, 35.145012, 33.380009>,  <34.807590, 34.581020, 33.715160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057285, 35.145012, 33.380009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369305, 34.903347, 33.445137>,  <35.556515, 34.758347, 33.484215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369305, 34.903347, 33.445137>,  <35.057285, 35.145012, 33.380009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369305, 34.903347, 33.445137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142126, -0.082343, -0.986418,
		0.609364, 0.792595, 0.021636,
		0.780048, -0.604163, 0.162825,
		35.603317, 34.722099, 33.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646439, 35.458206, 32.982708>,  <35.057285, 35.145012, 33.380009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646439, 35.458206, 32.982708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742260, 35.074848, 33.044800>,  <35.799751, 34.844833, 33.082054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742260, 35.074848, 33.044800>,  <35.646439, 35.458206, 32.982708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742260, 35.074848, 33.044800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192486, -0.109828, -0.975134,
		0.951612, 0.263472, 0.158168,
		0.239550, -0.958395, 0.155228,
		35.814125, 34.787331, 33.091370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201862, 35.353077, 32.475735>,  <35.646439, 35.458206, 32.982708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201862, 35.353077, 32.475735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048073, 34.999035, 32.580627>,  <35.955799, 34.786610, 32.643562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048073, 34.999035, 32.580627>,  <36.201862, 35.353077, 32.475735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048073, 34.999035, 32.580627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028455, -0.295291, -0.954983,
		0.922697, -0.359704, 0.138717,
		-0.384473, -0.885108, 0.262229,
		35.932732, 34.733501, 32.659298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677273, 34.918137, 32.239677>,  <36.201862, 35.353077, 32.475735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677273, 34.918137, 32.239677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334160, 34.719421, 32.292458>,  <36.128292, 34.600193, 32.324127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334160, 34.719421, 32.292458>,  <36.677273, 34.918137, 32.239677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334160, 34.719421, 32.292458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122687, -0.447169, -0.885995,
		0.499157, -0.743802, 0.444523,
		-0.857782, -0.496788, 0.131953,
		36.076824, 34.570385, 32.332043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838142, 34.288437, 31.884691>,  <36.677273, 34.918137, 32.239677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838142, 34.288437, 31.884691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443508, 34.318981, 31.942396>,  <36.206726, 34.337307, 31.977020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443508, 34.318981, 31.942396>,  <36.838142, 34.288437, 31.884691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443508, 34.318981, 31.942396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161773, -0.339715, -0.926511,
		-0.021742, -0.937423, 0.347512,
		-0.986588, 0.076363, 0.144264,
		36.147533, 34.341888, 31.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540756, 33.598171, 31.570229>,  <36.838142, 34.288437, 31.884691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540756, 33.598171, 31.570229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267559, 33.890270, 31.576605>,  <36.103642, 34.065529, 31.580431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267559, 33.890270, 31.576605>,  <36.540756, 33.598171, 31.570229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267559, 33.890270, 31.576605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198913, -0.164955, -0.966035,
		-0.702818, -0.662966, 0.257920,
		-0.682994, 0.730251, 0.015939,
		36.062660, 34.109344, 31.581387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819752, 33.305439, 31.250164>,  <36.540756, 33.598171, 31.570229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819752, 33.305439, 31.250164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839046, 33.704952, 31.245983>,  <35.850624, 33.944660, 31.243475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839046, 33.704952, 31.245983>,  <35.819752, 33.305439, 31.250164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839046, 33.704952, 31.245983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247290, 0.001803, -0.968940,
		-0.967740, 0.049323, 0.247075,
		0.048237, 0.998781, -0.010452,
		35.853516, 34.004585, 31.242847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223789, 33.465569, 30.858604>,  <35.819752, 33.305439, 31.250164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223789, 33.465569, 30.858604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462521, 33.785591, 30.834263>,  <35.605759, 33.977604, 30.819658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462521, 33.785591, 30.834263>,  <35.223789, 33.465569, 30.858604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462521, 33.785591, 30.834263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102727, 0.000971, -0.994709,
		-0.795765, 0.599923, 0.082767,
		0.596830, 0.800057, -0.060856,
		35.641571, 34.025608, 30.816006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937988, 33.933784, 30.303295>,  <35.223789, 33.465569, 30.858604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937988, 33.933784, 30.303295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313507, 34.063660, 30.349327>,  <35.538818, 34.141586, 30.376945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313507, 34.063660, 30.349327>,  <34.937988, 33.933784, 30.303295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313507, 34.063660, 30.349327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102967, 0.054309, -0.993201,
		-0.328729, 0.944261, 0.017553,
		0.938794, 0.324687, 0.115080,
		35.595146, 34.161064, 30.383852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015820, 34.345814, 29.833536>,  <34.937988, 33.933784, 30.303295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015820, 34.345814, 29.833536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399490, 34.278152, 29.924191>,  <35.629692, 34.237556, 29.978582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399490, 34.278152, 29.924191>,  <35.015820, 34.345814, 29.833536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399490, 34.278152, 29.924191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247555, 0.114771, -0.962052,
		0.136724, 0.978884, 0.151961,
		0.959178, -0.169155, 0.226636,
		35.687244, 34.227406, 29.992182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389389, 34.818001, 29.391249>,  <35.015820, 34.345814, 29.833536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389389, 34.818001, 29.391249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648312, 34.522911, 29.467936>,  <35.803665, 34.345856, 29.513948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648312, 34.522911, 29.467936>,  <35.389389, 34.818001, 29.391249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648312, 34.522911, 29.467936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218257, -0.061601, -0.973945,
		0.730318, 0.672281, 0.121140,
		0.647302, -0.737729, 0.191718,
		35.842503, 34.301594, 29.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656303, 35.487774, 29.351004>,  <35.389389, 34.818001, 29.391249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656303, 35.487774, 29.351004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425472, 35.777054, 29.199238>,  <35.286972, 35.950623, 29.108177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425472, 35.777054, 29.199238>,  <35.656303, 35.487774, 29.351004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425472, 35.777054, 29.199238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286734, 0.255588, 0.923287,
		0.764697, 0.641602, 0.059871,
		-0.577080, 0.723202, -0.379417,
		35.252350, 35.994015, 29.085413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807163, 36.094482, 29.756922>,  <35.656303, 35.487774, 29.351004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807163, 36.094482, 29.756922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444153, 36.162289, 29.603214>,  <35.226349, 36.202972, 29.510990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444153, 36.162289, 29.603214>,  <35.807163, 36.094482, 29.756922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444153, 36.162289, 29.603214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281080, 0.434704, 0.855586,
		0.312081, 0.884475, -0.346856,
		-0.907524, 0.169517, -0.384271,
		35.171894, 36.213142, 29.487932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710770, 36.790390, 29.882568>,  <35.807163, 36.094482, 29.756922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710770, 36.790390, 29.882568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342205, 36.648212, 29.819754>,  <35.121067, 36.562904, 29.782064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342205, 36.648212, 29.819754>,  <35.710770, 36.790390, 29.882568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342205, 36.648212, 29.819754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338275, 0.534823, 0.774296,
		-0.191231, 0.766567, -0.613030,
		-0.921412, -0.355442, -0.157036,
		35.065781, 36.541580, 29.772642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244183, 37.266266, 30.260201>,  <35.710770, 36.790390, 29.882568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244183, 37.266266, 30.260201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979233, 36.976665, 30.183170>,  <34.820263, 36.802906, 30.136953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979233, 36.976665, 30.183170>,  <35.244183, 37.266266, 30.260201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979233, 36.976665, 30.183170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592521, 0.348969, 0.726044,
		-0.458453, 0.595018, -0.660133,
		-0.662375, -0.723999, -0.192575,
		34.780521, 36.759464, 30.125399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496113, 37.496738, 30.055344>,  <35.244183, 37.266266, 30.260201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496113, 37.496738, 30.055344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477062, 37.134167, 30.223207>,  <34.465633, 36.916622, 30.323925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477062, 37.134167, 30.223207>,  <34.496113, 37.496738, 30.055344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477062, 37.134167, 30.223207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634302, 0.351996, 0.688302,
		-0.771617, -0.233410, -0.591716,
		-0.047625, -0.906432, 0.419658,
		34.462776, 36.862236, 30.349106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873955, 37.494129, 30.307516>,  <34.496113, 37.496738, 30.055344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873955, 37.494129, 30.307516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041801, 37.215366, 30.540152>,  <34.142509, 37.048111, 30.679733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041801, 37.215366, 30.540152>,  <33.873955, 37.494129, 30.307516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041801, 37.215366, 30.540152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471020, 0.380530, 0.795825,
		-0.775925, -0.607883, -0.168579,
		0.419619, -0.696904, 0.581587,
		34.167686, 37.006294, 30.714628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356056, 37.369705, 30.646828>,  <33.873955, 37.494129, 30.307516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356056, 37.369705, 30.646828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657719, 37.191803, 30.840094>,  <33.838715, 37.085064, 30.956053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657719, 37.191803, 30.840094>,  <33.356056, 37.369705, 30.646828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657719, 37.191803, 30.840094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323653, 0.388464, 0.862754,
		-0.571406, -0.807025, 0.149015,
		0.754151, -0.444753, 0.483167,
		33.883965, 37.058376, 30.985044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081398, 36.905415, 31.182562>,  <33.356056, 37.369705, 30.646828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081398, 36.905415, 31.182562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455196, 36.991917, 31.295670>,  <33.679474, 37.043816, 31.363533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455196, 36.991917, 31.295670>,  <33.081398, 36.905415, 31.182562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455196, 36.991917, 31.295670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334224, 0.259553, 0.906050,
		0.122543, -0.941205, 0.314828,
		0.934493, 0.216253, 0.282767,
		33.735546, 37.056793, 31.380499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184715, 36.670918, 31.964130>,  <33.081398, 36.905415, 31.182562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184715, 36.670918, 31.964130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455666, 36.957073, 31.895563>,  <33.618237, 37.128765, 31.854424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455666, 36.957073, 31.895563>,  <33.184715, 36.670918, 31.964130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455666, 36.957073, 31.895563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164770, 0.374641, 0.912412,
		0.716949, -0.589799, 0.371646,
		0.677374, 0.715388, -0.171417,
		33.658878, 37.171688, 31.844137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526581, 36.631607, 32.549175>,  <33.184715, 36.670918, 31.964130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526581, 36.631607, 32.549175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628220, 36.983276, 32.387936>,  <33.689201, 37.194279, 32.291191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628220, 36.983276, 32.387936>,  <33.526581, 36.631607, 32.549175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628220, 36.983276, 32.387936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102172, 0.438849, 0.892733,
		0.961767, -0.185656, 0.201337,
		0.254099, 0.879172, -0.403102,
		33.704449, 37.247028, 32.267006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071316, 36.832672, 32.951530>,  <33.526581, 36.631607, 32.549175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071316, 36.832672, 32.951530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935146, 37.167484, 32.780186>,  <33.853443, 37.368370, 32.677380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935146, 37.167484, 32.780186>,  <34.071316, 36.832672, 32.951530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935146, 37.167484, 32.780186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105060, 0.486582, 0.867295,
		0.934384, 0.250244, -0.253582,
		-0.340424, 0.837028, -0.428364,
		33.833019, 37.418594, 32.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517418, 37.386311, 33.177155>,  <34.071316, 36.832672, 32.951530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517418, 37.386311, 33.177155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179810, 37.564911, 33.058311>,  <33.977245, 37.672070, 32.987003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179810, 37.564911, 33.058311>,  <34.517418, 37.386311, 33.177155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179810, 37.564911, 33.058311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096067, 0.670887, 0.735311,
		0.527644, 0.592072, -0.609133,
		-0.844016, 0.446499, -0.297111,
		33.926605, 37.698860, 32.969177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692123, 38.062187, 33.165882>,  <34.517418, 37.386311, 33.177155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692123, 38.062187, 33.165882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292362, 38.064224, 33.179543>,  <34.052505, 38.065449, 33.187740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292362, 38.064224, 33.179543>,  <34.692123, 38.062187, 33.165882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292362, 38.064224, 33.179543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029336, 0.647054, 0.761880,
		-0.018219, 0.762427, -0.646817,
		-0.999403, 0.005095, 0.034155,
		33.992542, 38.065754, 33.189789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513287, 38.792522, 33.140015>,  <34.692123, 38.062187, 33.165882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513287, 38.792522, 33.140015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205765, 38.613346, 33.322567>,  <34.021252, 38.505840, 33.432098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205765, 38.613346, 33.322567>,  <34.513287, 38.792522, 33.140015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205765, 38.613346, 33.322567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025445, 0.734534, 0.678095,
		-0.638973, 0.509713, -0.576114,
		-0.768808, -0.447943, 0.456378,
		33.975121, 38.478962, 33.459480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860332, 38.987743, 32.546482>,  <34.513287, 38.792522, 33.140015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860332, 38.987743, 32.546482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990341, 39.194431, 32.863308>,  <35.068348, 39.318443, 33.053402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990341, 39.194431, 32.863308>,  <34.860332, 38.987743, 32.546482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990341, 39.194431, 32.863308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664709, 0.470935, -0.579984,
		-0.672698, 0.714999, -0.190402,
		0.325021, 0.516716, 0.792064,
		35.087849, 39.349445, 33.100925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883541, 39.792259, 32.413593>,  <34.860332, 38.987743, 32.546482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883541, 39.792259, 32.413593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139595, 39.687351, 32.702435>,  <35.293228, 39.624405, 32.875740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139595, 39.687351, 32.702435>,  <34.883541, 39.792259, 32.413593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139595, 39.687351, 32.702435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724455, 0.518926, -0.453741,
		-0.255716, 0.813589, 0.522189,
		0.640136, -0.262274, 0.722106,
		35.331635, 39.608669, 32.919067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278641, 40.423264, 32.733753>,  <34.883541, 39.792259, 32.413593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278641, 40.423264, 32.733753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462410, 40.068798, 32.709610>,  <35.572670, 39.856117, 32.695122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.462410, 40.068798, 32.709610>,  <35.278641, 40.423264, 32.733753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462410, 40.068798, 32.709610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695012, 0.400970, -0.596809,
		0.553075, 0.232234, 0.800110,
		0.459419, -0.886166, -0.060361,
		35.600235, 39.802948, 32.691502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955254, 40.606110, 32.893314>,  <35.278641, 40.423264, 32.733753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955254, 40.606110, 32.893314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941605, 40.270428, 32.676216>,  <35.933414, 40.069019, 32.545956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941605, 40.270428, 32.676216>,  <35.955254, 40.606110, 32.893314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941605, 40.270428, 32.676216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768201, 0.325357, -0.551371,
		0.639299, -0.435754, 0.633574,
		-0.034124, -0.839203, -0.542747,
		35.931366, 40.018665, 32.513393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640915, 40.477379, 32.580353>,  <35.955254, 40.606110, 32.893314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640915, 40.477379, 32.580353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450035, 40.218536, 32.342518>,  <36.335506, 40.063229, 32.199818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.450035, 40.218536, 32.342518>,  <36.640915, 40.477379, 32.580353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450035, 40.218536, 32.342518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721716, 0.097459, -0.685294,
		0.501408, -0.756142, 0.420523,
		-0.477195, -0.647110, -0.594586,
		36.306877, 40.024403, 32.164143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238827, 40.131756, 32.386650>,  <36.640915, 40.477379, 32.580353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238827, 40.131756, 32.386650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946148, 40.046124, 32.127796>,  <36.770542, 39.994743, 31.972483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946148, 40.046124, 32.127796>,  <37.238827, 40.131756, 32.386650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946148, 40.046124, 32.127796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666322, -0.024571, -0.745260,
		0.143646, -0.976506, 0.160627,
		-0.731698, -0.214083, -0.647138,
		36.726639, 39.981899, 31.933655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448349, 39.448029, 31.946812>,  <37.238827, 40.131756, 32.386650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448349, 39.448029, 31.946812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166798, 39.657585, 31.754940>,  <36.997868, 39.783318, 31.639816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166798, 39.657585, 31.754940>,  <37.448349, 39.448029, 31.946812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166798, 39.657585, 31.754940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484367, -0.139944, -0.863599,
		-0.519561, -0.840210, -0.155252,
		-0.703879, 0.523891, -0.479680,
		36.955635, 39.814754, 31.611036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359753, 39.036297, 31.404060>,  <37.448349, 39.448029, 31.946812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359753, 39.036297, 31.404060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229778, 39.402657, 31.309786>,  <37.151794, 39.622471, 31.253222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229778, 39.402657, 31.309786>,  <37.359753, 39.036297, 31.404060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229778, 39.402657, 31.309786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579697, -0.004014, -0.814822,
		-0.747240, -0.401389, -0.529640,
		-0.324935, 0.915899, -0.235684,
		37.132298, 39.677425, 31.239080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217278, 38.992809, 30.623692>,  <37.359753, 39.036297, 31.404060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217278, 38.992809, 30.623692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252533, 39.371288, 30.748230>,  <37.273685, 39.598377, 30.822954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252533, 39.371288, 30.748230>,  <37.217278, 38.992809, 30.623692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252533, 39.371288, 30.748230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486126, 0.231955, -0.842543,
		-0.869433, 0.225617, -0.439527,
		0.088142, 0.946200, 0.311348,
		37.278976, 39.655148, 30.841635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262676, 39.394363, 30.027222>,  <37.217278, 38.992809, 30.623692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262676, 39.394363, 30.027222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406845, 39.645210, 30.303429>,  <37.493347, 39.795719, 30.469152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406845, 39.645210, 30.303429>,  <37.262676, 39.394363, 30.027222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406845, 39.645210, 30.303429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603251, 0.407919, -0.685340,
		-0.711466, 0.663567, -0.231288,
		0.360423, 0.627121, 0.690518,
		37.514973, 39.833347, 30.510584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302929, 40.008808, 29.662951>,  <37.262676, 39.394363, 30.027222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302929, 40.008808, 29.662951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552162, 40.069214, 29.969927>,  <37.701702, 40.105457, 30.154112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552162, 40.069214, 29.969927>,  <37.302929, 40.008808, 29.662951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552162, 40.069214, 29.969927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718061, 0.278561, -0.637803,
		-0.310096, 0.948472, 0.065128,
		0.623080, 0.151014, 0.767441,
		37.739086, 40.114517, 30.200159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542103, 40.701748, 29.518320>,  <37.302929, 40.008808, 29.662951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542103, 40.701748, 29.518320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773041, 40.498363, 29.773865>,  <37.911602, 40.376335, 29.927191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.773041, 40.498363, 29.773865>,  <37.542103, 40.701748, 29.518320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773041, 40.498363, 29.773865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812391, 0.279305, -0.511868,
		0.081827, 0.814530, 0.574322,
		0.577343, -0.508459, 0.638862,
		37.946243, 40.345825, 29.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057480, 41.137146, 29.683952>,  <37.542103, 40.701748, 29.518320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057480, 41.137146, 29.683952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210819, 40.778946, 29.774399>,  <38.302822, 40.564026, 29.828667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210819, 40.778946, 29.774399>,  <38.057480, 41.137146, 29.683952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210819, 40.778946, 29.774399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741220, 0.152222, -0.653775,
		0.551035, 0.418222, 0.722115,
		0.383345, -0.895499, 0.226115,
		38.325821, 40.510296, 29.842234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751503, 41.181038, 29.775473>,  <38.057480, 41.137146, 29.683952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751503, 41.181038, 29.775473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717415, 40.787106, 29.715002>,  <38.696964, 40.550747, 29.678720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.717415, 40.787106, 29.715002>,  <38.751503, 41.181038, 29.775473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717415, 40.787106, 29.715002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643153, 0.061513, -0.763263,
		0.760981, -0.162271, 0.628153,
		-0.085216, -0.984827, -0.151176,
		38.691849, 40.491657, 29.669649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420425, 40.881508, 29.674980>,  <38.751503, 41.181038, 29.775473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420425, 40.881508, 29.674980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172199, 40.620857, 29.500496>,  <39.023266, 40.464466, 29.395805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172199, 40.620857, 29.500496>,  <39.420425, 40.881508, 29.674980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172199, 40.620857, 29.500496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617242, -0.062821, -0.784262,
		0.483646, -0.755931, 0.441198,
		-0.620564, -0.651631, -0.436209,
		38.986031, 40.425369, 29.369633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807716, 40.364189, 29.372620>,  <39.420425, 40.881508, 29.674980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807716, 40.364189, 29.372620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454365, 40.292660, 29.199339>,  <39.242355, 40.249741, 29.095369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.454365, 40.292660, 29.199339>,  <39.807716, 40.364189, 29.372620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454365, 40.292660, 29.199339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467722, -0.277868, -0.839062,
		0.029673, -0.943828, 0.329103,
		-0.883377, -0.178826, -0.433204,
		39.189350, 40.239014, 29.069378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883919, 39.672832, 29.112200>,  <39.807716, 40.364189, 29.372620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883919, 39.672832, 29.112200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572987, 39.834309, 28.919207>,  <39.386425, 39.931194, 28.803411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572987, 39.834309, 28.919207>,  <39.883919, 39.672832, 29.112200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572987, 39.834309, 28.919207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260099, -0.492091, -0.830780,
		-0.572804, -0.771285, 0.277518,
		-0.777331, 0.403692, -0.482482,
		39.339787, 39.955418, 28.774462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495255, 39.154633, 28.674402>,  <39.883919, 39.672832, 29.112200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495255, 39.154633, 28.674402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.421967, 39.504009, 28.493942>,  <39.377991, 39.713634, 28.385666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.421967, 39.504009, 28.493942>,  <39.495255, 39.154633, 28.674402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421967, 39.504009, 28.493942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253988, -0.401278, -0.880037,
		-0.949694, -0.275831, -0.148319,
		-0.183225, 0.873438, -0.451149,
		39.367001, 39.766041, 28.358597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101849, 39.009804, 28.069992>,  <39.495255, 39.154633, 28.674402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101849, 39.009804, 28.069992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252621, 39.373993, 28.001911>,  <39.343082, 39.592506, 27.961063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252621, 39.373993, 28.001911>,  <39.101849, 39.009804, 28.069992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252621, 39.373993, 28.001911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213150, -0.264087, -0.940651,
		-0.901384, 0.318279, -0.293609,
		0.376928, 0.910470, -0.170203,
		39.365700, 39.647133, 27.950850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123505, 39.023884, 27.288296>,  <39.101849, 39.009804, 28.069992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123505, 39.023884, 27.288296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329124, 39.353977, 27.381880>,  <39.452496, 39.552032, 27.438030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329124, 39.353977, 27.381880>,  <39.123505, 39.023884, 27.288296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329124, 39.353977, 27.381880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556734, -0.113496, -0.822901,
		-0.652535, 0.553265, -0.517780,
		0.514049, 0.825237, 0.233961,
		39.483337, 39.601547, 27.452068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193493, 39.256943, 26.687456>,  <39.123505, 39.023884, 27.288296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193493, 39.256943, 26.687456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468025, 39.439163, 26.914234>,  <39.632744, 39.548496, 27.050301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468025, 39.439163, 26.914234>,  <39.193493, 39.256943, 26.687456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468025, 39.439163, 26.914234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627802, 0.022467, -0.778049,
		-0.367180, 0.889925, -0.270577,
		0.686326, 0.455553, 0.566946,
		39.673923, 39.575829, 27.084318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190681, 39.934902, 26.352369>,  <39.193493, 39.256943, 26.687456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190681, 39.934902, 26.352369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532173, 39.822628, 26.527803>,  <39.737068, 39.755264, 26.633064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532173, 39.822628, 26.527803>,  <39.190681, 39.934902, 26.352369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532173, 39.822628, 26.527803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395906, -0.197209, -0.896865,
		0.338232, 0.939321, -0.057238,
		0.853732, -0.280688, 0.438585,
		39.788292, 39.738422, 26.659378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782173, 40.254105, 25.934856>,  <39.190681, 39.934902, 26.352369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782173, 40.254105, 25.934856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936714, 39.948792, 26.141981>,  <40.029438, 39.765602, 26.266256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936714, 39.948792, 26.141981>,  <39.782173, 40.254105, 25.934856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936714, 39.948792, 26.141981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493962, -0.302880, -0.815025,
		0.778929, 0.570669, 0.260013,
		0.386356, -0.763283, 0.517811,
		40.052620, 39.719807, 26.297325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612679, 40.381672, 25.786257>,  <39.782173, 40.254105, 25.934856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612679, 40.381672, 25.786257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.517170, 40.021423, 25.931511>,  <40.459866, 39.805275, 26.018663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.517170, 40.021423, 25.931511>,  <40.612679, 40.381672, 25.786257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517170, 40.021423, 25.931511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558811, -0.433262, -0.707117,
		0.794179, 0.034089, 0.606727,
		-0.238766, -0.900623, 0.363137,
		40.445541, 39.751236, 26.040451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195984, 40.137642, 26.119104>,  <40.612679, 40.381672, 25.786257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195984, 40.137642, 26.119104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.984562, 39.808193, 26.036863>,  <40.857708, 39.610523, 25.987518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.984562, 39.808193, 26.036863>,  <41.195984, 40.137642, 26.119104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984562, 39.808193, 26.036863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691166, -0.276918, -0.667537,
		0.492863, -0.494938, 0.715627,
		-0.528559, -0.823622, -0.205602,
		40.825993, 39.561108, 25.975183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713409, 39.541115, 26.101677>,  <41.195984, 40.137642, 26.119104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713409, 39.541115, 26.101677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.401806, 39.393494, 25.898914>,  <41.214844, 39.304920, 25.777258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.401806, 39.393494, 25.898914>,  <41.713409, 39.541115, 26.101677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401806, 39.393494, 25.898914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626966, -0.468723, -0.622263,
		-0.007952, -0.802559, 0.596520,
		-0.779006, -0.369050, -0.506905,
		41.168102, 39.282780, 25.746843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939415, 38.890953, 26.079239>,  <41.713409, 39.541115, 26.101677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939415, 38.890953, 26.079239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682266, 38.947098, 25.778036>,  <41.527977, 38.980785, 25.597315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682266, 38.947098, 25.778036>,  <41.939415, 38.890953, 26.079239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682266, 38.947098, 25.778036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665944, -0.383314, -0.639991,
		-0.378449, -0.912895, 0.152970,
		-0.642880, 0.140335, -0.753002,
		41.489407, 38.989204, 25.552134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052902, 38.342331, 25.592148>,  <41.939415, 38.890953, 26.079239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052902, 38.342331, 25.592148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.853905, 38.605598, 25.366117>,  <41.734505, 38.763561, 25.230499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.853905, 38.605598, 25.366117>,  <42.052902, 38.342331, 25.592148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853905, 38.605598, 25.366117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623325, -0.181803, -0.760535,
		-0.603296, -0.730586, -0.319809,
		-0.497495, 0.658172, -0.565073,
		41.704655, 38.803051, 25.196596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860802, 37.636803, 25.839617>,  <42.052902, 38.342331, 25.592148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860802, 37.636803, 25.839617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.093056, 37.351505, 25.996664>,  <42.232407, 37.180325, 26.090893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.093056, 37.351505, 25.996664>,  <41.860802, 37.636803, 25.839617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093056, 37.351505, 25.996664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295856, 0.264427, 0.917904,
		-0.758510, -0.649121, -0.057484,
		0.580630, -0.713246, 0.392617,
		42.267246, 37.137531, 26.114449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460197, 37.391560, 26.425920>,  <41.860802, 37.636803, 25.839617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460197, 37.391560, 26.425920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837486, 37.284649, 26.504808>,  <42.063858, 37.220505, 26.552141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.837486, 37.284649, 26.504808>,  <41.460197, 37.391560, 26.425920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837486, 37.284649, 26.504808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035527, 0.509163, 0.859937,
		-0.330255, -0.818119, 0.470758,
		0.943223, -0.267274, 0.197219,
		42.120453, 37.204468, 26.563974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413502, 37.124428, 27.041666>,  <41.460197, 37.391560, 26.425920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413502, 37.124428, 27.041666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809612, 37.172993, 27.014507>,  <42.047279, 37.202133, 26.998211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809612, 37.172993, 27.014507>,  <41.413502, 37.124428, 27.041666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809612, 37.172993, 27.014507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042251, 0.202530, 0.978364,
		0.132538, -0.971720, 0.195431,
		0.990277, 0.121414, -0.067899,
		42.106697, 37.209415, 26.994137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743103, 36.569710, 27.297218>,  <41.413502, 37.124428, 27.041666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743103, 36.569710, 27.297218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.965763, 36.899586, 27.337276>,  <42.099358, 37.097511, 27.361311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.965763, 36.899586, 27.337276>,  <41.743103, 36.569710, 27.297218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965763, 36.899586, 27.337276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030523, -0.140772, 0.989571,
		0.830188, -0.547786, -0.103532,
		0.556648, 0.824690, 0.100147,
		42.132759, 37.146992, 27.367321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241325, 36.412384, 27.817638>,  <41.743103, 36.569710, 27.297218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241325, 36.412384, 27.817638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257938, 36.811783, 27.803341>,  <42.267906, 37.051422, 27.794764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257938, 36.811783, 27.803341>,  <42.241325, 36.412384, 27.817638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257938, 36.811783, 27.803341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001331, 0.035717, 0.999361,
		0.999136, -0.041556, 0.000154,
		0.041535, 0.998497, -0.035741,
		42.270397, 37.111332, 27.792618>
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
