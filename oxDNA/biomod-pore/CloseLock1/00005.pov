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
	<23.987036, 34.877949, 34.871407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288902, 34.923702, 35.129829>,  <24.470022, 34.951153, 35.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288902, 34.923702, 35.129829>,  <23.987036, 34.877949, 34.871407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288902, 34.923702, 35.129829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605365, 0.258312, -0.752866,
		-0.253000, 0.959266, 0.125696,
		0.754668, 0.114383, 0.646059,
		24.515303, 34.958015, 35.323647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413486, 35.530067, 34.852310>,  <23.987036, 34.877949, 34.871407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413486, 35.530067, 34.852310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635403, 35.222881, 34.980335>,  <24.768553, 35.038570, 35.057152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635403, 35.222881, 34.980335>,  <24.413486, 35.530067, 34.852310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635403, 35.222881, 34.980335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552439, 0.052378, -0.831906,
		0.622107, 0.638351, 0.453311,
		0.554792, -0.767961, 0.320066,
		24.801840, 34.992493, 35.076355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132790, 35.635403, 35.029453>,  <24.413486, 35.530067, 34.852310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132790, 35.635403, 35.029453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060789, 35.272209, 34.878101>,  <25.017588, 35.054295, 34.787292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060789, 35.272209, 34.878101>,  <25.132790, 35.635403, 35.029453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060789, 35.272209, 34.878101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729250, 0.134969, -0.670804,
		0.660147, -0.396678, 0.637850,
		-0.180003, -0.907981, -0.378377,
		25.006788, 34.999813, 34.764587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720362, 35.255341, 34.956402>,  <25.132790, 35.635403, 35.029453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720362, 35.255341, 34.956402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503115, 35.051292, 34.689629>,  <25.372766, 34.928864, 34.529564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503115, 35.051292, 34.689629>,  <25.720362, 35.255341, 34.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503115, 35.051292, 34.689629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688434, 0.184195, -0.701520,
		0.480708, -0.840146, 0.251147,
		-0.543119, -0.510125, -0.666929,
		25.340179, 34.898254, 34.489552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137320, 34.900524, 35.481525>,  <25.720362, 35.255341, 34.956402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137320, 34.900524, 35.481525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518446, 34.827412, 35.578468>,  <26.747122, 34.783543, 35.636635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518446, 34.827412, 35.578468>,  <26.137320, 34.900524, 35.481525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518446, 34.827412, 35.578468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265335, -0.113673, 0.957432,
		-0.147450, -0.976560, -0.156807,
		0.952815, -0.182780, 0.242354,
		26.804291, 34.772579, 35.651173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166214, 34.220871, 35.904377>,  <26.137320, 34.900524, 35.481525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166214, 34.220871, 35.904377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502264, 34.419090, 35.992584>,  <26.703894, 34.538021, 36.045509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502264, 34.419090, 35.992584>,  <26.166214, 34.220871, 35.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502264, 34.419090, 35.992584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112522, -0.238480, 0.964607,
		0.530594, -0.835203, -0.144593,
		0.840125, 0.495544, 0.220515,
		26.754301, 34.567753, 36.058739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625572, 33.721878, 36.264805>,  <26.166214, 34.220871, 35.904377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625572, 33.721878, 36.264805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698797, 34.107933, 36.339626>,  <26.742733, 34.339565, 36.384521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698797, 34.107933, 36.339626>,  <26.625572, 33.721878, 36.264805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698797, 34.107933, 36.339626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061721, -0.178615, 0.981981,
		0.981162, -0.191311, 0.026871,
		0.183064, 0.965141, 0.187058,
		26.753717, 34.397476, 36.395744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074209, 33.661301, 36.936108>,  <26.625572, 33.721878, 36.264805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074209, 33.661301, 36.936108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004725, 34.051807, 36.884361>,  <26.963034, 34.286110, 36.853313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004725, 34.051807, 36.884361>,  <27.074209, 33.661301, 36.936108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004725, 34.051807, 36.884361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015901, 0.128561, 0.991574,
		0.984668, 0.174304, -0.006809,
		-0.173710, 0.976263, -0.129362,
		26.952612, 34.344685, 36.845554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615284, 34.132961, 37.260868>,  <27.074209, 33.661301, 36.936108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615284, 34.132961, 37.260868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260509, 34.317593, 37.254089>,  <27.047644, 34.428371, 37.250023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260509, 34.317593, 37.254089>,  <27.615284, 34.132961, 37.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260509, 34.317593, 37.254089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071800, 0.174031, 0.982119,
		0.456274, 0.869862, -0.187496,
		-0.886938, 0.461578, -0.016950,
		26.994429, 34.456066, 37.249004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621359, 34.485394, 37.846504>,  <27.615284, 34.132961, 37.260868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621359, 34.485394, 37.846504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234053, 34.502136, 37.747948>,  <27.001669, 34.512180, 37.688812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234053, 34.502136, 37.747948>,  <27.621359, 34.485394, 37.846504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234053, 34.502136, 37.747948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244071, 0.053775, 0.968265,
		0.053775, 0.997675, -0.041853,
		-0.968265, 0.041853, -0.246395,
		26.943573, 34.514690, 37.674030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443195, 35.205467, 38.126579>,  <27.621359, 34.485394, 37.846504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443195, 35.205467, 38.126579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136618, 34.949432, 38.105209>,  <26.952671, 34.795811, 38.092388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136618, 34.949432, 38.105209>,  <27.443195, 35.205467, 38.126579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136618, 34.949432, 38.105209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210534, 0.171776, 0.962376,
		-0.606828, 0.748854, -0.266417,
		-0.766443, -0.640087, -0.053421,
		26.906685, 34.757408, 38.089184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006445, 35.372070, 38.661495>,  <27.443195, 35.205467, 38.126579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006445, 35.372070, 38.661495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803421, 35.037300, 38.579575>,  <26.681606, 34.836437, 38.530422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803421, 35.037300, 38.579575>,  <27.006445, 35.372070, 38.661495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803421, 35.037300, 38.579575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469837, 0.069591, 0.880006,
		-0.722243, 0.542881, -0.428538,
		-0.507561, -0.836921, -0.204804,
		26.651154, 34.786224, 38.518135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290087, 35.496624, 38.892727>,  <27.006445, 35.372070, 38.661495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290087, 35.496624, 38.892727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368778, 35.104446, 38.894554>,  <26.415993, 34.869141, 38.895649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368778, 35.104446, 38.894554>,  <26.290087, 35.496624, 38.892727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368778, 35.104446, 38.894554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353611, -0.066610, 0.933018,
		-0.914471, -0.185167, -0.359801,
		0.196730, -0.980447, 0.004564,
		26.427797, 34.810314, 38.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687458, 35.160103, 39.206196>,  <26.290087, 35.496624, 38.892727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687458, 35.160103, 39.206196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002502, 34.917442, 39.249352>,  <26.191528, 34.771847, 39.275246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002502, 34.917442, 39.249352>,  <25.687458, 35.160103, 39.206196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002502, 34.917442, 39.249352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153159, -0.023145, 0.987930,
		-0.596837, -0.794628, -0.111144,
		0.787609, -0.606656, 0.107891,
		26.238785, 34.735447, 39.281719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494650, 34.846886, 39.770714>,  <25.687458, 35.160103, 39.206196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494650, 34.846886, 39.770714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879404, 34.749187, 39.721527>,  <26.110256, 34.690567, 39.692017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879404, 34.749187, 39.721527>,  <25.494650, 34.846886, 39.770714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879404, 34.749187, 39.721527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059527, -0.251863, 0.965930,
		-0.266905, -0.936431, -0.227723,
		0.961882, -0.244256, -0.122966,
		26.167971, 34.675915, 39.684639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596531, 34.124382, 40.170677>,  <25.494650, 34.846886, 39.770714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596531, 34.124382, 40.170677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957586, 34.295090, 40.148357>,  <26.174219, 34.397514, 40.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957586, 34.295090, 40.148357>,  <25.596531, 34.124382, 40.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957586, 34.295090, 40.148357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093647, -0.068197, 0.993267,
		0.420088, -0.901786, -0.101522,
		0.902639, 0.426767, -0.055801,
		26.228378, 34.423119, 40.131618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110106, 33.716667, 40.577782>,  <25.596531, 34.124382, 40.170677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110106, 33.716667, 40.577782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265905, 34.084229, 40.552792>,  <26.359385, 34.304768, 40.537796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265905, 34.084229, 40.552792>,  <26.110106, 33.716667, 40.577782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265905, 34.084229, 40.552792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076036, 0.035521, 0.996472,
		0.917883, -0.392876, -0.056035,
		0.389500, 0.918905, -0.062477,
		26.382755, 34.359901, 40.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835142, 33.683865, 40.929745>,  <26.110106, 33.716667, 40.577782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835142, 33.683865, 40.929745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703238, 34.061470, 40.926014>,  <26.624094, 34.288033, 40.923775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703238, 34.061470, 40.926014>,  <26.835142, 33.683865, 40.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703238, 34.061470, 40.926014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225225, 0.088261, 0.970301,
		0.916805, 0.317867, -0.241722,
		-0.329762, 0.944018, -0.009326,
		26.604309, 34.344677, 40.923218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347179, 34.069172, 41.356556>,  <26.835142, 33.683865, 40.929745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347179, 34.069172, 41.356556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059715, 34.346195, 41.331619>,  <26.887236, 34.512409, 41.316658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059715, 34.346195, 41.331619>,  <27.347179, 34.069172, 41.356556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059715, 34.346195, 41.331619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161893, 0.253839, 0.953602,
		0.676251, 0.675225, -0.294545,
		-0.718663, 0.692559, -0.062345,
		26.844116, 34.553963, 41.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658220, 34.751877, 41.644127>,  <27.347179, 34.069172, 41.356556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658220, 34.751877, 41.644127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259411, 34.770889, 41.619839>,  <27.020126, 34.782299, 41.605267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259411, 34.770889, 41.619839>,  <27.658220, 34.751877, 41.644127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259411, 34.770889, 41.619839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034323, 0.431606, 0.901409,
		0.069057, 0.900809, -0.428689,
		-0.997022, 0.047535, -0.060724,
		26.960304, 34.785149, 41.601620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503723, 35.301483, 41.987347>,  <27.658220, 34.751877, 41.644127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503723, 35.301483, 41.987347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144329, 35.125900, 41.989830>,  <26.928694, 35.020550, 41.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144329, 35.125900, 41.989830>,  <27.503723, 35.301483, 41.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144329, 35.125900, 41.989830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116239, 0.251519, 0.960847,
		-0.423337, 0.862584, -0.277010,
		-0.898484, -0.438962, 0.006211,
		26.874784, 34.994213, 41.991692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982706, 35.806149, 42.264053>,  <27.503723, 35.301483, 41.987347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982706, 35.806149, 42.264053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831749, 35.440304, 42.322098>,  <26.741175, 35.220798, 42.356926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831749, 35.440304, 42.322098>,  <26.982706, 35.806149, 42.264053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831749, 35.440304, 42.322098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012907, 0.161878, 0.986726,
		-0.925962, 0.370513, -0.072896,
		-0.377395, -0.914612, 0.145110,
		26.718531, 35.165920, 42.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337080, 35.902508, 42.703884>,  <26.982706, 35.806149, 42.264053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337080, 35.902508, 42.703884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493496, 35.534676, 42.719166>,  <26.587345, 35.313976, 42.728336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493496, 35.534676, 42.719166>,  <26.337080, 35.902508, 42.703884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493496, 35.534676, 42.719166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131200, 0.096779, 0.986621,
		-0.910975, -0.380794, 0.158493,
		0.391038, -0.919581, 0.038203,
		26.610807, 35.258801, 42.730625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954077, 35.572113, 43.173153>,  <26.337080, 35.902508, 42.703884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954077, 35.572113, 43.173153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291746, 35.358612, 43.153240>,  <26.494349, 35.230511, 43.141293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291746, 35.358612, 43.153240>,  <25.954077, 35.572113, 43.173153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291746, 35.358612, 43.153240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099565, 0.064862, 0.992915,
		-0.526741, -0.843150, 0.107898,
		0.844174, -0.533752, -0.049782,
		26.544998, 35.198486, 43.138306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775198, 34.943851, 43.598454>,  <25.954077, 35.572113, 43.173153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775198, 34.943851, 43.598454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172482, 34.984875, 43.576496>,  <26.410852, 35.009491, 43.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172482, 34.984875, 43.576496>,  <25.775198, 34.943851, 43.598454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172482, 34.984875, 43.576496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062828, -0.075792, 0.995142,
		0.097902, -0.991835, -0.081721,
		0.993211, 0.102561, -0.054895,
		26.470446, 35.015644, 43.560028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155937, 34.504128, 43.990509>,  <25.775198, 34.943851, 43.598454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155937, 34.504128, 43.990509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378389, 34.833534, 43.945721>,  <26.511860, 35.031178, 43.918846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378389, 34.833534, 43.945721>,  <26.155937, 34.504128, 43.990509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378389, 34.833534, 43.945721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200342, -0.002085, 0.979724,
		0.806586, -0.567287, -0.166145,
		0.556131, 0.823518, -0.111970,
		26.545229, 35.080589, 43.912128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836340, 34.421135, 44.403755>,  <26.155937, 34.504128, 43.990509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836340, 34.421135, 44.403755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742300, 34.804451, 44.338753>,  <26.685877, 35.034439, 44.299751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742300, 34.804451, 44.338753>,  <26.836340, 34.421135, 44.403755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742300, 34.804451, 44.338753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179550, 0.207129, 0.961696,
		0.955243, 0.196917, -0.220757,
		-0.235100, 0.958291, -0.162502,
		26.671770, 35.091938, 44.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374382, 34.899094, 44.627193>,  <26.836340, 34.421135, 44.403755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374382, 34.899094, 44.627193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998379, 35.029285, 44.668083>,  <26.772778, 35.107403, 44.692619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998379, 35.029285, 44.668083>,  <27.374382, 34.899094, 44.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998379, 35.029285, 44.668083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169256, 0.184754, 0.968100,
		0.296211, 0.927323, -0.228760,
		-0.940006, 0.325481, 0.102229,
		26.716377, 35.126930, 44.698753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625519, 34.386253, 45.107578>,  <27.374382, 34.899094, 44.627193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625519, 34.386253, 45.107578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899240, 34.373913, 45.398994>,  <28.063473, 34.366508, 45.573845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899240, 34.373913, 45.398994>,  <27.625519, 34.386253, 45.107578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899240, 34.373913, 45.398994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729173, 0.020902, -0.684010,
		0.005875, 0.999305, 0.036799,
		0.684304, -0.030851, 0.728544,
		28.104532, 34.364658, 45.617558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037741, 34.937080, 45.027851>,  <27.625519, 34.386253, 45.107578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037741, 34.937080, 45.027851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264853, 34.664181, 45.212097>,  <28.401119, 34.500443, 45.322647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264853, 34.664181, 45.212097>,  <28.037741, 34.937080, 45.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264853, 34.664181, 45.212097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680819, 0.074654, -0.728637,
		0.462722, 0.727302, 0.506872,
		0.567779, -0.682245, 0.460617,
		28.435186, 34.459507, 45.350281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709604, 35.199051, 45.031853>,  <28.037741, 34.937080, 45.027851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709604, 35.199051, 45.031853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740494, 34.801380, 45.061920>,  <28.759027, 34.562778, 45.079960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740494, 34.801380, 45.061920>,  <28.709604, 35.199051, 45.031853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740494, 34.801380, 45.061920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694155, -0.000507, -0.719825,
		0.715671, 0.107769, 0.690073,
		0.077225, -0.994176, 0.075171,
		28.763660, 34.503128, 45.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496246, 34.782421, 45.208412>,  <28.709604, 35.199051, 45.031853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496246, 34.782421, 45.208412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227026, 34.604122, 44.972343>,  <29.065493, 34.497143, 44.830700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227026, 34.604122, 44.972343>,  <29.496246, 34.782421, 45.208412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227026, 34.604122, 44.972343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645143, 0.036355, -0.763196,
		0.361651, -0.894419, 0.263104,
		-0.673052, -0.445751, -0.590176,
		29.025110, 34.470398, 44.795292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779999, 35.559238, 44.961792>,  <29.496246, 34.782421, 45.208412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779999, 35.559238, 44.961792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062151, 35.841923, 44.983730>,  <30.231441, 36.011532, 44.996891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062151, 35.841923, 44.983730>,  <29.779999, 35.559238, 44.961792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062151, 35.841923, 44.983730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110242, 0.185806, -0.976383,
		-0.700206, 0.682673, 0.208972,
		0.705378, 0.706706, 0.054843,
		30.273764, 36.053936, 45.000183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447247, 36.281807, 44.780357>,  <29.779999, 35.559238, 44.961792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447247, 36.281807, 44.780357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828773, 36.208122, 44.685444>,  <30.057690, 36.163910, 44.628498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828773, 36.208122, 44.685444>,  <29.447247, 36.281807, 44.780357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828773, 36.208122, 44.685444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210874, 0.151942, -0.965632,
		0.213934, 0.971071, 0.106080,
		0.953816, -0.184212, -0.237279,
		30.114918, 36.152859, 44.614262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761238, 36.798107, 44.303669>,  <29.447247, 36.281807, 44.780357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761238, 36.798107, 44.303669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922533, 36.433071, 44.276581>,  <30.019310, 36.214050, 44.260326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922533, 36.433071, 44.276581>,  <29.761238, 36.798107, 44.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922533, 36.433071, 44.276581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343004, -0.082118, -0.935737,
		0.848380, 0.400552, -0.346134,
		0.403236, -0.912587, -0.067723,
		30.043503, 36.159294, 44.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814957, 36.592110, 43.622955>,  <29.761238, 36.798107, 44.303669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814957, 36.592110, 43.622955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781513, 36.218891, 43.762917>,  <29.761448, 35.994961, 43.846893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781513, 36.218891, 43.762917>,  <29.814957, 36.592110, 43.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781513, 36.218891, 43.762917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072792, -0.344477, -0.935968,
		0.993837, -0.103725, -0.039117,
		-0.083609, -0.933047, 0.349904,
		29.756430, 35.938976, 43.867889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311327, 36.128643, 43.349216>,  <29.814957, 36.592110, 43.622955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311327, 36.128643, 43.349216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976633, 35.930759, 43.443142>,  <29.775816, 35.812031, 43.499496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976633, 35.930759, 43.443142>,  <30.311327, 36.128643, 43.349216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976633, 35.930759, 43.443142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203783, -0.116710, -0.972035,
		0.508277, -0.861188, -0.003157,
		-0.836736, -0.494706, 0.234817,
		29.725613, 35.782349, 43.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270357, 35.321785, 43.146458>,  <30.311327, 36.128643, 43.349216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270357, 35.321785, 43.146458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912996, 35.501095, 43.158363>,  <29.698580, 35.608681, 43.165508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912996, 35.501095, 43.158363>,  <30.270357, 35.321785, 43.146458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912996, 35.501095, 43.158363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163273, -0.262252, -0.951087,
		-0.418539, -0.854563, 0.307487,
		-0.893402, 0.448271, 0.029764,
		29.644976, 35.635574, 43.167294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877024, 34.882542, 42.840878>,  <30.270357, 35.321785, 43.146458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877024, 34.882542, 42.840878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682384, 35.230637, 42.810139>,  <29.565601, 35.439495, 42.791695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682384, 35.230637, 42.810139>,  <29.877024, 34.882542, 42.840878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682384, 35.230637, 42.810139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183912, -0.188033, -0.964790,
		-0.854049, -0.455331, 0.251544,
		-0.486597, 0.870240, -0.076849,
		29.536406, 35.491707, 42.787083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135063, 34.781788, 42.636829>,  <29.877024, 34.882542, 42.840878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135063, 34.781788, 42.636829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269403, 35.143139, 42.530163>,  <29.350008, 35.359951, 42.466164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269403, 35.143139, 42.530163>,  <29.135063, 34.781788, 42.636829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269403, 35.143139, 42.530163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050461, -0.265447, -0.962804,
		-0.940562, 0.336815, -0.043566,
		0.335851, 0.903379, -0.266666,
		29.370159, 35.414154, 42.450165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050114, 34.802341, 41.947010>,  <29.135063, 34.781788, 42.636829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050114, 34.802341, 41.947010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233463, 35.157539, 41.961742>,  <29.343473, 35.370659, 41.970581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233463, 35.157539, 41.961742>,  <29.050114, 34.802341, 41.947010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233463, 35.157539, 41.961742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024353, 0.028880, -0.999286,
		-0.888427, 0.458942, -0.008387,
		0.458372, 0.887997, 0.036835,
		29.370975, 35.423939, 41.972794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576612, 35.142025, 41.609550>,  <29.050114, 34.802341, 41.947010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576612, 35.142025, 41.609550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927822, 35.333462, 41.611626>,  <29.138548, 35.448322, 41.612869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927822, 35.333462, 41.611626>,  <28.576612, 35.142025, 41.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927822, 35.333462, 41.611626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014341, 0.037145, -0.999207,
		-0.478401, 0.877253, 0.039478,
		0.878024, 0.478588, 0.005189,
		29.191229, 35.477039, 41.613182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553320, 35.735977, 41.170273>,  <28.576612, 35.142025, 41.609550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553320, 35.735977, 41.170273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941679, 35.640217, 41.167633>,  <29.174694, 35.582760, 41.166050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941679, 35.640217, 41.167633>,  <28.553320, 35.735977, 41.170273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941679, 35.640217, 41.167633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015066, -0.033570, -0.999323,
		0.239019, 0.970340, -0.036199,
		0.970898, -0.239403, -0.006595,
		29.232948, 35.568398, 41.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891134, 36.174210, 40.638813>,  <28.553320, 35.735977, 41.170273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891134, 36.174210, 40.638813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165253, 35.889004, 40.698112>,  <29.329723, 35.717880, 40.733692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165253, 35.889004, 40.698112>,  <28.891134, 36.174210, 40.638813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165253, 35.889004, 40.698112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178202, -0.033195, -0.983434,
		0.706128, 0.700359, 0.104313,
		0.685294, -0.713019, 0.148245,
		29.370840, 35.675098, 40.742584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484426, 36.395939, 40.241734>,  <28.891134, 36.174210, 40.638813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484426, 36.395939, 40.241734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525726, 36.010437, 40.340130>,  <29.550507, 35.779137, 40.399166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525726, 36.010437, 40.340130>,  <29.484426, 36.395939, 40.241734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525726, 36.010437, 40.340130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213208, -0.220118, -0.951888,
		0.971536, 0.150730, 0.182753,
		0.103250, -0.963758, 0.245990,
		29.556702, 35.721310, 40.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102461, 36.195297, 39.982834>,  <29.484426, 36.395939, 40.241734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102461, 36.195297, 39.982834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879971, 35.865166, 40.021713>,  <29.746475, 35.667088, 40.045040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879971, 35.865166, 40.021713>,  <30.102461, 36.195297, 39.982834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879971, 35.865166, 40.021713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125045, -0.198751, -0.972040,
		0.821569, -0.528521, 0.213754,
		-0.556227, -0.825327, 0.097198,
		29.713102, 35.617569, 40.050873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391840, 35.610104, 39.487534>,  <30.102461, 36.195297, 39.982834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391840, 35.610104, 39.487534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033325, 35.469803, 39.596085>,  <29.818216, 35.385624, 39.661217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033325, 35.469803, 39.596085>,  <30.391840, 35.610104, 39.487534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033325, 35.469803, 39.596085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082715, -0.468974, -0.879330,
		0.435695, -0.810578, 0.391322,
		-0.896285, -0.350752, 0.271377,
		29.764439, 35.364578, 39.677498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407675, 34.867966, 39.366753>,  <30.391840, 35.610104, 39.487534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407675, 34.867966, 39.366753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039427, 35.024151, 39.367256>,  <29.818478, 35.117863, 39.367558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039427, 35.024151, 39.367256>,  <30.407675, 34.867966, 39.366753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039427, 35.024151, 39.367256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177220, -0.414973, -0.892407,
		-0.347925, -0.821791, 0.451229,
		-0.920620, 0.390457, 0.001258,
		29.763241, 35.141289, 39.367634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864475, 34.328682, 39.122360>,  <30.407675, 34.867966, 39.366753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864475, 34.328682, 39.122360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709967, 34.690048, 39.047916>,  <29.617262, 34.906868, 39.003250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709967, 34.690048, 39.047916>,  <29.864475, 34.328682, 39.122360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709967, 34.690048, 39.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242899, -0.294278, -0.924338,
		-0.889828, -0.311839, 0.333110,
		-0.386271, 0.903414, -0.186111,
		29.594086, 34.961071, 38.992085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397367, 34.200500, 38.642693>,  <29.864475, 34.328682, 39.122360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397367, 34.200500, 38.642693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389925, 34.599503, 38.615467>,  <29.385460, 34.838905, 38.599133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389925, 34.599503, 38.615467>,  <29.397367, 34.200500, 38.642693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389925, 34.599503, 38.615467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028933, -0.068586, -0.997226,
		-0.999408, -0.016584, 0.030137,
		-0.018605, 0.997507, -0.068066,
		29.384344, 34.898754, 38.595047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894644, 34.288761, 38.190826>,  <29.397367, 34.200500, 38.642693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894644, 34.288761, 38.190826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053074, 34.653450, 38.147224>,  <29.148132, 34.872265, 38.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053074, 34.653450, 38.147224>,  <28.894644, 34.288761, 38.190826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053074, 34.653450, 38.147224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206682, -0.027148, -0.978032,
		-0.894654, 0.409906, 0.177684,
		0.396077, 0.911724, -0.109008,
		29.171896, 34.926968, 38.114521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361624, 34.819092, 37.834045>,  <28.894644, 34.288761, 38.190826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361624, 34.819092, 37.834045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744482, 34.922108, 37.781063>,  <28.974197, 34.983917, 37.749271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744482, 34.922108, 37.781063>,  <28.361624, 34.819092, 37.834045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744482, 34.922108, 37.781063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156958, 0.076929, -0.984605,
		-0.243385, 0.963201, 0.114055,
		0.957146, 0.257540, -0.132459,
		29.031626, 34.999371, 37.741325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334768, 35.388329, 37.447285>,  <28.361624, 34.819092, 37.834045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334768, 35.388329, 37.447285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694098, 35.218262, 37.403015>,  <28.909695, 35.116222, 37.376453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694098, 35.218262, 37.403015>,  <28.334768, 35.388329, 37.447285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694098, 35.218262, 37.403015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065294, 0.119914, -0.990635,
		0.434460, 0.897135, 0.079961,
		0.898321, -0.425170, -0.110675,
		28.963594, 35.090710, 37.369812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601820, 35.935314, 37.102768>,  <28.334768, 35.388329, 37.447285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601820, 35.935314, 37.102768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877590, 35.652435, 37.040070>,  <29.043053, 35.482708, 37.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877590, 35.652435, 37.040070>,  <28.601820, 35.935314, 37.102768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877590, 35.652435, 37.040070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006415, 0.222346, -0.974947,
		0.724330, 0.671146, 0.157828,
		0.689424, -0.707196, -0.156746,
		29.084417, 35.440277, 36.993046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125849, 36.282490, 36.762863>,  <28.601820, 35.935314, 37.102768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125849, 36.282490, 36.762863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181150, 35.893890, 36.685841>,  <29.214333, 35.660732, 36.639626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181150, 35.893890, 36.685841>,  <29.125849, 36.282490, 36.762863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181150, 35.893890, 36.685841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067692, 0.203239, -0.976786,
		0.988081, 0.122011, 0.093861,
		0.138255, -0.971497, -0.192557,
		29.222628, 35.602440, 36.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630522, 36.299915, 36.328026>,  <29.125849, 36.282490, 36.762863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630522, 36.299915, 36.328026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452663, 35.949024, 36.255634>,  <29.345949, 35.738487, 36.212200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452663, 35.949024, 36.255634>,  <29.630522, 36.299915, 36.328026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452663, 35.949024, 36.255634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136660, 0.133243, -0.981616,
		0.885220, -0.461204, 0.060637,
		-0.444646, -0.877233, -0.180978,
		29.319269, 35.685856, 36.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374666, 36.202328, 36.083004>,  <29.630522, 36.299915, 36.328026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374666, 36.202328, 36.083004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328320, 36.042812, 35.719128>,  <30.300512, 35.947102, 35.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328320, 36.042812, 35.719128>,  <30.374666, 36.202328, 36.083004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328320, 36.042812, 35.719128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908834, -0.412079, 0.064888,
		-0.400742, -0.819242, 0.410180,
		-0.115867, -0.398789, -0.909693,
		30.293560, 35.923176, 35.446220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393738, 35.436073, 36.205677>,  <30.374666, 36.202328, 36.083004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393738, 35.436073, 36.205677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538427, 35.553539, 35.851746>,  <30.625240, 35.624020, 35.639389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538427, 35.553539, 35.851746>,  <30.393738, 35.436073, 36.205677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538427, 35.553539, 35.851746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815811, -0.559070, 0.147961,
		-0.451229, -0.775373, -0.441803,
		0.361724, 0.293663, -0.884826,
		30.646944, 35.641640, 35.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985062, 35.108189, 36.309444>,  <30.393738, 35.436073, 36.205677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985062, 35.108189, 36.309444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016474, 35.328316, 35.976940>,  <31.035320, 35.460392, 35.777439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016474, 35.328316, 35.976940>,  <30.985062, 35.108189, 36.309444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016474, 35.328316, 35.976940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964648, -0.252363, -0.075938,
		-0.251569, -0.795907, -0.550677,
		0.078531, 0.550313, -0.831257,
		31.040033, 35.493408, 35.727562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115862, 34.697163, 35.739277>,  <30.985062, 35.108189, 36.309444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115862, 34.697163, 35.739277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267168, 35.066761, 35.716827>,  <31.357952, 35.288521, 35.703358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267168, 35.066761, 35.716827>,  <31.115862, 34.697163, 35.739277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267168, 35.066761, 35.716827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920656, -0.381831, -0.081224,
		-0.096482, -0.020950, -0.995114,
		0.378264, 0.923995, -0.056128,
		31.380648, 35.343960, 35.699989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512260, 34.659443, 35.210381>,  <31.115862, 34.697163, 35.739277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512260, 34.659443, 35.210381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597649, 34.896271, 35.521221>,  <31.648882, 35.038368, 35.707726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597649, 34.896271, 35.521221>,  <31.512260, 34.659443, 35.210381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597649, 34.896271, 35.521221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767619, -0.593682, 0.241460,
		0.604311, 0.544971, -0.581218,
		0.213470, 0.592071, 0.777099,
		31.661690, 35.073891, 35.754353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245995, 34.804455, 35.167892>,  <31.512260, 34.659443, 35.210381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245995, 34.804455, 35.167892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080154, 34.843441, 35.529800>,  <31.980652, 34.866833, 35.746944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080154, 34.843441, 35.529800>,  <32.245995, 34.804455, 35.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080154, 34.843441, 35.529800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676743, -0.631682, 0.378150,
		0.608383, 0.769077, 0.195936,
		-0.414596, 0.097461, 0.904771,
		31.955776, 34.872681, 35.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022110, 34.312195, 35.850567>,  <32.245995, 34.804455, 35.167892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022110, 34.312195, 35.850567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042915, 33.929108, 35.963749>,  <32.055397, 33.699253, 36.031658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042915, 33.929108, 35.963749>,  <32.022110, 34.312195, 35.850567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042915, 33.929108, 35.963749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023286, 0.284423, 0.958416,
		-0.998375, -0.043262, 0.037096,
		0.052014, -0.957722, 0.282953,
		32.058521, 33.641792, 36.048634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529869, 34.171471, 36.315861>,  <32.022110, 34.312195, 35.850567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529869, 34.171471, 36.315861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851936, 33.945477, 36.387966>,  <32.045177, 33.809879, 36.431229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851936, 33.945477, 36.387966>,  <31.529869, 34.171471, 36.315861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851936, 33.945477, 36.387966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024076, 0.272572, 0.961834,
		-0.592556, -0.778780, 0.205864,
		0.805170, -0.564984, 0.180264,
		32.093487, 33.775982, 36.442047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305075, 33.775372, 36.804928>,  <31.529869, 34.171471, 36.315861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305075, 33.775372, 36.804928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703976, 33.787117, 36.832130>,  <31.943316, 33.794163, 36.848454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703976, 33.787117, 36.832130>,  <31.305075, 33.775372, 36.804928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703976, 33.787117, 36.832130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071799, 0.157339, 0.984931,
		0.018215, -0.987108, 0.159015,
		0.997253, 0.029358, 0.068008,
		32.003151, 33.795925, 36.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415091, 33.630363, 37.493896>,  <31.305075, 33.775372, 36.804928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415091, 33.630363, 37.493896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781137, 33.755760, 37.392479>,  <32.000767, 33.830997, 37.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781137, 33.755760, 37.392479>,  <31.415091, 33.630363, 37.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781137, 33.755760, 37.392479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191526, 0.215364, 0.957568,
		0.354790, -0.924847, 0.137042,
		0.915118, 0.313489, -0.253541,
		32.055672, 33.849808, 37.316418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870764, 33.367981, 37.898510>,  <31.415091, 33.630363, 37.493896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870764, 33.367981, 37.898510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070328, 33.684120, 37.756283>,  <32.190067, 33.873806, 37.670944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070328, 33.684120, 37.756283>,  <31.870764, 33.367981, 37.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070328, 33.684120, 37.756283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192978, 0.298670, 0.934642,
		0.844895, -0.534920, -0.003511,
		0.498910, 0.790352, -0.355572,
		32.220001, 33.921227, 37.649612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431080, 33.347458, 38.284637>,  <31.870764, 33.367981, 37.898510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431080, 33.347458, 38.284637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428139, 33.718102, 38.134262>,  <32.426373, 33.940487, 38.044037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428139, 33.718102, 38.134262>,  <32.431080, 33.347458, 38.284637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428139, 33.718102, 38.134262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389572, 0.348905, 0.852349,
		0.920967, -0.140189, -0.363549,
		-0.007354, 0.926613, -0.375943,
		32.425934, 33.996086, 38.021481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143970, 33.634251, 38.554890>,  <32.431080, 33.347458, 38.284637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143970, 33.634251, 38.554890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892422, 33.927490, 38.451286>,  <32.741493, 34.103436, 38.389126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892422, 33.927490, 38.451286>,  <33.143970, 33.634251, 38.554890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892422, 33.927490, 38.451286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298062, 0.534983, 0.790539,
		0.718109, 0.419947, -0.554945,
		-0.628870, 0.733101, -0.259006,
		32.703762, 34.147419, 38.373585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559284, 34.212784, 38.572227>,  <33.143970, 33.634251, 38.554890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559284, 34.212784, 38.572227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181808, 34.331295, 38.631104>,  <32.955322, 34.402401, 38.666428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181808, 34.331295, 38.631104>,  <33.559284, 34.212784, 38.572227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181808, 34.331295, 38.631104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290164, 0.527567, 0.798422,
		0.158906, 0.796173, -0.583830,
		-0.943692, 0.296281, 0.147187,
		32.898701, 34.420177, 38.675259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669502, 34.795700, 38.949940>,  <33.559284, 34.212784, 38.572227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669502, 34.795700, 38.949940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274937, 34.793098, 39.015591>,  <33.038197, 34.791538, 39.054981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274937, 34.793098, 39.015591>,  <33.669502, 34.795700, 38.949940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274937, 34.793098, 39.015591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138794, 0.501342, 0.854045,
		-0.087838, 0.865225, -0.493630,
		-0.986418, -0.006504, 0.164124,
		32.979012, 34.791145, 39.064827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556938, 35.410202, 39.208202>,  <33.669502, 34.795700, 38.949940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556938, 35.410202, 39.208202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263878, 35.167126, 39.330803>,  <33.088043, 35.021282, 39.404366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263878, 35.167126, 39.330803>,  <33.556938, 35.410202, 39.208202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263878, 35.167126, 39.330803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116249, 0.331992, 0.936092,
		-0.670607, 0.721456, -0.172590,
		-0.732647, -0.607686, 0.306505,
		33.044083, 34.984821, 39.422756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072334, 35.839321, 39.643253>,  <33.556938, 35.410202, 39.208202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072334, 35.839321, 39.643253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005100, 35.463371, 39.762177>,  <32.964760, 35.237801, 39.833530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005100, 35.463371, 39.762177>,  <33.072334, 35.839321, 39.643253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005100, 35.463371, 39.762177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018204, 0.298586, 0.954209,
		-0.985605, 0.165799, -0.033078,
		-0.168083, -0.939871, 0.297305,
		32.954674, 35.181412, 39.851368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038212, 36.069878, 40.327103>,  <33.072334, 35.839321, 39.643253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038212, 36.069878, 40.327103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981529, 35.674076, 40.315853>,  <32.947517, 35.436596, 40.309101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981529, 35.674076, 40.315853>,  <33.038212, 36.069878, 40.327103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981529, 35.674076, 40.315853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034275, -0.033302, 0.998857,
		-0.989314, 0.140584, 0.038634,
		-0.141710, -0.989508, -0.028128,
		32.939014, 35.377224, 40.307415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458683, 35.810307, 40.867802>,  <33.038212, 36.069878, 40.327103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458683, 35.810307, 40.867802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 35.519924, 40.773682>,  <32.872276, 35.345695, 40.717209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717178, 35.519924, 40.773682>,  <32.458683, 35.810307, 40.867802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717178, 35.519924, 40.773682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210299, -0.126992, 0.969354,
		-0.733589, -0.675916, 0.070601,
		0.646236, -0.725955, -0.235304,
		32.911049, 35.302139, 40.703091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212929, 35.261978, 41.168179>,  <32.458683, 35.810307, 40.867802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212929, 35.261978, 41.168179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604843, 35.209877, 41.107456>,  <32.839993, 35.178616, 41.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604843, 35.209877, 41.107456>,  <32.212929, 35.261978, 41.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604843, 35.209877, 41.107456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147023, -0.045623, 0.988080,
		-0.135628, -0.990430, -0.025550,
		0.979790, -0.130255, -0.151804,
		32.898781, 35.170799, 41.061916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447090, 34.616055, 41.384583>,  <32.212929, 35.261978, 41.168179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447090, 34.616055, 41.384583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773445, 34.845753, 41.411594>,  <32.969257, 34.983574, 41.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773445, 34.845753, 41.411594>,  <32.447090, 34.616055, 41.384583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773445, 34.845753, 41.411594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166706, -0.345451, 0.923511,
		0.553653, -0.742227, -0.377582,
		0.815891, 0.574249, 0.067526,
		33.018211, 35.018028, 41.431850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856590, 34.165630, 41.683315>,  <32.447090, 34.616055, 41.384583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856590, 34.165630, 41.683315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007950, 34.530006, 41.749039>,  <33.098766, 34.748634, 41.788471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007950, 34.530006, 41.749039>,  <32.856590, 34.165630, 41.683315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007950, 34.530006, 41.749039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196973, -0.252687, 0.947286,
		0.904442, -0.326089, -0.275048,
		0.378401, 0.910942, 0.164310,
		33.121471, 34.803288, 41.798332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310184, 34.015720, 42.154789>,  <32.856590, 34.165630, 41.683315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310184, 34.015720, 42.154789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222969, 34.404842, 42.186054>,  <33.170639, 34.638317, 42.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222969, 34.404842, 42.186054>,  <33.310184, 34.015720, 42.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222969, 34.404842, 42.186054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038436, -0.088591, 0.995326,
		0.975184, 0.214013, 0.056707,
		-0.218037, 0.972805, 0.078167,
		33.157558, 34.696686, 42.209503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744293, 34.200161, 42.635395>,  <33.310184, 34.015720, 42.154789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744293, 34.200161, 42.635395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439884, 34.459309, 42.622032>,  <33.257240, 34.614796, 42.614014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439884, 34.459309, 42.622032>,  <33.744293, 34.200161, 42.635395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439884, 34.459309, 42.622032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096332, -0.061933, 0.993421,
		0.641535, 0.759232, 0.109543,
		-0.761021, 0.647866, -0.033406,
		33.211578, 34.653667, 42.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757565, 34.633728, 43.242641>,  <33.744293, 34.200161, 42.635395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757565, 34.633728, 43.242641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373547, 34.693394, 43.147926>,  <33.143135, 34.729191, 43.091095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373547, 34.693394, 43.147926>,  <33.757565, 34.633728, 43.242641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373547, 34.693394, 43.147926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226312, 0.083936, 0.970432,
		0.164626, 0.985244, -0.046826,
		-0.960042, 0.149161, -0.236791,
		33.085533, 34.738140, 43.076889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455456, 35.093960, 43.739914>,  <33.757565, 34.633728, 43.242641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455456, 35.093960, 43.739914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131790, 34.934216, 43.567513>,  <32.937592, 34.838367, 43.464069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131790, 34.934216, 43.567513>,  <33.455456, 35.093960, 43.739914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131790, 34.934216, 43.567513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457917, -0.031050, 0.888453,
		-0.368195, 0.916268, -0.157749,
		-0.809163, -0.399360, -0.431007,
		32.889042, 34.814407, 43.438210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903969, 35.469688, 44.056843>,  <33.455456, 35.093960, 43.739914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903969, 35.469688, 44.056843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757450, 35.115776, 43.941608>,  <32.669540, 34.903431, 43.872467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757450, 35.115776, 43.941608>,  <32.903969, 35.469688, 44.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757450, 35.115776, 43.941608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315717, -0.173059, 0.932938,
		-0.875299, 0.432686, -0.215948,
		-0.366298, -0.884779, -0.288084,
		32.647560, 34.850342, 43.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344631, 35.372787, 44.627098>,  <32.903969, 35.469688, 44.056843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344631, 35.372787, 44.627098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398247, 35.016285, 44.453800>,  <32.430416, 34.802383, 44.349823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398247, 35.016285, 44.453800>,  <32.344631, 35.372787, 44.627098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398247, 35.016285, 44.453800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355118, -0.451352, 0.818641,
		-0.925162, 0.044124, -0.376999,
		0.134038, -0.891254, -0.433243,
		32.438457, 34.748909, 44.323826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713398, 35.077045, 44.816940>,  <32.344631, 35.372787, 44.627098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713398, 35.077045, 44.816940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965460, 34.796265, 44.684174>,  <32.116695, 34.627796, 44.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965460, 34.796265, 44.684174>,  <31.713398, 35.077045, 44.816940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965460, 34.796265, 44.684174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310099, -0.619408, 0.721230,
		-0.711861, -0.351559, -0.607997,
		0.630153, -0.701954, -0.331914,
		32.154507, 34.585678, 44.584599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334496, 34.456047, 44.750622>,  <31.713398, 35.077045, 44.816940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334496, 34.456047, 44.750622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718748, 34.360596, 44.807533>,  <31.949299, 34.303326, 44.841679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718748, 34.360596, 44.807533>,  <31.334496, 34.456047, 44.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718748, 34.360596, 44.807533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255475, -0.557494, 0.789894,
		-0.109176, -0.795145, -0.596511,
		0.960632, -0.238631, 0.142275,
		32.006939, 34.289005, 44.850216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321774, 33.809940, 45.047993>,  <31.334496, 34.456047, 44.750622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321774, 33.809940, 45.047993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691429, 33.930855, 45.141453>,  <31.913221, 34.003403, 45.197529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691429, 33.930855, 45.141453>,  <31.321774, 33.809940, 45.047993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691429, 33.930855, 45.141453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077976, -0.449450, 0.889895,
		0.374018, -0.840605, -0.391783,
		0.924138, 0.302287, 0.233650,
		31.968670, 34.021542, 45.211548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562166, 33.334641, 45.538300>,  <31.321774, 33.809940, 45.047993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562166, 33.334641, 45.538300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846737, 33.613743, 45.571804>,  <32.017479, 33.781204, 45.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846737, 33.613743, 45.571804>,  <31.562166, 33.334641, 45.538300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846737, 33.613743, 45.571804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046927, -0.166090, 0.984993,
		0.701193, -0.696818, -0.150904,
		0.711425, 0.697752, 0.083761,
		32.060165, 33.823067, 45.596931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148811, 33.055229, 45.894657>,  <31.562166, 33.334641, 45.538300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148811, 33.055229, 45.894657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171963, 33.452896, 45.931042>,  <32.185856, 33.691498, 45.952873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171963, 33.452896, 45.931042>,  <32.148811, 33.055229, 45.894657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171963, 33.452896, 45.931042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165759, -0.099422, 0.981142,
		0.984466, -0.041712, -0.170547,
		0.057882, 0.994171, 0.090964,
		32.189327, 33.751148, 45.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751915, 33.190685, 46.306393>,  <32.148811, 33.055229, 45.894657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751915, 33.190685, 46.306393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537067, 33.526402, 46.340061>,  <32.408157, 33.727833, 46.360260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537067, 33.526402, 46.340061>,  <32.751915, 33.190685, 46.306393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537067, 33.526402, 46.340061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228395, 0.048655, 0.972352,
		0.811994, 0.541497, -0.217824,
		-0.537124, 0.839294, 0.084167,
		32.375931, 33.778191, 46.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155006, 33.705227, 46.681488>,  <32.751915, 33.190685, 46.306393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155006, 33.705227, 46.681488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769062, 33.800045, 46.726826>,  <32.537495, 33.856937, 46.754028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769062, 33.800045, 46.726826>,  <33.155006, 33.705227, 46.681488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769062, 33.800045, 46.726826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131325, 0.061434, 0.989434,
		0.227580, 0.969554, -0.090405,
		-0.964863, 0.237048, 0.113345,
		32.479603, 33.871159, 46.760830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148056, 34.238358, 47.189037>,  <33.155006, 33.705227, 46.681488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148056, 34.238358, 47.189037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778847, 34.084705, 47.197701>,  <32.557320, 33.992516, 47.202896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778847, 34.084705, 47.197701>,  <33.148056, 34.238358, 47.189037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778847, 34.084705, 47.197701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049463, -0.062658, 0.996809,
		-0.381548, 0.921150, 0.076835,
		-0.923025, -0.384131, 0.021655,
		32.501938, 33.969467, 47.204197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631042, 34.709904, 47.644997>,  <33.148056, 34.238358, 47.189037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631042, 34.709904, 47.644997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499477, 34.332699, 47.624783>,  <32.420540, 34.106377, 47.612652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499477, 34.332699, 47.624783>,  <32.631042, 34.709904, 47.644997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499477, 34.332699, 47.624783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180693, 0.010315, 0.983485,
		-0.926913, 0.332610, -0.173788,
		-0.328910, -0.943008, -0.050540,
		32.400806, 34.049797, 47.609619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021812, 34.641357, 48.079819>,  <32.631042, 34.709904, 47.644997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021812, 34.641357, 48.079819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126099, 34.257099, 48.041466>,  <32.188671, 34.026546, 48.018452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126099, 34.257099, 48.041466>,  <32.021812, 34.641357, 48.079819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126099, 34.257099, 48.041466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302953, -0.175712, 0.936667,
		-0.916650, -0.215155, -0.336840,
		0.260715, -0.960642, -0.095884,
		32.204311, 33.968906, 48.012699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701326, 34.300476, 48.695850>,  <32.021812, 34.641357, 48.079819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701326, 34.300476, 48.695850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920000, 33.995861, 48.556599>,  <32.051205, 33.813091, 48.473045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920000, 33.995861, 48.556599>,  <31.701326, 34.300476, 48.695850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920000, 33.995861, 48.556599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053653, -0.446763, 0.893042,
		-0.835618, -0.469534, -0.285097,
		0.546684, -0.761539, -0.348131,
		32.084007, 33.767399, 48.452160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352657, 33.778622, 48.831158>,  <31.701326, 34.300476, 48.695850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352657, 33.778622, 48.831158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727713, 33.642254, 48.804008>,  <31.952745, 33.560432, 48.787720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727713, 33.642254, 48.804008>,  <31.352657, 33.778622, 48.831158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727713, 33.642254, 48.804008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167825, -0.614963, 0.770491,
		-0.304410, -0.711053, -0.633828,
		0.937640, -0.340917, -0.067869,
		32.009007, 33.539978, 48.783649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324150, 33.127583, 49.085705>,  <31.352657, 33.778622, 48.831158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324150, 33.127583, 49.085705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720093, 33.181477, 49.103729>,  <31.957659, 33.213814, 49.114544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720093, 33.181477, 49.103729>,  <31.324150, 33.127583, 49.085705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720093, 33.181477, 49.103729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044117, -0.593022, 0.803977,
		0.135049, -0.793834, -0.592950,
		0.989856, 0.134736, 0.045065,
		32.017048, 33.221897, 49.117249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667065, 32.501793, 49.095066>,  <31.324150, 33.127583, 49.085705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667065, 32.501793, 49.095066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945805, 32.753559, 49.232609>,  <32.113049, 32.904617, 49.315136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945805, 32.753559, 49.232609>,  <31.667065, 32.501793, 49.095066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945805, 32.753559, 49.232609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218224, -0.642777, 0.734313,
		0.683211, -0.436668, -0.585273,
		0.696851, 0.629411, 0.343861,
		32.154861, 32.942383, 49.335766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165524, 32.162468, 49.096394>,  <31.667065, 32.501793, 49.095066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165524, 32.162468, 49.096394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243668, 32.433537, 49.379971>,  <32.290554, 32.596176, 49.550117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243668, 32.433537, 49.379971>,  <32.165524, 32.162468, 49.096394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243668, 32.433537, 49.379971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278959, -0.731410, 0.622272,
		0.940221, 0.076198, -0.331930,
		0.195361, 0.677668, 0.708943,
		32.302277, 32.636837, 49.592655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792252, 31.973652, 49.462570>,  <32.165524, 32.162468, 49.096394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792252, 31.973652, 49.462570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599270, 32.200077, 49.729946>,  <32.483482, 32.335930, 49.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599270, 32.200077, 49.729946>,  <32.792252, 31.973652, 49.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599270, 32.200077, 49.729946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004979, -0.761345, 0.648328,
		0.875908, 0.316116, 0.364494,
		-0.482452, 0.566061, 0.668442,
		32.454533, 32.369896, 49.930477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139664, 31.993147, 50.236191>,  <32.792252, 31.973652, 49.462570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139664, 31.993147, 50.236191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749741, 32.067295, 50.285812>,  <32.515785, 32.111782, 50.315586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749741, 32.067295, 50.285812>,  <33.139664, 31.993147, 50.236191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749741, 32.067295, 50.285812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049535, -0.722184, 0.689925,
		0.217478, 0.666399, 0.713173,
		-0.974807, 0.185370, 0.124050,
		32.457298, 32.122906, 50.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004639, 31.912762, 50.999554>,  <33.139664, 31.993147, 50.236191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004639, 31.912762, 50.999554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638264, 31.909271, 50.839062>,  <32.418438, 31.907177, 50.742767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638264, 31.909271, 50.839062>,  <33.004639, 31.912762, 50.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638264, 31.909271, 50.839062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290928, -0.674226, 0.678808,
		-0.276442, 0.738474, 0.615009,
		-0.915937, -0.008727, -0.401227,
		32.363483, 31.906652, 50.718693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442600, 31.925920, 51.627975>,  <33.004639, 31.912762, 50.999554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442600, 31.925920, 51.627975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222481, 31.806932, 51.315903>,  <32.090408, 31.735538, 51.128658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222481, 31.806932, 51.315903>,  <32.442600, 31.925920, 51.627975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222481, 31.806932, 51.315903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320576, -0.787499, 0.526381,
		-0.770974, 0.539774, 0.337998,
		-0.550300, -0.297472, -0.780180,
		32.057392, 31.717691, 51.081848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777910, 31.715921, 51.872787>,  <32.442600, 31.925920, 51.627975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777910, 31.715921, 51.872787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853870, 31.513201, 51.536434>,  <31.899446, 31.391569, 51.334621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853870, 31.513201, 51.536434>,  <31.777910, 31.715921, 51.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853870, 31.513201, 51.536434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377468, -0.828331, 0.413988,
		-0.906342, 0.238792, -0.348601,
		0.189900, -0.506800, -0.840887,
		31.910841, 31.361160, 51.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161055, 31.457994, 51.758583>,  <31.777910, 31.715921, 51.872787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161055, 31.457994, 51.758583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411827, 31.248310, 51.528049>,  <31.562290, 31.122499, 51.389729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411827, 31.248310, 51.528049>,  <31.161055, 31.457994, 51.758583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411827, 31.248310, 51.528049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366410, -0.851239, 0.375681,
		-0.687534, -0.024351, -0.725743,
		0.626929, -0.524213, -0.576333,
		31.599905, 31.091045, 51.355148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868603, 31.065800, 51.420216>,  <31.161055, 31.457994, 51.758583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868603, 31.065800, 51.420216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214689, 30.873199, 51.476154>,  <31.422342, 30.757639, 51.509720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214689, 30.873199, 51.476154>,  <30.868603, 31.065800, 51.420216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214689, 30.873199, 51.476154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495641, -0.779200, 0.383649,
		-0.075756, -0.401255, -0.912828,
		0.865218, -0.481499, 0.139849,
		31.474255, 30.728750, 51.518108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801325, 30.346142, 51.456783>,  <30.868603, 31.065800, 51.420216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801325, 30.346142, 51.456783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174107, 30.288002, 51.589649>,  <31.397776, 30.253119, 51.669369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174107, 30.288002, 51.589649>,  <30.801325, 30.346142, 51.456783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174107, 30.288002, 51.589649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224201, -0.951003, 0.212904,
		0.284943, -0.272889, -0.918880,
		0.931956, -0.145348, 0.332163,
		31.453693, 30.244398, 51.689297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162006, 29.790983, 51.089745>,  <30.801325, 30.346142, 51.456783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162006, 29.790983, 51.089745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263968, 29.843315, 51.472977>,  <31.325144, 29.874714, 51.702915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263968, 29.843315, 51.472977>,  <31.162006, 29.790983, 51.089745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263968, 29.843315, 51.472977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268946, -0.942118, 0.200205,
		0.928813, -0.308703, -0.204960,
		0.254901, 0.130830, 0.958076,
		31.340439, 29.882565, 51.760399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319237, 29.127560, 51.307186>,  <31.162006, 29.790983, 51.089745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319237, 29.127560, 51.307186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263308, 29.334820, 51.644699>,  <31.229750, 29.459175, 51.847206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263308, 29.334820, 51.644699>,  <31.319237, 29.127560, 51.307186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263308, 29.334820, 51.644699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266311, -0.840434, 0.471963,
		0.953692, -0.158717, 0.255502,
		-0.139824, 0.518150, 0.843783,
		31.221361, 29.490265, 51.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520653, 28.641464, 51.849834>,  <31.319237, 29.127560, 51.307186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520653, 28.641464, 51.849834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290398, 28.925508, 52.012012>,  <31.152245, 29.095934, 52.109318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290398, 28.925508, 52.012012>,  <31.520653, 28.641464, 51.849834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290398, 28.925508, 52.012012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369596, -0.668243, 0.645639,
		0.729410, 0.221804, 0.647120,
		-0.575638, 0.710109, 0.405445,
		31.117706, 29.138540, 52.133644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349611, 28.221945, 52.346260>,  <31.520653, 28.641464, 51.849834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349611, 28.221945, 52.346260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145939, 28.554232, 52.436279>,  <31.023735, 28.753603, 52.490292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145939, 28.554232, 52.436279>,  <31.349611, 28.221945, 52.346260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145939, 28.554232, 52.436279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530892, -0.508966, 0.677574,
		0.677411, 0.225534, 0.700177,
		-0.509182, 0.830715, 0.225045,
		30.993185, 28.803446, 52.503792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197252, 27.748131, 51.772568>,  <31.349611, 28.221945, 52.346260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197252, 27.748131, 51.772568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479794, 27.479361, 51.683498>,  <31.649319, 27.318100, 51.630058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479794, 27.479361, 51.683498>,  <31.197252, 27.748131, 51.772568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479794, 27.479361, 51.683498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509249, -0.263878, -0.819166,
		0.491659, 0.692017, -0.528567,
		0.706354, -0.671923, -0.222671,
		31.691700, 27.277784, 51.616695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351309, 27.812593, 50.970703>,  <31.197252, 27.748131, 51.772568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351309, 27.812593, 50.970703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434969, 27.449402, 51.115936>,  <31.485165, 27.231487, 51.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434969, 27.449402, 51.115936>,  <31.351309, 27.812593, 50.970703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434969, 27.449402, 51.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580426, -0.414082, -0.701171,
		0.786995, -0.064089, -0.613622,
		0.209152, -0.907981, 0.363080,
		31.497715, 27.177008, 51.224861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706284, 27.350471, 50.607708>,  <31.351309, 27.812593, 50.970703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706284, 27.350471, 50.607708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453520, 27.117176, 50.811874>,  <31.301861, 26.977198, 50.934372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453520, 27.117176, 50.811874>,  <31.706284, 27.350471, 50.607708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453520, 27.117176, 50.811874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272705, -0.449130, -0.850832,
		0.725481, -0.676841, 0.124757,
		-0.631910, -0.583240, 0.510413,
		31.263947, 26.942204, 50.964996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695915, 28.017616, 50.319656>,  <31.706284, 27.350471, 50.607708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695915, 28.017616, 50.319656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622894, 28.410469, 50.337967>,  <31.579082, 28.646181, 50.348953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622894, 28.410469, 50.337967>,  <31.695915, 28.017616, 50.319656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622894, 28.410469, 50.337967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569971, 0.143648, -0.809011,
		-0.801130, -0.121594, -0.586008,
		-0.182550, 0.982130, 0.045775,
		31.568129, 28.705109, 50.351700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406490, 28.193069, 49.783337>,  <31.695915, 28.017616, 50.319656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406490, 28.193069, 49.783337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554138, 28.546158, 49.899647>,  <31.642727, 28.758011, 49.969433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554138, 28.546158, 49.899647>,  <31.406490, 28.193069, 49.783337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554138, 28.546158, 49.899647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354341, 0.155573, -0.922084,
		-0.859180, 0.443397, -0.255359,
		0.369122, 0.882721, 0.290779,
		31.664875, 28.810974, 49.986881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228222, 28.767374, 49.382282>,  <31.406490, 28.193069, 49.783337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228222, 28.767374, 49.382282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583900, 28.849035, 49.546062>,  <31.797308, 28.898033, 49.644329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583900, 28.849035, 49.546062>,  <31.228222, 28.767374, 49.382282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583900, 28.849035, 49.546062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386887, 0.142192, -0.911098,
		-0.244225, 0.968557, 0.047453,
		0.889198, 0.204154, 0.409449,
		31.850660, 28.910282, 49.668896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437094, 29.314634, 49.018288>,  <31.228222, 28.767374, 49.382282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437094, 29.314634, 49.018288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780819, 29.180828, 49.173038>,  <31.987055, 29.100544, 49.265888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780819, 29.180828, 49.173038>,  <31.437094, 29.314634, 49.018288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780819, 29.180828, 49.173038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474416, 0.238749, -0.847307,
		0.191069, 0.911646, 0.363860,
		0.859315, -0.334514, 0.386882,
		32.038612, 29.080473, 49.289104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984600, 29.669733, 48.705627>,  <31.437094, 29.314634, 49.018288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984600, 29.669733, 48.705627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204308, 29.384722, 48.880260>,  <32.336132, 29.213715, 48.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204308, 29.384722, 48.880260>,  <31.984600, 29.669733, 48.705627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204308, 29.384722, 48.880260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714498, 0.129510, -0.687546,
		0.433354, 0.689587, 0.580236,
		0.549269, -0.712528, 0.436585,
		32.369087, 29.170963, 49.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702251, 29.930977, 48.796761>,  <31.984600, 29.669733, 48.705627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702251, 29.930977, 48.796761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742794, 29.533730, 48.820248>,  <32.767120, 29.295382, 48.834339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742794, 29.533730, 48.820248>,  <32.702251, 29.930977, 48.796761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742794, 29.533730, 48.820248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765043, 0.040077, -0.642731,
		0.635953, 0.110065, 0.763838,
		0.101354, -0.993116, 0.058717,
		32.773201, 29.235794, 48.837864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369984, 29.851007, 48.947948>,  <32.702251, 29.930977, 48.796761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369984, 29.851007, 48.947948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262352, 29.494095, 48.802937>,  <33.197773, 29.279947, 48.715927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262352, 29.494095, 48.802937>,  <33.369984, 29.851007, 48.947948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262352, 29.494095, 48.802937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733512, 0.054078, -0.677521,
		0.624145, -0.448229, 0.639948,
		-0.269078, -0.892281, -0.362534,
		33.181629, 29.226410, 48.694176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869213, 29.379921, 48.994114>,  <33.369984, 29.851007, 48.947948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869213, 29.379921, 48.994114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672165, 29.213005, 48.688644>,  <33.553936, 29.112856, 48.505363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672165, 29.213005, 48.688644>,  <33.869213, 29.379921, 48.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672165, 29.213005, 48.688644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821194, 0.067551, -0.566637,
		0.288038, -0.906260, 0.309398,
		-0.492620, -0.417289, -0.763672,
		33.524380, 29.087818, 48.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405079, 29.082802, 48.434620>,  <33.869213, 29.379921, 48.994114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405079, 29.082802, 48.434620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062653, 29.115211, 48.230431>,  <33.857197, 29.134657, 48.107918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062653, 29.115211, 48.230431>,  <34.405079, 29.082802, 48.434620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062653, 29.115211, 48.230431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516504, 0.171006, -0.839036,
		0.019311, -0.981933, -0.188242,
		-0.856067, 0.081025, -0.510474,
		33.805832, 29.139519, 48.077290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547039, 28.716515, 47.886360>,  <34.405079, 29.082802, 48.434620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547039, 28.716515, 47.886360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236858, 28.936108, 47.761597>,  <34.050751, 29.067863, 47.686737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236858, 28.936108, 47.761597>,  <34.547039, 28.716515, 47.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236858, 28.936108, 47.761597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432355, 0.101666, -0.895954,
		-0.460154, -0.829626, -0.316193,
		-0.775453, 0.548985, -0.311911,
		34.004223, 29.100803, 47.668022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357986, 28.434467, 47.331562>,  <34.547039, 28.716515, 47.886360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357986, 28.434467, 47.331562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256092, 28.820965, 47.316151>,  <34.194958, 29.052864, 47.306904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256092, 28.820965, 47.316151>,  <34.357986, 28.434467, 47.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256092, 28.820965, 47.316151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598991, 0.126381, -0.790720,
		-0.759158, -0.224502, -0.610965,
		-0.254732, 0.966244, -0.038531,
		34.179672, 29.110838, 47.304592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047413, 28.433613, 46.615341>,  <34.357986, 28.434467, 47.331562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047413, 28.433613, 46.615341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166172, 28.795055, 46.738857>,  <34.237427, 29.011921, 46.812965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166172, 28.795055, 46.738857>,  <34.047413, 28.433613, 46.615341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166172, 28.795055, 46.738857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461081, 0.147520, -0.875010,
		-0.836217, 0.402162, -0.372837,
		0.296895, 0.903606, 0.308787,
		34.255241, 29.066137, 46.831493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914162, 28.846489, 46.121536>,  <34.047413, 28.433613, 46.615341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914162, 28.846489, 46.121536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180836, 29.070341, 46.318451>,  <34.340839, 29.204653, 46.436600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180836, 29.070341, 46.318451>,  <33.914162, 28.846489, 46.121536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180836, 29.070341, 46.318451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447694, 0.227394, -0.864791,
		-0.595905, 0.796936, -0.098943,
		0.666684, 0.559629, 0.492288,
		34.380840, 29.238230, 46.466137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853767, 29.541149, 45.888859>,  <33.914162, 28.846489, 46.121536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853767, 29.541149, 45.888859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227074, 29.536455, 46.032455>,  <34.451057, 29.533638, 46.118614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227074, 29.536455, 46.032455>,  <33.853767, 29.541149, 45.888859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227074, 29.536455, 46.032455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336599, 0.377415, -0.862705,
		-0.125364, 0.925970, 0.356179,
		0.933266, -0.011737, 0.358995,
		34.507053, 29.532934, 46.140156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113792, 30.038334, 45.462959>,  <33.853767, 29.541149, 45.888859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113792, 30.038334, 45.462959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436592, 29.896151, 45.651596>,  <34.630272, 29.810841, 45.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436592, 29.896151, 45.651596>,  <34.113792, 30.038334, 45.462959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436592, 29.896151, 45.651596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585024, 0.372179, -0.720576,
		0.080615, 0.857400, 0.508298,
		0.806999, -0.355456, 0.471596,
		34.678692, 29.789515, 45.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563309, 30.631363, 45.567402>,  <34.113792, 30.038334, 45.462959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563309, 30.631363, 45.567402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783051, 30.298113, 45.541767>,  <34.914898, 30.098164, 45.526386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783051, 30.298113, 45.541767>,  <34.563309, 30.631363, 45.567402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783051, 30.298113, 45.541767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611051, 0.452870, -0.649250,
		0.569932, 0.317508, 0.757870,
		0.549358, -0.833125, -0.064091,
		34.947857, 30.048176, 45.522541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167542, 30.878340, 45.573967>,  <34.563309, 30.631363, 45.567402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167542, 30.878340, 45.573967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 30.518412, 45.405472>,  <35.240170, 30.302454, 45.304375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 30.518412, 45.405472>,  <35.167542, 30.878340, 45.573967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212933, 30.518412, 45.405472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621577, 0.395058, -0.676441,
		0.775090, -0.185071, 0.604139,
		0.113480, -0.899821, -0.421241,
		35.246975, 30.248465, 45.279099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885460, 30.834026, 45.366234>,  <35.167542, 30.878340, 45.573967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885460, 30.834026, 45.366234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708836, 30.562223, 45.131870>,  <35.602859, 30.399141, 44.991253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708836, 30.562223, 45.131870>,  <35.885460, 30.834026, 45.366234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708836, 30.562223, 45.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481545, 0.371523, -0.793779,
		0.757059, -0.632644, 0.163164,
		-0.441561, -0.679509, -0.585911,
		35.576366, 30.358372, 44.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414360, 30.553961, 45.009460>,  <35.885460, 30.834026, 45.366234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414360, 30.553961, 45.009460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104706, 30.433649, 44.786663>,  <35.918911, 30.361462, 44.652985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104706, 30.433649, 44.786663>,  <36.414360, 30.553961, 45.009460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104706, 30.433649, 44.786663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506200, 0.234190, -0.830010,
		0.380091, -0.924493, -0.029042,
		-0.774140, -0.300778, -0.556992,
		35.872463, 30.343416, 44.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649414, 30.090799, 44.474442>,  <36.414360, 30.553961, 45.009460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649414, 30.090799, 44.474442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288815, 30.221909, 44.361404>,  <36.072453, 30.300575, 44.293583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288815, 30.221909, 44.361404>,  <36.649414, 30.090799, 44.474442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288815, 30.221909, 44.361404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307249, 0.024880, -0.951304,
		-0.304783, -0.944428, -0.123138,
		-0.901502, 0.327776, -0.282592,
		36.018364, 30.320242, 44.276627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457100, 29.725477, 43.840179>,  <36.649414, 30.090799, 44.474442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457100, 29.725477, 43.840179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261776, 30.074533, 43.843121>,  <36.144581, 30.283966, 43.844887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261776, 30.074533, 43.843121>,  <36.457100, 29.725477, 43.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261776, 30.074533, 43.843121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154625, 0.094809, -0.983414,
		-0.858863, -0.479074, -0.181228,
		-0.488310, 0.872640, 0.007352,
		36.115284, 30.336325, 43.845325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091129, 29.660358, 43.150276>,  <36.457100, 29.725477, 43.840179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091129, 29.660358, 43.150276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066193, 30.041855, 43.267914>,  <36.051231, 30.270752, 43.338497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066193, 30.041855, 43.267914>,  <36.091129, 29.660358, 43.150276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066193, 30.041855, 43.267914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145278, 0.300205, -0.942747,
		-0.987425, -0.016048, -0.157273,
		-0.062344, 0.953740, 0.294098,
		36.047489, 30.327976, 43.356144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523964, 30.041990, 42.754875>,  <36.091129, 29.660358, 43.150276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523964, 30.041990, 42.754875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748898, 30.340990, 42.896309>,  <35.883858, 30.520390, 42.981167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748898, 30.340990, 42.896309>,  <35.523964, 30.041990, 42.754875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748898, 30.340990, 42.896309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072401, 0.381444, -0.921552,
		-0.823733, 0.543821, 0.160380,
		0.562336, 0.747502, 0.353582,
		35.917599, 30.565241, 43.002384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240364, 30.689047, 42.523071>,  <35.523964, 30.041990, 42.754875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240364, 30.689047, 42.523071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620213, 30.777262, 42.612141>,  <35.848122, 30.830191, 42.665581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620213, 30.777262, 42.612141>,  <35.240364, 30.689047, 42.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620213, 30.777262, 42.612141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079731, 0.517121, -0.852190,
		-0.303090, 0.827012, 0.473485,
		0.949621, 0.220539, 0.222672,
		35.905098, 30.843424, 42.678944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239319, 31.394302, 42.415283>,  <35.240364, 30.689047, 42.523071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239319, 31.394302, 42.415283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622223, 31.280493, 42.394531>,  <35.851967, 31.212206, 42.382080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622223, 31.280493, 42.394531>,  <35.239319, 31.394302, 42.415283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622223, 31.280493, 42.394531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144918, 0.627110, -0.765331,
		0.250290, 0.725105, 0.641543,
		0.957264, -0.284526, -0.051879,
		35.909401, 31.195135, 42.378967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610012, 32.026722, 42.434799>,  <35.239319, 31.394302, 42.415283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610012, 32.026722, 42.434799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854259, 31.743845, 42.292240>,  <36.000809, 31.574120, 42.206703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854259, 31.743845, 42.292240>,  <35.610012, 32.026722, 42.434799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854259, 31.743845, 42.292240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234008, 0.591077, -0.771925,
		0.756560, 0.387952, 0.526413,
		0.610620, -0.707192, -0.356402,
		36.037445, 31.531687, 42.185318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038734, 32.344215, 42.076988>,  <35.610012, 32.026722, 42.434799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038734, 32.344215, 42.076988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091393, 31.993536, 41.891922>,  <36.122990, 31.783127, 41.780880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091393, 31.993536, 41.891922>,  <36.038734, 32.344215, 42.076988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091393, 31.993536, 41.891922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031069, 0.470150, -0.882039,
		0.990809, 0.101744, 0.089133,
		0.131649, -0.876702, -0.462668,
		36.130886, 31.730526, 41.753120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677799, 32.316837, 41.648418>,  <36.038734, 32.344215, 42.076988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677799, 32.316837, 41.648418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457695, 32.024277, 41.487289>,  <36.325634, 31.848742, 41.390614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457695, 32.024277, 41.487289>,  <36.677799, 32.316837, 41.648418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457695, 32.024277, 41.487289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162694, 0.379266, -0.910872,
		0.818989, -0.566755, -0.089701,
		-0.550262, -0.731400, -0.402823,
		36.292618, 31.804857, 41.366444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971375, 32.080276, 40.984589>,  <36.677799, 32.316837, 41.648418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971375, 32.080276, 40.984589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615356, 31.899811, 40.958424>,  <36.401745, 31.791531, 40.942726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615356, 31.899811, 40.958424>,  <36.971375, 32.080276, 40.984589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615356, 31.899811, 40.958424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053771, 0.038588, -0.997807,
		0.452699, -0.891606, -0.010085,
		-0.890040, -0.451164, -0.065411,
		36.348343, 31.764462, 40.938801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083302, 31.571249, 40.458317>,  <36.971375, 32.080276, 40.984589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083302, 31.571249, 40.458317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693569, 31.645144, 40.509785>,  <36.459732, 31.689480, 40.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693569, 31.645144, 40.509785>,  <37.083302, 31.571249, 40.458317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693569, 31.645144, 40.509785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173925, -0.254770, -0.951232,
		-0.142948, -0.949191, 0.280360,
		-0.974329, 0.184738, 0.128670,
		36.401272, 31.700565, 40.548386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724804, 30.997959, 40.085583>,  <37.083302, 31.571249, 40.458317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724804, 30.997959, 40.085583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493958, 31.322296, 40.124508>,  <36.355450, 31.516899, 40.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493958, 31.322296, 40.124508>,  <36.724804, 30.997959, 40.085583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493958, 31.322296, 40.124508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160172, 0.004463, -0.987079,
		-0.800802, -0.585245, 0.127299,
		-0.577115, 0.810844, 0.097313,
		36.320824, 31.565550, 40.153702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197758, 30.796221, 39.695942>,  <36.724804, 30.997959, 40.085583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197758, 30.796221, 39.695942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163940, 31.191582, 39.746403>,  <36.143650, 31.428799, 39.776680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163940, 31.191582, 39.746403>,  <36.197758, 30.796221, 39.695942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163940, 31.191582, 39.746403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041651, 0.122987, -0.991534,
		-0.995549, -0.089084, 0.030770,
		-0.084545, 0.988402, 0.126150,
		36.138577, 31.488102, 39.784248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685432, 31.025282, 39.226173>,  <36.197758, 30.796221, 39.695942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685432, 31.025282, 39.226173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894981, 31.352915, 39.319698>,  <36.020710, 31.549494, 39.375813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894981, 31.352915, 39.319698>,  <35.685432, 31.025282, 39.226173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894981, 31.352915, 39.319698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087735, 0.221143, -0.971287,
		-0.847269, 0.529340, 0.043988,
		0.523869, 0.819082, 0.233809,
		36.052143, 31.598639, 39.389839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306461, 31.512516, 38.926128>,  <35.685432, 31.025282, 39.226173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306461, 31.512516, 38.926128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665974, 31.682497, 38.969231>,  <35.881680, 31.784485, 38.995090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665974, 31.682497, 38.969231>,  <35.306461, 31.512516, 38.926128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665974, 31.682497, 38.969231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121578, 0.477754, -0.870040,
		-0.421205, 0.768874, 0.481061,
		0.898780, 0.424952, 0.107754,
		35.935608, 31.809982, 39.001556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365578, 32.168537, 38.519794>,  <35.306461, 31.512516, 38.926128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365578, 32.168537, 38.519794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748398, 32.078026, 38.592289>,  <35.978092, 32.023720, 38.635788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748398, 32.078026, 38.592289>,  <35.365578, 32.168537, 38.519794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748398, 32.078026, 38.592289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217372, 0.146428, -0.965043,
		0.191830, 0.962994, 0.189327,
		0.957053, -0.226279, 0.181239,
		36.035515, 32.010143, 38.646660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695061, 32.628910, 38.187485>,  <35.365578, 32.168537, 38.519794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695061, 32.628910, 38.187485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969383, 32.342487, 38.239532>,  <36.133976, 32.170631, 38.270760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969383, 32.342487, 38.239532>,  <35.695061, 32.628910, 38.187485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969383, 32.342487, 38.239532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391899, 0.212693, -0.895085,
		0.613261, 0.664845, 0.426489,
		0.685804, -0.716061, 0.130116,
		36.175125, 32.127670, 38.278568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267315, 32.951462, 37.996696>,  <35.695061, 32.628910, 38.187485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267315, 32.951462, 37.996696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329525, 32.559193, 37.949215>,  <36.366852, 32.323830, 37.920727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329525, 32.559193, 37.949215>,  <36.267315, 32.951462, 37.996696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329525, 32.559193, 37.949215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453049, 0.177593, -0.873617,
		0.877814, 0.082096, 0.471914,
		0.155530, -0.980674, -0.118700,
		36.376183, 32.264992, 37.913605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018517, 32.808586, 37.827095>,  <36.267315, 32.951462, 37.996696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018517, 32.808586, 37.827095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807121, 32.497215, 37.691589>,  <36.680286, 32.310394, 37.610287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807121, 32.497215, 37.691589>,  <37.018517, 32.808586, 37.827095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807121, 32.497215, 37.691589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396504, 0.126516, -0.909273,
		0.750658, -0.614859, 0.241786,
		-0.528486, -0.778423, -0.338764,
		36.648575, 32.263687, 37.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370934, 32.582626, 37.293903>,  <37.018517, 32.808586, 37.827095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370934, 32.582626, 37.293903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048706, 32.358376, 37.217224>,  <36.855370, 32.223824, 37.171215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048706, 32.358376, 37.217224>,  <37.370934, 32.582626, 37.293903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048706, 32.358376, 37.217224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167637, 0.094665, -0.981293,
		0.568287, -0.822639, 0.017723,
		-0.805573, -0.560627, -0.191702,
		36.807034, 32.190186, 37.159714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527714, 31.833178, 36.904686>,  <37.370934, 32.582626, 37.293903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527714, 31.833178, 36.904686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168571, 31.997034, 36.840122>,  <36.953087, 32.095348, 36.801384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168571, 31.997034, 36.840122>,  <37.527714, 31.833178, 36.904686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168571, 31.997034, 36.840122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165772, -0.025100, -0.985845,
		-0.407892, -0.911902, -0.045370,
		-0.897855, 0.409639, -0.161406,
		36.899216, 32.119926, 36.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959583, 31.247755, 36.853539>,  <37.527714, 31.833178, 36.904686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959583, 31.247755, 36.853539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194260, 30.978943, 36.672802>,  <38.335068, 30.817656, 36.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194260, 30.978943, 36.672802>,  <37.959583, 31.247755, 36.853539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194260, 30.978943, 36.672802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028853, -0.540262, 0.841002,
		-0.809295, -0.506448, -0.297578,
		0.586694, -0.672033, -0.451844,
		38.370270, 30.777332, 36.537251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807365, 30.790749, 37.372490>,  <37.959583, 31.247755, 36.853539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807365, 30.790749, 37.372490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094128, 30.619202, 37.152626>,  <38.266186, 30.516273, 37.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094128, 30.619202, 37.152626>,  <37.807365, 30.790749, 37.372490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094128, 30.619202, 37.152626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329427, -0.486455, 0.809221,
		-0.614431, -0.761206, -0.207461,
		0.716905, -0.428867, -0.549655,
		38.309200, 30.490541, 36.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745640, 30.058872, 37.423000>,  <37.807365, 30.790749, 37.372490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745640, 30.058872, 37.423000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113350, 30.211449, 37.384148>,  <38.333977, 30.302994, 37.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113350, 30.211449, 37.384148>,  <37.745640, 30.058872, 37.423000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113350, 30.211449, 37.384148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236141, -0.337025, 0.911401,
		0.314909, -0.860766, -0.399893,
		0.919276, 0.381440, -0.097130,
		38.389133, 30.325880, 37.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272549, 29.550848, 37.602928>,  <37.745640, 30.058872, 37.423000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272549, 29.550848, 37.602928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401974, 29.922268, 37.675705>,  <38.479630, 30.145121, 37.719372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401974, 29.922268, 37.675705>,  <38.272549, 29.550848, 37.602928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401974, 29.922268, 37.675705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304488, -0.284234, 0.909120,
		0.895877, -0.238758, -0.374700,
		0.323562, 0.928551, 0.181939,
		38.499043, 30.200832, 37.730286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987434, 29.461191, 37.891785>,  <38.272549, 29.550848, 37.602928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987434, 29.461191, 37.891785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854347, 29.829782, 37.971966>,  <38.774494, 30.050938, 38.020077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854347, 29.829782, 37.971966>,  <38.987434, 29.461191, 37.891785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854347, 29.829782, 37.971966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174665, -0.148672, 0.973339,
		0.926711, 0.358856, -0.111484,
		-0.332714, 0.921476, 0.200456,
		38.754532, 30.106226, 38.032101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352978, 29.852642, 38.300785>,  <38.987434, 29.461191, 37.891785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352978, 29.852642, 38.300785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024010, 30.061674, 38.390697>,  <38.826630, 30.187094, 38.444645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024010, 30.061674, 38.390697>,  <39.352978, 29.852642, 38.300785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024010, 30.061674, 38.390697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236179, -0.045819, 0.970629,
		0.517531, 0.851358, -0.085740,
		-0.822424, 0.522580, 0.224785,
		38.777283, 30.218449, 38.458134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616543, 30.281075, 38.867695>,  <39.352978, 29.852642, 38.300785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616543, 30.281075, 38.867695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219448, 30.325668, 38.885773>,  <38.981190, 30.352425, 38.896622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219448, 30.325668, 38.885773>,  <39.616543, 30.281075, 38.867695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219448, 30.325668, 38.885773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045909, 0.003833, 0.998938,
		0.111192, 0.993759, -0.008924,
		-0.992738, 0.111484, 0.045196,
		38.921627, 30.359114, 38.899330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512688, 30.840097, 39.326931>,  <39.616543, 30.281075, 38.867695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512688, 30.840097, 39.326931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175716, 30.626005, 39.302135>,  <38.973534, 30.497551, 39.287258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175716, 30.626005, 39.302135>,  <39.512688, 30.840097, 39.326931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175716, 30.626005, 39.302135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007479, -0.126646, 0.991920,
		-0.538755, 0.835159, 0.110693,
		-0.842430, -0.535229, -0.061985,
		38.922989, 30.465437, 39.283539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015644, 31.209164, 39.712543>,  <39.512688, 30.840097, 39.326931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015644, 31.209164, 39.712543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913513, 30.823046, 39.690594>,  <38.852234, 30.591375, 39.677422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913513, 30.823046, 39.690594>,  <39.015644, 31.209164, 39.712543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913513, 30.823046, 39.690594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073372, -0.075940, 0.994409,
		-0.964066, 0.249876, 0.090215,
		-0.255330, -0.965295, -0.054877,
		38.836914, 30.533457, 39.674129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699333, 31.194260, 40.295013>,  <39.015644, 31.209164, 39.712543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699333, 31.194260, 40.295013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709015, 30.804024, 40.207710>,  <38.714825, 30.569881, 40.155331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709015, 30.804024, 40.207710>,  <38.699333, 31.194260, 40.295013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709015, 30.804024, 40.207710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110339, -0.219592, 0.969332,
		-0.993599, 0.000621, -0.112961,
		0.024204, -0.975591, -0.218255,
		38.716274, 30.511347, 40.142235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155758, 30.879559, 40.742401>,  <38.699333, 31.194260, 40.295013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155758, 30.879559, 40.742401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394051, 30.572931, 40.646500>,  <38.537025, 30.388956, 40.588959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394051, 30.572931, 40.646500>,  <38.155758, 30.879559, 40.742401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394051, 30.572931, 40.646500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017775, -0.311017, 0.950238,
		-0.802989, -0.561822, -0.198907,
		0.595728, -0.766567, -0.239757,
		38.572769, 30.342960, 40.574574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739750, 30.314259, 40.909466>,  <38.155758, 30.879559, 40.742401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739750, 30.314259, 40.909466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132706, 30.240425, 40.897865>,  <38.368481, 30.196125, 40.890903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132706, 30.240425, 40.897865>,  <37.739750, 30.314259, 40.909466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132706, 30.240425, 40.897865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074748, -0.530496, 0.844385,
		-0.171248, -0.827346, -0.534950,
		0.982388, -0.184585, -0.029004,
		38.427422, 30.185049, 40.889164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848225, 29.526636, 41.048286>,  <37.739750, 30.314259, 40.909466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848225, 29.526636, 41.048286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180244, 29.736387, 41.124226>,  <38.379456, 29.862238, 41.169788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180244, 29.736387, 41.124226>,  <37.848225, 29.526636, 41.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180244, 29.736387, 41.124226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096516, -0.470362, 0.877180,
		0.549273, -0.709780, -0.441036,
		0.830051, 0.524378, 0.189852,
		38.429260, 29.893700, 41.181183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282448, 29.042240, 41.125198>,  <37.848225, 29.526636, 41.048286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282448, 29.042240, 41.125198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 29.347239, 41.321594>,  <38.552113, 29.530237, 41.439430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450989, 29.347239, 41.321594>,  <38.282448, 29.042240, 41.125198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450989, 29.347239, 41.321594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123475, -0.584582, 0.801884,
		0.898454, -0.277248, -0.340462,
		0.421348, 0.762495, 0.490986,
		38.577393, 29.575987, 41.468891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831356, 28.760324, 41.619499>,  <38.282448, 29.042240, 41.125198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831356, 28.760324, 41.619499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769890, 29.129805, 41.759880>,  <38.733009, 29.351492, 41.844109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769890, 29.129805, 41.759880>,  <38.831356, 28.760324, 41.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769890, 29.129805, 41.759880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073935, -0.364921, 0.928098,
		0.985353, 0.116671, 0.124370,
		-0.153667, 0.923700, 0.350950,
		38.723789, 29.406914, 41.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346806, 28.850483, 42.153065>,  <38.831356, 28.760324, 41.619499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346806, 28.850483, 42.153065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074680, 29.128290, 42.246712>,  <38.911404, 29.294975, 42.302898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074680, 29.128290, 42.246712>,  <39.346806, 28.850483, 42.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074680, 29.128290, 42.246712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042241, -0.281747, 0.958558,
		0.731699, 0.662014, 0.162340,
		-0.680318, 0.694519, 0.234118,
		38.870586, 29.336645, 42.316948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582691, 29.180662, 42.880611>,  <39.346806, 28.850483, 42.153065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582691, 29.180662, 42.880611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193253, 29.259766, 42.835003>,  <38.959591, 29.307228, 42.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193253, 29.259766, 42.835003>,  <39.582691, 29.180662, 42.880611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193253, 29.259766, 42.835003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124981, -0.043823, 0.991191,
		0.191022, 0.979270, 0.067382,
		-0.973597, 0.197760, -0.114019,
		38.901173, 29.319094, 42.800797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346207, 29.584869, 43.453102>,  <39.582691, 29.180662, 42.880611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346207, 29.584869, 43.453102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992760, 29.464407, 43.309700>,  <38.780693, 29.392130, 43.223660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992760, 29.464407, 43.309700>,  <39.346207, 29.584869, 43.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992760, 29.464407, 43.309700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343238, -0.104113, 0.933460,
		-0.318442, 0.947874, -0.011372,
		-0.883619, -0.301157, -0.358501,
		38.727673, 29.374060, 43.202148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829803, 29.944160, 43.819695>,  <39.346207, 29.584869, 43.453102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829803, 29.944160, 43.819695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657955, 29.613810, 43.673626>,  <38.554848, 29.415598, 43.585983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657955, 29.613810, 43.673626>,  <38.829803, 29.944160, 43.819695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657955, 29.613810, 43.673626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385242, -0.198118, 0.901298,
		-0.816710, 0.527896, -0.233048,
		-0.429620, -0.825879, -0.365172,
		38.529068, 29.366045, 43.564075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036564, 29.954987, 43.996685>,  <38.829803, 29.944160, 43.819695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036564, 29.954987, 43.996685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132076, 29.573883, 43.921597>,  <38.189384, 29.345221, 43.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132076, 29.573883, 43.921597>,  <38.036564, 29.954987, 43.996685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132076, 29.573883, 43.921597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475449, -0.283257, 0.832895,
		-0.846719, -0.109626, -0.520623,
		0.238777, -0.952758, -0.187717,
		38.203709, 29.288055, 43.865280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404457, 29.648613, 44.190895>,  <38.036564, 29.954987, 43.996685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404457, 29.648613, 44.190895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660049, 29.340927, 44.189640>,  <37.813404, 29.156315, 44.188889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660049, 29.340927, 44.189640>,  <37.404457, 29.648613, 44.190895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660049, 29.340927, 44.189640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461231, -0.386394, 0.798728,
		-0.615606, -0.508925, -0.601685,
		0.638980, -0.769217, -0.003134,
		37.851742, 29.110163, 44.188702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024891, 28.984007, 44.244373>,  <37.404457, 29.648613, 44.190895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024891, 28.984007, 44.244373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397804, 28.905924, 44.366184>,  <37.621552, 28.859074, 44.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397804, 28.905924, 44.366184>,  <37.024891, 28.984007, 44.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397804, 28.905924, 44.366184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350931, -0.284020, 0.892289,
		-0.087688, -0.938737, -0.333292,
		0.932287, -0.195206, 0.304526,
		37.677490, 28.847361, 44.457542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003258, 28.356377, 44.510643>,  <37.024891, 28.984007, 44.244373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003258, 28.356377, 44.510643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320271, 28.541956, 44.668961>,  <37.510479, 28.653303, 44.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320271, 28.541956, 44.668961>,  <37.003258, 28.356377, 44.510643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320271, 28.541956, 44.668961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314346, -0.245355, 0.917054,
		0.522575, -0.851207, -0.048611,
		0.792529, 0.463949, 0.395789,
		37.558029, 28.681141, 44.787697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258419, 27.867348, 45.132778>,  <37.003258, 28.356377, 44.510643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258419, 27.867348, 45.132778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391212, 28.238691, 45.199635>,  <37.470890, 28.461498, 45.239746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391212, 28.238691, 45.199635>,  <37.258419, 27.867348, 45.132778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391212, 28.238691, 45.199635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292890, -0.066980, 0.953797,
		0.896662, -0.365598, 0.249671,
		0.331983, 0.928360, 0.167139,
		37.490807, 28.517199, 45.249775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679729, 27.907850, 45.813423>,  <37.258419, 27.867348, 45.132778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679729, 27.907850, 45.813423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579201, 28.286636, 45.733326>,  <37.518883, 28.513908, 45.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579201, 28.286636, 45.733326>,  <37.679729, 27.907850, 45.813423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579201, 28.286636, 45.733326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350693, 0.103739, 0.930727,
		0.902139, 0.304132, 0.306023,
		-0.251317, 0.946965, -0.200244,
		37.503807, 28.570726, 45.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916477, 28.352818, 46.397800>,  <37.679729, 27.907850, 45.813423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916477, 28.352818, 46.397800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638012, 28.572655, 46.213062>,  <37.470932, 28.704557, 46.102219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638012, 28.572655, 46.213062>,  <37.916477, 28.352818, 46.397800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638012, 28.572655, 46.213062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349596, 0.302361, 0.886770,
		0.627007, 0.778798, -0.018358,
		-0.696165, 0.549592, -0.461847,
		37.429161, 28.737532, 46.074509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951233, 28.988125, 46.685120>,  <37.916477, 28.352818, 46.397800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951233, 28.988125, 46.685120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587456, 28.977568, 46.519123>,  <37.369190, 28.971233, 46.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587456, 28.977568, 46.519123>,  <37.951233, 28.988125, 46.685120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587456, 28.977568, 46.519123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401014, 0.319681, 0.858482,
		0.110007, 0.947157, -0.301316,
		-0.909443, -0.026393, -0.414991,
		37.314625, 28.969650, 46.394627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692924, 29.574097, 46.921265>,  <37.951233, 28.988125, 46.685120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692924, 29.574097, 46.921265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378651, 29.357269, 46.802025>,  <37.190086, 29.227173, 46.730480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378651, 29.357269, 46.802025>,  <37.692924, 29.574097, 46.921265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378651, 29.357269, 46.802025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496925, 0.265987, 0.826025,
		-0.368471, 0.797127, -0.478349,
		-0.785681, -0.542070, -0.298103,
		37.142948, 29.194649, 46.712593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107906, 30.032084, 46.989986>,  <37.692924, 29.574097, 46.921265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107906, 30.032084, 46.989986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976154, 29.655525, 47.019062>,  <36.897102, 29.429590, 47.036507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976154, 29.655525, 47.019062>,  <37.107906, 30.032084, 46.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976154, 29.655525, 47.019062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480424, 0.233370, 0.845418,
		-0.812836, 0.243540, -0.529136,
		-0.329378, -0.941396, 0.072689,
		36.877342, 29.373106, 47.040867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539959, 30.146387, 47.211296>,  <37.107906, 30.032084, 46.989986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539959, 30.146387, 47.211296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586197, 29.759428, 47.301434>,  <36.613941, 29.527252, 47.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586197, 29.759428, 47.301434>,  <36.539959, 30.146387, 47.211296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586197, 29.759428, 47.301434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353985, 0.171848, 0.919327,
		-0.928080, -0.186037, -0.322580,
		0.115594, -0.967398, 0.225343,
		36.620876, 29.469208, 47.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903076, 29.988691, 47.589520>,  <36.539959, 30.146387, 47.211296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903076, 29.988691, 47.589520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153961, 29.688591, 47.673164>,  <36.304493, 29.508532, 47.723351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153961, 29.688591, 47.673164>,  <35.903076, 29.988691, 47.589520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153961, 29.688591, 47.673164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252714, 0.057922, 0.965806,
		-0.736709, -0.658611, -0.153270,
		0.627213, -0.750251, 0.209112,
		36.342125, 29.463516, 47.735897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483326, 29.601982, 48.150436>,  <35.903076, 29.988691, 47.589520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483326, 29.601982, 48.150436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868305, 29.496078, 48.174416>,  <36.099293, 29.432535, 48.188805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868305, 29.496078, 48.174416>,  <35.483326, 29.601982, 48.150436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868305, 29.496078, 48.174416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098565, -0.135060, 0.985923,
		-0.252936, -0.954809, -0.156085,
		0.962449, -0.264760, 0.059949,
		36.157040, 29.416651, 48.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434921, 29.102364, 48.609837>,  <35.483326, 29.601982, 48.150436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434921, 29.102364, 48.609837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824772, 29.191870, 48.611935>,  <36.058681, 29.245573, 48.613194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824772, 29.191870, 48.611935>,  <35.434921, 29.102364, 48.609837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824772, 29.191870, 48.611935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035021, 0.129309, 0.990986,
		0.221072, -0.966027, 0.133865,
		0.974629, 0.223767, 0.005245,
		36.117161, 29.258999, 48.613506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739456, 28.700451, 49.126328>,  <35.434921, 29.102364, 48.609837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739456, 28.700451, 49.126328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989868, 29.008415, 49.076813>,  <36.140114, 29.193193, 49.047104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989868, 29.008415, 49.076813>,  <35.739456, 28.700451, 49.126328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989868, 29.008415, 49.076813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114084, 0.066610, 0.991235,
		0.771410, -0.634664, -0.046135,
		0.626028, 0.769912, -0.123789,
		36.177677, 29.239389, 49.039677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315289, 28.488638, 49.402100>,  <35.739456, 28.700451, 49.126328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315289, 28.488638, 49.402100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354401, 28.886620, 49.393085>,  <36.377869, 29.125408, 49.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354401, 28.886620, 49.393085>,  <36.315289, 28.488638, 49.402100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354401, 28.886620, 49.393085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283316, -0.006122, 0.959007,
		0.954028, -0.100161, -0.282484,
		0.097785, 0.994952, -0.022536,
		36.383736, 29.185104, 49.386326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992229, 28.686148, 49.802029>,  <36.315289, 28.488638, 49.402100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992229, 28.686148, 49.802029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751923, 29.005880, 49.806984>,  <36.607738, 29.197720, 49.809956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751923, 29.005880, 49.806984>,  <36.992229, 28.686148, 49.802029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751923, 29.005880, 49.806984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187555, 0.125864, 0.974157,
		0.777114, 0.587562, -0.225533,
		-0.600764, 0.799330, 0.012389,
		36.571693, 29.245680, 49.810699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311043, 29.280386, 50.054489>,  <36.992229, 28.686148, 49.802029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311043, 29.280386, 50.054489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920822, 29.348560, 50.109993>,  <36.686691, 29.389465, 50.143295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920822, 29.348560, 50.109993>,  <37.311043, 29.280386, 50.054489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920822, 29.348560, 50.109993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165157, 0.151948, 0.974492,
		0.145003, 0.973583, -0.176382,
		-0.975550, 0.170435, 0.138761,
		36.628159, 29.399691, 50.151623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310909, 29.736032, 50.649525>,  <37.311043, 29.280386, 50.054489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310909, 29.736032, 50.649525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923740, 29.638838, 50.623989>,  <36.691437, 29.580521, 50.608669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923740, 29.638838, 50.623989>,  <37.310909, 29.736032, 50.649525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923740, 29.638838, 50.623989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107855, 0.172397, 0.979105,
		-0.226905, 0.954587, -0.193075,
		-0.967926, -0.242988, -0.063839,
		36.633362, 29.565941, 50.604839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062481, 30.231419, 51.026367>,  <37.310909, 29.736032, 50.649525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062481, 30.231419, 51.026367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815525, 29.918209, 50.996174>,  <36.667351, 29.730282, 50.978058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815525, 29.918209, 50.996174>,  <37.062481, 30.231419, 51.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815525, 29.918209, 50.996174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071692, -0.039546, 0.996643,
		-0.783382, 0.620730, -0.031721,
		-0.617392, -0.783026, -0.075481,
		36.630306, 29.683302, 50.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407078, 30.716816, 51.040874>,  <37.062481, 30.231419, 51.026367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407078, 30.716816, 51.040874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459869, 31.036364, 51.275616>,  <36.491547, 31.228092, 51.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459869, 31.036364, 51.275616>,  <36.407078, 30.716816, 51.040874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459869, 31.036364, 51.275616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003909, 0.591604, -0.806219,
		-0.991244, 0.108701, 0.074959,
		0.131983, 0.798867, 0.586849,
		36.499466, 31.276024, 51.451672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936592, 31.263355, 50.870335>,  <36.407078, 30.716816, 51.040874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936592, 31.263355, 50.870335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257175, 31.454128, 51.014668>,  <36.449524, 31.568592, 51.101265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257175, 31.454128, 51.014668>,  <35.936592, 31.263355, 50.870335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257175, 31.454128, 51.014668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128068, 0.452479, -0.882531,
		-0.584176, 0.753524, 0.301564,
		0.801459, 0.476932, 0.360830,
		36.497612, 31.597208, 51.122917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902599, 32.006184, 50.722172>,  <35.936592, 31.263355, 50.870335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902599, 32.006184, 50.722172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289303, 31.946459, 50.805195>,  <36.521324, 31.910624, 50.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289303, 31.946459, 50.805195>,  <35.902599, 32.006184, 50.722172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289303, 31.946459, 50.805195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241184, 0.263041, -0.934152,
		0.084885, 0.953161, 0.290309,
		0.966760, -0.149313, 0.207559,
		36.579330, 31.901665, 50.867462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201351, 32.657234, 50.534931>,  <35.902599, 32.006184, 50.722172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201351, 32.657234, 50.534931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498367, 32.389320, 50.532913>,  <36.676579, 32.228573, 50.531704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498367, 32.389320, 50.532913>,  <36.201351, 32.657234, 50.534931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498367, 32.389320, 50.532913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293997, 0.332684, -0.896040,
		0.601830, 0.663862, 0.443945,
		0.742540, -0.669783, -0.005045,
		36.721130, 32.188385, 50.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696327, 33.035656, 50.279442>,  <36.201351, 32.657234, 50.534931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696327, 33.035656, 50.279442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841839, 32.666653, 50.227825>,  <36.929146, 32.445251, 50.196857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841839, 32.666653, 50.227825>,  <36.696327, 33.035656, 50.279442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841839, 32.666653, 50.227825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421628, 0.286598, -0.860286,
		0.830599, 0.258548, 0.493212,
		0.363779, -0.922504, -0.129037,
		36.950974, 32.389900, 50.189114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411396, 33.180771, 49.995083>,  <36.696327, 33.035656, 50.279442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411396, 33.180771, 49.995083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316742, 32.807896, 49.885521>,  <37.259949, 32.584171, 49.819782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316742, 32.807896, 49.885521>,  <37.411396, 33.180771, 49.995083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316742, 32.807896, 49.885521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338498, 0.185154, -0.922571,
		0.910727, -0.311027, 0.271731,
		-0.236632, -0.932191, -0.273907,
		37.245750, 32.528240, 49.803349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012356, 32.837185, 49.772305>,  <37.411396, 33.180771, 49.995083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012356, 32.837185, 49.772305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717960, 32.631306, 49.596390>,  <37.541325, 32.507778, 49.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717960, 32.631306, 49.596390>,  <38.012356, 32.837185, 49.772305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717960, 32.631306, 49.596390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524158, -0.022091, -0.851334,
		0.428464, -0.857088, 0.286041,
		-0.735987, -0.514697, -0.439784,
		37.497166, 32.476898, 49.464455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350834, 32.416992, 49.312099>,  <38.012356, 32.837185, 49.772305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350834, 32.416992, 49.312099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973610, 32.398476, 49.180344>,  <37.747276, 32.387367, 49.101288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973610, 32.398476, 49.180344>,  <38.350834, 32.416992, 49.312099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973610, 32.398476, 49.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332308, -0.174598, -0.926869,
		-0.014603, -0.983551, 0.180040,
		-0.943058, -0.046294, -0.329391,
		37.690693, 32.384586, 49.081528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269314, 31.744110, 48.958946>,  <38.350834, 32.416992, 49.312099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269314, 31.744110, 48.958946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979237, 31.990522, 48.835918>,  <37.805191, 32.138371, 48.762104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979237, 31.990522, 48.835918>,  <38.269314, 31.744110, 48.958946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979237, 31.990522, 48.835918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264275, -0.163448, -0.950496,
		-0.635808, -0.770577, -0.044271,
		-0.725194, 0.616033, -0.307566,
		37.761677, 32.175331, 48.743649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021397, 31.428917, 48.336060>,  <38.269314, 31.744110, 48.958946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021397, 31.428917, 48.336060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893539, 31.807222, 48.312881>,  <37.816826, 32.034206, 48.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893539, 31.807222, 48.312881>,  <38.021397, 31.428917, 48.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893539, 31.807222, 48.312881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199396, 0.007355, -0.979891,
		-0.926319, -0.324773, -0.190932,
		-0.319647, 0.945763, -0.057945,
		37.797646, 32.090950, 48.295498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679699, 31.435801, 47.634125>,  <38.021397, 31.428917, 48.336060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679699, 31.435801, 47.634125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709682, 31.823847, 47.726437>,  <37.727673, 32.056675, 47.781822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709682, 31.823847, 47.726437>,  <37.679699, 31.435801, 47.634125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709682, 31.823847, 47.726437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197609, 0.212385, -0.956997,
		-0.977411, 0.117342, -0.175782,
		0.074963, 0.970115, 0.230775,
		37.732170, 32.114880, 47.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342251, 31.807831, 47.161789>,  <37.679699, 31.435801, 47.634125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342251, 31.807831, 47.161789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628403, 32.060566, 47.281128>,  <37.800095, 32.212208, 47.352734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628403, 32.060566, 47.281128>,  <37.342251, 31.807831, 47.161789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628403, 32.060566, 47.281128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250105, 0.167150, -0.953682,
		-0.652441, 0.756863, -0.038450,
		0.715380, 0.631838, 0.298351,
		37.843018, 32.250118, 47.370632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315247, 32.459747, 46.706692>,  <37.342251, 31.807831, 47.161789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315247, 32.459747, 46.706692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678394, 32.422161, 46.870125>,  <37.896282, 32.399609, 46.968185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678394, 32.422161, 46.870125>,  <37.315247, 32.459747, 46.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678394, 32.422161, 46.870125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418744, 0.155250, -0.894735,
		0.020645, 0.983396, 0.180296,
		0.907869, -0.093970, 0.408586,
		37.950756, 32.393970, 46.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570606, 33.021099, 46.409580>,  <37.315247, 32.459747, 46.706692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570606, 33.021099, 46.409580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865227, 32.782558, 46.537235>,  <38.042000, 32.639435, 46.613827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865227, 32.782558, 46.537235>,  <37.570606, 33.021099, 46.409580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865227, 32.782558, 46.537235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437636, 0.060435, -0.897119,
		0.515714, 0.800443, 0.305500,
		0.736555, -0.596355, 0.319135,
		38.086193, 32.603653, 46.632977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196419, 33.381977, 46.218254>,  <37.570606, 33.021099, 46.409580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196419, 33.381977, 46.218254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271477, 32.990578, 46.252502>,  <38.316513, 32.755737, 46.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271477, 32.990578, 46.252502>,  <38.196419, 33.381977, 46.218254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271477, 32.990578, 46.252502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240575, -0.038732, -0.969858,
		0.952319, 0.202590, 0.228134,
		0.187647, -0.978497, 0.085623,
		38.327770, 32.697029, 46.278191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752476, 33.283264, 45.872589>,  <38.196419, 33.381977, 46.218254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752476, 33.283264, 45.872589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634964, 32.903778, 45.919292>,  <38.564457, 32.676086, 45.947315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634964, 32.903778, 45.919292>,  <38.752476, 33.283264, 45.872589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634964, 32.903778, 45.919292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341472, -0.218250, -0.914201,
		0.892799, -0.228705, 0.388078,
		-0.293781, -0.948715, 0.116757,
		38.546829, 32.619164, 45.954319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378532, 32.912216, 45.713215>,  <38.752476, 33.283264, 45.872589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378532, 32.912216, 45.713215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071945, 32.657799, 45.677490>,  <38.887993, 32.505150, 45.656055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071945, 32.657799, 45.677490>,  <39.378532, 32.912216, 45.713215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071945, 32.657799, 45.677490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392075, -0.353197, -0.849428,
		0.508729, -0.686076, 0.520091,
		-0.766467, -0.636044, -0.089312,
		38.842007, 32.466984, 45.650696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686203, 32.163261, 45.444172>,  <39.378532, 32.912216, 45.713215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686203, 32.163261, 45.444172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289532, 32.130440, 45.404510>,  <39.051529, 32.110748, 45.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289532, 32.130440, 45.404510>,  <39.686203, 32.163261, 45.444172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289532, 32.130440, 45.404510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122464, -0.364557, -0.923093,
		0.039596, -0.927559, 0.371574,
		-0.991683, -0.082055, -0.099158,
		38.992027, 32.105824, 45.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530773, 31.480455, 45.196659>,  <39.686203, 32.163261, 45.444172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530773, 31.480455, 45.196659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235237, 31.728796, 45.091843>,  <39.057915, 31.877800, 45.028954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235237, 31.728796, 45.091843>,  <39.530773, 31.480455, 45.196659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235237, 31.728796, 45.091843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020015, -0.368468, -0.929425,
		-0.673589, -0.691937, 0.259811,
		-0.738835, 0.620850, -0.262045,
		39.013588, 31.915051, 45.013229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120216, 31.166805, 44.731781>,  <39.530773, 31.480455, 45.196659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120216, 31.166805, 44.731781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012165, 31.546070, 44.664822>,  <38.947334, 31.773628, 44.624645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012165, 31.546070, 44.664822>,  <39.120216, 31.166805, 44.731781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012165, 31.546070, 44.664822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103616, -0.144227, -0.984105,
		-0.957233, -0.283179, -0.059286,
		-0.270127, 0.948160, -0.167401,
		38.931126, 31.830519, 44.614601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695114, 31.105963, 44.093315>,  <39.120216, 31.166805, 44.731781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695114, 31.105963, 44.093315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803665, 31.488573, 44.136040>,  <38.868797, 31.718140, 44.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803665, 31.488573, 44.136040>,  <38.695114, 31.105963, 44.093315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803665, 31.488573, 44.136040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114444, 0.078118, -0.990354,
		-0.955644, 0.280985, -0.088269,
		0.271379, 0.956527, 0.106810,
		38.885078, 31.775532, 44.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388554, 31.387321, 43.516777>,  <38.695114, 31.105963, 44.093315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388554, 31.387321, 43.516777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681202, 31.638929, 43.621891>,  <38.856792, 31.789894, 43.684959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681202, 31.638929, 43.621891>,  <38.388554, 31.387321, 43.516777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681202, 31.638929, 43.621891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320687, 0.022598, -0.946916,
		-0.601568, 0.777060, -0.185185,
		0.731625, 0.629020, 0.262788,
		38.900688, 31.827635, 43.700726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413658, 31.838713, 43.003162>,  <38.388554, 31.387321, 43.516777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413658, 31.838713, 43.003162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787731, 31.870750, 43.141159>,  <39.012177, 31.889973, 43.223957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787731, 31.870750, 43.141159>,  <38.413658, 31.838713, 43.003162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787731, 31.870750, 43.141159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338993, 0.079621, -0.937413,
		-0.102552, 0.993602, 0.047308,
		0.935183, 0.080096, 0.344990,
		39.068287, 31.894779, 43.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678146, 32.408054, 42.654373>,  <38.413658, 31.838713, 43.003162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678146, 32.408054, 42.654373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991116, 32.192879, 42.779873>,  <39.178898, 32.063774, 42.855175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991116, 32.192879, 42.779873>,  <38.678146, 32.408054, 42.654373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991116, 32.192879, 42.779873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474766, 0.189217, -0.859531,
		0.403005, 0.821476, 0.403441,
		0.782422, -0.537936, 0.313753,
		39.225842, 32.031498, 42.874001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233486, 32.811069, 42.343910>,  <38.678146, 32.408054, 42.654373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233486, 32.811069, 42.343910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360004, 32.449730, 42.459782>,  <39.435917, 32.232925, 42.529305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360004, 32.449730, 42.459782>,  <39.233486, 32.811069, 42.343910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360004, 32.449730, 42.459782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594722, -0.049079, -0.802432,
		0.739095, 0.426083, 0.521720,
		0.316297, -0.903352, 0.289675,
		39.454895, 32.178726, 42.546684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962257, 32.940781, 42.452377>,  <39.233486, 32.811069, 42.343910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962257, 32.940781, 42.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907997, 32.555904, 42.357895>,  <39.875443, 32.324978, 42.301205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907997, 32.555904, 42.357895>,  <39.962257, 32.940781, 42.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907997, 32.555904, 42.357895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681767, 0.082340, -0.726921,
		0.718884, -0.259645, 0.644818,
		-0.135648, -0.962187, -0.236210,
		39.867302, 32.267250, 42.287033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582546, 32.615055, 42.570400>,  <39.962257, 32.940781, 42.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582546, 32.615055, 42.570400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389191, 32.364979, 42.325298>,  <40.273178, 32.214935, 42.178238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389191, 32.364979, 42.325298>,  <40.582546, 32.615055, 42.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389191, 32.364979, 42.325298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729793, 0.098778, -0.676495,
		0.483464, -0.774198, 0.408510,
		-0.483389, -0.625189, -0.612759,
		40.244175, 32.177422, 42.141472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078289, 32.338650, 42.177292>,  <40.582546, 32.615055, 42.570400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078289, 32.338650, 42.177292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756687, 32.252129, 41.955742>,  <40.563725, 32.200214, 41.822811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756687, 32.252129, 41.955742>,  <41.078289, 32.338650, 42.177292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756687, 32.252129, 41.955742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583449, -0.107290, -0.805032,
		0.114705, -0.970413, 0.212464,
		-0.804009, -0.216304, -0.553879,
		40.515484, 32.187237, 41.789577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317513, 31.786385, 41.759468>,  <41.078289, 32.338650, 42.177292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317513, 31.786385, 41.759468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996861, 31.916277, 41.558693>,  <40.804470, 31.994211, 41.438229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996861, 31.916277, 41.558693>,  <41.317513, 31.786385, 41.759468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996861, 31.916277, 41.558693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521297, -0.031316, -0.852800,
		-0.292648, -0.945288, -0.144177,
		-0.801627, 0.324729, -0.501941,
		40.756371, 32.013695, 41.408112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374393, 31.433990, 41.093994>,  <41.317513, 31.786385, 41.759468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374393, 31.433990, 41.093994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114059, 31.732944, 41.040573>,  <40.957859, 31.912317, 41.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114059, 31.732944, 41.040573>,  <41.374393, 31.433990, 41.093994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114059, 31.732944, 41.040573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359125, 0.148067, -0.921469,
		-0.668917, -0.647683, -0.364771,
		-0.650831, 0.747384, -0.133554,
		40.918812, 31.957159, 41.000507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048992, 31.274952, 40.458256>,  <41.374393, 31.433990, 41.093994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048992, 31.274952, 40.458256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998055, 31.663845, 40.536789>,  <40.967491, 31.897181, 40.583908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998055, 31.663845, 40.536789>,  <41.048992, 31.274952, 40.458256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998055, 31.663845, 40.536789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282018, 0.225264, -0.932589,
		-0.950920, -0.063390, -0.302874,
		-0.127343, 0.972233, 0.196331,
		40.959850, 31.955515, 40.595688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683403, 31.574251, 39.836956>,  <41.048992, 31.274952, 40.458256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683403, 31.574251, 39.836956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875706, 31.875557, 40.016495>,  <40.991089, 32.056339, 40.124218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875706, 31.875557, 40.016495>,  <40.683403, 31.574251, 39.836956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875706, 31.875557, 40.016495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299918, 0.339754, -0.891413,
		-0.823967, 0.563172, -0.062578,
		0.480757, 0.753263, 0.448851,
		41.019932, 32.101536, 40.151150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605358, 32.249214, 39.475307>,  <40.683403, 31.574251, 39.836956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605358, 32.249214, 39.475307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919601, 32.358803, 39.697212>,  <41.108147, 32.424557, 39.830357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919601, 32.358803, 39.697212>,  <40.605358, 32.249214, 39.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919601, 32.358803, 39.697212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340776, 0.556778, -0.757542,
		-0.516426, 0.784179, 0.344044,
		0.785605, 0.273972, 0.554765,
		41.155281, 32.440994, 39.863640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675655, 32.989063, 39.524250>,  <40.605358, 32.249214, 39.475307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675655, 32.989063, 39.524250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047771, 32.867676, 39.606678>,  <41.271042, 32.794842, 39.656136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047771, 32.867676, 39.606678>,  <40.675655, 32.989063, 39.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047771, 32.867676, 39.606678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366546, 0.747242, -0.554322,
		0.014232, 0.591216, 0.806388,
		0.930291, -0.303467, 0.206073,
		41.326859, 32.776634, 39.668499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100220, 33.633316, 39.766735>,  <40.675655, 32.989063, 39.524250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100220, 33.633316, 39.766735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348793, 33.356903, 39.619064>,  <41.497936, 33.191055, 39.530460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348793, 33.356903, 39.619064>,  <41.100220, 33.633316, 39.766735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348793, 33.356903, 39.619064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330501, 0.658450, -0.676175,
		0.710346, 0.298183, 0.637570,
		0.621432, -0.691036, -0.369178,
		41.535221, 33.149593, 39.508312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483643, 34.074692, 39.398010>,  <41.100220, 33.633316, 39.766735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483643, 34.074692, 39.398010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598915, 33.717136, 39.260654>,  <41.668079, 33.502602, 39.178242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598915, 33.717136, 39.260654>,  <41.483643, 34.074692, 39.398010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598915, 33.717136, 39.260654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285322, 0.422469, -0.860297,
		0.914080, 0.149945, 0.376794,
		0.288181, -0.893889, -0.343388,
		41.685368, 33.448971, 39.157639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253151, 34.108814, 39.158657>,  <41.483643, 34.074692, 39.398010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253151, 34.108814, 39.158657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067066, 33.809349, 38.969734>,  <41.955414, 33.629669, 38.856380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067066, 33.809349, 38.969734>,  <42.253151, 34.108814, 39.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067066, 33.809349, 38.969734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356013, 0.330266, -0.874174,
		0.810452, -0.574825, 0.112890,
		-0.465213, -0.748666, -0.472309,
		41.927502, 33.584751, 38.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795773, 33.890514, 38.698505>,  <42.253151, 34.108814, 39.158657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795773, 33.890514, 38.698505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448803, 33.735268, 38.573971>,  <42.240620, 33.642120, 38.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448803, 33.735268, 38.573971>,  <42.795773, 33.890514, 38.698505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448803, 33.735268, 38.573971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222694, 0.256715, -0.940481,
		0.444946, -0.885132, -0.136249,
		-0.867427, -0.388122, -0.311338,
		42.188576, 33.618832, 38.480568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974678, 33.454201, 38.197903>,  <42.795773, 33.890514, 38.698505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974678, 33.454201, 38.197903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597034, 33.517986, 38.082504>,  <42.370449, 33.556259, 38.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597034, 33.517986, 38.082504>,  <42.974678, 33.454201, 38.197903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597034, 33.517986, 38.082504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317972, 0.209836, -0.924588,
		-0.086905, -0.964645, -0.248814,
		-0.944109, 0.159467, -0.288494,
		42.313801, 33.565826, 37.995956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680603, 32.992962, 37.820602>,  <42.974678, 33.454201, 38.197903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680603, 32.992962, 37.820602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461754, 33.310356, 37.713997>,  <42.330444, 33.500793, 37.650032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461754, 33.310356, 37.713997>,  <42.680603, 32.992962, 37.820602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461754, 33.310356, 37.713997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226398, -0.166249, -0.959742,
		-0.805852, -0.585438, -0.088685,
		-0.547126, 0.793488, -0.266514,
		42.297615, 33.548401, 37.634041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121349, 32.729881, 37.430889>,  <42.680603, 32.992962, 37.820602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121349, 32.729881, 37.430889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306099, 33.084122, 37.411404>,  <42.416950, 33.296665, 37.399712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306099, 33.084122, 37.411404>,  <42.121349, 32.729881, 37.430889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306099, 33.084122, 37.411404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387620, -0.250947, -0.887004,
		-0.797759, 0.390806, -0.459185,
		0.461878, 0.885605, -0.048711,
		42.444664, 33.349804, 37.396790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135815, 33.052711, 36.765896>,  <42.121349, 32.729881, 37.430889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135815, 33.052711, 36.765896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449375, 33.188095, 36.974102>,  <42.637512, 33.269325, 37.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449375, 33.188095, 36.974102>,  <42.135815, 33.052711, 36.765896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449375, 33.188095, 36.974102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604104, -0.222206, -0.765300,
		-0.143364, 0.914367, -0.378655,
		0.783904, 0.338463, 0.520516,
		42.684547, 33.289635, 37.130257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573559, 33.494987, 36.245255>,  <42.135815, 33.052711, 36.765896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573559, 33.494987, 36.245255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811520, 33.328762, 36.520470>,  <42.954296, 33.229027, 36.685596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811520, 33.328762, 36.520470>,  <42.573559, 33.494987, 36.245255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811520, 33.328762, 36.520470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747034, -0.030107, -0.664104,
		0.296695, 0.909064, 0.292533,
		0.594905, -0.415568, 0.688034,
		42.989990, 33.204090, 36.726879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107342, 34.007614, 36.368000>,  <42.573559, 33.494987, 36.245255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107342, 34.007614, 36.368000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220699, 33.632435, 36.447933>,  <43.288712, 33.407326, 36.495895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220699, 33.632435, 36.447933>,  <43.107342, 34.007614, 36.368000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220699, 33.632435, 36.447933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748100, 0.085837, -0.658011,
		0.600030, 0.335971, 0.726008,
		0.283391, -0.937953, 0.199836,
		43.305717, 33.351048, 36.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765789, 33.956394, 36.569469>,  <43.107342, 34.007614, 36.368000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765789, 33.956394, 36.569469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661533, 33.644184, 36.342190>,  <43.598980, 33.456860, 36.205822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.661533, 33.644184, 36.342190>,  <43.765789, 33.956394, 36.569469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661533, 33.644184, 36.342190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724631, 0.230745, -0.649359,
		0.637949, -0.580982, 0.505451,
		-0.260636, -0.780523, -0.568201,
		43.583344, 33.410027, 36.171730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418129, 33.566933, 36.569462>,  <43.765789, 33.956394, 36.569469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418129, 33.566933, 36.569462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294106, 33.413502, 36.221500>,  <44.219692, 33.321445, 36.012722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294106, 33.413502, 36.221500>,  <44.418129, 33.566933, 36.569462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294106, 33.413502, 36.221500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398258, 0.778442, -0.485199,
		0.863280, -0.496888, -0.088604,
		-0.310063, -0.383576, -0.869903,
		44.201088, 33.298428, 35.960529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005589, 33.525486, 36.098915>,  <44.418129, 33.566933, 36.569462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005589, 33.525486, 36.098915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676968, 33.574593, 35.876209>,  <44.479797, 33.604057, 35.742584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676968, 33.574593, 35.876209>,  <45.005589, 33.525486, 36.098915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676968, 33.574593, 35.876209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440303, 0.757000, -0.482788,
		0.362200, -0.641779, -0.675967,
		-0.821550, 0.122765, -0.556763,
		44.430504, 33.611423, 35.709179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888699, 34.220619, 35.616222>,  <45.005589, 33.525486, 36.098915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888699, 34.220619, 35.616222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181595, 34.343639, 35.373161>,  <45.357334, 34.417450, 35.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181595, 34.343639, 35.373161>,  <44.888699, 34.220619, 35.616222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181595, 34.343639, 35.373161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059674, 0.917771, 0.392602,
		0.678425, -0.251219, 0.690383,
		0.732242, 0.307549, -0.607648,
		45.401268, 34.435905, 35.190868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454491, 34.505493, 35.960941>,  <44.888699, 34.220619, 35.616222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454491, 34.505493, 35.960941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488750, 34.674095, 35.599831>,  <45.509304, 34.775257, 35.383163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488750, 34.674095, 35.599831>,  <45.454491, 34.505493, 35.960941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488750, 34.674095, 35.599831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047864, 0.906798, 0.418839,
		0.995175, 0.007338, 0.097837,
		0.085645, 0.421501, -0.902775,
		45.514442, 34.800545, 35.328999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710888, 35.167316, 36.195080>,  <45.454491, 34.505493, 35.960941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710888, 35.167316, 36.195080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571411, 35.201450, 35.821743>,  <45.487724, 35.221931, 35.597740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571411, 35.201450, 35.821743>,  <45.710888, 35.167316, 36.195080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571411, 35.201450, 35.821743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194484, 0.967582, 0.161125,
		0.916837, 0.237703, -0.320790,
		-0.348691, 0.085337, -0.933345,
		45.466805, 35.227051, 35.541740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005402, 35.736763, 35.927952>,  <45.710888, 35.167316, 36.195080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005402, 35.736763, 35.927952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677204, 35.713768, 35.700451>,  <45.480286, 35.699970, 35.563950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677204, 35.713768, 35.700451>,  <46.005402, 35.736763, 35.927952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677204, 35.713768, 35.700451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035280, 0.998126, -0.049998,
		0.570563, -0.020957, -0.820986,
		-0.820496, -0.057492, -0.568754,
		45.431057, 35.696522, 35.529823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111633, 36.347824, 35.455673>,  <46.005402, 35.736763, 35.927952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111633, 36.347824, 35.455673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725014, 36.251400, 35.420647>,  <45.493042, 36.193546, 35.399632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725014, 36.251400, 35.420647>,  <46.111633, 36.347824, 35.455673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725014, 36.251400, 35.420647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241150, 0.970439, -0.009712,
		0.087321, 0.011730, -0.996111,
		-0.966551, -0.241061, -0.087568,
		45.435047, 36.179081, 35.394375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861713, 36.770100, 34.929062>,  <46.111633, 36.347824, 35.455673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861713, 36.770100, 34.929062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548901, 36.665825, 35.155502>,  <45.361214, 36.603260, 35.291367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548901, 36.665825, 35.155502>,  <45.861713, 36.770100, 34.929062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548901, 36.665825, 35.155502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384491, 0.916666, -0.109038,
		-0.490500, -0.302931, -0.817094,
		-0.782034, -0.260683, 0.566099,
		45.314289, 36.587620, 35.325333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218651, 36.907722, 34.509926>,  <45.861713, 36.770100, 34.929062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218651, 36.907722, 34.509926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077847, 36.875080, 34.882900>,  <44.993362, 36.855495, 35.106686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077847, 36.875080, 34.882900>,  <45.218651, 36.907722, 34.509926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077847, 36.875080, 34.882900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525628, 0.841513, -0.124786,
		-0.774470, -0.534038, -0.339115,
		-0.352010, -0.081605, 0.932432,
		44.972244, 36.850597, 35.162628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595047, 36.974979, 34.401009>,  <45.218651, 36.907722, 34.509926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595047, 36.974979, 34.401009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613129, 37.078373, 34.786991>,  <44.623978, 37.140411, 35.018581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613129, 37.078373, 34.786991>,  <44.595047, 36.974979, 34.401009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613129, 37.078373, 34.786991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559483, 0.806792, -0.189911,
		-0.827609, -0.531292, 0.181089,
		0.045203, 0.258488, 0.964956,
		44.626690, 37.155918, 35.076477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941608, 37.114174, 34.576595>,  <44.595047, 36.974979, 34.401009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941608, 37.114174, 34.576595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173733, 37.305157, 34.840496>,  <44.313007, 37.419746, 34.998837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173733, 37.305157, 34.840496>,  <43.941608, 37.114174, 34.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173733, 37.305157, 34.840496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692497, 0.715631, 0.091218,
		-0.428590, -0.509814, 0.745923,
		0.580309, 0.477454, 0.659757,
		44.347824, 37.448395, 35.038422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460175, 37.537659, 34.958179>,  <43.941608, 37.114174, 34.576595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460175, 37.537659, 34.958179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805573, 37.696621, 35.082397>,  <44.012814, 37.792000, 35.156929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805573, 37.696621, 35.082397>,  <43.460175, 37.537659, 34.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805573, 37.696621, 35.082397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454815, 0.879685, 0.138917,
		-0.217975, -0.261195, 0.940353,
		0.863499, 0.397407, 0.310545,
		44.064621, 37.815842, 35.175560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210861, 37.881050, 35.552906>,  <43.460175, 37.537659, 34.958179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210861, 37.881050, 35.552906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560017, 38.025085, 35.421204>,  <43.769508, 38.111507, 35.342182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560017, 38.025085, 35.421204>,  <43.210861, 37.881050, 35.552906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560017, 38.025085, 35.421204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435803, 0.878838, -0.194215,
		0.219426, 0.313017, 0.924052,
		0.872885, 0.360089, -0.329254,
		43.821880, 38.133114, 35.322426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167488, 38.470531, 35.918308>,  <43.210861, 37.881050, 35.552906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167488, 38.470531, 35.918308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416298, 38.517735, 35.608685>,  <43.565582, 38.546059, 35.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.416298, 38.517735, 35.608685>,  <43.167488, 38.470531, 35.918308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416298, 38.517735, 35.608685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535819, 0.785010, -0.310898,
		0.570953, 0.608139, 0.551526,
		0.622022, 0.118010, -0.774056,
		43.602905, 38.553139, 35.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307220, 39.168030, 35.934963>,  <43.167488, 38.470531, 35.918308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307220, 39.168030, 35.934963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402790, 39.060822, 35.561638>,  <43.460133, 38.996494, 35.337643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402790, 39.060822, 35.561638>,  <43.307220, 39.168030, 35.934963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402790, 39.060822, 35.561638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377151, 0.860079, -0.343542,
		0.894803, 0.434082, 0.104409,
		0.238925, -0.268024, -0.933315,
		43.474468, 38.980415, 35.281643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593647, 39.816921, 35.579941>,  <43.307220, 39.168030, 35.934963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593647, 39.816921, 35.579941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504490, 39.553169, 35.292736>,  <43.450996, 39.394917, 35.120415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504490, 39.553169, 35.292736>,  <43.593647, 39.816921, 35.579941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504490, 39.553169, 35.292736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255770, 0.750290, -0.609628,
		0.940691, 0.047763, -0.335885,
		-0.222893, -0.659381, -0.718007,
		43.437622, 39.355354, 35.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860504, 40.102688, 34.905960>,  <43.593647, 39.816921, 35.579941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860504, 40.102688, 34.905960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567223, 39.843433, 34.823669>,  <43.391254, 39.687881, 34.774296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567223, 39.843433, 34.823669>,  <43.860504, 40.102688, 34.905960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567223, 39.843433, 34.823669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333388, 0.606304, -0.721975,
		0.592671, -0.460772, -0.660628,
		-0.733207, -0.648139, -0.205722,
		43.347260, 39.648991, 34.761951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896156, 40.220890, 34.222221>,  <43.860504, 40.102688, 34.905960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896156, 40.220890, 34.222221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552387, 40.021404, 34.267246>,  <43.346127, 39.901711, 34.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552387, 40.021404, 34.267246>,  <43.896156, 40.220890, 34.222221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552387, 40.021404, 34.267246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453179, 0.641169, -0.619299,
		0.236681, -0.583253, -0.777045,
		-0.859425, -0.498717, 0.112566,
		43.294559, 39.871788, 34.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586975, 40.111977, 33.506306>,  <43.896156, 40.220890, 34.222221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586975, 40.111977, 33.506306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282982, 40.111652, 33.766285>,  <43.100586, 40.111458, 33.922272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282982, 40.111652, 33.766285>,  <43.586975, 40.111977, 33.506306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282982, 40.111652, 33.766285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531715, 0.575865, -0.621014,
		-0.373775, -0.817545, -0.438079,
		-0.759981, -0.000814, 0.649944,
		43.054989, 40.111408, 33.961269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008362, 39.962162, 33.082256>,  <43.586975, 40.111977, 33.506306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008362, 39.962162, 33.082256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834347, 40.149487, 33.389874>,  <42.729939, 40.261883, 33.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834347, 40.149487, 33.389874>,  <43.008362, 39.962162, 33.082256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834347, 40.149487, 33.389874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558520, 0.529580, -0.638435,
		-0.706259, -0.707267, 0.031178,
		-0.435033, 0.468314, 0.769044,
		42.703838, 40.289982, 33.620586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231472, 39.947632, 32.947414>,  <43.008362, 39.962162, 33.082256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231472, 39.947632, 32.947414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297649, 40.237278, 33.215229>,  <42.337357, 40.411068, 33.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297649, 40.237278, 33.215229>,  <42.231472, 39.947632, 32.947414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297649, 40.237278, 33.215229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564243, 0.626303, -0.537935,
		-0.808863, -0.288787, 0.512194,
		0.165440, 0.724118, 0.669539,
		42.347282, 40.454514, 33.416092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614632, 40.371475, 33.097351>,  <42.231472, 39.947632, 32.947414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614632, 40.371475, 33.097351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873241, 40.643848, 33.234947>,  <42.028408, 40.807274, 33.317505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873241, 40.643848, 33.234947>,  <41.614632, 40.371475, 33.097351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873241, 40.643848, 33.234947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517759, 0.722808, -0.457682,
		-0.560292, 0.117799, 0.819875,
		0.646527, 0.680934, 0.343993,
		42.067200, 40.848129, 33.338146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179283, 40.849205, 33.406006>,  <41.614632, 40.371475, 33.097351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179283, 40.849205, 33.406006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520554, 41.037365, 33.315838>,  <41.725315, 41.150261, 33.261738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520554, 41.037365, 33.315838>,  <41.179283, 40.849205, 33.406006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520554, 41.037365, 33.315838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521452, 0.758020, -0.391783,
		-0.013422, 0.451806, 0.892015,
		0.853175, 0.470401, -0.225421,
		41.776505, 41.178486, 33.248211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095734, 41.539597, 33.516068>,  <41.179283, 40.849205, 33.406006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095734, 41.539597, 33.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370743, 41.487198, 33.230370>,  <41.535748, 41.455761, 33.058949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370743, 41.487198, 33.230370>,  <41.095734, 41.539597, 33.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370743, 41.487198, 33.230370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414738, 0.736552, -0.534306,
		0.596071, 0.663575, 0.452071,
		0.687526, -0.130993, -0.714247,
		41.577000, 41.447899, 33.016094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348064, 42.301788, 33.303165>,  <41.095734, 41.539597, 33.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348064, 42.301788, 33.303165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391552, 42.011314, 33.031624>,  <41.417645, 41.837032, 32.868698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391552, 42.011314, 33.031624>,  <41.348064, 42.301788, 33.303165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391552, 42.011314, 33.031624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301249, 0.626719, -0.718660,
		0.947327, 0.282636, -0.150625,
		0.108719, -0.726182, -0.678852,
		41.424168, 41.793461, 32.827969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651550, 42.160610, 33.995350>,  <41.348064, 42.301788, 33.303165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651550, 42.160610, 33.995350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650341, 41.784679, 34.132000>,  <41.649616, 41.559120, 34.213989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650341, 41.784679, 34.132000>,  <41.651550, 42.160610, 33.995350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650341, 41.784679, 34.132000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977634, -0.074622, -0.196632,
		0.210293, 0.333392, 0.919036,
		-0.003024, -0.939831, 0.341628,
		41.649433, 41.502731, 34.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096886, 42.263542, 33.412827>,  <41.651550, 42.160610, 33.995350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096886, 42.263542, 33.412827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495060, 42.258385, 33.375015>,  <42.733967, 42.255291, 33.352329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495060, 42.258385, 33.375015>,  <42.096886, 42.263542, 33.412827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495060, 42.258385, 33.375015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044796, 0.937983, 0.343775,
		0.084235, -0.346442, 0.934282,
		0.995439, -0.012895, -0.094530,
		42.793690, 42.254517, 33.346657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423206, 42.388840, 34.111919>,  <42.096886, 42.263542, 33.412827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423206, 42.388840, 34.111919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722668, 42.507042, 33.874535>,  <42.902344, 42.577965, 33.732105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722668, 42.507042, 33.874535>,  <42.423206, 42.388840, 34.111919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722668, 42.507042, 33.874535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000403, 0.895368, 0.445327,
		0.662964, -0.333155, 0.670437,
		0.748651, 0.295506, -0.593463,
		42.947262, 42.595695, 33.696495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832890, 42.866989, 34.470207>,  <42.423206, 42.388840, 34.111919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832890, 42.866989, 34.470207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922356, 42.946716, 34.088581>,  <42.976036, 42.994553, 33.859604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922356, 42.946716, 34.088581>,  <42.832890, 42.866989, 34.470207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922356, 42.946716, 34.088581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097096, 0.978553, 0.181675,
		0.969816, 0.052001, 0.238226,
		0.223670, 0.199323, -0.954066,
		42.989456, 43.006512, 33.802361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452927, 43.285271, 34.426857>,  <42.832890, 42.866989, 34.470207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452927, 43.285271, 34.426857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204811, 43.371475, 34.125183>,  <43.055943, 43.423199, 33.944180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204811, 43.371475, 34.125183>,  <43.452927, 43.285271, 34.426857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204811, 43.371475, 34.125183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129949, 0.976462, 0.172150,
		0.773531, 0.008778, -0.633698,
		-0.620293, 0.215511, -0.754183,
		43.018723, 43.436131, 33.898930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754715, 43.681492, 33.873276>,  <43.452927, 43.285271, 34.426857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754715, 43.681492, 33.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369072, 43.754295, 33.950607>,  <43.137688, 43.797977, 33.997005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369072, 43.754295, 33.950607>,  <43.754715, 43.681492, 33.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369072, 43.754295, 33.950607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236127, 0.920687, 0.310772,
		-0.121436, 0.345267, -0.930615,
		-0.964104, 0.182004, 0.193331,
		43.079842, 43.808895, 34.008606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474133, 43.459965, 33.536983>,  <43.754715, 43.681492, 33.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474133, 43.459965, 33.536983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850372, 43.533863, 33.650917>,  <45.076118, 43.578201, 33.719276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850372, 43.533863, 33.650917>,  <44.474133, 43.459965, 33.536983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850372, 43.533863, 33.650917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236680, -0.958322, -0.160002,
		0.243406, 0.217914, -0.945128,
		0.940604, 0.184748, 0.284837,
		45.132553, 43.589287, 33.736370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867451, 43.457565, 32.914120>,  <44.474133, 43.459965, 33.536983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867451, 43.457565, 32.914120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060852, 43.329098, 33.239838>,  <45.176891, 43.252018, 33.435268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060852, 43.329098, 33.239838>,  <44.867451, 43.457565, 32.914120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060852, 43.329098, 33.239838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300756, -0.812669, -0.499114,
		0.822052, 0.486227, -0.296334,
		0.483504, -0.321173, 0.814292,
		45.205902, 43.232746, 33.484127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544743, 43.227749, 32.685558>,  <44.867451, 43.457565, 32.914120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544743, 43.227749, 32.685558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391338, 43.059925, 33.014652>,  <45.299294, 42.959232, 33.212109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391338, 43.059925, 33.014652>,  <45.544743, 43.227749, 32.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391338, 43.059925, 33.014652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161540, -0.907591, -0.387534,
		0.909298, -0.015720, 0.415849,
		-0.383513, -0.419560, 0.822731,
		45.276283, 42.934055, 33.261471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030712, 42.780903, 32.775349>,  <45.544743, 43.227749, 32.685558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030712, 42.780903, 32.775349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709423, 42.663578, 32.982735>,  <45.516651, 42.593182, 33.107166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709423, 42.663578, 32.982735>,  <46.030712, 42.780903, 32.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709423, 42.663578, 32.982735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245582, -0.956016, -0.160385,
		0.542704, -0.001498, 0.839923,
		-0.803220, -0.293312, 0.518466,
		45.468456, 42.575584, 33.138275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237816, 42.349483, 33.361088>,  <46.030712, 42.780903, 32.775349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237816, 42.349483, 33.361088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869431, 42.261364, 33.232529>,  <45.648399, 42.208492, 33.155392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869431, 42.261364, 33.232529>,  <46.237816, 42.349483, 33.361088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869431, 42.261364, 33.232529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315513, -0.905632, -0.283342,
		-0.228649, -0.362353, 0.903560,
		-0.920962, -0.220299, -0.321399,
		45.593143, 42.195274, 33.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218815, 41.663647, 33.457382>,  <46.237816, 42.349483, 33.361088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218815, 41.663647, 33.457382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877987, 41.695751, 33.250484>,  <45.673492, 41.715015, 33.126347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877987, 41.695751, 33.250484>,  <46.218815, 41.663647, 33.457382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877987, 41.695751, 33.250484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091159, -0.950319, -0.297630,
		-0.515432, -0.300752, 0.802420,
		-0.852068, 0.080260, -0.517241,
		45.622368, 41.719830, 33.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984558, 41.059357, 33.655972>,  <46.218815, 41.663647, 33.457382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984558, 41.059357, 33.655972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791370, 41.162682, 33.321304>,  <45.675457, 41.224678, 33.120502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791370, 41.162682, 33.321304>,  <45.984558, 41.059357, 33.655972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791370, 41.162682, 33.321304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068180, -0.941502, -0.330040,
		-0.872978, -0.216444, 0.437106,
		-0.482971, 0.258315, -0.836667,
		45.646481, 41.240177, 33.070305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407696, 40.579842, 33.576992>,  <45.984558, 41.059357, 33.655972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407696, 40.579842, 33.576992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476265, 40.738201, 33.216129>,  <45.517406, 40.833218, 32.999611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476265, 40.738201, 33.216129>,  <45.407696, 40.579842, 33.576992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476265, 40.738201, 33.216129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028339, -0.913347, -0.406194,
		-0.984790, 0.095196, -0.145347,
		0.171421, 0.395897, -0.902153,
		45.527691, 40.856972, 32.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869659, 40.355286, 33.014870>,  <45.407696, 40.579842, 33.576992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869659, 40.355286, 33.014870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184208, 40.450630, 32.786903>,  <45.372936, 40.507839, 32.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184208, 40.450630, 32.786903>,  <44.869659, 40.355286, 33.014870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184208, 40.450630, 32.786903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063362, -0.948816, -0.309408,
		-0.614499, 0.207198, -0.761223,
		0.786369, 0.238364, -0.569918,
		45.420120, 40.522141, 32.615929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857727, 39.919350, 32.409145>,  <44.869659, 40.355286, 33.014870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857727, 39.919350, 32.409145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243267, 40.025902, 32.411625>,  <45.474590, 40.089832, 32.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243267, 40.025902, 32.411625>,  <44.857727, 39.919350, 32.409145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243267, 40.025902, 32.411625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261990, -0.943196, -0.204308,
		-0.048582, 0.198545, -0.978887,
		0.963847, 0.266385, 0.006195,
		45.532421, 40.105816, 32.413483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222221, 39.654156, 31.768524>,  <44.857727, 39.919350, 32.409145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222221, 39.654156, 31.768524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504360, 39.712360, 32.046032>,  <45.673645, 39.747284, 32.212536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504360, 39.712360, 32.046032>,  <45.222221, 39.654156, 31.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504360, 39.712360, 32.046032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317379, -0.939953, -0.125534,
		0.633843, 0.308732, -0.709174,
		0.705346, 0.145508, 0.693768,
		45.715965, 39.756012, 32.254162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731434, 39.256958, 31.613956>,  <45.222221, 39.654156, 31.768524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731434, 39.256958, 31.613956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878780, 39.348923, 31.974279>,  <45.967186, 39.404102, 32.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878780, 39.348923, 31.974279>,  <45.731434, 39.256958, 31.613956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878780, 39.348923, 31.974279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469150, -0.882487, 0.033385,
		0.802625, 0.410315, -0.432937,
		0.368363, 0.229908, 0.900806,
		45.989288, 39.417896, 32.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365364, 38.956093, 31.641645>,  <45.731434, 39.256958, 31.613956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365364, 38.956093, 31.641645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268124, 39.006577, 32.026348>,  <46.209778, 39.036865, 32.257168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268124, 39.006577, 32.026348>,  <46.365364, 38.956093, 31.641645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268124, 39.006577, 32.026348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440602, -0.868945, 0.225400,
		0.864159, 0.478547, 0.155638,
		-0.243105, 0.126207, 0.961755,
		46.195190, 39.044437, 32.314873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968082, 38.640980, 32.074787>,  <46.365364, 38.956093, 31.641645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968082, 38.640980, 32.074787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636761, 38.635715, 32.298836>,  <46.437969, 38.632557, 32.433266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636761, 38.635715, 32.298836>,  <46.968082, 38.640980, 32.074787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636761, 38.635715, 32.298836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196819, -0.942843, 0.268902,
		0.524568, 0.332976, 0.783553,
		-0.828306, -0.013161, 0.560122,
		46.388268, 38.631767, 32.466873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.071880, 38.553150, 32.743690>,  <46.968082, 38.640980, 32.074787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.071880, 38.553150, 32.743690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689083, 38.438519, 32.725643>,  <46.459404, 38.369740, 32.714813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689083, 38.438519, 32.725643>,  <47.071880, 38.553150, 32.743690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689083, 38.438519, 32.725643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246413, -0.885034, 0.394962,
		-0.153120, 0.366858, 0.917589,
		-0.956993, -0.286583, -0.045117,
		46.401985, 38.352543, 32.712109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.816677, 38.279922, 33.420021>,  <47.071880, 38.553150, 32.743690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.816677, 38.279922, 33.420021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575958, 38.119255, 33.143902>,  <46.431526, 38.022854, 32.978230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575958, 38.119255, 33.143902>,  <46.816677, 38.279922, 33.420021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575958, 38.119255, 33.143902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069617, -0.887419, 0.455676,
		-0.795612, 0.226166, 0.562005,
		-0.601793, -0.401667, -0.690296,
		46.395420, 37.998756, 32.936813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405182, 37.712051, 33.784344>,  <46.816677, 38.279922, 33.420021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405182, 37.712051, 33.784344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377670, 37.636608, 33.392487>,  <46.361164, 37.591343, 33.157372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377670, 37.636608, 33.392487>,  <46.405182, 37.712051, 33.784344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377670, 37.636608, 33.392487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029918, -0.981914, 0.186949,
		-0.997183, -0.016451, 0.073177,
		-0.068778, -0.188612, -0.979640,
		46.357037, 37.580025, 33.098595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928165, 37.136429, 33.786823>,  <46.405182, 37.712051, 33.784344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928165, 37.136429, 33.786823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074009, 37.110340, 33.415272>,  <46.161514, 37.094688, 33.192341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074009, 37.110340, 33.415272>,  <45.928165, 37.136429, 33.786823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074009, 37.110340, 33.415272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084100, -0.991161, 0.102602,
		-0.927356, -0.115528, -0.355899,
		0.364607, -0.065217, -0.928875,
		46.183392, 37.090775, 33.136608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525505, 36.552689, 33.417130>,  <45.928165, 37.136429, 33.786823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525505, 36.552689, 33.417130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890148, 36.609802, 33.262939>,  <46.108932, 36.644070, 33.170425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890148, 36.609802, 33.262939>,  <45.525505, 36.552689, 33.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890148, 36.609802, 33.262939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225903, -0.957452, 0.179591,
		-0.343429, -0.250795, -0.905074,
		0.911605, 0.142782, -0.385472,
		46.163631, 36.652637, 33.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718536, 35.923859, 33.025970>,  <45.525505, 36.552689, 33.417130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718536, 35.923859, 33.025970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067928, 36.114742, 33.064552>,  <46.277565, 36.229271, 33.087700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067928, 36.114742, 33.064552>,  <45.718536, 35.923859, 33.025970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067928, 36.114742, 33.064552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453646, -0.869680, 0.194582,
		0.176738, -0.126209, -0.976133,
		0.873481, 0.477209, 0.096452,
		46.329971, 36.257904, 33.093487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249084, 35.453434, 32.766464>,  <45.718536, 35.923859, 33.025970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249084, 35.453434, 32.766464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427006, 35.706890, 33.019650>,  <46.533760, 35.858963, 33.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.427006, 35.706890, 33.019650>,  <46.249084, 35.453434, 32.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427006, 35.706890, 33.019650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467958, -0.767012, 0.438985,
		0.763650, 0.100937, -0.637691,
		0.444807, 0.633643, 0.632963,
		46.560448, 35.896984, 33.209538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023762, 35.433285, 32.674713>,  <46.249084, 35.453434, 32.766464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023762, 35.433285, 32.674713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950951, 35.575428, 33.041447>,  <46.907265, 35.660713, 33.261486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950951, 35.575428, 33.041447>,  <47.023762, 35.433285, 32.674713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950951, 35.575428, 33.041447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543945, -0.740363, 0.394951,
		0.819140, 0.570599, -0.058530,
		-0.182025, 0.355357, 0.916836,
		46.896343, 35.682034, 33.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620377, 35.173157, 33.109303>,  <47.023762, 35.433285, 32.674713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620377, 35.173157, 33.109303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362682, 35.286793, 33.393345>,  <47.208065, 35.354977, 33.563770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362682, 35.286793, 33.393345>,  <47.620377, 35.173157, 33.109303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362682, 35.286793, 33.393345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395013, -0.671445, 0.626997,
		0.654922, 0.684436, 0.320350,
		-0.644238, 0.284092, 0.710106,
		47.169411, 35.372021, 33.606377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.134811, 35.334885, 33.759693>,  <47.620377, 35.173157, 33.109303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.134811, 35.334885, 33.759693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753403, 35.293903, 33.873039>,  <47.524559, 35.269314, 33.941048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753403, 35.293903, 33.873039>,  <48.134811, 35.334885, 33.759693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753403, 35.293903, 33.873039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301278, -0.308265, 0.902333,
		-0.005098, 0.945767, 0.324806,
		-0.953523, -0.102457, 0.283367,
		47.467346, 35.263165, 33.958050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.988194, 35.755333, 34.378765>,  <48.134811, 35.334885, 33.759693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.988194, 35.755333, 34.378765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779613, 35.416920, 34.334389>,  <47.654465, 35.213871, 34.307762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.779613, 35.416920, 34.334389>,  <47.988194, 35.755333, 34.378765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.779613, 35.416920, 34.334389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515876, -0.416149, 0.748793,
		-0.679676, 0.333227, 0.653453,
		-0.521452, -0.846037, -0.110943,
		47.623177, 35.163109, 34.301105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714169, 35.508770, 35.093952>,  <47.988194, 35.755333, 34.378765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714169, 35.508770, 35.093952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710991, 35.185009, 34.859070>,  <47.709084, 34.990753, 34.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710991, 35.185009, 34.859070>,  <47.714169, 35.508770, 35.093952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710991, 35.185009, 34.859070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386096, -0.544169, 0.744855,
		-0.922424, -0.220804, 0.316827,
		-0.007940, -0.809398, -0.587206,
		47.708611, 34.942188, 34.682907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.410652, 34.911766, 35.437843>,  <47.714169, 35.508770, 35.093952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.410652, 34.911766, 35.437843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633144, 34.748417, 35.148338>,  <47.766640, 34.650406, 34.974636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633144, 34.748417, 35.148338>,  <47.410652, 34.911766, 35.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633144, 34.748417, 35.148338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386171, -0.644165, 0.660245,
		-0.735852, -0.646746, -0.200602,
		0.556231, -0.408376, -0.723765,
		47.800014, 34.625904, 34.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.817348, 35.678230, 46.114513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430347, 35.736759, 46.032024>,  <35.198147, 35.771877, 45.982533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430347, 35.736759, 46.032024>,  <35.817348, 35.678230, 46.114513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430347, 35.736759, 46.032024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157020, -0.291579, -0.943571,
		-0.198199, -0.945289, 0.259128,
		-0.967503, 0.146326, -0.206220,
		35.140095, 35.780659, 45.970158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559284, 35.174587, 45.579762>,  <35.817348, 35.678230, 46.114513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559284, 35.174587, 45.579762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277061, 35.455814, 45.544231>,  <35.107727, 35.624550, 45.522915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277061, 35.455814, 45.544231>,  <35.559284, 35.174587, 45.579762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277061, 35.455814, 45.544231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012061, -0.137237, -0.990465,
		-0.708555, -0.697753, 0.105307,
		-0.705552, 0.703069, -0.088825,
		35.065395, 35.666737, 45.517586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013012, 34.901665, 45.099133>,  <35.559284, 35.174587, 45.579762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013012, 34.901665, 45.099133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992638, 35.300797, 45.115864>,  <34.980415, 35.540276, 45.125904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992638, 35.300797, 45.115864>,  <35.013012, 34.901665, 45.099133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992638, 35.300797, 45.115864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043943, 0.044082, -0.998061,
		-0.997735, -0.048996, -0.046093,
		-0.050933, 0.997826, 0.041830,
		34.977356, 35.600143, 45.128414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508961, 35.051205, 44.614983>,  <35.013012, 34.901665, 45.099133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508961, 35.051205, 44.614983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714081, 35.391117, 44.663841>,  <34.837151, 35.595062, 44.693157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714081, 35.391117, 44.663841>,  <34.508961, 35.051205, 44.614983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714081, 35.391117, 44.663841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102806, 0.202036, -0.973967,
		-0.852333, 0.486889, 0.190966,
		0.512796, 0.849777, 0.122147,
		34.867920, 35.646049, 44.700485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143181, 35.593864, 44.350121>,  <34.508961, 35.051205, 44.614983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143181, 35.593864, 44.350121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.516850, 35.736576, 44.347961>,  <34.741051, 35.822201, 44.346664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.516850, 35.736576, 44.347961>,  <34.143181, 35.593864, 44.350121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516850, 35.736576, 44.347961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085110, 0.208097, -0.974398,
		-0.346517, 0.910718, 0.224764,
		0.934175, 0.356775, -0.005403,
		34.797100, 35.843609, 44.346340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069031, 36.173519, 44.056683>,  <34.143181, 35.593864, 44.350121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069031, 36.173519, 44.056683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460060, 36.097015, 44.021442>,  <34.694679, 36.051113, 44.000298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460060, 36.097015, 44.021442>,  <34.069031, 36.173519, 44.056683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460060, 36.097015, 44.021442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021874, 0.323864, -0.945851,
		0.209437, 0.926570, 0.312418,
		0.977578, -0.191262, -0.088097,
		34.753334, 36.039639, 43.995014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396606, 36.745838, 43.663551>,  <34.069031, 36.173519, 44.056683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396606, 36.745838, 43.663551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693550, 36.479652, 43.632404>,  <34.871716, 36.319942, 43.613716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.693550, 36.479652, 43.632404>,  <34.396606, 36.745838, 43.663551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693550, 36.479652, 43.632404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186498, 0.316865, -0.929954,
		0.643521, 0.675840, 0.359335,
		0.742361, -0.665460, -0.077867,
		34.916260, 36.280014, 43.609043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922180, 37.103821, 43.361572>,  <34.396606, 36.745838, 43.663551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922180, 37.103821, 43.361572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001549, 36.715302, 43.309105>,  <35.049171, 36.482189, 43.277626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001549, 36.715302, 43.309105>,  <34.922180, 37.103821, 43.361572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001549, 36.715302, 43.309105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232439, 0.176646, -0.956435,
		0.952156, 0.159288, 0.260818,
		0.198421, -0.971300, -0.131170,
		35.061073, 36.423912, 43.269753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544712, 37.026287, 42.927826>,  <34.922180, 37.103821, 43.361572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544712, 37.026287, 42.927826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378242, 36.665966, 42.878254>,  <35.278358, 36.449776, 42.848511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378242, 36.665966, 42.878254>,  <35.544712, 37.026287, 42.927826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378242, 36.665966, 42.878254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207535, 0.038595, -0.977466,
		0.885284, -0.432517, 0.170885,
		-0.416175, -0.900799, -0.123930,
		35.253391, 36.395725, 42.841076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041485, 36.605026, 42.613953>,  <35.544712, 37.026287, 42.927826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041485, 36.605026, 42.613953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696350, 36.413979, 42.547749>,  <35.489269, 36.299351, 42.508026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696350, 36.413979, 42.547749>,  <36.041485, 36.605026, 42.613953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696350, 36.413979, 42.547749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308411, -0.238001, -0.920999,
		0.400497, -0.845715, 0.352659,
		-0.862835, -0.477621, -0.165509,
		35.437500, 36.270691, 42.498096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145737, 35.916821, 42.455807>,  <36.041485, 36.605026, 42.613953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145737, 35.916821, 42.455807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795681, 36.002827, 42.282413>,  <35.585648, 36.054432, 42.178379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.795681, 36.002827, 42.282413>,  <36.145737, 35.916821, 42.455807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795681, 36.002827, 42.282413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404275, -0.167374, -0.899193,
		-0.265896, -0.962161, 0.059548,
		-0.875134, 0.215018, -0.433482,
		35.533142, 36.067333, 42.152370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068905, 35.350208, 41.981636>,  <36.145737, 35.916821, 42.455807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068905, 35.350208, 41.981636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791702, 35.612801, 41.862457>,  <35.625381, 35.770355, 41.790951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.791702, 35.612801, 41.862457>,  <36.068905, 35.350208, 41.981636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791702, 35.612801, 41.862457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212310, -0.209117, -0.954565,
		-0.688956, -0.724782, 0.005544,
		-0.693011, 0.656476, -0.297951,
		35.583797, 35.809742, 41.773071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741684, 35.008568, 41.387909>,  <36.068905, 35.350208, 41.981636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741684, 35.008568, 41.387909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616810, 35.385067, 41.336372>,  <35.541885, 35.610966, 41.305450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616810, 35.385067, 41.336372>,  <35.741684, 35.008568, 41.387909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616810, 35.385067, 41.336372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096425, -0.103529, -0.989941,
		-0.945116, -0.321465, -0.058440,
		-0.312182, 0.941245, -0.128844,
		35.523155, 35.667442, 41.297718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139801, 34.971542, 40.874237>,  <35.741684, 35.008568, 41.387909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139801, 34.971542, 40.874237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330204, 35.323093, 40.861607>,  <35.444447, 35.534023, 40.854027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330204, 35.323093, 40.861607>,  <35.139801, 34.971542, 40.874237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330204, 35.323093, 40.861607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136106, -0.109094, -0.984669,
		-0.868844, 0.464414, -0.171550,
		0.476010, 0.878873, -0.031576,
		35.473007, 35.586754, 40.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897106, 35.300297, 40.345985>,  <35.139801, 34.971542, 40.874237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897106, 35.300297, 40.345985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219120, 35.532475, 40.394970>,  <35.412331, 35.671780, 40.424362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219120, 35.532475, 40.394970>,  <34.897106, 35.300297, 40.345985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219120, 35.532475, 40.394970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136328, 0.019894, -0.990464,
		-0.577344, 0.814058, -0.063115,
		0.805039, 0.580443, 0.122464,
		35.460632, 35.706608, 40.431709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903801, 35.693493, 39.716877>,  <34.897106, 35.300297, 40.345985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903801, 35.693493, 39.716877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278580, 35.717453, 39.854599>,  <35.503445, 35.731831, 39.937233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278580, 35.717453, 39.854599>,  <34.903801, 35.693493, 39.716877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278580, 35.717453, 39.854599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342859, 0.033281, -0.938797,
		-0.067695, 0.997649, 0.010644,
		0.936945, 0.059902, 0.344306,
		35.559662, 35.735424, 39.957890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204788, 36.139679, 39.311958>,  <34.903801, 35.693493, 39.716877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204788, 36.139679, 39.311958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512123, 35.940536, 39.472858>,  <35.696522, 35.821053, 39.569397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512123, 35.940536, 39.472858>,  <35.204788, 36.139679, 39.311958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512123, 35.940536, 39.472858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394141, -0.127145, -0.910213,
		0.504299, 0.857889, 0.098535,
		0.768333, -0.497856, 0.402248,
		35.742622, 35.791180, 39.593533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793102, 36.300045, 38.971664>,  <35.204788, 36.139679, 39.311958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793102, 36.300045, 38.971664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970119, 35.975967, 39.125416>,  <36.076328, 35.781521, 39.217667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970119, 35.975967, 39.125416>,  <35.793102, 36.300045, 38.971664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970119, 35.975967, 39.125416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390547, -0.211722, -0.895906,
		0.807237, 0.546593, 0.222723,
		0.442540, -0.810192, 0.384380,
		36.102882, 35.732910, 39.240730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429752, 36.263031, 38.669197>,  <35.793102, 36.300045, 38.971664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429752, 36.263031, 38.669197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342037, 35.886204, 38.770725>,  <36.289410, 35.660107, 38.831642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342037, 35.886204, 38.770725>,  <36.429752, 36.263031, 38.669197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342037, 35.886204, 38.770725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337090, -0.317284, -0.886398,
		0.915578, -0.108816, 0.387138,
		-0.219287, -0.942067, 0.253817,
		36.276253, 35.603584, 38.846870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924240, 35.891151, 38.413219>,  <36.429752, 36.263031, 38.669197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924240, 35.891151, 38.413219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647129, 35.608700, 38.471783>,  <36.480862, 35.439228, 38.506920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.647129, 35.608700, 38.471783>,  <36.924240, 35.891151, 38.413219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647129, 35.608700, 38.471783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350249, -0.506932, -0.787620,
		0.630385, -0.494366, 0.598513,
		-0.692778, -0.706132, 0.146411,
		36.439297, 35.396858, 38.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202579, 35.388256, 38.142494>,  <36.924240, 35.891151, 38.413219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202579, 35.388256, 38.142494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820469, 35.270199, 38.135162>,  <36.591202, 35.199364, 38.130764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820469, 35.270199, 38.135162>,  <37.202579, 35.388256, 38.142494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820469, 35.270199, 38.135162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152869, -0.439806, -0.884987,
		0.253137, -0.848210, 0.465255,
		-0.955276, -0.295146, -0.018334,
		36.533886, 35.181656, 38.129662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711472, 35.617714, 37.540260>,  <37.202579, 35.388256, 38.142494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711472, 35.617714, 37.540260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038689, 35.387875, 37.530109>,  <38.235020, 35.249969, 37.524021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038689, 35.387875, 37.530109>,  <37.711472, 35.617714, 37.540260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038689, 35.387875, 37.530109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146684, 0.165766, 0.975195,
		-0.556140, -0.801472, 0.219888,
		0.818041, -0.574600, -0.025374,
		38.284100, 35.215496, 37.522499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730400, 34.887135, 38.007736>,  <37.711472, 35.617714, 37.540260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730400, 34.887135, 38.007736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109295, 34.999458, 37.945915>,  <38.336632, 35.066853, 37.908821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109295, 34.999458, 37.945915>,  <37.730400, 34.887135, 38.007736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109295, 34.999458, 37.945915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250103, -0.345934, 0.904311,
		0.200473, -0.895252, -0.397913,
		0.947237, 0.280809, -0.154554,
		38.393467, 35.083702, 37.899548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167187, 34.288311, 38.022263>,  <37.730400, 34.887135, 38.007736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167187, 34.288311, 38.022263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377689, 34.613575, 38.121723>,  <38.503990, 34.808731, 38.181400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377689, 34.613575, 38.121723>,  <38.167187, 34.288311, 38.022263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377689, 34.613575, 38.121723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242059, -0.423582, 0.872918,
		0.815146, -0.399189, -0.419745,
		0.526256, 0.813158, 0.248654,
		38.535564, 34.857521, 38.196320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688553, 34.114777, 38.460407>,  <38.167187, 34.288311, 38.022263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688553, 34.114777, 38.460407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669380, 34.507500, 38.533894>,  <38.657875, 34.743134, 38.577988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.669380, 34.507500, 38.533894>,  <38.688553, 34.114777, 38.460407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669380, 34.507500, 38.533894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014460, -0.183229, 0.982964,
		0.998746, 0.049773, -0.005414,
		-0.047933, 0.981810, 0.183719,
		38.654999, 34.802044, 38.589008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739452, 34.083019, 39.126377>,  <38.688553, 34.114777, 38.460407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739452, 34.083019, 39.126377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655563, 34.469746, 39.068027>,  <38.605232, 34.701782, 39.033020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655563, 34.469746, 39.068027>,  <38.739452, 34.083019, 39.126377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655563, 34.469746, 39.068027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146314, 0.116476, 0.982357,
		0.966752, 0.227361, 0.117032,
		-0.209718, 0.966819, -0.145870,
		38.592648, 34.759792, 39.024265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195000, 34.410862, 39.537540>,  <38.739452, 34.083019, 39.126377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195000, 34.410862, 39.537540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899334, 34.671177, 39.468121>,  <38.721935, 34.827366, 39.426468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899334, 34.671177, 39.468121>,  <39.195000, 34.410862, 39.537540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899334, 34.671177, 39.468121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282635, -0.065816, 0.956967,
		0.611359, 0.756402, 0.232583,
		-0.739160, 0.650787, -0.173548,
		38.677586, 34.866413, 39.416058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431755, 35.021942, 39.929470>,  <39.195000, 34.410862, 39.537540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431755, 35.021942, 39.929470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039307, 35.067974, 39.867294>,  <38.803837, 35.095592, 39.829990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039307, 35.067974, 39.867294>,  <39.431755, 35.021942, 39.929470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039307, 35.067974, 39.867294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138319, 0.144217, 0.979831,
		0.135178, 0.982832, -0.125576,
		-0.981119, 0.115082, -0.155439,
		38.744972, 35.102497, 39.820663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217247, 35.566193, 40.323265>,  <39.431755, 35.021942, 39.929470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217247, 35.566193, 40.323265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.881512, 35.350670, 40.294426>,  <38.680069, 35.221355, 40.277122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.881512, 35.350670, 40.294426>,  <39.217247, 35.566193, 40.323265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881512, 35.350670, 40.294426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103894, 0.028820, 0.994171,
		-0.533590, 0.841935, -0.080169,
		-0.839338, -0.538809, -0.072094,
		38.629711, 35.189026, 40.272797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719528, 35.955002, 40.783413>,  <39.217247, 35.566193, 40.323265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719528, 35.955002, 40.783413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570980, 35.587273, 40.731354>,  <38.481853, 35.366634, 40.700119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570980, 35.587273, 40.731354>,  <38.719528, 35.955002, 40.783413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570980, 35.587273, 40.731354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170826, -0.070125, 0.982802,
		-0.912636, 0.387214, -0.131002,
		-0.371368, -0.919319, -0.130145,
		38.459568, 35.311478, 40.692310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073254, 35.882446, 41.032978>,  <38.719528, 35.955002, 40.783413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073254, 35.882446, 41.032978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165905, 35.493767, 41.051483>,  <38.221497, 35.260559, 41.062588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165905, 35.493767, 41.051483>,  <38.073254, 35.882446, 41.032978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165905, 35.493767, 41.051483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506721, -0.079921, 0.858398,
		-0.830410, -0.222277, -0.510894,
		0.231633, -0.971703, 0.046265,
		38.235394, 35.202255, 41.065361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532990, 35.576889, 41.400330>,  <38.073254, 35.882446, 41.032978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532990, 35.576889, 41.400330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805214, 35.285023, 41.426949>,  <37.968548, 35.109901, 41.442921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805214, 35.285023, 41.426949>,  <37.532990, 35.576889, 41.400330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805214, 35.285023, 41.426949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271534, -0.166811, 0.947862,
		-0.680522, -0.663145, -0.311654,
		0.680557, -0.729666, 0.066547,
		38.009380, 35.066124, 41.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219982, 35.053558, 41.690552>,  <37.532990, 35.576889, 41.400330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219982, 35.053558, 41.690552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608463, 35.000763, 41.769894>,  <37.841553, 34.969086, 41.817497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608463, 35.000763, 41.769894>,  <37.219982, 35.053558, 41.690552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608463, 35.000763, 41.769894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194855, 0.039029, 0.980055,
		-0.137095, -0.990483, 0.012187,
		0.971204, -0.131986, 0.198351,
		37.899826, 34.961166, 41.829399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356792, 34.376316, 42.175877>,  <37.219982, 35.053558, 41.690552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356792, 34.376316, 42.175877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628395, 34.669338, 42.195118>,  <37.791355, 34.845150, 42.206661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628395, 34.669338, 42.195118>,  <37.356792, 34.376316, 42.175877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628395, 34.669338, 42.195118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062991, -0.123418, 0.990353,
		0.731426, -0.669425, -0.129946,
		0.679005, 0.732556, 0.048103,
		37.832096, 34.889107, 42.209549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952194, 34.228764, 42.725170>,  <37.356792, 34.376316, 42.175877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952194, 34.228764, 42.725170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906803, 34.625278, 42.698444>,  <37.879570, 34.863190, 42.682411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906803, 34.625278, 42.698444>,  <37.952194, 34.228764, 42.725170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906803, 34.625278, 42.698444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211078, 0.089764, 0.973339,
		0.970860, 0.096351, -0.219426,
		-0.113479, 0.991292, -0.066811,
		37.872761, 34.922665, 42.678402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519161, 34.567532, 42.987675>,  <37.952194, 34.228764, 42.725170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519161, 34.567532, 42.987675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223900, 34.836040, 43.014584>,  <38.046741, 34.997147, 43.030731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223900, 34.836040, 43.014584>,  <38.519161, 34.567532, 42.987675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223900, 34.836040, 43.014584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198997, 0.121364, 0.972456,
		0.644614, 0.731211, -0.223165,
		-0.738155, 0.671268, 0.067276,
		38.002453, 35.037422, 43.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726379, 35.195885, 43.300114>,  <38.519161, 34.567532, 42.987675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726379, 35.195885, 43.300114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333241, 35.210361, 43.372456>,  <38.097359, 35.219048, 43.415863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333241, 35.210361, 43.372456>,  <38.726379, 35.195885, 43.300114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333241, 35.210361, 43.372456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184401, 0.171878, 0.967705,
		0.003939, 0.984453, -0.175603,
		-0.982843, 0.036193, 0.180857,
		38.038387, 35.221218, 43.426712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690502, 35.534924, 43.904579>,  <38.726379, 35.195885, 43.300114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690502, 35.534924, 43.904579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307579, 35.427113, 43.862778>,  <38.077827, 35.362427, 43.837696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307579, 35.427113, 43.862778>,  <38.690502, 35.534924, 43.904579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307579, 35.427113, 43.862778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122617, 0.051204, 0.991132,
		-0.261787, 0.961630, -0.082067,
		-0.957305, -0.269529, -0.104508,
		38.020386, 35.346252, 43.831425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370975, 35.946949, 44.369698>,  <38.690502, 35.534924, 43.904579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370975, 35.946949, 44.369698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135612, 35.627819, 44.317146>,  <37.994396, 35.436340, 44.285618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135612, 35.627819, 44.317146>,  <38.370975, 35.946949, 44.369698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135612, 35.627819, 44.317146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126916, -0.069334, 0.989487,
		-0.798544, 0.598893, -0.060460,
		-0.588405, -0.797822, -0.131376,
		37.959091, 35.388474, 44.277733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934109, 36.106739, 44.788769>,  <38.370975, 35.946949, 44.369698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934109, 36.106739, 44.788769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839775, 35.726742, 44.706890>,  <37.783176, 35.498745, 44.657764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839775, 35.726742, 44.706890>,  <37.934109, 36.106739, 44.788769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839775, 35.726742, 44.706890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237929, -0.147779, 0.959975,
		-0.942217, 0.275096, -0.191180,
		-0.235833, -0.949992, -0.204693,
		37.769024, 35.441746, 44.645481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.218109, 36.056328, 45.051346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347916, 35.678822, 45.026081>,  <37.425800, 35.452316, 45.010921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347916, 35.678822, 45.026081>,  <37.218109, 36.056328, 45.051346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347916, 35.678822, 45.026081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365591, -0.186732, 0.911852,
		-0.872372, -0.272820, -0.405631,
		0.324516, -0.943769, -0.063159,
		37.445271, 35.395691, 45.007133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750355, 35.700634, 45.340897>,  <37.218109, 36.056328, 45.051346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750355, 35.700634, 45.340897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028473, 35.413673, 45.358379>,  <37.195343, 35.241497, 45.368870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.028473, 35.413673, 45.358379>,  <36.750355, 35.700634, 45.340897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028473, 35.413673, 45.358379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384105, -0.319491, 0.866250,
		-0.607481, -0.619085, -0.497696,
		0.695291, -0.717398, 0.043709,
		37.237061, 35.198456, 45.371490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396999, 35.107666, 45.541668>,  <36.750355, 35.700634, 45.340897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396999, 35.107666, 45.541668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781601, 35.047256, 45.633495>,  <37.012363, 35.011009, 45.688591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781601, 35.047256, 45.633495>,  <36.396999, 35.107666, 45.541668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781601, 35.047256, 45.633495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268071, -0.331910, 0.904419,
		-0.060396, -0.931143, -0.359619,
		0.961504, -0.151026, 0.229566,
		37.070053, 35.001949, 45.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436897, 34.541496, 45.939663>,  <36.396999, 35.107666, 45.541668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436897, 34.541496, 45.939663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794491, 34.682392, 46.050453>,  <37.009048, 34.766930, 46.116928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794491, 34.682392, 46.050453>,  <36.436897, 34.541496, 45.939663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794491, 34.682392, 46.050453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173977, -0.296785, 0.938963,
		0.412944, -0.887606, -0.204039,
		0.893985, 0.352241, 0.276978,
		37.062687, 34.788063, 46.133545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701767, 34.072739, 46.413574>,  <36.436897, 34.541496, 45.939663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701767, 34.072739, 46.413574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902233, 34.412235, 46.481079>,  <37.022511, 34.615932, 46.521580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902233, 34.412235, 46.481079>,  <36.701767, 34.072739, 46.413574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902233, 34.412235, 46.481079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297132, -0.014385, 0.954728,
		0.812742, -0.528617, 0.244978,
		0.501161, 0.848739, 0.168760,
		37.052582, 34.666859, 46.531708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146313, 34.029778, 46.960907>,  <36.701767, 34.072739, 46.413574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146313, 34.029778, 46.960907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.106602, 34.427692, 46.970226>,  <37.082775, 34.666443, 46.975819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.106602, 34.427692, 46.970226>,  <37.146313, 34.029778, 46.960907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106602, 34.427692, 46.970226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320444, -0.054128, 0.945720,
		0.942051, 0.086423, 0.324147,
		-0.099278, 0.994787, 0.023298,
		37.076820, 34.726128, 46.977215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355762, 34.251720, 47.625641>,  <37.146313, 34.029778, 46.960907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355762, 34.251720, 47.625641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203850, 34.600758, 47.502781>,  <37.112701, 34.810181, 47.429066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203850, 34.600758, 47.502781>,  <37.355762, 34.251720, 47.625641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203850, 34.600758, 47.502781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281301, 0.207373, 0.936945,
		0.881268, 0.442239, 0.166705,
		-0.379783, 0.872594, -0.307154,
		37.089916, 34.862537, 47.410633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686089, 34.846024, 47.961639>,  <37.355762, 34.251720, 47.625641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686089, 34.846024, 47.961639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317375, 34.961594, 47.858231>,  <37.096146, 35.030933, 47.796185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317375, 34.961594, 47.858231>,  <37.686089, 34.846024, 47.961639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317375, 34.961594, 47.858231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225298, 0.143473, 0.963668,
		0.315516, 0.946541, -0.067158,
		-0.921786, 0.288923, -0.258522,
		37.040840, 35.048271, 47.780674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603714, 35.472401, 48.181774>,  <37.686089, 34.846024, 47.961639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603714, 35.472401, 48.181774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219765, 35.365288, 48.148479>,  <36.989395, 35.301022, 48.128502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219765, 35.365288, 48.148479>,  <37.603714, 35.472401, 48.181774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219765, 35.365288, 48.148479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167828, 0.310797, 0.935542,
		-0.224654, 0.911974, -0.343269,
		-0.959877, -0.267783, -0.083233,
		36.931801, 35.284954, 48.123508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309811, 35.990841, 48.646595>,  <37.603714, 35.472401, 48.181774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309811, 35.990841, 48.646595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051067, 35.690170, 48.595131>,  <36.895821, 35.509769, 48.564255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051067, 35.690170, 48.595131>,  <37.309811, 35.990841, 48.646595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051067, 35.690170, 48.595131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215734, 0.018553, 0.976276,
		-0.731457, 0.659270, -0.174163,
		-0.646861, -0.751677, -0.128656,
		36.857010, 35.464668, 48.556534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635426, 36.114609, 48.963913>,  <37.309811, 35.990841, 48.646595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635426, 36.114609, 48.963913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669861, 35.716133, 48.958191>,  <36.690521, 35.477047, 48.954758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669861, 35.716133, 48.958191>,  <36.635426, 36.114609, 48.963913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669861, 35.716133, 48.958191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183813, -0.029994, 0.982503,
		-0.979184, -0.081948, -0.185694,
		0.086084, -0.996185, -0.014307,
		36.695686, 35.417278, 48.953899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071426, 35.845028, 49.340466>,  <36.635426, 36.114609, 48.963913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071426, 35.845028, 49.340466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343983, 35.553181, 49.363701>,  <36.507515, 35.378075, 49.377644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343983, 35.553181, 49.363701>,  <36.071426, 35.845028, 49.340466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343983, 35.553181, 49.363701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255688, -0.162920, 0.952933,
		-0.685811, -0.664168, -0.297565,
		0.681386, -0.729615, 0.058088,
		36.548397, 35.334297, 49.381126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876671, 35.663811, 49.973988>,  <36.071426, 35.845028, 49.340466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876671, 35.663811, 49.973988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186554, 35.430397, 49.876564>,  <36.372482, 35.290348, 49.818108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186554, 35.430397, 49.876564>,  <35.876671, 35.663811, 49.973988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186554, 35.430397, 49.876564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074096, -0.466308, 0.881514,
		-0.627969, -0.664864, -0.404488,
		0.774703, -0.583534, -0.243563,
		36.418964, 35.255337, 49.803493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616009, 35.016937, 50.140762>,  <35.876671, 35.663811, 49.973988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616009, 35.016937, 50.140762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015839, 35.010139, 50.131298>,  <36.255737, 35.006062, 50.125618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015839, 35.010139, 50.131298>,  <35.616009, 35.016937, 50.140762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015839, 35.010139, 50.131298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016721, -0.330379, 0.943700,
		-0.023850, -0.943696, -0.329954,
		0.999576, -0.016990, -0.023659,
		36.315712, 35.005043, 50.124199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860287, 34.341442, 50.408875>,  <35.616009, 35.016937, 50.140762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860287, 34.341442, 50.408875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169689, 34.588814, 50.464340>,  <36.355331, 34.737236, 50.497620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169689, 34.588814, 50.464340>,  <35.860287, 34.341442, 50.408875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169689, 34.588814, 50.464340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003474, -0.214645, 0.976686,
		0.633777, -0.755956, -0.163881,
		0.773508, 0.618432, 0.138663,
		36.401741, 34.774342, 50.505939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345581, 33.952248, 50.863907>,  <35.860287, 34.341442, 50.408875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345581, 33.952248, 50.863907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489101, 34.324661, 50.890568>,  <36.575214, 34.548107, 50.906563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489101, 34.324661, 50.890568>,  <36.345581, 33.952248, 50.863907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489101, 34.324661, 50.890568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140850, -0.124595, 0.982159,
		0.922725, -0.343013, -0.175841,
		0.358803, 0.931030, 0.066653,
		36.596741, 34.603970, 50.910564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960293, 33.826839, 51.200150>,  <36.345581, 33.952248, 50.863907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960293, 33.826839, 51.200150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829639, 34.201775, 51.248657>,  <36.751247, 34.426735, 51.277763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829639, 34.201775, 51.248657>,  <36.960293, 33.826839, 51.200150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829639, 34.201775, 51.248657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044125, -0.113047, 0.992609,
		0.944120, 0.329573, -0.004435,
		-0.326636, 0.937338, 0.121272,
		36.731647, 34.482975, 51.285038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296852, 34.082844, 51.774220>,  <36.960293, 33.826839, 51.200150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296852, 34.082844, 51.774220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975014, 34.315681, 51.727242>,  <36.781910, 34.455383, 51.699055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975014, 34.315681, 51.727242>,  <37.296852, 34.082844, 51.774220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975014, 34.315681, 51.727242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164575, -0.028552, 0.985951,
		0.570559, 0.812623, 0.118770,
		-0.804598, 0.582090, -0.117447,
		36.733635, 34.490307, 51.692009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371475, 34.507523, 52.344112>,  <37.296852, 34.082844, 51.774220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371475, 34.507523, 52.344112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991470, 34.507065, 52.219223>,  <36.763470, 34.506790, 52.144287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991470, 34.507065, 52.219223>,  <37.371475, 34.507523, 52.344112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991470, 34.507065, 52.219223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311831, -0.046922, 0.948978,
		-0.015734, 0.998898, 0.044221,
		-0.950007, -0.001141, -0.312225,
		36.706467, 34.506721, 52.125557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033806, 34.962776, 52.737427>,  <37.371475, 34.507523, 52.344112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033806, 34.962776, 52.737427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726505, 34.758881, 52.582531>,  <36.542126, 34.636543, 52.489594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726505, 34.758881, 52.582531>,  <37.033806, 34.962776, 52.737427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726505, 34.758881, 52.582531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361248, -0.154177, 0.919635,
		-0.528474, 0.846404, -0.065694,
		-0.768254, -0.509735, -0.387240,
		36.496029, 34.605961, 52.466358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331200, 35.269260, 52.962074>,  <37.033806, 34.962776, 52.737427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331200, 35.269260, 52.962074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248550, 34.898170, 52.837734>,  <36.198959, 34.675518, 52.763130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248550, 34.898170, 52.837734>,  <36.331200, 35.269260, 52.962074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248550, 34.898170, 52.837734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664597, -0.100089, 0.740468,
		-0.718065, 0.359593, -0.595882,
		-0.206626, -0.927726, -0.310855,
		36.186562, 34.619854, 52.744476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644798, 35.184193, 53.190922>,  <36.331200, 35.269260, 52.962074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644798, 35.184193, 53.190922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767208, 34.810001, 53.120243>,  <35.840656, 34.585487, 53.077835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.767208, 34.810001, 53.120243>,  <35.644798, 35.184193, 53.190922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767208, 34.810001, 53.120243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678044, -0.344459, 0.649311,
		-0.668283, -0.078897, -0.739711,
		0.306029, -0.935480, -0.176701,
		35.859016, 34.529358, 53.067234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097164, 34.701591, 53.018269>,  <35.644798, 35.184193, 53.190922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097164, 34.701591, 53.018269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397133, 34.482967, 53.167343>,  <35.577114, 34.351791, 53.256786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397133, 34.482967, 53.167343>,  <35.097164, 34.701591, 53.018269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397133, 34.482967, 53.167343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592317, -0.303879, 0.746203,
		-0.294565, -0.780360, -0.551607,
		0.749928, -0.546531, 0.372708,
		35.622108, 34.319000, 53.279148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766964, 34.041813, 53.164616>,  <35.097164, 34.701591, 53.018269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766964, 34.041813, 53.164616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067314, 34.062000, 53.428020>,  <35.247524, 34.074112, 53.586063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067314, 34.062000, 53.428020>,  <34.766964, 34.041813, 53.164616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067314, 34.062000, 53.428020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543721, -0.518748, 0.659749,
		0.374898, -0.853436, -0.362075,
		0.750879, 0.050471, 0.658509,
		35.292580, 34.077141, 53.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339058, 34.237404, 53.771473>,  <34.766964, 34.041813, 53.164616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339058, 34.237404, 53.771473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951038, 34.332603, 53.790874>,  <33.718227, 34.389725, 53.802513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951038, 34.332603, 53.790874>,  <34.339058, 34.237404, 53.771473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951038, 34.332603, 53.790874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066914, -0.069902, -0.995307,
		-0.233495, -0.968746, 0.083734,
		-0.970053, 0.238002, 0.048501,
		33.660023, 34.404003, 53.805424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999699, 33.770260, 53.425663>,  <34.339058, 34.237404, 53.771473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999699, 33.770260, 53.425663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762108, 34.092052, 53.425282>,  <33.619553, 34.285130, 53.425053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762108, 34.092052, 53.425282>,  <33.999699, 33.770260, 53.425663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762108, 34.092052, 53.425282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037683, 0.026644, -0.998934,
		-0.803600, -0.593379, -0.046141,
		-0.593976, 0.804482, -0.000949,
		33.583916, 34.333397, 53.424995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529732, 33.667126, 52.843803>,  <33.999699, 33.770260, 53.425663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529732, 33.667126, 52.843803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487247, 34.053215, 52.939362>,  <33.461758, 34.284866, 52.996696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.487247, 34.053215, 52.939362>,  <33.529732, 33.667126, 52.843803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487247, 34.053215, 52.939362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031062, 0.236917, -0.971033,
		-0.993859, -0.110552, 0.004819,
		-0.106208, 0.965219, 0.238896,
		33.455383, 34.342781, 53.011032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947983, 33.892338, 52.565598>,  <33.529732, 33.667126, 52.843803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947983, 33.892338, 52.565598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206875, 34.194275, 52.608128>,  <33.362209, 34.375439, 52.633644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206875, 34.194275, 52.608128>,  <32.947983, 33.892338, 52.565598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206875, 34.194275, 52.608128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044620, 0.176755, -0.983243,
		-0.760989, 0.631639, 0.148082,
		0.647229, 0.754844, 0.106325,
		33.401043, 34.420727, 52.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632217, 34.288940, 52.031227>,  <32.947983, 33.892338, 52.565598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632217, 34.288940, 52.031227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006805, 34.414165, 52.094490>,  <33.231560, 34.489300, 52.132446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006805, 34.414165, 52.094490>,  <32.632217, 34.288940, 52.031227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006805, 34.414165, 52.094490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042508, 0.346289, -0.937164,
		-0.348163, 0.884349, 0.310981,
		0.936470, 0.313067, 0.158157,
		33.287746, 34.508087, 52.141937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622391, 34.923630, 51.682922>,  <32.632217, 34.288940, 52.031227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622391, 34.923630, 51.682922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009865, 34.843269, 51.741291>,  <33.242348, 34.795055, 51.776314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009865, 34.843269, 51.741291>,  <32.622391, 34.923630, 51.682922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009865, 34.843269, 51.741291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206555, 0.325815, -0.922594,
		0.137804, 0.923842, 0.357108,
		0.968682, -0.200899, 0.145925,
		33.300468, 34.783001, 51.785069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961018, 35.470703, 51.358078>,  <32.622391, 34.923630, 51.682922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961018, 35.470703, 51.358078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232677, 35.177528, 51.373852>,  <33.395672, 35.001621, 51.383316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232677, 35.177528, 51.373852>,  <32.961018, 35.470703, 51.358078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232677, 35.177528, 51.373852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257256, 0.187373, -0.948003,
		0.687442, 0.653979, 0.315808,
		0.679149, -0.732941, 0.039432,
		33.436420, 34.957645, 51.385681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655518, 35.753174, 51.189449>,  <32.961018, 35.470703, 51.358078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655518, 35.753174, 51.189449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644131, 35.360832, 51.112396>,  <33.637299, 35.125427, 51.066166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644131, 35.360832, 51.112396>,  <33.655518, 35.753174, 51.189449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644131, 35.360832, 51.112396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163262, 0.185559, -0.968975,
		0.986172, -0.059031, 0.154855,
		-0.028465, -0.980858, -0.192631,
		33.635590, 35.066574, 51.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204144, 35.694004, 50.665821>,  <33.655518, 35.753174, 51.189449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204144, 35.694004, 50.665821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000099, 35.351864, 50.629692>,  <33.877670, 35.146580, 50.608013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000099, 35.351864, 50.629692>,  <34.204144, 35.694004, 50.665821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000099, 35.351864, 50.629692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190832, -0.010158, -0.981570,
		0.838669, -0.517950, 0.168410,
		-0.510115, -0.855350, -0.090322,
		33.847065, 35.095257, 50.602596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652851, 35.210331, 50.301483>,  <34.204144, 35.694004, 50.665821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652851, 35.210331, 50.301483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272270, 35.089729, 50.276695>,  <34.043922, 35.017368, 50.261822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.272270, 35.089729, 50.276695>,  <34.652851, 35.210331, 50.301483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272270, 35.089729, 50.276695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061554, 0.010895, -0.998044,
		0.301591, -0.953402, 0.008193,
		-0.951448, -0.301506, -0.061971,
		33.986835, 34.999279, 50.258102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710247, 34.676636, 49.913654>,  <34.652851, 35.210331, 50.301483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710247, 34.676636, 49.913654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338112, 34.816715, 49.870144>,  <34.114830, 34.900764, 49.844036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338112, 34.816715, 49.870144>,  <34.710247, 34.676636, 49.913654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338112, 34.816715, 49.870144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075339, -0.107776, -0.991316,
		-0.358884, -0.930453, 0.073884,
		-0.930337, 0.350201, -0.108779,
		34.059010, 34.921776, 49.837509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350918, 34.243622, 49.410900>,  <34.710247, 34.676636, 49.913654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350918, 34.243622, 49.410900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124062, 34.572781, 49.424725>,  <33.987949, 34.770275, 49.433018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124062, 34.572781, 49.424725>,  <34.350918, 34.243622, 49.410900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124062, 34.572781, 49.424725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137302, 0.135834, -0.981171,
		-0.812098, -0.551715, -0.190022,
		-0.567138, 0.822897, 0.034560,
		33.953918, 34.819649, 49.435093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972519, 34.164639, 48.855785>,  <34.350918, 34.243622, 49.410900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972519, 34.164639, 48.855785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945724, 34.557789, 48.924446>,  <33.929646, 34.793678, 48.965641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.945724, 34.557789, 48.924446>,  <33.972519, 34.164639, 48.855785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945724, 34.557789, 48.924446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089160, 0.177247, -0.980119,
		-0.993762, -0.050352, -0.099506,
		-0.066988, 0.982877, 0.171652,
		33.925629, 34.852654, 48.975941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553902, 34.460773, 48.309685>,  <33.972519, 34.164639, 48.855785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553902, 34.460773, 48.309685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781170, 34.765831, 48.433331>,  <33.917530, 34.948868, 48.507519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781170, 34.765831, 48.433331>,  <33.553902, 34.460773, 48.309685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781170, 34.765831, 48.433331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172686, 0.256777, -0.950918,
		-0.804590, 0.593661, 0.014193,
		0.568167, 0.762648, 0.309117,
		33.951618, 34.994625, 48.526066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490562, 34.963379, 47.811653>,  <33.553902, 34.460773, 48.309685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490562, 34.963379, 47.811653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804886, 35.134045, 47.990746>,  <33.993481, 35.236443, 48.098202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804886, 35.134045, 47.990746>,  <33.490562, 34.963379, 47.811653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804886, 35.134045, 47.990746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193209, 0.518348, -0.833058,
		-0.587518, 0.741128, 0.324886,
		0.785807, 0.426666, 0.447732,
		34.040627, 35.262043, 48.125065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366787, 35.678753, 47.682110>,  <33.490562, 34.963379, 47.811653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366787, 35.678753, 47.682110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751175, 35.608173, 47.767338>,  <33.981808, 35.565826, 47.818474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751175, 35.608173, 47.767338>,  <33.366787, 35.678753, 47.682110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751175, 35.608173, 47.767338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264324, 0.358297, -0.895408,
		0.081649, 0.916782, 0.390953,
		0.960972, -0.176448, 0.213073,
		34.039467, 35.555241, 47.831261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695366, 36.271080, 47.437073>,  <33.366787, 35.678753, 47.682110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695366, 36.271080, 47.437073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970619, 35.980850, 47.438717>,  <34.135769, 35.806713, 47.439705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970619, 35.980850, 47.438717>,  <33.695366, 36.271080, 47.437073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970619, 35.980850, 47.438717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337187, 0.314758, -0.887261,
		0.642481, 0.611937, 0.461249,
		0.688130, -0.725576, 0.004111,
		34.177059, 35.763176, 47.439949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218082, 36.655331, 47.346886>,  <33.695366, 36.271080, 47.437073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218082, 36.655331, 47.346886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322678, 36.286560, 47.232571>,  <34.385437, 36.065296, 47.163982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322678, 36.286560, 47.232571>,  <34.218082, 36.655331, 47.346886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322678, 36.286560, 47.232571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360354, 0.367928, -0.857190,
		0.895415, 0.121163, 0.428429,
		0.261490, -0.921927, -0.285786,
		34.401123, 36.009983, 47.146835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943714, 36.732391, 46.846439>,  <34.218082, 36.655331, 47.346886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943714, 36.732391, 46.846439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794315, 36.368137, 46.775730>,  <34.704674, 36.149586, 46.733307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794315, 36.368137, 46.775730>,  <34.943714, 36.732391, 46.846439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794315, 36.368137, 46.775730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510789, -0.042824, -0.858639,
		0.774334, -0.410993, 0.481136,
		-0.373499, -0.910632, -0.176771,
		34.682266, 36.094948, 46.722698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577847, 36.395039, 46.558643>,  <34.943714, 36.732391, 46.846439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577847, 36.395039, 46.558643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251579, 36.188347, 46.454575>,  <35.055820, 36.064331, 46.392136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251579, 36.188347, 46.454575>,  <35.577847, 36.395039, 46.558643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251579, 36.188347, 46.454575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362549, -0.106103, -0.925905,
		0.450834, -0.849551, 0.273882,
		-0.815664, -0.516726, -0.260169,
		35.006882, 36.033329, 46.376522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.925747, 41.654243, 33.066071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554825, 41.516205, 33.124062>,  <42.332272, 41.433380, 33.158855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554825, 41.516205, 33.124062>,  <42.925747, 41.654243, 33.066071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554825, 41.516205, 33.124062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345595, -0.640546, 0.685758,
		-0.143785, 0.686010, 0.713243,
		-0.927302, -0.345095, 0.144981,
		42.276634, 41.412678, 33.167557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986885, 41.648006, 33.756306>,  <42.925747, 41.654243, 33.066071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986885, 41.648006, 33.756306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683163, 41.411442, 33.647732>,  <42.500927, 41.269501, 33.582588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683163, 41.411442, 33.647732>,  <42.986885, 41.648006, 33.756306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683163, 41.411442, 33.647732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312908, -0.697572, 0.644579,
		-0.570560, 0.404500, 0.714731,
		-0.759309, -0.591416, -0.271436,
		42.455372, 41.234016, 33.566299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679989, 41.278515, 34.365520>,  <42.986885, 41.648006, 33.756306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679989, 41.278515, 34.365520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565559, 41.038918, 34.066357>,  <42.496902, 40.895157, 33.886860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.565559, 41.038918, 34.066357>,  <42.679989, 41.278515, 34.365520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565559, 41.038918, 34.066357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368360, -0.789295, 0.491248,
		-0.884575, -0.134966, 0.446442,
		-0.286073, -0.598997, -0.747907,
		42.479736, 40.859219, 33.841984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208569, 40.843029, 34.651913>,  <42.679989, 41.278515, 34.365520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208569, 40.843029, 34.651913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339806, 40.650776, 34.326618>,  <42.418549, 40.535423, 34.131443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.339806, 40.650776, 34.326618>,  <42.208569, 40.843029, 34.651913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339806, 40.650776, 34.326618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315398, -0.755750, 0.573903,
		-0.890439, -0.444784, -0.096363,
		0.328090, -0.480633, -0.813234,
		42.438232, 40.506588, 34.082649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014927, 40.088062, 34.722927>,  <42.208569, 40.843029, 34.651913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014927, 40.088062, 34.722927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328693, 40.083111, 34.474884>,  <42.516953, 40.080139, 34.326057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328693, 40.083111, 34.474884>,  <42.014927, 40.088062, 34.722927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328693, 40.083111, 34.474884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379632, -0.781055, 0.495815,
		-0.490474, -0.624340, -0.607976,
		0.784420, -0.012377, -0.620107,
		42.564018, 40.079399, 34.288853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092865, 39.354992, 34.431412>,  <42.014927, 40.088062, 34.722927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092865, 39.354992, 34.431412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453468, 39.526993, 34.411888>,  <42.669830, 39.630192, 34.400173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453468, 39.526993, 34.411888>,  <42.092865, 39.354992, 34.431412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453468, 39.526993, 34.411888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420218, -0.842831, 0.336232,
		0.103447, -0.323624, -0.940514,
		0.901507, 0.430003, -0.048805,
		42.723919, 39.655994, 34.397247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435501, 38.800823, 34.426220>,  <42.092865, 39.354992, 34.431412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435501, 38.800823, 34.426220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712330, 39.079296, 34.502499>,  <42.878426, 39.246380, 34.548267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.712330, 39.079296, 34.502499>,  <42.435501, 38.800823, 34.426220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712330, 39.079296, 34.502499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572407, -0.690264, 0.442590,
		0.439756, -0.197146, -0.876212,
		0.692072, 0.696182, 0.190700,
		42.919952, 39.288151, 34.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072025, 38.519707, 34.196381>,  <42.435501, 38.800823, 34.426220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072025, 38.519707, 34.196381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177872, 38.782696, 34.478577>,  <43.241379, 38.940487, 34.647892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177872, 38.782696, 34.478577>,  <43.072025, 38.519707, 34.196381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177872, 38.782696, 34.478577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710865, -0.627331, 0.318005,
		0.651653, 0.417359, -0.633372,
		0.264611, 0.657470, 0.705488,
		43.257256, 38.979939, 34.690224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710037, 38.669258, 34.018482>,  <43.072025, 38.519707, 34.196381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710037, 38.669258, 34.018482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653271, 38.757305, 34.404522>,  <43.619213, 38.810135, 34.636147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653271, 38.757305, 34.404522>,  <43.710037, 38.669258, 34.018482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653271, 38.757305, 34.404522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806388, -0.539748, 0.241681,
		0.574107, 0.812539, -0.100903,
		-0.141913, 0.220118, 0.965095,
		43.610695, 38.823341, 34.694050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382786, 38.609402, 34.329945>,  <43.710037, 38.669258, 34.018482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382786, 38.609402, 34.329945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161839, 38.623409, 34.663090>,  <44.029270, 38.631813, 34.862976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161839, 38.623409, 34.663090>,  <44.382786, 38.609402, 34.329945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161839, 38.623409, 34.663090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663794, -0.585894, 0.464871,
		0.504249, 0.809631, 0.300385,
		-0.552368, 0.035017, 0.832865,
		43.996128, 38.633915, 34.912949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853489, 38.810997, 34.947575>,  <44.382786, 38.609402, 34.329945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853489, 38.810997, 34.947575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543720, 38.588493, 35.068138>,  <44.357857, 38.454990, 35.140476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543720, 38.588493, 35.068138>,  <44.853489, 38.810997, 34.947575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543720, 38.588493, 35.068138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632286, -0.696999, 0.338239,
		0.021936, 0.452518, 0.891485,
		-0.774424, -0.556255, 0.301410,
		44.311394, 38.421616, 35.158562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202042, 38.365643, 35.384094>,  <44.853489, 38.810997, 34.947575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202042, 38.365643, 35.384094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844231, 38.190861, 35.346394>,  <44.629543, 38.085991, 35.323772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844231, 38.190861, 35.346394>,  <45.202042, 38.365643, 35.384094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844231, 38.190861, 35.346394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398852, -0.875420, 0.273051,
		-0.201820, 0.206661, 0.957371,
		-0.894531, -0.436957, -0.094250,
		44.575871, 38.059772, 35.318119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930946, 38.087303, 36.071117>,  <45.202042, 38.365643, 35.384094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930946, 38.087303, 36.071117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784302, 37.893612, 35.753345>,  <44.696316, 37.777397, 35.562683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784302, 37.893612, 35.753345>,  <44.930946, 38.087303, 36.071117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784302, 37.893612, 35.753345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461542, -0.836063, 0.296611,
		-0.807821, -0.257922, 0.530001,
		-0.366612, -0.484226, -0.794431,
		44.674316, 37.748344, 35.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810123, 37.481953, 36.342793>,  <44.930946, 38.087303, 36.071117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810123, 37.481953, 36.342793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.779781, 37.385288, 35.955837>,  <44.761574, 37.327290, 35.723663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.779781, 37.385288, 35.955837>,  <44.810123, 37.481953, 36.342793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779781, 37.385288, 35.955837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269850, -0.938958, 0.213398,
		-0.959910, -0.244862, 0.136440,
		-0.075858, -0.241662, -0.967391,
		44.757023, 37.312790, 35.665619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539639, 36.715759, 36.395187>,  <44.810123, 37.481953, 36.342793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539639, 36.715759, 36.395187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666004, 36.752945, 36.017498>,  <44.741825, 36.775257, 35.790886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.666004, 36.752945, 36.017498>,  <44.539639, 36.715759, 36.395187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666004, 36.752945, 36.017498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168993, -0.984789, -0.040413,
		-0.933616, -0.146799, -0.326822,
		0.315917, 0.092961, -0.944222,
		44.760780, 36.780834, 35.734230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275921, 36.143181, 36.066761>,  <44.539639, 36.715759, 36.395187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275921, 36.143181, 36.066761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551819, 36.275570, 35.809166>,  <44.717358, 36.355003, 35.654610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551819, 36.275570, 35.809166>,  <44.275921, 36.143181, 36.066761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551819, 36.275570, 35.809166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176138, -0.939392, -0.294141,
		-0.702306, 0.089451, -0.706233,
		0.689741, 0.330971, -0.643984,
		44.758739, 36.374863, 35.615971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149593, 35.872463, 35.368553>,  <44.275921, 36.143181, 36.066761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149593, 35.872463, 35.368553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537594, 35.966724, 35.392467>,  <44.770393, 36.023281, 35.406815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.537594, 35.966724, 35.392467>,  <44.149593, 35.872463, 35.368553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537594, 35.966724, 35.392467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242958, -0.930714, -0.273392,
		-0.008781, 0.279715, -0.960043,
		0.969997, 0.235651, 0.059786,
		44.828594, 36.037418, 35.410404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419827, 35.566978, 34.804188>,  <44.149593, 35.872463, 35.368553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419827, 35.566978, 34.804188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758644, 35.632618, 35.006409>,  <44.961937, 35.672001, 35.127739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758644, 35.632618, 35.006409>,  <44.419827, 35.566978, 34.804188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758644, 35.632618, 35.006409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379556, -0.852594, -0.359193,
		0.372085, 0.496138, -0.784474,
		0.847048, 0.164101, 0.505550,
		45.012760, 35.681847, 35.158073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914352, 35.458782, 34.336990>,  <44.419827, 35.566978, 34.804188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914352, 35.458782, 34.336990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097130, 35.385235, 34.685104>,  <45.206795, 35.341106, 34.893974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097130, 35.385235, 34.685104>,  <44.914352, 35.458782, 34.336990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097130, 35.385235, 34.685104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445057, -0.799864, -0.402668,
		0.770147, 0.571323, -0.283661,
		0.456943, -0.183868, 0.870285,
		45.234211, 35.330074, 34.946190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492912, 35.169491, 34.143673>,  <44.914352, 35.458782, 34.336990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492912, 35.169491, 34.143673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497261, 35.078491, 34.533161>,  <45.499870, 35.023891, 34.766853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497261, 35.078491, 34.533161>,  <45.492912, 35.169491, 34.143673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497261, 35.078491, 34.533161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478926, -0.853634, -0.204787,
		0.877788, 0.468566, 0.099670,
		0.010874, -0.227495, 0.973719,
		45.500523, 35.010242, 34.825275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176022, 35.046879, 34.382561>,  <45.492912, 35.169491, 34.143673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176022, 35.046879, 34.382561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960812, 34.846329, 34.653603>,  <45.831684, 34.725998, 34.816227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960812, 34.846329, 34.653603>,  <46.176022, 35.046879, 34.382561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960812, 34.846329, 34.653603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560891, -0.813018, -0.156215,
		0.629230, 0.296017, 0.718640,
		-0.538025, -0.501374, 0.677609,
		45.799404, 34.695915, 34.856884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422417, 35.757172, 34.571842>,  <46.176022, 35.046879, 34.382561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422417, 35.757172, 34.571842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676647, 35.666206, 34.276730>,  <46.829185, 35.611629, 34.099663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676647, 35.666206, 34.276730>,  <46.422417, 35.757172, 34.571842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676647, 35.666206, 34.276730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267966, 0.831243, -0.487061,
		0.724042, 0.507266, 0.467380,
		0.635576, -0.227411, -0.737786,
		46.867321, 35.597984, 34.055393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760212, 36.344563, 34.453884>,  <46.422417, 35.757172, 34.571842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760212, 36.344563, 34.453884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.809139, 36.131298, 34.119034>,  <46.838497, 36.003342, 33.918125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.809139, 36.131298, 34.119034>,  <46.760212, 36.344563, 34.453884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809139, 36.131298, 34.119034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131180, 0.827376, -0.546115,
		0.983783, 0.176615, 0.031265,
		0.122320, -0.533157, -0.837127,
		46.845837, 35.971352, 33.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.191257, 36.736256, 33.993176>,  <46.760212, 36.344563, 34.453884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.191257, 36.736256, 33.993176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.991909, 36.478745, 33.760910>,  <46.872299, 36.324238, 33.621552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.991909, 36.478745, 33.760910>,  <47.191257, 36.736256, 33.993176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.991909, 36.478745, 33.760910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139801, 0.720678, -0.679028,
		0.855616, -0.257233, -0.449169,
		-0.498375, -0.643781, -0.580662,
		46.842396, 36.285610, 33.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392056, 36.904613, 33.390953>,  <47.191257, 36.736256, 33.993176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392056, 36.904613, 33.390953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.071857, 36.691109, 33.281914>,  <46.879738, 36.563007, 33.216492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.071857, 36.691109, 33.281914>,  <47.392056, 36.904613, 33.390953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071857, 36.691109, 33.281914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311410, 0.759028, -0.571752,
		0.512085, -0.372796, -0.773816,
		-0.800495, -0.533760, -0.272594,
		46.831711, 36.530979, 33.200134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301304, 36.955967, 32.618866>,  <47.392056, 36.904613, 33.390953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301304, 36.955967, 32.618866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.955578, 36.871109, 32.801273>,  <46.748142, 36.820194, 32.910717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.955578, 36.871109, 32.801273>,  <47.301304, 36.955967, 32.618866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.955578, 36.871109, 32.801273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420936, 0.801353, -0.425025,
		-0.275261, -0.559310, -0.781923,
		-0.864317, -0.212147, 0.456015,
		46.696281, 36.807465, 32.938076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844597, 37.078621, 32.099678>,  <47.301304, 36.955967, 32.618866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844597, 37.078621, 32.099678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.668091, 37.117897, 32.456474>,  <46.562187, 37.141460, 32.670551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.668091, 37.117897, 32.456474>,  <46.844597, 37.078621, 32.099678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668091, 37.117897, 32.456474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496328, 0.801416, -0.333752,
		-0.747623, -0.589993, -0.304908,
		-0.441269, 0.098186, 0.891987,
		46.535709, 37.147354, 32.724072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158566, 37.228527, 31.864422>,  <46.844597, 37.078621, 32.099678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158566, 37.228527, 31.864422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.210117, 37.349846, 32.242077>,  <46.241051, 37.422638, 32.468670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.210117, 37.349846, 32.242077>,  <46.158566, 37.228527, 31.864422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210117, 37.349846, 32.242077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550952, 0.813516, -0.186129,
		-0.824525, -0.496187, 0.271950,
		0.128881, 0.303299, 0.944139,
		46.248783, 37.440834, 32.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565941, 37.680531, 32.026608>,  <46.158566, 37.228527, 31.864422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565941, 37.680531, 32.026608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827427, 37.769798, 32.315842>,  <45.984318, 37.823360, 32.489380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827427, 37.769798, 32.315842>,  <45.565941, 37.680531, 32.026608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827427, 37.769798, 32.315842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417181, 0.903491, 0.098312,
		-0.631357, -0.365924, 0.683731,
		0.653719, 0.223169, 0.723081,
		46.023544, 37.836750, 32.532764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220802, 37.973911, 32.562504>,  <45.565941, 37.680531, 32.026608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220802, 37.973911, 32.562504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593498, 38.096191, 32.640900>,  <45.817116, 38.169559, 32.687935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593498, 38.096191, 32.640900>,  <45.220802, 37.973911, 32.562504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593498, 38.096191, 32.640900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320509, 0.946022, 0.048120,
		-0.170697, -0.107651, 0.979425,
		0.931738, 0.305700, 0.195986,
		45.873020, 38.187901, 32.699696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226513, 38.516544, 33.143909>,  <45.220802, 37.973911, 32.562504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226513, 38.516544, 33.143909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560001, 38.570404, 32.929707>,  <45.760094, 38.602718, 32.801186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560001, 38.570404, 32.929707>,  <45.226513, 38.516544, 33.143909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560001, 38.570404, 32.929707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152265, 0.988273, 0.011434,
		0.530771, 0.072007, 0.844451,
		0.833725, 0.134649, -0.535511,
		45.810120, 38.610798, 32.769054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.583015, 39.160500, 33.458546>,  <45.226513, 38.516544, 33.143909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.583015, 39.160500, 33.458546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818733, 39.133572, 33.136501>,  <45.960163, 39.117416, 32.943275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818733, 39.133572, 33.136501>,  <45.583015, 39.160500, 33.458546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818733, 39.133572, 33.136501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050876, 0.991453, -0.120138,
		0.806317, 0.111757, 0.580829,
		0.589291, -0.067319, -0.805111,
		45.995522, 39.113377, 32.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268669, 39.640587, 33.536888>,  <45.583015, 39.160500, 33.458546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268669, 39.640587, 33.536888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164948, 39.572865, 33.156551>,  <46.102715, 39.532230, 32.928349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.164948, 39.572865, 33.156551>,  <46.268669, 39.640587, 33.536888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.164948, 39.572865, 33.156551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036912, 0.982058, -0.184933,
		0.965091, -0.083051, -0.248399,
		-0.259301, -0.169308, -0.950841,
		46.087158, 39.522072, 32.871300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707150, 39.987480, 33.100849>,  <46.268669, 39.640587, 33.536888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707150, 39.987480, 33.100849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407036, 39.906235, 32.849194>,  <46.226967, 39.857487, 32.698200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.407036, 39.906235, 32.849194>,  <46.707150, 39.987480, 33.100849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407036, 39.906235, 32.849194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064791, 0.969646, -0.235775,
		0.657929, -0.136136, -0.740673,
		-0.750288, -0.203112, -0.629138,
		46.181950, 39.845303, 32.660454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765549, 40.512924, 32.523293>,  <46.707150, 39.987480, 33.100849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765549, 40.512924, 32.523293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390465, 40.382740, 32.474686>,  <46.165413, 40.304630, 32.445522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.390465, 40.382740, 32.474686>,  <46.765549, 40.512924, 32.523293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390465, 40.382740, 32.474686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322865, 0.945554, -0.041055,
		0.128263, 0.000736, -0.991740,
		-0.937714, -0.325464, -0.121518,
		46.109150, 40.285099, 32.438229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422234, 40.939766, 31.956417>,  <46.765549, 40.512924, 32.523293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422234, 40.939766, 31.956417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.117874, 40.799267, 32.174648>,  <45.935257, 40.714966, 32.305588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.117874, 40.799267, 32.174648>,  <46.422234, 40.939766, 31.956417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117874, 40.799267, 32.174648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461211, 0.884201, -0.073974,
		-0.456417, -0.307914, -0.834789,
		-0.760899, -0.351251, 0.545578,
		45.889603, 40.693890, 32.338322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736946, 41.135807, 31.628300>,  <46.422234, 40.939766, 31.956417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736946, 41.135807, 31.628300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679882, 41.084148, 32.020824>,  <45.645645, 41.053154, 32.256340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679882, 41.084148, 32.020824>,  <45.736946, 41.135807, 31.628300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679882, 41.084148, 32.020824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505356, 0.861984, 0.039977,
		-0.851037, -0.490208, -0.188233,
		-0.142656, -0.129147, 0.981311,
		45.637085, 41.045403, 32.315216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278893, 41.561497, 31.858431>,  <45.736946, 41.135807, 31.628300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278893, 41.561497, 31.858431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360828, 41.428978, 32.226841>,  <45.409988, 41.349468, 32.447887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360828, 41.428978, 32.226841>,  <45.278893, 41.561497, 31.858431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360828, 41.428978, 32.226841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550012, 0.739403, 0.388291,
		-0.809648, -0.586110, -0.030762,
		0.204836, -0.331298, 0.921023,
		45.422279, 41.329590, 32.503147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652145, 41.919140, 32.152596>,  <45.278893, 41.561497, 31.858431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652145, 41.919140, 32.152596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898556, 41.833778, 32.455902>,  <45.046402, 41.782562, 32.637886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898556, 41.833778, 32.455902>,  <44.652145, 41.919140, 32.152596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898556, 41.833778, 32.455902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238822, 0.866700, 0.437944,
		-0.750647, -0.450877, 0.482948,
		0.616030, -0.213403, 0.758265,
		45.083366, 41.769756, 32.683380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347645, 41.944996, 32.862755>,  <44.652145, 41.919140, 32.152596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347645, 41.944996, 32.862755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732731, 42.007187, 32.951309>,  <44.963783, 42.044502, 33.004440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732731, 42.007187, 32.951309>,  <44.347645, 41.944996, 32.862755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732731, 42.007187, 32.951309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256981, 0.781288, 0.568815,
		-0.084529, -0.604497, 0.792110,
		0.962713, 0.155476, 0.221386,
		45.021545, 42.053829, 33.017727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361565, 42.041912, 33.681751>,  <44.347645, 41.944996, 32.862755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361565, 42.041912, 33.681751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680492, 42.211472, 33.509895>,  <44.871849, 42.313210, 33.406780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680492, 42.211472, 33.509895>,  <44.361565, 42.041912, 33.681751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680492, 42.211472, 33.509895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134379, 0.818658, 0.558339,
		0.588411, -0.387438, 0.709693,
		0.797317, 0.423900, -0.429644,
		44.919689, 42.338642, 33.381001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679741, 42.407463, 34.292511>,  <44.361565, 42.041912, 33.681751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679741, 42.407463, 34.292511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837505, 42.565044, 33.960426>,  <44.932163, 42.659592, 33.761177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837505, 42.565044, 33.960426>,  <44.679741, 42.407463, 34.292511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837505, 42.565044, 33.960426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277385, 0.912343, 0.301146,
		0.876070, 0.111513, 0.469112,
		0.394409, 0.393950, -0.830208,
		44.955826, 42.683228, 33.711365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.864857, 35.309391, 42.444519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553059, 35.076565, 42.351925>,  <38.365982, 34.936867, 42.296368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553059, 35.076565, 42.351925>,  <38.864857, 35.309391, 42.444519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553059, 35.076565, 42.351925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437184, -0.240858, -0.866520,
		0.448620, -0.776648, 0.442219,
		-0.779493, -0.582069, -0.231485,
		38.319210, 34.901943, 42.282478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122730, 34.637691, 42.084309>,  <38.864857, 35.309391, 42.444519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122730, 34.637691, 42.084309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737343, 34.706848, 42.002491>,  <38.506111, 34.748341, 41.953400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737343, 34.706848, 42.002491>,  <39.122730, 34.637691, 42.084309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737343, 34.706848, 42.002491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181624, -0.139518, -0.973420,
		-0.196835, -0.975009, 0.103020,
		-0.963467, 0.172893, -0.204547,
		38.448303, 34.758717, 41.941128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903614, 34.123810, 41.537315>,  <39.122730, 34.637691, 42.084309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903614, 34.123810, 41.537315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634396, 34.418507, 41.511307>,  <38.472866, 34.595325, 41.495701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634396, 34.418507, 41.511307>,  <38.903614, 34.123810, 41.537315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634396, 34.418507, 41.511307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217207, 0.112860, -0.969579,
		-0.706989, -0.666692, -0.235985,
		-0.673044, 0.736739, -0.065019,
		38.432484, 34.639530, 41.491802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593582, 33.999535, 40.972889>,  <38.903614, 34.123810, 41.537315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593582, 33.999535, 40.972889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494793, 34.386135, 41.000839>,  <38.435520, 34.618095, 41.017609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494793, 34.386135, 41.000839>,  <38.593582, 33.999535, 40.972889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494793, 34.386135, 41.000839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051742, 0.058854, -0.996925,
		-0.967640, -0.249828, 0.035473,
		-0.246972, 0.966500, 0.069876,
		38.420700, 34.676086, 41.021801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995476, 34.095501, 40.448818>,  <38.593582, 33.999535, 40.972889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995476, 34.095501, 40.448818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109581, 34.472034, 40.520943>,  <38.178043, 34.697956, 40.564217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109581, 34.472034, 40.520943>,  <37.995476, 34.095501, 40.448818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109581, 34.472034, 40.520943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086493, 0.162077, -0.982980,
		-0.954539, 0.296002, -0.035185,
		0.285262, 0.941336, 0.180311,
		38.195160, 34.754436, 40.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595043, 34.533371, 39.992565>,  <37.995476, 34.095501, 40.448818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595043, 34.533371, 39.992565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912704, 34.757591, 40.086460>,  <38.103302, 34.892124, 40.142796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912704, 34.757591, 40.086460>,  <37.595043, 34.533371, 39.992565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912704, 34.757591, 40.086460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146049, 0.198892, -0.969078,
		-0.589902, 0.803882, 0.076084,
		0.794157, 0.560549, 0.234733,
		38.150951, 34.925755, 40.156879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457115, 35.073265, 39.645073>,  <37.595043, 34.533371, 39.992565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457115, 35.073265, 39.645073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853092, 35.091206, 39.698750>,  <38.090679, 35.101971, 39.730957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853092, 35.091206, 39.698750>,  <37.457115, 35.073265, 39.645073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853092, 35.091206, 39.698750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133034, 0.027980, -0.990716,
		-0.048190, 0.998602, 0.021731,
		0.989939, 0.044852, 0.134196,
		38.150074, 35.104660, 39.739010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624710, 35.564110, 39.231564>,  <37.457115, 35.073265, 39.645073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624710, 35.564110, 39.231564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967964, 35.368134, 39.292961>,  <38.173916, 35.250546, 39.329800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967964, 35.368134, 39.292961>,  <37.624710, 35.564110, 39.231564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967964, 35.368134, 39.292961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255978, 0.149127, -0.955111,
		0.445062, 0.858903, 0.253386,
		0.858135, -0.489945, 0.153490,
		38.225403, 35.221149, 39.339008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133461, 35.994171, 38.802498>,  <37.624710, 35.564110, 39.231564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133461, 35.994171, 38.802498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282471, 35.630077, 38.874828>,  <38.371876, 35.411621, 38.918224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282471, 35.630077, 38.874828>,  <38.133461, 35.994171, 38.802498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282471, 35.630077, 38.874828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493399, 0.029234, -0.869312,
		0.785994, 0.413054, 0.460001,
		0.372521, -0.910237, 0.180823,
		38.394226, 35.357006, 38.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801537, 36.054516, 38.646271>,  <38.133461, 35.994171, 38.802498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801537, 36.054516, 38.646271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767193, 35.656078, 38.638023>,  <38.746586, 35.417015, 38.633076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767193, 35.656078, 38.638023>,  <38.801537, 36.054516, 38.646271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767193, 35.656078, 38.638023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503481, -0.025523, -0.863629,
		0.859730, -0.084528, 0.503706,
		-0.085857, -0.996094, -0.020615,
		38.741436, 35.357250, 38.631840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467712, 35.757092, 38.352753>,  <38.801537, 36.054516, 38.646271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467712, 35.757092, 38.352753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169231, 35.493801, 38.312904>,  <38.990143, 35.335827, 38.288994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169231, 35.493801, 38.312904>,  <39.467712, 35.757092, 38.352753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169231, 35.493801, 38.312904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232743, -0.117739, -0.965385,
		0.623714, -0.743555, 0.241055,
		-0.746198, -0.658228, -0.099622,
		38.945374, 35.296333, 38.283016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654293, 35.392204, 37.742325>,  <39.467712, 35.757092, 38.352753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654293, 35.392204, 37.742325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262608, 35.325951, 37.789150>,  <39.027596, 35.286198, 37.817245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262608, 35.325951, 37.789150>,  <39.654293, 35.392204, 37.742325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262608, 35.325951, 37.789150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096981, -0.124546, -0.987463,
		0.178138, -0.978291, 0.105894,
		-0.979215, -0.165635, 0.117062,
		38.968842, 35.276260, 37.824268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339104, 35.184231, 37.355606>,  <39.654293, 35.392204, 37.742325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339104, 35.184231, 37.355606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329395, 34.909809, 37.064751>,  <40.323570, 34.745155, 36.890236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329395, 34.909809, 37.064751>,  <40.339104, 35.184231, 37.355606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329395, 34.909809, 37.064751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943334, 0.225078, -0.243848,
		0.330957, -0.691855, 0.641719,
		-0.024270, -0.686058, -0.727142,
		40.322113, 34.703991, 36.846607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784283, 34.594299, 37.423985>,  <40.339104, 35.184231, 37.355606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784283, 34.594299, 37.423985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729488, 34.734459, 37.053375>,  <40.696609, 34.818554, 36.831009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729488, 34.734459, 37.053375>,  <40.784283, 34.594299, 37.423985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729488, 34.734459, 37.053375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982651, 0.166120, -0.082462,
		0.125020, -0.921750, -0.367078,
		-0.136989, 0.350400, -0.926528,
		40.688393, 34.839581, 36.775417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418335, 34.428806, 37.697044>,  <40.784283, 34.594299, 37.423985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418335, 34.428806, 37.697044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677139, 34.131721, 37.628036>,  <41.832420, 33.953472, 37.586632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677139, 34.131721, 37.628036>,  <41.418335, 34.428806, 37.697044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677139, 34.131721, 37.628036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264385, -0.430746, 0.862878,
		-0.715179, -0.512678, -0.475058,
		0.647008, -0.742710, -0.172516,
		41.871243, 33.908909, 37.576283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073601, 33.828495, 37.798828>,  <41.418335, 34.428806, 37.697044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073601, 33.828495, 37.798828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463104, 33.757141, 37.855354>,  <41.696808, 33.714329, 37.889271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463104, 33.757141, 37.855354>,  <41.073601, 33.828495, 37.798828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463104, 33.757141, 37.855354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219822, -0.576495, 0.786976,
		-0.058915, -0.797390, -0.600581,
		0.973759, -0.178386, 0.141320,
		41.755234, 33.703625, 37.897751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059505, 33.120892, 38.143059>,  <41.073601, 33.828495, 37.798828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059505, 33.120892, 38.143059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423740, 33.268936, 38.216652>,  <41.642281, 33.357765, 38.260807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423740, 33.268936, 38.216652>,  <41.059505, 33.120892, 38.143059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423740, 33.268936, 38.216652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000040, -0.445207, 0.895428,
		0.413320, -0.815356, -0.405414,
		0.910586, 0.370114, 0.183981,
		41.696915, 33.379971, 38.271847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489151, 32.513527, 38.248840>,  <41.059505, 33.120892, 38.143059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489151, 32.513527, 38.248840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626999, 32.838474, 38.437012>,  <41.709709, 33.033443, 38.549915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626999, 32.838474, 38.437012>,  <41.489151, 32.513527, 38.248840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626999, 32.838474, 38.437012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051576, -0.516754, 0.854579,
		0.937325, -0.270241, -0.219982,
		0.344619, 0.812364, 0.470428,
		41.730385, 33.082184, 38.578140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892712, 32.213711, 38.750233>,  <41.489151, 32.513527, 38.248840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892712, 32.213711, 38.750233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842812, 32.595322, 38.859238>,  <41.812870, 32.824287, 38.924641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842812, 32.595322, 38.859238>,  <41.892712, 32.213711, 38.750233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842812, 32.595322, 38.859238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136652, -0.288560, 0.947660,
		0.982732, 0.080985, 0.166369,
		-0.124754, 0.954030, 0.272511,
		41.805386, 32.881531, 38.940990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491165, 32.338703, 39.249565>,  <41.892712, 32.213711, 38.750233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491165, 32.338703, 39.249565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179604, 32.583378, 39.304916>,  <41.992664, 32.730183, 39.338127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179604, 32.583378, 39.304916>,  <42.491165, 32.338703, 39.249565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179604, 32.583378, 39.304916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124150, -0.366670, 0.922030,
		0.614727, 0.700997, 0.361543,
		-0.778908, 0.611683, 0.138374,
		41.945930, 32.766884, 39.346428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547993, 32.562851, 39.946327>,  <42.491165, 32.338703, 39.249565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547993, 32.562851, 39.946327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164799, 32.611885, 39.842606>,  <41.934883, 32.641304, 39.780373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164799, 32.611885, 39.842606>,  <42.547993, 32.562851, 39.946327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164799, 32.611885, 39.842606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284695, -0.296552, 0.911595,
		0.034849, 0.947117, 0.318991,
		-0.957984, 0.122583, -0.259305,
		41.877403, 32.648659, 39.764812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138893, 32.748798, 40.632202>,  <42.547993, 32.562851, 39.946327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138893, 32.748798, 40.632202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832973, 32.661316, 40.389801>,  <41.649422, 32.608826, 40.244358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832973, 32.661316, 40.389801>,  <42.138893, 32.748798, 40.632202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832973, 32.661316, 40.389801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601367, -0.095151, 0.793287,
		-0.231157, 0.971141, -0.058750,
		-0.764803, -0.218704, -0.606007,
		41.603531, 32.595703, 40.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520844, 32.988495, 40.954876>,  <42.138893, 32.748798, 40.632202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520844, 32.988495, 40.954876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374371, 32.734528, 40.682762>,  <41.286488, 32.582146, 40.519493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374371, 32.734528, 40.682762>,  <41.520844, 32.988495, 40.954876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374371, 32.734528, 40.682762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628427, -0.370434, 0.684001,
		-0.686287, 0.677979, -0.263354,
		-0.366183, -0.634920, -0.680284,
		41.264515, 32.544052, 40.478676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855865, 33.207966, 40.808727>,  <41.520844, 32.988495, 40.954876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855865, 33.207966, 40.808727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909920, 32.818115, 40.737358>,  <40.942352, 32.584206, 40.694534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909920, 32.818115, 40.737358>,  <40.855865, 33.207966, 40.808727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909920, 32.818115, 40.737358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765171, -0.217061, 0.606133,
		-0.629484, 0.054617, -0.775091,
		0.135137, -0.974629, -0.178427,
		40.950462, 32.525726, 40.683830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172905, 33.018879, 40.845737>,  <40.855865, 33.207966, 40.808727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172905, 33.018879, 40.845737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401142, 32.694622, 40.898308>,  <40.538086, 32.500069, 40.929852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401142, 32.694622, 40.898308>,  <40.172905, 33.018879, 40.845737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401142, 32.694622, 40.898308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613649, -0.314513, 0.724235,
		-0.545761, -0.493897, -0.676912,
		0.570595, -0.810646, 0.131430,
		40.572319, 32.451427, 40.937737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731380, 32.431622, 40.718987>,  <40.172905, 33.018879, 40.845737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731380, 32.431622, 40.718987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043232, 32.310974, 40.938515>,  <40.230343, 32.238586, 41.070232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043232, 32.310974, 40.938515>,  <39.731380, 32.431622, 40.718987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043232, 32.310974, 40.938515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617799, -0.227002, 0.752858,
		-0.102489, -0.926012, -0.363315,
		0.779629, -0.301614, 0.548824,
		40.277119, 32.220490, 41.103161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531479, 31.861446, 41.016232>,  <39.731380, 32.431622, 40.718987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531479, 31.861446, 41.016232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834621, 31.950052, 41.261700>,  <40.016506, 32.003216, 41.408981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834621, 31.950052, 41.261700>,  <39.531479, 31.861446, 41.016232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834621, 31.950052, 41.261700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558120, -0.267000, 0.785629,
		0.337878, -0.937892, -0.078715,
		0.757852, 0.221514, 0.613670,
		40.061977, 32.016506, 41.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539768, 31.286852, 41.488728>,  <39.531479, 31.861446, 41.016232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539768, 31.286852, 41.488728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755779, 31.578363, 41.657131>,  <39.885387, 31.753271, 41.758175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755779, 31.578363, 41.657131>,  <39.539768, 31.286852, 41.488728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755779, 31.578363, 41.657131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480104, -0.144112, 0.865293,
		0.691280, -0.669412, 0.272065,
		0.540030, 0.728779, 0.421009,
		39.917789, 31.796997, 41.783436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524952, 30.582251, 41.238548>,  <39.539768, 31.286852, 41.488728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524952, 30.582251, 41.238548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203701, 30.343929, 41.237686>,  <39.010952, 30.200935, 41.237167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203701, 30.343929, 41.237686>,  <39.524952, 30.582251, 41.238548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203701, 30.343929, 41.237686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054333, 0.076838, -0.995562,
		0.593326, -0.799446, -0.094083,
		-0.803127, -0.595804, -0.002154,
		38.962765, 30.165188, 41.237041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723949, 29.999701, 40.750561>,  <39.524952, 30.582251, 41.238548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723949, 29.999701, 40.750561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326603, 30.026217, 40.788136>,  <39.088196, 30.042126, 40.810680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326603, 30.026217, 40.788136>,  <39.723949, 29.999701, 40.750561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326603, 30.026217, 40.788136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089502, 0.067042, -0.993728,
		-0.072174, -0.995546, -0.060664,
		-0.993368, 0.066292, 0.093942,
		39.028591, 30.046104, 40.816319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454151, 29.507103, 40.287800>,  <39.723949, 29.999701, 40.750561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454151, 29.507103, 40.287800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144672, 29.741997, 40.382919>,  <38.958984, 29.882933, 40.439991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144672, 29.741997, 40.382919>,  <39.454151, 29.507103, 40.287800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144672, 29.741997, 40.382919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313534, -0.028738, -0.949142,
		-0.550537, -0.808905, 0.206353,
		-0.773696, 0.587237, 0.237798,
		38.912563, 29.918167, 40.454258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888905, 29.226179, 39.921440>,  <39.454151, 29.507103, 40.287800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888905, 29.226179, 39.921440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833000, 29.617735, 39.981091>,  <38.799458, 29.852669, 40.016880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833000, 29.617735, 39.981091>,  <38.888905, 29.226179, 39.921440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833000, 29.617735, 39.981091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292551, 0.103064, -0.950680,
		-0.945982, -0.176492, 0.271972,
		-0.139757, 0.978891, 0.149129,
		38.791073, 29.911402, 40.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231724, 29.389822, 39.618057>,  <38.888905, 29.226179, 39.921440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231724, 29.389822, 39.618057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428402, 29.737814, 39.632896>,  <38.546410, 29.946609, 39.641800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428402, 29.737814, 39.632896>,  <38.231724, 29.389822, 39.618057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428402, 29.737814, 39.632896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187910, 0.147615, -0.971030,
		-0.850252, 0.470476, 0.236058,
		0.491693, 0.869978, 0.037103,
		38.575909, 29.998808, 39.644028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808105, 29.848001, 39.381359>,  <38.231724, 29.389822, 39.618057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808105, 29.848001, 39.381359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172543, 30.006191, 39.334866>,  <38.391205, 30.101105, 39.306969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172543, 30.006191, 39.334866>,  <37.808105, 29.848001, 39.381359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172543, 30.006191, 39.334866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225390, 0.241861, -0.943770,
		-0.345123, 0.886061, 0.309493,
		0.911092, 0.395474, -0.116237,
		38.445869, 30.124834, 39.299995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599743, 30.321171, 38.948643>,  <37.808105, 29.848001, 39.381359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599743, 30.321171, 38.948643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998108, 30.336485, 38.915939>,  <38.237129, 30.345675, 38.896317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998108, 30.336485, 38.915939>,  <37.599743, 30.321171, 38.948643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998108, 30.336485, 38.915939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088184, 0.218379, -0.971872,
		-0.019355, 0.975113, 0.220864,
		0.995916, 0.038287, -0.081762,
		38.296883, 30.347971, 38.891411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746094, 30.929871, 38.593140>,  <37.599743, 30.321171, 38.948643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746094, 30.929871, 38.593140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083920, 30.717695, 38.563885>,  <38.286613, 30.590389, 38.546333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083920, 30.717695, 38.563885>,  <37.746094, 30.929871, 38.593140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083920, 30.717695, 38.563885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011322, 0.154243, -0.987968,
		0.535339, 0.833572, 0.136274,
		0.844562, -0.530441, -0.073135,
		38.337288, 30.558563, 38.541943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311424, 31.368383, 38.186104>,  <37.746094, 30.929871, 38.593140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311424, 31.368383, 38.186104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438938, 30.990158, 38.159908>,  <38.515446, 30.763224, 38.144192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438938, 30.990158, 38.159908>,  <38.311424, 31.368383, 38.186104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438938, 30.990158, 38.159908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276872, 0.158976, -0.947665,
		0.906487, 0.283971, 0.312478,
		0.318786, -0.945562, -0.065486,
		38.534573, 30.706490, 38.140263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971333, 31.354218, 37.951481>,  <38.311424, 31.368383, 38.186104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971333, 31.354218, 37.951481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835373, 30.991125, 37.853104>,  <38.753796, 30.773270, 37.794079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835373, 30.991125, 37.853104>,  <38.971333, 31.354218, 37.951481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835373, 30.991125, 37.853104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253056, 0.163591, -0.953520,
		0.905775, -0.386341, 0.174102,
		-0.339902, -0.907732, -0.245943,
		38.733402, 30.718805, 37.779320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446693, 30.993870, 37.540165>,  <38.971333, 31.354218, 37.951481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446693, 30.993870, 37.540165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100086, 30.813885, 37.453747>,  <38.892120, 30.705894, 37.401897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100086, 30.813885, 37.453747>,  <39.446693, 30.993870, 37.540165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100086, 30.813885, 37.453747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226887, 0.030454, -0.973445,
		0.444593, -0.892528, 0.075702,
		-0.866521, -0.449963, -0.216042,
		38.840130, 30.678896, 37.388935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538174, 30.342512, 37.066010>,  <39.446693, 30.993870, 37.540165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538174, 30.342512, 37.066010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187969, 30.532072, 37.028275>,  <38.977848, 30.645809, 37.005634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187969, 30.532072, 37.028275>,  <39.538174, 30.342512, 37.066010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187969, 30.532072, 37.028275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072687, -0.063856, -0.995309,
		-0.477703, -0.878259, 0.021460,
		-0.875509, 0.473902, -0.094342,
		38.925316, 30.674242, 36.999973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.885853, 28.709436, 44.806591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507069, 28.724302, 44.678917>,  <38.279797, 28.733223, 44.602310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507069, 28.724302, 44.678917>,  <38.885853, 28.709436, 44.806591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507069, 28.724302, 44.678917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318526, -0.022690, -0.947642,
		-0.042469, -0.999051, 0.009646,
		-0.946963, 0.037173, -0.319187,
		38.222980, 28.735453, 44.583160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830959, 28.242393, 44.215378>,  <38.885853, 28.709436, 44.806591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830959, 28.242393, 44.215378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528633, 28.503880, 44.200462>,  <38.347237, 28.660772, 44.191513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528633, 28.503880, 44.200462>,  <38.830959, 28.242393, 44.215378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528633, 28.503880, 44.200462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123321, 0.086193, -0.988617,
		-0.643062, -0.751814, -0.145763,
		-0.755820, 0.653717, -0.037287,
		38.301888, 28.699995, 44.189278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384842, 28.047365, 43.635788>,  <38.830959, 28.242393, 44.215378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384842, 28.047365, 43.635788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340458, 28.439566, 43.700665>,  <38.313828, 28.674887, 43.739590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340458, 28.439566, 43.700665>,  <38.384842, 28.047365, 43.635788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340458, 28.439566, 43.700665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141327, 0.177110, -0.973991,
		-0.983725, -0.085152, -0.158224,
		-0.110960, 0.980500, 0.162193,
		38.307171, 28.733715, 43.749321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058334, 28.232430, 43.052483>,  <38.384842, 28.047365, 43.635788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058334, 28.232430, 43.052483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154530, 28.590157, 43.203403>,  <38.212246, 28.804792, 43.293957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154530, 28.590157, 43.203403>,  <38.058334, 28.232430, 43.052483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154530, 28.590157, 43.203403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036461, 0.380115, -0.924220,
		-0.969966, 0.236024, 0.058807,
		0.240492, 0.894318, 0.377304,
		38.226677, 28.858452, 43.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661835, 28.776731, 42.715168>,  <38.058334, 28.232430, 43.052483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661835, 28.776731, 42.715168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989697, 28.956955, 42.856678>,  <38.186413, 29.065088, 42.941586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989697, 28.956955, 42.856678>,  <37.661835, 28.776731, 42.715168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989697, 28.956955, 42.856678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170976, 0.397005, -0.901750,
		-0.546742, 0.799615, 0.248374,
		0.819659, 0.450558, 0.353775,
		38.235596, 29.092123, 42.962811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641891, 29.579573, 42.501259>,  <37.661835, 28.776731, 42.715168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641891, 29.579573, 42.501259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019581, 29.491219, 42.598957>,  <38.246193, 29.438206, 42.657578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.019581, 29.491219, 42.598957>,  <37.641891, 29.579573, 42.501259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019581, 29.491219, 42.598957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321759, 0.460889, -0.827075,
		0.070118, 0.859530, 0.506253,
		0.944222, -0.220884, 0.244245,
		38.302849, 29.424953, 42.672230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991940, 30.211094, 42.531452>,  <37.641891, 29.579573, 42.501259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991940, 30.211094, 42.531452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288612, 29.949656, 42.471161>,  <38.466618, 29.792791, 42.434986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288612, 29.949656, 42.471161>,  <37.991940, 30.211094, 42.531452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288612, 29.949656, 42.471161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221352, 0.450620, -0.864838,
		0.633176, 0.608072, 0.478892,
		0.741682, -0.653598, -0.150724,
		38.511116, 29.753576, 42.425945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616013, 30.594351, 42.414734>,  <37.991940, 30.211094, 42.531452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616013, 30.594351, 42.414734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674118, 30.236441, 42.245842>,  <38.708981, 30.021694, 42.144508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.674118, 30.236441, 42.245842>,  <38.616013, 30.594351, 42.414734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674118, 30.236441, 42.245842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271497, 0.446424, -0.852640,
		0.951414, 0.009220, 0.307776,
		0.145260, -0.894774, -0.422231,
		38.717697, 29.968008, 42.119171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134315, 30.686375, 41.893471>,  <38.616013, 30.594351, 42.414734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134315, 30.686375, 41.893471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983669, 30.335438, 41.774517>,  <38.893280, 30.124876, 41.703144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983669, 30.335438, 41.774517>,  <39.134315, 30.686375, 41.893471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983669, 30.335438, 41.774517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041276, 0.304805, -0.951520,
		0.925450, -0.370631, -0.078580,
		-0.376614, -0.877341, -0.297380,
		38.870686, 30.072235, 41.685303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700512, 30.980438, 42.127037>,  <39.134315, 30.686375, 41.893471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700512, 30.980438, 42.127037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764782, 31.371813, 42.178947>,  <39.803345, 31.606638, 42.210094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764782, 31.371813, 42.178947>,  <39.700512, 30.980438, 42.127037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764782, 31.371813, 42.178947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185068, -0.099289, 0.977697,
		0.969501, -0.181112, 0.165124,
		0.160677, 0.978437, 0.129779,
		39.812984, 31.665344, 42.217880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078915, 31.141230, 42.757095>,  <39.700512, 30.980438, 42.127037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078915, 31.141230, 42.757095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927544, 31.510384, 42.728607>,  <39.836720, 31.731876, 42.711514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927544, 31.510384, 42.728607>,  <40.078915, 31.141230, 42.757095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927544, 31.510384, 42.728607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174844, 0.004291, 0.984587,
		0.908966, 0.385050, 0.159737,
		-0.378430, 0.922886, -0.071224,
		39.814014, 31.787249, 42.707241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268745, 31.501341, 43.411217>,  <40.078915, 31.141230, 42.757095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268745, 31.501341, 43.411217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967842, 31.687477, 43.224640>,  <39.787300, 31.799158, 43.112694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967842, 31.687477, 43.224640>,  <40.268745, 31.501341, 43.411217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967842, 31.687477, 43.224640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410060, 0.223463, 0.884260,
		0.515713, 0.856460, 0.022715,
		-0.752257, 0.465339, -0.466443,
		39.742165, 31.827080, 43.084705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243637, 32.193615, 43.656494>,  <40.268745, 31.501341, 43.411217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243637, 32.193615, 43.656494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879120, 32.075920, 43.541275>,  <39.660408, 32.005302, 43.472141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879120, 32.075920, 43.541275>,  <40.243637, 32.193615, 43.656494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879120, 32.075920, 43.541275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345424, 0.165512, 0.923736,
		-0.224119, 0.941293, -0.252465,
		-0.911292, -0.294234, -0.288051,
		39.605732, 31.987650, 43.454861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818882, 32.704670, 43.974178>,  <40.243637, 32.193615, 43.656494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818882, 32.704670, 43.974178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559067, 32.408932, 43.903229>,  <39.403175, 32.231487, 43.860661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559067, 32.408932, 43.903229>,  <39.818882, 32.704670, 43.974178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559067, 32.408932, 43.903229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511739, 0.252577, 0.821175,
		-0.562332, 0.624157, -0.542412,
		-0.649543, -0.739346, -0.177373,
		39.364204, 32.187126, 43.850018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252342, 33.034657, 44.286209>,  <39.818882, 32.704670, 43.974178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252342, 33.034657, 44.286209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125916, 32.658920, 44.232929>,  <39.050060, 32.433479, 44.200962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125916, 32.658920, 44.232929>,  <39.252342, 33.034657, 44.286209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125916, 32.658920, 44.232929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579538, 0.080002, 0.811009,
		-0.751157, 0.333528, -0.569669,
		-0.316069, -0.939340, -0.133198,
		39.031094, 32.377117, 44.192970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594227, 33.032478, 44.411175>,  <39.252342, 33.034657, 44.286209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594227, 33.032478, 44.411175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684708, 32.648312, 44.476204>,  <38.738995, 32.417812, 44.515221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684708, 32.648312, 44.476204>,  <38.594227, 33.032478, 44.411175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684708, 32.648312, 44.476204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472258, 0.037837, 0.880648,
		-0.851942, -0.275980, -0.445006,
		0.226203, -0.960418, 0.162568,
		38.752567, 32.360188, 44.524975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039028, 32.695072, 44.671352>,  <38.594227, 33.032478, 44.411175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039028, 32.695072, 44.671352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334900, 32.455608, 44.794296>,  <38.512424, 32.311928, 44.868065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334900, 32.455608, 44.794296>,  <38.039028, 32.695072, 44.671352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334900, 32.455608, 44.794296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402564, -0.027632, 0.914975,
		-0.539268, -0.800525, -0.261439,
		0.739684, -0.598663, 0.307362,
		38.556805, 32.276009, 44.886505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785126, 32.134464, 45.021275>,  <38.039028, 32.695072, 44.671352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785126, 32.134464, 45.021275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166439, 32.121128, 45.141361>,  <38.395229, 32.113125, 45.213413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.166439, 32.121128, 45.141361>,  <37.785126, 32.134464, 45.021275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166439, 32.121128, 45.141361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297244, 0.073358, 0.951979,
		-0.053769, -0.996748, 0.060019,
		0.953286, -0.033347, 0.300221,
		38.452427, 32.111126, 45.231426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778236, 31.655651, 45.630745>,  <37.785126, 32.134464, 45.021275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778236, 31.655651, 45.630745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096188, 31.898252, 45.637932>,  <38.286957, 32.043812, 45.642242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.096188, 31.898252, 45.637932>,  <37.778236, 31.655651, 45.630745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096188, 31.898252, 45.637932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094270, 0.094191, 0.991081,
		0.599401, -0.789483, 0.132045,
		0.794879, 0.606502, 0.017966,
		38.334652, 32.080204, 45.643322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113785, 31.457874, 46.193314>,  <37.778236, 31.655651, 45.630745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113785, 31.457874, 46.193314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292431, 31.804840, 46.105564>,  <38.399620, 32.013020, 46.052914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292431, 31.804840, 46.105564>,  <38.113785, 31.457874, 46.193314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292431, 31.804840, 46.105564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089335, 0.200733, 0.975564,
		0.890255, -0.455301, 0.012160,
		0.446616, 0.867414, -0.219378,
		38.426414, 32.065063, 46.039749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722977, 31.504902, 46.584427>,  <38.113785, 31.457874, 46.193314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722977, 31.504902, 46.584427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607758, 31.877079, 46.493820>,  <38.538628, 32.100384, 46.439457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607758, 31.877079, 46.493820>,  <38.722977, 31.504902, 46.584427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607758, 31.877079, 46.493820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072929, 0.214537, 0.973989,
		0.954835, 0.297075, 0.006059,
		-0.288047, 0.930441, -0.226513,
		38.521343, 32.156212, 46.425865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094048, 31.971964, 47.101234>,  <38.722977, 31.504902, 46.584427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094048, 31.971964, 47.101234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780132, 32.168861, 46.950607>,  <38.591782, 32.286999, 46.860229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780132, 32.168861, 46.950607>,  <39.094048, 31.971964, 47.101234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780132, 32.168861, 46.950607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317744, 0.202111, 0.926386,
		0.532116, 0.846669, -0.002207,
		-0.784788, 0.492243, -0.376570,
		38.544697, 32.316536, 46.837635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140991, 32.677605, 47.430534>,  <39.094048, 31.971964, 47.101234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140991, 32.677605, 47.430534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766598, 32.587929, 47.321964>,  <38.541962, 32.534122, 47.256824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.766598, 32.587929, 47.321964>,  <39.140991, 32.677605, 47.430534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766598, 32.587929, 47.321964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328504, 0.279042, 0.902342,
		-0.126561, 0.933741, -0.334827,
		-0.935985, -0.224193, -0.271422,
		38.485802, 32.520672, 47.240540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.228949, 34.202328, 46.804153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616486, 34.103283, 46.806271>,  <31.849009, 34.043858, 46.807541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616486, 34.103283, 46.806271>,  <31.228949, 34.202328, 46.804153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616486, 34.103283, 46.806271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070145, 0.253845, -0.964698,
		0.237528, 0.935014, 0.263305,
		0.968845, -0.247613, 0.005291,
		31.907139, 34.028999, 46.807858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612904, 34.803848, 46.560261>,  <31.228949, 34.202328, 46.804153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612904, 34.803848, 46.560261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836847, 34.479305, 46.493019>,  <31.971214, 34.284580, 46.452675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836847, 34.479305, 46.493019>,  <31.612904, 34.803848, 46.560261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836847, 34.479305, 46.493019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167025, 0.309225, -0.936206,
		0.811578, 0.496068, 0.308639,
		0.559861, -0.811355, -0.168104,
		32.004807, 34.235897, 46.442589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182892, 35.008438, 46.193336>,  <31.612904, 34.803848, 46.560261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182892, 35.008438, 46.193336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186356, 34.616135, 46.115314>,  <32.188435, 34.380753, 46.068501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186356, 34.616135, 46.115314>,  <32.182892, 35.008438, 46.193336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186356, 34.616135, 46.115314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172883, 0.193591, -0.965730,
		0.984904, -0.025357, 0.171233,
		0.008661, -0.980755, -0.195052,
		32.188953, 34.321907, 46.056797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725731, 34.898460, 45.832390>,  <32.182892, 35.008438, 46.193336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725731, 34.898460, 45.832390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561550, 34.541798, 45.755985>,  <32.463043, 34.327801, 45.710144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.561550, 34.541798, 45.755985>,  <32.725731, 34.898460, 45.832390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561550, 34.541798, 45.755985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200182, 0.116253, -0.972837,
		0.889640, -0.437535, 0.130778,
		-0.410447, -0.891655, -0.191011,
		32.438416, 34.274300, 45.698681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230103, 34.514046, 45.452919>,  <32.725731, 34.898460, 45.832390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230103, 34.514046, 45.452919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860771, 34.380428, 45.377140>,  <32.639172, 34.300259, 45.331673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860771, 34.380428, 45.377140>,  <33.230103, 34.514046, 45.452919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860771, 34.380428, 45.377140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166260, 0.096962, -0.981303,
		0.346163, -0.937558, -0.033990,
		-0.923324, -0.334040, -0.189443,
		32.583775, 34.280216, 45.320309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204044, 33.857254, 44.988602>,  <33.230103, 34.514046, 45.452919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204044, 33.857254, 44.988602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844872, 34.031769, 44.965351>,  <32.629368, 34.136478, 44.951401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844872, 34.031769, 44.965351>,  <33.204044, 33.857254, 44.988602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844872, 34.031769, 44.965351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224856, 0.341168, -0.912713,
		-0.378373, -0.832621, -0.404446,
		-0.897927, 0.436288, -0.058131,
		32.575493, 34.162655, 44.947910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143223, 33.758076, 44.211636>,  <33.204044, 33.857254, 44.988602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143223, 33.758076, 44.211636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839203, 33.979176, 44.348339>,  <32.656792, 34.111835, 44.430359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839203, 33.979176, 44.348339>,  <33.143223, 33.758076, 44.211636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839203, 33.979176, 44.348339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071538, 0.451522, -0.889387,
		-0.645921, -0.700423, -0.303634,
		-0.760045, 0.552752, 0.341754,
		32.611191, 34.145000, 44.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606712, 33.579693, 43.797291>,  <33.143223, 33.758076, 44.211636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606712, 33.579693, 43.797291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509132, 33.940273, 43.940327>,  <32.450584, 34.156624, 44.026150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509132, 33.940273, 43.940327>,  <32.606712, 33.579693, 43.797291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509132, 33.940273, 43.940327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022567, 0.373909, -0.927191,
		-0.969526, -0.218114, -0.111556,
		-0.243945, 0.901453, 0.357592,
		32.435947, 34.210709, 44.047604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122917, 33.758823, 43.315002>,  <32.606712, 33.579693, 43.797291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122917, 33.758823, 43.315002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275974, 34.093193, 43.472385>,  <32.367809, 34.293816, 43.566814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.275974, 34.093193, 43.472385>,  <32.122917, 33.758823, 43.315002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275974, 34.093193, 43.472385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088068, 0.456930, -0.885132,
		-0.919689, 0.304039, 0.248460,
		0.382643, 0.835928, 0.393457,
		32.390766, 34.343971, 43.590424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814566, 34.287506, 42.892105>,  <32.122917, 33.758823, 43.315002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814566, 34.287506, 42.892105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122669, 34.470448, 43.069881>,  <32.307533, 34.580212, 43.176548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122669, 34.470448, 43.069881>,  <31.814566, 34.287506, 42.892105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122669, 34.470448, 43.069881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262390, 0.407917, -0.874503,
		-0.581250, 0.790213, 0.194198,
		0.770260, 0.457349, 0.444445,
		32.353748, 34.607651, 43.203217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883595, 35.027912, 42.738781>,  <31.814566, 34.287506, 42.892105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883595, 35.027912, 42.738781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259487, 34.922783, 42.826256>,  <32.485023, 34.859703, 42.878742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259487, 34.922783, 42.826256>,  <31.883595, 35.027912, 42.738781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259487, 34.922783, 42.826256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331464, 0.543398, -0.771265,
		0.083873, 0.797271, 0.597766,
		0.939732, -0.262826, 0.218691,
		32.541409, 34.843933, 42.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282280, 35.529667, 42.454285>,  <31.883595, 35.027912, 42.738781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282280, 35.529667, 42.454285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563808, 35.252949, 42.518841>,  <32.732727, 35.086918, 42.557575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563808, 35.252949, 42.518841>,  <32.282280, 35.529667, 42.454285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563808, 35.252949, 42.518841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419077, 0.220916, -0.880665,
		0.573589, 0.687468, 0.445402,
		0.703826, -0.691797, 0.161387,
		32.774956, 35.045410, 42.567257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914501, 35.967178, 42.363728>,  <32.282280, 35.529667, 42.454285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914501, 35.967178, 42.363728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995514, 35.579853, 42.305267>,  <33.044121, 35.347458, 42.270191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995514, 35.579853, 42.305267>,  <32.914501, 35.967178, 42.363728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995514, 35.579853, 42.305267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363452, 0.212907, -0.906958,
		0.909331, 0.130570, 0.395054,
		0.202531, -0.968309, -0.146147,
		33.056274, 35.289360, 42.261425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597607, 35.955555, 42.078266>,  <32.914501, 35.967178, 42.363728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597607, 35.955555, 42.078266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433273, 35.605145, 41.977242>,  <33.334671, 35.394897, 41.916626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.433273, 35.605145, 41.977242>,  <33.597607, 35.955555, 42.078266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433273, 35.605145, 41.977242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340882, 0.109334, -0.933727,
		0.845585, -0.469702, 0.253704,
		-0.410835, -0.876028, -0.252564,
		33.310024, 35.342335, 41.901474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311939, 35.738544, 42.194660>,  <33.597607, 35.955555, 42.078266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311939, 35.738544, 42.194660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672649, 35.881996, 42.291142>,  <34.889076, 35.968067, 42.349030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672649, 35.881996, 42.291142>,  <34.311939, 35.738544, 42.194660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672649, 35.881996, 42.291142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205922, -0.134157, 0.969329,
		0.379992, -0.923788, -0.047130,
		0.901777, 0.358632, 0.241207,
		34.943184, 35.989586, 42.363503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548233, 35.379799, 42.748783>,  <34.311939, 35.738544, 42.194660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548233, 35.379799, 42.748783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758659, 35.719669, 42.763199>,  <34.884914, 35.923592, 42.771847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758659, 35.719669, 42.763199>,  <34.548233, 35.379799, 42.748783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758659, 35.719669, 42.763199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006072, -0.038621, 0.999236,
		0.850420, -0.525887, -0.015158,
		0.526070, 0.849677, 0.036037,
		34.916481, 35.974571, 42.774010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202282, 35.129169, 43.143475>,  <34.548233, 35.379799, 42.748783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202282, 35.129169, 43.143475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176250, 35.528057, 43.157978>,  <35.160629, 35.767391, 43.166679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176250, 35.528057, 43.157978>,  <35.202282, 35.129169, 43.143475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176250, 35.528057, 43.157978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270335, -0.017354, 0.962610,
		0.960564, 0.072451, -0.268454,
		-0.065083, 0.997221, 0.036256,
		35.156727, 35.827225, 43.168854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772305, 35.385910, 43.337486>,  <35.202282, 35.129169, 43.143475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772305, 35.385910, 43.337486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493450, 35.654678, 43.437504>,  <35.326138, 35.815941, 43.497513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.493450, 35.654678, 43.437504>,  <35.772305, 35.385910, 43.337486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493450, 35.654678, 43.437504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323158, -0.016818, 0.946196,
		0.639974, 0.740431, -0.205412,
		-0.697138, 0.671921, 0.250039,
		35.284309, 35.856255, 43.512516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036697, 35.750389, 43.911243>,  <35.772305, 35.385910, 43.337486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036697, 35.750389, 43.911243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649635, 35.845802, 43.944115>,  <35.417400, 35.903049, 43.963837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.649635, 35.845802, 43.944115>,  <36.036697, 35.750389, 43.911243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649635, 35.845802, 43.944115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106631, 0.091485, 0.990081,
		0.228648, 0.966816, -0.113961,
		-0.967652, 0.238532, 0.082175,
		35.359341, 35.917362, 43.968765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024857, 36.269844, 44.365917>,  <36.036697, 35.750389, 43.911243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024857, 36.269844, 44.365917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646168, 36.141247, 44.373394>,  <35.418953, 36.064087, 44.377880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646168, 36.141247, 44.373394>,  <36.024857, 36.269844, 44.365917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646168, 36.141247, 44.373394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061730, 0.238142, 0.969267,
		-0.316066, 0.916477, -0.245301,
		-0.946727, -0.321495, 0.018695,
		35.362148, 36.044800, 44.379002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540516, 36.783531, 44.753342>,  <36.024857, 36.269844, 44.365917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540516, 36.783531, 44.753342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.351948, 36.430824, 44.747097>,  <35.238808, 36.219200, 44.743351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.351948, 36.430824, 44.747097>,  <35.540516, 36.783531, 44.753342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351948, 36.430824, 44.747097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101341, 0.036575, 0.994179,
		-0.876067, 0.470259, -0.106601,
		-0.471421, -0.881770, -0.015614,
		35.210522, 36.166294, 44.742413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896023, 36.921207, 45.108753>,  <35.540516, 36.783531, 44.753342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896023, 36.921207, 45.108753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921818, 36.522114, 45.116390>,  <34.937294, 36.282658, 45.120972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921818, 36.522114, 45.116390>,  <34.896023, 36.921207, 45.108753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921818, 36.522114, 45.116390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250685, 0.002318, 0.968066,
		-0.965918, -0.067215, -0.249968,
		0.064489, -0.997736, 0.019089,
		34.941166, 36.222794, 45.122116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311977, 36.760040, 45.464268>,  <34.896023, 36.921207, 45.108753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311977, 36.760040, 45.464268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527462, 36.423355, 45.478767>,  <34.656754, 36.221344, 45.487469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527462, 36.423355, 45.478767>,  <34.311977, 36.760040, 45.464268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527462, 36.423355, 45.478767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388988, -0.210335, 0.896910,
		-0.747314, -0.497275, -0.440725,
		0.538711, -0.841710, 0.036248,
		34.689075, 36.170841, 45.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879646, 36.190098, 45.736862>,  <34.311977, 36.760040, 45.464268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879646, 36.190098, 45.736862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247887, 36.048260, 45.802296>,  <34.468830, 35.963158, 45.841557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247887, 36.048260, 45.802296>,  <33.879646, 36.190098, 45.736862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247887, 36.048260, 45.802296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240722, -0.185449, 0.952713,
		-0.307491, -0.916445, -0.256083,
		0.920599, -0.354595, 0.163585,
		34.524067, 35.941883, 45.851372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871090, 35.489872, 46.031303>,  <33.879646, 36.190098, 45.736862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871090, 35.489872, 46.031303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206833, 35.678814, 46.138901>,  <34.408279, 35.792179, 46.203461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206833, 35.678814, 46.138901>,  <33.871090, 35.489872, 46.031303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206833, 35.678814, 46.138901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237004, -0.127328, 0.963128,
		0.489193, -0.872161, 0.005077,
		0.839356, 0.472359, 0.268994,
		34.458641, 35.820522, 46.219601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283035, 34.936283, 46.380974>,  <33.871090, 35.489872, 46.031303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283035, 34.936283, 46.380974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406219, 35.297935, 46.499439>,  <34.480129, 35.514927, 46.570518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406219, 35.297935, 46.499439>,  <34.283035, 34.936283, 46.380974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406219, 35.297935, 46.499439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106899, -0.276439, 0.955068,
		0.945375, -0.325782, 0.011519,
		0.307959, 0.904128, 0.296164,
		34.498608, 35.569176, 46.588287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884491, 34.851616, 46.853329>,  <34.283035, 34.936283, 46.380974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884491, 34.851616, 46.853329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716446, 35.204395, 46.938824>,  <34.615620, 35.416061, 46.990120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.716446, 35.204395, 46.938824>,  <34.884491, 34.851616, 46.853329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716446, 35.204395, 46.938824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075099, -0.200929, 0.976723,
		0.904361, 0.426382, 0.018180,
		-0.420109, 0.881944, 0.213733,
		34.590412, 35.468979, 47.002945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266319, 35.100124, 47.508457>,  <34.884491, 34.851616, 46.853329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266319, 35.100124, 47.508457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903576, 35.267677, 47.489933>,  <34.685928, 35.368210, 47.478821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903576, 35.267677, 47.489933>,  <35.266319, 35.100124, 47.508457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903576, 35.267677, 47.489933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, -0.164453, 0.978315,
		0.402183, 0.893025, 0.201880,
		-0.906859, 0.418882, -0.046307,
		34.631519, 35.393341, 47.476040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905811, 35.391777, 47.250134>,  <35.266319, 35.100124, 47.508457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905811, 35.391777, 47.250134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248135, 35.279476, 47.423923>,  <36.453529, 35.212097, 47.528198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248135, 35.279476, 47.423923>,  <35.905811, 35.391777, 47.250134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248135, 35.279476, 47.423923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482035, 0.128046, -0.866744,
		0.187706, 0.951201, 0.244915,
		0.855809, -0.280751, 0.434477,
		36.504879, 35.195251, 47.554268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392735, 35.864479, 46.986507>,  <35.905811, 35.391777, 47.250134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392735, 35.864479, 46.986507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608315, 35.552509, 47.113792>,  <36.737663, 35.365330, 47.190163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608315, 35.552509, 47.113792>,  <36.392735, 35.864479, 46.986507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608315, 35.552509, 47.113792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558152, 0.047725, -0.828365,
		0.630873, 0.624055, 0.461036,
		0.538948, -0.779921, 0.318209,
		36.770000, 35.318531, 47.209255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044754, 36.038136, 46.957504>,  <36.392735, 35.864479, 46.986507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044754, 36.038136, 46.957504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.068798, 35.638863, 46.955814>,  <37.083225, 35.399300, 46.954800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.068798, 35.638863, 46.955814>,  <37.044754, 36.038136, 46.957504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068798, 35.638863, 46.955814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480999, 0.032667, -0.876112,
		0.874658, 0.050630, 0.482089,
		0.060106, -0.998183, -0.004220,
		37.086830, 35.339409, 46.954548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621571, 35.814476, 46.817005>,  <37.044754, 36.038136, 46.957504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621571, 35.814476, 46.817005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460133, 35.460392, 46.724480>,  <37.363270, 35.247940, 46.668964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460133, 35.460392, 46.724480>,  <37.621571, 35.814476, 46.817005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460133, 35.460392, 46.724480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422311, 0.044037, -0.905380,
		0.811642, -0.463094, 0.356063,
		-0.403596, -0.885214, -0.231312,
		37.339054, 35.194828, 46.655087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052147, 35.552906, 46.412048>,  <37.621571, 35.814476, 46.817005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052147, 35.552906, 46.412048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767475, 35.280006, 46.345055>,  <37.596672, 35.116268, 46.304859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.767475, 35.280006, 46.345055>,  <38.052147, 35.552906, 46.412048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767475, 35.280006, 46.345055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437664, -0.244099, -0.865370,
		0.549516, -0.689166, 0.472316,
		-0.711676, -0.682251, -0.167487,
		37.553974, 35.075333, 46.294807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304737, 34.885670, 46.154049>,  <38.052147, 35.552906, 46.412048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304737, 34.885670, 46.154049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934242, 34.932095, 46.010597>,  <37.711945, 34.959949, 45.924526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934242, 34.932095, 46.010597>,  <38.304737, 34.885670, 46.154049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934242, 34.932095, 46.010597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357346, -0.032422, -0.933409,
		-0.119965, -0.992712, -0.011445,
		-0.926235, 0.116066, -0.358632,
		37.656372, 34.966915, 45.903008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243595, 34.373299, 45.592941>,  <38.304737, 34.885670, 46.154049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243595, 34.373299, 45.592941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944706, 34.630280, 45.524925>,  <37.765373, 34.784470, 45.484116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944706, 34.630280, 45.524925>,  <38.243595, 34.373299, 45.592941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944706, 34.630280, 45.524925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206242, -0.019061, -0.978315,
		-0.631766, -0.766085, -0.118259,
		-0.747219, 0.642456, -0.170041,
		37.720539, 34.823017, 45.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052296, 34.215641, 44.963371>,  <38.243595, 34.373299, 45.592941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052296, 34.215641, 44.963371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878777, 34.575260, 44.987133>,  <37.774666, 34.791031, 45.001392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878777, 34.575260, 44.987133>,  <38.052296, 34.215641, 44.963371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878777, 34.575260, 44.987133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055783, 0.092608, -0.994139,
		-0.899283, -0.427939, -0.090325,
		-0.433795, 0.899051, 0.059409,
		37.748638, 34.844975, 45.004955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675201, 34.192455, 44.341034>,  <38.052296, 34.215641, 44.963371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675201, 34.192455, 44.341034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675690, 34.579651, 44.441429>,  <37.675983, 34.811970, 44.501667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675690, 34.579651, 44.441429>,  <37.675201, 34.192455, 44.341034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675690, 34.579651, 44.441429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033614, 0.250886, -0.967433,
		-0.999434, -0.007257, 0.032844,
		0.001219, 0.967989, 0.250988,
		37.676056, 34.870049, 44.516727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190044, 34.390564, 43.959808>,  <37.675201, 34.192455, 44.341034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190044, 34.390564, 43.959808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445961, 34.681660, 44.058655>,  <37.599510, 34.856316, 44.117962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445961, 34.681660, 44.058655>,  <37.190044, 34.390564, 43.959808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445961, 34.681660, 44.058655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020461, 0.305296, -0.952038,
		-0.768276, 0.614162, 0.180436,
		0.639792, 0.727736, 0.247117,
		37.637897, 34.899979, 44.132790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809273, 34.939728, 43.838383>,  <37.190044, 34.390564, 43.959808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809273, 34.939728, 43.838383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187267, 35.070213, 43.828648>,  <37.414062, 35.148506, 43.822807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187267, 35.070213, 43.828648>,  <36.809273, 34.939728, 43.838383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187267, 35.070213, 43.828648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128886, 0.302924, -0.944259,
		-0.300658, 0.895446, 0.328303,
		0.944983, 0.326212, -0.024334,
		37.470764, 35.168076, 43.821346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763233, 35.483936, 43.452827>,  <36.809273, 34.939728, 43.838383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763233, 35.483936, 43.452827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153835, 35.398411, 43.463543>,  <37.388199, 35.347095, 43.469975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153835, 35.398411, 43.463543>,  <36.763233, 35.483936, 43.452827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153835, 35.398411, 43.463543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014715, -0.057874, -0.998215,
		0.214978, 0.975160, -0.053369,
		0.976508, -0.213809, 0.026791,
		37.446789, 35.334267, 43.471581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116825, 35.943729, 43.001900>,  <36.763233, 35.483936, 43.452827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116825, 35.943729, 43.001900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373146, 35.638214, 43.032875>,  <37.526939, 35.454906, 43.051460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373146, 35.638214, 43.032875>,  <37.116825, 35.943729, 43.001900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373146, 35.638214, 43.032875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031273, -0.074816, -0.996707,
		0.767066, 0.641117, -0.024057,
		0.640805, -0.763788, 0.077439,
		37.565388, 35.409077, 43.056107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622463, 36.121380, 42.474483>,  <37.116825, 35.943729, 43.001900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622463, 36.121380, 42.474483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719509, 35.736729, 42.525730>,  <37.777737, 35.505939, 42.556480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719509, 35.736729, 42.525730>,  <37.622463, 36.121380, 42.474483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719509, 35.736729, 42.525730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075437, -0.112965, -0.990731,
		0.967184, 0.250035, 0.045135,
		0.242619, -0.961624, 0.128120,
		37.792294, 35.448242, 42.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.779135, 35.007511, 43.586452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379723, 35.000217, 43.566055>,  <27.140076, 34.995842, 43.553818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379723, 35.000217, 43.566055>,  <27.779135, 35.007511, 43.586452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379723, 35.000217, 43.566055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053261, -0.160554, -0.985589,
		0.009783, -0.986859, 0.161289,
		-0.998533, -0.018232, -0.050990,
		27.080162, 34.994747, 43.550758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593893, 34.483551, 42.941593>,  <27.779135, 35.007511, 43.586452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593893, 34.483551, 42.941593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245085, 34.662075, 43.021976>,  <27.035799, 34.769192, 43.070206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245085, 34.662075, 43.021976>,  <27.593893, 34.483551, 42.941593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245085, 34.662075, 43.021976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212616, 0.024406, -0.976831,
		-0.440878, -0.894543, 0.073611,
		-0.872021, 0.446315, 0.200954,
		26.983479, 34.795971, 43.082264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973120, 34.031658, 42.824371>,  <27.593893, 34.483551, 42.941593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973120, 34.031658, 42.824371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880348, 34.419136, 42.788960>,  <26.824686, 34.651623, 42.767712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880348, 34.419136, 42.788960>,  <26.973120, 34.031658, 42.824371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880348, 34.419136, 42.788960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233162, -0.143721, -0.961759,
		-0.944375, -0.202417, 0.259196,
		-0.231929, 0.968696, -0.088531,
		26.810770, 34.709743, 42.762402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322727, 33.975700, 42.484394>,  <26.973120, 34.031658, 42.824371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322727, 33.975700, 42.484394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.441612, 34.355804, 42.447155>,  <26.512943, 34.583866, 42.424812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.441612, 34.355804, 42.447155>,  <26.322727, 33.975700, 42.484394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441612, 34.355804, 42.447155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175550, -0.041452, -0.983597,
		-0.938534, 0.308682, 0.154499,
		0.297214, 0.950262, -0.093093,
		26.530777, 34.640884, 42.419228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887257, 34.193562, 42.033104>,  <26.322727, 33.975700, 42.484394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887257, 34.193562, 42.033104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174408, 34.471825, 42.022457>,  <26.346699, 34.638783, 42.016071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.174408, 34.471825, 42.022457>,  <25.887257, 34.193562, 42.033104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174408, 34.471825, 42.022457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195608, 0.164873, -0.966723,
		-0.668123, 0.699195, 0.254436,
		0.717878, 0.695660, -0.026613,
		26.389771, 34.680523, 42.014473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609848, 34.731216, 41.584721>,  <25.887257, 34.193562, 42.033104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609848, 34.731216, 41.584721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004173, 34.792992, 41.611023>,  <26.240768, 34.830055, 41.626804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004173, 34.792992, 41.611023>,  <25.609848, 34.731216, 41.584721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004173, 34.792992, 41.611023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046362, 0.125956, -0.990952,
		-0.161318, 0.979941, 0.117009,
		0.985813, 0.154434, 0.065751,
		26.299917, 34.839321, 41.630749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861752, 35.360008, 41.354168>,  <25.609848, 34.731216, 41.584721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861752, 35.360008, 41.354168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177856, 35.117947, 41.315632>,  <26.367519, 34.972710, 41.292511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177856, 35.117947, 41.315632>,  <25.861752, 35.360008, 41.354168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177856, 35.117947, 41.315632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036002, 0.111097, -0.993157,
		0.611712, 0.788322, 0.066009,
		0.790261, -0.605150, -0.096340,
		26.414934, 34.936401, 41.286728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314684, 35.631634, 40.809948>,  <25.861752, 35.360008, 41.354168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314684, 35.631634, 40.809948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397861, 35.241459, 40.838997>,  <26.447769, 35.007355, 40.856426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397861, 35.241459, 40.838997>,  <26.314684, 35.631634, 40.809948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397861, 35.241459, 40.838997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137418, -0.044371, -0.989519,
		0.968439, 0.215745, 0.124816,
		0.207946, -0.975441, 0.072618,
		26.460245, 34.948826, 40.860783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977329, 35.536526, 40.417385>,  <26.314684, 35.631634, 40.809948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977329, 35.536526, 40.417385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778219, 35.190693, 40.444847>,  <26.658752, 34.983192, 40.461323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778219, 35.190693, 40.444847>,  <26.977329, 35.536526, 40.417385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778219, 35.190693, 40.444847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018188, -0.068734, -0.997469,
		0.867115, -0.497764, 0.018489,
		-0.497775, -0.864584, 0.068653,
		26.628887, 34.931316, 40.465443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355295, 35.112827, 39.964489>,  <26.977329, 35.536526, 40.417385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355295, 35.112827, 39.964489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008778, 34.918613, 40.011459>,  <26.800867, 34.802086, 40.039642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.008778, 34.918613, 40.011459>,  <27.355295, 35.112827, 39.964489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008778, 34.918613, 40.011459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004969, -0.226691, -0.973954,
		0.499513, -0.844312, 0.193968,
		-0.866292, -0.485539, 0.117431,
		26.748890, 34.772953, 40.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458206, 34.435307, 39.685543>,  <27.355295, 35.112827, 39.964489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458206, 34.435307, 39.685543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.064365, 34.505222, 39.686920>,  <26.828062, 34.547173, 39.687744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.064365, 34.505222, 39.686920>,  <27.458206, 34.435307, 39.685543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064365, 34.505222, 39.686920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048429, -0.253788, -0.966047,
		-0.167978, -0.951337, 0.258345,
		-0.984601, 0.174786, 0.003441,
		26.768986, 34.557659, 39.687954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141129, 33.767628, 39.562675>,  <27.458206, 34.435307, 39.685543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141129, 33.767628, 39.562675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908424, 34.072212, 39.448318>,  <26.768803, 34.254963, 39.379704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908424, 34.072212, 39.448318>,  <27.141129, 33.767628, 39.562675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908424, 34.072212, 39.448318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036492, -0.375581, -0.926071,
		-0.812543, -0.528317, 0.246284,
		-0.581759, 0.761459, -0.285897,
		26.733896, 34.300652, 39.362549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696764, 33.548359, 38.968567>,  <27.141129, 33.767628, 39.562675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696764, 33.548359, 38.968567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620401, 33.939289, 38.931927>,  <26.574583, 34.173847, 38.909943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620401, 33.939289, 38.931927>,  <26.696764, 33.548359, 38.968567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620401, 33.939289, 38.931927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111347, -0.071153, -0.991231,
		-0.975272, -0.199432, -0.095239,
		-0.190906, 0.977325, -0.091600,
		26.563129, 34.232487, 38.904446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236303, 33.579208, 38.429310>,  <26.696764, 33.548359, 38.968567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236303, 33.579208, 38.429310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376337, 33.953136, 38.453125>,  <26.460358, 34.177494, 38.467415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.376337, 33.953136, 38.453125>,  <26.236303, 33.579208, 38.429310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376337, 33.953136, 38.453125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025497, 0.073050, -0.997002,
		-0.936371, 0.347517, 0.049409,
		0.350085, 0.934824, 0.059542,
		26.481363, 34.233585, 38.470989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943390, 33.933563, 37.834831>,  <26.236303, 33.579208, 38.429310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943390, 33.933563, 37.834831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221785, 34.200871, 37.939919>,  <26.388823, 34.361256, 38.002972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221785, 34.200871, 37.939919>,  <25.943390, 33.933563, 37.834831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221785, 34.200871, 37.939919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050747, 0.319179, -0.946335,
		-0.716258, 0.671969, 0.188232,
		0.695988, 0.668268, 0.262715,
		26.430580, 34.401352, 38.018734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664383, 34.612625, 37.543983>,  <25.943390, 33.933563, 37.834831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664383, 34.612625, 37.543983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063446, 34.619003, 37.570587>,  <26.302883, 34.622829, 37.586548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063446, 34.619003, 37.570587>,  <25.664383, 34.612625, 37.543983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063446, 34.619003, 37.570587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061905, 0.202944, -0.977232,
		-0.029081, 0.979061, 0.201482,
		0.997658, 0.015946, 0.066511,
		26.362743, 34.623787, 37.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912697, 35.153393, 37.118065>,  <25.664383, 34.612625, 37.543983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912697, 35.153393, 37.118065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243835, 34.935120, 37.170071>,  <26.442518, 34.804157, 37.201275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243835, 34.935120, 37.170071>,  <25.912697, 35.153393, 37.118065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243835, 34.935120, 37.170071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289007, 0.216258, -0.932581,
		0.480779, 0.809606, 0.336735,
		0.827845, -0.545684, 0.130010,
		26.492189, 34.771416, 37.209072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410831, 35.582691, 36.824413>,  <25.912697, 35.153393, 37.118065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410831, 35.582691, 36.824413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569061, 35.215733, 36.841904>,  <26.664000, 34.995560, 36.852398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569061, 35.215733, 36.841904>,  <26.410831, 35.582691, 36.824413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569061, 35.215733, 36.841904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304540, 0.086102, -0.948600,
		0.866474, 0.388557, 0.313442,
		0.395573, -0.917393, 0.043726,
		26.687733, 34.940514, 36.855022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151751, 35.632568, 36.576588>,  <26.410831, 35.582691, 36.824413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151751, 35.632568, 36.576588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034977, 35.250015, 36.572384>,  <26.964912, 35.020485, 36.569862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034977, 35.250015, 36.572384>,  <27.151751, 35.632568, 36.576588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034977, 35.250015, 36.572384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510249, -0.146436, -0.847468,
		0.808963, -0.252770, 0.530742,
		-0.291934, -0.956381, -0.010514,
		26.947397, 34.963100, 36.569229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727570, 35.296188, 36.403019>,  <27.151751, 35.632568, 36.576588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727570, 35.296188, 36.403019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432447, 35.048367, 36.295841>,  <27.255373, 34.899673, 36.231537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432447, 35.048367, 36.295841>,  <27.727570, 35.296188, 36.403019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432447, 35.048367, 36.295841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410940, -0.097361, -0.906449,
		0.535508, -0.778892, 0.326433,
		-0.737807, -0.619555, -0.267940,
		27.211105, 34.862499, 36.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048204, 34.791328, 36.059834>,  <27.727570, 35.296188, 36.403019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048204, 34.791328, 36.059834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673496, 34.772556, 35.921120>,  <27.448671, 34.761292, 35.837891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673496, 34.772556, 35.921120>,  <28.048204, 34.791328, 36.059834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673496, 34.772556, 35.921120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349943, -0.125118, -0.928378,
		0.000185, -0.991031, 0.133631,
		-0.936771, -0.046935, -0.346782,
		27.392466, 34.758476, 35.817085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706778, 34.532001, 36.043327>,  <28.048204, 34.791328, 36.059834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706778, 34.532001, 36.043327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911428, 34.873581, 36.081295>,  <29.034218, 35.078529, 36.104076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911428, 34.873581, 36.081295>,  <28.706778, 34.532001, 36.043327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911428, 34.873581, 36.081295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225329, -0.239961, 0.944270,
		0.829136, -0.461724, -0.315190,
		0.511625, 0.853950, 0.094921,
		29.064917, 35.129765, 36.109772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418322, 34.374256, 36.329865>,  <28.706778, 34.532001, 36.043327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418322, 34.374256, 36.329865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334890, 34.754574, 36.421497>,  <29.284832, 34.982765, 36.476479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334890, 34.754574, 36.421497>,  <29.418322, 34.374256, 36.329865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334890, 34.754574, 36.421497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264499, -0.170668, 0.949164,
		0.941560, 0.258569, -0.215887,
		-0.208579, 0.950797, 0.229085,
		29.272316, 35.039814, 36.490223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918154, 34.428555, 36.794472>,  <29.418322, 34.374256, 36.329865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918154, 34.428555, 36.794472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670271, 34.738411, 36.844910>,  <29.521542, 34.924324, 36.875172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670271, 34.738411, 36.844910>,  <29.918154, 34.428555, 36.794472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670271, 34.738411, 36.844910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215998, 0.013877, 0.976295,
		0.754525, 0.632253, -0.175920,
		-0.619707, 0.774638, 0.126095,
		29.484360, 34.970802, 36.882736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273178, 34.976311, 37.128868>,  <29.918154, 34.428555, 36.794472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273178, 34.976311, 37.128868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882971, 35.005253, 37.211941>,  <29.648848, 35.022617, 37.261784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882971, 35.005253, 37.211941>,  <30.273178, 34.976311, 37.128868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882971, 35.005253, 37.211941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216682, 0.154587, 0.963925,
		0.037638, 0.985326, -0.166480,
		-0.975516, 0.072353, 0.207684,
		29.590317, 35.026958, 37.274246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262447, 35.411217, 37.730370>,  <30.273178, 34.976311, 37.128868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262447, 35.411217, 37.730370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895187, 35.253563, 37.714088>,  <29.674831, 35.158970, 37.704319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895187, 35.253563, 37.714088>,  <30.262447, 35.411217, 37.730370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895187, 35.253563, 37.714088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120250, 0.179303, 0.976417,
		-0.377540, 0.901394, -0.212022,
		-0.918152, -0.394132, -0.040699,
		29.619741, 35.135323, 37.701878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803558, 35.954441, 38.058819>,  <30.262447, 35.411217, 37.730370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803558, 35.954441, 38.058819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532227, 35.662975, 38.096577>,  <29.369427, 35.488094, 38.119232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.532227, 35.662975, 38.096577>,  <29.803558, 35.954441, 38.058819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532227, 35.662975, 38.096577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025007, 0.151286, 0.988174,
		-0.734331, 0.667948, -0.120843,
		-0.678330, -0.728669, 0.094391,
		29.328728, 35.444374, 38.124893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289837, 36.191841, 38.470520>,  <29.803558, 35.954441, 38.058819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289837, 36.191841, 38.470520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312935, 35.795345, 38.518024>,  <29.326794, 35.557446, 38.546528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312935, 35.795345, 38.518024>,  <29.289837, 36.191841, 38.470520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312935, 35.795345, 38.518024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033067, 0.120792, 0.992127,
		-0.997784, -0.053361, 0.039753,
		0.057743, -0.991243, 0.118760,
		29.330257, 35.497971, 38.553654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766201, 35.993454, 38.945061>,  <29.289837, 36.191841, 38.470520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766201, 35.993454, 38.945061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022539, 35.686398, 38.947704>,  <29.176342, 35.502163, 38.949291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022539, 35.686398, 38.947704>,  <28.766201, 35.993454, 38.945061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022539, 35.686398, 38.947704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047524, 0.048266, 0.997703,
		-0.766196, -0.639061, 0.067413,
		0.640847, -0.767640, 0.006610,
		29.214794, 35.456104, 38.949688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538086, 35.595734, 39.469173>,  <28.766201, 35.993454, 38.945061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538086, 35.595734, 39.469173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918367, 35.476562, 39.434765>,  <29.146536, 35.405060, 39.414120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918367, 35.476562, 39.434765>,  <28.538086, 35.595734, 39.469173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918367, 35.476562, 39.434765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061709, -0.090080, 0.994021,
		-0.303895, -0.950329, -0.067254,
		0.950705, -0.297928, -0.086019,
		29.203579, 35.387184, 39.408958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544054, 34.897297, 39.896751>,  <28.538086, 35.595734, 39.469173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544054, 34.897297, 39.896751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915558, 35.027428, 39.825680>,  <29.138460, 35.105507, 39.783035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915558, 35.027428, 39.825680>,  <28.544054, 34.897297, 39.896751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915558, 35.027428, 39.825680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230544, -0.131613, 0.964120,
		0.290271, -0.936397, -0.197240,
		0.928758, 0.325328, -0.177678,
		29.194185, 35.125027, 39.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181192, 34.463127, 40.040573>,  <28.544054, 34.897297, 39.896751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181192, 34.463127, 40.040573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315298, 34.839642, 40.056454>,  <29.395761, 35.065552, 40.065983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315298, 34.839642, 40.056454>,  <29.181192, 34.463127, 40.040573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315298, 34.839642, 40.056454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162678, -0.099343, 0.981665,
		0.927974, -0.322657, -0.186433,
		0.335262, 0.941288, 0.039698,
		29.415876, 35.122028, 40.068363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636921, 34.446674, 40.578121>,  <29.181192, 34.463127, 40.040573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636921, 34.446674, 40.578121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615410, 34.843361, 40.531452>,  <29.602503, 35.081371, 40.503448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615410, 34.843361, 40.531452>,  <29.636921, 34.446674, 40.578121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615410, 34.843361, 40.531452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164837, 0.124057, 0.978488,
		0.984854, 0.033388, -0.170143,
		-0.053777, 0.991713, -0.116675,
		29.599277, 35.140877, 40.496449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170189, 34.673809, 41.026279>,  <29.636921, 34.446674, 40.578121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170189, 34.673809, 41.026279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925772, 34.976723, 40.934067>,  <29.779121, 35.158470, 40.878738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925772, 34.976723, 40.934067>,  <30.170189, 34.673809, 41.026279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925772, 34.976723, 40.934067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178994, 0.415858, 0.891641,
		0.771094, 0.503568, -0.389657,
		-0.611044, 0.757285, -0.230530,
		29.742458, 35.203907, 40.864906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519934, 35.195053, 41.257496>,  <30.170189, 34.673809, 41.026279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519934, 35.195053, 41.257496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143467, 35.326065, 41.224209>,  <29.917587, 35.404671, 41.204239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.143467, 35.326065, 41.224209>,  <30.519934, 35.195053, 41.257496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143467, 35.326065, 41.224209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094162, 0.490660, 0.866248,
		0.324552, 0.807451, -0.492635,
		-0.941169, 0.327530, -0.083213,
		29.861116, 35.424324, 41.199245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441479, 35.868160, 41.525860>,  <30.519934, 35.195053, 41.257496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441479, 35.868160, 41.525860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058857, 35.753319, 41.546181>,  <29.829285, 35.684414, 41.558372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058857, 35.753319, 41.546181>,  <30.441479, 35.868160, 41.525860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058857, 35.753319, 41.546181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092634, 0.464491, 0.880720,
		-0.276454, 0.837748, -0.470905,
		-0.956552, -0.287100, 0.050807,
		29.771891, 35.667187, 41.561424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177950, 36.413097, 41.977203>,  <30.441479, 35.868160, 41.525860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177950, 36.413097, 41.977203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902512, 36.123310, 41.964714>,  <29.737247, 35.949436, 41.957218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902512, 36.123310, 41.964714>,  <30.177950, 36.413097, 41.977203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902512, 36.123310, 41.964714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333743, 0.278400, 0.900616,
		-0.643777, 0.630583, -0.433492,
		-0.688598, -0.724471, -0.031225,
		29.695932, 35.905968, 41.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522551, 36.677135, 42.137020>,  <30.177950, 36.413097, 41.977203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522551, 36.677135, 42.137020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510660, 36.286594, 42.222668>,  <29.503527, 36.052269, 42.274055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510660, 36.286594, 42.222668>,  <29.522551, 36.677135, 42.137020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510660, 36.286594, 42.222668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201490, 0.215666, 0.955453,
		-0.979039, -0.014741, -0.203137,
		-0.029726, -0.976356, 0.214116,
		29.501743, 35.993687, 42.286903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922745, 36.642033, 42.645306>,  <29.522551, 36.677135, 42.137020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922745, 36.642033, 42.645306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117315, 36.294510, 42.682316>,  <29.234056, 36.085995, 42.704521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117315, 36.294510, 42.682316>,  <28.922745, 36.642033, 42.645306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117315, 36.294510, 42.682316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033579, 0.124411, 0.991662,
		-0.873077, -0.479262, 0.089690,
		0.486425, -0.868809, 0.092527,
		29.263243, 36.033867, 42.710075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455570, 36.106049, 43.118439>,  <28.922745, 36.642033, 42.645306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455570, 36.106049, 43.118439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834269, 35.982327, 43.154221>,  <29.061487, 35.908092, 43.175690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.834269, 35.982327, 43.154221>,  <28.455570, 36.106049, 43.118439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834269, 35.982327, 43.154221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039528, 0.164060, 0.985658,
		-0.319544, -0.936704, 0.143097,
		0.946747, -0.309304, 0.089450,
		29.118292, 35.889534, 43.181057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541088, 35.710354, 43.650372>,  <28.455570, 36.106049, 43.118439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541088, 35.710354, 43.650372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919273, 35.831535, 43.602516>,  <29.146185, 35.904243, 43.573803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919273, 35.831535, 43.602516>,  <28.541088, 35.710354, 43.650372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919273, 35.831535, 43.602516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064770, 0.185110, 0.980581,
		0.319223, -0.934853, 0.155392,
		0.945463, 0.302959, -0.119641,
		29.202913, 35.922424, 43.566624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996233, 35.415833, 44.212009>,  <28.541088, 35.710354, 43.650372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996233, 35.415833, 44.212009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150198, 35.752831, 44.061253>,  <29.242577, 35.955029, 43.970798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150198, 35.752831, 44.061253>,  <28.996233, 35.415833, 44.212009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150198, 35.752831, 44.061253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200494, 0.322274, 0.925171,
		0.900913, -0.431675, -0.044867,
		0.384913, 0.842494, -0.376889,
		29.265673, 36.005577, 43.948185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.659344, 33.122437, 47.836235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413143, 32.840923, 47.694332>,  <38.265423, 32.672016, 47.609192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413143, 32.840923, 47.694332>,  <38.659344, 33.122437, 47.836235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413143, 32.840923, 47.694332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551754, 0.063358, 0.831596,
		-0.562784, 0.707587, -0.427311,
		-0.615501, -0.703780, -0.354757,
		38.228493, 32.629787, 47.587906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095390, 33.364086, 48.160286>,  <38.659344, 33.122437, 47.836235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095390, 33.364086, 48.160286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965744, 33.002209, 48.049667>,  <37.887955, 32.785084, 47.983295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965744, 33.002209, 48.049667>,  <38.095390, 33.364086, 48.160286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965744, 33.002209, 48.049667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399216, -0.134222, 0.906979,
		-0.857656, 0.404370, -0.317664,
		-0.324118, -0.904693, -0.276547,
		37.868507, 32.730801, 47.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330318, 33.321461, 48.165791>,  <38.095390, 33.364086, 48.160286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330318, 33.321461, 48.165791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473690, 32.949646, 48.200417>,  <37.559711, 32.726559, 48.221191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473690, 32.949646, 48.200417>,  <37.330318, 33.321461, 48.165791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473690, 32.949646, 48.200417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507321, -0.116098, 0.853901,
		-0.783682, -0.349976, -0.513186,
		0.358425, -0.929536, 0.086567,
		37.581219, 32.670784, 48.226387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745861, 32.880688, 48.288147>,  <37.330318, 33.321461, 48.165791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745861, 32.880688, 48.288147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056953, 32.677921, 48.436832>,  <37.243607, 32.556259, 48.526043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056953, 32.677921, 48.436832>,  <36.745861, 32.880688, 48.288147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056953, 32.677921, 48.436832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515448, -0.175822, 0.838689,
		-0.359794, -0.843871, -0.398033,
		0.777728, -0.506921, 0.371712,
		37.290272, 32.525845, 48.548347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504459, 32.211483, 48.570065>,  <36.745861, 32.880688, 48.288147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504459, 32.211483, 48.570065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864433, 32.278996, 48.730873>,  <37.080418, 32.319504, 48.827358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864433, 32.278996, 48.730873>,  <36.504459, 32.211483, 48.570065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864433, 32.278996, 48.730873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371691, -0.185050, 0.909727,
		0.227939, -0.968127, -0.103799,
		0.899939, 0.168781, 0.402024,
		37.134415, 32.329628, 48.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557182, 31.717789, 49.061378>,  <36.504459, 32.211483, 48.570065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557182, 31.717789, 49.061378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863258, 31.952517, 49.167313>,  <37.046902, 32.093353, 49.230873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863258, 31.952517, 49.167313>,  <36.557182, 31.717789, 49.061378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863258, 31.952517, 49.167313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193491, -0.182721, 0.963937,
		0.614046, -0.788833, -0.026271,
		0.765186, 0.586818, 0.264831,
		37.092815, 32.128563, 49.246761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000610, 31.294891, 49.510586>,  <36.557182, 31.717789, 49.061378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000610, 31.294891, 49.510586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093430, 31.672522, 49.604286>,  <37.149120, 31.899099, 49.660507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093430, 31.672522, 49.604286>,  <37.000610, 31.294891, 49.510586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093430, 31.672522, 49.604286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052100, -0.228416, 0.972169,
		0.971308, -0.237794, -0.003817,
		0.232047, 0.944076, 0.234252,
		37.163044, 31.955744, 49.674561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503498, 31.228836, 49.958889>,  <37.000610, 31.294891, 49.510586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503498, 31.228836, 49.958889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337982, 31.587477, 50.021988>,  <37.238670, 31.802660, 50.059849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337982, 31.587477, 50.021988>,  <37.503498, 31.228836, 49.958889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337982, 31.587477, 50.021988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081076, -0.208886, 0.974573,
		0.906753, 0.390482, 0.159129,
		-0.413793, 0.896599, 0.157749,
		37.213844, 31.856457, 50.069313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805058, 31.368168, 50.514538>,  <37.503498, 31.228836, 49.958889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805058, 31.368168, 50.514538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.487015, 31.609465, 50.539520>,  <37.296188, 31.754242, 50.554512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.487015, 31.609465, 50.539520>,  <37.805058, 31.368168, 50.514538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487015, 31.609465, 50.539520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086973, -0.215346, 0.972657,
		0.600196, 0.767937, 0.223689,
		-0.795110, 0.603240, 0.062460,
		37.248482, 31.790436, 50.558258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761322, 31.617853, 51.262459>,  <37.805058, 31.368168, 50.514538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761322, 31.617853, 51.262459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395618, 31.707958, 51.127769>,  <37.176197, 31.762020, 51.046955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395618, 31.707958, 51.127769>,  <37.761322, 31.617853, 51.262459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395618, 31.707958, 51.127769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380856, -0.194576, 0.903930,
		0.138102, 0.954672, 0.263685,
		-0.914263, 0.225260, -0.336721,
		37.121338, 31.775536, 51.026752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412537, 32.197521, 51.663445>,  <37.761322, 31.617853, 51.262459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412537, 32.197521, 51.663445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142574, 31.955236, 51.494865>,  <36.980598, 31.809866, 51.393719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142574, 31.955236, 51.494865>,  <37.412537, 32.197521, 51.663445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142574, 31.955236, 51.494865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252943, -0.346636, 0.903252,
		-0.693199, 0.716210, 0.080735,
		-0.674903, -0.605712, -0.421448,
		36.940102, 31.773523, 51.368431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932266, 32.212975, 52.217808>,  <37.412537, 32.197521, 51.663445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932266, 32.212975, 52.217808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832085, 31.906725, 51.980793>,  <36.771976, 31.722977, 51.838585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832085, 31.906725, 51.980793>,  <36.932266, 32.212975, 52.217808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832085, 31.906725, 51.980793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207001, -0.555541, 0.805310,
		-0.945741, 0.324346, -0.019350,
		-0.250449, -0.765620, -0.592538,
		36.756950, 31.677038, 51.803032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243092, 31.913935, 52.373753>,  <36.932266, 32.212975, 52.217808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243092, 31.913935, 52.373753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528820, 31.651596, 52.276096>,  <36.700256, 31.494192, 52.217503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528820, 31.651596, 52.276096>,  <36.243092, 31.913935, 52.373753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528820, 31.651596, 52.276096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114322, -0.453537, 0.883875,
		-0.690413, -0.603463, -0.398951,
		0.714325, -0.655847, -0.244139,
		36.743118, 31.454842, 52.202854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118855, 32.598938, 52.685223>,  <36.243092, 31.913935, 52.373753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118855, 32.598938, 52.685223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.440151, 32.437881, 52.860802>,  <36.632931, 32.341248, 52.966148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.440151, 32.437881, 52.860802>,  <36.118855, 32.598938, 52.685223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440151, 32.437881, 52.860802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208027, -0.500891, -0.840139,
		0.558141, 0.766151, -0.318577,
		0.803245, -0.402643, 0.438948,
		36.681126, 32.317089, 52.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299927, 33.306515, 52.884567>,  <36.118855, 32.598938, 52.685223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299927, 33.306515, 52.884567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.163094, 33.680138, 52.925568>,  <36.080994, 33.904312, 52.950169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.163094, 33.680138, 52.925568>,  <36.299927, 33.306515, 52.884567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163094, 33.680138, 52.925568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105183, 0.146464, -0.983608,
		-0.933763, -0.325698, -0.148351,
		-0.342087, 0.934061, 0.102505,
		36.060467, 33.960358, 52.956318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886124, 33.443138, 52.377155>,  <36.299927, 33.306515, 52.884567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886124, 33.443138, 52.377155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973892, 33.814468, 52.497200>,  <36.026554, 34.037266, 52.569225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973892, 33.814468, 52.497200>,  <35.886124, 33.443138, 52.377155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973892, 33.814468, 52.497200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093634, 0.286149, -0.953599,
		-0.971126, 0.237341, -0.024136,
		0.219422, 0.928325, 0.300110,
		36.039719, 34.092964, 52.587234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556267, 33.891106, 51.910755>,  <35.886124, 33.443138, 52.377155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556267, 33.891106, 51.910755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845699, 34.107727, 52.081936>,  <36.019360, 34.237701, 52.184647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845699, 34.107727, 52.081936>,  <35.556267, 33.891106, 51.910755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845699, 34.107727, 52.081936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230044, 0.395355, -0.889255,
		-0.650773, 0.741900, 0.161492,
		0.723585, 0.541553, 0.427956,
		36.062775, 34.270191, 52.210323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487103, 34.662678, 51.782825>,  <35.556267, 33.891106, 51.910755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487103, 34.662678, 51.782825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866173, 34.575348, 51.875984>,  <36.093616, 34.522949, 51.931877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866173, 34.575348, 51.875984>,  <35.487103, 34.662678, 51.782825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866173, 34.575348, 51.875984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311201, 0.469266, -0.826404,
		0.071137, 0.855642, 0.512656,
		0.947678, -0.218327, 0.232894,
		36.150475, 34.509850, 51.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690918, 35.289005, 51.535034>,  <35.487103, 34.662678, 51.782825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690918, 35.289005, 51.535034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006771, 35.046932, 51.575500>,  <36.196281, 34.901688, 51.599781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.006771, 35.046932, 51.575500>,  <35.690918, 35.289005, 51.535034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006771, 35.046932, 51.575500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364539, 0.330088, -0.870720,
		0.493553, 0.724426, 0.481261,
		0.789631, -0.605185, 0.101166,
		36.243660, 34.865376, 51.605850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352154, 35.711712, 51.473743>,  <35.690918, 35.289005, 51.535034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352154, 35.711712, 51.473743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.465569, 35.334236, 51.405563>,  <36.533615, 35.107750, 51.364655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.465569, 35.334236, 51.405563>,  <36.352154, 35.711712, 51.473743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465569, 35.334236, 51.405563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477981, 0.293165, -0.828003,
		0.831350, 0.153296, 0.534189,
		0.283535, -0.943692, -0.170450,
		36.550629, 35.051128, 51.354427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915073, 35.859661, 51.037422>,  <36.352154, 35.711712, 51.473743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915073, 35.859661, 51.037422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840046, 35.467541, 51.012653>,  <36.795029, 35.232269, 50.997791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.840046, 35.467541, 51.012653>,  <36.915073, 35.859661, 51.037422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840046, 35.467541, 51.012653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211079, 0.021346, -0.977236,
		0.959305, -0.196365, 0.202917,
		-0.187564, -0.980298, -0.061926,
		36.783775, 35.173450, 50.994076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457355, 35.482948, 50.755672>,  <36.915073, 35.859661, 51.037422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457355, 35.482948, 50.755672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141502, 35.253853, 50.667625>,  <36.951992, 35.116398, 50.614796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141502, 35.253853, 50.667625>,  <37.457355, 35.482948, 50.755672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141502, 35.253853, 50.667625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151980, 0.165003, -0.974513,
		0.594460, -0.802961, -0.043247,
		-0.789632, -0.572737, -0.220122,
		36.904613, 35.082031, 50.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616486, 34.872688, 50.264603>,  <37.457355, 35.482948, 50.755672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616486, 34.872688, 50.264603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228737, 34.951172, 50.205517>,  <36.996086, 34.998264, 50.170067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228737, 34.951172, 50.205517>,  <37.616486, 34.872688, 50.264603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228737, 34.951172, 50.205517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170470, 0.104568, -0.979799,
		-0.176804, -0.974969, -0.134813,
		-0.969371, 0.196214, -0.147715,
		36.937927, 35.010036, 50.161201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605015, 34.707233, 49.568733>,  <37.616486, 34.872688, 50.264603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605015, 34.707233, 49.568733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236691, 34.826630, 49.669140>,  <37.015697, 34.898266, 49.729385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236691, 34.826630, 49.669140>,  <37.605015, 34.707233, 49.568733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236691, 34.826630, 49.669140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268561, -0.018568, -0.963084,
		-0.282811, -0.954232, 0.097261,
		-0.920811, 0.298492, 0.251019,
		36.960445, 34.916176, 49.744446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205589, 34.205402, 49.364281>,  <37.605015, 34.707233, 49.568733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205589, 34.205402, 49.364281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012993, 34.555939, 49.358871>,  <36.897434, 34.766262, 49.355625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012993, 34.555939, 49.358871>,  <37.205589, 34.205402, 49.364281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012993, 34.555939, 49.358871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131974, -0.087747, -0.987362,
		-0.866457, -0.473623, 0.157904,
		-0.481493, 0.876345, -0.013523,
		36.868546, 34.818844, 49.354816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938656, 34.159859, 48.827248>,  <37.205589, 34.205402, 49.364281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938656, 34.159859, 48.827248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838581, 34.543449, 48.880562>,  <36.778534, 34.773605, 48.912552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838581, 34.543449, 48.880562>,  <36.938656, 34.159859, 48.827248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838581, 34.543449, 48.880562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101002, 0.111061, -0.988668,
		-0.962914, -0.260817, 0.069072,
		-0.250190, 0.958979, 0.133285,
		36.763523, 34.831142, 48.920547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181309, 34.303947, 48.509190>,  <36.938656, 34.159859, 48.827248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181309, 34.303947, 48.509190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389931, 34.644764, 48.527111>,  <36.515102, 34.849255, 48.537865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389931, 34.644764, 48.527111>,  <36.181309, 34.303947, 48.509190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389931, 34.644764, 48.527111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151207, 0.143980, -0.977960,
		-0.839713, 0.503285, 0.203928,
		0.521554, 0.852041, 0.044802,
		36.546398, 34.900375, 48.540550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777306, 34.764103, 48.147377>,  <36.181309, 34.303947, 48.509190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777306, 34.764103, 48.147377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151482, 34.905487, 48.145500>,  <36.375988, 34.990318, 48.144375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151482, 34.905487, 48.145500>,  <35.777306, 34.764103, 48.147377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151482, 34.905487, 48.145500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091030, 0.228049, -0.969385,
		-0.341568, 0.907227, 0.245501,
		0.935438, 0.353459, -0.004691,
		36.432114, 35.011524, 48.144093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337315, 35.402225, 48.139584>,  <35.777306, 34.764103, 48.147377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337315, 35.402225, 48.139584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949261, 35.430401, 48.046738>,  <34.716427, 35.447308, 47.991028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949261, 35.430401, 48.046738>,  <35.337315, 35.402225, 48.139584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949261, 35.430401, 48.046738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242041, -0.344317, 0.907117,
		-0.016027, 0.936208, 0.351082,
		-0.970134, 0.070438, -0.232119,
		34.658222, 35.451530, 47.977100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080761, 35.760250, 48.674709>,  <35.337315, 35.402225, 48.139584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080761, 35.760250, 48.674709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761032, 35.581764, 48.513729>,  <34.569195, 35.474670, 48.417141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761032, 35.581764, 48.513729>,  <35.080761, 35.760250, 48.674709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761032, 35.581764, 48.513729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413962, -0.076553, 0.907070,
		-0.435560, 0.891644, -0.123527,
		-0.799327, -0.446219, -0.402450,
		34.521233, 35.447899, 48.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555527, 35.993927, 49.082115>,  <35.080761, 35.760250, 48.674709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555527, 35.993927, 49.082115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365448, 35.698841, 48.890293>,  <34.251400, 35.521790, 48.775200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365448, 35.698841, 48.890293>,  <34.555527, 35.993927, 49.082115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365448, 35.698841, 48.890293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568084, -0.158972, 0.807470,
		-0.671916, 0.656132, -0.343540,
		-0.475194, -0.737712, -0.479554,
		34.222889, 35.477528, 48.746426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739777, 36.119884, 49.160461>,  <34.555527, 35.993927, 49.082115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739777, 36.119884, 49.160461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817764, 35.729980, 49.116940>,  <33.864555, 35.496040, 49.090828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817764, 35.729980, 49.116940>,  <33.739777, 36.119884, 49.160461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817764, 35.729980, 49.116940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461069, -0.189000, 0.867003,
		-0.865681, -0.118871, -0.486278,
		0.194968, -0.974756, -0.108805,
		33.876255, 35.437553, 49.084297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077915, 35.714275, 49.243916>,  <33.739777, 36.119884, 49.160461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077915, 35.714275, 49.243916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368351, 35.459396, 49.347282>,  <33.542614, 35.306469, 49.409302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368351, 35.459396, 49.347282>,  <33.077915, 35.714275, 49.243916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368351, 35.459396, 49.347282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394933, -0.078821, 0.915322,
		-0.562869, -0.766663, -0.308880,
		0.726090, -0.637194, 0.258414,
		33.586178, 35.268238, 49.424809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786240, 35.352295, 49.753262>,  <33.077915, 35.714275, 49.243916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786240, 35.352295, 49.753262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154766, 35.199608, 49.782833>,  <33.375881, 35.107994, 49.800575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.154766, 35.199608, 49.782833>,  <32.786240, 35.352295, 49.753262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154766, 35.199608, 49.782833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222054, -0.360495, 0.905944,
		-0.319159, -0.851081, -0.416892,
		0.921320, -0.381713, 0.073931,
		33.431160, 35.085091, 49.805012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733662, 34.670738, 49.971336>,  <32.786240, 35.352295, 49.753262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733662, 34.670738, 49.971336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106663, 34.768486, 50.077709>,  <33.330463, 34.827133, 50.141533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.106663, 34.768486, 50.077709>,  <32.733662, 34.670738, 49.971336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106663, 34.768486, 50.077709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258146, -0.063962, 0.963986,
		0.252580, -0.967570, 0.003439,
		0.932505, 0.244372, 0.265930,
		33.386414, 34.841797, 50.157490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740177, 33.917202, 49.860470>,  <32.733662, 34.670738, 49.971336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740177, 33.917202, 49.860470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581448, 33.566296, 49.752441>,  <32.486210, 33.355751, 49.687626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581448, 33.566296, 49.752441>,  <32.740177, 33.917202, 49.860470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581448, 33.566296, 49.752441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262285, 0.173586, -0.949249,
		0.879624, -0.447518, 0.161211,
		-0.396822, -0.877266, -0.270068,
		32.462402, 33.303116, 49.671421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275272, 33.533115, 49.378979>,  <32.740177, 33.917202, 49.860470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275272, 33.533115, 49.378979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889565, 33.461506, 49.300869>,  <32.658138, 33.418541, 49.254005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889565, 33.461506, 49.300869>,  <33.275272, 33.533115, 49.378979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889565, 33.461506, 49.300869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131423, 0.316746, -0.939362,
		0.230014, -0.931464, -0.281902,
		-0.964272, -0.179018, -0.195271,
		32.600285, 33.407799, 49.242287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201416, 33.103951, 48.737011>,  <33.275272, 33.533115, 49.378979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201416, 33.103951, 48.737011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848450, 33.290894, 48.758598>,  <32.636669, 33.403061, 48.771549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848450, 33.290894, 48.758598>,  <33.201416, 33.103951, 48.737011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848450, 33.290894, 48.758598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012339, 0.137667, -0.990402,
		-0.470300, -0.873285, -0.127247,
		-0.882420, 0.467356, 0.053969,
		32.583725, 33.431099, 48.774788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974186, 32.845997, 48.158707>,  <33.201416, 33.103951, 48.737011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974186, 32.845997, 48.158707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708488, 33.130470, 48.250782>,  <32.549068, 33.301155, 48.306026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708488, 33.130470, 48.250782>,  <32.974186, 32.845997, 48.158707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708488, 33.130470, 48.250782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294115, 0.034454, -0.955149,
		-0.687221, -0.702157, 0.186285,
		-0.664247, 0.711187, 0.230193,
		32.509216, 33.343826, 48.319839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497963, 32.775017, 47.696915>,  <32.974186, 32.845997, 48.158707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497963, 32.775017, 47.696915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394661, 33.146152, 47.804562>,  <32.332680, 33.368832, 47.869148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394661, 33.146152, 47.804562>,  <32.497963, 32.775017, 47.696915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394661, 33.146152, 47.804562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208764, 0.218382, -0.953272,
		-0.943250, -0.302373, 0.137300,
		-0.258260, 0.927836, 0.269113,
		32.317184, 33.424503, 47.885296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869223, 32.934826, 47.438557>,  <32.497963, 32.775017, 47.696915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869223, 32.934826, 47.438557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039684, 33.291065, 47.502087>,  <32.141960, 33.504810, 47.540203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039684, 33.291065, 47.502087>,  <31.869223, 32.934826, 47.438557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039684, 33.291065, 47.502087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207758, 0.267222, -0.940972,
		-0.880472, 0.368000, 0.298906,
		0.426152, 0.890600, 0.158826,
		32.167530, 33.558247, 47.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339470, 33.429813, 47.203331>,  <31.869223, 32.934826, 47.438557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339470, 33.429813, 47.203331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697105, 33.608932, 47.199734>,  <31.911686, 33.716404, 47.197575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697105, 33.608932, 47.199734>,  <31.339470, 33.429813, 47.203331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697105, 33.608932, 47.199734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133022, 0.246315, -0.960018,
		-0.427680, 0.859538, 0.279794,
		0.894089, 0.447799, -0.008994,
		31.965332, 33.743271, 47.197037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.818501, 28.686495, 50.966576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.038551, 29.020515, 50.963676>,  <36.170582, 29.220928, 50.961937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.038551, 29.020515, 50.963676>,  <35.818501, 28.686495, 50.966576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038551, 29.020515, 50.963676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150156, 0.090377, -0.984523,
		-0.821473, 0.542697, 0.175106,
		0.550123, 0.835052, -0.007247,
		36.203587, 29.271030, 50.961502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389057, 29.254673, 50.622162>,  <35.818501, 28.686495, 50.966576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389057, 29.254673, 50.622162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768261, 29.381849, 50.627724>,  <35.995785, 29.458155, 50.631062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768261, 29.381849, 50.627724>,  <35.389057, 29.254673, 50.622162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768261, 29.381849, 50.627724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092034, 0.315716, -0.944380,
		-0.304646, 0.894001, 0.328563,
		0.948009, 0.317941, 0.013903,
		36.052662, 29.477232, 50.631893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416759, 29.790985, 50.162903>,  <35.389057, 29.254673, 50.622162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416759, 29.790985, 50.162903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797859, 29.670757, 50.180431>,  <36.026520, 29.598619, 50.190948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.797859, 29.670757, 50.180431>,  <35.416759, 29.790985, 50.162903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797859, 29.670757, 50.180431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117792, 0.232628, -0.965406,
		0.279979, 0.924955, 0.257042,
		0.952752, -0.300571, 0.043821,
		36.083683, 29.580585, 50.193577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827545, 30.341705, 49.788818>,  <35.416759, 29.790985, 50.162903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827545, 30.341705, 49.788818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054348, 30.012224, 49.790344>,  <36.190430, 29.814535, 49.791260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054348, 30.012224, 49.790344>,  <35.827545, 30.341705, 49.788818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054348, 30.012224, 49.790344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176757, 0.117143, -0.977259,
		0.804524, 0.554788, 0.212016,
		0.567007, -0.823704, 0.003818,
		36.224449, 29.765114, 49.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428402, 30.477621, 49.416340>,  <35.827545, 30.341705, 49.788818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428402, 30.477621, 49.416340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.406574, 30.078583, 49.399277>,  <36.393478, 29.839159, 49.389038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.406574, 30.078583, 49.399277>,  <36.428402, 30.477621, 49.416340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406574, 30.078583, 49.399277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135706, 0.034920, -0.990134,
		0.989245, -0.059821, 0.133474,
		-0.054570, -0.997598, -0.042662,
		36.390202, 29.779303, 49.386478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832035, 30.367466, 48.890697>,  <36.428402, 30.477621, 49.416340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832035, 30.367466, 48.890697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635410, 30.023113, 48.943230>,  <36.517433, 29.816502, 48.974747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.635410, 30.023113, 48.943230>,  <36.832035, 30.367466, 48.890697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635410, 30.023113, 48.943230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197323, -0.256991, -0.946055,
		0.848191, -0.439133, 0.296199,
		-0.491564, -0.860882, 0.131326,
		36.487942, 29.764849, 48.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340839, 29.760984, 48.618984>,  <36.832035, 30.367466, 48.890697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340839, 29.760984, 48.618984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.961056, 29.635433, 48.618145>,  <36.733185, 29.560102, 48.617641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.961056, 29.635433, 48.618145>,  <37.340839, 29.760984, 48.618984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961056, 29.635433, 48.618145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044632, -0.128386, -0.990719,
		0.310698, -0.940743, 0.135906,
		-0.949460, -0.313880, -0.002098,
		36.676216, 29.541269, 48.617516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398743, 29.096956, 48.416241>,  <37.340839, 29.760984, 48.618984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398743, 29.096956, 48.416241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033043, 29.225031, 48.316940>,  <36.813622, 29.301876, 48.257359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.033043, 29.225031, 48.316940>,  <37.398743, 29.096956, 48.416241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033043, 29.225031, 48.316940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184123, -0.217462, -0.958545,
		-0.360898, -0.922059, 0.139860,
		-0.914249, 0.320185, -0.248254,
		36.758766, 29.321087, 48.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032871, 28.466871, 48.188000>,  <37.398743, 29.096956, 48.416241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032871, 28.466871, 48.188000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.835564, 28.786509, 48.050514>,  <36.717178, 28.978291, 47.968025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.835564, 28.786509, 48.050514>,  <37.032871, 28.466871, 48.188000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835564, 28.786509, 48.050514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368080, -0.166271, -0.914806,
		-0.788163, -0.577760, -0.212113,
		-0.493270, 0.799091, -0.343711,
		36.687584, 29.026236, 47.947399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555759, 28.241585, 47.666603>,  <37.032871, 28.466871, 48.188000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555759, 28.241585, 47.666603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599709, 28.627359, 47.570442>,  <36.626080, 28.858824, 47.512745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599709, 28.627359, 47.570442>,  <36.555759, 28.241585, 47.666603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599709, 28.627359, 47.570442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103378, -0.251642, -0.962283,
		-0.988555, 0.080877, -0.127350,
		0.109874, 0.964435, -0.240401,
		36.632671, 28.916691, 47.498322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317085, 28.178614, 47.021454>,  <36.555759, 28.241585, 47.666603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317085, 28.178614, 47.021454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499844, 28.534340, 47.029079>,  <36.609501, 28.747776, 47.033653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.499844, 28.534340, 47.029079>,  <36.317085, 28.178614, 47.021454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499844, 28.534340, 47.029079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114379, -0.037482, -0.992730,
		-0.882133, 0.455759, -0.118844,
		0.456900, 0.889314, 0.019065,
		36.636913, 28.801134, 47.034798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073700, 28.505438, 46.528248>,  <36.317085, 28.178614, 47.021454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073700, 28.505438, 46.528248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409935, 28.717646, 46.572002>,  <36.611675, 28.844971, 46.598255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.409935, 28.717646, 46.572002>,  <36.073700, 28.505438, 46.528248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409935, 28.717646, 46.572002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180113, -0.083291, -0.980113,
		-0.510860, 0.843570, -0.165567,
		0.840584, 0.530521, 0.109388,
		36.662109, 28.876802, 46.604820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767738, 29.185322, 46.215820>,  <36.073700, 28.505438, 46.528248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767738, 29.185322, 46.215820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447838, 29.400951, 46.110149>,  <35.255898, 29.530329, 46.046745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447838, 29.400951, 46.110149>,  <35.767738, 29.185322, 46.215820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447838, 29.400951, 46.110149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401946, -0.153979, 0.902624,
		0.445904, 0.828064, 0.339824,
		-0.799756, 0.539074, -0.264177,
		35.207912, 29.562674, 46.030895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619514, 29.677738, 46.786785>,  <35.767738, 29.185322, 46.215820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619514, 29.677738, 46.786785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279972, 29.630926, 46.580582>,  <35.076248, 29.602839, 46.456860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.279972, 29.630926, 46.580582>,  <35.619514, 29.677738, 46.786785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279972, 29.630926, 46.580582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506373, -0.099938, 0.856504,
		-0.151757, 0.988087, 0.025571,
		-0.848856, -0.117032, -0.515507,
		35.025314, 29.595816, 46.425930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129028, 30.185213, 47.014370>,  <35.619514, 29.677738, 46.786785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129028, 30.185213, 47.014370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915001, 29.879097, 46.871246>,  <34.786583, 29.695427, 46.785370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915001, 29.879097, 46.871246>,  <35.129028, 30.185213, 47.014370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915001, 29.879097, 46.871246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603529, 0.049902, 0.795778,
		-0.591146, 0.641747, -0.488576,
		-0.535069, -0.765291, -0.357814,
		34.754478, 29.649509, 46.763901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407230, 30.371771, 46.944530>,  <35.129028, 30.185213, 47.014370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407230, 30.371771, 46.944530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397911, 29.971918, 46.950069>,  <34.392319, 29.732006, 46.953392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397911, 29.971918, 46.950069>,  <34.407230, 30.371771, 46.944530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397911, 29.971918, 46.950069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709714, 0.026289, 0.703999,
		-0.704105, 0.006574, -0.710066,
		-0.023295, -0.999633, 0.013845,
		34.390923, 29.672028, 46.954224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729370, 30.294317, 47.104027>,  <34.407230, 30.371771, 46.944530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729370, 30.294317, 47.104027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.860218, 29.920740, 47.161636>,  <33.938728, 29.696594, 47.196201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.860218, 29.920740, 47.161636>,  <33.729370, 30.294317, 47.104027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860218, 29.920740, 47.161636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676737, -0.125148, 0.725510,
		-0.659561, -0.334795, -0.672972,
		0.327119, -0.933943, 0.144026,
		33.958355, 29.640556, 47.204845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040585, 29.920349, 47.252731>,  <33.729370, 30.294317, 47.104027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040585, 29.920349, 47.252731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.322330, 29.659641, 47.365208>,  <33.491379, 29.503218, 47.432693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.322330, 29.659641, 47.365208>,  <33.040585, 29.920349, 47.252731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322330, 29.659641, 47.365208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605296, -0.344576, 0.717554,
		-0.370793, -0.675618, -0.637222,
		0.704364, -0.651773, 0.281183,
		33.533642, 29.464111, 47.449562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894779, 29.238575, 47.195534>,  <33.040585, 29.920349, 47.252731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894779, 29.238575, 47.195534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154175, 29.226252, 47.499775>,  <33.309811, 29.218857, 47.682320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154175, 29.226252, 47.499775>,  <32.894779, 29.238575, 47.195534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154175, 29.226252, 47.499775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639320, -0.564409, 0.522218,
		0.413203, -0.824920, -0.385708,
		0.648485, -0.030809, 0.760604,
		33.348721, 29.217009, 47.727955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715343, 28.651754, 47.548595>,  <32.894779, 29.238575, 47.195534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715343, 28.651754, 47.548595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953995, 28.808718, 47.828609>,  <33.097187, 28.902897, 47.996616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.953995, 28.808718, 47.828609>,  <32.715343, 28.651754, 47.548595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953995, 28.808718, 47.828609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473383, -0.532289, 0.701838,
		0.648028, -0.750122, -0.131820,
		0.596630, 0.392410, 0.700034,
		33.132984, 28.926441, 48.038620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799500, 28.120594, 48.082035>,  <32.715343, 28.651754, 47.548595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799500, 28.120594, 48.082035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882996, 28.470715, 48.256516>,  <32.933094, 28.680786, 48.361206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882996, 28.470715, 48.256516>,  <32.799500, 28.120594, 48.082035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882996, 28.470715, 48.256516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351461, -0.349088, 0.868684,
		0.912634, -0.334640, 0.234764,
		0.208743, 0.875301, 0.436203,
		32.945618, 28.733305, 48.387375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892155, 27.937368, 48.800137>,  <32.799500, 28.120594, 48.082035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892155, 27.937368, 48.800137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840454, 28.333881, 48.810379>,  <32.809433, 28.571789, 48.816525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840454, 28.333881, 48.810379>,  <32.892155, 27.937368, 48.800137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840454, 28.333881, 48.810379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501717, -0.087642, 0.860580,
		0.855321, 0.098383, 0.508671,
		-0.129247, 0.991282, 0.025602,
		32.801682, 28.631266, 48.818058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840618, 28.129072, 49.454525>,  <32.892155, 27.937368, 48.800137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840618, 28.129072, 49.454525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714153, 28.486738, 49.327713>,  <32.638275, 28.701338, 49.251625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714153, 28.486738, 49.327713>,  <32.840618, 28.129072, 49.454525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714153, 28.486738, 49.327713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414408, 0.170444, 0.893988,
		0.853410, 0.414024, 0.316662,
		-0.316159, 0.894166, -0.317034,
		32.619305, 28.754988, 49.232601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120319, 28.685692, 49.953182>,  <32.840618, 28.129072, 49.454525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120319, 28.685692, 49.953182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790089, 28.804308, 49.761143>,  <32.591949, 28.875477, 49.645920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790089, 28.804308, 49.761143>,  <33.120319, 28.685692, 49.953182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790089, 28.804308, 49.761143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372469, 0.352767, 0.858384,
		0.423906, 0.887480, -0.180783,
		-0.825573, 0.296538, -0.480099,
		32.542416, 28.893269, 49.617115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947418, 29.240412, 50.220470>,  <33.120319, 28.685692, 49.953182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947418, 29.240412, 50.220470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608326, 29.099026, 50.062271>,  <32.404873, 29.014194, 49.967350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608326, 29.099026, 50.062271>,  <32.947418, 29.240412, 50.220470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608326, 29.099026, 50.062271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480881, 0.197466, 0.854260,
		-0.223853, 0.914369, -0.337372,
		-0.847728, -0.353464, -0.395499,
		32.354008, 28.992987, 49.943623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524284, 29.843119, 50.028946>,  <32.947418, 29.240412, 50.220470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524284, 29.843119, 50.028946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315376, 29.513571, 50.117008>,  <32.190029, 29.315842, 50.169846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.315376, 29.513571, 50.117008>,  <32.524284, 29.843119, 50.028946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315376, 29.513571, 50.117008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311013, 0.424398, 0.850386,
		-0.794041, 0.375664, -0.477887,
		-0.522274, -0.823870, 0.220153,
		32.158695, 29.266409, 50.183056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175743, 30.401184, 50.421036>,  <32.524284, 29.843119, 50.028946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175743, 30.401184, 50.421036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002880, 30.608067, 50.716534>,  <31.899164, 30.732197, 50.893833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.002880, 30.608067, 50.716534>,  <32.175743, 30.401184, 50.421036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002880, 30.608067, 50.716534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047092, 0.831012, -0.554257,
		-0.900570, -0.204735, -0.383481,
		-0.432153, 0.517206, 0.738743,
		31.873234, 30.763229, 50.938156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807083, 30.827776, 50.068924>,  <32.175743, 30.401184, 50.421036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807083, 30.827776, 50.068924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813108, 31.020451, 50.419411>,  <31.816725, 31.136055, 50.629704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813108, 31.020451, 50.419411>,  <31.807083, 30.827776, 50.068924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813108, 31.020451, 50.419411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031754, 0.875640, -0.481920,
		-0.999382, 0.035083, -0.002104,
		0.015065, 0.481689, 0.876213,
		31.817629, 31.164957, 50.682274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414675, 31.351055, 49.990459>,  <31.807083, 30.827776, 50.068924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414675, 31.351055, 49.990459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605526, 31.480810, 50.317169>,  <31.720037, 31.558664, 50.513195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605526, 31.480810, 50.317169>,  <31.414675, 31.351055, 49.990459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605526, 31.480810, 50.317169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055534, 0.916398, -0.396397,
		-0.877076, 0.234492, 0.419226,
		0.477130, 0.324389, 0.816773,
		31.748665, 31.578127, 50.562202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098372, 32.023739, 50.304420>,  <31.414675, 31.351055, 49.990459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098372, 32.023739, 50.304420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.475786, 32.012974, 50.436489>,  <31.702234, 32.006516, 50.515732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.475786, 32.012974, 50.436489>,  <31.098372, 32.023739, 50.304420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475786, 32.012974, 50.436489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169772, 0.895135, -0.412203,
		-0.284458, 0.444983, 0.849161,
		0.943536, -0.026909, 0.330174,
		31.758846, 32.004902, 50.535542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328997, 32.689568, 50.586613>,  <31.098372, 32.023739, 50.304420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328997, 32.689568, 50.586613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.677454, 32.515110, 50.496376>,  <31.886528, 32.410435, 50.442234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.677454, 32.515110, 50.496376>,  <31.328997, 32.689568, 50.586613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677454, 32.515110, 50.496376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254931, 0.794377, -0.551339,
		0.419670, 0.422783, 0.803201,
		0.871141, -0.436141, -0.225596,
		31.938797, 32.384266, 50.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830172, 33.287125, 50.606918>,  <31.328997, 32.689568, 50.586613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830172, 33.287125, 50.606918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.006760, 32.999931, 50.391659>,  <32.112713, 32.827614, 50.262505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.006760, 32.999931, 50.391659>,  <31.830172, 33.287125, 50.606918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006760, 32.999931, 50.391659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237591, 0.671890, -0.701508,
		0.865248, 0.181837, 0.467207,
		0.441471, -0.717982, -0.538149,
		32.139202, 32.784538, 50.230213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542210, 33.473965, 50.551682>,  <31.830172, 33.287125, 50.606918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542210, 33.473965, 50.551682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.451443, 33.209080, 50.266029>,  <32.396980, 33.050148, 50.094639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.451443, 33.209080, 50.266029>,  <32.542210, 33.473965, 50.551682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451443, 33.209080, 50.266029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255278, 0.667175, -0.699794,
		0.939862, -0.341099, 0.017652,
		-0.226922, -0.662215, -0.714127,
		32.383366, 33.010414, 50.051792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189339, 33.973064, 50.551987>,  <32.542210, 33.473965, 50.551682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189339, 33.973064, 50.551987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411663, 34.304806, 50.574814>,  <33.545055, 34.503849, 50.588509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411663, 34.304806, 50.574814>,  <33.189339, 33.973064, 50.551987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411663, 34.304806, 50.574814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198358, -0.198967, 0.959722,
		0.807299, -0.522101, -0.275095,
		0.555807, 0.829350, 0.057064,
		33.578403, 34.553612, 50.591934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807026, 33.766392, 50.917889>,  <33.189339, 33.973064, 50.551987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807026, 33.766392, 50.917889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764713, 34.162739, 50.951317>,  <33.739326, 34.400547, 50.971375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764713, 34.162739, 50.951317>,  <33.807026, 33.766392, 50.917889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764713, 34.162739, 50.951317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244864, -0.055496, 0.967968,
		0.963770, 0.122856, -0.236758,
		-0.105781, 0.990872, 0.083568,
		33.732979, 34.459999, 50.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292038, 33.925198, 51.393471>,  <33.807026, 33.766392, 50.917889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292038, 33.925198, 51.393471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043045, 34.237900, 51.408306>,  <33.893650, 34.425522, 51.417210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043045, 34.237900, 51.408306>,  <34.292038, 33.925198, 51.393471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043045, 34.237900, 51.408306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115703, 0.045049, 0.992262,
		0.774038, 0.621952, -0.118494,
		-0.622478, 0.781758, 0.037092,
		33.856300, 34.472427, 51.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559341, 34.425102, 51.909328>,  <34.292038, 33.925198, 51.393471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559341, 34.425102, 51.909328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166027, 34.485649, 51.868847>,  <33.930038, 34.521976, 51.844559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166027, 34.485649, 51.868847>,  <34.559341, 34.425102, 51.909328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166027, 34.485649, 51.868847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044855, 0.337314, 0.940323,
		0.176469, 0.929143, -0.324886,
		-0.983284, 0.151366, -0.101202,
		33.871040, 34.531059, 51.838486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457233, 35.050148, 52.328308>,  <34.559341, 34.425102, 51.909328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457233, 35.050148, 52.328308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094715, 34.887920, 52.280743>,  <33.877205, 34.790585, 52.252201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094715, 34.887920, 52.280743>,  <34.457233, 35.050148, 52.328308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094715, 34.887920, 52.280743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218166, 0.207942, 0.953501,
		-0.361983, 0.890097, -0.276938,
		-0.906296, -0.405569, -0.118917,
		33.822826, 34.766251, 52.245068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078293, 35.513073, 52.777988>,  <34.457233, 35.050148, 52.328308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078293, 35.513073, 52.777988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870102, 35.172615, 52.750702>,  <33.745186, 34.968338, 52.734329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870102, 35.172615, 52.750702>,  <34.078293, 35.513073, 52.777988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870102, 35.172615, 52.750702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181993, 0.032524, 0.982762,
		-0.834256, 0.523919, -0.171830,
		-0.520476, -0.851147, -0.068216,
		33.713959, 34.917271, 52.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487633, 35.604378, 53.096966>,  <34.078293, 35.513073, 52.777988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487633, 35.604378, 53.096966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455048, 35.205715, 53.094631>,  <33.435497, 34.966518, 53.093231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455048, 35.205715, 53.094631>,  <33.487633, 35.604378, 53.096966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455048, 35.205715, 53.094631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271322, 0.016545, 0.962347,
		-0.959035, 0.079977, -0.271763,
		-0.081462, -0.996659, -0.005833,
		33.430611, 34.906719, 53.092880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811382, 35.414379, 53.411625>,  <33.487633, 35.604378, 53.096966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811382, 35.414379, 53.411625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.025864, 35.076805, 53.418095>,  <33.154552, 34.874260, 53.421978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.025864, 35.076805, 53.418095>,  <32.811382, 35.414379, 53.411625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025864, 35.076805, 53.418095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280843, -0.160303, 0.946272,
		-0.795999, -0.511935, -0.322968,
		0.536202, -0.843934, 0.016173,
		33.186726, 34.823624, 53.422947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387066, 34.951900, 53.805962>,  <32.811382, 35.414379, 53.411625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387066, 34.951900, 53.805962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763878, 34.817738, 53.802311>,  <32.989964, 34.737240, 53.800121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763878, 34.817738, 53.802311>,  <32.387066, 34.951900, 53.805962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763878, 34.817738, 53.802311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082706, -0.258469, 0.962473,
		-0.325180, -0.905922, -0.271225,
		0.942029, -0.335409, -0.009124,
		33.046486, 34.717117, 53.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.453762, 34.014339, 37.924648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303299, 33.654610, 37.835461>,  <35.213020, 33.438770, 37.781948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303299, 33.654610, 37.835461>,  <35.453762, 34.014339, 37.924648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303299, 33.654610, 37.835461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705001, 0.433954, -0.560944,
		0.601230, -0.053811, -0.797262,
		-0.376160, -0.899326, -0.222970,
		35.190453, 33.384811, 37.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293533, 34.751339, 38.171967>,  <35.453762, 34.014339, 37.924648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293533, 34.751339, 38.171967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683678, 34.839485, 38.176151>,  <35.917763, 34.892372, 38.178661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683678, 34.839485, 38.176151>,  <35.293533, 34.751339, 38.171967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683678, 34.839485, 38.176151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083358, 0.324202, 0.942308,
		0.204255, -0.919964, 0.334583,
		0.975362, 0.220361, 0.010466,
		35.976288, 34.905594, 38.179291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558331, 34.470798, 38.769798>,  <35.293533, 34.751339, 38.171967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558331, 34.470798, 38.769798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828289, 34.755814, 38.693058>,  <35.990265, 34.926823, 38.647015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828289, 34.755814, 38.693058>,  <35.558331, 34.470798, 38.769798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828289, 34.755814, 38.693058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045737, 0.299879, 0.952880,
		0.736492, -0.634323, 0.234977,
		0.674899, 0.712536, -0.191846,
		36.030758, 34.969574, 38.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975986, 34.455086, 39.355274>,  <35.558331, 34.470798, 38.769798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975986, 34.455086, 39.355274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078979, 34.807545, 39.196636>,  <36.140774, 35.019020, 39.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078979, 34.807545, 39.196636>,  <35.975986, 34.455086, 39.355274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078979, 34.807545, 39.196636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034158, 0.418476, 0.907585,
		0.965680, -0.220138, 0.137847,
		0.257480, 0.881145, -0.396594,
		36.156223, 35.071888, 39.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579346, 34.674335, 39.794292>,  <35.975986, 34.455086, 39.355274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579346, 34.674335, 39.794292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415119, 34.999554, 39.629181>,  <36.316582, 35.194687, 39.530113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415119, 34.999554, 39.629181>,  <36.579346, 34.674335, 39.794292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415119, 34.999554, 39.629181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007589, 0.449629, 0.893183,
		0.911797, 0.369847, -0.178434,
		-0.410571, 0.813048, -0.412777,
		36.291946, 35.243469, 39.505348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747967, 35.216183, 40.159294>,  <36.579346, 34.674335, 39.794292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747967, 35.216183, 40.159294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440918, 35.406300, 39.987312>,  <36.256691, 35.520370, 39.884125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440918, 35.406300, 39.987312>,  <36.747967, 35.216183, 40.159294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440918, 35.406300, 39.987312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318838, 0.298756, 0.899493,
		0.555973, 0.827552, -0.077789,
		-0.767617, 0.475292, -0.429955,
		36.210632, 35.548885, 39.858326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780552, 35.899250, 40.420105>,  <36.747967, 35.216183, 40.159294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780552, 35.899250, 40.420105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406734, 35.842693, 40.289482>,  <36.182446, 35.808758, 40.211109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406734, 35.842693, 40.289482>,  <36.780552, 35.899250, 40.420105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406734, 35.842693, 40.289482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355404, 0.324790, 0.876470,
		-0.017862, 0.935158, -0.353781,
		-0.934542, -0.141391, -0.326557,
		36.126373, 35.800278, 40.191513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427834, 36.554649, 40.526508>,  <36.780552, 35.899250, 40.420105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427834, 36.554649, 40.526508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156460, 36.260796, 40.524139>,  <35.993637, 36.084484, 40.522717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156460, 36.260796, 40.524139>,  <36.427834, 36.554649, 40.526508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156460, 36.260796, 40.524139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340484, 0.307271, 0.888625,
		-0.650996, 0.604892, -0.458595,
		-0.678435, -0.734636, -0.005923,
		35.952930, 36.040405, 40.522362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900135, 36.812515, 40.836433>,  <36.427834, 36.554649, 40.526508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900135, 36.812515, 40.836433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788162, 36.428818, 40.851898>,  <35.720978, 36.198601, 40.861179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788162, 36.428818, 40.851898>,  <35.900135, 36.812515, 40.836433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788162, 36.428818, 40.851898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263262, 0.115435, 0.957793,
		-0.923217, 0.257941, -0.284846,
		-0.279935, -0.959240, 0.038665,
		35.704182, 36.141045, 40.863499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308372, 36.881233, 41.022751>,  <35.900135, 36.812515, 40.836433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308372, 36.881233, 41.022751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367992, 36.493420, 41.100510>,  <35.403763, 36.260731, 41.147163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367992, 36.493420, 41.100510>,  <35.308372, 36.881233, 41.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367992, 36.493420, 41.100510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353101, 0.131442, 0.926306,
		-0.923636, -0.206705, -0.322752,
		0.149049, -0.969534, 0.194393,
		35.412708, 36.202560, 41.158829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726017, 36.683678, 41.293266>,  <35.308372, 36.881233, 41.022751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726017, 36.683678, 41.293266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008644, 36.442642, 41.441673>,  <35.178219, 36.298023, 41.530720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008644, 36.442642, 41.441673>,  <34.726017, 36.683678, 41.293266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008644, 36.442642, 41.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397209, 0.096194, 0.912673,
		-0.585654, -0.792235, -0.171386,
		0.706565, -0.602587, 0.371019,
		35.220615, 36.261868, 41.552979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377064, 36.302601, 41.680466>,  <34.726017, 36.683678, 41.293266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377064, 36.302601, 41.680466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744778, 36.245956, 41.827362>,  <34.965405, 36.211967, 41.915501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744778, 36.245956, 41.827362>,  <34.377064, 36.302601, 41.680466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744778, 36.245956, 41.827362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355751, 0.100257, 0.929188,
		-0.168405, -0.984832, 0.041785,
		0.919283, -0.141615, 0.367239,
		35.020561, 36.203472, 41.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101036, 35.634056, 41.363125>,  <34.377064, 36.302601, 41.680466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101036, 35.634056, 41.363125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767471, 35.413609, 41.374847>,  <33.567333, 35.281338, 41.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767471, 35.413609, 41.374847>,  <34.101036, 35.634056, 41.363125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767471, 35.413609, 41.374847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119854, -0.232667, -0.965143,
		0.538730, -0.801330, 0.260078,
		-0.833909, -0.551123, 0.029302,
		33.517300, 35.248272, 41.383636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185280, 34.961464, 41.049023>,  <34.101036, 35.634056, 41.363125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185280, 34.961464, 41.049023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790207, 35.021027, 41.029819>,  <33.553162, 35.056763, 41.018295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790207, 35.021027, 41.029819>,  <34.185280, 34.961464, 41.049023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790207, 35.021027, 41.029819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002267, -0.293215, -0.956044,
		-0.156437, -0.944379, 0.289266,
		-0.987685, 0.148905, -0.048011,
		33.493900, 35.065697, 41.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943604, 34.496723, 40.566071>,  <34.185280, 34.961464, 41.049023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943604, 34.496723, 40.566071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626156, 34.735657, 40.612309>,  <33.435688, 34.879017, 40.640049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626156, 34.735657, 40.612309>,  <33.943604, 34.496723, 40.566071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626156, 34.735657, 40.612309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320389, -0.248796, -0.914030,
		-0.517222, -0.762426, 0.388829,
		-0.793620, 0.597333, 0.115591,
		33.388069, 34.914856, 40.646984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354504, 34.081539, 40.446793>,  <33.943604, 34.496723, 40.566071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354504, 34.081539, 40.446793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269997, 34.466522, 40.378628>,  <33.219292, 34.697514, 40.337727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269997, 34.466522, 40.378628>,  <33.354504, 34.081539, 40.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269997, 34.466522, 40.378628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403977, -0.244744, -0.881421,
		-0.890038, -0.117371, 0.440517,
		-0.211267, 0.962457, -0.170416,
		33.206615, 34.755260, 40.327503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745495, 33.973686, 40.167648>,  <33.354504, 34.081539, 40.446793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745495, 33.973686, 40.167648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838531, 34.347321, 40.059288>,  <32.894352, 34.571503, 39.994270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838531, 34.347321, 40.059288>,  <32.745495, 33.973686, 40.167648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838531, 34.347321, 40.059288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520423, -0.115776, -0.846024,
		-0.821622, 0.337759, 0.459192,
		0.232589, 0.934085, -0.270901,
		32.908310, 34.627544, 39.978016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133533, 34.145947, 39.879341>,  <32.745495, 33.973686, 40.167648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133533, 34.145947, 39.879341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418938, 34.389454, 39.740601>,  <32.590179, 34.535557, 39.657356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418938, 34.389454, 39.740601>,  <32.133533, 34.145947, 39.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418938, 34.389454, 39.740601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300744, -0.181016, -0.936369,
		-0.632814, 0.772424, 0.053925,
		0.713512, 0.608765, -0.346851,
		32.632992, 34.572083, 39.636547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755079, 34.498928, 39.288677>,  <32.133533, 34.145947, 39.879341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755079, 34.498928, 39.288677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124912, 34.620846, 39.197239>,  <32.346813, 34.693996, 39.142376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124912, 34.620846, 39.197239>,  <31.755079, 34.498928, 39.288677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124912, 34.620846, 39.197239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161478, -0.229937, -0.959715,
		-0.345074, 0.924246, -0.163378,
		0.924580, 0.304791, -0.228591,
		32.402287, 34.712284, 39.128662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783604, 35.023262, 38.788250>,  <31.755079, 34.498928, 39.288677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783604, 35.023262, 38.788250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117920, 34.805122, 38.762794>,  <32.318508, 34.674240, 38.747520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117920, 34.805122, 38.762794>,  <31.783604, 35.023262, 38.788250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117920, 34.805122, 38.762794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234420, -0.249625, -0.939539,
		0.496492, 0.800175, -0.336475,
		0.835789, -0.545350, -0.063640,
		32.368656, 34.641518, 38.743702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055992, 35.194328, 38.104591>,  <31.783604, 35.023262, 38.788250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055992, 35.194328, 38.104591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213715, 34.836994, 38.190826>,  <32.308350, 34.622593, 38.242565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213715, 34.836994, 38.190826>,  <32.055992, 35.194328, 38.104591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213715, 34.836994, 38.190826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183411, -0.306372, -0.934075,
		0.900489, 0.328775, -0.284653,
		0.394310, -0.893333, 0.215584,
		32.332008, 34.568993, 38.255501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376297, 35.216206, 37.477951>,  <32.055992, 35.194328, 38.104591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376297, 35.216206, 37.477951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400265, 34.848579, 37.633759>,  <32.414646, 34.628002, 37.727242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400265, 34.848579, 37.633759>,  <32.376297, 35.216206, 37.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400265, 34.848579, 37.633759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008270, -0.389747, -0.920885,
		0.998169, 0.058398, -0.015752,
		0.059917, -0.919069, 0.389516,
		32.418240, 34.572861, 37.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835499, 34.877621, 37.038101>,  <32.376297, 35.216206, 37.477951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835499, 34.877621, 37.038101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656097, 34.586853, 37.246113>,  <32.548458, 34.412392, 37.370922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656097, 34.586853, 37.246113>,  <32.835499, 34.877621, 37.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656097, 34.586853, 37.246113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084697, -0.544649, -0.834377,
		0.889761, -0.418263, 0.182707,
		-0.448500, -0.726921, 0.520033,
		32.521549, 34.368778, 37.402122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218750, 34.200096, 36.974400>,  <32.835499, 34.877621, 37.038101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218750, 34.200096, 36.974400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841763, 34.114246, 37.076916>,  <32.615570, 34.062737, 37.138424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841763, 34.114246, 37.076916>,  <33.218750, 34.200096, 36.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841763, 34.114246, 37.076916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094073, -0.565404, -0.819432,
		0.320780, -0.796400, 0.512686,
		-0.942470, -0.214627, 0.256290,
		32.559021, 34.049858, 37.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304031, 33.558929, 36.824249>,  <33.218750, 34.200096, 36.974400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304031, 33.558929, 36.824249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910679, 33.627632, 36.847755>,  <32.674667, 33.668854, 36.861858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910679, 33.627632, 36.847755>,  <33.304031, 33.558929, 36.824249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910679, 33.627632, 36.847755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143941, -0.540504, -0.828937,
		-0.110609, -0.823624, 0.556246,
		-0.983385, 0.171754, 0.058769,
		32.615662, 33.679157, 36.865387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013260, 32.888603, 36.749130>,  <33.304031, 33.558929, 36.824249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013260, 32.888603, 36.749130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752594, 33.174141, 36.646557>,  <32.596195, 33.345463, 36.585011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752594, 33.174141, 36.646557>,  <33.013260, 32.888603, 36.749130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752594, 33.174141, 36.646557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162806, -0.461841, -0.871893,
		-0.740826, -0.526435, 0.417185,
		-0.651668, 0.713841, -0.256437,
		32.557095, 33.388294, 36.569626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594208, 32.460091, 36.853836>,  <33.013260, 32.888603, 36.749130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594208, 32.460091, 36.853836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741310, 32.123863, 36.694736>,  <33.829571, 31.922127, 36.599277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741310, 32.123863, 36.694736>,  <33.594208, 32.460091, 36.853836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741310, 32.123863, 36.694736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638933, 0.539174, -0.548685,
		0.675664, -0.052357, 0.735348,
		0.367753, -0.840565, -0.397753,
		33.851635, 31.871693, 36.575409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186256, 32.461784, 37.105221>,  <33.594208, 32.460091, 36.853836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186256, 32.461784, 37.105221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173252, 32.287807, 36.745274>,  <34.165451, 32.183422, 36.529305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173252, 32.287807, 36.745274>,  <34.186256, 32.461784, 37.105221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173252, 32.287807, 36.745274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675257, 0.654227, -0.340610,
		0.736866, -0.618717, 0.272430,
		-0.032510, -0.434944, -0.899870,
		34.163498, 32.157326, 36.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826958, 32.538284, 36.884495>,  <34.186256, 32.461784, 37.105221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826958, 32.538284, 36.884495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575768, 32.486996, 36.577457>,  <34.425053, 32.456223, 36.393234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575768, 32.486996, 36.577457>,  <34.826958, 32.538284, 36.884495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575768, 32.486996, 36.577457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539165, 0.639584, -0.547936,
		0.561197, -0.757952, -0.332514,
		-0.627980, -0.128220, -0.767594,
		34.387375, 32.448528, 36.347179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576992, 32.294231, 36.625748>,  <34.826958, 32.538284, 36.884495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576992, 32.294231, 36.625748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967323, 32.219257, 36.670696>,  <36.201523, 32.174271, 36.697666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967323, 32.219257, 36.670696>,  <35.576992, 32.294231, 36.625748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967323, 32.219257, 36.670696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172055, -0.341871, 0.923862,
		-0.134749, -0.920864, -0.365857,
		0.975828, -0.187437, 0.112372,
		36.260071, 32.163025, 36.704407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707764, 31.650442, 36.894714>,  <35.576992, 32.294231, 36.625748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707764, 31.650442, 36.894714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055614, 31.825865, 36.985420>,  <36.264324, 31.931118, 37.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055614, 31.825865, 36.985420>,  <35.707764, 31.650442, 36.894714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055614, 31.825865, 36.985420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069734, -0.345589, 0.935791,
		0.488764, -0.829600, -0.269951,
		0.869624, 0.438557, 0.226763,
		36.316502, 31.957432, 37.053448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917328, 31.245144, 37.397270>,  <35.707764, 31.650442, 36.894714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917328, 31.245144, 37.397270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179752, 31.541834, 37.453026>,  <36.337208, 31.719849, 37.486481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179752, 31.541834, 37.453026>,  <35.917328, 31.245144, 37.397270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179752, 31.541834, 37.453026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161810, -0.318642, 0.933962,
		0.737161, -0.590177, -0.329066,
		0.656057, 0.741726, 0.139394,
		36.376568, 31.764351, 37.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644028, 31.006845, 37.715706>,  <35.917328, 31.245144, 37.397270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644028, 31.006845, 37.715706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563087, 31.390274, 37.795898>,  <36.514523, 31.620331, 37.844013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563087, 31.390274, 37.795898>,  <36.644028, 31.006845, 37.715706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563087, 31.390274, 37.795898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020637, -0.208841, 0.977732,
		0.979096, 0.193706, 0.062041,
		-0.202349, 0.958574, 0.200478,
		36.502384, 31.677847, 37.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111637, 31.180691, 38.258888>,  <36.644028, 31.006845, 37.715706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111637, 31.180691, 38.258888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847431, 31.480982, 38.263309>,  <36.688908, 31.661158, 38.265961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847431, 31.480982, 38.263309>,  <37.111637, 31.180691, 38.258888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847431, 31.480982, 38.263309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060675, 0.038698, 0.997407,
		0.748354, 0.659477, -0.071111,
		-0.660518, 0.750729, 0.011054,
		36.649277, 31.706200, 38.266624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303852, 31.646259, 38.796791>,  <37.111637, 31.180691, 38.258888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303852, 31.646259, 38.796791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922836, 31.755589, 38.743176>,  <36.694225, 31.821186, 38.711006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922836, 31.755589, 38.743176>,  <37.303852, 31.646259, 38.796791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922836, 31.755589, 38.743176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099743, 0.135773, 0.985706,
		0.287613, 0.952293, -0.102067,
		-0.952539, 0.273322, -0.134034,
		36.637074, 31.837585, 38.702965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113590, 32.391853, 39.124092>,  <37.303852, 31.646259, 38.796791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113590, 32.391853, 39.124092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783260, 32.166443, 39.115620>,  <36.585060, 32.031197, 39.110535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783260, 32.166443, 39.115620>,  <37.113590, 32.391853, 39.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783260, 32.166443, 39.115620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194723, 0.249710, 0.948540,
		-0.529234, 0.787457, -0.315948,
		-0.825829, -0.563522, -0.021181,
		36.535511, 31.997387, 39.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624111, 32.765232, 39.621956>,  <37.113590, 32.391853, 39.124092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624111, 32.765232, 39.621956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452988, 32.413727, 39.537338>,  <36.350315, 32.202824, 39.486568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452988, 32.413727, 39.537338>,  <36.624111, 32.765232, 39.621956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452988, 32.413727, 39.537338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137509, -0.168046, 0.976141,
		-0.893348, 0.446692, -0.048946,
		-0.427810, -0.878764, -0.211548,
		36.324646, 32.150097, 39.473873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042587, 32.791656, 40.008053>,  <36.624111, 32.765232, 39.621956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042587, 32.791656, 40.008053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060963, 32.399666, 39.930553>,  <36.071987, 32.164471, 39.884052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060963, 32.399666, 39.930553>,  <36.042587, 32.791656, 40.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060963, 32.399666, 39.930553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286558, -0.198732, 0.937225,
		-0.956961, 0.012468, -0.289949,
		0.045936, -0.979975, -0.193751,
		36.074745, 32.105675, 39.872429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328854, 32.372051, 40.230782>,  <36.042587, 32.791656, 40.008053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328854, 32.372051, 40.230782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652306, 32.136837, 40.238125>,  <35.846378, 31.995710, 40.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652306, 32.136837, 40.238125>,  <35.328854, 32.372051, 40.230782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652306, 32.136837, 40.238125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160667, -0.190712, 0.968408,
		-0.565954, -0.786033, -0.248693,
		0.808629, -0.588031, 0.018355,
		35.894894, 31.960428, 40.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118713, 31.934151, 40.690895>,  <35.328854, 32.372051, 40.230782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118713, 31.934151, 40.690895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503654, 31.850784, 40.621109>,  <35.734619, 31.800764, 40.579239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503654, 31.850784, 40.621109>,  <35.118713, 31.934151, 40.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503654, 31.850784, 40.621109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065846, -0.443997, 0.893605,
		-0.263701, -0.871453, -0.413560,
		0.962354, -0.208413, -0.174464,
		35.792362, 31.788260, 40.568771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128513, 31.368597, 41.040661>,  <35.118713, 31.934151, 40.690895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128513, 31.368597, 41.040661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509674, 31.468468, 40.971809>,  <35.738373, 31.528391, 40.930496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509674, 31.468468, 40.971809>,  <35.128513, 31.368597, 41.040661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509674, 31.468468, 40.971809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262125, -0.392659, 0.881538,
		0.152512, -0.885143, -0.439615,
		0.952906, 0.249679, -0.172133,
		35.795547, 31.543371, 40.920170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569290, 30.801596, 41.089741>,  <35.128513, 31.368597, 41.040661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569290, 30.801596, 41.089741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 31.103666, 41.139389>,  <35.981236, 31.284908, 41.169178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826756, 31.103666, 41.139389>,  <35.569290, 30.801596, 41.089741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826756, 31.103666, 41.139389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358115, -0.440537, 0.823213,
		0.676349, -0.485425, -0.553998,
		0.643666, 0.755175, 0.124119,
		36.019855, 31.330219, 41.176624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292057, 30.511940, 41.172943>,  <35.569290, 30.801596, 41.089741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292057, 30.511940, 41.172943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258678, 30.868795, 41.350540>,  <36.238651, 31.082909, 41.457096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258678, 30.868795, 41.350540>,  <36.292057, 30.511940, 41.172943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258678, 30.868795, 41.350540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141948, -0.430358, 0.891427,
		0.986351, 0.137409, -0.090726,
		-0.083445, 0.892138, 0.443989,
		36.233646, 31.136436, 41.483738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822220, 30.605888, 41.674786>,  <36.292057, 30.511940, 41.172943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822220, 30.605888, 41.674786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582348, 30.893513, 41.815258>,  <36.438423, 31.066088, 41.899544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582348, 30.893513, 41.815258>,  <36.822220, 30.605888, 41.674786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582348, 30.893513, 41.815258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098107, -0.369479, 0.924045,
		0.794200, 0.588589, 0.151026,
		-0.599684, 0.719060, 0.351186,
		36.402443, 31.109230, 41.920612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174519, 30.904829, 42.353775>,  <36.822220, 30.605888, 41.674786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174519, 30.904829, 42.353775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785686, 30.994947, 42.380028>,  <36.552387, 31.049019, 42.395779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785686, 30.994947, 42.380028>,  <37.174519, 30.904829, 42.353775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785686, 30.994947, 42.380028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017796, -0.208100, 0.977946,
		0.233987, 0.951806, 0.198280,
		-0.972077, 0.225298, 0.065631,
		36.494064, 31.062536, 42.399715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119514, 31.178082, 43.035728>,  <37.174519, 30.904829, 42.353775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119514, 31.178082, 43.035728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744865, 31.094618, 42.923157>,  <36.520077, 31.044540, 42.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744865, 31.094618, 42.923157>,  <37.119514, 31.178082, 43.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744865, 31.094618, 42.923157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185935, -0.384772, 0.904090,
		-0.296933, 0.899117, 0.321589,
		-0.936621, -0.208659, -0.281429,
		36.463879, 31.032021, 42.838730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735214, 31.448273, 43.565865>,  <37.119514, 31.178082, 43.035728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735214, 31.448273, 43.565865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480301, 31.202738, 43.379498>,  <36.327354, 31.055416, 43.267677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480301, 31.202738, 43.379498>,  <36.735214, 31.448273, 43.565865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480301, 31.202738, 43.379498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375904, -0.280178, 0.883287,
		-0.672734, 0.738041, -0.052192,
		-0.637279, -0.613837, -0.465918,
		36.289116, 31.018587, 43.239723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104015, 31.587454, 43.798992>,  <36.735214, 31.448273, 43.565865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104015, 31.587454, 43.798992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053207, 31.219099, 43.651569>,  <36.022720, 30.998087, 43.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053207, 31.219099, 43.651569>,  <36.104015, 31.587454, 43.798992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053207, 31.219099, 43.651569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435154, -0.282161, 0.855001,
		-0.891350, 0.268983, -0.364887,
		-0.127024, -0.920887, -0.368553,
		36.015099, 30.942833, 43.541004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361546, 31.378723, 43.827370>,  <36.104015, 31.587454, 43.798992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361546, 31.378723, 43.827370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591488, 31.051575, 43.817329>,  <35.729454, 30.855286, 43.811306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591488, 31.051575, 43.817329>,  <35.361546, 31.378723, 43.827370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591488, 31.051575, 43.817329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580373, -0.429164, 0.692088,
		-0.576814, -0.383278, -0.721376,
		0.574851, -0.817873, -0.025103,
		35.763943, 30.806213, 43.809799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902252, 30.689665, 43.791988>,  <35.361546, 31.378723, 43.827370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902252, 30.689665, 43.791988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257927, 30.580856, 43.939148>,  <35.471333, 30.515572, 44.027443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257927, 30.580856, 43.939148>,  <34.902252, 30.689665, 43.791988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257927, 30.580856, 43.939148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455740, -0.455252, 0.764883,
		-0.040577, -0.847791, -0.528775,
		0.889187, -0.272021, 0.367900,
		35.524685, 30.499250, 44.049519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822723, 30.060522, 43.972412>,  <34.902252, 30.689665, 43.791988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822723, 30.060522, 43.972412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155125, 30.151478, 44.175480>,  <35.354565, 30.206051, 44.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155125, 30.151478, 44.175480>,  <34.822723, 30.060522, 43.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155125, 30.151478, 44.175480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303785, -0.579015, 0.756609,
		0.465991, -0.782967, -0.412086,
		0.831003, 0.227387, 0.507670,
		35.404427, 30.219694, 44.327782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988605, 29.382454, 44.293499>,  <34.822723, 30.060522, 43.972412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988605, 29.382454, 44.293499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164532, 29.680672, 44.493786>,  <35.270088, 29.859604, 44.613960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164532, 29.680672, 44.493786>,  <34.988605, 29.382454, 44.293499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164532, 29.680672, 44.493786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257113, -0.429675, 0.865605,
		0.860496, -0.509450, 0.002711,
		0.439818, 0.745547, 0.500720,
		35.296478, 29.904335, 44.644001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309944, 29.013332, 44.881275>,  <34.988605, 29.382454, 44.293499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309944, 29.013332, 44.881275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308834, 29.392485, 45.008724>,  <35.308167, 29.619976, 45.085194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308834, 29.392485, 45.008724>,  <35.309944, 29.013332, 44.881275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308834, 29.392485, 45.008724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349890, -0.299402, 0.887658,
		0.936787, -0.109018, 0.332484,
		-0.002776, 0.947878, 0.318620,
		35.308002, 29.676847, 45.104309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690948, 28.997972, 45.518044>,  <35.309944, 29.013332, 44.881275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690948, 28.997972, 45.518044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460602, 29.324701, 45.531788>,  <35.322395, 29.520739, 45.540035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460602, 29.324701, 45.531788>,  <35.690948, 28.997972, 45.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460602, 29.324701, 45.531788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251194, -0.216778, 0.943350,
		0.778000, 0.534608, 0.330015,
		-0.575862, 0.816824, 0.034363,
		35.287842, 29.569748, 45.542095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214371, 28.717386, 45.847889>,  <35.690948, 28.997972, 45.518044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214371, 28.717386, 45.847889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563622, 28.827414, 46.008877>,  <36.773174, 28.893431, 46.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563622, 28.827414, 46.008877>,  <36.214371, 28.717386, 45.847889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563622, 28.827414, 46.008877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363852, 0.181722, -0.913558,
		-0.324429, 0.944094, 0.058583,
		0.873131, 0.275069, 0.402467,
		36.825562, 28.909935, 46.129616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477436, 29.459488, 45.582752>,  <36.214371, 28.717386, 45.847889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477436, 29.459488, 45.582752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787563, 29.244627, 45.715630>,  <36.973640, 29.115709, 45.795357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787563, 29.244627, 45.715630>,  <36.477436, 29.459488, 45.582752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787563, 29.244627, 45.715630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446058, 0.093352, -0.890122,
		0.447122, 0.838302, 0.311979,
		0.775315, -0.537154, 0.332192,
		37.020157, 29.083481, 45.815289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147518, 29.778637, 45.335114>,  <36.477436, 29.459488, 45.582752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147518, 29.778637, 45.335114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268223, 29.412952, 45.443306>,  <37.340645, 29.193542, 45.508221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268223, 29.412952, 45.443306>,  <37.147518, 29.778637, 45.335114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268223, 29.412952, 45.443306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597603, -0.039673, -0.800810,
		0.742839, 0.403294, 0.534363,
		0.301762, -0.914210, 0.270481,
		37.358753, 29.138689, 45.524448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867195, 29.774338, 45.286419>,  <37.147518, 29.778637, 45.335114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867195, 29.774338, 45.286419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774265, 29.385387, 45.277412>,  <37.718506, 29.152018, 45.272011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774265, 29.385387, 45.277412>,  <37.867195, 29.774338, 45.286419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774265, 29.385387, 45.277412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629139, -0.132586, -0.765902,
		0.741760, -0.192106, 0.642563,
		-0.232329, -0.972377, -0.022514,
		37.704567, 29.093674, 45.270657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479404, 29.295622, 45.412041>,  <37.867195, 29.774338, 45.286419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479404, 29.295622, 45.412041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185951, 29.119066, 45.205372>,  <38.009880, 29.013134, 45.081371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185951, 29.119066, 45.205372>,  <38.479404, 29.295622, 45.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185951, 29.119066, 45.205372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553266, 0.053486, -0.831286,
		0.394554, -0.895721, 0.204965,
		-0.733637, -0.441387, -0.516675,
		37.965858, 28.986650, 45.050369>
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
