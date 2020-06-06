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
	<24.484072, 35.119503, 34.600105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389330, 35.211716, 34.977627>,  <24.332485, 35.267044, 35.204140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389330, 35.211716, 34.977627>,  <24.484072, 35.119503, 34.600105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389330, 35.211716, 34.977627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186556, 0.964155, -0.188682,
		-0.953466, 0.131381, -0.271371,
		-0.236854, 0.230528, 0.943799,
		24.318274, 35.280872, 35.260765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.801994, 35.485752, 34.655628>,  <24.484072, 35.119503, 34.600105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.801994, 35.485752, 34.655628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107347, 35.575298, 34.897991>,  <24.290560, 35.629025, 35.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.107347, 35.575298, 34.897991>,  <23.801994, 35.485752, 34.655628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.107347, 35.575298, 34.897991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150225, 0.850774, -0.503603,
		-0.628232, 0.475466, 0.615838,
		0.763385, 0.223865, 0.605911,
		24.336363, 35.642456, 35.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810728, 36.184917, 35.020298>,  <23.801994, 35.485752, 34.655628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810728, 36.184917, 35.020298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201227, 36.098351, 35.024429>,  <24.435526, 36.046410, 35.026909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201227, 36.098351, 35.024429>,  <23.810728, 36.184917, 35.020298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201227, 36.098351, 35.024429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189844, 0.831467, -0.522131,
		0.104408, 0.511690, 0.852803,
		0.976247, -0.216415, 0.010329,
		24.494101, 36.033424, 35.027527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251261, 36.786213, 35.355633>,  <23.810728, 36.184917, 35.020298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251261, 36.786213, 35.355633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445410, 36.563065, 35.086357>,  <24.561899, 36.429176, 34.924789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445410, 36.563065, 35.086357>,  <24.251261, 36.786213, 35.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.445410, 36.563065, 35.086357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265399, 0.827654, -0.494523,
		0.833052, 0.061364, 0.549781,
		0.485374, -0.557874, -0.673193,
		24.591022, 36.395702, 34.884399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986038, 37.028137, 35.336994>,  <24.251261, 36.786213, 35.355633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986038, 37.028137, 35.336994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912783, 36.867001, 34.978291>,  <24.868830, 36.770321, 34.763069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912783, 36.867001, 34.978291>,  <24.986038, 37.028137, 35.336994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912783, 36.867001, 34.978291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269873, 0.856545, -0.439887,
		0.945319, -0.322572, -0.048153,
		-0.183140, -0.402838, -0.896761,
		24.857841, 36.746151, 34.709263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608969, 36.960812, 34.846004>,  <24.986038, 37.028137, 35.336994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608969, 36.960812, 34.846004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281034, 36.980114, 34.617779>,  <25.084274, 36.991695, 34.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281034, 36.980114, 34.617779>,  <25.608969, 36.960812, 34.846004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281034, 36.980114, 34.617779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461327, 0.645919, -0.608249,
		0.339185, -0.761879, -0.551809,
		-0.819836, 0.048256, -0.570561,
		25.035084, 36.994591, 34.446609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910034, 37.080051, 34.134945>,  <25.608969, 36.960812, 34.846004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910034, 37.080051, 34.134945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528818, 37.200546, 34.147373>,  <25.300089, 37.272842, 34.154831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528818, 37.200546, 34.147373>,  <25.910034, 37.080051, 34.134945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528818, 37.200546, 34.147373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252250, 0.846411, -0.468997,
		-0.167576, -0.439137, -0.882653,
		-0.953042, 0.301242, 0.031066,
		25.242905, 37.290920, 34.156693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761606, 37.272091, 33.361858>,  <25.910034, 37.080051, 34.134945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761606, 37.272091, 33.361858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582226, 37.483490, 33.650185>,  <25.474598, 37.610329, 33.823181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582226, 37.483490, 33.650185>,  <25.761606, 37.272091, 33.361858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582226, 37.483490, 33.650185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347250, 0.846126, -0.404338,
		-0.823596, 0.068978, -0.562967,
		-0.448451, 0.528501, 0.720818,
		25.447691, 37.642040, 33.866428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443308, 37.793518, 33.006752>,  <25.761606, 37.272091, 33.361858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443308, 37.793518, 33.006752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509802, 37.941799, 33.372253>,  <25.549698, 38.030769, 33.591553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509802, 37.941799, 33.372253>,  <25.443308, 37.793518, 33.006752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509802, 37.941799, 33.372253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324133, 0.854613, -0.405679,
		-0.931291, 0.363616, 0.021912,
		0.166237, 0.370703, 0.913753,
		25.559673, 38.053009, 33.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210566, 38.525337, 32.962387>,  <25.443308, 37.793518, 33.006752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210566, 38.525337, 32.962387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445419, 38.496117, 33.284863>,  <25.586330, 38.478584, 33.478348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445419, 38.496117, 33.284863>,  <25.210566, 38.525337, 32.962387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445419, 38.496117, 33.284863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358285, 0.916509, -0.177884,
		-0.725883, 0.393286, 0.564287,
		0.587133, -0.073053, 0.806187,
		25.621559, 38.474201, 33.526718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233215, 39.250645, 33.185955>,  <25.210566, 38.525337, 32.962387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233215, 39.250645, 33.185955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544653, 39.040947, 33.323917>,  <25.731516, 38.915127, 33.406696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544653, 39.040947, 33.323917>,  <25.233215, 39.250645, 33.185955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544653, 39.040947, 33.323917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627384, 0.662093, -0.409906,
		-0.013469, 0.535539, 0.844403,
		0.778594, -0.524243, 0.344906,
		25.778231, 38.883675, 33.427391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776541, 39.763496, 33.267174>,  <25.233215, 39.250645, 33.185955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776541, 39.763496, 33.267174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961136, 39.409157, 33.247978>,  <26.071894, 39.196552, 33.236462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961136, 39.409157, 33.247978>,  <25.776541, 39.763496, 33.267174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961136, 39.409157, 33.247978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804967, 0.440862, -0.397077,
		0.372905, 0.144619, 0.916530,
		0.461488, -0.885848, -0.047986,
		26.099583, 39.143402, 33.233582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514605, 39.822472, 33.638691>,  <25.776541, 39.763496, 33.267174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514605, 39.822472, 33.638691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437105, 39.568501, 33.339535>,  <26.390606, 39.416119, 33.160042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437105, 39.568501, 33.339535>,  <26.514605, 39.822472, 33.638691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437105, 39.568501, 33.339535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717351, 0.428342, -0.549481,
		0.669230, -0.642957, 0.372473,
		-0.193747, -0.634924, -0.747886,
		26.378981, 39.378025, 33.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172958, 39.550968, 33.289116>,  <26.514605, 39.822472, 33.638691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172958, 39.550968, 33.289116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863350, 39.548744, 33.035862>,  <26.677586, 39.547409, 32.883911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863350, 39.548744, 33.035862>,  <27.172958, 39.550968, 33.289116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863350, 39.548744, 33.035862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581061, 0.390989, -0.713790,
		0.251516, -0.920378, -0.299405,
		-0.774021, -0.005557, -0.633136,
		26.631144, 39.547077, 32.845921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491976, 38.920372, 33.132736>,  <27.172958, 39.550968, 33.289116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491976, 38.920372, 33.132736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820940, 39.147732, 33.123238>,  <28.018318, 39.284149, 33.117538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820940, 39.147732, 33.123238>,  <27.491976, 38.920372, 33.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820940, 39.147732, 33.123238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530231, 0.750726, -0.394039,
		-0.206147, 0.336651, 0.918787,
		0.822410, 0.568399, -0.023743,
		28.067663, 39.318253, 33.116116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988394, 38.292763, 33.200535>,  <27.491976, 38.920372, 33.132736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988394, 38.292763, 33.200535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702511, 38.556973, 33.292534>,  <26.530981, 38.715500, 33.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702511, 38.556973, 33.292534>,  <26.988394, 38.292763, 33.200535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702511, 38.556973, 33.292534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527250, -0.724874, 0.443356,
		0.459569, 0.195603, 0.866335,
		-0.714706, 0.660528, 0.229998,
		26.488100, 38.755131, 33.361534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721375, 38.193657, 33.917351>,  <26.988394, 38.292763, 33.200535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721375, 38.193657, 33.917351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423748, 38.400440, 33.748062>,  <26.245173, 38.524509, 33.646488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423748, 38.400440, 33.748062>,  <26.721375, 38.193657, 33.917351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423748, 38.400440, 33.748062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666233, -0.621493, 0.412165,
		-0.049960, 0.588645, 0.806846,
		-0.744068, 0.516956, -0.423224,
		26.200527, 38.555527, 33.621094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416063, 38.417515, 34.544140>,  <26.721375, 38.193657, 33.917351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416063, 38.417515, 34.544140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176825, 38.426537, 34.223698>,  <26.033281, 38.431950, 34.031433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176825, 38.426537, 34.223698>,  <26.416063, 38.417515, 34.544140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176825, 38.426537, 34.223698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621230, -0.644566, 0.445654,
		-0.506315, 0.764216, 0.399525,
		-0.598096, 0.022556, -0.801107,
		25.997396, 38.433304, 33.983364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798840, 38.379360, 34.861042>,  <26.416063, 38.417515, 34.544140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798840, 38.379360, 34.861042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713329, 38.284309, 34.482025>,  <25.662024, 38.227280, 34.254616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713329, 38.284309, 34.482025>,  <25.798840, 38.379360, 34.861042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713329, 38.284309, 34.482025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668306, -0.671885, 0.319276,
		-0.712508, 0.701500, -0.015179,
		-0.213774, -0.237631, -0.947540,
		25.649197, 38.213020, 34.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140675, 38.420425, 34.867168>,  <25.798840, 38.379360, 34.861042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140675, 38.420425, 34.867168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219816, 38.181519, 34.556267>,  <25.267302, 38.038174, 34.369724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219816, 38.181519, 34.556267>,  <25.140675, 38.420425, 34.867168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219816, 38.181519, 34.556267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414998, -0.769398, 0.485596,
		-0.888049, 0.226483, -0.400093,
		0.197851, -0.597270, -0.777253,
		25.279171, 38.002338, 34.323090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.489401, 38.020355, 34.595547>,  <25.140675, 38.420425, 34.867168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.489401, 38.020355, 34.595547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846745, 37.844086, 34.560421>,  <25.061152, 37.738323, 34.539345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846745, 37.844086, 34.560421>,  <24.489401, 38.020355, 34.595547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846745, 37.844086, 34.560421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315225, -0.753903, 0.576423,
		-0.320219, -0.487272, -0.812420,
		0.893361, -0.440677, -0.087813,
		25.114752, 37.711884, 34.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033680, 37.769058, 34.111919>,  <24.489401, 38.020355, 34.595547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033680, 37.769058, 34.111919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403339, 37.617813, 34.090088>,  <24.625135, 37.527065, 34.076988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403339, 37.617813, 34.090088>,  <24.033680, 37.769058, 34.111919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403339, 37.617813, 34.090088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306464, -0.819042, 0.485026,
		-0.228101, -0.431509, -0.872795,
		0.924148, -0.378115, -0.054582,
		24.680584, 37.504379, 34.073711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907877, 37.163544, 33.869579>,  <24.033680, 37.769058, 34.111919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907877, 37.163544, 33.869579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260113, 37.150269, 34.058666>,  <24.471455, 37.142303, 34.172119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260113, 37.150269, 34.058666>,  <23.907877, 37.163544, 33.869579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260113, 37.150269, 34.058666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334214, -0.750694, 0.569877,
		0.335956, -0.659816, -0.672143,
		0.880588, -0.033185, 0.472720,
		24.524290, 37.140312, 34.200481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511654, 36.641193, 33.550785>,  <23.907877, 37.163544, 33.869579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511654, 36.641193, 33.550785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816832, 36.686470, 33.805374>,  <24.999939, 36.713634, 33.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.816832, 36.686470, 33.805374>,  <24.511654, 36.641193, 33.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816832, 36.686470, 33.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326416, -0.782380, 0.530409,
		0.558003, -0.612430, -0.559967,
		0.762945, 0.113188, 0.636477,
		25.045715, 36.720425, 33.996319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875256, 36.009125, 33.677425>,  <24.511654, 36.641193, 33.550785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875256, 36.009125, 33.677425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929111, 36.236988, 34.001736>,  <24.961424, 36.373707, 34.196323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929111, 36.236988, 34.001736>,  <24.875256, 36.009125, 33.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929111, 36.236988, 34.001736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304902, -0.754714, 0.580898,
		0.942819, -0.325419, 0.072076,
		0.134638, 0.569657, 0.810779,
		24.969503, 36.407887, 34.244968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310907, 35.664318, 34.054180>,  <24.875256, 36.009125, 33.677425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310907, 35.664318, 34.054180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079153, 35.870583, 34.306656>,  <24.940102, 35.994343, 34.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079153, 35.870583, 34.306656>,  <25.310907, 35.664318, 34.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079153, 35.870583, 34.306656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297289, -0.854767, 0.425432,
		0.758903, 0.058843, 0.648540,
		-0.579384, 0.515666, 0.631192,
		24.905338, 36.025284, 34.496014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515905, 35.031673, 34.443302>,  <25.310907, 35.664318, 34.054180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515905, 35.031673, 34.443302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706858, 34.709835, 34.302029>,  <25.821430, 34.516731, 34.217266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706858, 34.709835, 34.302029>,  <25.515905, 35.031673, 34.443302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706858, 34.709835, 34.302029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071734, 0.436280, -0.896947,
		0.875762, 0.402852, 0.265989,
		0.477383, -0.804593, -0.353179,
		25.850073, 34.468456, 34.196075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101788, 35.248016, 34.038368>,  <25.515905, 35.031673, 34.443302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101788, 35.248016, 34.038368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013039, 34.879101, 33.911777>,  <25.959789, 34.657753, 33.835823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013039, 34.879101, 33.911777>,  <26.101788, 35.248016, 34.038368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013039, 34.879101, 33.911777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097501, 0.301955, -0.948323,
		0.970189, -0.241263, 0.022929,
		-0.221871, -0.922288, -0.316477,
		25.946478, 34.602413, 33.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603220, 35.164036, 33.528149>,  <26.101788, 35.248016, 34.038368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603220, 35.164036, 33.528149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290359, 34.923752, 33.461960>,  <26.102644, 34.779579, 33.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290359, 34.923752, 33.461960>,  <26.603220, 35.164036, 33.528149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290359, 34.923752, 33.461960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052411, 0.328059, -0.943202,
		0.620881, -0.729054, -0.288076,
		-0.782151, -0.600715, -0.165475,
		26.055714, 34.743538, 33.412319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701870, 34.682518, 32.996941>,  <26.603220, 35.164036, 33.528149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701870, 34.682518, 32.996941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309170, 34.757301, 33.010876>,  <26.073549, 34.802170, 33.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309170, 34.757301, 33.010876>,  <26.701870, 34.682518, 32.996941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309170, 34.757301, 33.010876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008008, 0.142401, -0.989777,
		-0.190004, -0.971993, -0.138306,
		-0.981750, 0.186954, 0.034840,
		26.014645, 34.813389, 33.021328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210316, 34.228889, 32.536324>,  <26.701870, 34.682518, 32.996941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210316, 34.228889, 32.536324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019667, 34.578918, 32.569996>,  <25.905277, 34.788937, 32.590199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019667, 34.578918, 32.569996>,  <26.210316, 34.228889, 32.536324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019667, 34.578918, 32.569996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075217, 0.054812, -0.995660,
		-0.875884, -0.480886, 0.039696,
		-0.476623, 0.875068, 0.084180,
		25.876680, 34.841438, 32.595249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457647, 34.235348, 32.226410>,  <26.210316, 34.228889, 32.536324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457647, 34.235348, 32.226410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649302, 34.585854, 32.206089>,  <25.764294, 34.796158, 32.193897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649302, 34.585854, 32.206089>,  <25.457647, 34.235348, 32.226410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649302, 34.585854, 32.206089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231111, 0.070114, -0.970398,
		-0.846767, 0.476695, 0.236109,
		0.479138, 0.876268, -0.050799,
		25.793043, 34.848736, 32.190849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026695, 34.710926, 31.761515>,  <25.457647, 34.235348, 32.226410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026695, 34.710926, 31.761515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368414, 34.918839, 31.762224>,  <25.573444, 35.043587, 31.762650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368414, 34.918839, 31.762224>,  <25.026695, 34.710926, 31.761515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368414, 34.918839, 31.762224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158415, 0.263611, -0.951532,
		-0.495058, 0.812609, 0.307543,
		0.854296, 0.519783, 0.001773,
		25.624702, 35.074772, 31.762756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898167, 35.296238, 31.417337>,  <25.026695, 34.710926, 31.761515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898167, 35.296238, 31.417337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295521, 35.258457, 31.391230>,  <25.533934, 35.235790, 31.375565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295521, 35.258457, 31.391230>,  <24.898167, 35.296238, 31.417337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295521, 35.258457, 31.391230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025797, 0.370344, -0.928536,
		0.111875, 0.924080, 0.365459,
		0.993387, -0.094452, -0.065271,
		25.593536, 35.230122, 31.371649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103617, 35.821289, 31.016226>,  <24.898167, 35.296238, 31.417337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103617, 35.821289, 31.016226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395432, 35.551964, 30.968185>,  <25.570520, 35.390369, 30.939362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395432, 35.551964, 30.968185>,  <25.103617, 35.821289, 31.016226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395432, 35.551964, 30.968185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118464, 0.048547, -0.991771,
		0.673602, 0.737763, -0.044347,
		0.729539, -0.673312, -0.120100,
		25.614294, 35.349972, 30.932156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630157, 36.103691, 30.511415>,  <25.103617, 35.821289, 31.016226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630157, 36.103691, 30.511415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649580, 35.705692, 30.546329>,  <25.661234, 35.466892, 30.567278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649580, 35.705692, 30.546329>,  <25.630157, 36.103691, 30.511415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649580, 35.705692, 30.546329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079946, -0.083236, -0.993318,
		0.995616, 0.055212, 0.075504,
		0.048559, -0.994999, 0.087285,
		25.664148, 35.407192, 30.572515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206957, 36.528393, 30.631615>,  <25.630157, 36.103691, 30.511415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206957, 36.528393, 30.631615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213028, 36.128689, 30.617447>,  <26.216671, 35.888866, 30.608946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213028, 36.128689, 30.617447>,  <26.206957, 36.528393, 30.631615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213028, 36.128689, 30.617447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351582, 0.038496, -0.935365,
		0.936034, 0.001742, 0.351905,
		0.015177, -0.999257, -0.035421,
		26.217581, 35.828911, 30.606821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916529, 36.288403, 30.418762>,  <26.206957, 36.528393, 30.631615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916529, 36.288403, 30.418762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663719, 35.998726, 30.308424>,  <26.512033, 35.824921, 30.242222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663719, 35.998726, 30.308424>,  <26.916529, 36.288403, 30.418762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663719, 35.998726, 30.308424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419662, -0.020606, -0.907446,
		0.651484, -0.689288, 0.316940,
		-0.632023, -0.724195, -0.275844,
		26.474112, 35.781467, 30.225670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341288, 35.695095, 30.138313>,  <26.916529, 36.288403, 30.418762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341288, 35.695095, 30.138313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986111, 35.789719, 29.980530>,  <26.773005, 35.846493, 29.885859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986111, 35.789719, 29.980530>,  <27.341288, 35.695095, 30.138313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986111, 35.789719, 29.980530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400668, -0.023362, -0.915925,
		-0.225885, -0.971336, -0.074037,
		-0.887942, 0.236558, -0.394461,
		26.719728, 35.860687, 29.862192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189583, 35.257473, 29.564487>,  <27.341288, 35.695095, 30.138313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189583, 35.257473, 29.564487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985449, 35.594330, 29.494804>,  <26.862968, 35.796444, 29.452995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985449, 35.594330, 29.494804>,  <27.189583, 35.257473, 29.564487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985449, 35.594330, 29.494804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442773, 0.083648, -0.892723,
		-0.737232, -0.532721, -0.415568,
		-0.510334, 0.842147, -0.174207,
		26.832348, 35.846973, 29.442543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902584, 34.501530, 29.580942>,  <27.189583, 35.257473, 29.564487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902584, 34.501530, 29.580942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790220, 34.120144, 29.624741>,  <26.722801, 33.891312, 29.651020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790220, 34.120144, 29.624741>,  <26.902584, 34.501530, 29.580942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790220, 34.120144, 29.624741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956063, 0.287978, 0.054883,
		-0.083862, -0.089269, -0.992471,
		-0.280910, -0.953467, 0.109497,
		26.705948, 33.834103, 29.657589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368484, 34.276279, 29.096336>,  <26.902584, 34.501530, 29.580942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368484, 34.276279, 29.096336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331123, 34.079525, 29.442591>,  <26.308706, 33.961472, 29.650343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331123, 34.079525, 29.442591>,  <26.368484, 34.276279, 29.096336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331123, 34.079525, 29.442591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966181, 0.254672, 0.040461,
		-0.240355, -0.832581, -0.499037,
		-0.093403, -0.491884, 0.865636,
		26.303102, 33.931961, 29.702282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671206, 34.384979, 29.266497>,  <26.368484, 34.276279, 29.096336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671206, 34.384979, 29.266497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775698, 34.173191, 29.589338>,  <25.838392, 34.046116, 29.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775698, 34.173191, 29.589338>,  <25.671206, 34.384979, 29.266497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775698, 34.173191, 29.589338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957308, -0.034891, 0.286957,
		-0.123775, -0.847609, -0.515984,
		0.261231, -0.529474, 0.807104,
		25.854067, 34.014351, 29.831469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786436, 34.805489, 29.808615>,  <25.671206, 34.384979, 29.266497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786436, 34.805489, 29.808615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027113, 35.087509, 29.958742>,  <26.171520, 35.256721, 30.048819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027113, 35.087509, 29.958742>,  <25.786436, 34.805489, 29.808615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027113, 35.087509, 29.958742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396504, -0.144248, 0.906630,
		0.693362, -0.694328, 0.192764,
		0.601693, 0.705054, 0.375320,
		26.207621, 35.299026, 30.071339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211409, 34.539581, 30.362123>,  <25.786436, 34.805489, 29.808615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211409, 34.539581, 30.362123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198473, 34.931763, 30.439754>,  <26.190712, 35.167072, 30.486332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198473, 34.931763, 30.439754>,  <26.211409, 34.539581, 30.362123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198473, 34.931763, 30.439754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219656, -0.196402, 0.955603,
		0.975041, -0.011726, 0.221714,
		-0.032339, 0.980453, 0.194076,
		26.188770, 35.225899, 30.497976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696407, 34.607662, 30.851509>,  <26.211409, 34.539581, 30.362123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696407, 34.607662, 30.851509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436371, 34.909294, 30.888929>,  <26.280350, 35.090271, 30.911381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436371, 34.909294, 30.888929>,  <26.696407, 34.607662, 30.851509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436371, 34.909294, 30.888929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034255, -0.152075, 0.987775,
		0.759084, 0.638940, 0.124693,
		-0.650091, 0.754075, 0.093551,
		26.241343, 35.135517, 30.916994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925102, 35.087044, 31.367918>,  <26.696407, 34.607662, 30.851509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925102, 35.087044, 31.367918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529135, 35.143459, 31.362638>,  <26.291555, 35.177307, 31.359470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529135, 35.143459, 31.362638>,  <26.925102, 35.087044, 31.367918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529135, 35.143459, 31.362638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005647, 0.053823, 0.998535,
		0.141540, 0.988540, -0.052484,
		-0.989916, 0.141036, -0.013200,
		26.232161, 35.185768, 31.358679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741098, 35.712967, 31.733370>,  <26.925102, 35.087044, 31.367918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741098, 35.712967, 31.733370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403425, 35.499107, 31.748877>,  <26.200821, 35.370792, 31.758181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403425, 35.499107, 31.748877>,  <26.741098, 35.712967, 31.733370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403425, 35.499107, 31.748877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000708, 0.073429, 0.997300,
		-0.536052, 0.841878, -0.062366,
		-0.844184, -0.534649, 0.038765,
		26.150169, 35.338711, 31.760506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339226, 36.123421, 32.125381>,  <26.741098, 35.712967, 31.733370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339226, 36.123421, 32.125381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170292, 35.761169, 32.140724>,  <26.068932, 35.543819, 32.149929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170292, 35.761169, 32.140724>,  <26.339226, 36.123421, 32.125381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170292, 35.761169, 32.140724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036010, 0.025524, 0.999026,
		-0.905724, 0.423306, 0.021832,
		-0.422336, -0.905627, 0.038360,
		26.043591, 35.489483, 32.152233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015915, 36.085377, 32.777084>,  <26.339226, 36.123421, 32.125381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015915, 36.085377, 32.777084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058434, 35.706295, 32.656708>,  <26.083944, 35.478848, 32.584484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058434, 35.706295, 32.656708>,  <26.015915, 36.085377, 32.777084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058434, 35.706295, 32.656708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084770, -0.292916, 0.952373,
		-0.990714, -0.126744, 0.049201,
		0.106296, -0.947701, -0.300940,
		26.090322, 35.421986, 32.566425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416220, 35.738388, 33.000954>,  <26.015915, 36.085377, 32.777084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416220, 35.738388, 33.000954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737083, 35.500847, 33.025875>,  <25.929602, 35.358322, 33.040829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737083, 35.500847, 33.025875>,  <25.416220, 35.738388, 33.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737083, 35.500847, 33.025875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293545, -0.301336, 0.907209,
		-0.519970, -0.746017, -0.416041,
		0.802161, -0.593848, 0.062304,
		25.977732, 35.322693, 33.044567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068651, 35.232464, 33.326954>,  <25.416220, 35.738388, 33.000954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068651, 35.232464, 33.326954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465611, 35.252514, 33.371922>,  <25.703785, 35.264545, 33.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465611, 35.252514, 33.371922>,  <25.068651, 35.232464, 33.326954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465611, 35.252514, 33.371922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111688, -0.017118, 0.993596,
		0.051733, -0.998596, -0.011389,
		0.992396, 0.050130, 0.112417,
		25.763329, 35.267551, 33.405647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810087, 34.504211, 33.133659>,  <25.068651, 35.232464, 33.326954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810087, 34.504211, 33.133659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198540, 34.527771, 33.041195>,  <25.431612, 34.541904, 32.985718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198540, 34.527771, 33.041195>,  <24.810087, 34.504211, 33.133659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198540, 34.527771, 33.041195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236332, -0.369247, 0.898779,
		-0.032422, -0.927463, -0.372506,
		0.971131, 0.058895, -0.231161,
		25.489880, 34.545441, 32.971848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164967, 33.851986, 33.094341>,  <24.810087, 34.504211, 33.133659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164967, 33.851986, 33.094341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447414, 34.115593, 33.197945>,  <25.616882, 34.273758, 33.260109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447414, 34.115593, 33.197945>,  <25.164967, 33.851986, 33.094341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447414, 34.115593, 33.197945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154502, -0.500366, 0.851917,
		0.691033, -0.561537, -0.455138,
		0.706119, 0.659022, 0.259011,
		25.659250, 34.313301, 33.275646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673695, 33.446907, 33.323402>,  <25.164967, 33.851986, 33.094341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673695, 33.446907, 33.323402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753002, 33.812721, 33.464439>,  <25.800587, 34.032207, 33.549061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753002, 33.812721, 33.464439>,  <25.673695, 33.446907, 33.323402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753002, 33.812721, 33.464439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287498, -0.398171, 0.871094,
		0.937035, -0.071343, -0.341871,
		0.198270, 0.914533, 0.352590,
		25.812483, 34.087082, 33.570217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421858, 33.414730, 33.606796>,  <25.673695, 33.446907, 33.323402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421858, 33.414730, 33.606796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197779, 33.707294, 33.762341>,  <26.063332, 33.882832, 33.855667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197779, 33.707294, 33.762341>,  <26.421858, 33.414730, 33.606796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197779, 33.707294, 33.762341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116423, -0.395259, 0.911162,
		0.820136, 0.555704, 0.136270,
		-0.560198, 0.731412, 0.388863,
		26.029718, 33.926720, 33.878998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783484, 33.703304, 34.196209>,  <26.421858, 33.414730, 33.606796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783484, 33.703304, 34.196209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398220, 33.782513, 34.268990>,  <26.167061, 33.830040, 34.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398220, 33.782513, 34.268990>,  <26.783484, 33.703304, 34.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398220, 33.782513, 34.268990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093169, -0.388987, 0.916520,
		0.252272, 0.899709, 0.356207,
		-0.963161, 0.198025, 0.181956,
		26.109272, 33.841919, 34.323578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716936, 34.125999, 34.851894>,  <26.783484, 33.703304, 34.196209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716936, 34.125999, 34.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418846, 33.872467, 34.769047>,  <26.239992, 33.720348, 34.719337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418846, 33.872467, 34.769047>,  <26.716936, 34.125999, 34.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418846, 33.872467, 34.769047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140942, -0.153875, 0.977987,
		-0.651750, 0.758011, 0.025338,
		-0.745223, -0.633831, -0.207124,
		26.195280, 33.682316, 34.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698648, 34.390625, 35.595272>,  <26.716936, 34.125999, 34.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698648, 34.390625, 35.595272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716978, 34.279133, 35.978981>,  <26.727976, 34.212238, 36.209206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716978, 34.279133, 35.978981>,  <26.698648, 34.390625, 35.595272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716978, 34.279133, 35.978981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989856, 0.141946, -0.006040,
		-0.134482, 0.949821, 0.282408,
		0.045824, -0.278731, 0.959275,
		26.730724, 34.195515, 36.266762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896152, 34.943542, 36.257488>,  <26.698648, 34.390625, 35.595272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896152, 34.943542, 36.257488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032942, 34.573139, 36.321453>,  <27.115015, 34.350899, 36.359833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032942, 34.573139, 36.321453>,  <26.896152, 34.943542, 36.257488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032942, 34.573139, 36.321453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937223, 0.348465, 0.013607,
		-0.068323, 0.145218, 0.987038,
		0.341972, -0.926004, 0.159910,
		27.135534, 34.295338, 36.369427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201271, 35.411053, 35.741711>,  <26.896152, 34.943542, 36.257488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201271, 35.411053, 35.741711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587746, 35.449539, 35.646027>,  <27.819632, 35.472633, 35.588615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587746, 35.449539, 35.646027>,  <27.201271, 35.411053, 35.741711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587746, 35.449539, 35.646027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252204, 0.545577, -0.799211,
		0.053609, 0.832519, 0.551397,
		0.966188, 0.096220, -0.239213,
		27.877602, 35.478405, 35.574265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398537, 36.082809, 35.537693>,  <27.201271, 35.411053, 35.741711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398537, 36.082809, 35.537693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675144, 35.878605, 35.333271>,  <27.841108, 35.756081, 35.210617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675144, 35.878605, 35.333271>,  <27.398537, 36.082809, 35.537693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675144, 35.878605, 35.333271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033072, 0.684363, -0.728391,
		0.721602, 0.520597, 0.456365,
		0.691517, -0.510516, -0.511055,
		27.882599, 35.725449, 35.179955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827641, 36.569893, 35.386143>,  <27.398537, 36.082809, 35.537693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827641, 36.569893, 35.386143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841295, 36.265812, 35.126629>,  <27.849487, 36.083363, 34.970921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841295, 36.265812, 35.126629>,  <27.827641, 36.569893, 35.386143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841295, 36.265812, 35.126629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053129, 0.646868, -0.760749,
		0.998004, 0.060439, -0.018307,
		0.034136, -0.760203, -0.648788,
		27.851536, 36.037750, 34.931992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226583, 36.784382, 34.875153>,  <27.827641, 36.569893, 35.386143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226583, 36.784382, 34.875153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967218, 36.511856, 34.739285>,  <27.811600, 36.348343, 34.657764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967218, 36.511856, 34.739285>,  <28.226583, 36.784382, 34.875153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967218, 36.511856, 34.739285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168787, 0.563731, -0.808528,
		0.742341, -0.466929, -0.480527,
		-0.648413, -0.681311, -0.339669,
		27.772694, 36.307465, 34.637383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237591, 36.815819, 34.126949>,  <28.226583, 36.784382, 34.875153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237591, 36.815819, 34.126949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884739, 36.634762, 34.179035>,  <27.673027, 36.526127, 34.210285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884739, 36.634762, 34.179035>,  <28.237591, 36.815819, 34.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884739, 36.634762, 34.179035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347405, 0.438611, -0.828812,
		0.318045, -0.776359, -0.544164,
		-0.882132, -0.452645, 0.130213,
		27.620100, 36.498966, 34.218098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125557, 36.293945, 33.592445>,  <28.237591, 36.815819, 34.126949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125557, 36.293945, 33.592445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802425, 36.495243, 33.715187>,  <27.608547, 36.616020, 33.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802425, 36.495243, 33.715187>,  <28.125557, 36.293945, 33.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802425, 36.495243, 33.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066897, 0.438962, -0.896012,
		-0.585608, -0.744352, -0.320941,
		-0.807829, 0.503242, 0.306854,
		27.560078, 36.646217, 33.807243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572906, 36.082352, 33.190273>,  <28.125557, 36.293945, 33.592445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572906, 36.082352, 33.190273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580822, 36.466248, 33.302345>,  <27.585571, 36.696587, 33.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580822, 36.466248, 33.302345>,  <27.572906, 36.082352, 33.190273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580822, 36.466248, 33.302345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106205, 0.276634, -0.955089,
		-0.994147, 0.048659, -0.096455,
		0.019791, 0.959743, 0.280182,
		27.586760, 36.754169, 33.386398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116831, 36.517921, 32.748886>,  <27.572906, 36.082352, 33.190273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116831, 36.517921, 32.748886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401056, 36.746830, 32.912643>,  <27.571592, 36.884174, 33.010899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401056, 36.746830, 32.912643>,  <27.116831, 36.517921, 32.748886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401056, 36.746830, 32.912643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333185, 0.238805, -0.912118,
		-0.619745, 0.784522, -0.020987,
		0.710565, 0.572274, 0.409390,
		27.614225, 36.918510, 33.035461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186216, 37.119495, 32.291771>,  <27.116831, 36.517921, 32.748886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186216, 37.119495, 32.291771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530607, 37.084995, 32.492283>,  <27.737242, 37.064297, 32.612591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530607, 37.084995, 32.492283>,  <27.186216, 37.119495, 32.291771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530607, 37.084995, 32.492283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505778, 0.249693, -0.825737,
		-0.053949, 0.964476, 0.258602,
		0.860975, -0.086247, 0.501282,
		27.788900, 37.059120, 32.642666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566576, 37.577366, 31.968637>,  <27.186216, 37.119495, 32.291771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566576, 37.577366, 31.968637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833790, 37.381947, 32.193153>,  <27.994118, 37.264694, 32.327862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833790, 37.381947, 32.193153>,  <27.566576, 37.577366, 31.968637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833790, 37.381947, 32.193153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731265, 0.291369, -0.616729,
		0.137759, 0.822451, 0.551903,
		0.668037, -0.488548, 0.561291,
		28.034201, 37.235382, 32.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108007, 38.083401, 32.161007>,  <27.566576, 37.577366, 31.968637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108007, 38.083401, 32.161007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277988, 37.722000, 32.183285>,  <28.379976, 37.505161, 32.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277988, 37.722000, 32.183285>,  <28.108007, 38.083401, 32.161007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277988, 37.722000, 32.183285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738616, 0.310516, -0.598352,
		0.523318, 0.295407, 0.799295,
		0.424951, -0.903501, 0.055694,
		28.405474, 37.450951, 32.199993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775301, 38.234894, 32.119545>,  <28.108007, 38.083401, 32.161007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775301, 38.234894, 32.119545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754202, 37.850662, 32.010357>,  <28.741543, 37.620125, 31.944845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754202, 37.850662, 32.010357>,  <28.775301, 38.234894, 32.119545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754202, 37.850662, 32.010357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751453, 0.141841, -0.644359,
		0.657674, -0.239110, 0.714346,
		-0.052750, -0.960576, -0.272965,
		28.738377, 37.562489, 31.928467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511093, 37.976559, 32.049641>,  <28.775301, 38.234894, 32.119545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511093, 37.976559, 32.049641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309574, 37.690125, 31.856388>,  <29.188663, 37.518265, 31.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309574, 37.690125, 31.856388>,  <29.511093, 37.976559, 32.049641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309574, 37.690125, 31.856388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736338, -0.063566, -0.673621,
		0.451656, -0.695117, 0.559302,
		-0.503798, -0.716081, -0.483131,
		29.158434, 37.475300, 31.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895599, 37.292126, 31.987913>,  <29.511093, 37.976559, 32.049641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895599, 37.292126, 31.987913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640715, 37.300606, 31.679754>,  <29.487783, 37.305695, 31.494860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640715, 37.300606, 31.679754>,  <29.895599, 37.292126, 31.987913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640715, 37.300606, 31.679754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770685, 0.020417, -0.636889,
		0.002225, -0.999567, -0.029351,
		-0.637212, 0.021204, -0.770397,
		29.449551, 37.306965, 31.448635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261696, 36.929249, 31.491869>,  <29.895599, 37.292126, 31.987913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261696, 36.929249, 31.491869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966156, 37.103886, 31.286545>,  <29.788832, 37.208668, 31.163349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966156, 37.103886, 31.286545>,  <30.261696, 36.929249, 31.491869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966156, 37.103886, 31.286545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561620, -0.022007, -0.827103,
		-0.372400, -0.899392, -0.228937,
		-0.738851, 0.436588, -0.513312,
		29.744501, 37.234863, 31.132551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101585, 36.480732, 30.909210>,  <30.261696, 36.929249, 31.491869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101585, 36.480732, 30.909210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989647, 36.857048, 30.832685>,  <29.922483, 37.082836, 30.786770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989647, 36.857048, 30.832685>,  <30.101585, 36.480732, 30.909210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989647, 36.857048, 30.832685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505423, -0.025051, -0.862508,
		-0.816232, -0.338063, -0.468486,
		-0.279846, 0.940790, -0.191312,
		29.905693, 37.139286, 30.775291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022518, 36.502865, 30.193186>,  <30.101585, 36.480732, 30.909210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022518, 36.502865, 30.193186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074268, 36.886024, 30.295710>,  <30.105318, 37.115921, 30.357224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074268, 36.886024, 30.295710>,  <30.022518, 36.502865, 30.193186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074268, 36.886024, 30.295710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567323, 0.140494, -0.811422,
		-0.813269, 0.250388, -0.525261,
		0.129374, 0.957897, 0.256310,
		30.113081, 37.173393, 30.372602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089775, 36.660675, 29.572847>,  <30.022518, 36.502865, 30.193186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089775, 36.660675, 29.572847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204493, 36.974876, 29.792202>,  <30.273323, 37.163399, 29.923815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204493, 36.974876, 29.792202>,  <30.089775, 36.660675, 29.572847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204493, 36.974876, 29.792202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619466, 0.284597, -0.731619,
		-0.730761, 0.549532, -0.404974,
		0.286793, 0.785506, 0.548389,
		30.290531, 37.210529, 29.956718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028208, 37.249596, 29.158991>,  <30.089775, 36.660675, 29.572847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028208, 37.249596, 29.158991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286634, 37.332256, 29.452902>,  <30.441690, 37.381851, 29.629248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286634, 37.332256, 29.452902>,  <30.028208, 37.249596, 29.158991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286634, 37.332256, 29.452902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642213, 0.373085, -0.669604,
		-0.412507, 0.904491, 0.108324,
		0.646065, 0.206650, 0.734776,
		30.480453, 37.394253, 29.673334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227531, 37.945129, 29.028952>,  <30.028208, 37.249596, 29.158991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227531, 37.945129, 29.028952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517462, 37.795723, 29.260508>,  <30.691420, 37.706078, 29.399441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517462, 37.795723, 29.260508>,  <30.227531, 37.945129, 29.028952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517462, 37.795723, 29.260508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688838, 0.378998, -0.617951,
		0.011419, 0.846666, 0.532001,
		0.724826, -0.373519, 0.578888,
		30.734909, 37.683666, 29.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674538, 38.457451, 29.034649>,  <30.227531, 37.945129, 29.028952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674538, 38.457451, 29.034649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916540, 38.163975, 29.158369>,  <31.061743, 37.987888, 29.232601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916540, 38.163975, 29.158369>,  <30.674538, 38.457451, 29.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916540, 38.163975, 29.158369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770604, 0.441817, -0.459311,
		0.200335, 0.516236, 0.832686,
		0.605008, -0.733688, 0.309302,
		31.098043, 37.943867, 29.251160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245213, 38.737312, 29.433765>,  <30.674538, 38.457451, 29.034649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245213, 38.737312, 29.433765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352850, 38.373657, 29.306612>,  <31.417433, 38.155464, 29.230320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352850, 38.373657, 29.306612>,  <31.245213, 38.737312, 29.433765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352850, 38.373657, 29.306612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738495, 0.406640, -0.537837,
		0.618235, -0.090029, 0.780820,
		0.269092, -0.909142, -0.317886,
		31.433577, 38.100914, 29.211246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969547, 38.719334, 29.621880>,  <31.245213, 38.737312, 29.433765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969547, 38.719334, 29.621880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865091, 38.450771, 29.344456>,  <31.802418, 38.289635, 29.178001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865091, 38.450771, 29.344456>,  <31.969547, 38.719334, 29.621880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865091, 38.450771, 29.344456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705880, 0.357268, -0.611631,
		0.658438, -0.649290, 0.380634,
		-0.261138, -0.671403, -0.693560,
		31.786751, 38.249352, 29.136387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599995, 38.325352, 29.397232>,  <31.969547, 38.719334, 29.621880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599995, 38.325352, 29.397232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336861, 38.312027, 29.096264>,  <32.178978, 38.304031, 28.915682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336861, 38.312027, 29.096264>,  <32.599995, 38.325352, 29.397232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336861, 38.312027, 29.096264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668928, 0.433235, -0.604022,
		0.346096, -0.900665, -0.262717,
		-0.657840, -0.033311, -0.752421,
		32.139507, 38.302032, 28.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967773, 38.196377, 28.843861>,  <32.599995, 38.325352, 29.397232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967773, 38.196377, 28.843861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644772, 38.330925, 28.650042>,  <32.450970, 38.411655, 28.533751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644772, 38.330925, 28.650042>,  <32.967773, 38.196377, 28.843861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644772, 38.330925, 28.650042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583876, 0.572537, -0.575579,
		0.083812, -0.747699, -0.658728,
		-0.807505, 0.336375, -0.484548,
		32.402519, 38.431839, 28.504677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168491, 38.292320, 28.190111>,  <32.967773, 38.196377, 28.843861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168491, 38.292320, 28.190111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829346, 38.504196, 28.180696>,  <32.625858, 38.631321, 28.175049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829346, 38.504196, 28.180696>,  <33.168491, 38.292320, 28.190111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829346, 38.504196, 28.180696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444337, 0.685615, -0.576626,
		-0.289299, -0.499357, -0.816670,
		-0.847863, 0.529693, -0.023535,
		32.574986, 38.663105, 28.173635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035133, 38.313129, 27.526093>,  <33.168491, 38.292320, 28.190111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035133, 38.313129, 27.526093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844025, 38.616623, 27.703207>,  <32.729359, 38.798717, 27.809475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844025, 38.616623, 27.703207>,  <33.035133, 38.313129, 27.526093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844025, 38.616623, 27.703207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303849, 0.615648, -0.727086,
		-0.824264, -0.212841, -0.524679,
		-0.477771, 0.758734, 0.442785,
		32.700695, 38.844242, 27.836042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531994, 38.532078, 27.090542>,  <33.035133, 38.313129, 27.526093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531994, 38.532078, 27.090542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580978, 38.853931, 27.322947>,  <32.610371, 39.047043, 27.462389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580978, 38.853931, 27.322947>,  <32.531994, 38.532078, 27.090542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580978, 38.853931, 27.322947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329640, 0.519208, -0.788518,
		-0.936131, 0.288087, -0.201655,
		0.122461, 0.804630, 0.581011,
		32.617718, 39.095322, 27.497250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300198, 38.972137, 26.696953>,  <32.531994, 38.532078, 27.090542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300198, 38.972137, 26.696953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510677, 39.196018, 26.953033>,  <32.636963, 39.330345, 27.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510677, 39.196018, 26.953033>,  <32.300198, 38.972137, 26.696953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510677, 39.196018, 26.953033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423470, 0.480394, -0.768046,
		-0.737422, 0.675249, 0.015766,
		0.526196, 0.559697, 0.640201,
		32.668537, 39.363926, 27.145094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355053, 39.666050, 26.390409>,  <32.300198, 38.972137, 26.696953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355053, 39.666050, 26.390409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636868, 39.655212, 26.674070>,  <32.805954, 39.648712, 26.844267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636868, 39.655212, 26.674070>,  <32.355053, 39.666050, 26.390409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636868, 39.655212, 26.674070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579573, 0.598635, -0.552929,
		-0.409546, 0.800564, 0.437459,
		0.704533, -0.027089, 0.709154,
		32.848228, 39.647087, 26.886816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547783, 40.409332, 26.563528>,  <32.355053, 39.666050, 26.390409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547783, 40.409332, 26.563528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864128, 40.178722, 26.645653>,  <33.053936, 40.040356, 26.694927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864128, 40.178722, 26.645653>,  <32.547783, 40.409332, 26.563528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864128, 40.178722, 26.645653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601191, 0.669146, -0.436822,
		0.114455, 0.468898, 0.875805,
		0.790866, -0.576523, 0.205310,
		33.101387, 40.005764, 26.707245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133461, 40.888424, 26.527662>,  <32.547783, 40.409332, 26.563528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133461, 40.888424, 26.527662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331696, 40.541271, 26.541368>,  <33.450638, 40.332981, 26.549591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331696, 40.541271, 26.541368>,  <33.133461, 40.888424, 26.527662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331696, 40.541271, 26.541368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783973, 0.429998, -0.447758,
		0.373867, 0.248766, 0.893498,
		0.495590, -0.867881, 0.034264,
		33.480373, 40.280907, 26.551647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748245, 41.057331, 26.697533>,  <33.133461, 40.888424, 26.527662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748245, 41.057331, 26.697533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816002, 40.697216, 26.537140>,  <33.856655, 40.481148, 26.440905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816002, 40.697216, 26.537140>,  <33.748245, 41.057331, 26.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816002, 40.697216, 26.537140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775506, 0.372841, -0.509490,
		0.608191, -0.224660, 0.761336,
		0.169395, -0.900287, -0.400984,
		33.866821, 40.427132, 26.416845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463043, 40.951126, 26.782234>,  <33.748245, 41.057331, 26.697533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463043, 40.951126, 26.782234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369205, 40.706421, 26.480053>,  <34.312901, 40.559597, 26.298744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369205, 40.706421, 26.480053>,  <34.463043, 40.951126, 26.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369205, 40.706421, 26.480053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782942, 0.341707, -0.519845,
		0.576165, -0.713432, 0.398810,
		-0.234598, -0.611761, -0.755455,
		34.298824, 40.522892, 26.253416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035255, 40.543186, 26.726992>,  <34.463043, 40.951126, 26.782234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035255, 40.543186, 26.726992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859478, 40.494480, 26.371000>,  <34.754013, 40.465256, 26.157406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859478, 40.494480, 26.371000>,  <35.035255, 40.543186, 26.726992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859478, 40.494480, 26.371000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784551, 0.430474, -0.446286,
		0.437458, -0.894351, -0.093632,
		-0.439443, -0.121773, -0.889979,
		34.727646, 40.457951, 26.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424095, 40.047142, 26.275557>,  <35.035255, 40.543186, 26.726992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424095, 40.047142, 26.275557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213326, 40.284134, 26.031816>,  <35.086864, 40.426331, 25.885572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213326, 40.284134, 26.031816>,  <35.424095, 40.047142, 26.275557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213326, 40.284134, 26.031816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827954, 0.195930, -0.525455,
		-0.191933, -0.781392, -0.593791,
		-0.526928, 0.592484, -0.609351,
		35.055248, 40.461880, 25.849010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451218, 39.742622, 25.624239>,  <35.424095, 40.047142, 26.275557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451218, 39.742622, 25.624239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376869, 40.121422, 25.519438>,  <35.332260, 40.348701, 25.456556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376869, 40.121422, 25.519438>,  <35.451218, 39.742622, 25.624239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376869, 40.121422, 25.519438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791729, -0.013572, -0.610722,
		-0.581909, -0.320950, -0.747244,
		-0.185870, 0.946999, -0.262003,
		35.321110, 40.405521, 25.440836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562134, 39.776390, 24.970114>,  <35.451218, 39.742622, 25.624239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562134, 39.776390, 24.970114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555748, 40.172016, 25.028769>,  <35.551918, 40.409389, 25.063961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555748, 40.172016, 25.028769>,  <35.562134, 39.776390, 24.970114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555748, 40.172016, 25.028769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836359, 0.093580, -0.540136,
		-0.547950, 0.114020, -0.828704,
		-0.015964, 0.989061, 0.146639,
		35.550961, 40.468735, 25.072760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860619, 39.999687, 24.329216>,  <35.562134, 39.776390, 24.970114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860619, 39.999687, 24.329216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906223, 40.279789, 24.611109>,  <35.933586, 40.447849, 24.780245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906223, 40.279789, 24.611109>,  <35.860619, 39.999687, 24.329216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906223, 40.279789, 24.611109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929230, 0.175792, -0.325005,
		-0.351472, 0.691913, -0.630653,
		0.114011, 0.700252, 0.704733,
		35.940426, 40.489864, 24.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092461, 40.675575, 24.001972>,  <35.860619, 39.999687, 24.329216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092461, 40.675575, 24.001972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185184, 40.692707, 24.390699>,  <36.240818, 40.702984, 24.623936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185184, 40.692707, 24.390699>,  <36.092461, 40.675575, 24.001972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185184, 40.692707, 24.390699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885784, 0.403625, -0.229071,
		-0.402061, 0.913922, 0.055629,
		0.231806, 0.042826, 0.971819,
		36.254726, 40.705555, 24.682245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416672, 41.309219, 24.084852>,  <36.092461, 40.675575, 24.001972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416672, 41.309219, 24.084852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550259, 41.129856, 24.416491>,  <36.630409, 41.022236, 24.615473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550259, 41.129856, 24.416491>,  <36.416672, 41.309219, 24.084852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550259, 41.129856, 24.416491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911069, 0.379114, -0.161943,
		-0.241705, 0.809445, 0.535143,
		0.333964, -0.448410, 0.829094,
		36.650448, 40.995335, 24.665218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692276, 41.772110, 24.495506>,  <36.416672, 41.309219, 24.084852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692276, 41.772110, 24.495506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867416, 41.434349, 24.618971>,  <36.972500, 41.231693, 24.693050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867416, 41.434349, 24.618971>,  <36.692276, 41.772110, 24.495506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867416, 41.434349, 24.618971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856507, 0.496139, 0.142273,
		-0.273275, 0.202078, 0.940471,
		0.437854, -0.844400, 0.308664,
		36.998772, 41.181030, 24.711571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269562, 42.108624, 24.804802>,  <36.692276, 41.772110, 24.495506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269562, 42.108624, 24.804802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325798, 41.713440, 24.778948>,  <37.359539, 41.476330, 24.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325798, 41.713440, 24.778948>,  <37.269562, 42.108624, 24.804802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325798, 41.713440, 24.778948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976137, 0.149226, -0.157763,
		0.165508, -0.040912, 0.985360,
		0.140587, -0.987956, -0.064633,
		37.367973, 41.417053, 24.759558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796223, 41.967415, 25.266912>,  <37.269562, 42.108624, 24.804802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796223, 41.967415, 25.266912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791962, 41.684402, 24.984272>,  <37.789406, 41.514595, 24.814688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791962, 41.684402, 24.984272>,  <37.796223, 41.967415, 25.266912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791962, 41.684402, 24.984272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959203, 0.192418, -0.207135,
		0.282518, -0.679981, 0.676616,
		-0.010655, -0.707532, -0.706601,
		37.788765, 41.472141, 24.772291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453846, 41.728771, 25.323622>,  <37.796223, 41.967415, 25.266912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453846, 41.728771, 25.323622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333057, 41.607021, 24.962254>,  <38.260582, 41.533970, 24.745432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333057, 41.607021, 24.962254>,  <38.453846, 41.728771, 25.323622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333057, 41.607021, 24.962254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903237, 0.211760, -0.373257,
		0.304919, -0.928716, 0.210976,
		-0.301974, -0.304375, -0.903420,
		38.242466, 41.515709, 24.691227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925484, 41.299236, 25.194214>,  <38.453846, 41.728771, 25.323622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925484, 41.299236, 25.194214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743752, 41.427170, 24.861639>,  <38.634712, 41.503929, 24.662094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743752, 41.427170, 24.861639>,  <38.925484, 41.299236, 25.194214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743752, 41.427170, 24.861639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885249, 0.266429, -0.381248,
		0.099584, -0.909243, -0.404178,
		-0.454332, 0.319832, -0.831439,
		38.607452, 41.523121, 24.612207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223995, 40.864269, 24.584549>,  <38.925484, 41.299236, 25.194214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223995, 40.864269, 24.584549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062538, 41.206017, 24.453627>,  <38.965664, 41.411064, 24.375072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062538, 41.206017, 24.453627>,  <39.223995, 40.864269, 24.584549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062538, 41.206017, 24.453627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812655, 0.170446, -0.557262,
		-0.420318, -0.490922, -0.763105,
		-0.403640, 0.854368, -0.327308,
		38.941444, 41.462326, 24.355434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417591, 40.899704, 23.864376>,  <39.223995, 40.864269, 24.584549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417591, 40.899704, 23.864376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339260, 41.277561, 23.969679>,  <39.292263, 41.504276, 24.032860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339260, 41.277561, 23.969679>,  <39.417591, 40.899704, 23.864376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339260, 41.277561, 23.969679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730378, 0.319632, -0.603642,
		-0.654371, 0.074067, -0.752538,
		-0.195825, 0.944642, 0.263255,
		39.280514, 41.560955, 24.048655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249363, 41.242836, 23.252907>,  <39.417591, 40.899704, 23.864376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249363, 41.242836, 23.252907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358570, 41.513138, 23.526787>,  <39.424095, 41.675320, 23.691114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358570, 41.513138, 23.526787>,  <39.249363, 41.242836, 23.252907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358570, 41.513138, 23.526787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677067, 0.370638, -0.635773,
		-0.683403, 0.637169, -0.356338,
		0.273022, 0.675754, 0.684701,
		39.440475, 41.715862, 23.732197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212414, 41.846714, 22.924986>,  <39.249363, 41.242836, 23.252907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212414, 41.846714, 22.924986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465847, 41.896145, 23.230484>,  <39.617905, 41.925804, 23.413782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465847, 41.896145, 23.230484>,  <39.212414, 41.846714, 22.924986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465847, 41.896145, 23.230484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609385, 0.528506, -0.591043,
		-0.476681, 0.839887, 0.259546,
		0.633581, 0.123576, 0.763743,
		39.655922, 41.933216, 23.459606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552364, 42.633766, 23.107168>,  <39.212414, 41.846714, 22.924986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552364, 42.633766, 23.107168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795456, 42.330368, 23.201279>,  <39.941311, 42.148331, 23.257746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795456, 42.330368, 23.201279>,  <39.552364, 42.633766, 23.107168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795456, 42.330368, 23.201279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769218, 0.488578, -0.411819,
		0.197411, 0.431253, 0.880369,
		0.607727, -0.758494, 0.235277,
		39.977776, 42.102821, 23.271862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963676, 42.703175, 23.771629>,  <39.552364, 42.633766, 23.107168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963676, 42.703175, 23.771629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142521, 43.028076, 23.621780>,  <40.249828, 43.223015, 23.531870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142521, 43.028076, 23.621780>,  <39.963676, 42.703175, 23.771629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142521, 43.028076, 23.621780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894328, -0.413623, 0.170567,
		-0.016410, -0.411299, -0.911353,
		0.447111, 0.812249, -0.374624,
		40.276653, 43.271751, 23.509394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504986, 42.612148, 23.180738>,  <39.963676, 42.703175, 23.771629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504986, 42.612148, 23.180738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602005, 42.958725, 23.355301>,  <40.660217, 43.166672, 23.460037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602005, 42.958725, 23.355301>,  <40.504986, 42.612148, 23.180738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602005, 42.958725, 23.355301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941524, -0.318684, 0.109421,
		0.233882, 0.384346, -0.893072,
		0.242552, 0.866440, 0.436405,
		40.674770, 43.218658, 23.486223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201523, 42.981102, 22.894754>,  <40.504986, 42.612148, 23.180738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201523, 42.981102, 22.894754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109138, 42.969524, 23.283768>,  <41.053707, 42.962578, 23.517176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109138, 42.969524, 23.283768>,  <41.201523, 42.981102, 22.894754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109138, 42.969524, 23.283768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872923, -0.447636, 0.193980,
		0.429726, 0.893748, 0.128650,
		-0.230957, -0.028943, 0.972533,
		41.039852, 42.960842, 23.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685715, 43.180138, 23.315348>,  <41.201523, 42.981102, 22.894754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685715, 43.180138, 23.315348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532249, 42.903370, 23.559986>,  <41.440170, 42.737309, 23.706770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532249, 42.903370, 23.559986>,  <41.685715, 43.180138, 23.315348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532249, 42.903370, 23.559986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866410, -0.498895, -0.020900,
		0.319583, 0.521875, 0.790894,
		-0.383666, -0.691918, 0.611596,
		41.417149, 42.695793, 23.743465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126823, 43.238907, 23.963959>,  <41.685715, 43.180138, 23.315348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126823, 43.238907, 23.963959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957081, 42.896690, 23.845325>,  <41.855236, 42.691360, 23.774145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957081, 42.896690, 23.845325>,  <42.126823, 43.238907, 23.963959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957081, 42.896690, 23.845325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898154, -0.356083, -0.257922,
		0.115056, -0.375827, 0.919519,
		-0.424359, -0.855546, -0.296582,
		41.829773, 42.640026, 23.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542641, 43.069275, 24.659321>,  <42.126823, 43.238907, 23.963959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542641, 43.069275, 24.659321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764801, 42.820690, 24.880339>,  <42.898098, 42.671539, 25.012949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764801, 42.820690, 24.880339>,  <42.542641, 43.069275, 24.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764801, 42.820690, 24.880339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221067, -0.530201, -0.818546,
		0.801657, 0.576774, -0.157091,
		0.555405, -0.621465, 0.552545,
		42.931423, 42.634251, 25.046103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884308, 43.340946, 24.624411>,  <42.542641, 43.069275, 24.659321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884308, 43.340946, 24.624411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599606, 43.531662, 24.830742>,  <41.428783, 43.646091, 24.954540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599606, 43.531662, 24.830742>,  <41.884308, 43.340946, 24.624411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599606, 43.531662, 24.830742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185251, -0.835766, 0.516892,
		0.677559, 0.272343, 0.683186,
		-0.711756, 0.476785, 0.515829,
		41.386078, 43.674698, 24.985491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988689, 43.113441, 25.291504>,  <41.884308, 43.340946, 24.624411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988689, 43.113441, 25.291504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609467, 43.226681, 25.233473>,  <41.381931, 43.294624, 25.198654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609467, 43.226681, 25.233473>,  <41.988689, 43.113441, 25.291504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609467, 43.226681, 25.233473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302501, -0.661262, 0.686459,
		0.098400, 0.694687, 0.712550,
		-0.948056, 0.283095, -0.145076,
		41.325050, 43.311607, 25.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617287, 43.374981, 25.930937>,  <41.988689, 43.113441, 25.291504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617287, 43.374981, 25.930937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307667, 43.283756, 25.694689>,  <41.121895, 43.229023, 25.552940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307667, 43.283756, 25.694689>,  <41.617287, 43.374981, 25.930937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307667, 43.283756, 25.694689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422552, -0.508610, 0.750177,
		-0.471481, 0.830243, 0.297324,
		-0.774051, -0.228060, -0.590621,
		41.075451, 43.215340, 25.517502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997890, 43.616112, 26.233728>,  <41.617287, 43.374981, 25.930937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997890, 43.616112, 26.233728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883640, 43.313271, 25.998711>,  <40.815090, 43.131565, 25.857700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883640, 43.313271, 25.998711>,  <40.997890, 43.616112, 26.233728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883640, 43.313271, 25.998711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461707, -0.428532, 0.776651,
		-0.839790, 0.493104, -0.227162,
		-0.285623, -0.757106, -0.587546,
		40.797955, 43.086140, 25.822447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326817, 43.520313, 26.398773>,  <40.997890, 43.616112, 26.233728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326817, 43.520313, 26.398773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358376, 43.181610, 26.188335>,  <40.377312, 42.978390, 26.062073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358376, 43.181610, 26.188335>,  <40.326817, 43.520313, 26.398773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358376, 43.181610, 26.188335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680705, -0.431315, 0.592122,
		-0.728296, 0.311395, -0.610424,
		0.078901, -0.846759, -0.526093,
		40.382046, 42.927582, 26.030508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606541, 43.318417, 26.020008>,  <40.326817, 43.520313, 26.398773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606541, 43.318417, 26.020008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856525, 43.016960, 26.101444>,  <40.006516, 42.836086, 26.150307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856525, 43.016960, 26.101444>,  <39.606541, 43.318417, 26.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856525, 43.016960, 26.101444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716081, -0.449565, 0.533966,
		-0.310890, -0.479497, -0.820628,
		0.624960, -0.753641, 0.203593,
		40.044014, 42.790867, 26.162521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298969, 42.732052, 25.833689>,  <39.606541, 43.318417, 26.020008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298969, 42.732052, 25.833689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572693, 42.562355, 26.070919>,  <39.736927, 42.460537, 26.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572693, 42.562355, 26.070919>,  <39.298969, 42.732052, 25.833689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572693, 42.562355, 26.070919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728210, -0.439770, 0.525654,
		0.037815, -0.791595, -0.609874,
		0.684310, -0.424239, 0.593078,
		39.777985, 42.435081, 26.248842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038246, 42.038765, 25.939892>,  <39.298969, 42.732052, 25.833689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038246, 42.038765, 25.939892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297768, 42.138973, 26.227304>,  <39.453480, 42.199097, 26.399752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297768, 42.138973, 26.227304>,  <39.038246, 42.038765, 25.939892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297768, 42.138973, 26.227304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546562, -0.503568, 0.669096,
		0.529452, -0.826836, -0.189794,
		0.648807, 0.250520, 0.718533,
		39.492409, 42.214130, 26.442863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250408, 41.399689, 26.217293>,  <39.038246, 42.038765, 25.939892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250408, 41.399689, 26.217293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310871, 41.680534, 26.495628>,  <39.347149, 41.849041, 26.662630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310871, 41.680534, 26.495628>,  <39.250408, 41.399689, 26.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310871, 41.680534, 26.495628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443539, -0.580914, 0.682504,
		0.883416, -0.411797, 0.223604,
		0.151158, 0.702112, 0.695837,
		39.356220, 41.891167, 26.704380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502636, 40.996223, 26.907045>,  <39.250408, 41.399689, 26.217293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502636, 40.996223, 26.907045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367043, 41.360355, 27.002035>,  <39.285686, 41.578835, 27.059029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367043, 41.360355, 27.002035>,  <39.502636, 40.996223, 26.907045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367043, 41.360355, 27.002035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433833, -0.375237, 0.819137,
		0.834791, 0.174653, 0.522130,
		-0.338987, 0.910326, 0.237475,
		39.265347, 41.633453, 27.073278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631126, 41.021152, 27.625408>,  <39.502636, 40.996223, 26.907045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631126, 41.021152, 27.625408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387108, 41.330002, 27.554222>,  <39.240696, 41.515312, 27.511511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387108, 41.330002, 27.554222>,  <39.631126, 41.021152, 27.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387108, 41.330002, 27.554222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512329, -0.213029, 0.831948,
		0.604454, 0.598703, 0.525538,
		-0.610045, 0.772123, -0.177966,
		39.204094, 41.561638, 27.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512287, 41.386780, 28.259836>,  <39.631126, 41.021152, 27.625408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512287, 41.386780, 28.259836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204544, 41.492714, 28.027304>,  <39.019897, 41.556274, 27.887783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204544, 41.492714, 28.027304>,  <39.512287, 41.386780, 28.259836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204544, 41.492714, 28.027304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617958, -0.077892, 0.782343,
		0.161913, 0.961141, 0.223586,
		-0.769358, 0.264839, -0.581333,
		38.973736, 41.572166, 27.852903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099293, 41.817097, 28.620380>,  <39.512287, 41.386780, 28.259836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099293, 41.817097, 28.620380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858120, 41.681404, 28.331551>,  <38.713417, 41.599987, 28.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858120, 41.681404, 28.331551>,  <39.099293, 41.817097, 28.620380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858120, 41.681404, 28.331551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619313, -0.371537, 0.691673,
		-0.502916, 0.864223, 0.013921,
		-0.602932, -0.339232, -0.722076,
		38.677238, 41.579636, 28.114927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374077, 41.975193, 28.829737>,  <39.099293, 41.817097, 28.620380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374077, 41.975193, 28.829737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310791, 41.689590, 28.556927>,  <38.272820, 41.518227, 28.393240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310791, 41.689590, 28.556927>,  <38.374077, 41.975193, 28.829737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310791, 41.689590, 28.556927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705676, -0.401363, 0.583891,
		-0.690643, 0.573671, -0.440356,
		-0.158219, -0.714009, -0.682024,
		38.263325, 41.475388, 28.352320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665874, 41.964317, 28.793146>,  <38.374077, 41.975193, 28.829737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665874, 41.964317, 28.793146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785805, 41.618504, 28.631807>,  <37.857761, 41.411015, 28.535004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785805, 41.618504, 28.631807>,  <37.665874, 41.964317, 28.793146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785805, 41.618504, 28.631807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800521, -0.457974, 0.386557,
		-0.518913, 0.206986, -0.829389,
		0.299827, -0.864533, -0.403346,
		37.875751, 41.359142, 28.510803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093784, 41.744396, 28.460697>,  <37.665874, 41.964317, 28.793146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093784, 41.744396, 28.460697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323994, 41.420086, 28.503429>,  <37.462120, 41.225498, 28.529068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323994, 41.420086, 28.503429>,  <37.093784, 41.744396, 28.460697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323994, 41.420086, 28.503429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781076, -0.506280, 0.365514,
		-0.242264, -0.293804, -0.924655,
		0.575524, -0.810777, 0.106830,
		37.496651, 41.176853, 28.535479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757942, 41.291512, 28.108746>,  <37.093784, 41.744396, 28.460697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757942, 41.291512, 28.108746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981739, 41.107922, 28.384808>,  <37.116016, 40.997768, 28.550446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981739, 41.107922, 28.384808>,  <36.757942, 41.291512, 28.108746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981739, 41.107922, 28.384808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826361, -0.373222, 0.421701,
		0.064033, -0.806256, -0.588091,
		0.559488, -0.458973, 0.690157,
		37.149586, 40.970230, 28.591854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380749, 40.682831, 28.157883>,  <36.757942, 41.291512, 28.108746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380749, 40.682831, 28.157883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582890, 40.660583, 28.502331>,  <36.704174, 40.647236, 28.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582890, 40.660583, 28.502331>,  <36.380749, 40.682831, 28.157883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582890, 40.660583, 28.502331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820077, -0.341470, 0.459208,
		0.268506, -0.938246, -0.218174,
		0.505350, -0.055619, 0.861120,
		36.734493, 40.643898, 28.760668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105614, 40.109001, 28.430489>,  <36.380749, 40.682831, 28.157883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105614, 40.109001, 28.430489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313015, 40.293728, 28.718344>,  <36.437454, 40.404564, 28.891058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313015, 40.293728, 28.718344>,  <36.105614, 40.109001, 28.430489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313015, 40.293728, 28.718344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770012, -0.113773, 0.627804,
		0.371807, -0.879647, 0.296615,
		0.518499, 0.461819, 0.719640,
		36.468563, 40.432274, 28.934237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116459, 39.643257, 29.088034>,  <36.105614, 40.109001, 28.430489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116459, 39.643257, 29.088034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167862, 40.027325, 29.187277>,  <36.198704, 40.257767, 29.246822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167862, 40.027325, 29.187277>,  <36.116459, 39.643257, 29.088034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167862, 40.027325, 29.187277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693355, -0.091883, 0.714714,
		0.709044, -0.263875, 0.653931,
		0.128510, 0.960170, 0.248109,
		36.206413, 40.315376, 29.261709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366238, 39.688961, 29.834827>,  <36.116459, 39.643257, 29.088034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366238, 39.688961, 29.834827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164776, 40.013435, 29.715960>,  <36.043900, 40.208122, 29.644638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164776, 40.013435, 29.715960>,  <36.366238, 39.688961, 29.834827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164776, 40.013435, 29.715960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699143, -0.180658, 0.691782,
		0.507478, 0.556181, 0.658125,
		-0.503651, 0.811188, -0.297170,
		36.013680, 40.256790, 29.626808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034424, 39.838894, 30.459473>,  <36.366238, 39.688961, 29.834827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034424, 39.838894, 30.459473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835434, 40.083241, 30.213104>,  <35.716042, 40.229851, 30.065283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835434, 40.083241, 30.213104>,  <36.034424, 39.838894, 30.459473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835434, 40.083241, 30.213104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753244, 0.047990, 0.655988,
		0.430281, 0.790275, 0.436260,
		-0.497475, 0.610870, -0.615919,
		35.686192, 40.266502, 30.028328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848068, 40.507259, 30.766199>,  <36.034424, 39.838894, 30.459473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848068, 40.507259, 30.766199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590977, 40.434498, 30.468523>,  <35.436722, 40.390842, 30.289917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590977, 40.434498, 30.468523>,  <35.848068, 40.507259, 30.766199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590977, 40.434498, 30.468523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758085, 0.010890, 0.652065,
		-0.110508, 0.983256, -0.144896,
		-0.642725, -0.181902, -0.744188,
		35.398159, 40.379929, 30.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197102, 40.999798, 30.832754>,  <35.848068, 40.507259, 30.766199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197102, 40.999798, 30.832754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099407, 40.681324, 30.611326>,  <35.040791, 40.490238, 30.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099407, 40.681324, 30.611326>,  <35.197102, 40.999798, 30.832754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099407, 40.681324, 30.611326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772309, -0.185511, 0.607556,
		-0.586420, 0.575914, -0.569592,
		-0.244234, -0.796184, -0.553571,
		35.026138, 40.442471, 30.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409565, 40.928814, 30.824965>,  <35.197102, 40.999798, 30.832754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409565, 40.928814, 30.824965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514549, 40.577480, 30.665142>,  <34.577541, 40.366680, 30.569248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514549, 40.577480, 30.665142>,  <34.409565, 40.928814, 30.824965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514549, 40.577480, 30.665142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721899, -0.453490, 0.522694,
		-0.640294, 0.151253, -0.753091,
		0.262460, -0.878333, -0.399556,
		34.593288, 40.313980, 30.545275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764351, 40.671009, 30.624174>,  <34.409565, 40.928814, 30.824965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764351, 40.671009, 30.624174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035980, 40.379307, 30.657753>,  <34.198956, 40.204285, 30.677900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035980, 40.379307, 30.657753>,  <33.764351, 40.671009, 30.624174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035980, 40.379307, 30.657753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681715, -0.584086, 0.440577,
		-0.272262, -0.356410, -0.893781,
		0.679071, -0.729257, 0.083945,
		34.239700, 40.160530, 30.682936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431957, 40.071213, 30.271458>,  <33.764351, 40.671009, 30.624174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431957, 40.071213, 30.271458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712135, 39.910252, 30.507238>,  <33.880241, 39.813675, 30.648706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712135, 39.910252, 30.507238>,  <33.431957, 40.071213, 30.271458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712135, 39.910252, 30.507238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712738, -0.437399, 0.548349,
		0.037170, -0.804212, -0.593179,
		0.700444, -0.402399, 0.589451,
		33.922268, 39.789532, 30.684074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237103, 39.296726, 30.328009>,  <33.431957, 40.071213, 30.271458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237103, 39.296726, 30.328009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439869, 39.409443, 30.653862>,  <33.561531, 39.477074, 30.849375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439869, 39.409443, 30.653862>,  <33.237103, 39.296726, 30.328009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439869, 39.409443, 30.653862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728354, -0.365414, 0.579632,
		0.461014, -0.887167, 0.020010,
		0.506919, 0.281792, 0.814633,
		33.591946, 39.493980, 30.898252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048042, 38.800144, 30.799791>,  <33.237103, 39.296726, 30.328009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048042, 38.800144, 30.799791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229851, 39.054909, 31.048868>,  <33.338936, 39.207767, 31.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229851, 39.054909, 31.048868>,  <33.048042, 38.800144, 30.799791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229851, 39.054909, 31.048868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655582, -0.234059, 0.717933,
		0.603010, -0.734544, 0.311166,
		0.454522, 0.636916, 0.622694,
		33.366207, 39.245983, 31.235676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398010, 38.426300, 31.403860>,  <33.048042, 38.800144, 30.799791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398010, 38.426300, 31.403860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320011, 38.804985, 31.506392>,  <33.273212, 39.032196, 31.567911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320011, 38.804985, 31.506392>,  <33.398010, 38.426300, 31.403860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320011, 38.804985, 31.506392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697590, -0.317583, 0.642269,
		0.689453, -0.053574, 0.722347,
		-0.194996, 0.946716, 0.256331,
		33.261513, 39.089001, 31.583290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561207, 38.577126, 32.125515>,  <33.398010, 38.426300, 31.403860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561207, 38.577126, 32.125515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282951, 38.842815, 32.016048>,  <33.115997, 39.002228, 31.950367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282951, 38.842815, 32.016048>,  <33.561207, 38.577126, 32.125515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282951, 38.842815, 32.016048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586804, -0.305613, 0.749841,
		0.414425, 0.682209, 0.602365,
		-0.695639, 0.664223, -0.273669,
		33.074261, 39.042084, 31.933949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216236, 38.846367, 32.770504>,  <33.561207, 38.577126, 32.125515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216236, 38.846367, 32.770504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975250, 39.001038, 32.491215>,  <32.830658, 39.093842, 32.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975250, 39.001038, 32.491215>,  <33.216236, 38.846367, 32.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975250, 39.001038, 32.491215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797139, -0.335490, 0.502013,
		-0.040131, 0.859027, 0.510355,
		-0.602461, 0.386678, -0.698227,
		32.794514, 39.117043, 32.281746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836559, 39.374687, 33.091152>,  <33.216236, 38.846367, 32.770504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836559, 39.374687, 33.091152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648731, 39.225533, 32.771038>,  <32.536034, 39.136040, 32.578968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648731, 39.225533, 32.771038>,  <32.836559, 39.374687, 33.091152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648731, 39.225533, 32.771038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794708, -0.216375, 0.567117,
		-0.384633, 0.902295, -0.194733,
		-0.469572, -0.372888, -0.800286,
		32.507858, 39.113667, 32.530952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202797, 39.619099, 33.179974>,  <32.836559, 39.374687, 33.091152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202797, 39.619099, 33.179974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137131, 39.341496, 32.899574>,  <32.097729, 39.174934, 32.731335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137131, 39.341496, 32.899574>,  <32.202797, 39.619099, 33.179974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137131, 39.341496, 32.899574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900295, -0.185008, 0.394005,
		-0.403134, 0.695789, -0.594441,
		-0.164168, -0.694010, -0.700999,
		32.087879, 39.133293, 32.689274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529087, 39.722054, 32.993122>,  <32.202797, 39.619099, 33.179974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529087, 39.722054, 32.993122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620140, 39.358120, 32.854336>,  <31.674772, 39.139759, 32.771065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620140, 39.358120, 32.854336>,  <31.529087, 39.722054, 32.993122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620140, 39.358120, 32.854336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930519, -0.308238, 0.197797,
		-0.286909, 0.277827, -0.916785,
		0.227635, -0.909836, -0.346960,
		31.688431, 39.085171, 32.750248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981581, 39.440739, 32.513145>,  <31.529087, 39.722054, 32.993122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981581, 39.440739, 32.513145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165482, 39.105888, 32.631699>,  <31.275822, 38.904976, 32.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165482, 39.105888, 32.631699>,  <30.981581, 39.440739, 32.513145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165482, 39.105888, 32.631699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872131, -0.362717, 0.328365,
		-0.167379, -0.409455, -0.896845,
		0.459752, -0.837127, 0.296387,
		31.303408, 38.854752, 32.720615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700619, 38.812256, 32.090050>,  <30.981581, 39.440739, 32.513145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700619, 38.812256, 32.090050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830530, 38.696774, 32.450310>,  <30.908476, 38.627483, 32.666466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830530, 38.696774, 32.450310>,  <30.700619, 38.812256, 32.090050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830530, 38.696774, 32.450310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940149, -0.202409, 0.274137,
		0.103154, -0.935778, -0.337164,
		0.324776, -0.288706, 0.900649,
		30.927963, 38.610161, 32.720505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254889, 38.334595, 32.341431>,  <30.700619, 38.812256, 32.090050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254889, 38.334595, 32.341431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443899, 38.361008, 32.692966>,  <30.557304, 38.376854, 32.903889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443899, 38.361008, 32.692966>,  <30.254889, 38.334595, 32.341431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443899, 38.361008, 32.692966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815990, -0.343990, 0.464577,
		0.332988, -0.936649, -0.108665,
		0.472525, 0.066029, 0.878840,
		30.585657, 38.380817, 32.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160055, 37.671719, 32.795792>,  <30.254889, 38.334595, 32.341431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160055, 37.671719, 32.795792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237635, 38.000561, 33.009903>,  <30.284182, 38.197865, 33.138371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237635, 38.000561, 33.009903>,  <30.160055, 37.671719, 32.795792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237635, 38.000561, 33.009903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883563, -0.090703, 0.459444,
		0.426264, -0.562063, 0.708791,
		0.193947, 0.822106, 0.535281,
		30.295818, 38.247192, 33.170486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825352, 37.465229, 33.351910>,  <30.160055, 37.671719, 32.795792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825352, 37.465229, 33.351910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908482, 37.849751, 33.424248>,  <29.958359, 38.080463, 33.467651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908482, 37.849751, 33.424248>,  <29.825352, 37.465229, 33.351910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908482, 37.849751, 33.424248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836121, 0.078632, 0.542880,
		0.507653, -0.264029, 0.820108,
		0.207823, 0.961304, 0.180842,
		29.970829, 38.138142, 33.478500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887123, 37.420052, 34.038635>,  <29.825352, 37.465229, 33.351910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887123, 37.420052, 34.038635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815968, 37.798645, 33.930908>,  <29.773273, 38.025799, 33.866272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815968, 37.798645, 33.930908>,  <29.887123, 37.420052, 34.038635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815968, 37.798645, 33.930908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801925, 0.019186, 0.597116,
		0.570326, 0.322190, 0.755594,
		-0.177888, 0.946481, -0.269315,
		29.762602, 38.082588, 33.850113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870598, 37.828880, 34.622429>,  <29.887123, 37.420052, 34.038635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870598, 37.828880, 34.622429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653011, 38.016605, 34.344193>,  <29.522459, 38.129242, 34.177250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653011, 38.016605, 34.344193>,  <29.870598, 37.828880, 34.622429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653011, 38.016605, 34.344193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748817, 0.102567, 0.654792,
		0.378649, 0.877053, 0.295638,
		-0.543965, 0.469315, -0.695590,
		29.489822, 38.157398, 34.135517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560452, 37.569363, 34.581001>,  <29.870598, 37.828880, 34.622429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560452, 37.569363, 34.581001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615499, 37.282009, 34.853760>,  <30.648529, 37.109596, 35.017414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615499, 37.282009, 34.853760>,  <30.560452, 37.569363, 34.581001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615499, 37.282009, 34.853760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975291, -0.021836, -0.219840,
		0.172820, 0.695301, 0.697631,
		0.137622, -0.718387, 0.681895,
		30.656786, 37.066494, 35.058327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101492, 37.843475, 35.081970>,  <30.560452, 37.569363, 34.581001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101492, 37.843475, 35.081970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124306, 37.444126, 35.081894>,  <31.137993, 37.204517, 35.081848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124306, 37.444126, 35.081894>,  <31.101492, 37.843475, 35.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124306, 37.444126, 35.081894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994531, 0.056831, -0.087623,
		0.087492, 0.004805, 0.996154,
		0.057033, -0.998372, -0.000194,
		31.141417, 37.144615, 35.081837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761358, 37.662094, 35.392139>,  <31.101492, 37.843475, 35.081970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761358, 37.662094, 35.392139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667042, 37.304367, 35.240040>,  <31.610453, 37.089729, 35.148781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667042, 37.304367, 35.240040>,  <31.761358, 37.662094, 35.392139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667042, 37.304367, 35.240040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970972, -0.200614, -0.130261,
		0.040211, -0.399928, 0.915664,
		-0.235790, -0.894322, -0.380252,
		31.596304, 37.036072, 35.125965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268108, 37.166035, 35.604649>,  <31.761358, 37.662094, 35.392139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268108, 37.166035, 35.604649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111301, 37.000507, 35.275997>,  <32.017216, 36.901192, 35.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111301, 37.000507, 35.275997>,  <32.268108, 37.166035, 35.604649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111301, 37.000507, 35.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917034, -0.104617, -0.384844,
		0.073298, -0.904329, 0.420495,
		-0.392016, -0.413816, -0.821632,
		31.993696, 36.876362, 35.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755714, 36.693718, 35.402061>,  <32.268108, 37.166035, 35.604649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755714, 36.693718, 35.402061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546108, 36.748749, 35.065853>,  <32.420345, 36.781769, 34.864128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546108, 36.748749, 35.065853>,  <32.755714, 36.693718, 35.402061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546108, 36.748749, 35.065853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841812, -0.066329, -0.535679,
		-0.129451, -0.988267, -0.081060,
		-0.524017, 0.137582, -0.840522,
		32.388905, 36.790024, 34.813698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087948, 36.327702, 34.954132>,  <32.755714, 36.693718, 35.402061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087948, 36.327702, 34.954132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873466, 36.593124, 34.745449>,  <32.744778, 36.752377, 34.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873466, 36.593124, 34.745449>,  <33.087948, 36.327702, 34.954132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873466, 36.593124, 34.745449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769507, 0.130252, -0.625215,
		-0.346913, -0.736699, -0.580454,
		-0.536200, 0.663558, -0.521709,
		32.712608, 36.792191, 34.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095058, 36.049572, 34.237068>,  <33.087948, 36.327702, 34.954132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095058, 36.049572, 34.237068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075901, 36.446171, 34.285454>,  <33.064407, 36.684132, 34.314484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075901, 36.446171, 34.285454>,  <33.095058, 36.049572, 34.237068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075901, 36.446171, 34.285454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890157, 0.097308, -0.445142,
		-0.453129, 0.086357, -0.887252,
		-0.047895, 0.991501, 0.120965,
		33.061531, 36.743622, 34.321743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255699, 36.424313, 33.527592>,  <33.095058, 36.049572, 34.237068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255699, 36.424313, 33.527592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310730, 36.718063, 33.793453>,  <33.343750, 36.894314, 33.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310730, 36.718063, 33.793453>,  <33.255699, 36.424313, 33.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310730, 36.718063, 33.793453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685043, 0.414115, -0.599354,
		-0.715393, 0.537777, -0.446103,
		0.137581, 0.734374, 0.664655,
		33.352005, 36.938377, 33.992851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476189, 36.863125, 33.065155>,  <33.255699, 36.424313, 33.527592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476189, 36.863125, 33.065155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549217, 37.030140, 33.421207>,  <33.593037, 37.130348, 33.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549217, 37.030140, 33.421207>,  <33.476189, 36.863125, 33.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549217, 37.030140, 33.421207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678026, 0.602158, -0.421530,
		-0.712003, 0.680489, -0.173166,
		0.182573, 0.417541, 0.890127,
		33.603989, 37.155403, 33.688244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635532, 37.640137, 32.982697>,  <33.476189, 36.863125, 33.065155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635532, 37.640137, 32.982697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794247, 37.605503, 33.348225>,  <33.889477, 37.584724, 33.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794247, 37.605503, 33.348225>,  <33.635532, 37.640137, 32.982697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794247, 37.605503, 33.348225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687415, 0.687767, -0.233316,
		-0.608294, 0.720749, 0.332414,
		0.396786, -0.086582, 0.913819,
		33.913284, 37.579529, 33.622372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962955, 38.216190, 32.988567>,  <33.635532, 37.640137, 32.982697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962955, 38.216190, 32.988567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143871, 37.990498, 33.264847>,  <34.252422, 37.855080, 33.430614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143871, 37.990498, 33.264847>,  <33.962955, 38.216190, 32.988567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143871, 37.990498, 33.264847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860754, 0.478935, -0.172405,
		-0.233524, 0.672502, 0.702287,
		0.452292, -0.564236, 0.690702,
		34.279560, 37.821228, 33.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342899, 38.677593, 33.326138>,  <33.962955, 38.216190, 32.988567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342899, 38.677593, 33.326138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512554, 38.324818, 33.408398>,  <34.614349, 38.113152, 33.457756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512554, 38.324818, 33.408398>,  <34.342899, 38.677593, 33.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512554, 38.324818, 33.408398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888241, 0.360897, -0.284222,
		0.176446, 0.303220, 0.936442,
		0.424141, -0.881936, 0.205653,
		34.639797, 38.060238, 33.470093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966198, 38.760136, 33.760155>,  <34.342899, 38.677593, 33.326138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966198, 38.760136, 33.760155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021450, 38.409180, 33.576370>,  <35.054604, 38.198605, 33.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021450, 38.409180, 33.576370>,  <34.966198, 38.760136, 33.760155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021450, 38.409180, 33.576370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927552, 0.277245, -0.250566,
		0.347227, -0.391563, 0.852122,
		0.138134, -0.877390, -0.459462,
		35.062889, 38.145962, 33.438530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657021, 38.664169, 33.858776>,  <34.966198, 38.760136, 33.760155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657021, 38.664169, 33.858776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582520, 38.379078, 33.588272>,  <35.537819, 38.208023, 33.425972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582520, 38.379078, 33.588272>,  <35.657021, 38.664169, 33.858776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582520, 38.379078, 33.588272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810590, 0.277484, -0.515700,
		0.555206, -0.644219, 0.526050,
		-0.186253, -0.712731, -0.676258,
		35.526642, 38.165260, 33.385395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297997, 38.294403, 33.763172>,  <35.657021, 38.664169, 33.858776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297997, 38.294403, 33.763172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095619, 38.204899, 33.429955>,  <35.974194, 38.151196, 33.230026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095619, 38.204899, 33.429955>,  <36.297997, 38.294403, 33.763172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095619, 38.204899, 33.429955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835671, 0.112144, -0.537659,
		0.213726, -0.968171, 0.130250,
		-0.505939, -0.223758, -0.833041,
		35.943836, 38.137772, 33.180042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696018, 37.877697, 33.300850>,  <36.297997, 38.294403, 33.763172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696018, 37.877697, 33.300850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429394, 38.039879, 33.050636>,  <36.269417, 38.137188, 32.900509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429394, 38.039879, 33.050636>,  <36.696018, 37.877697, 33.300850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429394, 38.039879, 33.050636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716599, 0.117338, -0.687544,
		-0.205372, -0.906551, -0.368765,
		-0.666564, 0.405459, -0.625536,
		36.229424, 38.161518, 32.862976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873821, 37.598114, 32.666702>,  <36.696018, 37.877697, 33.300850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873821, 37.598114, 32.666702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648815, 37.917351, 32.580338>,  <36.513809, 38.108894, 32.528519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648815, 37.917351, 32.580338>,  <36.873821, 37.598114, 32.666702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648815, 37.917351, 32.580338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712174, 0.335076, -0.616873,
		-0.419976, -0.500769, -0.756868,
		-0.562519, 0.798094, -0.215911,
		36.480061, 38.156780, 32.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027058, 37.726475, 31.956581>,  <36.873821, 37.598114, 32.666702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027058, 37.726475, 31.956581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870754, 38.064991, 32.101418>,  <36.776974, 38.268101, 32.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870754, 38.064991, 32.101418>,  <37.027058, 37.726475, 31.956581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870754, 38.064991, 32.101418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506361, 0.526123, -0.683223,
		-0.768706, -0.083624, -0.634112,
		-0.390754, 0.846287, 0.362090,
		36.753529, 38.318878, 32.210045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857697, 38.012623, 31.358662>,  <37.027058, 37.726475, 31.956581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857697, 38.012623, 31.358662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892361, 38.297508, 31.637300>,  <36.913158, 38.468437, 31.804483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892361, 38.297508, 31.637300>,  <36.857697, 38.012623, 31.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892361, 38.297508, 31.637300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541250, 0.553371, -0.633111,
		-0.836384, 0.431897, -0.337529,
		0.086660, 0.712212, 0.696595,
		36.918358, 38.511173, 31.846279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647045, 38.790085, 31.044739>,  <36.857697, 38.012623, 31.358662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647045, 38.790085, 31.044739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869186, 38.858322, 31.370312>,  <37.002472, 38.899265, 31.565655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869186, 38.858322, 31.370312>,  <36.647045, 38.790085, 31.044739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869186, 38.858322, 31.370312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626528, 0.557767, -0.544388,
		-0.546853, 0.812277, 0.202875,
		0.555351, 0.170593, 0.813931,
		37.035793, 38.909500, 31.614491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824207, 39.457729, 30.962727>,  <36.647045, 38.790085, 31.044739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824207, 39.457729, 30.962727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105450, 39.324223, 31.213882>,  <37.274193, 39.244118, 31.364576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105450, 39.324223, 31.213882>,  <36.824207, 39.457729, 30.962727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105450, 39.324223, 31.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701935, 0.466987, -0.537783,
		-0.113721, 0.818855, 0.562623,
		0.703104, -0.333767, 0.627889,
		37.316380, 39.224091, 31.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248924, 39.934574, 30.956894>,  <36.824207, 39.457729, 30.962727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248924, 39.934574, 30.956894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470222, 39.643677, 31.119392>,  <37.603001, 39.469139, 31.216890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470222, 39.643677, 31.119392>,  <37.248924, 39.934574, 30.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470222, 39.643677, 31.119392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790721, 0.305050, -0.530758,
		0.262065, 0.614867, 0.743815,
		0.553247, -0.727243, 0.406245,
		37.636196, 39.425503, 31.241266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936069, 40.250404, 31.136393>,  <37.248924, 39.934574, 30.956894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936069, 40.250404, 31.136393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012581, 39.858089, 31.151695>,  <38.058487, 39.622700, 31.160877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012581, 39.858089, 31.151695>,  <37.936069, 40.250404, 31.136393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012581, 39.858089, 31.151695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785390, 0.129562, -0.605291,
		0.588706, 0.145825, 0.795085,
		0.191279, -0.980790, 0.038255,
		38.069965, 39.563854, 31.163172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654808, 40.075726, 31.336971>,  <37.936069, 40.250404, 31.136393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654808, 40.075726, 31.336971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526947, 39.769447, 31.113712>,  <38.450230, 39.585682, 30.979757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526947, 39.769447, 31.113712>,  <38.654808, 40.075726, 31.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526947, 39.769447, 31.113712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795779, 0.102814, -0.596795,
		0.514349, -0.634933, 0.576459,
		-0.319657, -0.765695, -0.558149,
		38.431049, 39.539738, 30.946268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217243, 39.742699, 31.211395>,  <38.654808, 40.075726, 31.336971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217243, 39.742699, 31.211395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957443, 39.610409, 30.937529>,  <38.801563, 39.531033, 30.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957443, 39.610409, 30.937529>,  <39.217243, 39.742699, 31.211395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957443, 39.610409, 30.937529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711932, 0.051712, -0.700342,
		0.267028, -0.942308, 0.201868,
		-0.649499, -0.330727, -0.684668,
		38.762592, 39.511192, 30.732128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516369, 39.244228, 30.909678>,  <39.217243, 39.742699, 31.211395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516369, 39.244228, 30.909678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251377, 39.352921, 30.630455>,  <39.092381, 39.418137, 30.462921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251377, 39.352921, 30.630455>,  <39.516369, 39.244228, 30.909678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251377, 39.352921, 30.630455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712502, -0.059059, -0.699180,
		-0.231214, -0.960560, -0.154482,
		-0.662481, 0.271729, -0.698057,
		39.052631, 39.434441, 30.421038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633987, 38.781303, 30.369093>,  <39.516369, 39.244228, 30.909678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633987, 38.781303, 30.369093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 39.083233, 30.205324>,  <39.306007, 39.264389, 30.107063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 39.083233, 30.205324>,  <39.633987, 38.781303, 30.369093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429001, 39.083233, 30.205324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576491, -0.050946, -0.815514,
		-0.636424, -0.653950, -0.409039,
		-0.512466, 0.754820, -0.409420,
		39.275261, 39.309677, 30.082499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727486, 38.556335, 29.751799>,  <39.633987, 38.781303, 30.369093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727486, 38.556335, 29.751799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596291, 38.934097, 29.742697>,  <39.517574, 39.160755, 29.737236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596291, 38.934097, 29.742697>,  <39.727486, 38.556335, 29.751799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596291, 38.934097, 29.742697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466863, 0.141103, -0.873000,
		-0.821256, -0.296959, -0.487189,
		-0.327989, 0.944407, -0.022757,
		39.497894, 39.217419, 29.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462475, 38.658924, 29.072794>,  <39.727486, 38.556335, 29.751799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462475, 38.658924, 29.072794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565304, 39.015976, 29.220919>,  <39.627003, 39.230206, 29.309793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565304, 39.015976, 29.220919>,  <39.462475, 38.658924, 29.072794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565304, 39.015976, 29.220919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481116, 0.214113, -0.850108,
		-0.838118, 0.396701, -0.374415,
		0.257072, 0.892627, 0.370311,
		39.642426, 39.283764, 29.332012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418739, 39.108322, 28.469574>,  <39.462475, 38.658924, 29.072794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418739, 39.108322, 28.469574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640285, 39.303432, 28.739481>,  <39.773212, 39.420498, 28.901424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640285, 39.303432, 28.739481>,  <39.418739, 39.108322, 28.469574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640285, 39.303432, 28.739481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578451, 0.357472, -0.733218,
		-0.598859, 0.796420, -0.084167,
		0.553861, 0.487780, 0.674765,
		39.806442, 39.449768, 28.941910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468731, 39.704647, 28.214277>,  <39.418739, 39.108322, 28.469574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468731, 39.704647, 28.214277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765141, 39.711853, 28.482771>,  <39.942986, 39.716175, 28.643867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765141, 39.711853, 28.482771>,  <39.468731, 39.704647, 28.214277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765141, 39.711853, 28.482771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623021, 0.354404, -0.697311,
		-0.250450, 0.934919, 0.251399,
		0.741026, 0.018015, 0.671234,
		39.987450, 39.717258, 28.684141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652527, 40.337666, 28.240093>,  <39.468731, 39.704647, 28.214277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652527, 40.337666, 28.240093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971458, 40.134071, 28.369833>,  <40.162815, 40.011913, 28.447676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971458, 40.134071, 28.369833>,  <39.652527, 40.337666, 28.240093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971458, 40.134071, 28.369833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555576, 0.408996, -0.723918,
		0.235809, 0.757399, 0.608885,
		0.797326, -0.508988, 0.324348,
		40.210655, 39.981377, 28.467138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219952, 40.797386, 28.090193>,  <39.652527, 40.337666, 28.240093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219952, 40.797386, 28.090193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394287, 40.438210, 28.114643>,  <40.498890, 40.222702, 28.129313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394287, 40.438210, 28.114643>,  <40.219952, 40.797386, 28.090193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394287, 40.438210, 28.114643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528524, 0.200379, -0.824931,
		0.728495, 0.391844, 0.561919,
		0.435841, -0.897946, 0.061124,
		40.525040, 40.168827, 28.132980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835400, 40.884338, 27.739454>,  <40.219952, 40.797386, 28.090193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835400, 40.884338, 27.739454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837589, 40.484680, 27.755806>,  <40.838902, 40.244884, 27.765617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837589, 40.484680, 27.755806>,  <40.835400, 40.884338, 27.739454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837589, 40.484680, 27.755806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567226, -0.030567, -0.822995,
		0.823544, 0.027690, 0.566576,
		0.005470, -0.999149, 0.040880,
		40.839230, 40.184937, 27.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576801, 40.788212, 27.614552>,  <40.835400, 40.884338, 27.739454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576801, 40.788212, 27.614552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337387, 40.474773, 27.547926>,  <41.193741, 40.286713, 27.507950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337387, 40.474773, 27.547926>,  <41.576801, 40.788212, 27.614552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337387, 40.474773, 27.547926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343316, -0.063042, -0.937102,
		0.723805, -0.618069, 0.306753,
		-0.598532, -0.783592, -0.166563,
		41.157829, 40.239697, 27.497957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060818, 40.253334, 27.304693>,  <41.576801, 40.788212, 27.614552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060818, 40.253334, 27.304693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680561, 40.160858, 27.221903>,  <41.452408, 40.105373, 27.172230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680561, 40.160858, 27.221903>,  <42.060818, 40.253334, 27.304693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680561, 40.160858, 27.221903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238306, -0.116735, -0.964149,
		0.198744, -0.965879, 0.166068,
		-0.950637, -0.231193, -0.206975,
		41.395370, 40.091499, 27.159811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149498, 39.664360, 26.877903>,  <42.060818, 40.253334, 27.304693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149498, 39.664360, 26.877903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782753, 39.802792, 26.798317>,  <41.562706, 39.885849, 26.750565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782753, 39.802792, 26.798317>,  <42.149498, 39.664360, 26.877903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782753, 39.802792, 26.798317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142085, -0.182864, -0.972817,
		-0.373058, -0.920211, 0.118489,
		-0.916864, 0.346081, -0.198967,
		41.507694, 39.906616, 26.738626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801567, 39.083611, 26.529997>,  <42.149498, 39.664360, 26.877903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801567, 39.083611, 26.529997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634686, 39.435471, 26.438646>,  <41.534557, 39.646587, 26.383837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634686, 39.435471, 26.438646>,  <41.801567, 39.083611, 26.529997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634686, 39.435471, 26.438646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088374, -0.210833, -0.973519,
		-0.904504, -0.426343, 0.010223,
		-0.417208, 0.879648, -0.228377,
		41.509521, 39.699364, 26.370132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254715, 38.502037, 26.431776>,  <41.801567, 39.083611, 26.529997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254715, 38.502037, 26.431776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459621, 38.175587, 26.324795>,  <42.582565, 37.979717, 26.260607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459621, 38.175587, 26.324795>,  <42.254715, 38.502037, 26.431776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459621, 38.175587, 26.324795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497792, -0.535922, 0.681902,
		-0.699849, -0.216177, -0.680793,
		0.512263, -0.816122, -0.267454,
		42.613300, 37.930752, 26.244558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778118, 38.057983, 26.275780>,  <42.254715, 38.502037, 26.431776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778118, 38.057983, 26.275780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095772, 37.862122, 26.419773>,  <42.286366, 37.744606, 26.506170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095772, 37.862122, 26.419773>,  <41.778118, 38.057983, 26.275780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095772, 37.862122, 26.419773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549379, -0.325103, 0.769734,
		-0.259865, -0.809044, -0.527179,
		0.794136, -0.489648, 0.359989,
		42.334011, 37.715225, 26.527769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461197, 37.521782, 26.487213>,  <41.778118, 38.057983, 26.275780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461197, 37.521782, 26.487213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796822, 37.487194, 26.702063>,  <41.998196, 37.466442, 26.830973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796822, 37.487194, 26.702063>,  <41.461197, 37.521782, 26.487213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796822, 37.487194, 26.702063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504795, -0.491913, 0.709368,
		0.202880, -0.866340, -0.456394,
		0.839060, -0.086469, 0.537124,
		42.048538, 37.461254, 26.863199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571671, 36.813164, 26.679960>,  <41.461197, 37.521782, 26.487213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571671, 36.813164, 26.679960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792072, 37.014114, 26.946497>,  <41.924313, 37.134686, 27.106419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792072, 37.014114, 26.946497>,  <41.571671, 36.813164, 26.679960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792072, 37.014114, 26.946497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309666, -0.618386, 0.722292,
		0.774921, -0.604328, -0.185162,
		0.551003, 0.502381, 0.666340,
		41.957375, 37.164829, 27.146399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864574, 36.279381, 27.049389>,  <41.571671, 36.813164, 26.679960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864574, 36.279381, 27.049389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881264, 36.609650, 27.274431>,  <41.891277, 36.807812, 27.409456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881264, 36.609650, 27.274431>,  <41.864574, 36.279381, 27.049389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881264, 36.609650, 27.274431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479818, -0.477358, 0.736141,
		0.876376, -0.300660, 0.376256,
		0.041720, 0.825671, 0.562607,
		41.893780, 36.857349, 27.443213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794056, 36.112965, 27.601980>,  <41.864574, 36.279381, 27.049389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794056, 36.112965, 27.601980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777142, 36.481022, 27.757698>,  <41.766991, 36.701855, 27.851128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777142, 36.481022, 27.757698>,  <41.794056, 36.112965, 27.601980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777142, 36.481022, 27.757698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378964, -0.375297, 0.845895,
		0.924445, -0.111756, 0.364572,
		-0.042289, 0.920143, 0.389293,
		41.764454, 36.757065, 27.874487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063080, 36.207443, 28.407827>,  <41.794056, 36.112965, 27.601980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063080, 36.207443, 28.407827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794872, 36.494164, 28.331308>,  <41.633949, 36.666199, 28.285397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794872, 36.494164, 28.331308>,  <42.063080, 36.207443, 28.407827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794872, 36.494164, 28.331308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554023, -0.312300, 0.771704,
		0.493420, 0.623425, 0.606530,
		-0.670519, 0.716806, -0.191296,
		41.593716, 36.709206, 28.273920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871067, 36.339451, 29.068285>,  <42.063080, 36.207443, 28.407827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871067, 36.339451, 29.068285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576683, 36.534336, 28.880249>,  <41.400051, 36.651268, 28.767427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576683, 36.534336, 28.880249>,  <41.871067, 36.339451, 29.068285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576683, 36.534336, 28.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608190, -0.170738, 0.775212,
		0.297429, 0.856431, 0.421973,
		-0.735962, 0.487211, -0.470091,
		41.355896, 36.680500, 28.739222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441288, 36.642475, 29.630219>,  <41.871067, 36.339451, 29.068285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441288, 36.642475, 29.630219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206837, 36.701653, 29.311579>,  <41.066166, 36.737160, 29.120396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206837, 36.701653, 29.311579>,  <41.441288, 36.642475, 29.630219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206837, 36.701653, 29.311579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804453, -0.223372, 0.550419,
		-0.096505, 0.963440, 0.249940,
		-0.586125, 0.147947, -0.796598,
		41.030998, 36.746037, 29.072599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845375, 37.248672, 29.768112>,  <41.441288, 36.642475, 29.630219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845375, 37.248672, 29.768112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718693, 37.016815, 29.467789>,  <40.642685, 36.877701, 29.287596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718693, 37.016815, 29.467789>,  <40.845375, 37.248672, 29.768112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718693, 37.016815, 29.467789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814026, -0.240219, 0.528825,
		-0.486890, 0.778656, -0.395769,
		-0.316702, -0.579646, -0.750807,
		40.623684, 36.842922, 29.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282066, 37.499496, 29.718630>,  <40.845375, 37.248672, 29.768112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282066, 37.499496, 29.718630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295425, 37.136902, 29.550266>,  <40.303440, 36.919346, 29.449249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295425, 37.136902, 29.550266>,  <40.282066, 37.499496, 29.718630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295425, 37.136902, 29.550266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810176, -0.271161, 0.519698,
		-0.585234, 0.323652, -0.743472,
		0.033399, -0.906488, -0.420908,
		40.305447, 36.864956, 29.423994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618935, 37.350033, 29.296263>,  <40.282066, 37.499496, 29.718630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618935, 37.350033, 29.296263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777874, 36.996563, 29.395245>,  <39.873238, 36.784481, 29.454634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777874, 36.996563, 29.395245>,  <39.618935, 37.350033, 29.296263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777874, 36.996563, 29.395245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905368, -0.333499, 0.262846,
		-0.149745, -0.328478, -0.932566,
		0.397349, -0.883674, 0.247453,
		39.897079, 36.731461, 29.469481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079964, 36.845108, 29.121077>,  <39.618935, 37.350033, 29.296263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079964, 36.845108, 29.121077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326828, 36.696411, 29.398472>,  <39.474945, 36.607193, 29.564909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326828, 36.696411, 29.398472>,  <39.079964, 36.845108, 29.121077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326828, 36.696411, 29.398472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782495, -0.382443, 0.491364,
		0.082561, -0.845901, -0.526911,
		0.617159, -0.371738, 0.693489,
		39.511974, 36.584888, 29.606518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810001, 36.229183, 29.214233>,  <39.079964, 36.845108, 29.121077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810001, 36.229183, 29.214233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044765, 36.285835, 29.533102>,  <39.185623, 36.319828, 29.724422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044765, 36.285835, 29.533102>,  <38.810001, 36.229183, 29.214233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044765, 36.285835, 29.533102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699548, -0.407007, 0.587348,
		0.407640, -0.902378, -0.139799,
		0.586909, 0.141630, 0.797170,
		39.220837, 36.328323, 29.772253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864014, 35.670559, 29.605490>,  <38.810001, 36.229183, 29.214233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864014, 35.670559, 29.605490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970718, 35.941513, 29.879713>,  <39.034740, 36.104084, 30.044247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970718, 35.941513, 29.879713>,  <38.864014, 35.670559, 29.605490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970718, 35.941513, 29.879713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631328, -0.414647, 0.655357,
		0.728193, -0.607634, 0.317041,
		0.266757, 0.677383, 0.685560,
		39.050747, 36.144730, 30.085381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807728, 35.280628, 30.350323>,  <38.864014, 35.670559, 29.605490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807728, 35.280628, 30.350323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803791, 35.676819, 30.405254>,  <38.801430, 35.914532, 30.438213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803791, 35.676819, 30.405254>,  <38.807728, 35.280628, 30.350323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803791, 35.676819, 30.405254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767030, -0.095589, 0.634451,
		0.641536, -0.099092, 0.760666,
		-0.009842, 0.990477, 0.137330,
		38.800838, 35.973961, 30.446453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835896, 35.331059, 31.130116>,  <38.807728, 35.280628, 30.350323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835896, 35.331059, 31.130116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678963, 35.667168, 30.980440>,  <38.584805, 35.868832, 30.890635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678963, 35.667168, 30.980440>,  <38.835896, 35.331059, 31.130116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678963, 35.667168, 30.980440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700345, -0.009155, 0.713746,
		0.596316, 0.542084, 0.592074,
		-0.392331, 0.840274, -0.374187,
		38.561264, 35.919250, 30.868185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746025, 35.689049, 31.728785>,  <38.835896, 35.331059, 31.130116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746025, 35.689049, 31.728785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502140, 35.860813, 31.462296>,  <38.355808, 35.963871, 31.302402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502140, 35.860813, 31.462296>,  <38.746025, 35.689049, 31.728785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502140, 35.860813, 31.462296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742449, -0.015113, 0.669732,
		0.277523, 0.902982, 0.328032,
		-0.609714, 0.429413, -0.666223,
		38.319225, 35.989635, 31.262428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409393, 36.216053, 32.153675>,  <38.746025, 35.689049, 31.728785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409393, 36.216053, 32.153675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195328, 36.154915, 31.821354>,  <38.066887, 36.118233, 31.621962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195328, 36.154915, 31.821354>,  <38.409393, 36.216053, 32.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195328, 36.154915, 31.821354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844149, 0.059777, 0.532765,
		-0.031765, 0.986441, -0.161011,
		-0.535166, -0.152841, -0.830805,
		38.034779, 36.109062, 31.572113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843426, 36.734894, 31.987988>,  <38.409393, 36.216053, 32.153675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843426, 36.734894, 31.987988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737476, 36.413891, 31.774139>,  <37.673904, 36.221287, 31.645830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737476, 36.413891, 31.774139>,  <37.843426, 36.734894, 31.987988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737476, 36.413891, 31.774139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867676, -0.043521, 0.495221,
		-0.420686, 0.595050, -0.684791,
		-0.264878, -0.802510, -0.534619,
		37.658012, 36.173138, 31.613754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079208, 36.846352, 31.970387>,  <37.843426, 36.734894, 31.987988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079208, 36.846352, 31.970387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133217, 36.464748, 31.863333>,  <37.165623, 36.235786, 31.799101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133217, 36.464748, 31.863333>,  <37.079208, 36.846352, 31.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133217, 36.464748, 31.863333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770380, -0.270944, 0.577151,
		-0.623124, 0.128252, -0.771536,
		0.135022, -0.954013, -0.267635,
		37.173725, 36.178543, 31.783043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442696, 36.621254, 31.715208>,  <37.079208, 36.846352, 31.970387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442696, 36.621254, 31.715208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649437, 36.301453, 31.837620>,  <36.773479, 36.109570, 31.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649437, 36.301453, 31.837620>,  <36.442696, 36.621254, 31.715208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649437, 36.301453, 31.837620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730794, -0.225868, 0.644145,
		-0.445875, -0.556574, -0.701015,
		0.516851, -0.799506, 0.306032,
		36.804493, 36.061600, 31.929430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037971, 36.094574, 31.668785>,  <36.442696, 36.621254, 31.715208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037971, 36.094574, 31.668785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299149, 35.931042, 31.923819>,  <36.455856, 35.832920, 32.076839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299149, 35.931042, 31.923819>,  <36.037971, 36.094574, 31.668785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299149, 35.931042, 31.923819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756076, -0.302006, 0.580639,
		-0.044830, -0.861189, -0.506303,
		0.652947, -0.408833, 0.637585,
		36.495033, 35.808392, 32.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794727, 35.413124, 31.718307>,  <36.037971, 36.094574, 31.668785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794727, 35.413124, 31.718307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031773, 35.489017, 32.031437>,  <36.174000, 35.534554, 32.219315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031773, 35.489017, 32.031437>,  <35.794727, 35.413124, 31.718307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031773, 35.489017, 32.031437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675229, -0.412878, 0.611226,
		0.439178, -0.890806, -0.116565,
		0.592611, 0.189729, 0.782825,
		36.209557, 35.545937, 32.266285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711109, 34.889397, 32.164959>,  <35.794727, 35.413124, 31.718307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711109, 34.889397, 32.164959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872986, 35.165447, 32.404942>,  <35.970112, 35.331078, 32.548931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872986, 35.165447, 32.404942>,  <35.711109, 34.889397, 32.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872986, 35.165447, 32.404942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579023, -0.314421, 0.752244,
		0.707785, -0.651814, 0.272359,
		0.404688, 0.690129, 0.599958,
		35.994392, 35.372486, 32.584930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864059, 34.515858, 32.790459>,  <35.711109, 34.889397, 32.164959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864059, 34.515858, 32.790459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864670, 34.903511, 32.889072>,  <35.865036, 35.136105, 32.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864670, 34.903511, 32.889072>,  <35.864059, 34.515858, 32.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864670, 34.903511, 32.889072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337930, -0.231535, 0.912247,
		0.941170, -0.084702, 0.327146,
		0.001523, 0.969132, 0.246537,
		35.865128, 35.194252, 32.963032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090603, 34.415264, 33.391548>,  <35.864059, 34.515858, 32.790459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090603, 34.415264, 33.391548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905132, 34.765488, 33.337280>,  <35.793850, 34.975620, 33.304718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905132, 34.765488, 33.337280>,  <36.090603, 34.415264, 33.391548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905132, 34.765488, 33.337280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453757, -0.103142, 0.885136,
		0.760994, 0.471976, 0.445115,
		-0.463673, 0.875557, -0.135673,
		35.766029, 35.028156, 33.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209339, 34.856182, 34.050671>,  <36.090603, 34.415264, 33.391548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209339, 34.856182, 34.050671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869797, 34.986805, 33.884396>,  <35.666069, 35.065178, 33.784630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869797, 34.986805, 33.884396>,  <36.209339, 34.856182, 34.050671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869797, 34.986805, 33.884396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510983, -0.305445, 0.803492,
		0.135417, 0.894462, 0.426146,
		-0.848858, 0.326559, -0.415692,
		35.615139, 35.084774, 33.759689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816746, 35.214817, 34.518528>,  <36.209339, 34.856182, 34.050671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816746, 35.214817, 34.518528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522236, 35.152863, 34.255043>,  <35.345528, 35.115692, 34.096951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522236, 35.152863, 34.255043>,  <35.816746, 35.214817, 34.518528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522236, 35.152863, 34.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639024, -0.161051, 0.752138,
		-0.222581, 0.974717, 0.019603,
		-0.736279, -0.154884, -0.658714,
		35.301353, 35.106396, 34.057430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231121, 35.703987, 34.690125>,  <35.816746, 35.214817, 34.518528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231121, 35.703987, 34.690125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083969, 35.390812, 34.489456>,  <34.995678, 35.202908, 34.369057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083969, 35.390812, 34.489456>,  <35.231121, 35.703987, 34.690125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083969, 35.390812, 34.489456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703703, -0.118247, 0.700585,
		-0.607835, 0.610760, -0.507454,
		-0.367884, -0.782937, -0.501669,
		34.973602, 35.155930, 34.338955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520176, 35.861137, 34.420380>,  <35.231121, 35.703987, 34.690125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520176, 35.861137, 34.420380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541115, 35.463741, 34.460850>,  <34.553680, 35.225304, 34.485130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541115, 35.463741, 34.460850>,  <34.520176, 35.861137, 34.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541115, 35.463741, 34.460850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881928, 0.001533, 0.471382,
		-0.468468, -0.113907, -0.876107,
		0.052351, -0.993490, 0.101176,
		34.556820, 35.165695, 34.491203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907608, 35.591000, 34.445038>,  <34.520176, 35.861137, 34.420380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907608, 35.591000, 34.445038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073284, 35.247765, 34.566448>,  <34.172688, 35.041824, 34.639294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073284, 35.247765, 34.566448>,  <33.907608, 35.591000, 34.445038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073284, 35.247765, 34.566448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852202, -0.248476, 0.460447,
		-0.319688, -0.449373, -0.834184,
		0.414187, -0.858093, 0.303521,
		34.197540, 34.990337, 34.657505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467358, 35.090908, 34.199352>,  <33.907608, 35.591000, 34.445038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467358, 35.090908, 34.199352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670544, 34.931629, 34.504875>,  <33.792454, 34.836060, 34.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670544, 34.931629, 34.504875>,  <33.467358, 35.090908, 34.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670544, 34.931629, 34.504875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851969, -0.362964, 0.377368,
		0.126969, -0.842433, -0.523627,
		0.507965, -0.398200, 0.763812,
		33.822933, 34.812168, 34.734020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115665, 34.500488, 34.277267>,  <33.467358, 35.090908, 34.199352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115665, 34.500488, 34.277267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332512, 34.511490, 34.613209>,  <33.462620, 34.518089, 34.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332512, 34.511490, 34.613209>,  <33.115665, 34.500488, 34.277267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332512, 34.511490, 34.613209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706486, -0.526214, 0.473262,
		0.454960, -0.849907, -0.265837,
		0.542116, 0.027505, 0.839853,
		33.495148, 34.519741, 34.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054665, 33.848152, 34.667046>,  <33.115665, 34.500488, 34.277267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054665, 33.848152, 34.667046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173752, 34.100826, 34.953354>,  <33.245205, 34.252430, 35.125141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173752, 34.100826, 34.953354>,  <33.054665, 33.848152, 34.667046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173752, 34.100826, 34.953354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613525, -0.447831, 0.650411,
		0.731402, -0.632788, 0.254226,
		0.297722, 0.631686, 0.715775,
		33.263069, 34.290333, 35.168087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146374, 33.408546, 35.242355>,  <33.054665, 33.848152, 34.667046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146374, 33.408546, 35.242355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124744, 33.788479, 35.365574>,  <33.111767, 34.016438, 35.439503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124744, 33.788479, 35.365574>,  <33.146374, 33.408546, 35.242355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124744, 33.788479, 35.365574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615509, -0.274624, 0.738736,
		0.786272, -0.149654, 0.599483,
		-0.054077, 0.949834, 0.308042,
		33.108521, 34.073429, 35.457985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320091, 33.438889, 35.989956>,  <33.146374, 33.408546, 35.242355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320091, 33.438889, 35.989956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105759, 33.765636, 35.904533>,  <32.977158, 33.961685, 35.853279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105759, 33.765636, 35.904533>,  <33.320091, 33.438889, 35.989956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105759, 33.765636, 35.904533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665807, -0.253258, 0.701827,
		0.519217, 0.518249, 0.679582,
		-0.535830, 0.816871, -0.213558,
		32.945011, 34.010696, 35.840466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041866, 33.547863, 36.640976>,  <33.320091, 33.438889, 35.989956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041866, 33.547863, 36.640976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831051, 33.767429, 36.381462>,  <32.704563, 33.899170, 36.225754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831051, 33.767429, 36.381462>,  <33.041866, 33.547863, 36.640976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831051, 33.767429, 36.381462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800931, -0.065571, 0.595156,
		0.284148, 0.833303, 0.474200,
		-0.527039, 0.548914, -0.648786,
		32.672939, 33.932102, 36.186825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648746, 34.010162, 37.041008>,  <33.041866, 33.547863, 36.640976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648746, 34.010162, 37.041008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450871, 34.000351, 36.693520>,  <32.332146, 33.994465, 36.485027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450871, 34.000351, 36.693520>,  <32.648746, 34.010162, 37.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450871, 34.000351, 36.693520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833264, -0.270587, 0.482134,
		-0.246890, 0.962383, 0.113420,
		-0.494688, -0.024525, -0.868724,
		32.302464, 33.992992, 36.432903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063873, 34.381733, 37.081192>,  <32.648746, 34.010162, 37.041008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063873, 34.381733, 37.081192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996185, 34.130539, 36.777351>,  <31.955572, 33.979824, 36.595047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996185, 34.130539, 36.777351>,  <32.063873, 34.381733, 37.081192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996185, 34.130539, 36.777351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907404, -0.201556, 0.368774,
		-0.384687, 0.751672, -0.535729,
		-0.169218, -0.627985, -0.759605,
		31.945419, 33.942142, 36.549469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437696, 34.546558, 36.784431>,  <32.063873, 34.381733, 37.081192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437696, 34.546558, 36.784431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538532, 34.159557, 36.776470>,  <31.599033, 33.927357, 36.771694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538532, 34.159557, 36.776470>,  <31.437696, 34.546558, 36.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538532, 34.159557, 36.776470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779124, -0.215120, 0.588803,
		-0.573949, -0.132920, -0.808031,
		0.252087, -0.967499, -0.019907,
		31.614159, 33.869308, 36.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885651, 35.094208, 37.129036>,  <31.437696, 34.546558, 36.784431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885651, 35.094208, 37.129036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064411, 35.290630, 36.829933>,  <31.171667, 35.408485, 36.650471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064411, 35.290630, 36.829933>,  <30.885651, 35.094208, 37.129036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064411, 35.290630, 36.829933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452919, 0.596626, 0.662497,
		0.771456, -0.634745, 0.044224,
		0.446902, 0.491057, -0.747758,
		31.198483, 35.437946, 36.605606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607979, 35.138878, 37.228077>,  <30.885651, 35.094208, 37.129036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607979, 35.138878, 37.228077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535681, 35.451855, 36.989708>,  <31.492302, 35.639641, 36.846687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535681, 35.451855, 36.989708>,  <31.607979, 35.138878, 37.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535681, 35.451855, 36.989708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364591, 0.616035, 0.698265,
		0.913458, -0.091061, -0.396614,
		-0.180744, 0.782438, -0.595922,
		31.481459, 35.686584, 36.810932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904957, 35.783836, 37.638912>,  <31.607979, 35.138878, 37.228077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904957, 35.783836, 37.638912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769327, 35.930351, 37.292305>,  <31.687950, 36.018261, 37.084339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769327, 35.930351, 37.292305>,  <31.904957, 35.783836, 37.638912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769327, 35.930351, 37.292305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315979, 0.911920, 0.261839,
		0.886108, -0.185020, -0.424947,
		-0.339072, 0.366292, -0.866522,
		31.667606, 36.040237, 37.032349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464870, 36.085598, 37.357231>,  <31.904957, 35.783836, 37.638912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464870, 36.085598, 37.357231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113819, 36.242825, 37.247494>,  <31.903189, 36.337162, 37.181652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113819, 36.242825, 37.247494>,  <32.464870, 36.085598, 37.357231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113819, 36.242825, 37.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361935, 0.918653, 0.158369,
		0.314278, 0.039694, -0.948501,
		-0.877629, 0.393067, -0.274346,
		31.850531, 36.360744, 37.165192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612606, 36.592445, 36.867928>,  <32.464870, 36.085598, 37.357231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612606, 36.592445, 36.867928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263474, 36.677631, 37.043571>,  <32.053993, 36.728745, 37.148960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263474, 36.677631, 37.043571>,  <32.612606, 36.592445, 36.867928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263474, 36.677631, 37.043571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404318, 0.819447, 0.406243,
		-0.273313, 0.532121, -0.801341,
		-0.872827, 0.212965, 0.439112,
		32.001625, 36.741520, 37.175304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353180, 37.241306, 36.606655>,  <32.612606, 36.592445, 36.867928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353180, 37.241306, 36.606655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218498, 37.188637, 36.979599>,  <32.137688, 37.157036, 37.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218498, 37.188637, 36.979599>,  <32.353180, 37.241306, 36.606655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218498, 37.188637, 36.979599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615587, 0.718483, 0.323782,
		-0.712517, 0.682967, -0.160859,
		-0.336707, -0.131677, 0.932357,
		32.117485, 37.149132, 37.259308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125813, 37.873318, 36.894829>,  <32.353180, 37.241306, 36.606655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125813, 37.873318, 36.894829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205341, 37.650120, 37.217098>,  <32.253059, 37.516201, 37.410461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205341, 37.650120, 37.217098>,  <32.125813, 37.873318, 36.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205341, 37.650120, 37.217098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494073, 0.767042, 0.409315,
		-0.846382, 0.316681, 0.428195,
		0.198821, -0.557997, 0.805673,
		32.264988, 37.482719, 37.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707834, 38.052105, 37.583607>,  <32.125813, 37.873318, 36.894829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707834, 38.052105, 37.583607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086880, 37.924751, 37.573353>,  <32.314308, 37.848339, 37.567200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086880, 37.924751, 37.573353>,  <31.707834, 38.052105, 37.583607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086880, 37.924751, 37.573353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271995, 0.762260, 0.587348,
		-0.167460, -0.563553, 0.808928,
		0.947616, -0.318381, -0.025636,
		32.371166, 37.829235, 37.565662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015335, 38.018723, 38.288818>,  <31.707834, 38.052105, 37.583607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015335, 38.018723, 38.288818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273205, 38.104530, 37.995323>,  <32.427929, 38.156017, 37.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273205, 38.104530, 37.995323>,  <32.015335, 38.018723, 38.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273205, 38.104530, 37.995323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230270, 0.860745, 0.453976,
		0.728948, -0.461626, 0.505506,
		0.644679, 0.214522, -0.733737,
		32.466610, 38.168888, 37.775204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564777, 38.087994, 38.670647>,  <32.015335, 38.018723, 38.288818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564777, 38.087994, 38.670647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572201, 38.274353, 38.316788>,  <32.576656, 38.386169, 38.104473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572201, 38.274353, 38.316788>,  <32.564777, 38.087994, 38.670647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572201, 38.274353, 38.316788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226881, 0.859754, 0.457545,
		0.973746, -0.209200, -0.089748,
		0.018557, 0.465895, -0.884645,
		32.577766, 38.414120, 38.051395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221294, 38.346916, 38.566273>,  <32.564777, 38.087994, 38.670647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221294, 38.346916, 38.566273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950592, 38.571651, 38.375977>,  <32.788170, 38.706493, 38.261799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950592, 38.571651, 38.375977>,  <33.221294, 38.346916, 38.566273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950592, 38.571651, 38.375977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482149, 0.826589, 0.290314,
		0.556352, -0.032905, -0.830294,
		-0.676760, 0.561843, -0.475740,
		32.747562, 38.740204, 38.233253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627872, 38.866917, 38.233906>,  <33.221294, 38.346916, 38.566273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627872, 38.866917, 38.233906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271355, 39.048012, 38.243881>,  <33.057446, 39.156670, 38.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271355, 39.048012, 38.243881>,  <33.627872, 38.866917, 38.233906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271355, 39.048012, 38.243881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440954, 0.852663, 0.280226,
		0.105604, 0.260760, -0.959610,
		-0.891295, 0.452737, 0.024938,
		33.003967, 39.183834, 38.251362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954975, 38.445881, 38.767673>,  <33.627872, 38.866917, 38.233906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954975, 38.445881, 38.767673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353790, 38.425797, 38.744370>,  <34.593079, 38.413746, 38.730389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353790, 38.425797, 38.744370>,  <33.954975, 38.445881, 38.767673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353790, 38.425797, 38.744370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051591, -0.998415, -0.022484,
		-0.057038, 0.025423, -0.998048,
		0.997038, -0.050208, -0.058260,
		34.652901, 38.410732, 38.726891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194901, 38.016277, 38.278999>,  <33.954975, 38.445881, 38.767673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194901, 38.016277, 38.278999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484978, 38.021667, 38.554367>,  <34.659023, 38.024902, 38.719585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484978, 38.021667, 38.554367>,  <34.194901, 38.016277, 38.278999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484978, 38.021667, 38.554367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057774, -0.997474, -0.041333,
		0.686120, 0.069747, -0.724137,
		0.725191, 0.013477, 0.688416,
		34.702534, 38.025711, 38.760891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715481, 37.584312, 38.069462>,  <34.194901, 38.016277, 38.278999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715481, 37.584312, 38.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695801, 37.587742, 38.468964>,  <34.683994, 37.589798, 38.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695801, 37.587742, 38.468964>,  <34.715481, 37.584312, 38.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695801, 37.587742, 38.468964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249157, -0.968244, 0.020585,
		0.967213, 0.249859, 0.045501,
		-0.049199, 0.008574, 0.998752,
		34.681042, 37.590313, 38.768589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382904, 37.274448, 38.429710>,  <34.715481, 37.584312, 38.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382904, 37.274448, 38.429710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018925, 37.222424, 38.587231>,  <34.800537, 37.191208, 38.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018925, 37.222424, 38.587231>,  <35.382904, 37.274448, 38.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018925, 37.222424, 38.587231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097407, -0.990015, -0.101893,
		0.403124, -0.054358, 0.913529,
		-0.909947, -0.130060, 0.393804,
		34.745941, 37.183407, 38.705372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338703, 36.784073, 39.102669>,  <35.382904, 37.274448, 38.429710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338703, 36.784073, 39.102669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007954, 36.788624, 38.877758>,  <34.809505, 36.791355, 38.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007954, 36.788624, 38.877758>,  <35.338703, 36.784073, 39.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007954, 36.788624, 38.877758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151216, -0.958478, -0.241772,
		-0.541678, -0.284939, 0.790819,
		-0.826873, 0.011378, -0.562274,
		34.759892, 36.792038, 38.709076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043835, 36.175476, 39.194382>,  <35.338703, 36.784073, 39.102669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043835, 36.175476, 39.194382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929623, 36.321766, 38.840042>,  <34.861095, 36.409538, 38.627438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929623, 36.321766, 38.840042>,  <35.043835, 36.175476, 39.194382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929623, 36.321766, 38.840042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124203, -0.902408, -0.412593,
		-0.950289, -0.227830, 0.212236,
		-0.285525, 0.365722, -0.885846,
		34.843964, 36.431484, 38.574287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400684, 35.976635, 38.874119>,  <35.043835, 36.175476, 39.194382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400684, 35.976635, 38.874119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672272, 36.051487, 38.590153>,  <34.835224, 36.096397, 38.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672272, 36.051487, 38.590153>,  <34.400684, 35.976635, 38.874119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672272, 36.051487, 38.590153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047861, -0.976195, -0.211549,
		-0.732605, 0.109658, -0.671762,
		0.678969, 0.187133, -0.709917,
		34.875961, 36.107628, 38.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052410, 35.689999, 38.254932>,  <34.400684, 35.976635, 38.874119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052410, 35.689999, 38.254932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442806, 35.644287, 38.329098>,  <34.677044, 35.616859, 38.373596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442806, 35.644287, 38.329098>,  <34.052410, 35.689999, 38.254932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442806, 35.644287, 38.329098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118055, -0.992962, 0.009436,
		0.183030, -0.031099, -0.982615,
		0.975993, -0.114276, 0.185413,
		34.735603, 35.610004, 38.384720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338375, 35.174923, 37.763680>,  <34.052410, 35.689999, 38.254932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338375, 35.174923, 37.763680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586048, 35.209000, 38.075924>,  <34.734653, 35.229446, 38.263271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586048, 35.209000, 38.075924>,  <34.338375, 35.174923, 37.763680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586048, 35.209000, 38.075924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252713, -0.962829, -0.095379,
		0.743468, 0.256328, -0.617699,
		0.619186, 0.085189, 0.780609,
		34.771805, 35.234558, 38.310108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845596, 34.685562, 37.750687>,  <34.338375, 35.174923, 37.763680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845596, 34.685562, 37.750687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947262, 34.811420, 38.116508>,  <35.008259, 34.886936, 38.336002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947262, 34.811420, 38.116508>,  <34.845596, 34.685562, 37.750687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947262, 34.811420, 38.116508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336908, -0.915178, 0.221229,
		0.906585, 0.251892, -0.338606,
		0.254159, 0.314642, 0.914551,
		35.023510, 34.905811, 38.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570023, 34.402229, 37.892181>,  <34.845596, 34.685562, 37.750687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570023, 34.402229, 37.892181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374825, 34.484859, 38.231403>,  <35.257706, 34.534439, 38.434937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374825, 34.484859, 38.231403>,  <35.570023, 34.402229, 37.892181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374825, 34.484859, 38.231403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499314, -0.730848, 0.465346,
		0.715925, 0.650529, 0.253502,
		-0.487993, 0.206575, 0.848050,
		35.228428, 34.546833, 38.485817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072685, 34.521309, 38.523052>,  <35.570023, 34.402229, 37.892181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072685, 34.521309, 38.523052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718384, 34.410408, 38.671951>,  <35.505802, 34.343868, 38.761292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718384, 34.410408, 38.671951>,  <36.072685, 34.521309, 38.523052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718384, 34.410408, 38.671951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434158, -0.778529, 0.453209,
		0.164153, 0.563047, 0.809958,
		-0.885754, -0.277254, 0.372249,
		35.452656, 34.327232, 38.783627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760300, 34.761936, 38.917076>,  <36.072685, 34.521309, 38.523052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760300, 34.761936, 38.917076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700893, 35.157478, 38.913021>,  <36.665249, 35.394806, 38.910587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700893, 35.157478, 38.913021>,  <36.760300, 34.761936, 38.917076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700893, 35.157478, 38.913021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834495, 0.130821, 0.535260,
		0.530622, 0.071039, -0.844626,
		-0.148519, 0.988858, -0.010134,
		36.656338, 35.454136, 38.909981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366352, 34.604919, 38.430019>,  <36.760300, 34.761936, 38.917076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366352, 34.604919, 38.430019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034672, 34.526672, 38.220581>,  <36.835663, 34.479725, 38.094917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034672, 34.526672, 38.220581>,  <37.366352, 34.604919, 38.430019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034672, 34.526672, 38.220581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353795, 0.541532, -0.762609,
		0.432722, -0.817605, -0.379833,
		-0.829205, -0.195615, -0.523597,
		36.785912, 34.467987, 38.063503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484924, 34.302620, 37.763279>,  <37.366352, 34.604919, 38.430019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484924, 34.302620, 37.763279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178326, 34.552822, 37.821552>,  <36.994366, 34.702946, 37.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178326, 34.552822, 37.821552>,  <37.484924, 34.302620, 37.763279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178326, 34.552822, 37.821552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413158, 0.653904, -0.633807,
		-0.491716, -0.425618, -0.759648,
		-0.766496, 0.625508, 0.145688,
		36.948376, 34.740475, 37.865257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722496, 34.983833, 37.403305>,  <37.484924, 34.302620, 37.763279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722496, 34.983833, 37.403305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 34.981758, 37.361885>,  <37.085949, 34.980515, 37.337032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324654, 34.981758, 37.361885>,  <37.722496, 34.983833, 37.403305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324654, 34.981758, 37.361885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082826, -0.640524, -0.763458,
		-0.062371, -0.767920, 0.637501,
		-0.994610, -0.005184, -0.103553,
		37.026272, 34.980202, 37.330818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800346, 35.565353, 37.711952>,  <37.722496, 34.983833, 37.403305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800346, 35.565353, 37.711952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128513, 35.783989, 37.644829>,  <38.325413, 35.915169, 37.604553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128513, 35.783989, 37.644829>,  <37.800346, 35.565353, 37.711952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128513, 35.783989, 37.644829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309619, -0.177962, 0.934059,
		0.480683, -0.818272, -0.315237,
		0.820414, 0.546590, -0.167809,
		38.374638, 35.947968, 37.594486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410767, 35.163197, 37.815247>,  <37.800346, 35.565353, 37.711952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410767, 35.163197, 37.815247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478481, 35.550793, 37.887253>,  <38.519108, 35.783348, 37.930458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478481, 35.550793, 37.887253>,  <38.410767, 35.163197, 37.815247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478481, 35.550793, 37.887253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328998, -0.227732, 0.916460,
		0.929034, -0.095916, -0.357347,
		0.169282, 0.968988, 0.180014,
		38.529266, 35.841488, 37.941257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165379, 35.393749, 38.144108>,  <38.410767, 35.163197, 37.815247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165379, 35.393749, 38.144108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957981, 35.720520, 38.245136>,  <38.833542, 35.916584, 38.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957981, 35.720520, 38.245136>,  <39.165379, 35.393749, 38.144108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957981, 35.720520, 38.245136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406146, -0.024646, 0.913476,
		0.752469, 0.576213, -0.319013,
		-0.518494, 0.816928, 0.252572,
		38.802433, 35.965599, 38.320908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549984, 36.030376, 38.423069>,  <39.165379, 35.393749, 38.144108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549984, 36.030376, 38.423069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192028, 35.976704, 38.593323>,  <38.977253, 35.944500, 38.695473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192028, 35.976704, 38.593323>,  <39.549984, 36.030376, 38.423069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192028, 35.976704, 38.593323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444074, -0.173006, 0.879129,
		-0.044327, 0.975738, 0.214409,
		-0.894893, -0.134183, 0.425631,
		38.923561, 35.936447, 38.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571838, 36.556862, 39.009197>,  <39.549984, 36.030376, 38.423069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571838, 36.556862, 39.009197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350124, 36.226387, 39.049568>,  <39.217094, 36.028103, 39.073792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350124, 36.226387, 39.049568>,  <39.571838, 36.556862, 39.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350124, 36.226387, 39.049568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605215, -0.316820, 0.730302,
		-0.571387, 0.465880, 0.675628,
		-0.554285, -0.826185, 0.100931,
		39.183838, 35.978531, 39.079849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363167, 36.539005, 39.691158>,  <39.571838, 36.556862, 39.009197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363167, 36.539005, 39.691158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446838, 36.195728, 39.503647>,  <39.497040, 35.989761, 39.391140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446838, 36.195728, 39.503647>,  <39.363167, 36.539005, 39.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446838, 36.195728, 39.503647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754708, -0.163157, 0.635449,
		-0.621821, -0.486713, 0.613554,
		0.209176, -0.858190, -0.468781,
		39.509590, 35.938271, 39.363014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258236, 35.898155, 40.121773>,  <39.363167, 36.539005, 39.691158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258236, 35.898155, 40.121773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545795, 35.839798, 39.849922>,  <39.718330, 35.804783, 39.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545795, 35.839798, 39.849922>,  <39.258236, 35.898155, 40.121773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545795, 35.839798, 39.849922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677939, -0.068820, 0.731890,
		-0.153552, -0.986903, 0.049434,
		0.718902, -0.145897, -0.679627,
		39.761467, 35.796028, 39.646034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524162, 35.309242, 40.281742>,  <39.258236, 35.898155, 40.121773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524162, 35.309242, 40.281742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798775, 35.513325, 40.074528>,  <39.963543, 35.635777, 39.950199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798775, 35.513325, 40.074528>,  <39.524162, 35.309242, 40.281742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798775, 35.513325, 40.074528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552003, 0.097998, 0.828063,
		0.473252, -0.854449, -0.214358,
		0.686531, 0.510209, -0.518037,
		40.004734, 35.666386, 39.919117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876354, 34.671864, 40.413338>,  <39.524162, 35.309242, 40.281742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876354, 34.671864, 40.413338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941147, 35.051682, 40.520760>,  <39.980022, 35.279572, 40.585213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941147, 35.051682, 40.520760>,  <39.876354, 34.671864, 40.413338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941147, 35.051682, 40.520760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765914, -0.050625, 0.640947,
		0.622205, -0.309512, 0.719071,
		0.161978, 0.949546, 0.268559,
		39.989742, 35.336544, 40.601326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529713, 34.901833, 40.093185>,  <39.876354, 34.671864, 40.413338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529713, 34.901833, 40.093185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842876, 35.056889, 39.898544>,  <41.030773, 35.149921, 39.781757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842876, 35.056889, 39.898544>,  <40.529713, 34.901833, 40.093185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842876, 35.056889, 39.898544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365109, -0.919583, -0.145130,
		-0.503734, -0.064041, -0.861482,
		0.782910, 0.387641, -0.486607,
		41.077751, 35.173180, 39.752563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750824, 34.434879, 39.450863>,  <40.529713, 34.901833, 40.093185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750824, 34.434879, 39.450863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077339, 34.635887, 39.564812>,  <41.273247, 34.756493, 39.633179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077339, 34.635887, 39.564812>,  <40.750824, 34.434879, 39.450863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077339, 34.635887, 39.564812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565433, -0.795990, -0.216068,
		0.118174, 0.337447, -0.933897,
		0.816285, 0.502523, 0.284869,
		41.322224, 34.786644, 39.650272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121254, 33.806652, 39.522404>,  <40.750824, 34.434879, 39.450863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121254, 33.806652, 39.522404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363071, 34.122456, 39.564735>,  <41.508163, 34.311939, 39.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363071, 34.122456, 39.564735>,  <41.121254, 33.806652, 39.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363071, 34.122456, 39.564735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795649, -0.604881, -0.032595,
		0.038278, 0.103906, -0.993850,
		0.604548, 0.789508, 0.105826,
		41.544437, 34.359306, 39.596485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658596, 33.928955, 38.994793>,  <41.121254, 33.806652, 39.522404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658596, 33.928955, 38.994793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843971, 34.083862, 39.313602>,  <41.955196, 34.176807, 39.504887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843971, 34.083862, 39.313602>,  <41.658596, 33.928955, 38.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843971, 34.083862, 39.313602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804044, -0.561850, -0.194522,
		0.372475, 0.730991, -0.571764,
		0.463439, 0.387269, 0.797024,
		41.983002, 34.200043, 39.552711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337933, 34.193344, 38.761909>,  <41.658596, 33.928955, 38.994793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337933, 34.193344, 38.761909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341911, 34.098797, 39.150555>,  <42.344299, 34.042068, 39.383743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341911, 34.098797, 39.150555>,  <42.337933, 34.193344, 38.761909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341911, 34.098797, 39.150555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706772, -0.685697, -0.174051,
		0.707372, 0.688440, 0.160234,
		0.009951, -0.236368, 0.971613,
		42.344898, 34.027885, 39.442039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077789, 34.228790, 39.000557>,  <42.337933, 34.193344, 38.761909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077789, 34.228790, 39.000557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868908, 33.949524, 39.196461>,  <42.743580, 33.781963, 39.314003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868908, 33.949524, 39.196461>,  <43.077789, 34.228790, 39.000557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868908, 33.949524, 39.196461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717188, -0.670258, -0.190776,
		0.461459, 0.251626, 0.850729,
		-0.522204, -0.698167, 0.489760,
		42.712246, 33.740074, 39.343388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557976, 33.835018, 39.605457>,  <43.077789, 34.228790, 39.000557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557976, 33.835018, 39.605457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292816, 33.627708, 39.389324>,  <43.133720, 33.503323, 39.259644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292816, 33.627708, 39.389324>,  <43.557976, 33.835018, 39.605457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292816, 33.627708, 39.389324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715718, -0.650529, -0.254087,
		-0.219814, -0.555158, 0.802173,
		-0.662895, -0.518278, -0.540332,
		43.093948, 33.472225, 39.227226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522076, 33.099155, 39.909870>,  <43.557976, 33.835018, 39.605457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522076, 33.099155, 39.909870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453102, 33.132263, 39.517254>,  <43.411716, 33.152126, 39.281685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453102, 33.132263, 39.517254>,  <43.522076, 33.099155, 39.909870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453102, 33.132263, 39.517254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726494, -0.662226, -0.183474,
		-0.665185, -0.744719, 0.054061,
		-0.172437, 0.082769, -0.981537,
		43.401371, 33.157093, 39.222794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441444, 32.384346, 39.603409>,  <43.522076, 33.099155, 39.909870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441444, 32.384346, 39.603409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525394, 32.635681, 39.303772>,  <43.575764, 32.786484, 39.123989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525394, 32.635681, 39.303772>,  <43.441444, 32.384346, 39.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525394, 32.635681, 39.303772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601852, -0.686828, -0.407482,
		-0.770535, -0.365322, -0.522317,
		0.209879, 0.628337, -0.749095,
		43.588360, 32.824181, 39.079044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306049, 32.118938, 38.962330>,  <43.441444, 32.384346, 39.603409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306049, 32.118938, 38.962330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628914, 32.349556, 38.911587>,  <43.822632, 32.487926, 38.881142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628914, 32.349556, 38.911587>,  <43.306049, 32.118938, 38.962330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628914, 32.349556, 38.911587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511054, -0.790000, -0.338709,
		-0.295501, 0.208558, -0.932299,
		0.807157, 0.576544, -0.126861,
		43.871059, 32.522518, 38.873528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891426, 32.653431, 38.542847>,  <43.306049, 32.118938, 38.962330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891426, 32.653431, 38.542847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596703, 32.730927, 38.283745>,  <42.419868, 32.777424, 38.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596703, 32.730927, 38.283745>,  <42.891426, 32.653431, 38.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596703, 32.730927, 38.283745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493774, 0.808655, -0.319790,
		0.461851, -0.555466, -0.691485,
		-0.736805, 0.193742, -0.647752,
		42.375660, 32.789047, 38.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197830, 32.953461, 37.945072>,  <42.891426, 32.653431, 38.542847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197830, 32.953461, 37.945072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829834, 33.061890, 37.831841>,  <42.609035, 33.126945, 37.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829834, 33.061890, 37.831841>,  <43.197830, 32.953461, 37.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829834, 33.061890, 37.831841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374960, 0.818977, -0.434375,
		0.114086, -0.505764, -0.855095,
		-0.919994, 0.271071, -0.283075,
		42.553837, 33.143211, 37.746918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077320, 32.975174, 37.097271>,  <43.197830, 32.953461, 37.945072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077320, 32.975174, 37.097271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863960, 33.232121, 37.317398>,  <42.735943, 33.386288, 37.449474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863960, 33.232121, 37.317398>,  <43.077320, 32.975174, 37.097271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863960, 33.232121, 37.317398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432027, 0.766232, -0.475649,
		-0.727212, -0.015959, -0.686227,
		-0.533400, 0.642366, 0.550319,
		42.703941, 33.424831, 37.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563839, 33.421844, 36.691273>,  <43.077320, 32.975174, 37.097271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563839, 33.421844, 36.691273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624649, 33.661907, 37.005394>,  <42.661137, 33.805946, 37.193867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624649, 33.661907, 37.005394>,  <42.563839, 33.421844, 36.691273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624649, 33.661907, 37.005394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242700, 0.747544, -0.618284,
		-0.958115, 0.284588, -0.032013,
		0.152025, 0.600156, 0.785303,
		42.670258, 33.841953, 37.240986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257175, 34.168594, 36.535419>,  <42.563839, 33.421844, 36.691273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257175, 34.168594, 36.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581345, 34.162064, 36.769665>,  <42.775845, 34.158146, 36.910213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581345, 34.162064, 36.769665>,  <42.257175, 34.168594, 36.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581345, 34.162064, 36.769665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393380, 0.755905, -0.523316,
		-0.434127, 0.654478, 0.619025,
		0.810423, -0.016327, 0.585617,
		42.824471, 34.157166, 36.945351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348186, 33.921783, 35.782288>,  <42.257175, 34.168594, 36.535419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348186, 33.921783, 35.782288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607410, 33.789940, 36.056915>,  <42.762947, 33.710835, 36.221691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607410, 33.789940, 36.056915>,  <42.348186, 33.921783, 35.782288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607410, 33.789940, 36.056915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283995, -0.731884, -0.619429,
		0.706654, 0.596411, -0.380702,
		0.648064, -0.329605, 0.686567,
		42.801830, 33.691059, 36.262886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000332, 33.815704, 35.539795>,  <42.348186, 33.921783, 35.782288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000332, 33.815704, 35.539795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947472, 33.530731, 35.815468>,  <42.915756, 33.359749, 35.980873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947472, 33.530731, 35.815468>,  <43.000332, 33.815704, 35.539795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947472, 33.530731, 35.815468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021616, -0.697191, -0.716559,
		0.990994, -0.079798, 0.107535,
		-0.132153, -0.712430, 0.689187,
		42.907825, 33.317001, 36.022224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193928, 33.272171, 35.155300>,  <43.000332, 33.815704, 35.539795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193928, 33.272171, 35.155300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046364, 33.079086, 35.473015>,  <42.957825, 32.963234, 35.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046364, 33.079086, 35.473015>,  <43.193928, 33.272171, 35.155300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046364, 33.079086, 35.473015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024851, -0.849137, -0.527588,
		0.929134, -0.214369, 0.301256,
		-0.368906, -0.482714, 0.794289,
		42.935692, 32.934273, 35.711300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888844, 32.910461, 35.323280>,  <43.193928, 33.272171, 35.155300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888844, 32.910461, 35.323280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845184, 33.083248, 34.965176>,  <43.818989, 33.186920, 34.750313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845184, 33.083248, 34.965176>,  <43.888844, 32.910461, 35.323280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845184, 33.083248, 34.965176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458368, 0.821042, 0.340276,
		0.882035, -0.373217, -0.287619,
		-0.109150, 0.431971, -0.895258,
		43.812439, 33.212841, 34.696598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565372, 33.093765, 35.112141>,  <43.888844, 32.910461, 35.323280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565372, 33.093765, 35.112141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276615, 33.324448, 34.959152>,  <44.103359, 33.462856, 34.867359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276615, 33.324448, 34.959152>,  <44.565372, 33.093765, 35.112141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276615, 33.324448, 34.959152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475232, 0.814911, 0.331773,
		0.503011, 0.057745, -0.862349,
		-0.721896, 0.576702, -0.382467,
		44.060047, 33.497459, 34.844414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734169, 33.487190, 34.552910>,  <44.565372, 33.093765, 35.112141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734169, 33.487190, 34.552910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440582, 33.688923, 34.734875>,  <44.264431, 33.809963, 34.844051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440582, 33.688923, 34.734875>,  <44.734169, 33.487190, 34.552910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440582, 33.688923, 34.734875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637516, 0.742570, 0.205339,
		-0.234242, 0.440723, -0.866541,
		-0.733965, 0.504335, 0.454909,
		44.220394, 33.840225, 34.871346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748280, 34.117519, 34.148354>,  <44.734169, 33.487190, 34.552910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748280, 34.117519, 34.148354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540039, 34.182457, 34.483643>,  <44.415092, 34.221420, 34.684814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540039, 34.182457, 34.483643>,  <44.748280, 34.117519, 34.148354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540039, 34.182457, 34.483643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456212, 0.882746, 0.112381,
		-0.721693, 0.440913, -0.533624,
		-0.520605, 0.162341, 0.838222,
		44.383858, 34.231159, 34.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639538, 34.830349, 34.221592>,  <44.748280, 34.117519, 34.148354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639538, 34.830349, 34.221592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629738, 34.665398, 34.585865>,  <44.623859, 34.566425, 34.804428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.629738, 34.665398, 34.585865>,  <44.639538, 34.830349, 34.221592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629738, 34.665398, 34.585865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359173, 0.846500, 0.392978,
		-0.932949, 0.336720, 0.127377,
		-0.024499, -0.412380, 0.910683,
		44.622387, 34.541683, 34.859070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348911, 34.415070, 34.556110>,  <44.639538, 34.830349, 34.221592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348911, 34.415070, 34.556110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383404, 34.787388, 34.698200>,  <45.404099, 35.010780, 34.783455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383404, 34.787388, 34.698200>,  <45.348911, 34.415070, 34.556110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383404, 34.787388, 34.698200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930905, -0.202303, 0.304122,
		0.354938, 0.304453, -0.883927,
		0.086230, 0.930796, 0.355221,
		45.409271, 35.066628, 34.804768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881851, 34.728691, 34.245850>,  <45.348911, 34.415070, 34.556110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881851, 34.728691, 34.245850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857983, 34.884392, 34.613529>,  <45.843662, 34.977810, 34.834137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857983, 34.884392, 34.613529>,  <45.881851, 34.728691, 34.245850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857983, 34.884392, 34.613529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928320, -0.316877, 0.194448,
		0.366962, 0.864912, -0.342440,
		-0.059669, 0.389249, 0.919198,
		45.840080, 35.001167, 34.889290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377350, 35.289124, 34.413151>,  <45.881851, 34.728691, 34.245850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377350, 35.289124, 34.413151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279800, 35.059551, 34.725849>,  <46.221272, 34.921810, 34.913467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279800, 35.059551, 34.725849>,  <46.377350, 35.289124, 34.413151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279800, 35.059551, 34.725849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929906, -0.367225, 0.020493,
		0.275316, 0.731952, 0.623255,
		-0.243874, -0.573927, 0.781750,
		46.206638, 34.887375, 34.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970524, 35.474209, 34.036560>,  <46.377350, 35.289124, 34.413151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970524, 35.474209, 34.036560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351818, 35.493092, 34.155968>,  <47.580593, 35.504421, 34.227612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351818, 35.493092, 34.155968>,  <46.970524, 35.474209, 34.036560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.351818, 35.493092, 34.155968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297545, -0.026585, 0.954338,
		0.052996, -0.998531, -0.011293,
		0.953236, 0.047216, 0.298517,
		47.637791, 35.507256, 34.245522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160042, 34.926014, 34.497986>,  <46.970524, 35.474209, 34.036560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160042, 34.926014, 34.497986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406136, 35.227451, 34.590576>,  <47.553791, 35.408314, 34.646130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406136, 35.227451, 34.590576>,  <47.160042, 34.926014, 34.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406136, 35.227451, 34.590576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085402, -0.228188, 0.969864,
		0.783706, -0.616461, -0.076030,
		0.615232, 0.753596, 0.231480,
		47.590706, 35.453529, 34.660019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796108, 34.756420, 34.854431>,  <47.160042, 34.926014, 34.497986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796108, 34.756420, 34.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672829, 35.126835, 34.941589>,  <47.598862, 35.349083, 34.993885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672829, 35.126835, 34.941589>,  <47.796108, 34.756420, 34.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672829, 35.126835, 34.941589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012379, -0.225123, 0.974252,
		0.951243, 0.302957, 0.057919,
		-0.308195, 0.926033, 0.217897,
		47.580372, 35.404644, 35.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.186062, 36.044777, 26.438456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947983, 36.351414, 26.342066>,  <34.805134, 36.535397, 26.284231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947983, 36.351414, 26.342066>,  <35.186062, 36.044777, 26.438456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947983, 36.351414, 26.342066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639176, -0.269896, 0.720146,
		0.487021, 0.582659, 0.650631,
		-0.595202, 0.766593, -0.240976,
		34.769421, 36.581390, 26.269773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974892, 36.227058, 27.046944>,  <35.186062, 36.044777, 26.438456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974892, 36.227058, 27.046944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718468, 36.411163, 26.801277>,  <34.564613, 36.521626, 26.653877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718468, 36.411163, 26.801277>,  <34.974892, 36.227058, 27.046944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718468, 36.411163, 26.801277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740781, -0.161801, 0.651970,
		0.200703, 0.872916, 0.444675,
		-0.641063, 0.460259, -0.614166,
		34.526150, 36.549240, 26.617027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605736, 36.617443, 27.488518>,  <34.974892, 36.227058, 27.046944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605736, 36.617443, 27.488518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387497, 36.596832, 27.153933>,  <34.256554, 36.584465, 26.953180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.387497, 36.596832, 27.153933>,  <34.605736, 36.617443, 27.488518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387497, 36.596832, 27.153933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837810, 0.009611, 0.545878,
		-0.020087, 0.998626, -0.048412,
		-0.545593, -0.051525, -0.836465,
		34.223820, 36.581375, 26.902992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092033, 37.117092, 27.563660>,  <34.605736, 36.617443, 27.488518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092033, 37.117092, 27.563660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923500, 36.865913, 27.301924>,  <33.822380, 36.715206, 27.144882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923500, 36.865913, 27.301924>,  <34.092033, 37.117092, 27.563660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923500, 36.865913, 27.301924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733239, -0.188727, 0.653256,
		-0.533703, 0.755025, -0.380919,
		-0.421334, -0.627949, -0.654337,
		33.797100, 36.677528, 27.105623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337841, 37.225681, 27.658375>,  <34.092033, 37.117092, 27.563660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337841, 37.225681, 27.658375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360981, 36.893379, 27.436924>,  <33.374866, 36.694000, 27.304054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.360981, 36.893379, 27.436924>,  <33.337841, 37.225681, 27.658375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360981, 36.893379, 27.436924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648028, -0.453095, 0.612180,
		-0.759416, 0.323348, -0.564565,
		0.057854, -0.830753, -0.553626,
		33.378338, 36.644154, 27.270836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628101, 37.042461, 27.570389>,  <33.337841, 37.225681, 27.658375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628101, 37.042461, 27.570389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849079, 36.712673, 27.521311>,  <32.981667, 36.514801, 27.491863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849079, 36.712673, 27.521311>,  <32.628101, 37.042461, 27.570389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849079, 36.712673, 27.521311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499681, -0.445378, 0.742939,
		-0.667178, -0.349122, -0.658018,
		0.552443, -0.824471, -0.122697,
		33.014812, 36.465332, 27.484501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089634, 36.514534, 27.548206>,  <32.628101, 37.042461, 27.570389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089634, 36.514534, 27.548206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437157, 36.331482, 27.623833>,  <32.645672, 36.221653, 27.669209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437157, 36.331482, 27.623833>,  <32.089634, 36.514534, 27.548206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437157, 36.331482, 27.623833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445574, -0.556064, 0.701610,
		-0.215944, -0.693808, -0.687021,
		0.868811, -0.457628, 0.189064,
		32.697800, 36.194195, 27.680552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008034, 35.728870, 27.511446>,  <32.089634, 36.514534, 27.548206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008034, 35.728870, 27.511446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307159, 35.839497, 27.752869>,  <32.486637, 35.905872, 27.897722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307159, 35.839497, 27.752869>,  <32.008034, 35.728870, 27.511446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307159, 35.839497, 27.752869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397095, -0.542233, 0.740473,
		0.532059, -0.793407, -0.295667,
		0.747817, 0.276567, 0.603557,
		32.531506, 35.922466, 27.933935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238831, 35.142845, 27.720398>,  <32.008034, 35.728870, 27.511446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238831, 35.142845, 27.720398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360161, 35.400894, 28.000916>,  <32.432961, 35.555721, 28.169226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360161, 35.400894, 28.000916>,  <32.238831, 35.142845, 27.720398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360161, 35.400894, 28.000916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351392, -0.608371, 0.711624,
		0.885730, -0.462283, 0.042156,
		0.303325, 0.645120, 0.701295,
		32.451157, 35.594429, 28.211304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599197, 34.757088, 28.297340>,  <32.238831, 35.142845, 27.720398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599197, 34.757088, 28.297340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496490, 35.093521, 28.487768>,  <32.434864, 35.295383, 28.602024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.496490, 35.093521, 28.487768>,  <32.599197, 34.757088, 28.297340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496490, 35.093521, 28.487768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254782, -0.534067, 0.806138,
		0.932285, 0.085699, 0.351426,
		-0.256770, 0.841087, 0.476068,
		32.419460, 35.345848, 28.630589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822193, 34.595165, 28.965940>,  <32.599197, 34.757088, 28.297340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822193, 34.595165, 28.965940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639404, 34.948410, 29.008421>,  <32.529732, 35.160358, 29.033909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639404, 34.948410, 29.008421>,  <32.822193, 34.595165, 28.965940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639404, 34.948410, 29.008421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325451, -0.277125, 0.904037,
		0.827801, 0.378560, 0.414050,
		-0.456976, 0.883116, 0.106201,
		32.502312, 35.213345, 29.040281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027206, 34.855797, 29.612219>,  <32.822193, 34.595165, 28.965940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027206, 34.855797, 29.612219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663185, 34.983028, 29.505917>,  <32.444771, 35.059368, 29.442135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.663185, 34.983028, 29.505917>,  <33.027206, 34.855797, 29.612219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663185, 34.983028, 29.505917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340134, -0.206677, 0.917384,
		0.236877, 0.925262, 0.296277,
		-0.910054, 0.318081, -0.265756,
		32.390167, 35.078453, 29.426189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835926, 35.278957, 30.228613>,  <33.027206, 34.855797, 29.612219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835926, 35.278957, 30.228613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490547, 35.215767, 30.036987>,  <32.283321, 35.177853, 29.922012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.490547, 35.215767, 30.036987>,  <32.835926, 35.278957, 30.228613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490547, 35.215767, 30.036987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407768, -0.340491, 0.847225,
		-0.296956, 0.926882, 0.229580,
		-0.863448, -0.157973, -0.479064,
		32.231514, 35.168373, 29.893269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250591, 35.558403, 30.659927>,  <32.835926, 35.278957, 30.228613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250591, 35.558403, 30.659927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.062881, 35.305607, 30.413233>,  <31.950256, 35.153927, 30.265215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.062881, 35.305607, 30.413233>,  <32.250591, 35.558403, 30.659927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062881, 35.305607, 30.413233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563302, -0.323620, 0.760238,
		-0.680055, 0.704168, -0.204137,
		-0.469273, -0.631994, -0.616738,
		31.922100, 35.116009, 30.228210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668150, 35.592159, 30.924534>,  <32.250591, 35.558403, 30.659927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668150, 35.592159, 30.924534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.641159, 35.270035, 30.688934>,  <31.624966, 35.076759, 30.547575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.641159, 35.270035, 30.688934>,  <31.668150, 35.592159, 30.924534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641159, 35.270035, 30.688934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658624, -0.407487, 0.632589,
		-0.749441, 0.430614, -0.502902,
		-0.067475, -0.805311, -0.589000,
		31.620916, 35.028442, 30.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952457, 35.473671, 30.749950>,  <31.668150, 35.592159, 30.924534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952457, 35.473671, 30.749950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.198061, 35.158146, 30.738823>,  <31.345423, 34.968830, 30.732147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.198061, 35.158146, 30.738823>,  <30.952457, 35.473671, 30.749950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198061, 35.158146, 30.738823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457114, -0.384108, 0.802189,
		-0.643460, -0.479834, -0.596422,
		0.614008, -0.788810, -0.027819,
		31.382263, 34.921505, 30.730476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514582, 34.982506, 30.998272>,  <30.952457, 35.473671, 30.749950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514582, 34.982506, 30.998272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.866268, 34.793972, 31.026041>,  <31.077280, 34.680851, 31.042702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.866268, 34.793972, 31.026041>,  <30.514582, 34.982506, 30.998272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866268, 34.793972, 31.026041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303797, -0.442410, 0.843789,
		-0.366997, -0.762964, -0.532165,
		0.879216, -0.471338, 0.069423,
		31.130033, 34.652569, 31.046867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376490, 34.344898, 31.263802>,  <30.514582, 34.982506, 30.998272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376490, 34.344898, 31.263802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.769140, 34.363007, 31.337950>,  <31.004730, 34.373871, 31.382439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.769140, 34.363007, 31.337950>,  <30.376490, 34.344898, 31.263802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769140, 34.363007, 31.337950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141901, -0.476303, 0.867756,
		0.127581, -0.878115, -0.461126,
		0.981625, 0.045275, 0.185372,
		31.063627, 34.376591, 31.393562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469950, 33.663662, 31.507032>,  <30.376490, 34.344898, 31.263802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469950, 33.663662, 31.507032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.777645, 33.889042, 31.627565>,  <30.962263, 34.024269, 31.699886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.777645, 33.889042, 31.627565>,  <30.469950, 33.663662, 31.507032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777645, 33.889042, 31.627565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091370, -0.369754, 0.924626,
		0.632396, -0.738791, -0.232947,
		0.769238, 0.563445, 0.301334,
		31.008417, 34.058075, 31.717966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848057, 33.238441, 31.962191>,  <30.469950, 33.663662, 31.507032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848057, 33.238441, 31.962191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.988358, 33.602352, 32.050983>,  <31.072538, 33.820698, 32.104259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.988358, 33.602352, 32.050983>,  <30.848057, 33.238441, 31.962191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988358, 33.602352, 32.050983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059879, -0.214767, 0.974828,
		0.934552, -0.355215, -0.020853,
		0.350752, 0.909779, 0.221980,
		31.093584, 33.875286, 32.117577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284695, 33.043602, 32.454567>,  <30.848057, 33.238441, 31.962191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284695, 33.043602, 32.454567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227152, 33.434254, 32.518433>,  <31.192627, 33.668644, 32.556751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227152, 33.434254, 32.518433>,  <31.284695, 33.043602, 32.454567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227152, 33.434254, 32.518433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071326, -0.171153, 0.982659,
		0.987025, 0.129974, 0.094280,
		-0.143856, 0.976634, 0.159661,
		31.183994, 33.727245, 32.566330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677116, 33.251442, 33.127449>,  <31.284695, 33.043602, 32.454567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677116, 33.251442, 33.127449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.386370, 33.523678, 33.090656>,  <31.211922, 33.687019, 33.068581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.386370, 33.523678, 33.090656>,  <31.677116, 33.251442, 33.127449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386370, 33.523678, 33.090656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223437, -0.107710, 0.968749,
		0.649415, 0.724703, 0.230360,
		-0.726867, 0.680591, -0.091977,
		31.168310, 33.727856, 33.063065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382570, 33.097515, 33.769115>,  <31.677116, 33.251442, 33.127449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382570, 33.097515, 33.769115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679983, 32.881256, 33.926525>,  <31.858431, 32.751499, 34.020969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679983, 32.881256, 33.926525>,  <31.382570, 33.097515, 33.769115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679983, 32.881256, 33.926525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646884, 0.432439, -0.628122,
		0.169420, 0.721591, 0.671270,
		0.743531, -0.540650, 0.393522,
		31.903042, 32.719063, 34.044582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912735, 33.498676, 34.063091>,  <31.382570, 33.097515, 33.769115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912735, 33.498676, 34.063091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.074532, 33.154808, 33.938286>,  <32.171612, 32.948486, 33.863403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.074532, 33.154808, 33.938286>,  <31.912735, 33.498676, 34.063091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074532, 33.154808, 33.938286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596249, 0.506581, -0.622786,
		0.693449, 0.065878, 0.717488,
		0.404493, -0.859672, -0.312009,
		32.195881, 32.896908, 33.844685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663422, 33.525265, 34.135956>,  <31.912735, 33.498676, 34.063091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663422, 33.525265, 34.135956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603271, 33.220394, 33.884090>,  <32.567181, 33.037472, 33.732971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603271, 33.220394, 33.884090>,  <32.663422, 33.525265, 34.135956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603271, 33.220394, 33.884090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715578, 0.355551, -0.601275,
		0.682155, -0.540987, 0.491933,
		-0.150375, -0.762179, -0.629659,
		32.558159, 32.991741, 33.695194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358948, 33.267155, 33.999283>,  <32.663422, 33.525265, 34.135956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358948, 33.267155, 33.999283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130550, 33.132439, 33.699806>,  <32.993511, 33.051609, 33.520119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130550, 33.132439, 33.699806>,  <33.358948, 33.267155, 33.999283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130550, 33.132439, 33.699806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765463, 0.111195, -0.633800,
		0.296710, -0.934990, 0.194311,
		-0.570990, -0.336793, -0.748693,
		32.959251, 33.031403, 33.475197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786781, 32.788044, 33.637497>,  <33.358948, 33.267155, 33.999283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786781, 32.788044, 33.637497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511520, 32.909065, 33.373707>,  <33.346363, 32.981678, 33.215435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.511520, 32.909065, 33.373707>,  <33.786781, 32.788044, 33.637497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511520, 32.909065, 33.373707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720334, 0.175965, -0.670935,
		-0.086950, -0.936748, -0.339031,
		-0.688155, 0.302554, -0.659472,
		33.305073, 32.999832, 33.175865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053020, 32.505798, 33.019108>,  <33.786781, 32.788044, 33.637497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053020, 32.505798, 33.019108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779789, 32.755566, 32.867577>,  <33.615849, 32.905426, 32.776657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.779789, 32.755566, 32.867577>,  <34.053020, 32.505798, 33.019108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779789, 32.755566, 32.867577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505130, 0.029284, -0.862547,
		-0.527492, -0.780545, -0.335413,
		-0.683078, 0.624414, -0.378829,
		33.574867, 32.942890, 32.753929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884338, 32.310684, 32.385830>,  <34.053020, 32.505798, 33.019108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884338, 32.310684, 32.385830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810680, 32.703842, 32.386803>,  <33.766487, 32.939739, 32.387386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810680, 32.703842, 32.386803>,  <33.884338, 32.310684, 32.385830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810680, 32.703842, 32.386803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344433, 0.066841, -0.936428,
		-0.920575, -0.171598, -0.350850,
		-0.184140, 0.982897, 0.002429,
		33.755440, 32.998711, 32.387531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495590, 32.373974, 31.846834>,  <33.884338, 32.310684, 32.385830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495590, 32.373974, 31.846834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625977, 32.744267, 31.923529>,  <33.704208, 32.966442, 31.969545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625977, 32.744267, 31.923529>,  <33.495590, 32.373974, 31.846834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625977, 32.744267, 31.923529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437408, 0.032115, -0.898689,
		-0.838104, 0.376812, -0.394455,
		0.325969, 0.925733, 0.191736,
		33.723766, 33.021988, 31.981049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243523, 32.790298, 31.362926>,  <33.495590, 32.373974, 31.846834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243523, 32.790298, 31.362926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548481, 33.016510, 31.488745>,  <33.731457, 33.152237, 31.564236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548481, 33.016510, 31.488745>,  <33.243523, 32.790298, 31.362926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548481, 33.016510, 31.488745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240915, 0.203084, -0.949061,
		-0.600597, 0.799336, 0.018586,
		0.762393, 0.565526, 0.314543,
		33.777199, 33.186169, 31.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199547, 33.327084, 30.922630>,  <33.243523, 32.790298, 31.362926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199547, 33.327084, 30.922630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568172, 33.310780, 31.077061>,  <33.789349, 33.300999, 31.169720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568172, 33.310780, 31.077061>,  <33.199547, 33.327084, 30.922630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568172, 33.310780, 31.077061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385047, 0.222881, -0.895580,
		-0.049546, 0.973993, 0.221093,
		0.921566, -0.040759, 0.386076,
		33.844643, 33.298553, 31.192884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577244, 33.844471, 30.625822>,  <33.199547, 33.327084, 30.922630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577244, 33.844471, 30.625822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878925, 33.614799, 30.753250>,  <34.059937, 33.476997, 30.829706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.878925, 33.614799, 30.753250>,  <33.577244, 33.844471, 30.625822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878925, 33.614799, 30.753250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507438, 0.201737, -0.837741,
		0.416749, 0.793483, 0.443513,
		0.754206, -0.574183, 0.318570,
		34.105186, 33.442543, 30.848822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152008, 34.320221, 30.420704>,  <33.577244, 33.844471, 30.625822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152008, 34.320221, 30.420704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306301, 33.954075, 30.466869>,  <34.398876, 33.734386, 30.494568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306301, 33.954075, 30.466869>,  <34.152008, 34.320221, 30.420704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306301, 33.954075, 30.466869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661436, 0.187154, -0.726276,
		0.643207, 0.356485, 0.677646,
		0.385731, -0.915364, 0.115414,
		34.422020, 33.679466, 30.501493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871098, 34.420879, 30.453413>,  <34.152008, 34.320221, 30.420704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871098, 34.420879, 30.453413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843784, 34.026844, 30.390251>,  <34.827396, 33.790421, 30.352354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843784, 34.026844, 30.390251>,  <34.871098, 34.420879, 30.453413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843784, 34.026844, 30.390251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789000, 0.043543, -0.612848,
		0.610586, -0.166436, 0.774263,
		-0.068286, -0.985090, -0.157905,
		34.823299, 33.731316, 30.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523773, 34.098003, 30.593025>,  <34.871098, 34.420879, 30.453413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523773, 34.098003, 30.593025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321735, 33.874329, 30.330061>,  <35.200512, 33.740124, 30.172283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321735, 33.874329, 30.330061>,  <35.523773, 34.098003, 30.593025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321735, 33.874329, 30.330061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779916, 0.030480, -0.625142,
		0.369611, -0.828478, 0.420727,
		-0.505092, -0.559191, -0.657409,
		35.170208, 33.706570, 30.132837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973377, 33.551262, 30.356707>,  <35.523773, 34.098003, 30.593025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973377, 33.551262, 30.356707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681957, 33.570099, 30.083359>,  <35.507103, 33.581402, 29.919350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681957, 33.570099, 30.083359>,  <35.973377, 33.551262, 30.356707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681957, 33.570099, 30.083359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672806, 0.236513, -0.700994,
		0.128613, -0.970486, -0.203997,
		-0.728553, 0.047093, -0.683368,
		35.463390, 33.584229, 29.878347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242477, 33.190411, 29.718609>,  <35.973377, 33.551262, 30.356707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242477, 33.190411, 29.718609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933144, 33.413116, 29.597303>,  <35.747543, 33.546741, 29.524521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933144, 33.413116, 29.597303>,  <36.242477, 33.190411, 29.718609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933144, 33.413116, 29.597303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488568, 0.218498, -0.844725,
		-0.404054, -0.801416, -0.440991,
		-0.773331, 0.556769, -0.303262,
		35.701145, 33.580147, 29.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098114, 33.020744, 29.064098>,  <36.242477, 33.190411, 29.718609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098114, 33.020744, 29.064098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939648, 33.386738, 29.094707>,  <35.844566, 33.606335, 29.113073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939648, 33.386738, 29.094707>,  <36.098114, 33.020744, 29.064098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939648, 33.386738, 29.094707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366562, 0.234021, -0.900481,
		-0.841834, -0.328690, -0.428110,
		-0.396166, 0.914985, 0.076521,
		35.820797, 33.661232, 29.117664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801731, 33.252506, 28.396112>,  <36.098114, 33.020744, 29.064098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801731, 33.252506, 28.396112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825233, 33.609383, 28.575237>,  <35.839333, 33.823509, 28.682713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825233, 33.609383, 28.575237>,  <35.801731, 33.252506, 28.396112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825233, 33.609383, 28.575237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144955, 0.436208, -0.888094,
		-0.987692, 0.117090, -0.103700,
		0.058752, 0.892195, 0.447812,
		35.842857, 33.877041, 28.709581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.524036, 33.663624, 27.854656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.693359, 33.926613, 28.103987>,  <35.794952, 34.084408, 28.253586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.693359, 33.926613, 28.103987>,  <35.524036, 33.663624, 27.854656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693359, 33.926613, 28.103987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377281, 0.497588, -0.781067,
		-0.823691, 0.565803, -0.037417,
		0.423312, 0.657474, 0.623326,
		35.820354, 34.123856, 28.290985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389748, 34.451504, 27.560005>,  <35.524036, 33.663624, 27.854656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389748, 34.451504, 27.560005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715408, 34.459042, 27.792143>,  <35.910805, 34.463566, 27.931425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715408, 34.459042, 27.792143>,  <35.389748, 34.451504, 27.560005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715408, 34.459042, 27.792143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468872, 0.568232, -0.676218,
		-0.342514, 0.822652, 0.453792,
		0.814152, 0.018844, 0.580346,
		35.959656, 34.464695, 27.966248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523155, 35.186844, 27.649916>,  <35.389748, 34.451504, 27.560005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523155, 35.186844, 27.649916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871948, 35.009605, 27.733168>,  <36.081223, 34.903263, 27.783119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871948, 35.009605, 27.733168>,  <35.523155, 35.186844, 27.649916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871948, 35.009605, 27.733168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458564, 0.590460, -0.664136,
		0.171387, 0.674552, 0.718057,
		0.871978, -0.443099, 0.208128,
		36.133541, 34.876675, 27.795607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055290, 35.743324, 27.709528>,  <35.523155, 35.186844, 27.649916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055290, 35.743324, 27.709528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248451, 35.400185, 27.639206>,  <36.364349, 35.194302, 27.597013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248451, 35.400185, 27.639206>,  <36.055290, 35.743324, 27.709528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248451, 35.400185, 27.639206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534571, 0.447806, -0.716731,
		0.693571, 0.252131, 0.674826,
		0.482901, -0.857846, -0.175803,
		36.393322, 35.142830, 27.586466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802395, 35.945965, 27.834988>,  <36.055290, 35.743324, 27.709528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802395, 35.945965, 27.834988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768150, 35.631107, 27.590666>,  <36.747604, 35.442192, 27.444073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768150, 35.631107, 27.590666>,  <36.802395, 35.945965, 27.834988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768150, 35.631107, 27.590666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573503, 0.462374, -0.676243,
		0.814718, -0.408193, 0.411841,
		-0.085613, -0.787140, -0.610804,
		36.742466, 35.394966, 27.407425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522648, 35.867004, 27.618229>,  <36.802395, 35.945965, 27.834988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522648, 35.867004, 27.618229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268913, 35.689369, 27.365118>,  <37.116673, 35.582790, 27.213251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268913, 35.689369, 27.365118>,  <37.522648, 35.867004, 27.618229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268913, 35.689369, 27.365118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562171, 0.296870, -0.771902,
		0.530643, -0.845373, 0.061337,
		-0.634336, -0.444086, -0.632776,
		37.078613, 35.556145, 27.175285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870285, 35.496799, 27.407513>,  <37.522648, 35.867004, 27.618229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870285, 35.496799, 27.407513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589233, 35.568756, 27.132135>,  <37.420605, 35.611931, 26.966909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589233, 35.568756, 27.132135>,  <37.870285, 35.496799, 27.407513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589233, 35.568756, 27.132135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711496, 0.190556, -0.676359,
		0.009517, -0.965053, -0.261880,
		-0.702626, 0.179890, -0.688445,
		37.378445, 35.622723, 26.925602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979107, 35.002552, 26.849026>,  <37.870285, 35.496799, 27.407513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979107, 35.002552, 26.849026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774166, 35.313412, 26.702856>,  <37.651203, 35.499928, 26.615154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774166, 35.313412, 26.702856>,  <37.979107, 35.002552, 26.849026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774166, 35.313412, 26.702856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679642, 0.106821, -0.725724,
		-0.524963, -0.620181, -0.582915,
		-0.512348, 0.777152, -0.365424,
		37.620461, 35.546558, 26.593229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997875, 34.985184, 26.200382>,  <37.979107, 35.002552, 26.849026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997875, 34.985184, 26.200382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884743, 35.368240, 26.222012>,  <37.816864, 35.598076, 26.234989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884743, 35.368240, 26.222012>,  <37.997875, 34.985184, 26.200382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884743, 35.368240, 26.222012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711689, 0.247322, -0.657518,
		-0.643042, -0.147485, -0.751495,
		-0.282835, 0.957643, 0.054075,
		37.799892, 35.655533, 26.238234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056221, 35.215229, 25.519718>,  <37.997875, 34.985184, 26.200382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056221, 35.215229, 25.519718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028332, 35.534889, 25.758547>,  <38.011600, 35.726685, 25.901844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028332, 35.534889, 25.758547>,  <38.056221, 35.215229, 25.519718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028332, 35.534889, 25.758547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736949, 0.444657, -0.509103,
		-0.672343, 0.404515, -0.619937,
		-0.069720, 0.799154, 0.597070,
		38.007416, 35.774635, 25.937668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229153, 35.808823, 25.036880>,  <38.056221, 35.215229, 25.519718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229153, 35.808823, 25.036880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248020, 35.975677, 25.399927>,  <38.259342, 36.075790, 25.617756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248020, 35.975677, 25.399927>,  <38.229153, 35.808823, 25.036880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248020, 35.975677, 25.399927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756156, 0.578802, -0.305312,
		-0.652689, 0.700703, -0.288120,
		0.047169, 0.417137, 0.907619,
		38.262169, 36.100819, 25.672213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338348, 36.632225, 24.967855>,  <38.229153, 35.808823, 25.036880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338348, 36.632225, 24.967855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454075, 36.486950, 25.322119>,  <38.523510, 36.399784, 25.534676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454075, 36.486950, 25.322119>,  <38.338348, 36.632225, 24.967855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454075, 36.486950, 25.322119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853440, 0.516889, -0.066833,
		-0.433513, 0.775191, 0.459505,
		0.289321, -0.363187, 0.885657,
		38.540871, 36.377995, 25.587816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312721, 37.251057, 25.400946>,  <38.338348, 36.632225, 24.967855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312721, 37.251057, 25.400946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567177, 36.966053, 25.519371>,  <38.719852, 36.795052, 25.590427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567177, 36.966053, 25.519371>,  <38.312721, 37.251057, 25.400946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567177, 36.966053, 25.519371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771428, 0.594740, -0.226237,
		-0.014886, 0.372312, 0.927988,
		0.636142, -0.712509, 0.296066,
		38.758018, 36.752300, 25.608191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865608, 37.605728, 25.716536>,  <38.312721, 37.251057, 25.400946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865608, 37.605728, 25.716536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021832, 37.238846, 25.685017>,  <39.115566, 37.018719, 25.666105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021832, 37.238846, 25.685017>,  <38.865608, 37.605728, 25.716536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021832, 37.238846, 25.685017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873386, 0.396227, -0.283196,
		0.290969, 0.041784, 0.955820,
		0.390555, -0.917201, -0.078796,
		39.139000, 36.963684, 25.661377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468296, 37.566288, 26.130646>,  <38.865608, 37.605728, 25.716536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468296, 37.566288, 26.130646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531433, 37.284477, 25.853884>,  <39.569317, 37.115391, 25.687826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531433, 37.284477, 25.853884>,  <39.468296, 37.566288, 26.130646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531433, 37.284477, 25.853884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879545, 0.418820, -0.225811,
		0.448873, -0.572920, 0.685767,
		0.157841, -0.704523, -0.691906,
		39.578785, 37.073120, 25.646313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251720, 37.421597, 26.233521>,  <39.468296, 37.566288, 26.130646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251720, 37.421597, 26.233521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152622, 37.278301, 25.873457>,  <40.093163, 37.192326, 25.657419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152622, 37.278301, 25.873457>,  <40.251720, 37.421597, 26.233521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152622, 37.278301, 25.873457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938301, 0.142670, -0.315020,
		0.241277, -0.922666, 0.300788,
		-0.247745, -0.358236, -0.900161,
		40.078300, 37.170830, 25.603409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815117, 37.130341, 26.036251>,  <40.251720, 37.421597, 26.233521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815117, 37.130341, 26.036251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644165, 37.148254, 25.675066>,  <40.541595, 37.159000, 25.458355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644165, 37.148254, 25.675066>,  <40.815117, 37.130341, 26.036251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644165, 37.148254, 25.675066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885943, 0.219759, -0.408426,
		0.180143, -0.974526, -0.133596,
		-0.427381, 0.044783, -0.902962,
		40.515949, 37.161690, 25.404177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257729, 36.725018, 25.580109>,  <40.815117, 37.130341, 26.036251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257729, 36.725018, 25.580109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053524, 36.966221, 25.334913>,  <40.931000, 37.110943, 25.187796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053524, 36.966221, 25.334913>,  <41.257729, 36.725018, 25.580109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053524, 36.966221, 25.334913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799421, 0.070275, -0.596646,
		-0.316705, -0.794633, -0.517934,
		-0.510513, 0.603009, -0.612990,
		40.900372, 37.147125, 25.151016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396805, 36.558029, 24.919218>,  <41.257729, 36.725018, 25.580109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396805, 36.558029, 24.919218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251488, 36.922653, 24.842196>,  <41.164299, 37.141426, 24.795982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.251488, 36.922653, 24.842196>,  <41.396805, 36.558029, 24.919218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251488, 36.922653, 24.842196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778958, 0.183802, -0.599534,
		-0.511119, -0.367800, -0.776841,
		-0.363293, 0.911559, -0.192556,
		41.142498, 37.196121, 24.784428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355904, 36.652016, 24.202299>,  <41.396805, 36.558029, 24.919218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355904, 36.652016, 24.202299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.367714, 37.036606, 24.311623>,  <41.374802, 37.267361, 24.377216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.367714, 37.036606, 24.311623>,  <41.355904, 36.652016, 24.202299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367714, 37.036606, 24.311623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625136, 0.195592, -0.755611,
		-0.779957, 0.193165, -0.595276,
		0.029527, 0.961473, 0.273308,
		41.376572, 37.325047, 24.393616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156631, 37.086788, 23.652681>,  <41.355904, 36.652016, 24.202299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156631, 37.086788, 23.652681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.333427, 37.365936, 23.878111>,  <41.439507, 37.533424, 24.013369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.333427, 37.365936, 23.878111>,  <41.156631, 37.086788, 23.652681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333427, 37.365936, 23.878111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535106, 0.299116, -0.790057,
		-0.719934, 0.650772, -0.241228,
		0.441992, 0.697872, 0.563576,
		41.466026, 37.575298, 24.047184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068760, 37.694901, 23.418320>,  <41.156631, 37.086788, 23.652681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068760, 37.694901, 23.418320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394825, 37.761204, 23.640322>,  <41.590466, 37.800987, 23.773523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394825, 37.761204, 23.640322>,  <41.068760, 37.694901, 23.418320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394825, 37.761204, 23.640322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487392, 0.321443, -0.811864,
		-0.312975, 0.932308, 0.181241,
		0.815166, 0.165758, 0.555003,
		41.639374, 37.810932, 23.806822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242249, 38.399731, 23.378754>,  <41.068760, 37.694901, 23.418320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242249, 38.399731, 23.378754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567768, 38.187229, 23.472990>,  <41.763081, 38.059727, 23.529531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.567768, 38.187229, 23.472990>,  <41.242249, 38.399731, 23.378754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567768, 38.187229, 23.472990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450486, 0.320556, -0.833250,
		0.367146, 0.784228, 0.500190,
		0.813797, -0.531253, 0.235593,
		41.811909, 38.027855, 23.543669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763775, 38.762268, 23.662895>,  <41.242249, 38.399731, 23.378754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763775, 38.762268, 23.662895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835270, 38.452255, 23.420446>,  <41.878166, 38.266247, 23.274977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835270, 38.452255, 23.420446>,  <41.763775, 38.762268, 23.662895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835270, 38.452255, 23.420446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403291, 0.619623, -0.673368,
		0.897447, -0.124090, 0.423310,
		0.178735, -0.775029, -0.606122,
		41.888889, 38.219746, 23.238609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510384, 39.119457, 23.088428>,  <41.763775, 38.762268, 23.662895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510384, 39.119457, 23.088428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307053, 39.370861, 22.852943>,  <41.185055, 39.521702, 22.711653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307053, 39.370861, 22.852943>,  <41.510384, 39.119457, 23.088428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307053, 39.370861, 22.852943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764404, -0.014473, 0.644575,
		0.396599, 0.777669, 0.487790,
		-0.508326, 0.628507, -0.588714,
		41.154556, 39.559414, 22.676329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187721, 39.555031, 23.505035>,  <41.510384, 39.119457, 23.088428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187721, 39.555031, 23.505035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981441, 39.607227, 23.166327>,  <40.857674, 39.638546, 22.963100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981441, 39.607227, 23.166327>,  <41.187721, 39.555031, 23.505035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981441, 39.607227, 23.166327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856598, -0.098287, 0.506537,
		-0.017128, 0.986566, 0.162464,
		-0.515701, 0.130490, -0.846773,
		40.826733, 39.646374, 22.912294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628338, 40.033089, 23.617266>,  <41.187721, 39.555031, 23.505035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628338, 40.033089, 23.617266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479073, 39.814240, 23.317558>,  <40.389515, 39.682930, 23.137733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.479073, 39.814240, 23.317558>,  <40.628338, 40.033089, 23.617266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479073, 39.814240, 23.317558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858403, -0.102786, 0.502573,
		-0.351985, 0.830715, -0.431299,
		-0.373163, -0.547126, -0.749267,
		40.367123, 39.650101, 23.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041576, 40.341808, 23.471834>,  <40.628338, 40.033089, 23.617266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041576, 40.341808, 23.471834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999321, 39.974941, 23.318132>,  <39.973969, 39.754822, 23.225910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999321, 39.974941, 23.318132>,  <40.041576, 40.341808, 23.471834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999321, 39.974941, 23.318132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908019, -0.068567, 0.413279,
		-0.405392, 0.392568, -0.825559,
		-0.105634, -0.917163, -0.384256,
		39.967632, 39.699791, 23.202856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415131, 40.422001, 22.971752>,  <40.041576, 40.341808, 23.471834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415131, 40.422001, 22.971752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452728, 40.033928, 23.061113>,  <39.475285, 39.801083, 23.114731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452728, 40.033928, 23.061113>,  <39.415131, 40.422001, 22.971752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452728, 40.033928, 23.061113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916839, 0.003110, 0.399245,
		-0.388036, -0.242350, -0.889210,
		0.093992, -0.970184, 0.223403,
		39.480927, 39.742874, 23.128134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697929, 40.090702, 22.939394>,  <39.415131, 40.422001, 22.971752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697929, 40.090702, 22.939394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916023, 39.827824, 23.147554>,  <39.046879, 39.670097, 23.272451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916023, 39.827824, 23.147554>,  <38.697929, 40.090702, 22.939394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916023, 39.827824, 23.147554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816215, -0.274677, 0.508278,
		-0.191097, -0.701887, -0.686175,
		0.545230, -0.657196, 0.520401,
		39.079594, 39.630665, 23.303675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206337, 39.433125, 23.078033>,  <38.697929, 40.090702, 22.939394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206337, 39.433125, 23.078033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503078, 39.388546, 23.342527>,  <38.681126, 39.361801, 23.501223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.503078, 39.388546, 23.342527>,  <38.206337, 39.433125, 23.078033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503078, 39.388546, 23.342527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651018, -0.356018, 0.670393,
		0.160700, -0.927810, -0.336666,
		0.741857, -0.111443, 0.661233,
		38.725636, 39.355114, 23.540897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257740, 38.790417, 23.157589>,  <38.206337, 39.433125, 23.078033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257740, 38.790417, 23.157589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409664, 38.945358, 23.493612>,  <38.500820, 39.038322, 23.695227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.409664, 38.945358, 23.493612>,  <38.257740, 38.790417, 23.157589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409664, 38.945358, 23.493612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659677, -0.523215, 0.539510,
		0.648513, -0.759081, 0.056805,
		0.379811, 0.387353, 0.840061,
		38.523609, 39.061565, 23.745630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159714, 38.236992, 23.643139>,  <38.257740, 38.790417, 23.157589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159714, 38.236992, 23.643139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190880, 38.559555, 23.877621>,  <38.209579, 38.753094, 24.018311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190880, 38.559555, 23.877621>,  <38.159714, 38.236992, 23.643139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190880, 38.559555, 23.877621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515237, -0.470809, 0.716149,
		0.853498, -0.357833, 0.378808,
		0.077916, 0.806408, 0.586204,
		38.214256, 38.801479, 24.053482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441658, 38.006393, 24.309845>,  <38.159714, 38.236992, 23.643139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441658, 38.006393, 24.309845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270988, 38.361801, 24.377354>,  <38.168587, 38.575047, 24.417858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270988, 38.361801, 24.377354>,  <38.441658, 38.006393, 24.309845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270988, 38.361801, 24.377354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633614, -0.426827, 0.645254,
		0.645358, 0.168374, 0.745093,
		-0.426670, 0.888520, 0.168772,
		38.142986, 38.628357, 24.427986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377087, 38.131096, 25.022026>,  <38.441658, 38.006393, 24.309845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377087, 38.131096, 25.022026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082470, 38.336872, 24.846363>,  <37.905701, 38.460339, 24.740965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082470, 38.336872, 24.846363>,  <38.377087, 38.131096, 25.022026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082470, 38.336872, 24.846363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647762, -0.349571, 0.676908,
		0.194711, 0.783040, 0.590707,
		-0.736540, 0.514439, -0.439159,
		37.861507, 38.491203, 24.714615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952267, 38.096882, 25.462530>,  <38.377087, 38.131096, 25.022026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952267, 38.096882, 25.462530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711147, 38.225487, 25.170429>,  <37.566475, 38.302650, 24.995169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.711147, 38.225487, 25.170429>,  <37.952267, 38.096882, 25.462530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711147, 38.225487, 25.170429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797761, -0.259714, 0.544174,
		-0.014698, 0.910592, 0.413044,
		-0.602794, 0.321512, -0.730253,
		37.530308, 38.321941, 24.951353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418388, 38.443920, 25.869759>,  <37.952267, 38.096882, 25.462530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418388, 38.443920, 25.869759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265141, 38.382072, 25.505493>,  <37.173191, 38.344963, 25.286934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265141, 38.382072, 25.505493>,  <37.418388, 38.443920, 25.869759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265141, 38.382072, 25.505493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819256, -0.398505, 0.412326,
		-0.426660, 0.904038, 0.025999,
		-0.383119, -0.154623, -0.910665,
		37.150204, 38.335686, 25.232294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705330, 38.794716, 25.861191>,  <37.418388, 38.443920, 25.869759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705330, 38.794716, 25.861191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749660, 38.494732, 25.600338>,  <36.776257, 38.314743, 25.443827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749660, 38.494732, 25.600338>,  <36.705330, 38.794716, 25.861191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749660, 38.494732, 25.600338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871948, -0.388236, 0.298295,
		-0.476891, 0.535568, -0.696952,
		0.110824, -0.749960, -0.652134,
		36.782909, 38.269745, 25.404697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095486, 38.816025, 25.596037>,  <36.705330, 38.794716, 25.861191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095486, 38.816025, 25.596037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264641, 38.460751, 25.524153>,  <36.366135, 38.247585, 25.481022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264641, 38.460751, 25.524153>,  <36.095486, 38.816025, 25.596037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264641, 38.460751, 25.524153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869415, -0.453586, 0.195903,
		-0.255512, 0.073397, -0.964016,
		0.422886, -0.888185, -0.179709,
		36.391506, 38.194294, 25.470240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526501, 38.484558, 25.302011>,  <36.095486, 38.816025, 25.596037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526501, 38.484558, 25.302011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782982, 38.180546, 25.344368>,  <35.936871, 37.998138, 25.369781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782982, 38.180546, 25.344368>,  <35.526501, 38.484558, 25.302011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782982, 38.180546, 25.344368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767254, -0.637389, 0.071110,
		0.013448, -0.126840, -0.991832,
		0.641203, -0.760030, 0.105890,
		35.975342, 37.952538, 25.376135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368740, 37.878765, 24.835909>,  <35.526501, 38.484558, 25.302011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368740, 37.878765, 24.835909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566654, 37.746136, 25.157217>,  <35.685402, 37.666557, 25.350002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566654, 37.746136, 25.157217>,  <35.368740, 37.878765, 24.835909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566654, 37.746136, 25.157217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746778, -0.634949, 0.197892,
		0.444419, -0.697779, -0.561779,
		0.494786, -0.331577, 0.803270,
		35.715092, 37.646664, 25.398197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358555, 37.198589, 24.748945>,  <35.368740, 37.878765, 24.835909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358555, 37.198589, 24.748945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441242, 37.229626, 25.139072>,  <35.490852, 37.248249, 25.373150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441242, 37.229626, 25.139072>,  <35.358555, 37.198589, 24.748945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441242, 37.229626, 25.139072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781326, -0.586908, 0.212292,
		0.588896, -0.805927, -0.060696,
		0.206715, 0.077595, 0.975320,
		35.503258, 37.252903, 25.431667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211369, 36.564903, 25.040270>,  <35.358555, 37.198589, 24.748945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211369, 36.564903, 25.040270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202091, 36.796246, 25.366453>,  <35.196526, 36.935051, 25.562162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.202091, 36.796246, 25.366453>,  <35.211369, 36.564903, 25.040270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202091, 36.796246, 25.366453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792228, -0.508151, 0.337871,
		0.609784, -0.638193, 0.469971,
		-0.023189, 0.578353, 0.815457,
		35.195133, 36.969753, 25.611090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226112, 36.199566, 25.738283>,  <35.211369, 36.564903, 25.040270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226112, 36.199566, 25.738283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089935, 36.553345, 25.865940>,  <35.008228, 36.765614, 25.942533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089935, 36.553345, 25.865940>,  <35.226112, 36.199566, 25.738283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089935, 36.553345, 25.865940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648876, -0.466631, 0.601012,
		0.680486, -0.002474, 0.732757,
		-0.340440, 0.884449, 0.319141,
		34.987804, 36.818680, 25.961683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.886902, 32.477711, 30.602856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.731693, 32.844990, 30.570992>,  <34.638569, 33.065357, 30.551872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.731693, 32.844990, 30.570992>,  <34.886902, 32.477711, 30.602856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731693, 32.844990, 30.570992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515623, -0.144626, 0.844522,
		0.763920, 0.368767, 0.529564,
		-0.388020, 0.918202, -0.079662,
		34.615288, 33.120449, 30.547092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095310, 32.733345, 31.225569>,  <34.886902, 32.477711, 30.602856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095310, 32.733345, 31.225569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.789139, 32.964676, 31.112673>,  <34.605434, 33.103474, 31.044935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.789139, 32.964676, 31.112673>,  <35.095310, 32.733345, 31.225569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789139, 32.964676, 31.112673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304387, 0.061053, 0.950590,
		0.566981, 0.813519, 0.129302,
		-0.765429, 0.578324, -0.282240,
		34.559509, 33.138172, 31.028000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108109, 33.366817, 31.640238>,  <35.095310, 32.733345, 31.225569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108109, 33.366817, 31.640238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.728870, 33.346218, 31.514721>,  <34.501328, 33.333858, 31.439411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.728870, 33.346218, 31.514721>,  <35.108109, 33.366817, 31.640238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728870, 33.346218, 31.514721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317983, 0.146757, 0.936669,
		-0.002187, 0.987831, -0.155516,
		-0.948094, -0.051500, -0.313793,
		34.444443, 33.330769, 31.420584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782257, 33.860409, 32.062729>,  <35.108109, 33.366817, 31.640238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782257, 33.860409, 32.062729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482613, 33.634178, 31.924768>,  <34.302826, 33.498440, 31.841993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.482613, 33.634178, 31.924768>,  <34.782257, 33.860409, 32.062729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482613, 33.634178, 31.924768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490700, 0.123992, 0.862461,
		-0.445026, 0.815320, -0.370414,
		-0.749110, -0.565579, -0.344898,
		34.257881, 33.464504, 31.821299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205692, 34.205673, 32.313316>,  <34.782257, 33.860409, 32.062729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205692, 34.205673, 32.313316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060749, 33.847591, 32.209549>,  <33.973782, 33.632740, 32.147289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060749, 33.847591, 32.209549>,  <34.205692, 34.205673, 32.313316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060749, 33.847591, 32.209549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407760, -0.098018, 0.907813,
		-0.838108, 0.434738, -0.329511,
		-0.362363, -0.895207, -0.259419,
		33.952042, 33.579029, 32.131721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513542, 34.255203, 32.356426>,  <34.205692, 34.205673, 32.313316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513542, 34.255203, 32.356426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.584251, 33.861809, 32.371937>,  <33.626678, 33.625771, 32.381245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.584251, 33.861809, 32.371937>,  <33.513542, 34.255203, 32.356426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584251, 33.861809, 32.371937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573718, -0.070947, 0.815975,
		-0.799749, -0.166492, -0.576786,
		0.176775, -0.983487, 0.038780,
		33.637283, 33.566761, 32.383572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798954, 33.847988, 32.306221>,  <33.513542, 34.255203, 32.356426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798954, 33.847988, 32.306221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.031712, 33.554504, 32.446548>,  <33.171364, 33.378414, 32.530743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.031712, 33.554504, 32.446548>,  <32.798954, 33.847988, 32.306221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031712, 33.554504, 32.446548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765351, -0.348162, 0.541314,
		-0.275025, -0.583486, -0.764137,
		0.581893, -0.733708, 0.350818,
		33.206280, 33.334393, 32.551792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328098, 33.320419, 32.365875>,  <32.798954, 33.847988, 32.306221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328098, 33.320419, 32.365875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.631184, 33.199131, 32.597019>,  <32.813034, 33.126358, 32.735706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.631184, 33.199131, 32.597019>,  <32.328098, 33.320419, 32.365875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631184, 33.199131, 32.597019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644540, -0.486326, 0.589962,
		0.102141, -0.819478, -0.563935,
		0.757717, -0.303220, 0.577861,
		32.858498, 33.108166, 32.770378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357025, 32.608982, 32.409458>,  <32.328098, 33.320419, 32.365875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357025, 32.608982, 32.409458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537682, 32.728947, 32.745571>,  <32.646076, 32.800926, 32.947239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.537682, 32.728947, 32.745571>,  <32.357025, 32.608982, 32.409458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537682, 32.728947, 32.745571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562365, -0.635477, 0.529069,
		0.692654, -0.711494, -0.118348,
		0.451638, 0.299907, 0.840285,
		32.673172, 32.818920, 32.997658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133286, 32.075985, 32.880455>,  <32.357025, 32.608982, 32.409458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133286, 32.075985, 32.880455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.295914, 32.348583, 33.123852>,  <32.393490, 32.512142, 33.269890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.295914, 32.348583, 33.123852>,  <32.133286, 32.075985, 32.880455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295914, 32.348583, 33.123852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387366, -0.474606, 0.790378,
		0.827434, -0.557052, 0.071028,
		0.406572, 0.681500, 0.608488,
		32.417885, 32.553032, 33.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598633, 31.754074, 33.434006>,  <32.133286, 32.075985, 32.880455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598633, 31.754074, 33.434006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.462261, 32.109295, 33.557381>,  <32.380440, 32.322426, 33.631405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.462261, 32.109295, 33.557381>,  <32.598633, 31.754074, 33.434006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462261, 32.109295, 33.557381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330811, -0.420440, 0.844863,
		0.879961, 0.186003, 0.437117,
		-0.340929, 0.888050, 0.308439,
		32.359982, 32.375710, 33.649914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619038, 31.642742, 34.175850>,  <32.598633, 31.754074, 33.434006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619038, 31.642742, 34.175850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.380074, 31.956867, 34.110874>,  <32.236694, 32.145344, 34.071888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.380074, 31.956867, 34.110874>,  <32.619038, 31.642742, 34.175850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380074, 31.956867, 34.110874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594581, -0.297841, 0.746836,
		0.538119, 0.542750, 0.644865,
		-0.597412, 0.785311, -0.162435,
		32.200851, 32.192459, 34.062145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597313, 32.077301, 34.791027>,  <32.619038, 31.642742, 34.175850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597313, 32.077301, 34.791027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.290253, 32.056007, 34.535568>,  <32.106014, 32.043232, 34.382294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.290253, 32.056007, 34.535568>,  <32.597313, 32.077301, 34.791027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290253, 32.056007, 34.535568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629062, -0.127779, 0.766781,
		-0.122424, 0.990373, 0.064603,
		-0.767654, -0.053234, -0.638649,
		32.059956, 32.040039, 34.343975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034592, 32.496006, 35.093208>,  <32.597313, 32.077301, 34.791027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034592, 32.496006, 35.093208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.905933, 32.207241, 34.848133>,  <31.828739, 32.033981, 34.701088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.905933, 32.207241, 34.848133>,  <32.034592, 32.496006, 35.093208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905933, 32.207241, 34.848133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792448, -0.148920, 0.591480,
		-0.518240, 0.675768, -0.524181,
		-0.321642, -0.721914, -0.612687,
		31.809441, 31.990667, 34.664326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935266, 33.098404, 35.585224>,  <32.034592, 32.496006, 35.093208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935266, 33.098404, 35.585224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916744, 33.368671, 35.879524>,  <31.905630, 33.530834, 36.056103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916744, 33.368671, 35.879524>,  <31.935266, 33.098404, 35.585224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916744, 33.368671, 35.879524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702732, 0.545498, -0.456726,
		-0.709946, 0.495883, -0.500077,
		-0.046308, 0.675671, 0.735747,
		31.902851, 33.571373, 36.100250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774319, 33.815941, 35.279881>,  <31.935266, 33.098404, 35.585224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774319, 33.815941, 35.279881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.956411, 33.867626, 35.632259>,  <32.065666, 33.898636, 35.843685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.956411, 33.867626, 35.632259>,  <31.774319, 33.815941, 35.279881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956411, 33.867626, 35.632259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597413, 0.689308, -0.409819,
		-0.660197, 0.712852, 0.236603,
		0.455233, 0.129211, 0.880947,
		32.092979, 33.906391, 35.896542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875689, 34.554241, 35.291897>,  <31.774319, 33.815941, 35.279881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875689, 34.554241, 35.291897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.116009, 34.407722, 35.576111>,  <32.260201, 34.319813, 35.746639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.116009, 34.407722, 35.576111>,  <31.875689, 34.554241, 35.291897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116009, 34.407722, 35.576111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752975, 0.557794, -0.349133,
		-0.268449, 0.744778, 0.610934,
		0.600802, -0.366294, 0.710539,
		32.296249, 34.297832, 35.789272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212807, 35.071384, 35.617611>,  <31.875689, 34.554241, 35.291897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212807, 35.071384, 35.617611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.446350, 34.753670, 35.684807>,  <32.586475, 34.563042, 35.725124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.446350, 34.753670, 35.684807>,  <32.212807, 35.071384, 35.617611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446350, 34.753670, 35.684807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765333, 0.469452, -0.440318,
		0.270874, 0.385654, 0.881986,
		0.583861, -0.794283, 0.167991,
		32.621510, 34.515385, 35.735203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864239, 35.351273, 35.772053>,  <32.212807, 35.071384, 35.617611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864239, 35.351273, 35.772053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.933815, 34.965115, 35.694321>,  <32.975559, 34.733421, 35.647682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.933815, 34.965115, 35.694321>,  <32.864239, 35.351273, 35.772053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933815, 34.965115, 35.694321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860773, 0.244902, -0.446198,
		0.478347, -0.089660, 0.873582,
		0.173936, -0.965393, -0.194326,
		32.985996, 34.675495, 35.636024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529728, 35.237934, 35.962448>,  <32.864239, 35.351273, 35.772053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529728, 35.237934, 35.962448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444366, 34.929775, 35.722134>,  <33.393150, 34.744881, 35.577946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.444366, 34.929775, 35.722134>,  <33.529728, 35.237934, 35.962448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444366, 34.929775, 35.722134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860683, 0.142715, -0.488730,
		0.462260, -0.621380, 0.632616,
		-0.213404, -0.770402, -0.600782,
		33.380344, 34.698654, 35.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134926, 34.914650, 35.962288>,  <33.529728, 35.237934, 35.962448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134926, 34.914650, 35.962288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.950672, 34.759628, 35.642883>,  <33.840118, 34.666615, 35.451241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.950672, 34.759628, 35.642883>,  <34.134926, 34.914650, 35.962288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950672, 34.759628, 35.642883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857171, 0.039273, -0.513533,
		0.230382, -0.921010, 0.314110,
		-0.460633, -0.387554, -0.798511,
		33.812481, 34.643364, 35.403332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599617, 34.289165, 35.668278>,  <34.134926, 34.914650, 35.962288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599617, 34.289165, 35.668278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.366154, 34.468410, 35.397415>,  <34.226074, 34.575958, 35.234898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.366154, 34.468410, 35.397415>,  <34.599617, 34.289165, 35.668278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366154, 34.468410, 35.397415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799497, 0.171360, -0.575708,
		-0.141943, -0.877401, -0.458279,
		-0.583658, 0.448111, -0.677156,
		34.191055, 34.602844, 35.194267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783283, 33.913029, 35.053753>,  <34.599617, 34.289165, 35.668278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783283, 33.913029, 35.053753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.607449, 34.254772, 34.942879>,  <34.501945, 34.459820, 34.876354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.607449, 34.254772, 34.942879>,  <34.783283, 33.913029, 35.053753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607449, 34.254772, 34.942879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749565, 0.178912, -0.637293,
		-0.494886, -0.487915, -0.719046,
		-0.439591, 0.854359, -0.277182,
		34.475571, 34.511082, 34.859722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689545, 33.953884, 34.225410>,  <34.783283, 33.913029, 35.053753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689545, 33.953884, 34.225410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.668213, 34.329250, 34.361961>,  <34.655415, 34.554470, 34.443893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.668213, 34.329250, 34.361961>,  <34.689545, 33.953884, 34.225410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668213, 34.329250, 34.361961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726400, 0.271032, -0.631573,
		-0.685200, 0.214297, -0.696116,
		-0.053325, 0.938413, 0.341376,
		34.652214, 34.610775, 34.464375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335312, 34.266819, 33.560837>,  <34.689545, 33.953884, 34.225410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335312, 34.266819, 33.560837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.524658, 34.536713, 33.787342>,  <34.638268, 34.698650, 33.923244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.524658, 34.536713, 33.787342>,  <34.335312, 34.266819, 33.560837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524658, 34.536713, 33.787342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568588, 0.256933, -0.781468,
		-0.672778, 0.691891, -0.262024,
		0.473369, 0.674738, 0.566260,
		34.666668, 34.739136, 33.957222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348541, 34.963242, 33.194820>,  <34.335312, 34.266819, 33.560837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348541, 34.963242, 33.194820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.642910, 34.995407, 33.463730>,  <34.819530, 35.014706, 33.625076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.642910, 34.995407, 33.463730>,  <34.348541, 34.963242, 33.194820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642910, 34.995407, 33.463730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571971, 0.457487, -0.680848,
		-0.362306, 0.885573, 0.290681,
		0.735924, 0.080414, 0.672272,
		34.863686, 35.019531, 33.665413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574677, 35.656189, 33.176525>,  <34.348541, 34.963242, 33.194820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574677, 35.656189, 33.176525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.881241, 35.461735, 33.344471>,  <35.065182, 35.345062, 33.445240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.881241, 35.461735, 33.344471>,  <34.574677, 35.656189, 33.176525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881241, 35.461735, 33.344471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633694, 0.465277, -0.618020,
		0.105085, 0.739725, 0.664653,
		0.766413, -0.486131, 0.419866,
		35.111164, 35.315895, 33.470432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067818, 36.057171, 33.640568>,  <34.574677, 35.656189, 33.176525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067818, 36.057171, 33.640568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240204, 35.760315, 33.435242>,  <35.343636, 35.582199, 33.312046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.240204, 35.760315, 33.435242>,  <35.067818, 36.057171, 33.640568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240204, 35.760315, 33.435242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496416, 0.670028, -0.551936,
		0.753550, -0.016950, 0.657173,
		0.430969, -0.742142, -0.513314,
		35.369495, 35.537674, 33.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148579, 36.845535, 33.727306>,  <35.067818, 36.057171, 33.640568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148579, 36.845535, 33.727306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999573, 37.211334, 33.664158>,  <34.910168, 37.430813, 33.626270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999573, 37.211334, 33.664158>,  <35.148579, 36.845535, 33.727306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999573, 37.211334, 33.664158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802035, -0.231668, 0.550518,
		0.466874, 0.331695, 0.819760,
		-0.372516, 0.914499, -0.157871,
		34.887817, 37.485683, 33.616795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815212, 36.973194, 34.286537>,  <35.148579, 36.845535, 33.727306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815212, 36.973194, 34.286537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644009, 37.258160, 34.064087>,  <34.541286, 37.429138, 33.930618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644009, 37.258160, 34.064087>,  <34.815212, 36.973194, 34.286537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644009, 37.258160, 34.064087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844478, -0.096032, 0.526911,
		0.321972, 0.695159, 0.642720,
		-0.428008, 0.712413, -0.556127,
		34.515606, 37.471882, 33.897247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506531, 37.364784, 34.741142>,  <34.815212, 36.973194, 34.286537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506531, 37.364784, 34.741142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311077, 37.442726, 34.400959>,  <34.193806, 37.489491, 34.196850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.311077, 37.442726, 34.400959>,  <34.506531, 37.364784, 34.741142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311077, 37.442726, 34.400959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872321, -0.089878, 0.480601,
		0.017211, 0.976705, 0.213895,
		-0.488630, 0.194857, -0.850453,
		34.164490, 37.501183, 34.145824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931435, 37.711300, 34.920189>,  <34.506531, 37.364784, 34.741142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931435, 37.711300, 34.920189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835377, 37.556114, 34.564255>,  <33.777740, 37.463005, 34.350693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835377, 37.556114, 34.564255>,  <33.931435, 37.711300, 34.920189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835377, 37.556114, 34.564255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906260, -0.238902, 0.348738,
		-0.347881, 0.890175, -0.294222,
		-0.240148, -0.387961, -0.889840,
		33.763332, 37.439724, 34.297302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244690, 37.964870, 34.820728>,  <33.931435, 37.711300, 34.920189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244690, 37.964870, 34.820728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290810, 37.657162, 34.569355>,  <33.318481, 37.472538, 34.418530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.290810, 37.657162, 34.569355>,  <33.244690, 37.964870, 34.820728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290810, 37.657162, 34.569355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933174, -0.300703, 0.196886,
		-0.340431, 0.563739, -0.752532,
		0.115297, -0.769270, -0.628435,
		33.325397, 37.426380, 34.380825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653954, 38.001595, 34.271862>,  <33.244690, 37.964870, 34.820728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653954, 38.001595, 34.271862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803928, 37.634140, 34.321720>,  <32.893913, 37.413670, 34.351635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.803928, 37.634140, 34.321720>,  <32.653954, 38.001595, 34.271862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803928, 37.634140, 34.321720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923640, -0.358647, 0.135133,
		-0.079435, -0.165793, -0.982956,
		0.374939, -0.918632, 0.124644,
		32.916409, 37.358551, 34.359112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150631, 37.635239, 33.815247>,  <32.653954, 38.001595, 34.271862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150631, 37.635239, 33.815247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.312397, 37.375942, 34.073311>,  <32.409458, 37.220364, 34.228149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.312397, 37.375942, 34.073311>,  <32.150631, 37.635239, 33.815247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312397, 37.375942, 34.073311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913556, -0.319625, 0.251506,
		0.043174, -0.691105, -0.721464,
		0.404415, -0.648239, 0.645162,
		32.433723, 37.181469, 34.266861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784889, 37.053356, 33.692162>,  <32.150631, 37.635239, 33.815247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784889, 37.053356, 33.692162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.962124, 36.962887, 34.039154>,  <32.068466, 36.908607, 34.247349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.962124, 36.962887, 34.039154>,  <31.784889, 37.053356, 33.692162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962124, 36.962887, 34.039154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889200, -0.233931, 0.393191,
		0.114003, -0.945581, -0.304761,
		0.443087, -0.226169, 0.867480,
		32.095051, 36.895035, 34.299397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408384, 36.522846, 33.962704>,  <31.784889, 37.053356, 33.692162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408384, 36.522846, 33.962704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600080, 36.630356, 34.296909>,  <31.715097, 36.694862, 34.497433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600080, 36.630356, 34.296909>,  <31.408384, 36.522846, 33.962704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600080, 36.630356, 34.296909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785231, -0.293984, 0.544965,
		0.392101, -0.917243, 0.070161,
		0.479239, 0.268773, 0.835518,
		31.743853, 36.710987, 34.547565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358154, 35.951126, 34.496090>,  <31.408384, 36.522846, 33.962704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358154, 35.951126, 34.496090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.426449, 36.287235, 34.701923>,  <31.467426, 36.488899, 34.825424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.426449, 36.287235, 34.701923>,  <31.358154, 35.951126, 34.496090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426449, 36.287235, 34.701923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776303, -0.206904, 0.595436,
		0.606796, -0.501133, 0.616980,
		0.170737, 0.840272, 0.514580,
		31.477671, 36.539318, 34.856297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241135, 35.799850, 35.216099>,  <31.358154, 35.951126, 34.496090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241135, 35.799850, 35.216099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.207043, 36.194359, 35.159512>,  <31.186588, 36.431065, 35.125557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.207043, 36.194359, 35.159512>,  <31.241135, 35.799850, 35.216099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207043, 36.194359, 35.159512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825486, 0.009615, 0.564342,
		0.557952, 0.164879, 0.813330,
		-0.085228, 0.986267, -0.141470,
		31.181475, 36.490238, 35.117069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059603, 36.031799, 35.819149>,  <31.241135, 35.799850, 35.216099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059603, 36.031799, 35.819149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932056, 36.311039, 35.562717>,  <30.855528, 36.478580, 35.408859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932056, 36.311039, 35.562717>,  <31.059603, 36.031799, 35.819149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932056, 36.311039, 35.562717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903105, -0.018524, 0.429020,
		0.287622, 0.715764, 0.636361,
		-0.318865, 0.698097, -0.641082,
		30.836397, 36.520470, 35.370392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.236553, 39.101902, 32.340725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950146, 39.113922, 32.061752>,  <37.778301, 39.121136, 31.894369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950146, 39.113922, 32.061752>,  <38.236553, 39.101902, 32.340725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950146, 39.113922, 32.061752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693324, -0.147030, 0.705468,
		-0.081343, 0.988675, 0.126112,
		-0.716021, 0.030052, -0.697432,
		37.735340, 39.122936, 31.852522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696938, 39.275303, 32.679935>,  <38.236553, 39.101902, 32.340725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696938, 39.275303, 32.679935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498955, 39.165768, 32.350082>,  <37.380165, 39.100048, 32.152168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498955, 39.165768, 32.350082>,  <37.696938, 39.275303, 32.679935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498955, 39.165768, 32.350082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789775, -0.253941, 0.558363,
		-0.362310, 0.927646, -0.090578,
		-0.494962, -0.273837, -0.824637,
		37.350468, 39.083618, 32.102692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023922, 39.436279, 32.800438>,  <37.696938, 39.275303, 32.679935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023922, 39.436279, 32.800438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978394, 39.172241, 32.503433>,  <36.951077, 39.013821, 32.325230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978394, 39.172241, 32.503433>,  <37.023922, 39.436279, 32.800438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978394, 39.172241, 32.503433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746627, -0.436223, 0.502252,
		-0.655433, 0.611546, -0.443192,
		-0.113820, -0.660092, -0.742512,
		36.944248, 38.974213, 32.280682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335278, 39.487411, 32.688618>,  <37.023922, 39.436279, 32.800438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335278, 39.487411, 32.688618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468006, 39.141285, 32.538349>,  <36.547642, 38.933609, 32.448189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468006, 39.141285, 32.538349>,  <36.335278, 39.487411, 32.688618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468006, 39.141285, 32.538349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754739, -0.482420, 0.444567,
		-0.565922, 0.136018, -0.813162,
		0.331817, -0.865315, -0.375670,
		36.567551, 38.881691, 32.425648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831680, 39.254200, 32.236004>,  <36.335278, 39.487411, 32.688618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831680, 39.254200, 32.236004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035423, 38.920078, 32.318775>,  <36.157669, 38.719604, 32.368439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035423, 38.920078, 32.318775>,  <35.831680, 39.254200, 32.236004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035423, 38.920078, 32.318775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827927, -0.410091, 0.382573,
		-0.234707, -0.366186, -0.900455,
		0.509362, -0.835304, 0.206924,
		36.188232, 38.669487, 32.380852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363640, 38.723057, 32.182114>,  <35.831680, 39.254200, 32.236004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363640, 38.723057, 32.182114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652008, 38.570522, 32.413582>,  <35.825027, 38.479004, 32.552464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652008, 38.570522, 32.413582>,  <35.363640, 38.723057, 32.182114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652008, 38.570522, 32.413582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676784, -0.567075, 0.469456,
		0.149130, -0.730075, -0.666896,
		0.720918, -0.381334, 0.578672,
		35.868282, 38.456123, 32.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412067, 37.945705, 32.046337>,  <35.363640, 38.723057, 32.182114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412067, 37.945705, 32.046337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580906, 37.991467, 32.406059>,  <35.682209, 38.018921, 32.621891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580906, 37.991467, 32.406059>,  <35.412067, 37.945705, 32.046337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580906, 37.991467, 32.406059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749716, -0.513658, 0.417231,
		0.509665, -0.850334, -0.131047,
		0.422099, 0.114400, 0.899302,
		35.707535, 38.025787, 32.675850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243313, 37.311771, 32.406620>,  <35.412067, 37.945705, 32.046337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243313, 37.311771, 32.406620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339157, 37.566223, 32.699993>,  <35.396664, 37.718895, 32.876019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339157, 37.566223, 32.699993>,  <35.243313, 37.311771, 32.406620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339157, 37.566223, 32.699993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748069, -0.360568, 0.557121,
		0.618853, -0.682152, 0.389473,
		0.239610, 0.636129, 0.733436,
		35.411041, 37.757061, 32.920025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341484, 36.995899, 33.038445>,  <35.243313, 37.311771, 32.406620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341484, 36.995899, 33.038445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234016, 37.357628, 33.171120>,  <35.169537, 37.574665, 33.250725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234016, 37.357628, 33.171120>,  <35.341484, 36.995899, 33.038445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234016, 37.357628, 33.171120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702741, -0.419531, 0.574586,
		0.658764, -0.078714, 0.748221,
		-0.268674, 0.904322, 0.331687,
		35.153416, 37.628925, 33.270626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720329, 36.358059, 33.457680>,  <35.341484, 36.995899, 33.038445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720329, 36.358059, 33.457680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767124, 35.990597, 33.306744>,  <35.795200, 35.770119, 33.216183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767124, 35.990597, 33.306744>,  <35.720329, 36.358059, 33.457680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767124, 35.990597, 33.306744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852230, 0.287948, -0.436795,
		0.509918, -0.270481, 0.816593,
		0.116992, -0.918654, -0.377342,
		35.802223, 35.715000, 33.193542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474182, 36.221233, 33.411510>,  <35.720329, 36.358059, 33.457680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474182, 36.221233, 33.411510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339436, 35.934349, 33.167500>,  <36.258587, 35.762218, 33.021095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339436, 35.934349, 33.167500>,  <36.474182, 36.221233, 33.411510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339436, 35.934349, 33.167500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817690, 0.098364, -0.567192,
		0.466801, -0.689879, 0.553321,
		-0.336867, -0.717211, -0.610023,
		36.238377, 35.719185, 32.984493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997265, 35.727173, 33.328377>,  <36.474182, 36.221233, 33.411510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997265, 35.727173, 33.328377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760231, 35.653656, 33.014675>,  <36.618011, 35.609547, 32.826454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760231, 35.653656, 33.014675>,  <36.997265, 35.727173, 33.328377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760231, 35.653656, 33.014675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805503, -0.132563, -0.577574,
		0.002193, -0.973984, 0.226603,
		-0.592588, -0.183796, -0.784257,
		36.582455, 35.598518, 32.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199188, 35.113853, 32.978813>,  <36.997265, 35.727173, 33.328377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199188, 35.113853, 32.978813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999996, 35.338749, 32.714722>,  <36.880482, 35.473686, 32.556267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999996, 35.338749, 32.714722>,  <37.199188, 35.113853, 32.978813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999996, 35.338749, 32.714722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782829, -0.036089, -0.621190,
		-0.373087, -0.826184, -0.422168,
		-0.497981, 0.562243, -0.660225,
		36.850601, 35.507423, 32.516655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542889, 35.022446, 32.351742>,  <37.199188, 35.113853, 32.978813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542889, 35.022446, 32.351742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299507, 35.306984, 32.211010>,  <37.153481, 35.477707, 32.126572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299507, 35.306984, 32.211010>,  <37.542889, 35.022446, 32.351742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299507, 35.306984, 32.211010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525251, 0.028637, -0.850465,
		-0.594896, -0.702263, -0.391057,
		-0.608449, 0.711342, -0.351828,
		37.116974, 35.520386, 32.105461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332867, 34.883694, 31.579407>,  <37.542889, 35.022446, 32.351742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332867, 34.883694, 31.579407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302681, 35.279865, 31.625622>,  <37.284569, 35.517570, 31.653351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302681, 35.279865, 31.625622>,  <37.332867, 34.883694, 31.579407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302681, 35.279865, 31.625622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557242, 0.137975, -0.818807,
		-0.826914, 0.002590, -0.562322,
		-0.075466, 0.990432, 0.115537,
		37.280041, 35.576996, 31.660282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299751, 35.204746, 30.866201>,  <37.332867, 34.883694, 31.579407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299751, 35.204746, 30.866201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426037, 35.487877, 31.118967>,  <37.501808, 35.657753, 31.270626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426037, 35.487877, 31.118967>,  <37.299751, 35.204746, 30.866201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426037, 35.487877, 31.118967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616578, 0.353163, -0.703638,
		-0.721219, 0.611771, -0.324930,
		0.315713, 0.707822, 0.631913,
		37.520752, 35.700222, 31.308540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327579, 35.873558, 30.546364>,  <37.299751, 35.204746, 30.866201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327579, 35.873558, 30.546364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564457, 35.948494, 30.859852>,  <37.706581, 35.993454, 31.047945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564457, 35.948494, 30.859852>,  <37.327579, 35.873558, 30.546364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564457, 35.948494, 30.859852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620109, 0.515128, -0.591699,
		-0.514562, 0.836390, 0.188886,
		0.592192, 0.187336, 0.783718,
		37.742115, 36.004696, 31.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563805, 36.649841, 30.415203>,  <37.327579, 35.873558, 30.546364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563805, 36.649841, 30.415203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791218, 36.463276, 30.686268>,  <37.927666, 36.351337, 30.848907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791218, 36.463276, 30.686268>,  <37.563805, 36.649841, 30.415203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791218, 36.463276, 30.686268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820492, 0.381248, -0.425960,
		-0.059682, 0.798189, 0.599444,
		0.568534, -0.466417, 0.677661,
		37.961777, 36.323349, 30.889566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055565, 37.102543, 30.556461>,  <37.563805, 36.649841, 30.415203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055565, 37.102543, 30.556461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215530, 36.742443, 30.625311>,  <38.311508, 36.526382, 30.666620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215530, 36.742443, 30.625311>,  <38.055565, 37.102543, 30.556461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215530, 36.742443, 30.625311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851056, 0.295010, -0.434365,
		0.340257, 0.320195, 0.884138,
		0.399911, -0.900247, 0.172124,
		38.335503, 36.472370, 30.676949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738396, 37.232201, 30.764271>,  <38.055565, 37.102543, 30.556461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738396, 37.232201, 30.764271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774071, 36.844471, 30.672649>,  <38.795475, 36.611835, 30.617676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774071, 36.844471, 30.672649>,  <38.738396, 37.232201, 30.764271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774071, 36.844471, 30.672649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914053, 0.171009, -0.367780,
		0.395667, -0.176565, 0.901262,
		0.089187, -0.969320, -0.229053,
		38.800827, 36.553677, 30.603933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424164, 36.986004, 30.999886>,  <38.738396, 37.232201, 30.764271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424164, 36.986004, 30.999886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315083, 36.725994, 30.716167>,  <39.249634, 36.569988, 30.545937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315083, 36.725994, 30.716167>,  <39.424164, 36.986004, 30.999886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315083, 36.725994, 30.716167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897966, 0.092697, -0.430190,
		0.345384, -0.754239, 0.558421,
		-0.272702, -0.650024, -0.709297,
		39.233273, 36.530987, 30.503378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930771, 36.447884, 30.926338>,  <39.424164, 36.986004, 30.999886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930771, 36.447884, 30.926338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732239, 36.448521, 30.579086>,  <39.613117, 36.448902, 30.370735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732239, 36.448521, 30.579086>,  <39.930771, 36.447884, 30.926338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732239, 36.448521, 30.579086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867922, -0.021034, -0.496255,
		-0.019040, -0.999778, 0.009077,
		-0.496335, 0.001570, -0.868129,
		39.583340, 36.448997, 30.318647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298866, 36.006962, 30.507851>,  <39.930771, 36.447884, 30.926338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298866, 36.006962, 30.507851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064758, 36.183960, 30.236069>,  <39.924294, 36.290157, 30.073000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064758, 36.183960, 30.236069>,  <40.298866, 36.006962, 30.507851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064758, 36.183960, 30.236069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745676, -0.035402, -0.665367,
		-0.318476, -0.896071, -0.309239,
		-0.585269, 0.442496, -0.679454,
		39.889179, 36.316708, 30.032232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.039513, 40.391716, 25.017164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269440, 40.370564, 25.343792>,  <34.407394, 40.357872, 25.539768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269440, 40.370564, 25.343792>,  <34.039513, 40.391716, 25.017164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269440, 40.370564, 25.343792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728975, -0.486423, 0.481652,
		0.371727, -0.872122, -0.318155,
		0.574817, -0.052884, 0.816571,
		34.441883, 40.354698, 25.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866196, 39.780632, 25.276531>,  <34.039513, 40.391716, 25.017164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866196, 39.780632, 25.276531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018589, 39.993988, 25.578617>,  <34.110023, 40.122002, 25.759869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.018589, 39.993988, 25.578617>,  <33.866196, 39.780632, 25.276531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018589, 39.993988, 25.578617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565320, -0.511957, 0.646772,
		0.731619, -0.673345, 0.106491,
		0.380982, 0.533391, 0.755213,
		34.132885, 40.154007, 25.805182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088982, 39.357018, 25.758587>,  <33.866196, 39.780632, 25.276531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088982, 39.357018, 25.758587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.022766, 39.682182, 25.981932>,  <33.983036, 39.877281, 26.115938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.022766, 39.682182, 25.981932>,  <34.088982, 39.357018, 25.758587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022766, 39.682182, 25.981932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578020, -0.538708, 0.612932,
		0.799056, -0.221282, 0.559057,
		-0.165538, 0.812913, 0.558363,
		33.973106, 39.926056, 26.149441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067593, 39.141380, 26.494022>,  <34.088982, 39.357018, 25.758587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067593, 39.141380, 26.494022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864773, 39.485970, 26.505131>,  <33.743080, 39.692722, 26.511797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864773, 39.485970, 26.505131>,  <34.067593, 39.141380, 26.494022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864773, 39.485970, 26.505131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564261, -0.356128, 0.744837,
		0.651545, 0.361997, 0.666669,
		-0.507048, 0.861470, 0.027773,
		33.712658, 39.744411, 26.513462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078468, 39.261280, 27.153526>,  <34.067593, 39.141380, 26.494022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078468, 39.261280, 27.153526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782070, 39.495182, 27.021471>,  <33.604233, 39.635525, 26.942238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782070, 39.495182, 27.021471>,  <34.078468, 39.261280, 27.153526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782070, 39.495182, 27.021471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574968, -0.298512, 0.761776,
		0.346901, 0.754290, 0.557410,
		-0.740994, 0.584753, -0.330138,
		33.559772, 39.670609, 26.922430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790337, 39.545322, 27.746721>,  <34.078468, 39.261280, 27.153526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790337, 39.545322, 27.746721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506466, 39.629040, 27.477631>,  <33.336143, 39.679272, 27.316177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506466, 39.629040, 27.477631>,  <33.790337, 39.545322, 27.746721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506466, 39.629040, 27.477631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704341, -0.188586, 0.684353,
		0.016366, 0.959495, 0.281251,
		-0.709673, 0.209296, -0.672725,
		33.293564, 39.691830, 27.275812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281757, 40.071522, 28.030293>,  <33.790337, 39.545322, 27.746721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281757, 40.071522, 28.030293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.116974, 39.843704, 27.745783>,  <33.018105, 39.707016, 27.575077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.116974, 39.843704, 27.745783>,  <33.281757, 40.071522, 28.030293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116974, 39.843704, 27.745783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751283, -0.229408, 0.618826,
		-0.515620, 0.789300, -0.333380,
		-0.411959, -0.569542, -0.711275,
		32.993385, 39.672840, 27.532400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639748, 40.225010, 28.160654>,  <33.281757, 40.071522, 28.030293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639748, 40.225010, 28.160654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.637989, 39.878296, 27.961189>,  <32.636936, 39.670269, 27.841511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.637989, 39.878296, 27.961189>,  <32.639748, 40.225010, 28.160654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637989, 39.878296, 27.961189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628307, -0.385549, 0.675709,
		-0.777953, 0.316282, -0.542913,
		-0.004395, -0.866786, -0.498661,
		32.636669, 39.618259, 27.811590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971027, 39.818417, 28.237209>,  <32.639748, 40.225010, 28.160654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971027, 39.818417, 28.237209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.195351, 39.512337, 28.110737>,  <32.329945, 39.328690, 28.034853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.195351, 39.512337, 28.110737>,  <31.971027, 39.818417, 28.237209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195351, 39.512337, 28.110737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513497, -0.621021, 0.592161,
		-0.649473, -0.169731, -0.741199,
		0.560808, -0.765195, -0.316180,
		32.363594, 39.282780, 28.015882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512506, 39.288231, 28.338348>,  <31.971027, 39.818417, 28.237209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512506, 39.288231, 28.338348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849379, 39.087837, 28.258596>,  <32.051502, 38.967602, 28.210745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849379, 39.087837, 28.258596>,  <31.512506, 39.288231, 28.338348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849379, 39.087837, 28.258596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321863, -0.763759, 0.559533,
		-0.432594, -0.407054, -0.804469,
		0.842180, -0.500979, -0.199382,
		32.102032, 38.937542, 28.198782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290321, 38.721928, 27.918602>,  <31.512506, 39.288231, 28.338348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290321, 38.721928, 27.918602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632969, 38.648609, 28.111519>,  <31.838558, 38.604618, 28.227270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632969, 38.648609, 28.111519>,  <31.290321, 38.721928, 27.918602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632969, 38.648609, 28.111519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435923, -0.757155, 0.486505,
		0.275998, -0.626992, -0.728495,
		0.856619, -0.183293, 0.482294,
		31.889956, 38.593620, 28.256207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509613, 37.991096, 27.833977>,  <31.290321, 38.721928, 27.918602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509613, 37.991096, 27.833977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.660822, 38.132271, 28.176329>,  <31.751547, 38.216976, 28.381741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.660822, 38.132271, 28.176329>,  <31.509613, 37.991096, 27.833977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660822, 38.132271, 28.176329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471615, -0.722122, 0.506083,
		0.796667, -0.594957, -0.106527,
		0.378023, 0.352939, 0.855881,
		31.774229, 38.238152, 28.433092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560884, 37.410973, 28.231817>,  <31.509613, 37.991096, 27.833977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560884, 37.410973, 28.231817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.642733, 37.674126, 28.521734>,  <31.691841, 37.832016, 28.695684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.642733, 37.674126, 28.521734>,  <31.560884, 37.410973, 28.231817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642733, 37.674126, 28.521734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419256, -0.610195, 0.672225,
		0.884508, -0.441426, 0.150960,
		0.204623, 0.657879, 0.724793,
		31.704119, 37.871490, 28.739172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913696, 36.984249, 28.787054>,  <31.560884, 37.410973, 28.231817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913696, 36.984249, 28.787054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.753998, 37.330978, 28.906528>,  <31.658178, 37.539017, 28.978212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.753998, 37.330978, 28.906528>,  <31.913696, 36.984249, 28.787054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753998, 37.330978, 28.906528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484777, -0.476096, 0.733706,
		0.778199, 0.148133, 0.610298,
		-0.399246, 0.866827, 0.298685,
		31.634224, 37.591026, 28.996134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477650, 36.547817, 29.196857>,  <31.913696, 36.984249, 28.787054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477650, 36.547817, 29.196857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457279, 36.186802, 29.025824>,  <32.445057, 35.970192, 28.923204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.457279, 36.186802, 29.025824>,  <32.477650, 36.547817, 29.196857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457279, 36.186802, 29.025824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516253, 0.342708, -0.784878,
		0.854920, -0.260715, 0.448485,
		-0.050930, -0.902540, -0.427583,
		32.442001, 35.916039, 28.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095394, 36.364128, 29.057592>,  <32.477650, 36.547817, 29.196857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095394, 36.364128, 29.057592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899609, 36.124084, 28.804514>,  <32.782139, 35.980061, 28.652668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899609, 36.124084, 28.804514>,  <33.095394, 36.364128, 29.057592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899609, 36.124084, 28.804514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622434, 0.267724, -0.735458,
		0.610740, -0.753788, 0.242486,
		-0.489461, -0.600105, -0.632694,
		32.752769, 35.944054, 28.614706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606354, 36.067024, 28.667931>,  <33.095394, 36.364128, 29.057592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606354, 36.067024, 28.667931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275070, 36.046082, 28.444744>,  <33.076302, 36.033516, 28.310831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275070, 36.046082, 28.444744>,  <33.606354, 36.067024, 28.667931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275070, 36.046082, 28.444744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525583, 0.272981, -0.805757,
		0.194501, -0.960594, -0.198567,
		-0.828209, -0.052357, -0.557967,
		33.026608, 36.030373, 28.277353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783360, 35.606663, 28.080530>,  <33.606354, 36.067024, 28.667931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783360, 35.606663, 28.080530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456699, 35.803360, 27.959686>,  <33.260704, 35.921379, 27.887180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456699, 35.803360, 27.959686>,  <33.783360, 35.606663, 28.080530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456699, 35.803360, 27.959686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344110, -0.005362, -0.938914,
		-0.463325, -0.870724, -0.164835,
		-0.816651, 0.491744, -0.302110,
		33.211704, 35.950882, 27.869053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806252, 35.467960, 27.466255>,  <33.783360, 35.606663, 28.080530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806252, 35.467960, 27.466255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534081, 35.761051, 27.470913>,  <33.370777, 35.936905, 27.473707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.534081, 35.761051, 27.470913>,  <33.806252, 35.467960, 27.466255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534081, 35.761051, 27.470913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435156, 0.416781, -0.798081,
		-0.589628, -0.537966, -0.602438,
		-0.680425, 0.732725, 0.011646,
		33.329952, 35.980869, 27.474407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539242, 35.426727, 26.886183>,  <33.806252, 35.467960, 27.466255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539242, 35.426727, 26.886183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491497, 35.811478, 26.984604>,  <33.462849, 36.042328, 27.043655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.491497, 35.811478, 26.984604>,  <33.539242, 35.426727, 26.886183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491497, 35.811478, 26.984604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540249, 0.270847, -0.796726,
		-0.832997, 0.037827, -0.551984,
		-0.119365, 0.961879, 0.246051,
		33.455688, 36.100040, 27.058418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248020, 35.835682, 26.250347>,  <33.539242, 35.426727, 26.886183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248020, 35.835682, 26.250347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402916, 36.092812, 26.514715>,  <33.495853, 36.247089, 26.673336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.402916, 36.092812, 26.514715>,  <33.248020, 35.835682, 26.250347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402916, 36.092812, 26.514715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596940, 0.371505, -0.711089,
		-0.702644, 0.669892, -0.239868,
		0.387240, 0.642829, 0.660921,
		33.519089, 36.285660, 26.712992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329002, 36.538242, 25.963963>,  <33.248020, 35.835682, 26.250347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329002, 36.538242, 25.963963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616272, 36.521469, 26.241802>,  <33.788635, 36.511406, 26.408506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.616272, 36.521469, 26.241802>,  <33.329002, 36.538242, 25.963963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616272, 36.521469, 26.241802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607818, 0.523792, -0.596824,
		-0.338797, 0.850813, 0.401663,
		0.718174, -0.041936, 0.694599,
		33.831722, 36.508888, 26.450182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714142, 37.071960, 25.700090>,  <33.329002, 36.538242, 25.963963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714142, 37.071960, 25.700090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939018, 36.953857, 26.009092>,  <34.073944, 36.882996, 26.194494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939018, 36.953857, 26.009092>,  <33.714142, 37.071960, 25.700090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939018, 36.953857, 26.009092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758361, 0.556668, -0.339130,
		-0.329899, 0.776494, 0.536864,
		0.562188, -0.295258, 0.772507,
		34.107674, 36.865280, 26.240845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988953, 37.652523, 26.035723>,  <33.714142, 37.071960, 25.700090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988953, 37.652523, 26.035723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224377, 37.333214, 26.086897>,  <34.365631, 37.141628, 26.117601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224377, 37.333214, 26.086897>,  <33.988953, 37.652523, 26.035723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224377, 37.333214, 26.086897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772338, 0.508407, -0.380810,
		0.238945, 0.322939, 0.915760,
		0.588557, -0.798268, 0.127937,
		34.400944, 37.093735, 26.125278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566872, 37.942398, 26.272068>,  <33.988953, 37.652523, 26.035723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566872, 37.942398, 26.272068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.706535, 37.572460, 26.211729>,  <34.790333, 37.350498, 26.175526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.706535, 37.572460, 26.211729>,  <34.566872, 37.942398, 26.272068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706535, 37.572460, 26.211729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891155, 0.377488, -0.251686,
		0.289713, -0.046550, 0.955981,
		0.349155, -0.924844, -0.150847,
		34.811283, 37.295006, 26.166475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188442, 37.787991, 26.632515>,  <34.566872, 37.942398, 26.272068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188442, 37.787991, 26.632515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194092, 37.539440, 26.319159>,  <35.197479, 37.390312, 26.131145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194092, 37.539440, 26.319159>,  <35.188442, 37.787991, 26.632515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194092, 37.539440, 26.319159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918920, 0.316931, -0.234823,
		0.394193, -0.716555, 0.575466,
		0.014120, -0.621372, -0.783389,
		35.198326, 37.353027, 26.084143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807850, 37.330570, 26.663572>,  <35.188442, 37.787991, 26.632515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807850, 37.330570, 26.663572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695179, 37.321266, 26.279881>,  <35.627575, 37.315685, 26.049665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695179, 37.321266, 26.279881>,  <35.807850, 37.330570, 26.663572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695179, 37.321266, 26.279881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945960, 0.160676, -0.281678,
		0.160676, -0.986733, -0.023258,
		0.281678, 0.023258, 0.959227,
		35.610676, 37.314289, 25.992113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310299, 37.067513, 26.427937>,  <35.807850, 37.330570, 26.663572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310299, 37.067513, 26.427937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150269, 37.233440, 26.101046>,  <36.054249, 37.332996, 25.904911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150269, 37.233440, 26.101046>,  <36.310299, 37.067513, 26.427937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150269, 37.233440, 26.101046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876626, 0.433314, -0.209204,
		0.267333, -0.800100, -0.537004,
		-0.400075, 0.414825, -0.817227,
		36.030247, 37.357887, 25.855877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729443, 36.390446, 26.242874>,  <36.310299, 37.067513, 26.427937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729443, 36.390446, 26.242874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010830, 36.129204, 26.355009>,  <37.179661, 35.972458, 26.422289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010830, 36.129204, 26.355009>,  <36.729443, 36.390446, 26.242874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010830, 36.129204, 26.355009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706855, -0.601788, 0.371762,
		-0.074097, -0.459679, -0.884989,
		0.703467, -0.653105, 0.280336,
		37.221870, 35.933273, 26.439110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351162, 35.727741, 26.110664>,  <36.729443, 36.390446, 26.242874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351162, 35.727741, 26.110664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671482, 35.683201, 26.346062>,  <36.863674, 35.656475, 26.487299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671482, 35.683201, 26.346062>,  <36.351162, 35.727741, 26.110664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671482, 35.683201, 26.346062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511026, -0.639477, 0.574387,
		0.312368, -0.760703, -0.568997,
		0.800799, -0.111352, 0.588491,
		36.911720, 35.649796, 26.522610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364895, 34.945621, 26.312521>,  <36.351162, 35.727741, 26.110664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364895, 34.945621, 26.312521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586544, 35.151283, 26.574389>,  <36.719532, 35.274681, 26.731510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586544, 35.151283, 26.574389>,  <36.364895, 34.945621, 26.312521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586544, 35.151283, 26.574389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279109, -0.626172, 0.728015,
		0.784249, -0.586134, -0.203470,
		0.554122, 0.514155, 0.654671,
		36.752781, 35.305531, 26.770790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632809, 34.357712, 26.662510>,  <36.364895, 34.945621, 26.312521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632809, 34.357712, 26.662510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686771, 34.676460, 26.898069>,  <36.719147, 34.867710, 27.039406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686771, 34.676460, 26.898069>,  <36.632809, 34.357712, 26.662510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686771, 34.676460, 26.898069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191897, -0.562067, 0.804522,
		0.972099, -0.221541, 0.077091,
		0.134904, 0.796869, 0.588898,
		36.727242, 34.915520, 27.074739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993080, 34.012058, 27.301088>,  <36.632809, 34.357712, 26.662510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993080, 34.012058, 27.301088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839584, 34.369186, 27.395428>,  <36.747486, 34.583462, 27.452032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839584, 34.369186, 27.395428>,  <36.993080, 34.012058, 27.301088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839584, 34.369186, 27.395428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242361, -0.343821, 0.907220,
		0.891071, 0.290973, 0.348321,
		-0.383737, 0.892817, 0.235848,
		36.724464, 34.637032, 27.466183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292007, 34.265087, 27.930790>,  <36.993080, 34.012058, 27.301088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292007, 34.265087, 27.930790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936432, 34.446571, 27.905678>,  <36.723087, 34.555462, 27.890610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936432, 34.446571, 27.905678>,  <37.292007, 34.265087, 27.930790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936432, 34.446571, 27.905678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303690, -0.481223, 0.822312,
		0.342880, 0.750048, 0.565563,
		-0.888935, 0.453710, -0.062780,
		36.669750, 34.582684, 27.886845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062595, 34.413002, 28.595854>,  <37.292007, 34.265087, 27.930790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062595, 34.413002, 28.595854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723038, 34.439930, 28.386152>,  <36.519302, 34.456085, 28.260330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723038, 34.439930, 28.386152>,  <37.062595, 34.413002, 28.595854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723038, 34.439930, 28.386152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506049, -0.389897, 0.769347,
		-0.152614, 0.918395, 0.365049,
		-0.848895, 0.067319, -0.524256,
		36.468369, 34.460125, 28.228876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661633, 34.725925, 29.067839>,  <37.062595, 34.413002, 28.595854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661633, 34.725925, 29.067839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384331, 34.566010, 28.827984>,  <36.217949, 34.470062, 28.684071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.384331, 34.566010, 28.827984>,  <36.661633, 34.725925, 29.067839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384331, 34.566010, 28.827984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518360, -0.301450, 0.800269,
		-0.500697, 0.865621, 0.001750,
		-0.693257, -0.399786, -0.599638,
		36.176353, 34.446075, 28.648092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002708, 34.949821, 29.337229>,  <36.661633, 34.725925, 29.067839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002708, 34.949821, 29.337229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960468, 34.606747, 29.135942>,  <35.935123, 34.400902, 29.015171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960468, 34.606747, 29.135942>,  <36.002708, 34.949821, 29.337229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960468, 34.606747, 29.135942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615608, -0.341031, 0.710440,
		-0.780946, 0.384802, -0.491987,
		-0.105596, -0.857686, -0.503214,
		35.928791, 34.349442, 28.984978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331673, 34.829765, 29.370922>,  <36.002708, 34.949821, 29.337229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331673, 34.829765, 29.370922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483952, 34.467854, 29.294565>,  <35.575321, 34.250706, 29.248751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.483952, 34.467854, 29.294565>,  <35.331673, 34.829765, 29.370922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483952, 34.467854, 29.294565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630492, -0.404994, 0.662163,
		-0.676423, -0.131728, -0.724638,
		0.380700, -0.904780, -0.190894,
		35.598160, 34.196419, 29.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767254, 34.429390, 29.140392>,  <35.331673, 34.829765, 29.370922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767254, 34.429390, 29.140392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.044189, 34.158794, 29.240812>,  <35.210350, 33.996437, 29.301064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.044189, 34.158794, 29.240812>,  <34.767254, 34.429390, 29.140392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044189, 34.158794, 29.240812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683540, -0.503418, 0.528529,
		-0.231162, -0.537524, -0.810945,
		0.692342, -0.676489, 0.251048,
		35.251892, 33.955849, 29.316126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489605, 33.708614, 29.042715>,  <34.767254, 34.429390, 29.140392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489605, 33.708614, 29.042715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784790, 33.673660, 29.310381>,  <34.961899, 33.652687, 29.470980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784790, 33.673660, 29.310381>,  <34.489605, 33.708614, 29.042715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784790, 33.673660, 29.310381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590360, -0.563990, 0.577400,
		0.326945, -0.821145, -0.467790,
		0.737958, -0.087386, 0.669165,
		35.006176, 33.647446, 29.511131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438068, 32.998505, 29.265314>,  <34.489605, 33.708614, 29.042715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438068, 32.998505, 29.265314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660748, 33.208649, 29.522711>,  <34.794357, 33.334736, 29.677149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660748, 33.208649, 29.522711>,  <34.438068, 32.998505, 29.265314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660748, 33.208649, 29.522711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513003, -0.391848, 0.763729,
		0.653384, -0.755282, 0.051369,
		0.556702, 0.525361, 0.643490,
		34.827759, 33.366257, 29.715757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667244, 32.513332, 29.901947>,  <34.438068, 32.998505, 29.265314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667244, 32.513332, 29.901947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690109, 32.890583, 30.032944>,  <34.703827, 33.116932, 30.111542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.690109, 32.890583, 30.032944>,  <34.667244, 32.513332, 29.901947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690109, 32.890583, 30.032944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569657, -0.238575, 0.786494,
		0.819892, -0.231517, 0.523619,
		0.057164, 0.943124, 0.327491,
		34.707260, 33.173519, 30.131191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.505173, 35.651131, 29.788507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317032, 35.994541, 29.706814>,  <40.204147, 36.200588, 29.657797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317032, 35.994541, 29.706814>,  <40.505173, 35.651131, 29.788507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317032, 35.994541, 29.706814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734853, 0.252886, -0.629317,
		-0.488635, -0.446080, -0.749832,
		-0.470348, 0.858523, -0.204234,
		40.175926, 36.252098, 29.645544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375740, 35.623734, 29.041958>,  <40.505173, 35.651131, 29.788507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375740, 35.623734, 29.041958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.346066, 35.999237, 29.176558>,  <40.328262, 36.224541, 29.257317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.346066, 35.999237, 29.176558>,  <40.375740, 35.623734, 29.041958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346066, 35.999237, 29.176558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506525, 0.326129, -0.798168,
		-0.859028, 0.111234, -0.499697,
		-0.074182, 0.938758, 0.336497,
		40.323811, 36.280865, 29.277506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100754, 35.905361, 28.556099>,  <40.375740, 35.623734, 29.041958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100754, 35.905361, 28.556099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317333, 36.173168, 28.759502>,  <40.447281, 36.333851, 28.881544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.317333, 36.173168, 28.759502>,  <40.100754, 35.905361, 28.556099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317333, 36.173168, 28.759502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348987, 0.371285, -0.860439,
		-0.764878, 0.643349, -0.032619,
		0.541451, 0.669514, 0.508509,
		40.479767, 36.374023, 28.912056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186554, 36.442875, 28.107178>,  <40.100754, 35.905361, 28.556099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186554, 36.442875, 28.107178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451004, 36.555973, 28.385160>,  <40.609676, 36.623833, 28.551950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451004, 36.555973, 28.385160>,  <40.186554, 36.442875, 28.107178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451004, 36.555973, 28.385160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597580, 0.361634, -0.715624,
		-0.453662, 0.888411, 0.070122,
		0.661127, 0.282748, 0.694957,
		40.649342, 36.640797, 28.593647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377068, 37.107990, 28.050978>,  <40.186554, 36.442875, 28.107178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377068, 37.107990, 28.050978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.686562, 36.956657, 28.254229>,  <40.872257, 36.865856, 28.376179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.686562, 36.956657, 28.254229>,  <40.377068, 37.107990, 28.050978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686562, 36.956657, 28.254229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632936, 0.495770, -0.594646,
		-0.026939, 0.781712, 0.623058,
		0.773735, -0.378337, 0.508129,
		40.918682, 36.843155, 28.406668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779228, 37.679996, 28.152060>,  <40.377068, 37.107990, 28.050978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779228, 37.679996, 28.152060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.028809, 37.369675, 28.189606>,  <41.178558, 37.183479, 28.212133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.028809, 37.369675, 28.189606>,  <40.779228, 37.679996, 28.152060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028809, 37.369675, 28.189606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594071, 0.392857, -0.701956,
		0.507706, 0.493749, 0.706007,
		0.623950, -0.775806, 0.093866,
		41.215992, 37.136932, 28.217766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442684, 37.979290, 28.153503>,  <40.779228, 37.679996, 28.152060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442684, 37.979290, 28.153503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.537930, 37.602249, 28.059858>,  <41.595078, 37.376026, 28.003672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.537930, 37.602249, 28.059858>,  <41.442684, 37.979290, 28.153503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537930, 37.602249, 28.059858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746226, 0.331833, -0.577090,
		0.621651, -0.037289, 0.782406,
		0.238110, -0.942601, -0.234111,
		41.609364, 37.319469, 27.989626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127796, 37.913326, 28.185698>,  <41.442684, 37.979290, 28.153503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127796, 37.913326, 28.185698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025356, 37.604954, 27.952435>,  <41.963890, 37.419930, 27.812477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025356, 37.604954, 27.952435>,  <42.127796, 37.913326, 28.185698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025356, 37.604954, 27.952435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741583, 0.230275, -0.630102,
		0.620053, -0.593830, 0.512738,
		-0.256103, -0.770934, -0.583157,
		41.948524, 37.373672, 27.777487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801323, 37.758160, 28.030872>,  <42.127796, 37.913326, 28.185698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801323, 37.758160, 28.030872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544350, 37.572842, 27.786695>,  <42.390167, 37.461651, 27.640190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544350, 37.572842, 27.786695>,  <42.801323, 37.758160, 28.030872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544350, 37.572842, 27.786695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659443, 0.071590, -0.748338,
		0.390401, -0.883309, 0.259524,
		-0.642434, -0.463292, -0.610441,
		42.351620, 37.433853, 27.603563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158779, 37.415779, 27.620590>,  <42.801323, 37.758160, 28.030872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158779, 37.415779, 27.620590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832539, 37.431515, 27.389681>,  <42.636795, 37.440956, 27.251135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.832539, 37.431515, 27.389681>,  <43.158779, 37.415779, 27.620590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832539, 37.431515, 27.389681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567152, 0.251935, -0.784135,
		0.114593, -0.966944, -0.227788,
		-0.815603, 0.039334, -0.577274,
		42.587856, 37.443314, 27.216499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428928, 37.275822, 27.055069>,  <43.158779, 37.415779, 27.620590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428928, 37.275822, 27.055069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093109, 37.410618, 26.884611>,  <42.891617, 37.491497, 26.782337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093109, 37.410618, 26.884611>,  <43.428928, 37.275822, 27.055069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093109, 37.410618, 26.884611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492381, 0.140453, -0.858972,
		-0.229612, -0.930973, -0.283845,
		-0.839547, 0.336990, -0.426144,
		42.841244, 37.511715, 26.756767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275406, 36.905540, 26.475863>,  <43.428928, 37.275822, 27.055069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275406, 36.905540, 26.475863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130840, 37.278301, 26.463633>,  <43.044102, 37.501957, 26.456295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.130840, 37.278301, 26.463633>,  <43.275406, 36.905540, 26.475863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130840, 37.278301, 26.463633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594501, 0.205055, -0.777509,
		-0.718294, -0.299181, -0.628127,
		-0.361417, 0.931903, -0.030574,
		43.022415, 37.557873, 26.454460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087437, 37.104816, 25.686640>,  <43.275406, 36.905540, 26.475863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087437, 37.104816, 25.686640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142803, 37.424786, 25.920208>,  <43.176022, 37.616768, 26.060349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.142803, 37.424786, 25.920208>,  <43.087437, 37.104816, 25.686640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142803, 37.424786, 25.920208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500330, 0.452345, -0.738277,
		-0.854699, 0.394344, -0.337613,
		0.138418, 0.799923, 0.583922,
		43.184330, 37.664761, 26.095385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945160, 37.742928, 25.252317>,  <43.087437, 37.104816, 25.686640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945160, 37.742928, 25.252317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167252, 37.878094, 25.556299>,  <43.300507, 37.959194, 25.738689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.167252, 37.878094, 25.556299>,  <42.945160, 37.742928, 25.252317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167252, 37.878094, 25.556299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570833, 0.509711, -0.643696,
		-0.604871, 0.791208, 0.090116,
		0.555231, 0.337912, 0.759957,
		43.333820, 37.979465, 25.784286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538639, 37.955467, 24.733606>,  <42.945160, 37.742928, 25.252317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538639, 37.955467, 24.733606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.281139, 37.900703, 24.432451>,  <42.126640, 37.867844, 24.251759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.281139, 37.900703, 24.432451>,  <42.538639, 37.955467, 24.733606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281139, 37.900703, 24.432451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753085, 0.287991, 0.591544,
		0.135834, 0.947795, -0.288501,
		-0.643748, -0.136914, -0.752890,
		42.088017, 37.859631, 24.206585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039806, 38.382946, 24.912510>,  <42.538639, 37.955467, 24.733606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039806, 38.382946, 24.912510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861237, 38.168488, 24.625942>,  <41.754093, 38.039814, 24.454002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.861237, 38.168488, 24.625942>,  <42.039806, 38.382946, 24.912510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861237, 38.168488, 24.625942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833399, -0.042393, 0.551043,
		-0.325809, 0.843063, -0.427895,
		-0.446424, -0.536142, -0.716420,
		41.727310, 38.007645, 24.411016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389515, 38.448788, 24.955496>,  <42.039806, 38.382946, 24.912510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389515, 38.448788, 24.955496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.380566, 38.109097, 24.744473>,  <41.375195, 37.905281, 24.617859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.380566, 38.109097, 24.744473>,  <41.389515, 38.448788, 24.955496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380566, 38.109097, 24.744473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877443, -0.236232, 0.417479,
		-0.479160, 0.472243, -0.739860,
		-0.022373, -0.849224, -0.527559,
		41.373856, 37.854328, 24.586205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773590, 38.441303, 24.539503>,  <41.389515, 38.448788, 24.955496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773590, 38.441303, 24.539503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.888912, 38.066643, 24.619059>,  <40.958107, 37.841846, 24.666792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.888912, 38.066643, 24.619059>,  <40.773590, 38.441303, 24.539503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888912, 38.066643, 24.619059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927839, -0.221942, 0.299760,
		-0.236632, -0.270954, -0.933054,
		0.288305, -0.936656, 0.198883,
		40.975403, 37.785645, 24.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158638, 37.957874, 24.418999>,  <40.773590, 38.441303, 24.539503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158638, 37.957874, 24.418999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384876, 37.699104, 24.623585>,  <40.520618, 37.543842, 24.746336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384876, 37.699104, 24.623585>,  <40.158638, 37.957874, 24.418999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384876, 37.699104, 24.623585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821696, -0.389309, 0.416238,
		-0.070156, -0.655689, -0.751764,
		0.565591, -0.646923, 0.511465,
		40.554554, 37.505028, 24.777025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868652, 37.250320, 24.264923>,  <40.158638, 37.957874, 24.418999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868652, 37.250320, 24.264923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073368, 37.228096, 24.607849>,  <40.196198, 37.214760, 24.813604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073368, 37.228096, 24.607849>,  <39.868652, 37.250320, 24.264923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073368, 37.228096, 24.607849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816427, -0.342093, 0.465208,
		0.267433, -0.938022, -0.220441,
		0.511787, -0.055562, 0.857314,
		40.226906, 37.211426, 24.865044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710007, 36.497250, 24.538074>,  <39.868652, 37.250320, 24.264923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710007, 36.497250, 24.538074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837288, 36.718449, 24.846087>,  <39.913658, 36.851166, 25.030893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837288, 36.718449, 24.846087>,  <39.710007, 36.497250, 24.538074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837288, 36.718449, 24.846087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779160, -0.310153, 0.544715,
		0.540051, -0.773306, 0.332178,
		0.318206, 0.552993, 0.770028,
		39.932751, 36.884346, 25.077095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819595, 36.034885, 24.915098>,  <39.710007, 36.497250, 24.538074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819595, 36.034885, 24.915098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753906, 36.363148, 25.134022>,  <39.714493, 36.560104, 25.265375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753906, 36.363148, 25.134022>,  <39.819595, 36.034885, 24.915098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753906, 36.363148, 25.134022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721588, -0.478249, 0.500589,
		0.672563, -0.312721, 0.670719,
		-0.164226, 0.820661, 0.547308,
		39.704639, 36.609344, 25.298214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628536, 35.771210, 25.525064>,  <39.819595, 36.034885, 24.915098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628536, 35.771210, 25.525064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.473221, 36.138588, 25.555223>,  <39.380032, 36.359016, 25.573318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.473221, 36.138588, 25.555223>,  <39.628536, 35.771210, 25.525064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473221, 36.138588, 25.555223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752345, -0.363184, 0.549613,
		0.532174, 0.156684, 0.832010,
		-0.388288, 0.918448, 0.075396,
		39.356735, 36.414124, 25.577843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344971, 35.767864, 26.191307>,  <39.628536, 35.771210, 25.525064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344971, 35.767864, 26.191307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173691, 36.070938, 25.994307>,  <39.070923, 36.252781, 25.876106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.173691, 36.070938, 25.994307>,  <39.344971, 35.767864, 26.191307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173691, 36.070938, 25.994307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850936, -0.154597, 0.502003,
		0.304221, 0.634045, 0.710940,
		-0.428202, 0.757685, -0.492500,
		39.045231, 36.298244, 25.846556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973495, 36.112167, 26.754559>,  <39.344971, 35.767864, 26.191307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973495, 36.112167, 26.754559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825287, 36.200184, 26.393604>,  <38.736362, 36.252995, 26.177032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.825287, 36.200184, 26.393604>,  <38.973495, 36.112167, 26.754559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825287, 36.200184, 26.393604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926254, -0.159774, 0.341358,
		-0.069063, 0.962316, 0.263017,
		-0.370517, 0.220045, -0.902384,
		38.714130, 36.266197, 26.122889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499249, 36.566521, 26.823977>,  <38.973495, 36.112167, 26.754559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499249, 36.566521, 26.823977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.410038, 36.421810, 26.461899>,  <38.356510, 36.334984, 26.244652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.410038, 36.421810, 26.461899>,  <38.499249, 36.566521, 26.823977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410038, 36.421810, 26.461899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951774, -0.119872, 0.282413,
		-0.210677, 0.924528, -0.317590,
		-0.223029, -0.361772, -0.905196,
		38.343128, 36.313278, 26.190340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919689, 36.872639, 26.675970>,  <38.499249, 36.566521, 26.823977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919689, 36.872639, 26.675970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939884, 36.539001, 26.456249>,  <37.952000, 36.338818, 26.324417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939884, 36.539001, 26.456249>,  <37.919689, 36.872639, 26.675970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939884, 36.539001, 26.456249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895949, -0.280840, 0.344099,
		-0.441278, 0.474774, -0.761487,
		0.050486, -0.834097, -0.549302,
		37.955029, 36.288773, 26.291458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309822, 36.826393, 26.378738>,  <37.919689, 36.872639, 26.675970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309822, 36.826393, 26.378738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460442, 36.458412, 26.335114>,  <37.550816, 36.237625, 26.308939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460442, 36.458412, 26.335114>,  <37.309822, 36.826393, 26.378738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460442, 36.458412, 26.335114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864896, -0.391288, 0.314404,
		-0.331912, -0.024061, -0.943004,
		0.376551, -0.919954, -0.109063,
		37.573406, 36.182426, 26.302395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790478, 37.016804, 25.868452>,  <37.309822, 36.826393, 26.378738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790478, 37.016804, 25.868452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545494, 37.296356, 25.720690>,  <36.398502, 37.464088, 25.632032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545494, 37.296356, 25.720690>,  <36.790478, 37.016804, 25.868452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545494, 37.296356, 25.720690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761127, 0.395144, -0.514342,
		-0.213495, -0.596177, -0.773946,
		-0.612459, 0.698881, -0.369405,
		36.361755, 37.506020, 25.609869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905560, 37.031227, 25.143469>,  <36.790478, 37.016804, 25.868452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905560, 37.031227, 25.143469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753368, 37.388439, 25.239574>,  <36.662056, 37.602768, 25.297237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753368, 37.388439, 25.239574>,  <36.905560, 37.031227, 25.143469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753368, 37.388439, 25.239574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692287, 0.447300, -0.566270,
		-0.613169, -0.049119, -0.788423,
		-0.380476, 0.893034, 0.240266,
		36.639225, 37.656349, 25.311655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864479, 37.342140, 24.460522>,  <36.905560, 37.031227, 25.143469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864479, 37.342140, 24.460522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.837135, 37.626270, 24.740740>,  <36.820728, 37.796749, 24.908871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.837135, 37.626270, 24.740740>,  <36.864479, 37.342140, 24.460522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837135, 37.626270, 24.740740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576162, 0.601362, -0.553536,
		-0.814472, 0.365786, -0.450374,
		-0.068362, 0.710327, 0.700544,
		36.816628, 37.839367, 24.950903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641376, 37.963974, 24.109846>,  <36.864479, 37.342140, 24.460522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641376, 37.963974, 24.109846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811310, 38.075439, 24.454372>,  <36.913269, 38.142319, 24.661087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811310, 38.075439, 24.454372>,  <36.641376, 37.963974, 24.109846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811310, 38.075439, 24.454372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482700, 0.735175, -0.475940,
		-0.765843, 0.617953, 0.177819,
		0.424836, 0.278662, 0.861314,
		36.938759, 38.159039, 24.712767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693771, 38.628983, 23.995531>,  <36.641376, 37.963974, 24.109846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693771, 38.628983, 23.995531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952621, 38.558838, 24.292309>,  <37.107933, 38.516750, 24.470375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.952621, 38.558838, 24.292309>,  <36.693771, 38.628983, 23.995531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952621, 38.558838, 24.292309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660600, 0.614782, -0.430873,
		-0.380576, 0.768956, 0.513682,
		0.647124, -0.175358, 0.741943,
		37.146759, 38.506229, 24.514893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966587, 39.274090, 24.127428>,  <36.693771, 38.628983, 23.995531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966587, 39.274090, 24.127428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230335, 39.041744, 24.318356>,  <37.388584, 38.902336, 24.432911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230335, 39.041744, 24.318356>,  <36.966587, 39.274090, 24.127428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230335, 39.041744, 24.318356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749540, 0.557287, -0.357240,
		-0.058495, 0.593321, 0.802838,
		0.659369, -0.580862, 0.477316,
		37.428146, 38.867485, 24.461550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305107, 39.656841, 24.614031>,  <36.966587, 39.274090, 24.127428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305107, 39.656841, 24.614031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561920, 39.356827, 24.550482>,  <37.716007, 39.176819, 24.512352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561920, 39.356827, 24.550482>,  <37.305107, 39.656841, 24.614031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561920, 39.356827, 24.550482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618176, 0.629014, -0.471380,
		0.453483, 0.204433, 0.867503,
		0.642037, -0.750032, -0.158871,
		37.754532, 39.131817, 24.502821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534843, 40.091576, 25.191927>,  <37.305107, 39.656841, 24.614031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534843, 40.091576, 25.191927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362141, 40.418888, 25.040133>,  <37.258518, 40.615276, 24.949055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362141, 40.418888, 25.040133>,  <37.534843, 40.091576, 25.191927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362141, 40.418888, 25.040133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817887, -0.177761, 0.547230,
		0.380328, 0.546646, 0.746008,
		-0.431753, 0.818278, -0.379488,
		37.232616, 40.664371, 24.926287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087189, 40.373249, 25.752043>,  <37.534843, 40.091576, 25.191927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087189, 40.373249, 25.752043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971981, 40.543377, 25.408846>,  <36.902855, 40.645454, 25.202929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971981, 40.543377, 25.408846>,  <37.087189, 40.373249, 25.752043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971981, 40.543377, 25.408846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957532, -0.140383, 0.251846,
		-0.013332, 0.894090, 0.447689,
		-0.288020, 0.425318, -0.857991,
		36.885574, 40.670971, 25.151449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531666, 40.747234, 25.935696>,  <37.087189, 40.373249, 25.752043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531666, 40.747234, 25.935696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469730, 40.741001, 25.540569>,  <36.432568, 40.737263, 25.303493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469730, 40.741001, 25.540569>,  <36.531666, 40.747234, 25.935696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469730, 40.741001, 25.540569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984895, 0.080866, 0.153108,
		0.077495, 0.996603, -0.027867,
		-0.154842, -0.015581, -0.987816,
		36.423279, 40.736328, 25.244225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188915, 41.449909, 25.682419>,  <36.531666, 40.747234, 25.935696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188915, 41.449909, 25.682419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110043, 41.163605, 25.414448>,  <36.062717, 40.991821, 25.253666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110043, 41.163605, 25.414448>,  <36.188915, 41.449909, 25.682419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110043, 41.163605, 25.414448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979393, 0.113368, 0.167143,
		-0.043687, 0.689080, -0.723368,
		-0.197182, -0.715763, -0.669927,
		36.050888, 40.948875, 25.213470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663578, 41.730465, 25.276279>,  <36.188915, 41.449909, 25.682419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663578, 41.730465, 25.276279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617931, 41.334911, 25.238165>,  <35.590546, 41.097580, 25.215296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617931, 41.334911, 25.238165>,  <35.663578, 41.730465, 25.276279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617931, 41.334911, 25.238165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862516, 0.051018, 0.503452,
		-0.492996, 0.139638, -0.858753,
		-0.114113, -0.988888, -0.095289,
		35.583698, 41.038246, 25.209578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898052, 41.628441, 25.098055>,  <35.663578, 41.730465, 25.276279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898052, 41.628441, 25.098055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045479, 41.277592, 25.221220>,  <35.133934, 41.067081, 25.295118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045479, 41.277592, 25.221220>,  <34.898052, 41.628441, 25.098055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045479, 41.277592, 25.221220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890045, -0.237361, 0.389204,
		-0.268296, -0.417499, -0.868166,
		0.368561, -0.877128, 0.307909,
		35.156048, 41.014454, 25.313593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287239, 41.262695, 25.173954>,  <34.898052, 41.628441, 25.098055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287239, 41.262695, 25.173954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528683, 41.013397, 25.372839>,  <34.673550, 40.863819, 25.492170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528683, 41.013397, 25.372839>,  <34.287239, 41.262695, 25.173954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528683, 41.013397, 25.372839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793551, -0.529879, 0.299173,
		0.077005, -0.575148, -0.814417,
		0.603611, -0.623244, 0.497213,
		34.709766, 40.826424, 25.522003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.742783, 40.792030, 26.135817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961231, 40.461632, 26.191656>,  <41.092300, 40.263393, 26.225159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961231, 40.461632, 26.191656>,  <40.742783, 40.792030, 26.135817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961231, 40.461632, 26.191656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340263, -0.066448, 0.937980,
		-0.765488, -0.559752, -0.317343,
		0.546123, -0.825992, 0.139598,
		41.125069, 40.213833, 26.233536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293213, 40.285595, 26.415585>,  <40.742783, 40.792030, 26.135817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293213, 40.285595, 26.415585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656578, 40.148109, 26.510792>,  <40.874596, 40.065620, 26.567917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.656578, 40.148109, 26.510792>,  <40.293213, 40.285595, 26.415585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656578, 40.148109, 26.510792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280105, -0.077711, 0.956819,
		-0.310371, -0.935855, -0.166868,
		0.908411, -0.343710, 0.238018,
		40.929100, 40.044998, 26.582197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184662, 39.676712, 26.867159>,  <40.293213, 40.285595, 26.415585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184662, 39.676712, 26.867159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.551273, 39.817432, 26.943285>,  <40.771240, 39.901863, 26.988960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.551273, 39.817432, 26.943285>,  <40.184662, 39.676712, 26.867159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551273, 39.817432, 26.943285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155233, -0.125658, 0.979853,
		0.368624, -0.927604, -0.060559,
		0.916525, 0.351797, 0.190315,
		40.826233, 39.922970, 27.000380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328537, 39.222980, 27.386456>,  <40.184662, 39.676712, 26.867159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328537, 39.222980, 27.386456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604973, 39.510715, 27.414595>,  <40.770836, 39.683357, 27.431479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604973, 39.510715, 27.414595>,  <40.328537, 39.222980, 27.386456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604973, 39.510715, 27.414595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111357, 0.009806, 0.993732,
		0.714136, -0.694595, 0.086880,
		0.691093, 0.719334, 0.070346,
		40.812302, 39.726517, 27.435698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814922, 38.910198, 27.829853>,  <40.328537, 39.222980, 27.386456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814922, 38.910198, 27.829853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830738, 39.309849, 27.824406>,  <40.840225, 39.549641, 27.821138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830738, 39.309849, 27.824406>,  <40.814922, 38.910198, 27.829853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830738, 39.309849, 27.824406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131664, 0.018718, 0.991118,
		0.990506, -0.037391, 0.132289,
		0.039535, 0.999125, -0.013618,
		40.842598, 39.609585, 27.820320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279690, 39.119762, 28.293186>,  <40.814922, 38.910198, 27.829853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279690, 39.119762, 28.293186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035404, 39.432064, 28.240343>,  <40.888832, 39.619446, 28.208637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035404, 39.432064, 28.240343>,  <41.279690, 39.119762, 28.293186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035404, 39.432064, 28.240343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346981, -0.113896, 0.930931,
		0.711781, 0.614371, 0.340464,
		-0.610715, 0.780753, -0.132106,
		40.852188, 39.666290, 28.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273762, 39.446365, 28.897055>,  <41.279690, 39.119762, 28.293186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273762, 39.446365, 28.897055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.933823, 39.601818, 28.754663>,  <40.729858, 39.695091, 28.669228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.933823, 39.601818, 28.754663>,  <41.273762, 39.446365, 28.897055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933823, 39.601818, 28.754663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438488, -0.146684, 0.886686,
		0.292382, 0.909641, 0.295071,
		-0.849848, 0.388636, -0.355979,
		40.678867, 39.718410, 28.647869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018242, 39.736122, 29.522327>,  <41.273762, 39.446365, 28.897055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018242, 39.736122, 29.522327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707161, 39.736408, 29.270876>,  <40.520512, 39.736580, 29.120005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707161, 39.736408, 29.270876>,  <41.018242, 39.736122, 29.522327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707161, 39.736408, 29.270876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628345, -0.030873, 0.777322,
		-0.018848, 0.999523, 0.024462,
		-0.777706, 0.000720, -0.628627,
		40.473850, 39.736626, 29.082287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426083, 40.237293, 29.782171>,  <41.018242, 39.736122, 29.522327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426083, 40.237293, 29.782171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255974, 39.971355, 29.536528>,  <40.153908, 39.811794, 29.389141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255974, 39.971355, 29.536528>,  <40.426083, 40.237293, 29.782171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255974, 39.971355, 29.536528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643662, -0.254844, 0.721633,
		-0.636273, 0.702168, -0.319556,
		-0.425271, -0.664842, -0.614110,
		40.128391, 39.771904, 29.352295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830101, 40.520603, 29.736252>,  <40.426083, 40.237293, 29.782171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830101, 40.520603, 29.736252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782307, 40.136997, 29.633480>,  <39.753632, 39.906834, 29.571817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782307, 40.136997, 29.633480>,  <39.830101, 40.520603, 29.736252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782307, 40.136997, 29.633480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754372, -0.080553, 0.651487,
		-0.645482, 0.271662, -0.713829,
		-0.119483, -0.959016, -0.256929,
		39.746460, 39.849293, 29.556402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096531, 40.481041, 29.671202>,  <39.830101, 40.520603, 29.736252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096531, 40.481041, 29.671202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239674, 40.107948, 29.688879>,  <39.325558, 39.884094, 29.699486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239674, 40.107948, 29.688879>,  <39.096531, 40.481041, 29.671202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239674, 40.107948, 29.688879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757734, -0.262406, 0.597481,
		-0.545692, -0.247298, -0.800665,
		0.357855, -0.932730, 0.044193,
		39.347031, 39.828129, 29.702137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597633, 40.116440, 29.353447>,  <39.096531, 40.481041, 29.671202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597633, 40.116440, 29.353447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812668, 39.880627, 29.594597>,  <38.941689, 39.739140, 29.739286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812668, 39.880627, 29.594597>,  <38.597633, 40.116440, 29.353447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812668, 39.880627, 29.594597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828600, -0.236813, 0.507288,
		-0.156294, -0.772251, -0.615793,
		0.537582, -0.589532, 0.602875,
		38.973942, 39.703766, 29.775459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250298, 40.180370, 28.658583>,  <38.597633, 40.116440, 29.353447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250298, 40.180370, 28.658583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004910, 40.494392, 28.624310>,  <37.857677, 40.682808, 28.603746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.004910, 40.494392, 28.624310>,  <38.250298, 40.180370, 28.658583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004910, 40.494392, 28.624310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649961, 0.440296, -0.619426,
		-0.448560, -0.435689, -0.780365,
		-0.613469, 0.785057, -0.085682,
		37.820869, 40.729908, 28.598604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114498, 40.187408, 27.946527>,  <38.250298, 40.180370, 28.658583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114498, 40.187408, 27.946527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059086, 40.540035, 28.127035>,  <38.025837, 40.751614, 28.235340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059086, 40.540035, 28.127035>,  <38.114498, 40.187408, 27.946527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059086, 40.540035, 28.127035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513780, 0.453522, -0.728250,
		-0.846664, 0.130968, -0.515760,
		-0.138531, 0.881570, 0.451269,
		38.017525, 40.804504, 28.262417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197441, 40.552853, 27.373884>,  <38.114498, 40.187408, 27.946527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197441, 40.552853, 27.373884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224926, 40.820850, 27.669554>,  <38.241417, 40.981651, 27.846956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224926, 40.820850, 27.669554>,  <38.197441, 40.552853, 27.373884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224926, 40.820850, 27.669554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476371, 0.628966, -0.614388,
		-0.876555, 0.394339, -0.275949,
		0.068715, 0.669999, 0.739175,
		38.245541, 41.021851, 27.891306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924133, 41.240280, 27.104671>,  <38.197441, 40.552853, 27.373884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924133, 41.240280, 27.104671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154934, 41.344967, 27.414141>,  <38.293415, 41.407780, 27.599821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154934, 41.344967, 27.414141>,  <37.924133, 41.240280, 27.104671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154934, 41.344967, 27.414141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595542, 0.513425, -0.617838,
		-0.558923, 0.817250, 0.140384,
		0.577005, 0.261719, 0.773672,
		38.328037, 41.423481, 27.646242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033504, 41.865219, 27.069498>,  <37.924133, 41.240280, 27.104671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033504, 41.865219, 27.069498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341927, 41.761684, 27.302212>,  <38.526981, 41.699566, 27.441839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341927, 41.761684, 27.302212>,  <38.033504, 41.865219, 27.069498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341927, 41.761684, 27.302212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605707, 0.579987, -0.544733,
		-0.196432, 0.772412, 0.603982,
		0.771060, -0.258833, 0.581784,
		38.573246, 41.684036, 27.476748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314423, 42.502464, 27.352646>,  <38.033504, 41.865219, 27.069498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314423, 42.502464, 27.352646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591488, 42.217468, 27.397488>,  <38.757729, 42.046471, 27.424393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.591488, 42.217468, 27.397488>,  <38.314423, 42.502464, 27.352646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591488, 42.217468, 27.397488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604368, 0.488525, -0.629351,
		0.393641, 0.503684, 0.768992,
		0.692666, -0.712493, 0.112107,
		38.799286, 42.003719, 27.431120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956932, 42.881969, 27.297262>,  <38.314423, 42.502464, 27.352646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956932, 42.881969, 27.297262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073891, 42.500454, 27.269548>,  <39.144066, 42.271545, 27.252920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073891, 42.500454, 27.269548>,  <38.956932, 42.881969, 27.297262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073891, 42.500454, 27.269548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676610, 0.257535, -0.689837,
		0.675798, 0.154827, 0.720642,
		0.292396, -0.953784, -0.069284,
		39.161610, 42.214317, 27.248764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674244, 42.774410, 27.597046>,  <38.956932, 42.881969, 27.297262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674244, 42.774410, 27.597046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564346, 42.520790, 27.307911>,  <39.498409, 42.368618, 27.134430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564346, 42.520790, 27.307911>,  <39.674244, 42.774410, 27.597046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564346, 42.520790, 27.307911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816975, 0.242478, -0.523217,
		0.507019, -0.734292, 0.451384,
		-0.274743, -0.634050, -0.722839,
		39.481922, 42.330574, 27.091059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317745, 42.438538, 27.463789>,  <39.674244, 42.774410, 27.597046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317745, 42.438538, 27.463789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070164, 42.358231, 27.160057>,  <39.921616, 42.310047, 26.977818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.070164, 42.358231, 27.160057>,  <40.317745, 42.438538, 27.463789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070164, 42.358231, 27.160057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664422, 0.381721, -0.642520,
		0.418852, -0.902209, -0.102873,
		-0.618956, -0.200769, -0.759332,
		39.884476, 42.298000, 26.932257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806904, 42.014313, 26.952961>,  <40.317745, 42.438538, 27.463789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806904, 42.014313, 26.952961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476341, 42.140347, 26.766294>,  <40.278004, 42.215969, 26.654295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.476341, 42.140347, 26.766294>,  <40.806904, 42.014313, 26.952961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476341, 42.140347, 26.766294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556162, 0.327244, -0.763934,
		-0.087992, -0.890860, -0.445675,
		-0.826403, 0.315087, -0.466668,
		40.228420, 42.234871, 26.626295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937599, 41.807068, 26.237768>,  <40.806904, 42.014313, 26.952961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937599, 41.807068, 26.237768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.651638, 42.086227, 26.220528>,  <40.480061, 42.253723, 26.210182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.651638, 42.086227, 26.220528>,  <40.937599, 41.807068, 26.237768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651638, 42.086227, 26.220528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399826, 0.357442, -0.844023,
		-0.573632, -0.620628, -0.534572,
		-0.714902, 0.697894, -0.043103,
		40.437168, 42.295597, 26.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555130, 41.764462, 25.573250>,  <40.937599, 41.807068, 26.237768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555130, 41.764462, 25.573250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527245, 42.131290, 25.730280>,  <40.510513, 42.351387, 25.824497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527245, 42.131290, 25.730280>,  <40.555130, 41.764462, 25.573250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527245, 42.131290, 25.730280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370781, 0.389159, -0.843254,
		-0.926100, 0.086774, -0.367163,
		-0.069712, 0.917075, 0.392574,
		40.506332, 42.406414, 25.848053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467857, 42.187576, 24.968027>,  <40.555130, 41.764462, 25.573250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467857, 42.187576, 24.968027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559055, 42.470116, 25.236084>,  <40.613773, 42.639641, 25.396917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559055, 42.470116, 25.236084>,  <40.467857, 42.187576, 24.968027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559055, 42.470116, 25.236084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348756, 0.583356, -0.733529,
		-0.909058, 0.400960, -0.113339,
		0.227999, 0.706348, 0.670141,
		40.627457, 42.682018, 25.437126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287617, 42.720631, 24.628113>,  <40.467857, 42.187576, 24.968027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287617, 42.720631, 24.628113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541367, 42.872990, 24.897182>,  <40.693615, 42.964405, 25.058624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541367, 42.872990, 24.897182>,  <40.287617, 42.720631, 24.628113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541367, 42.872990, 24.897182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331146, 0.652396, -0.681705,
		-0.698508, 0.655209, 0.287730,
		0.634373, 0.380896, 0.672673,
		40.731678, 42.987259, 25.098984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605175, 42.698315, 24.535870>,  <40.287617, 42.720631, 24.628113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605175, 42.698315, 24.535870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550674, 42.404419, 24.270061>,  <39.517975, 42.228081, 24.110577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550674, 42.404419, 24.270061>,  <39.605175, 42.698315, 24.535870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550674, 42.404419, 24.270061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807069, -0.306678, 0.504566,
		-0.574520, 0.605064, -0.551202,
		-0.136253, -0.734742, -0.664522,
		39.509800, 42.183998, 24.070705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811157, 42.782082, 24.355896>,  <39.605175, 42.698315, 24.535870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811157, 42.782082, 24.355896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957714, 42.426495, 24.245993>,  <39.045647, 42.213142, 24.180052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957714, 42.426495, 24.245993>,  <38.811157, 42.782082, 24.355896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957714, 42.426495, 24.245993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870464, -0.431800, 0.236309,
		-0.328711, 0.152584, -0.932023,
		0.366391, -0.888969, -0.274756,
		39.067631, 42.159805, 24.163567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376526, 42.534649, 23.903679>,  <38.811157, 42.782082, 24.355896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376526, 42.534649, 23.903679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.561306, 42.208061, 24.042229>,  <38.672173, 42.012108, 24.125359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.561306, 42.208061, 24.042229>,  <38.376526, 42.534649, 23.903679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561306, 42.208061, 24.042229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886783, -0.418732, 0.195650,
		-0.014704, -0.397541, -0.917467,
		0.461951, -0.816471, 0.346375,
		38.699890, 41.963120, 24.146141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081005, 41.952442, 23.499731>,  <38.376526, 42.534649, 23.903679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081005, 41.952442, 23.499731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234787, 41.830051, 23.848116>,  <38.327057, 41.756618, 24.057146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.234787, 41.830051, 23.848116>,  <38.081005, 41.952442, 23.499731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234787, 41.830051, 23.848116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896939, -0.347010, 0.274016,
		0.218390, -0.886546, -0.407850,
		0.384456, -0.305974, 0.870962,
		38.350124, 41.738258, 24.109404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822647, 41.193295, 23.502104>,  <38.081005, 41.952442, 23.499731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822647, 41.193295, 23.502104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.947254, 41.289532, 23.869816>,  <38.022018, 41.347275, 24.090443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.947254, 41.289532, 23.869816>,  <37.822647, 41.193295, 23.502104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947254, 41.289532, 23.869816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805106, -0.447037, 0.389823,
		0.504739, -0.861554, 0.054442,
		0.311516, 0.240590, 0.919279,
		38.040710, 41.361710, 24.145599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763638, 40.591591, 23.832338>,  <37.822647, 41.193295, 23.502104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763638, 40.591591, 23.832338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.769615, 40.868885, 24.120564>,  <37.773201, 41.035259, 24.293499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.769615, 40.868885, 24.120564>,  <37.763638, 40.591591, 23.832338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769615, 40.868885, 24.120564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778206, -0.444425, 0.443713,
		0.627831, -0.567377, 0.532833,
		0.014948, 0.693231, 0.720561,
		37.774101, 41.076855, 24.336731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757671, 40.205387, 24.475571>,  <37.763638, 40.591591, 23.832338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757671, 40.205387, 24.475571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623539, 40.576542, 24.540785>,  <37.543060, 40.799232, 24.579912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.623539, 40.576542, 24.540785>,  <37.757671, 40.205387, 24.475571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623539, 40.576542, 24.540785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773018, -0.369918, 0.515368,
		0.538512, 0.046792, 0.841318,
		-0.335334, 0.927885, 0.163034,
		37.522938, 40.854908, 24.589695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623398, 40.090668, 24.364738>,  <37.757671, 40.205387, 24.475571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623398, 40.090668, 24.364738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567364, 39.703686, 24.449030>,  <38.533741, 39.471497, 24.499605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567364, 39.703686, 24.449030>,  <38.623398, 40.090668, 24.364738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567364, 39.703686, 24.449030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576973, -0.252724, -0.776681,
		0.804659, 0.012781, 0.593599,
		-0.140090, -0.967454, 0.210731,
		38.525337, 39.413448, 24.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142838, 39.706997, 24.779484>,  <38.623398, 40.090668, 24.364738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142838, 39.706997, 24.779484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.927700, 39.535896, 24.488897>,  <38.798618, 39.433235, 24.314545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.927700, 39.535896, 24.488897>,  <39.142838, 39.706997, 24.779484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927700, 39.535896, 24.488897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826027, -0.095118, -0.555547,
		0.168534, -0.898879, 0.404490,
		-0.537844, -0.427748, -0.726468,
		38.766346, 39.407574, 24.270956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532436, 39.075195, 24.496223>,  <39.142838, 39.706997, 24.779484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532436, 39.075195, 24.496223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276249, 39.148411, 24.197882>,  <39.122536, 39.192341, 24.018877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.276249, 39.148411, 24.197882>,  <39.532436, 39.075195, 24.496223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276249, 39.148411, 24.197882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761462, 0.025044, -0.647726,
		-0.099883, -0.982786, -0.155420,
		-0.640468, 0.183044, -0.745852,
		39.084110, 39.203323, 23.974127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754040, 38.685310, 23.947704>,  <39.532436, 39.075195, 24.496223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754040, 38.685310, 23.947704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.535549, 38.963276, 23.760630>,  <39.404453, 39.130054, 23.648386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.535549, 38.963276, 23.760630>,  <39.754040, 38.685310, 23.947704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535549, 38.963276, 23.760630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667785, 0.024209, -0.743960,
		-0.505667, -0.718684, -0.477278,
		-0.546227, 0.694915, -0.467685,
		39.371681, 39.171749, 23.620323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719830, 38.477455, 23.273138>,  <39.754040, 38.685310, 23.947704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719830, 38.477455, 23.273138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630100, 38.862267, 23.210934>,  <39.576263, 39.093151, 23.173611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630100, 38.862267, 23.210934>,  <39.719830, 38.477455, 23.273138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630100, 38.862267, 23.210934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778344, 0.080853, -0.622610,
		-0.586394, -0.260708, -0.766925,
		-0.224328, 0.962026, -0.155508,
		39.562801, 39.150875, 23.164282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678005, 38.628468, 22.548782>,  <39.719830, 38.477455, 23.273138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678005, 38.628468, 22.548782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782070, 38.954269, 22.756207>,  <39.844509, 39.149750, 22.880661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.782070, 38.954269, 22.756207>,  <39.678005, 38.628468, 22.548782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782070, 38.954269, 22.756207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776476, 0.142746, -0.613766,
		-0.573936, 0.562326, -0.595304,
		0.260159, 0.814501, 0.518560,
		39.860119, 39.198620, 22.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906368, 39.054981, 22.037621>,  <39.678005, 38.628468, 22.548782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906368, 39.054981, 22.037621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021122, 39.254856, 22.364548>,  <40.089973, 39.374783, 22.560703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021122, 39.254856, 22.364548>,  <39.906368, 39.054981, 22.037621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021122, 39.254856, 22.364548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804943, 0.336837, -0.488474,
		-0.519388, 0.798030, -0.305589,
		0.286883, 0.499689, 0.817318,
		40.107185, 39.404762, 22.609743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010544, 39.751095, 21.825956>,  <39.906368, 39.054981, 22.037621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010544, 39.751095, 21.825956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255360, 39.720585, 22.140812>,  <40.402248, 39.702278, 22.329725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.255360, 39.720585, 22.140812>,  <40.010544, 39.751095, 21.825956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255360, 39.720585, 22.140812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746514, 0.384229, -0.543217,
		-0.261007, 0.920081, 0.292106,
		0.612039, -0.076278, 0.787140,
		40.438972, 39.697701, 22.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413345, 40.313847, 21.824833>,  <40.010544, 39.751095, 21.825956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413345, 40.313847, 21.824833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.626717, 40.072636, 22.062088>,  <40.754742, 39.927910, 22.204441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.626717, 40.072636, 22.062088>,  <40.413345, 40.313847, 21.824833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626717, 40.072636, 22.062088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834902, 0.262955, -0.483521,
		0.135608, 0.753136, 0.643736,
		0.533431, -0.603026, 0.593136,
		40.786747, 39.891727, 22.240028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.311035, 34.673466, 32.846970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585379, 34.391399, 32.918911>,  <30.749985, 34.222160, 32.962074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.585379, 34.391399, 32.918911>,  <30.311035, 34.673466, 32.846970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585379, 34.391399, 32.918911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376888, 0.132763, -0.916695,
		0.622540, 0.696506, 0.356823,
		0.685857, -0.705161, 0.179854,
		30.791136, 34.179852, 32.972866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975649, 34.964840, 32.857647>,  <30.311035, 34.673466, 32.846970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975649, 34.964840, 32.857647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054132, 34.585514, 32.757881>,  <31.101223, 34.357918, 32.698021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054132, 34.585514, 32.757881>,  <30.975649, 34.964840, 32.857647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054132, 34.585514, 32.757881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403156, 0.309884, -0.861067,
		0.893850, 0.068394, 0.443119,
		0.196207, -0.948311, -0.249416,
		31.112995, 34.301022, 32.683056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615019, 34.999821, 32.476341>,  <30.975649, 34.964840, 32.857647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615019, 34.999821, 32.476341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461994, 34.647755, 32.363941>,  <31.370180, 34.436516, 32.296501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461994, 34.647755, 32.363941>,  <31.615019, 34.999821, 32.476341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461994, 34.647755, 32.363941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232378, 0.202703, -0.951269,
		0.894231, -0.429216, 0.126985,
		-0.382559, -0.880162, -0.281004,
		31.347227, 34.383705, 32.279640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009857, 34.835556, 31.989395>,  <31.615019, 34.999821, 32.476341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009857, 34.835556, 31.989395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695635, 34.598202, 31.919205>,  <31.507101, 34.455788, 31.877090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.695635, 34.598202, 31.919205>,  <32.009857, 34.835556, 31.989395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695635, 34.598202, 31.919205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126857, 0.123123, -0.984250,
		0.605650, -0.795442, -0.021444,
		-0.785554, -0.593391, -0.175476,
		31.459969, 34.420185, 31.866562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327660, 34.370834, 31.514317>,  <32.009857, 34.835556, 31.989395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327660, 34.370834, 31.514317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929062, 34.362045, 31.482040>,  <31.689903, 34.356773, 31.462675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.929062, 34.362045, 31.482040>,  <32.327660, 34.370834, 31.514317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929062, 34.362045, 31.482040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076112, 0.161533, -0.983928,
		0.034654, -0.986623, -0.159295,
		-0.996497, -0.021973, -0.080692,
		31.630114, 34.355453, 31.457832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293701, 34.031635, 30.922642>,  <32.327660, 34.370834, 31.514317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293701, 34.031635, 30.922642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939018, 34.209274, 30.974070>,  <31.726210, 34.315857, 31.004927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939018, 34.209274, 30.974070>,  <32.293701, 34.031635, 30.922642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939018, 34.209274, 30.974070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040988, 0.201479, -0.978635,
		-0.460516, -0.873030, -0.160449,
		-0.886705, 0.444101, 0.128568,
		31.673006, 34.342503, 31.012640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844200, 33.781590, 30.512896>,  <32.293701, 34.031635, 30.922642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844200, 33.781590, 30.512896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708672, 34.150112, 30.589201>,  <31.627356, 34.371227, 30.634985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708672, 34.150112, 30.589201>,  <31.844200, 33.781590, 30.512896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708672, 34.150112, 30.589201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072115, 0.227590, -0.971083,
		-0.938083, -0.315265, -0.143552,
		-0.338820, 0.921309, 0.190763,
		31.607025, 34.426506, 30.646431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618374, 33.901733, 29.927803>,  <31.844200, 33.781590, 30.512896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618374, 33.901733, 29.927803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614904, 34.259598, 30.106466>,  <31.612823, 34.474316, 30.213665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614904, 34.259598, 30.106466>,  <31.618374, 33.901733, 29.927803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614904, 34.259598, 30.106466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380468, 0.416032, -0.825930,
		-0.924753, 0.162777, -0.343998,
		-0.008672, 0.894662, 0.446659,
		31.612303, 34.527996, 30.240463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349876, 34.335217, 29.430042>,  <31.618374, 33.901733, 29.927803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349876, 34.335217, 29.430042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530546, 34.577953, 29.691647>,  <31.638948, 34.723595, 29.848608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530546, 34.577953, 29.691647>,  <31.349876, 34.335217, 29.430042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530546, 34.577953, 29.691647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280373, 0.599362, -0.749771,
		-0.846984, 0.522019, 0.100574,
		0.451675, 0.606845, 0.654010,
		31.666048, 34.760006, 29.887850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079809, 35.023815, 29.280531>,  <31.349876, 34.335217, 29.430042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079809, 35.023815, 29.280531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441067, 35.057678, 29.448895>,  <31.657822, 35.077995, 29.549911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441067, 35.057678, 29.448895>,  <31.079809, 35.023815, 29.280531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441067, 35.057678, 29.448895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301125, 0.573901, -0.761552,
		-0.306028, 0.814537, 0.492824,
		0.903145, 0.084654, 0.420907,
		31.712009, 35.083073, 29.575167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220036, 35.736351, 29.252850>,  <31.079809, 35.023815, 29.280531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220036, 35.736351, 29.252850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565681, 35.537651, 29.285215>,  <31.773069, 35.418430, 29.304634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565681, 35.537651, 29.285215>,  <31.220036, 35.736351, 29.252850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565681, 35.537651, 29.285215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401991, 0.584471, -0.704838,
		0.302837, 0.641586, 0.704739,
		0.864114, -0.496750, 0.080913,
		31.824915, 35.388626, 29.309488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762920, 36.210873, 29.372751>,  <31.220036, 35.736351, 29.252850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762920, 36.210873, 29.372751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957035, 35.891655, 29.229853>,  <32.073505, 35.700127, 29.144114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957035, 35.891655, 29.229853>,  <31.762920, 36.210873, 29.372751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957035, 35.891655, 29.229853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408917, 0.568297, -0.714020,
		0.772840, 0.200421, 0.602120,
		0.485288, -0.798041, -0.357248,
		32.102623, 35.652245, 29.122679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823223, 36.948364, 29.524626>,  <31.762920, 36.210873, 29.372751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823223, 36.948364, 29.524626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605072, 37.277161, 29.459026>,  <31.474182, 37.474438, 29.419666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.605072, 37.277161, 29.459026>,  <31.823223, 36.948364, 29.524626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605072, 37.277161, 29.459026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650919, -0.292075, 0.700711,
		0.528078, 0.488901, 0.694340,
		-0.545378, 0.821990, -0.163996,
		31.441458, 37.523758, 29.409828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641422, 37.178741, 30.210247>,  <31.823223, 36.948364, 29.524626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641422, 37.178741, 30.210247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375326, 37.375431, 29.985510>,  <31.215668, 37.493443, 29.850668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375326, 37.375431, 29.985510>,  <31.641422, 37.178741, 30.210247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375326, 37.375431, 29.985510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650164, -0.011554, 0.759706,
		0.367072, 0.870676, 0.327385,
		-0.665240, 0.491721, -0.561841,
		31.175755, 37.522949, 29.816957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351738, 37.780430, 30.589180>,  <31.641422, 37.178741, 30.210247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351738, 37.780430, 30.589180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087654, 37.649853, 30.318607>,  <30.929203, 37.571507, 30.156263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087654, 37.649853, 30.318607>,  <31.351738, 37.780430, 30.589180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087654, 37.649853, 30.318607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674325, -0.139000, 0.725234,
		-0.330771, 0.934941, -0.128359,
		-0.660209, -0.326442, -0.676431,
		30.889591, 37.551922, 30.115679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831863, 38.214863, 30.734156>,  <31.351738, 37.780430, 30.589180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831863, 38.214863, 30.734156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.655872, 37.929268, 30.516298>,  <30.550278, 37.757912, 30.385584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.655872, 37.929268, 30.516298>,  <30.831863, 38.214863, 30.734156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655872, 37.929268, 30.516298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805457, 0.045591, 0.590899,
		-0.397065, 0.698669, -0.595147,
		-0.439976, -0.713991, -0.544645,
		30.523880, 37.715069, 30.352905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088732, 38.498344, 30.549522>,  <30.831863, 38.214863, 30.734156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088732, 38.498344, 30.549522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104164, 38.101868, 30.498840>,  <30.113424, 37.863983, 30.468431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104164, 38.101868, 30.498840>,  <30.088732, 38.498344, 30.549522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104164, 38.101868, 30.498840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822543, -0.103502, 0.559205,
		-0.567393, 0.082645, -0.819290,
		0.038583, -0.991190, -0.126705,
		30.115740, 37.804512, 30.460829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393562, 38.283566, 30.398163>,  <30.088732, 38.498344, 30.549522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393562, 38.283566, 30.398163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545252, 37.932690, 30.515961>,  <29.636265, 37.722164, 30.586639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545252, 37.932690, 30.515961>,  <29.393562, 38.283566, 30.398163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545252, 37.932690, 30.515961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731103, -0.088969, 0.676441,
		-0.567168, -0.471825, -0.675056,
		0.379222, -0.877191, 0.294492,
		29.659018, 37.669533, 30.604309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837879, 37.879265, 30.466888>,  <29.393562, 38.283566, 30.398163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837879, 37.879265, 30.466888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126917, 37.675041, 30.653301>,  <29.300339, 37.552505, 30.765150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.126917, 37.675041, 30.653301>,  <28.837879, 37.879265, 30.466888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126917, 37.675041, 30.653301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658010, -0.301400, 0.690058,
		-0.211853, -0.805287, -0.553743,
		0.722593, -0.510560, 0.466035,
		29.343695, 37.521873, 30.793112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500204, 37.251030, 30.554083>,  <28.837879, 37.879265, 30.466888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500204, 37.251030, 30.554083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788034, 37.280193, 30.830313>,  <28.960733, 37.297691, 30.996050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788034, 37.280193, 30.830313>,  <28.500204, 37.251030, 30.554083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788034, 37.280193, 30.830313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613392, -0.399436, 0.681324,
		0.325514, -0.913857, -0.242704,
		0.719577, 0.072908, 0.690575,
		29.003908, 37.302067, 31.037485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443726, 36.661243, 31.026114>,  <28.500204, 37.251030, 30.554083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443726, 36.661243, 31.026114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.665726, 36.925480, 31.228336>,  <28.798925, 37.084023, 31.349670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.665726, 36.925480, 31.228336>,  <28.443726, 36.661243, 31.026114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665726, 36.925480, 31.228336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493302, -0.227987, 0.839449,
		0.669797, -0.715287, 0.199340,
		0.555000, 0.660595, 0.505558,
		28.832226, 37.123657, 31.380003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606600, 36.267124, 31.636106>,  <28.443726, 36.661243, 31.026114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606600, 36.267124, 31.636106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655348, 36.654362, 31.723694>,  <28.684597, 36.886703, 31.776247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655348, 36.654362, 31.723694>,  <28.606600, 36.267124, 31.636106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655348, 36.654362, 31.723694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605894, -0.102177, 0.788956,
		0.786155, -0.228825, 0.574108,
		0.121872, 0.968090, 0.218970,
		28.691910, 36.944790, 31.789385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845442, 36.273319, 32.328232>,  <28.606600, 36.267124, 31.636106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845442, 36.273319, 32.328232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.689499, 36.635948, 32.263561>,  <28.595932, 36.853527, 32.224758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.689499, 36.635948, 32.263561>,  <28.845442, 36.273319, 32.328232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689499, 36.635948, 32.263561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455970, -0.037509, 0.889204,
		0.800063, 0.420382, 0.427993,
		-0.389859, 0.906571, -0.161672,
		28.572540, 36.907921, 32.215061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845974, 36.466068, 32.978672>,  <28.845442, 36.273319, 32.328232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845974, 36.466068, 32.978672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.591391, 36.706253, 32.785027>,  <28.438641, 36.850365, 32.668839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.591391, 36.706253, 32.785027>,  <28.845974, 36.466068, 32.978672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591391, 36.706253, 32.785027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545846, 0.092814, 0.832729,
		0.544953, 0.794250, 0.268687,
		-0.636457, 0.600460, -0.484118,
		28.400454, 36.886391, 32.639790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858690, 37.011555, 33.291927>,  <28.845974, 36.466068, 32.978672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858690, 37.011555, 33.291927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514162, 37.013771, 33.088715>,  <28.307446, 37.015099, 32.966785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514162, 37.013771, 33.088715>,  <28.858690, 37.011555, 33.291927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514162, 37.013771, 33.088715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507352, 0.043419, 0.860644,
		0.026824, 0.999042, -0.034588,
		-0.861321, 0.005538, -0.508031,
		28.255766, 37.015434, 32.936306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613195, 37.475590, 33.593109>,  <28.858690, 37.011555, 33.291927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613195, 37.475590, 33.593109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.321930, 37.267929, 33.414108>,  <28.147171, 37.143333, 33.306705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.321930, 37.267929, 33.414108>,  <28.613195, 37.475590, 33.593109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321930, 37.267929, 33.414108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495245, -0.052840, 0.867145,
		-0.473827, 0.853046, -0.218631,
		-0.728162, -0.519153, -0.447504,
		28.103481, 37.112183, 33.279858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162941, 38.021343, 33.534851>,  <28.613195, 37.475590, 33.593109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162941, 38.021343, 33.534851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.340326, 38.242123, 33.817326>,  <28.446758, 38.374588, 33.986809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.340326, 38.242123, 33.817326>,  <28.162941, 38.021343, 33.534851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340326, 38.242123, 33.817326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818331, 0.072063, -0.570212,
		-0.365615, 0.830761, -0.419716,
		0.443465, 0.551944, 0.706185,
		28.473366, 38.407707, 34.029182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728951, 38.282566, 33.255817>,  <28.162941, 38.021343, 33.534851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728951, 38.282566, 33.255817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.839706, 38.381680, 33.627178>,  <28.906160, 38.441147, 33.849995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.839706, 38.381680, 33.627178>,  <28.728951, 38.282566, 33.255817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839706, 38.381680, 33.627178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942849, 0.116348, -0.312249,
		-0.185388, 0.961803, -0.201408,
		0.276889, 0.247785, 0.928405,
		28.922773, 38.456017, 33.905701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949501, 38.925583, 33.223675>,  <28.728951, 38.282566, 33.255817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949501, 38.925583, 33.223675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118868, 38.726505, 33.526466>,  <29.220488, 38.607059, 33.708141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118868, 38.726505, 33.526466>,  <28.949501, 38.925583, 33.223675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118868, 38.726505, 33.526466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905313, 0.201495, -0.373910,
		0.033563, 0.843625, 0.535883,
		0.423417, -0.497692, 0.756981,
		29.245893, 38.577198, 33.753559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468214, 39.324059, 33.531914>,  <28.949501, 38.925583, 33.223675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468214, 39.324059, 33.531914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.560957, 38.944408, 33.617153>,  <29.616602, 38.716618, 33.668297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.560957, 38.944408, 33.617153>,  <29.468214, 39.324059, 33.531914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560957, 38.944408, 33.617153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927951, 0.150090, -0.341145,
		0.291804, 0.276839, 0.915538,
		0.231855, -0.949122, 0.213096,
		29.630514, 38.659672, 33.681084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078091, 39.368858, 33.941380>,  <29.468214, 39.324059, 33.531914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078091, 39.368858, 33.941380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059816, 38.999851, 33.788082>,  <30.048851, 38.778446, 33.696102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059816, 38.999851, 33.788082>,  <30.078091, 39.368858, 33.941380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059816, 38.999851, 33.788082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972038, 0.047405, -0.229990,
		0.230337, -0.383036, 0.894555,
		-0.045688, -0.922516, -0.383245,
		30.046110, 38.723095, 33.673107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595140, 38.962265, 34.193600>,  <30.078091, 39.368858, 33.941380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595140, 38.962265, 34.193600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502037, 38.762199, 33.859974>,  <30.446175, 38.642159, 33.659798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502037, 38.762199, 33.859974>,  <30.595140, 38.962265, 34.193600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502037, 38.762199, 33.859974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972170, -0.143117, -0.185479,
		-0.026597, -0.854020, 0.519559,
		-0.232760, -0.500167, -0.834060,
		30.432209, 38.612148, 33.609756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133005, 38.449368, 34.087662>,  <30.595140, 38.962265, 34.193600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133005, 38.449368, 34.087662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975569, 38.443180, 33.719997>,  <30.881107, 38.439468, 33.499401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975569, 38.443180, 33.719997>,  <31.133005, 38.449368, 34.087662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975569, 38.443180, 33.719997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918748, -0.040819, -0.392728,
		-0.031447, -0.999047, 0.030273,
		-0.393589, -0.015463, -0.919156,
		30.857492, 38.438541, 33.444252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622408, 38.132233, 33.681152>,  <31.133005, 38.449368, 34.087662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622408, 38.132233, 33.681152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391594, 38.276745, 33.388165>,  <31.253105, 38.363453, 33.212372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391594, 38.276745, 33.388165>,  <31.622408, 38.132233, 33.681152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391594, 38.276745, 33.388165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815479, 0.205460, -0.541091,
		-0.044990, -0.909541, -0.413171,
		-0.577035, 0.361276, -0.732469,
		31.218483, 38.385128, 33.168423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927073, 37.820480, 33.111546>,  <31.622408, 38.132233, 33.681152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927073, 37.820480, 33.111546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729919, 38.149647, 32.998493>,  <31.611628, 38.347145, 32.930660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729919, 38.149647, 32.998493>,  <31.927073, 37.820480, 33.111546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729919, 38.149647, 32.998493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790422, 0.287678, -0.540809,
		-0.363732, -0.489954, -0.792240,
		-0.492881, 0.822913, -0.282633,
		31.582054, 38.396523, 32.913704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958467, 37.867558, 32.428806>,  <31.927073, 37.820480, 33.111546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958467, 37.867558, 32.428806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880152, 38.246593, 32.529800>,  <31.833162, 38.474014, 32.590397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.880152, 38.246593, 32.529800>,  <31.958467, 37.867558, 32.428806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880152, 38.246593, 32.529800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597937, 0.319424, -0.735146,
		-0.777263, 0.007034, -0.629137,
		-0.195790, 0.947586, 0.252482,
		31.821415, 38.530869, 32.605545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913332, 38.232616, 31.749907>,  <31.958467, 37.867558, 32.428806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913332, 38.232616, 31.749907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953207, 38.508629, 32.036659>,  <31.977131, 38.674236, 32.208710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953207, 38.508629, 32.036659>,  <31.913332, 38.232616, 31.749907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953207, 38.508629, 32.036659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556623, 0.558521, -0.615000,
		-0.824763, 0.460340, -0.328410,
		0.099685, 0.690030, 0.716883,
		31.983112, 38.715637, 32.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776342, 38.868153, 31.454269>,  <31.913332, 38.232616, 31.749907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776342, 38.868153, 31.454269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000057, 38.929642, 31.780107>,  <32.134285, 38.966534, 31.975611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000057, 38.929642, 31.780107>,  <31.776342, 38.868153, 31.454269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000057, 38.929642, 31.780107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552316, 0.663685, -0.504450,
		-0.618179, 0.732047, 0.286289,
		0.559287, 0.153719, 0.814597,
		32.167843, 38.975758, 32.024487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056332, 39.506718, 31.294191>,  <31.776342, 38.868153, 31.454269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056332, 39.506718, 31.294191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282185, 39.382759, 31.600174>,  <32.417694, 39.308384, 31.783764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282185, 39.382759, 31.600174>,  <32.056332, 39.506718, 31.294191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282185, 39.382759, 31.600174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800062, 0.433153, -0.415065,
		-0.202715, 0.846371, 0.492507,
		0.564630, -0.309896, 0.764956,
		32.451572, 39.289791, 31.829660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396755, 40.075661, 31.622211>,  <32.056332, 39.506718, 31.294191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396755, 40.075661, 31.622211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616806, 39.754272, 31.713253>,  <32.748837, 39.561440, 31.767878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616806, 39.754272, 31.713253>,  <32.396755, 40.075661, 31.622211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616806, 39.754272, 31.713253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818761, 0.465325, -0.336310,
		0.164305, 0.371364, 0.913834,
		0.550123, -0.803469, 0.227603,
		32.781841, 39.513233, 31.781534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065830, 40.305595, 31.870180>,  <32.396755, 40.075661, 31.622211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065830, 40.305595, 31.870180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127464, 39.925152, 31.763113>,  <33.164444, 39.696884, 31.698874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127464, 39.925152, 31.763113>,  <33.065830, 40.305595, 31.870180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127464, 39.925152, 31.763113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840015, 0.268733, -0.471335,
		0.520223, -0.152219, 0.840355,
		0.154085, -0.951111, -0.267667,
		33.173691, 39.639820, 31.682814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813374, 40.268425, 31.916059>,  <33.065830, 40.305595, 31.870180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813374, 40.268425, 31.916059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698002, 39.935459, 31.726786>,  <33.628780, 39.735680, 31.613222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698002, 39.935459, 31.726786>,  <33.813374, 40.268425, 31.916059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698002, 39.935459, 31.726786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800229, 0.061806, -0.596500,
		0.525779, -0.550700, 0.648294,
		-0.288425, -0.832412, -0.473183,
		33.611473, 39.685734, 31.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376842, 39.933098, 31.867075>,  <33.813374, 40.268425, 31.916059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376842, 39.933098, 31.867075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147114, 39.804577, 31.565899>,  <34.009277, 39.727463, 31.385193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147114, 39.804577, 31.565899>,  <34.376842, 39.933098, 31.867075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147114, 39.804577, 31.565899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728564, 0.218795, -0.649095,
		0.373296, -0.921354, 0.108431,
		-0.574322, -0.321303, -0.752940,
		33.974815, 39.708187, 31.340017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738316, 39.359283, 31.510914>,  <34.376842, 39.933098, 31.867075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738316, 39.359283, 31.510914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489437, 39.488220, 31.225548>,  <34.340111, 39.565582, 31.054329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.489437, 39.488220, 31.225548>,  <34.738316, 39.359283, 31.510914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489437, 39.488220, 31.225548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765367, 0.058912, -0.640892,
		-0.164559, -0.944788, -0.283366,
		-0.622200, 0.322344, -0.713415,
		34.302776, 39.584923, 31.011522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997482, 39.065605, 30.811703>,  <34.738316, 39.359283, 31.510914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997482, 39.065605, 30.811703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770119, 39.391945, 30.769186>,  <34.633701, 39.587749, 30.743675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770119, 39.391945, 30.769186>,  <34.997482, 39.065605, 30.811703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770119, 39.391945, 30.769186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550056, 0.280757, -0.786520,
		-0.611842, -0.505531, -0.608348,
		-0.568408, 0.815852, -0.106291,
		34.599598, 39.636700, 30.737299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908596, 39.167610, 30.032028>,  <34.997482, 39.065605, 30.811703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908596, 39.167610, 30.032028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826752, 39.515743, 30.211210>,  <34.777645, 39.724621, 30.318720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826752, 39.515743, 30.211210>,  <34.908596, 39.167610, 30.032028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826752, 39.515743, 30.211210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496043, 0.486715, -0.719062,
		-0.843847, 0.075081, -0.531306,
		-0.204607, 0.870328, 0.447956,
		34.765369, 39.776840, 30.345596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667873, 39.559307, 29.483215>,  <34.908596, 39.167610, 30.032028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667873, 39.559307, 29.483215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771503, 39.821152, 29.767290>,  <34.833683, 39.978256, 29.937735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771503, 39.821152, 29.767290>,  <34.667873, 39.559307, 29.483215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771503, 39.821152, 29.767290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619261, 0.451693, -0.642253,
		-0.741211, 0.606186, -0.288349,
		0.259080, 0.654608, 0.710187,
		34.849228, 40.017532, 29.980347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772499, 40.117653, 29.134222>,  <34.667873, 39.559307, 29.483215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772499, 40.117653, 29.134222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934086, 40.223232, 29.484568>,  <35.031036, 40.286579, 29.694775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934086, 40.223232, 29.484568>,  <34.772499, 40.117653, 29.134222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934086, 40.223232, 29.484568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582868, 0.663671, -0.468835,
		-0.705036, 0.699908, 0.114252,
		0.403967, 0.263951, 0.875865,
		35.055275, 40.302418, 29.747328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954994, 40.870457, 29.091679>,  <34.772499, 40.117653, 29.134222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954994, 40.870457, 29.091679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190536, 40.716030, 29.375708>,  <35.331863, 40.623375, 29.546125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190536, 40.716030, 29.375708>,  <34.954994, 40.870457, 29.091679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190536, 40.716030, 29.375708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795655, 0.431310, -0.425329,
		-0.142056, 0.815429, 0.561155,
		0.588857, -0.386066, 0.710071,
		35.367195, 40.600212, 29.588728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522888, 41.431145, 29.267866>,  <34.954994, 40.870457, 29.091679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522888, 41.431145, 29.267866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693867, 41.085880, 29.375380>,  <35.796455, 40.878723, 29.439888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693867, 41.085880, 29.375380>,  <35.522888, 41.431145, 29.267866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693867, 41.085880, 29.375380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860137, 0.296772, -0.414839,
		0.278306, 0.408511, 0.869290,
		0.427447, -0.863160, 0.268782,
		35.822102, 40.826931, 29.456015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238419, 41.561840, 29.637499>,  <35.522888, 41.431145, 29.267866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238419, 41.561840, 29.637499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245220, 41.179268, 29.520908>,  <36.249302, 40.949726, 29.450954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.245220, 41.179268, 29.520908>,  <36.238419, 41.561840, 29.637499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245220, 41.179268, 29.520908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936195, 0.117585, -0.331230,
		0.351071, -0.267248, 0.897401,
		0.017000, -0.956427, -0.291477,
		36.250320, 40.892342, 29.433466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912045, 41.240150, 29.853848>,  <36.238419, 41.561840, 29.637499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912045, 41.240150, 29.853848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787445, 40.971977, 29.584480>,  <36.712685, 40.811073, 29.422859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.787445, 40.971977, 29.584480>,  <36.912045, 41.240150, 29.853848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787445, 40.971977, 29.584480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927132, -0.059067, -0.370049,
		0.208315, -0.739618, 0.639976,
		-0.311497, -0.670430, -0.673420,
		36.693996, 40.770847, 29.382454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405869, 40.717598, 29.883320>,  <36.912045, 41.240150, 29.853848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405869, 40.717598, 29.883320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206753, 40.708179, 29.536528>,  <37.087284, 40.702526, 29.328453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206753, 40.708179, 29.536528>,  <37.405869, 40.717598, 29.883320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206753, 40.708179, 29.536528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866951, -0.041778, -0.496639,
		-0.024523, -0.998850, 0.041217,
		-0.497789, -0.023554, -0.866978,
		37.057415, 40.701115, 29.276434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875095, 40.357635, 29.438036>,  <37.405869, 40.717598, 29.883320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875095, 40.357635, 29.438036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632530, 40.560055, 29.192705>,  <37.486992, 40.681507, 29.045506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632530, 40.560055, 29.192705>,  <37.875095, 40.357635, 29.438036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632530, 40.560055, 29.192705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793914, 0.342409, -0.502450,
		-0.044257, -0.791624, -0.609403,
		-0.606417, 0.506051, -0.613328,
		37.450603, 40.711868, 29.008707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042469, 39.727440, 29.673805>,  <37.875095, 40.357635, 29.438036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042469, 39.727440, 29.673805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372520, 39.619732, 29.872465>,  <38.570549, 39.555107, 29.991661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372520, 39.619732, 29.872465>,  <38.042469, 39.727440, 29.673805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372520, 39.619732, 29.872465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564879, -0.407112, 0.717755,
		0.008918, -0.872784, -0.488026,
		0.825126, -0.269275, 0.496648,
		38.620060, 39.538948, 30.021460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923748, 38.977848, 29.891554>,  <38.042469, 39.727440, 29.673805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923748, 38.977848, 29.891554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203514, 39.142925, 30.124964>,  <38.371376, 39.241970, 30.265009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203514, 39.142925, 30.124964>,  <37.923748, 38.977848, 29.891554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203514, 39.142925, 30.124964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424785, -0.416562, 0.803763,
		0.574780, -0.810038, -0.116046,
		0.699419, 0.412692, 0.583523,
		38.413342, 39.266731, 30.300020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136444, 38.441719, 30.444675>,  <37.923748, 38.977848, 29.891554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136444, 38.441719, 30.444675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203701, 38.799339, 30.610762>,  <38.244053, 39.013912, 30.710413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203701, 38.799339, 30.610762>,  <38.136444, 38.441719, 30.444675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203701, 38.799339, 30.610762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486764, -0.290974, 0.823648,
		0.857199, -0.340598, 0.386268,
		0.168139, 0.894051, 0.415213,
		38.254143, 39.067554, 30.735325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282413, 38.259975, 31.090277>,  <38.136444, 38.441719, 30.444675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282413, 38.259975, 31.090277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186287, 38.648216, 31.095552>,  <38.128609, 38.881161, 31.098719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186287, 38.648216, 31.095552>,  <38.282413, 38.259975, 31.090277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186287, 38.648216, 31.095552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521562, -0.140575, 0.841553,
		0.818669, 0.195362, 0.540013,
		-0.240320, 0.970604, 0.013191,
		38.114189, 38.939396, 31.099510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384827, 38.565853, 31.829344>,  <38.282413, 38.259975, 31.090277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384827, 38.565853, 31.829344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135925, 38.822079, 31.649353>,  <37.986584, 38.975815, 31.541359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135925, 38.822079, 31.649353>,  <38.384827, 38.565853, 31.829344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135925, 38.822079, 31.649353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625839, -0.061779, 0.777502,
		0.470240, 0.765416, 0.439332,
		-0.622254, 0.640564, -0.449976,
		37.949249, 39.014248, 31.514360>
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
