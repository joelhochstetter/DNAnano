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
	<24.440434, 35.244629, 35.139851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445347, 35.156155, 34.749790>,  <24.448294, 35.103069, 34.515755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445347, 35.156155, 34.749790>,  <24.440434, 35.244629, 35.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.445347, 35.156155, 34.749790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891333, 0.444413, -0.089575,
		0.453184, -0.868087, 0.202607,
		0.012282, -0.221184, -0.975155,
		24.449032, 35.089798, 34.457245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121681, 34.959106, 34.962158>,  <24.440434, 35.244629, 35.139851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121681, 34.959106, 34.962158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965633, 35.107906, 34.625252>,  <24.872004, 35.197186, 34.423107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965633, 35.107906, 34.625252>,  <25.121681, 34.959106, 34.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965633, 35.107906, 34.625252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781115, 0.618035, -0.088830,
		0.487507, -0.692564, -0.531687,
		-0.390122, 0.372004, -0.842270,
		24.848597, 35.219509, 34.372570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696148, 34.957451, 34.491150>,  <25.121681, 34.959106, 34.962158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696148, 34.957451, 34.491150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415028, 35.241085, 34.468250>,  <25.246355, 35.411266, 34.454510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415028, 35.241085, 34.468250>,  <25.696148, 34.957451, 34.491150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415028, 35.241085, 34.468250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690246, 0.699174, 0.186323,
		0.172146, 0.091431, -0.980819,
		-0.702799, 0.709081, -0.057250,
		25.204187, 35.453808, 34.451077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916580, 35.530441, 34.113121>,  <25.696148, 34.957451, 34.491150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916580, 35.530441, 34.113121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634420, 35.673595, 34.357853>,  <25.465124, 35.759487, 34.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634420, 35.673595, 34.357853>,  <25.916580, 35.530441, 34.113121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634420, 35.673595, 34.357853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596249, 0.766343, 0.239176,
		-0.383273, 0.533516, -0.753964,
		-0.705400, 0.357881, 0.611827,
		25.422800, 35.780960, 34.541401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830685, 36.237835, 33.945015>,  <25.916580, 35.530441, 34.113121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830685, 36.237835, 33.945015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678566, 36.233799, 34.314938>,  <25.587296, 36.231377, 34.536892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678566, 36.233799, 34.314938>,  <25.830685, 36.237835, 33.945015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678566, 36.233799, 34.314938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427197, 0.884963, 0.185322,
		-0.820291, 0.465553, -0.332240,
		-0.380297, -0.010086, 0.924810,
		25.564476, 36.230774, 34.592381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128193, 36.842514, 33.976284>,  <25.830685, 36.237835, 33.945015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128193, 36.842514, 33.976284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997974, 36.713825, 34.331928>,  <25.919844, 36.636612, 34.545315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997974, 36.713825, 34.331928>,  <26.128193, 36.842514, 33.976284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997974, 36.713825, 34.331928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236977, 0.882559, 0.406117,
		-0.915348, 0.342909, -0.211075,
		-0.325547, -0.321718, 0.889110,
		25.900311, 36.617310, 34.598660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569399, 37.307541, 34.210987>,  <26.128193, 36.842514, 33.976284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569399, 37.307541, 34.210987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725227, 37.122169, 34.529350>,  <25.818724, 37.010948, 34.720367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725227, 37.122169, 34.529350>,  <25.569399, 37.307541, 34.210987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725227, 37.122169, 34.529350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086789, 0.878808, 0.469217,
		-0.916898, -0.113717, 0.382578,
		0.389570, -0.463428, 0.795908,
		25.842098, 36.983143, 34.768124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256685, 37.529995, 34.756077>,  <25.569399, 37.307541, 34.210987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256685, 37.529995, 34.756077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598164, 37.386776, 34.907341>,  <25.803051, 37.300842, 34.998100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598164, 37.386776, 34.907341>,  <25.256685, 37.529995, 34.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598164, 37.386776, 34.907341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170141, 0.878063, 0.447278,
		-0.492193, -0.317499, 0.810519,
		0.853697, -0.358049, 0.378157,
		25.854273, 37.279362, 35.020786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328358, 37.782867, 35.330563>,  <25.256685, 37.529995, 34.756077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328358, 37.782867, 35.330563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710970, 37.703358, 35.245201>,  <25.940536, 37.655651, 35.193985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710970, 37.703358, 35.245201>,  <25.328358, 37.782867, 35.330563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710970, 37.703358, 35.245201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248676, 0.938182, 0.240780,
		0.152353, -0.283382, 0.946828,
		0.956529, -0.198770, -0.213405,
		25.997929, 37.643726, 35.181179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686056, 38.193298, 35.776623>,  <25.328358, 37.782867, 35.330563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686056, 38.193298, 35.776623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974602, 38.092037, 35.518768>,  <26.147728, 38.031281, 35.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974602, 38.092037, 35.518768>,  <25.686056, 38.193298, 35.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974602, 38.092037, 35.518768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512983, 0.820645, 0.251774,
		0.465278, -0.512306, 0.721844,
		0.721363, -0.253149, -0.644632,
		26.191011, 38.016094, 35.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390949, 38.308056, 36.164310>,  <25.686056, 38.193298, 35.776623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390949, 38.308056, 36.164310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447353, 38.300098, 35.768387>,  <26.481195, 38.295322, 35.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447353, 38.300098, 35.768387>,  <26.390949, 38.308056, 36.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447353, 38.300098, 35.768387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503519, 0.862269, 0.054404,
		0.852399, -0.506059, 0.131606,
		0.141011, -0.019892, -0.989808,
		26.489656, 38.294132, 35.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010193, 38.361740, 36.127834>,  <26.390949, 38.308056, 36.164310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010193, 38.361740, 36.127834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919720, 38.486641, 35.758762>,  <26.865437, 38.561581, 35.537319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919720, 38.486641, 35.758762>,  <27.010193, 38.361740, 36.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919720, 38.486641, 35.758762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644533, 0.758193, 0.098591,
		0.730355, -0.572398, -0.372749,
		-0.226183, 0.312256, -0.922680,
		26.851864, 38.580318, 35.481960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613541, 38.552910, 35.805218>,  <27.010193, 38.361740, 36.127834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613541, 38.552910, 35.805218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360262, 38.737110, 35.556381>,  <27.208294, 38.847630, 35.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360262, 38.737110, 35.556381>,  <27.613541, 38.552910, 35.805218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360262, 38.737110, 35.556381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596588, 0.802438, -0.013235,
		0.493095, -0.379512, -0.782833,
		-0.633198, 0.460503, -0.622091,
		27.170303, 38.875259, 35.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119396, 38.953053, 35.311234>,  <27.613541, 38.552910, 35.805218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119396, 38.953053, 35.311234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764626, 39.137634, 35.303051>,  <27.551764, 39.248383, 35.298141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764626, 39.137634, 35.303051>,  <28.119396, 38.953053, 35.311234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764626, 39.137634, 35.303051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454696, 0.864417, -0.214558,
		-0.081323, -0.199601, -0.976497,
		-0.886926, 0.461458, -0.020461,
		27.498549, 39.276073, 35.296913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006634, 39.375381, 34.655277>,  <28.119396, 38.953053, 35.311234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006634, 39.375381, 34.655277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773861, 39.545536, 34.932522>,  <27.634197, 39.647629, 35.098869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773861, 39.545536, 34.932522>,  <28.006634, 39.375381, 34.655277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773861, 39.545536, 34.932522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444451, 0.880101, -0.166993,
		-0.681044, 0.210875, -0.701221,
		-0.581930, 0.425388, 0.693111,
		27.599281, 39.673153, 35.140453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738007, 40.024017, 34.320473>,  <28.006634, 39.375381, 34.655277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738007, 40.024017, 34.320473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650564, 40.090775, 34.705048>,  <27.598099, 40.130829, 34.935791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650564, 40.090775, 34.705048>,  <27.738007, 40.024017, 34.320473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650564, 40.090775, 34.705048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417053, 0.906726, -0.062568,
		-0.882200, 0.387292, -0.267821,
		-0.218608, 0.166893, 0.961435,
		27.584982, 40.140842, 34.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287582, 40.612938, 34.308445>,  <27.738007, 40.024017, 34.320473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287582, 40.612938, 34.308445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479465, 40.566689, 34.656357>,  <27.594595, 40.538937, 34.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479465, 40.566689, 34.656357>,  <27.287582, 40.612938, 34.308445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479465, 40.566689, 34.656357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346722, 0.935582, -0.066853,
		-0.806017, 0.333641, 0.488897,
		0.479709, -0.115627, 0.869776,
		27.623379, 40.532001, 34.917290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284521, 41.286285, 34.551929>,  <27.287582, 40.612938, 34.308445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284521, 41.286285, 34.551929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518547, 41.097645, 34.815838>,  <27.658962, 40.984459, 34.974182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518547, 41.097645, 34.815838>,  <27.284521, 41.286285, 34.551929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518547, 41.097645, 34.815838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374404, 0.878719, 0.296097,
		-0.719391, 0.073784, 0.690676,
		0.585063, -0.471601, 0.659768,
		27.694065, 40.956165, 35.013767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272675, 41.705441, 35.210613>,  <27.284521, 41.286285, 34.551929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272675, 41.705441, 35.210613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615679, 41.500538, 35.191566>,  <27.821482, 41.377594, 35.180138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615679, 41.500538, 35.191566>,  <27.272675, 41.705441, 35.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615679, 41.500538, 35.191566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506258, 0.823736, 0.255267,
		-0.091536, -0.243002, 0.965697,
		0.857510, -0.512259, -0.047620,
		27.872932, 41.346859, 35.177280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637110, 41.839802, 35.859756>,  <27.272675, 41.705441, 35.210613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637110, 41.839802, 35.859756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913069, 41.695499, 35.608711>,  <28.078644, 41.608917, 35.458084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913069, 41.695499, 35.608711>,  <27.637110, 41.839802, 35.859756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913069, 41.695499, 35.608711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673638, 0.637371, 0.374126,
		0.265055, -0.680893, 0.682738,
		0.689897, -0.360754, -0.627613,
		28.120037, 41.587273, 35.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229403, 41.600353, 36.285957>,  <27.637110, 41.839802, 35.859756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229403, 41.600353, 36.285957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351051, 41.684959, 35.914413>,  <28.424040, 41.735722, 35.691486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351051, 41.684959, 35.914413>,  <28.229403, 41.600353, 36.285957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351051, 41.684959, 35.914413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639092, 0.677767, 0.363584,
		0.706450, -0.704198, 0.070948,
		0.304121, 0.211512, -0.928855,
		28.442287, 41.748413, 35.635757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981819, 41.728592, 36.391354>,  <28.229403, 41.600353, 36.285957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981819, 41.728592, 36.391354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917036, 41.879642, 36.026680>,  <28.878166, 41.970272, 35.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917036, 41.879642, 36.026680>,  <28.981819, 41.728592, 36.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917036, 41.879642, 36.026680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644568, 0.740040, 0.192024,
		0.747196, -0.556544, -0.363258,
		-0.161956, 0.377624, -0.911686,
		28.868450, 41.992931, 35.753174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612478, 42.107124, 36.366348>,  <28.981819, 41.728592, 36.391354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612478, 42.107124, 36.366348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390657, 42.234970, 36.059017>,  <29.257565, 42.311676, 35.874619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390657, 42.234970, 36.059017>,  <29.612478, 42.107124, 36.366348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390657, 42.234970, 36.059017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420475, 0.904385, 0.072725,
		0.718103, -0.282731, -0.635917,
		-0.554552, 0.319611, -0.768323,
		29.224291, 42.330853, 35.828522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046267, 42.395340, 35.787521>,  <29.612478, 42.107124, 36.366348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046267, 42.395340, 35.787521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686300, 42.562416, 35.737427>,  <29.470320, 42.662663, 35.707371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686300, 42.562416, 35.737427>,  <30.046267, 42.395340, 35.787521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686300, 42.562416, 35.737427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423663, 0.905494, -0.024291,
		0.103251, -0.074916, -0.991830,
		-0.899916, 0.417694, -0.125232,
		29.416325, 42.687725, 35.699856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972307, 42.841938, 35.136219>,  <30.046267, 42.395340, 35.787521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972307, 42.841938, 35.136219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723736, 42.956718, 35.427830>,  <29.574593, 43.025585, 35.602798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723736, 42.956718, 35.427830>,  <29.972307, 42.841938, 35.136219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723736, 42.956718, 35.427830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448704, 0.893145, 0.030932,
		-0.642255, 0.346341, -0.683781,
		-0.621428, 0.286949, 0.729031,
		29.537308, 43.042805, 35.646538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805466, 43.611744, 35.062717>,  <29.972307, 42.841938, 35.136219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805466, 43.611744, 35.062717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718468, 43.502960, 35.437679>,  <29.666269, 43.437691, 35.662659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718468, 43.502960, 35.437679>,  <29.805466, 43.611744, 35.062717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718468, 43.502960, 35.437679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475440, 0.809241, 0.345089,
		-0.852439, 0.520736, -0.046705,
		-0.217496, -0.271962, 0.937407,
		29.653219, 43.421371, 35.718903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486013, 44.148998, 35.332649>,  <29.805466, 43.611744, 35.062717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486013, 44.148998, 35.332649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647142, 43.941208, 35.634079>,  <29.743820, 43.816532, 35.814938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647142, 43.941208, 35.634079>,  <29.486013, 44.148998, 35.332649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647142, 43.941208, 35.634079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432277, 0.833697, 0.343635,
		-0.806765, 0.187330, 0.560390,
		0.402823, -0.519477, 0.753577,
		29.767990, 43.785366, 35.860153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307241, 44.499165, 35.938873>,  <29.486013, 44.148998, 35.332649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307241, 44.499165, 35.938873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663570, 44.325508, 35.992474>,  <29.877369, 44.221313, 36.024635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663570, 44.325508, 35.992474>,  <29.307241, 44.499165, 35.938873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663570, 44.325508, 35.992474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357748, 0.852037, 0.382163,
		-0.280089, -0.292500, 0.914327,
		0.890823, -0.434138, 0.134005,
		29.930817, 44.195267, 36.032677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497831, 44.452003, 36.707001>,  <29.307241, 44.499165, 35.938873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497831, 44.452003, 36.707001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784376, 44.491611, 36.430733>,  <29.956303, 44.515377, 36.264973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784376, 44.491611, 36.430733>,  <29.497831, 44.452003, 36.707001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784376, 44.491611, 36.430733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288923, 0.858926, 0.422812,
		0.635096, -0.502437, 0.586695,
		0.716364, 0.099017, -0.690665,
		29.999285, 44.521317, 36.223534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063698, 44.812401, 37.045372>,  <29.497831, 44.452003, 36.707001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063698, 44.812401, 37.045372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115465, 44.846184, 36.650177>,  <30.146526, 44.866455, 36.413059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115465, 44.846184, 36.650177>,  <30.063698, 44.812401, 37.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115465, 44.846184, 36.650177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311651, 0.942411, 0.121385,
		0.941341, -0.323617, 0.095649,
		0.129423, 0.084456, -0.987987,
		30.154291, 44.871521, 36.353783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803389, 44.938858, 36.800610>,  <30.063698, 44.812401, 37.045372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803389, 44.938858, 36.800610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570757, 45.132046, 36.538769>,  <30.431179, 45.247959, 36.381664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570757, 45.132046, 36.538769>,  <30.803389, 44.938858, 36.800610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570757, 45.132046, 36.538769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546320, 0.828105, 0.125602,
		0.602745, -0.284577, -0.745463,
		-0.581578, 0.482968, -0.654606,
		30.396284, 45.276936, 36.342388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228661, 44.292686, 36.627457>,  <30.803389, 44.938858, 36.800610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228661, 44.292686, 36.627457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399666, 43.936272, 36.566422>,  <31.502270, 43.722424, 36.529800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399666, 43.936272, 36.566422>,  <31.228661, 44.292686, 36.627457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399666, 43.936272, 36.566422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845907, 0.334763, 0.415181,
		-0.318862, -0.306570, 0.896851,
		0.427514, -0.891038, -0.152586,
		31.527920, 43.668961, 36.520645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675547, 44.193569, 37.158062>,  <31.228661, 44.292686, 36.627457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675547, 44.193569, 37.158062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796801, 43.948471, 36.866127>,  <31.869553, 43.801414, 36.690968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796801, 43.948471, 36.866127>,  <31.675547, 44.193569, 37.158062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796801, 43.948471, 36.866127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952885, 0.203723, 0.224738,
		0.010977, -0.763573, 0.645628,
		0.303133, -0.612743, -0.729833,
		31.887741, 43.764648, 36.647179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183746, 43.553062, 37.306622>,  <31.675547, 44.193569, 37.158062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183746, 43.553062, 37.306622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275887, 43.670288, 36.935452>,  <32.331169, 43.740623, 36.712749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275887, 43.670288, 36.935452>,  <32.183746, 43.553062, 37.306622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275887, 43.670288, 36.935452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922167, 0.238745, 0.304319,
		0.310723, -0.925804, -0.215262,
		0.230347, 0.293066, -0.927929,
		32.344990, 43.758209, 36.657074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525066, 43.087646, 36.989540>,  <32.183746, 43.553062, 37.306622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525066, 43.087646, 36.989540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492805, 42.715389, 37.132317>,  <32.473450, 42.492035, 37.217983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492805, 42.715389, 37.132317>,  <32.525066, 43.087646, 36.989540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492805, 42.715389, 37.132317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379781, 0.302400, 0.874254,
		-0.921554, 0.206072, 0.329049,
		-0.080655, -0.930639, 0.356940,
		32.468609, 42.436199, 37.239399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114246, 42.957455, 37.701702>,  <32.525066, 43.087646, 36.989540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114246, 42.957455, 37.701702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395294, 42.681988, 37.630081>,  <32.563923, 42.516708, 37.587109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395294, 42.681988, 37.630081>,  <32.114246, 42.957455, 37.701702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395294, 42.681988, 37.630081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476756, 0.268816, 0.836924,
		-0.528233, -0.673402, 0.517203,
		0.702619, -0.688671, -0.179051,
		32.606079, 42.475388, 37.576366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939701, 42.202286, 38.112949>,  <32.114246, 42.957455, 37.701702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939701, 42.202286, 38.112949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743525, 42.158043, 38.458721>,  <31.625818, 42.131496, 38.666183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743525, 42.158043, 38.458721>,  <31.939701, 42.202286, 38.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743525, 42.158043, 38.458721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556565, -0.723521, -0.408353,
		0.670597, -0.681383, 0.293286,
		-0.490443, -0.110608, 0.864426,
		31.596392, 42.124859, 38.718048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906389, 41.457809, 38.333271>,  <31.939701, 42.202286, 38.112949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906389, 41.457809, 38.333271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591261, 41.655701, 38.480015>,  <31.402184, 41.774437, 38.568062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591261, 41.655701, 38.480015>,  <31.906389, 41.457809, 38.333271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591261, 41.655701, 38.480015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575306, -0.803782, -0.151516,
		0.219915, -0.330423, 0.917855,
		-0.787820, 0.494727, 0.366858,
		31.354916, 41.804119, 38.590073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355404, 40.876568, 38.701157>,  <31.906389, 41.457809, 38.333271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355404, 40.876568, 38.701157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142841, 41.208752, 38.634289>,  <31.015305, 41.408062, 38.594170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142841, 41.208752, 38.634289>,  <31.355404, 40.876568, 38.701157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142841, 41.208752, 38.634289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807711, -0.556208, -0.195538,
		-0.255364, 0.031111, 0.966344,
		-0.531406, 0.830460, -0.167165,
		30.983419, 41.457890, 38.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788240, 40.820267, 39.205364>,  <31.355404, 40.876568, 38.701157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788240, 40.820267, 39.205364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702921, 41.043514, 38.884613>,  <30.651730, 41.177464, 38.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702921, 41.043514, 38.884613>,  <30.788240, 40.820267, 39.205364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702921, 41.043514, 38.884613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796998, -0.574110, -0.187595,
		-0.565066, 0.599081, 0.567277,
		-0.213295, 0.558122, -0.801876,
		30.638931, 41.210953, 38.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081804, 40.917255, 39.223476>,  <30.788240, 40.820267, 39.205364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081804, 40.917255, 39.223476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157852, 40.968460, 38.834126>,  <30.203482, 40.999184, 38.600513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157852, 40.968460, 38.834126>,  <30.081804, 40.917255, 39.223476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157852, 40.968460, 38.834126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820714, -0.523378, -0.229135,
		-0.538778, 0.842429, 0.005558,
		0.190121, 0.128014, -0.973379,
		30.214890, 41.006863, 38.542110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363905, 40.908371, 38.883904>,  <30.081804, 40.917255, 39.223476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363905, 40.908371, 38.883904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643265, 40.858910, 38.601925>,  <29.810881, 40.829235, 38.432739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643265, 40.858910, 38.601925>,  <29.363905, 40.908371, 38.883904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643265, 40.858910, 38.601925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579765, -0.675271, -0.455939,
		-0.419652, 0.727131, -0.543298,
		0.698401, -0.123650, -0.704944,
		29.852785, 40.821815, 38.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902472, 40.769913, 38.215641>,  <29.363905, 40.908371, 38.883904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902472, 40.769913, 38.215641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277428, 40.649582, 38.145435>,  <29.502401, 40.577385, 38.103310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277428, 40.649582, 38.145435>,  <28.902472, 40.769913, 38.215641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277428, 40.649582, 38.145435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347670, -0.838120, -0.420333,
		-0.020658, 0.455038, -0.890232,
		0.937389, -0.300824, -0.175517,
		29.558645, 40.559334, 38.092781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934494, 40.473637, 37.533958>,  <28.902472, 40.769913, 38.215641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934494, 40.473637, 37.533958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286207, 40.341782, 37.671478>,  <29.497236, 40.262669, 37.753990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286207, 40.341782, 37.671478>,  <28.934494, 40.473637, 37.533958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286207, 40.341782, 37.671478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165433, -0.888247, -0.428542,
		0.446643, 0.319934, -0.835555,
		0.879285, -0.329634, 0.343802,
		29.549994, 40.242893, 37.774620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325817, 40.341301, 36.950947>,  <28.934494, 40.473637, 37.533958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325817, 40.341301, 36.950947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462492, 40.104713, 37.243088>,  <29.544497, 39.962761, 37.418373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462492, 40.104713, 37.243088>,  <29.325817, 40.341301, 36.950947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462492, 40.104713, 37.243088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118048, -0.797979, -0.591012,
		0.932371, 0.115724, -0.342479,
		0.341685, -0.591471, 0.730351,
		29.564997, 39.927273, 37.462193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615644, 39.754795, 36.553528>,  <29.325817, 40.341301, 36.950947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615644, 39.754795, 36.553528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581919, 39.620155, 36.928673>,  <29.561684, 39.539371, 37.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581919, 39.620155, 36.928673>,  <29.615644, 39.754795, 36.553528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581919, 39.620155, 36.928673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241094, -0.906359, -0.346969,
		0.966832, -0.255368, -0.004733,
		-0.084315, -0.336602, 0.937864,
		29.556623, 39.519176, 37.210033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932686, 39.009693, 36.558411>,  <29.615644, 39.754795, 36.553528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932686, 39.009693, 36.558411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708860, 39.057373, 36.886478>,  <29.574566, 39.085979, 37.083321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708860, 39.057373, 36.886478>,  <29.932686, 39.009693, 36.558411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708860, 39.057373, 36.886478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319537, -0.944124, -0.080791,
		0.764713, -0.307282, 0.566385,
		-0.559563, 0.119199, 0.820171,
		29.540991, 39.093132, 37.132530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151636, 38.502659, 37.037102>,  <29.932686, 39.009693, 36.558411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151636, 38.502659, 37.037102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779436, 38.604748, 37.142197>,  <29.556116, 38.666000, 37.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779436, 38.604748, 37.142197>,  <30.151636, 38.502659, 37.037102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779436, 38.604748, 37.142197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248928, -0.966810, 0.057562,
		0.268711, -0.011842, 0.963148,
		-0.930500, 0.255222, 0.262740,
		29.500286, 38.681313, 37.221020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953930, 38.031448, 37.647606>,  <30.151636, 38.502659, 37.037102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953930, 38.031448, 37.647606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642616, 38.175858, 37.442108>,  <29.455828, 38.262501, 37.318810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642616, 38.175858, 37.442108>,  <29.953930, 38.031448, 37.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642616, 38.175858, 37.442108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393621, -0.917978, -0.048775,
		-0.489218, 0.164261, 0.856553,
		-0.778286, 0.361019, -0.513749,
		29.409130, 38.284164, 37.287983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419434, 37.571800, 37.835484>,  <29.953930, 38.031448, 37.647606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419434, 37.571800, 37.835484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311165, 37.740200, 37.489189>,  <29.246204, 37.841240, 37.281414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311165, 37.740200, 37.489189>,  <29.419434, 37.571800, 37.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311165, 37.740200, 37.489189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463010, -0.845390, -0.266341,
		-0.844012, 0.328751, 0.423754,
		-0.270678, 0.420997, -0.865734,
		29.229963, 37.866497, 37.229469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805559, 37.229538, 37.700397>,  <29.419434, 37.571800, 37.835484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805559, 37.229538, 37.700397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897539, 37.397778, 37.349350>,  <28.952728, 37.498722, 37.138721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897539, 37.397778, 37.349350>,  <28.805559, 37.229538, 37.700397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897539, 37.397778, 37.349350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338985, -0.810697, -0.477347,
		-0.912256, 0.407267, -0.043843,
		0.229951, 0.420600, -0.877621,
		28.966524, 37.523956, 37.086063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182360, 37.246387, 37.365913>,  <28.805559, 37.229538, 37.700397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182360, 37.246387, 37.365913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455574, 37.281036, 37.075821>,  <28.619503, 37.301826, 36.901764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455574, 37.281036, 37.075821>,  <28.182360, 37.246387, 37.365913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455574, 37.281036, 37.075821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484456, -0.689350, -0.538609,
		-0.546596, 0.719231, -0.428882,
		0.683034, 0.086626, -0.725231,
		28.660484, 37.307026, 36.858250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793581, 37.185043, 36.656776>,  <28.182360, 37.246387, 37.365913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793581, 37.185043, 36.656776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173063, 37.100288, 36.562916>,  <28.400753, 37.049435, 36.506599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173063, 37.100288, 36.562916>,  <27.793581, 37.185043, 36.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173063, 37.100288, 36.562916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315988, -0.660265, -0.681324,
		-0.010570, 0.720524, -0.693350,
		0.948704, -0.211888, -0.234656,
		28.457674, 37.036720, 36.492519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774477, 37.259857, 35.890125>,  <27.793581, 37.185043, 36.656776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774477, 37.259857, 35.890125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087420, 37.039116, 36.005627>,  <28.275185, 36.906673, 36.074928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.087420, 37.039116, 36.005627>,  <27.774477, 37.259857, 35.890125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087420, 37.039116, 36.005627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169216, -0.634508, -0.754166,
		0.599402, 0.541165, -0.589794,
		0.782357, -0.551851, 0.288752,
		28.322126, 36.873562, 36.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080139, 37.147552, 35.313950>,  <27.774477, 37.259857, 35.890125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080139, 37.147552, 35.313950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202806, 36.871704, 35.576363>,  <28.276407, 36.706196, 35.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202806, 36.871704, 35.576363>,  <28.080139, 37.147552, 35.313950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202806, 36.871704, 35.576363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230475, -0.722531, -0.651789,
		0.923491, 0.048684, -0.380519,
		0.306669, -0.689622, 0.656031,
		28.294807, 36.664818, 35.773170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590851, 36.646717, 34.997753>,  <28.080139, 37.147552, 35.313950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590851, 36.646717, 34.997753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460386, 36.428551, 35.306595>,  <28.382107, 36.297649, 35.491898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460386, 36.428551, 35.306595>,  <28.590851, 36.646717, 34.997753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460386, 36.428551, 35.306595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183857, -0.764568, -0.617764,
		0.927262, -0.343447, 0.149095,
		-0.326163, -0.545417, 0.772100,
		28.362537, 36.264927, 35.538223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790899, 35.983593, 34.828754>,  <28.590851, 36.646717, 34.997753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790899, 35.983593, 34.828754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539474, 35.915798, 35.132381>,  <28.388620, 35.875122, 35.314560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539474, 35.915798, 35.132381>,  <28.790899, 35.983593, 34.828754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539474, 35.915798, 35.132381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370483, -0.792882, -0.483818,
		0.683852, -0.585332, 0.435584,
		-0.628561, -0.169484, 0.759070,
		28.350906, 35.864952, 35.360104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760592, 35.234192, 35.008305>,  <28.790899, 35.983593, 34.828754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760592, 35.234192, 35.008305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411852, 35.382629, 35.136158>,  <28.202608, 35.471691, 35.212872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411852, 35.382629, 35.136158>,  <28.760592, 35.234192, 35.008305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411852, 35.382629, 35.136158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431757, -0.890441, -0.143875,
		0.231223, -0.263441, 0.936555,
		-0.871850, 0.371097, 0.319633,
		28.150297, 35.493958, 35.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457634, 35.566364, 35.219933>,  <28.760592, 35.234192, 35.008305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457634, 35.566364, 35.219933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723919, 35.275013, 35.284798>,  <29.883690, 35.100204, 35.323715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723919, 35.275013, 35.284798>,  <29.457634, 35.566364, 35.219933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723919, 35.275013, 35.284798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744248, 0.663835, -0.073602,
		-0.054040, 0.169687, 0.984015,
		0.665713, -0.728374, 0.162163,
		29.923634, 35.056499, 35.333447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988131, 35.758972, 35.754005>,  <29.457634, 35.566364, 35.219933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988131, 35.758972, 35.754005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147976, 35.493404, 35.501175>,  <30.243883, 35.334064, 35.349476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147976, 35.493404, 35.501175>,  <29.988131, 35.758972, 35.754005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147976, 35.493404, 35.501175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832758, 0.551150, -0.052430,
		0.383176, -0.505412, 0.773133,
		0.399613, -0.663923, -0.632073,
		30.267860, 35.294228, 35.311554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673502, 35.864891, 35.900761>,  <29.988131, 35.758972, 35.754005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673502, 35.864891, 35.900761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634958, 35.674686, 35.550995>,  <30.611832, 35.560562, 35.341137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634958, 35.674686, 35.550995>,  <30.673502, 35.864891, 35.900761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634958, 35.674686, 35.550995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878985, 0.371537, -0.298906,
		0.467012, -0.797400, 0.382169,
		-0.096357, -0.475514, -0.874415,
		30.606050, 35.532032, 35.288670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340439, 35.567528, 35.710949>,  <30.673502, 35.864891, 35.900761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340439, 35.567528, 35.710949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126215, 35.630684, 35.379105>,  <30.997681, 35.668579, 35.180000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126215, 35.630684, 35.379105>,  <31.340439, 35.567528, 35.710949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126215, 35.630684, 35.379105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802669, 0.400509, -0.441945,
		0.262487, -0.902587, -0.341229,
		-0.535559, 0.157889, -0.829607,
		30.965548, 35.678051, 35.130222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993263, 35.234715, 35.955498>,  <31.340439, 35.567528, 35.710949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993263, 35.234715, 35.955498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924021, 34.882351, 36.131699>,  <31.882475, 34.670933, 36.237419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924021, 34.882351, 36.131699>,  <31.993263, 35.234715, 35.955498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924021, 34.882351, 36.131699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412444, 0.341309, 0.844629,
		-0.894385, 0.327890, 0.304242,
		-0.173105, -0.880907, 0.440498,
		31.872089, 34.618080, 36.263847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938272, 35.394749, 36.568821>,  <31.993263, 35.234715, 35.955498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938272, 35.394749, 36.568821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035030, 35.006702, 36.576420>,  <32.093086, 34.773876, 36.580978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035030, 35.006702, 36.576420>,  <31.938272, 35.394749, 36.568821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035030, 35.006702, 36.576420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307414, 0.095195, 0.946802,
		-0.920318, -0.223184, 0.321255,
		0.241893, -0.970117, 0.018999,
		32.107597, 34.715668, 36.582119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668999, 35.144958, 37.177189>,  <31.938272, 35.394749, 36.568821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668999, 35.144958, 37.177189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923992, 34.849407, 37.089855>,  <32.076988, 34.672077, 37.037453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923992, 34.849407, 37.089855>,  <31.668999, 35.144958, 37.177189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923992, 34.849407, 37.089855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363489, 0.038560, 0.930800,
		-0.679330, -0.672734, 0.293156,
		0.637485, -0.738879, -0.218336,
		32.115238, 34.627743, 37.024353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522640, 34.642239, 37.733727>,  <31.668999, 35.144958, 37.177189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522640, 34.642239, 37.733727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898165, 34.602985, 37.601665>,  <32.123482, 34.579433, 37.522430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898165, 34.602985, 37.601665>,  <31.522640, 34.642239, 37.733727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898165, 34.602985, 37.601665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331895, 0.001527, 0.943315,
		-0.092065, -0.995172, 0.034003,
		0.938813, -0.098132, -0.330152,
		32.179810, 34.573547, 37.502621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747646, 34.210331, 38.137875>,  <31.522640, 34.642239, 37.733727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747646, 34.210331, 38.137875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080204, 34.383396, 37.998394>,  <32.279739, 34.487236, 37.914707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080204, 34.383396, 37.998394>,  <31.747646, 34.210331, 38.137875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080204, 34.383396, 37.998394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420227, -0.078945, 0.903979,
		0.363586, -0.898095, -0.247449,
		0.831393, 0.432659, -0.348700,
		32.329620, 34.513195, 37.893784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288624, 33.710197, 38.310810>,  <31.747646, 34.210331, 38.137875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288624, 33.710197, 38.310810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465199, 34.066620, 38.268578>,  <32.571144, 34.280476, 38.243237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465199, 34.066620, 38.268578>,  <32.288624, 33.710197, 38.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465199, 34.066620, 38.268578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345067, -0.059960, 0.936661,
		0.828290, -0.449908, -0.333944,
		0.441434, 0.891060, -0.105584,
		32.597630, 34.333939, 38.236904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919876, 33.693951, 38.718269>,  <32.288624, 33.710197, 38.310810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919876, 33.693951, 38.718269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832390, 34.081322, 38.670429>,  <32.779900, 34.313744, 38.641724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832390, 34.081322, 38.670429>,  <32.919876, 33.693951, 38.718269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832390, 34.081322, 38.670429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276531, 0.179057, 0.944176,
		0.935786, 0.173431, -0.306964,
		-0.218713, 0.968432, -0.119600,
		32.766777, 34.371853, 38.634548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397026, 33.991272, 39.199364>,  <32.919876, 33.693951, 38.718269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397026, 33.991272, 39.199364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161079, 34.306862, 39.130569>,  <33.019512, 34.496216, 39.089294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161079, 34.306862, 39.130569>,  <33.397026, 33.991272, 39.199364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161079, 34.306862, 39.130569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235591, 0.371864, 0.897894,
		0.772368, 0.489123, -0.405226,
		-0.589869, 0.788972, -0.171983,
		32.984119, 34.543552, 39.078976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741371, 34.583797, 39.329861>,  <33.397026, 33.991272, 39.199364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741371, 34.583797, 39.329861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368927, 34.724934, 39.366817>,  <33.145462, 34.809616, 39.388992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368927, 34.724934, 39.366817>,  <33.741371, 34.583797, 39.329861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368927, 34.724934, 39.366817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280625, 0.531200, 0.799422,
		0.232990, 0.770278, -0.593622,
		-0.931109, 0.352843, 0.092395,
		33.089596, 34.830788, 39.394535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812706, 35.234127, 39.608551>,  <33.741371, 34.583797, 39.329861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812706, 35.234127, 39.608551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426613, 35.195961, 39.705891>,  <33.194958, 35.173061, 39.764294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426613, 35.195961, 39.705891>,  <33.812706, 35.234127, 39.608551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426613, 35.195961, 39.705891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159983, 0.520572, 0.838695,
		-0.206705, 0.848469, -0.487209,
		-0.965235, -0.095417, 0.243346,
		33.137043, 35.167336, 39.778896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577087, 35.909950, 39.914093>,  <33.812706, 35.234127, 39.608551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577087, 35.909950, 39.914093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340378, 35.618202, 40.051392>,  <33.198353, 35.443153, 40.133770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340378, 35.618202, 40.051392>,  <33.577087, 35.909950, 39.914093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340378, 35.618202, 40.051392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284279, 0.209627, 0.935544,
		-0.754310, 0.651213, 0.083292,
		-0.591778, -0.729368, 0.343250,
		33.162846, 35.399391, 40.154366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378864, 36.169453, 40.465508>,  <33.577087, 35.909950, 39.914093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378864, 36.169453, 40.465508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328964, 35.776474, 40.520996>,  <33.299023, 35.540688, 40.554291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328964, 35.776474, 40.520996>,  <33.378864, 36.169453, 40.465508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328964, 35.776474, 40.520996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351326, 0.087016, 0.932201,
		-0.927905, 0.165030, 0.334302,
		-0.124752, -0.982443, 0.138722,
		33.291538, 35.481743, 40.562614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039551, 36.096508, 41.136684>,  <33.378864, 36.169453, 40.465508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039551, 36.096508, 41.136684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219059, 35.752441, 41.039753>,  <33.326763, 35.546001, 40.981594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219059, 35.752441, 41.039753>,  <33.039551, 36.096508, 41.136684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219059, 35.752441, 41.039753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256640, -0.135697, 0.956934,
		-0.856004, -0.491633, 0.159856,
		0.448769, -0.860164, -0.242330,
		33.353691, 35.494392, 40.967052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797268, 35.505062, 41.645683>,  <33.039551, 36.096508, 41.136684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797268, 35.505062, 41.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130196, 35.357681, 41.480034>,  <33.329952, 35.269253, 41.380646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130196, 35.357681, 41.480034>,  <32.797268, 35.505062, 41.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130196, 35.357681, 41.480034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292570, -0.342550, 0.892784,
		-0.470803, -0.864236, -0.177312,
		0.832314, -0.368450, -0.414123,
		33.379890, 35.247147, 41.355797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961441, 34.873070, 42.010345>,  <32.797268, 35.505062, 41.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961441, 34.873070, 42.010345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315571, 34.911491, 41.828369>,  <33.528049, 34.934544, 41.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315571, 34.911491, 41.828369>,  <32.961441, 34.873070, 42.010345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315571, 34.911491, 41.828369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421824, -0.577523, 0.698951,
		-0.195603, -0.810704, -0.551813,
		0.885327, 0.096051, -0.454940,
		33.581169, 34.940308, 41.691887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284260, 34.208031, 42.041203>,  <32.961441, 34.873070, 42.010345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284260, 34.208031, 42.041203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542419, 34.511505, 42.005741>,  <33.697315, 34.693588, 41.984463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542419, 34.511505, 42.005741>,  <33.284260, 34.208031, 42.041203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542419, 34.511505, 42.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320365, -0.163495, 0.933079,
		0.693420, -0.630606, -0.348576,
		0.645395, 0.758687, -0.088653,
		33.736038, 34.739113, 41.979145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884483, 33.919518, 42.231346>,  <33.284260, 34.208031, 42.041203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884483, 33.919518, 42.231346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920326, 34.314186, 42.285690>,  <33.941833, 34.550987, 42.318298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920326, 34.314186, 42.285690>,  <33.884483, 33.919518, 42.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920326, 34.314186, 42.285690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382417, -0.160039, 0.910025,
		0.919634, -0.029594, -0.391660,
		0.089612, 0.986667, 0.135860,
		33.947208, 34.610188, 42.326447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555336, 33.966675, 42.467495>,  <33.884483, 33.919518, 42.231346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555336, 33.966675, 42.467495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351437, 34.293072, 42.576538>,  <34.229099, 34.488911, 42.641964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351437, 34.293072, 42.576538>,  <34.555336, 33.966675, 42.467495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351437, 34.293072, 42.576538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288006, -0.136734, 0.947816,
		0.810687, 0.561657, -0.165312,
		-0.509744, 0.815993, 0.272609,
		34.198513, 34.537868, 42.658321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958054, 34.341690, 42.993576>,  <34.555336, 33.966675, 42.467495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958054, 34.341690, 42.993576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593239, 34.484417, 43.074448>,  <34.374352, 34.570053, 43.122971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593239, 34.484417, 43.074448>,  <34.958054, 34.341690, 42.993576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593239, 34.484417, 43.074448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090447, -0.305838, 0.947778,
		0.400018, 0.882691, 0.246662,
		-0.912033, 0.356818, 0.202177,
		34.319630, 34.591461, 43.135101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920952, 34.755096, 43.675556>,  <34.958054, 34.341690, 42.993576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920952, 34.755096, 43.675556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547359, 34.633354, 43.600666>,  <34.323204, 34.560310, 43.555733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547359, 34.633354, 43.600666>,  <34.920952, 34.755096, 43.675556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547359, 34.633354, 43.600666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132662, -0.191165, 0.972552,
		-0.331788, 0.933181, 0.138168,
		-0.933979, -0.304352, -0.187224,
		34.267166, 34.542049, 43.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549595, 35.234207, 44.070103>,  <34.920952, 34.755096, 43.675556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549595, 35.234207, 44.070103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322903, 34.910641, 44.007530>,  <34.186890, 34.716499, 43.969986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322903, 34.910641, 44.007530>,  <34.549595, 35.234207, 44.070103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322903, 34.910641, 44.007530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074093, -0.139055, 0.987509,
		-0.820568, 0.571237, 0.018870,
		-0.566726, -0.808920, -0.156429,
		34.152885, 34.667965, 43.960602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928627, 35.261608, 44.493435>,  <34.549595, 35.234207, 44.070103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928627, 35.261608, 44.493435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931194, 34.877243, 44.382721>,  <33.932735, 34.646626, 44.316292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931194, 34.877243, 44.382721>,  <33.928627, 35.261608, 44.493435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931194, 34.877243, 44.382721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230733, -0.270749, 0.934589,
		-0.972996, 0.057864, -0.223452,
		0.006421, -0.960909, -0.276789,
		33.933121, 34.588970, 44.299683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318310, 34.986343, 44.765411>,  <33.928627, 35.261608, 44.493435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318310, 34.986343, 44.765411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559814, 34.669270, 44.731628>,  <33.704716, 34.479027, 44.711357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559814, 34.669270, 44.731628>,  <33.318310, 34.986343, 44.765411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559814, 34.669270, 44.731628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301688, -0.325273, 0.896204,
		-0.737877, -0.515609, -0.435529,
		0.603757, -0.792682, -0.084459,
		33.740940, 34.431465, 44.706291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964771, 34.444931, 45.099220>,  <33.318310, 34.986343, 44.765411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964771, 34.444931, 45.099220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337624, 34.301243, 45.080963>,  <33.561337, 34.215031, 45.070007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337624, 34.301243, 45.080963>,  <32.964771, 34.444931, 45.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337624, 34.301243, 45.080963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163807, -0.530719, 0.831567,
		-0.322940, -0.767657, -0.553545,
		0.932136, -0.359221, -0.045643,
		33.617264, 34.193478, 45.067268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794266, 33.815178, 45.380589>,  <32.964771, 34.444931, 45.099220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794266, 33.815178, 45.380589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189125, 33.874878, 45.403461>,  <33.426041, 33.910698, 45.417183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189125, 33.874878, 45.403461>,  <32.794266, 33.815178, 45.380589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189125, 33.874878, 45.403461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013615, -0.434978, 0.900338,
		0.159246, -0.887986, -0.431419,
		0.987145, 0.149249, 0.057179,
		33.485268, 33.919651, 45.420616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048557, 33.199894, 45.659046>,  <32.794266, 33.815178, 45.380589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048557, 33.199894, 45.659046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330265, 33.474991, 45.729492>,  <33.499290, 33.640049, 45.771759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330265, 33.474991, 45.729492>,  <33.048557, 33.199894, 45.659046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330265, 33.474991, 45.729492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057163, -0.302204, 0.951528,
		0.707631, -0.660061, -0.252146,
		0.704266, 0.687744, 0.176118,
		33.541546, 33.681313, 45.782326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517094, 32.904945, 46.046532>,  <33.048557, 33.199894, 45.659046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517094, 32.904945, 46.046532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618935, 33.286808, 46.108250>,  <33.680038, 33.515926, 46.145279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618935, 33.286808, 46.108250>,  <33.517094, 32.904945, 46.046532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618935, 33.286808, 46.108250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240664, -0.217081, 0.946022,
		0.936622, -0.203724, -0.285020,
		0.254600, 0.954658, 0.154293,
		33.695316, 33.573204, 46.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127937, 32.831715, 46.323959>,  <33.517094, 32.904945, 46.046532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127937, 32.831715, 46.323959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004585, 33.203148, 46.406551>,  <33.930573, 33.426006, 46.456108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004585, 33.203148, 46.406551>,  <34.127937, 32.831715, 46.323959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004585, 33.203148, 46.406551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448913, -0.049311, 0.892214,
		0.838676, 0.367835, -0.401646,
		-0.308382, 0.928583, 0.206482,
		33.912071, 33.481724, 46.468494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571373, 33.133572, 46.606915>,  <34.127937, 32.831715, 46.323959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571373, 33.133572, 46.606915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268166, 33.357986, 46.739967>,  <34.086243, 33.492638, 46.819801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268166, 33.357986, 46.739967>,  <34.571373, 33.133572, 46.606915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268166, 33.357986, 46.739967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273484, -0.189596, 0.943006,
		0.592129, 0.805784, -0.009719,
		-0.758017, 0.561039, 0.332635,
		34.040760, 33.526299, 46.839756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829746, 33.533268, 47.083893>,  <34.571373, 33.133572, 46.606915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829746, 33.533268, 47.083893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441418, 33.513809, 47.177826>,  <34.208420, 33.502132, 47.234184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441418, 33.513809, 47.177826>,  <34.829746, 33.533268, 47.083893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441418, 33.513809, 47.177826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237564, -0.329037, 0.913946,
		0.032807, 0.943063, 0.330992,
		-0.970818, -0.048648, 0.234833,
		34.150173, 33.499214, 47.248276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803520, 33.741947, 47.705521>,  <34.829746, 33.533268, 47.083893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803520, 33.741947, 47.705521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434387, 33.588184, 47.695587>,  <34.212910, 33.495926, 47.689629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434387, 33.588184, 47.695587>,  <34.803520, 33.741947, 47.705521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434387, 33.588184, 47.695587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155427, -0.430554, 0.889081,
		-0.352459, 0.816612, 0.457075,
		-0.922830, -0.384407, -0.024829,
		34.157539, 33.472862, 47.688137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436363, 34.004856, 48.272930>,  <34.803520, 33.741947, 47.705521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436363, 34.004856, 48.272930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244797, 33.669086, 48.170158>,  <34.129856, 33.467625, 48.108494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244797, 33.669086, 48.170158>,  <34.436363, 34.004856, 48.272930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244797, 33.669086, 48.170158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049078, -0.317820, 0.946880,
		-0.876487, 0.440868, 0.193407,
		-0.478917, -0.839420, -0.256928,
		34.101120, 33.417259, 48.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852135, 33.990917, 48.720573>,  <34.436363, 34.004856, 48.272930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852135, 33.990917, 48.720573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946613, 33.621140, 48.600830>,  <34.003300, 33.399273, 48.528984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946613, 33.621140, 48.600830>,  <33.852135, 33.990917, 48.720573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946613, 33.621140, 48.600830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031068, -0.315103, 0.948549,
		-0.971209, -0.214742, -0.103147,
		0.236195, -0.924443, -0.299359,
		34.017471, 33.343807, 48.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629723, 33.631409, 49.243267>,  <33.852135, 33.990917, 48.720573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629723, 33.631409, 49.243267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820469, 33.342693, 49.042622>,  <33.934917, 33.169464, 48.922234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820469, 33.342693, 49.042622>,  <33.629723, 33.631409, 49.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820469, 33.342693, 49.042622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171449, -0.483339, 0.858481,
		-0.862091, -0.495384, -0.106739,
		0.476869, -0.721788, -0.501616,
		33.963531, 33.126156, 48.892136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291393, 32.972366, 49.392380>,  <33.629723, 33.631409, 49.243267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291393, 32.972366, 49.392380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671608, 32.919735, 49.279831>,  <33.899738, 32.888157, 49.212303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671608, 32.919735, 49.279831>,  <33.291393, 32.972366, 49.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671608, 32.919735, 49.279831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228058, -0.319368, 0.919779,
		-0.210883, -0.938451, -0.273563,
		0.950536, -0.131577, -0.281371,
		33.956768, 32.880260, 49.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473389, 32.211712, 49.649090>,  <33.291393, 32.972366, 49.392380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473389, 32.211712, 49.649090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824310, 32.398525, 49.604866>,  <34.034863, 32.510612, 49.578331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824310, 32.398525, 49.604866>,  <33.473389, 32.211712, 49.649090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824310, 32.398525, 49.604866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317268, -0.391501, 0.863752,
		0.360113, -0.792850, -0.491638,
		0.877303, 0.467029, -0.110562,
		34.087502, 32.538635, 49.571697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059589, 31.582932, 49.719303>,  <33.473389, 32.211712, 49.649090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059589, 31.582932, 49.719303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230801, 31.939684, 49.777740>,  <34.333527, 32.153736, 49.812805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230801, 31.939684, 49.777740>,  <34.059589, 31.582932, 49.719303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230801, 31.939684, 49.777740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510972, -0.372152, 0.774862,
		0.745453, -0.257011, -0.615017,
		0.428027, 0.891879, 0.146096,
		34.359207, 32.207249, 49.821568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680202, 31.410770, 49.731178>,  <34.059589, 31.582932, 49.719303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680202, 31.410770, 49.731178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652939, 31.752583, 49.937141>,  <34.636581, 31.957670, 50.060719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652939, 31.752583, 49.937141>,  <34.680202, 31.410770, 49.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652939, 31.752583, 49.937141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558597, -0.394942, 0.729377,
		0.826634, 0.337343, -0.450418,
		-0.068161, 0.854530, 0.514911,
		34.632492, 32.008942, 50.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313419, 31.611231, 49.848278>,  <34.680202, 31.410770, 49.731178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313419, 31.611231, 49.848278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103458, 31.819870, 50.117325>,  <34.977482, 31.945053, 50.278751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103458, 31.819870, 50.117325>,  <35.313419, 31.611231, 49.848278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103458, 31.819870, 50.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489836, -0.461146, 0.739868,
		0.696089, 0.717830, -0.013441,
		-0.524901, 0.521598, 0.672618,
		34.945988, 31.976349, 50.319111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701717, 31.887789, 50.334606>,  <35.313419, 31.611231, 49.848278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701717, 31.887789, 50.334606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353706, 31.904394, 50.531109>,  <35.144901, 31.914356, 50.649010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353706, 31.904394, 50.531109>,  <35.701717, 31.887789, 50.334606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353706, 31.904394, 50.531109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425258, -0.440933, 0.790401,
		0.249421, 0.896580, 0.365970,
		-0.870026, 0.041511, 0.491256,
		35.092697, 31.916847, 50.678486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877712, 31.985331, 50.996277>,  <35.701717, 31.887789, 50.334606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877712, 31.985331, 50.996277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497284, 31.865461, 51.026363>,  <35.269028, 31.793539, 51.044415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497284, 31.865461, 51.026363>,  <35.877712, 31.985331, 50.996277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497284, 31.865461, 51.026363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242412, -0.572793, 0.783035,
		-0.191569, 0.762957, 0.617412,
		-0.951072, -0.299674, 0.075220,
		35.211964, 31.775558, 51.048931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744957, 32.088810, 51.769180>,  <35.877712, 31.985331, 50.996277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744957, 32.088810, 51.769180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532894, 31.805531, 51.582684>,  <35.405655, 31.635563, 51.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532894, 31.805531, 51.582684>,  <35.744957, 32.088810, 51.769180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532894, 31.805531, 51.582684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232408, -0.650196, 0.723347,
		-0.815427, 0.275127, 0.509297,
		-0.530156, -0.708202, -0.466246,
		35.373848, 31.593069, 51.442810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342113, 31.948883, 52.295731>,  <35.744957, 32.088810, 51.769180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342113, 31.948883, 52.295731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382919, 31.663666, 52.018269>,  <35.407402, 31.492535, 51.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382919, 31.663666, 52.018269>,  <35.342113, 31.948883, 52.295731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382919, 31.663666, 52.018269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219985, -0.663862, 0.714769,
		-0.970155, -0.225510, 0.089136,
		0.102013, -0.713045, -0.693657,
		35.413525, 31.449753, 51.810173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842999, 31.341036, 52.159966>,  <35.342113, 31.948883, 52.295731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842999, 31.341036, 52.159966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667282, 30.983860, 52.199322>,  <34.561852, 30.769554, 52.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667282, 30.983860, 52.199322>,  <34.842999, 31.341036, 52.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667282, 30.983860, 52.199322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394095, 0.289978, 0.872125,
		-0.807288, 0.344339, -0.479288,
		-0.439289, -0.892941, 0.098393,
		34.535496, 30.715979, 52.228840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267506, 31.488060, 52.061443>,  <34.842999, 31.341036, 52.159966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267506, 31.488060, 52.061443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282539, 31.170130, 52.303711>,  <34.291561, 30.979372, 52.449074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282539, 31.170130, 52.303711>,  <34.267506, 31.488060, 52.061443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282539, 31.170130, 52.303711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416760, 0.538405, 0.732414,
		-0.908239, -0.279948, -0.311015,
		0.037586, -0.794826, 0.605672,
		34.293816, 30.931683, 52.485413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644459, 31.171078, 52.291485>,  <34.267506, 31.488060, 52.061443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644459, 31.171078, 52.291485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 31.134865, 52.560699>,  <34.114250, 31.113138, 52.722229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938080, 31.134865, 52.560699>,  <33.644459, 31.171078, 52.291485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938080, 31.134865, 52.560699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539413, 0.524361, 0.658847,
		-0.412559, -0.846670, 0.336073,
		0.734049, -0.090531, 0.673035,
		34.158295, 31.107706, 52.762611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298473, 30.988855, 52.809937>,  <33.644459, 31.171078, 52.291485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298473, 30.988855, 52.809937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641075, 31.155207, 52.932209>,  <33.846638, 31.255018, 53.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641075, 31.155207, 52.932209>,  <33.298473, 30.988855, 52.809937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641075, 31.155207, 52.932209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512924, 0.619879, 0.593852,
		0.057485, -0.665429, 0.744244,
		0.856507, 0.415878, 0.305681,
		33.898026, 31.279970, 53.023914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466404, 30.860516, 53.500305>,  <33.298473, 30.988855, 52.809937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466404, 30.860516, 53.500305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605648, 31.230309, 53.438145>,  <33.689194, 31.452185, 53.400848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605648, 31.230309, 53.438145>,  <33.466404, 30.860516, 53.500305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605648, 31.230309, 53.438145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486869, 0.319947, 0.812768,
		0.801110, -0.207276, 0.561480,
		0.348111, 0.924484, -0.155397,
		33.710083, 31.507654, 53.391525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968742, 31.173658, 53.977104>,  <33.466404, 30.860516, 53.500305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968742, 31.173658, 53.977104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696003, 31.418905, 53.817520>,  <33.532360, 31.566053, 53.721767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696003, 31.418905, 53.817520>,  <33.968742, 31.173658, 53.977104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696003, 31.418905, 53.817520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421736, 0.116139, 0.899250,
		0.597681, 0.781408, 0.179384,
		-0.681847, 0.613118, -0.398962,
		33.491447, 31.602840, 53.697830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693565, 30.970087, 53.697842>,  <33.968742, 31.173658, 53.977104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693565, 30.970087, 53.697842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342724, 30.874475, 53.531204>,  <34.132217, 30.817108, 53.431221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342724, 30.874475, 53.531204>,  <34.693565, 30.970087, 53.697842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342724, 30.874475, 53.531204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475630, -0.552865, -0.684190,
		-0.066775, -0.798251, 0.598613,
		-0.877108, -0.239031, -0.416589,
		34.079590, 30.802767, 53.406227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764683, 30.363529, 53.361767>,  <34.693565, 30.970087, 53.697842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764683, 30.363529, 53.361767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423809, 30.481224, 53.188694>,  <34.219284, 30.551840, 53.084850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423809, 30.481224, 53.188694>,  <34.764683, 30.363529, 53.361767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423809, 30.481224, 53.188694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280077, -0.441976, -0.852182,
		-0.441976, -0.847397, 0.294235,
		0.852182, -0.294235, 0.432680,
		34.168156, 30.569494, 53.058891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335945, 29.754784, 53.065140>,  <34.764683, 30.363529, 53.361767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335945, 29.754784, 53.065140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258942, 30.105703, 52.889282>,  <34.212738, 30.316256, 52.783768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258942, 30.105703, 52.889282>,  <34.335945, 29.754784, 53.065140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258942, 30.105703, 52.889282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215224, -0.399366, -0.891171,
		-0.957402, -0.266180, -0.111935,
		-0.192509, 0.877300, -0.439642,
		34.201187, 30.368893, 52.757389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091225, 29.535881, 52.425156>,  <34.335945, 29.754784, 53.065140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091225, 29.535881, 52.425156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185169, 29.919691, 52.362984>,  <34.241535, 30.149977, 52.325680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185169, 29.919691, 52.362984>,  <34.091225, 29.535881, 52.425156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185169, 29.919691, 52.362984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116819, -0.186601, -0.975466,
		-0.964984, 0.210939, -0.155915,
		0.234858, 0.959523, -0.155425,
		34.255627, 30.207548, 52.316357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670532, 29.670174, 51.872143>,  <34.091225, 29.535881, 52.425156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670532, 29.670174, 51.872143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978115, 29.925879, 51.869194>,  <34.162663, 30.079302, 51.867424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978115, 29.925879, 51.869194>,  <33.670532, 29.670174, 51.872143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978115, 29.925879, 51.869194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094609, -0.125186, -0.987612,
		-0.632267, 0.758730, -0.156742,
		0.768953, 0.639263, -0.007369,
		34.208801, 30.117657, 51.866985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460003, 30.032192, 51.280861>,  <33.670532, 29.670174, 51.872143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460003, 30.032192, 51.280861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853817, 30.066832, 51.341770>,  <34.090107, 30.087616, 51.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853817, 30.066832, 51.341770>,  <33.460003, 30.032192, 51.280861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853817, 30.066832, 51.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168117, -0.222913, -0.960232,
		-0.049213, 0.970984, -0.234025,
		0.984538, 0.086599, 0.152269,
		34.149178, 30.092812, 51.387451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702141, 30.443148, 50.817978>,  <33.460003, 30.032192, 51.280861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702141, 30.443148, 50.817978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039146, 30.251286, 50.916035>,  <34.241352, 30.136168, 50.974869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039146, 30.251286, 50.916035>,  <33.702141, 30.443148, 50.817978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039146, 30.251286, 50.916035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187756, -0.165057, -0.968248,
		0.504890, 0.861792, -0.049004,
		0.842517, -0.479658, 0.245142,
		34.291901, 30.107388, 50.989578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220337, 30.679853, 50.351295>,  <33.702141, 30.443148, 50.817978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220337, 30.679853, 50.351295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350140, 30.324440, 50.481033>,  <34.428020, 30.111191, 50.558876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350140, 30.324440, 50.481033>,  <34.220337, 30.679853, 50.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350140, 30.324440, 50.481033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296409, -0.230105, -0.926927,
		0.898241, 0.396933, 0.188699,
		0.324508, -0.888536, 0.324345,
		34.447491, 30.057878, 50.578335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770870, 30.641777, 50.046486>,  <34.220337, 30.679853, 50.351295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770870, 30.641777, 50.046486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726299, 30.263466, 50.168526>,  <34.699558, 30.036480, 50.241749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726299, 30.263466, 50.168526>,  <34.770870, 30.641777, 50.046486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726299, 30.263466, 50.168526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518227, -0.317264, -0.794219,
		0.847953, 0.069616, 0.525480,
		-0.111426, -0.945779, 0.305102,
		34.692871, 29.979733, 50.260056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482433, 30.288515, 49.963509>,  <34.770870, 30.641777, 50.046486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482433, 30.288515, 49.963509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208641, 29.996916, 49.960842>,  <35.044365, 29.821957, 49.959240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208641, 29.996916, 49.960842>,  <35.482433, 30.288515, 49.963509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208641, 29.996916, 49.960842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449195, -0.414523, -0.791451,
		0.574202, -0.544731, 0.611196,
		-0.684482, -0.728999, -0.006670,
		35.003296, 29.778215, 49.958839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874466, 29.701763, 49.795441>,  <35.482433, 30.288515, 49.963509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874466, 29.701763, 49.795441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505711, 29.585680, 49.692764>,  <35.284458, 29.516029, 49.631157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505711, 29.585680, 49.692764>,  <35.874466, 29.701763, 49.795441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505711, 29.585680, 49.692764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364320, -0.423841, -0.829234,
		0.131854, -0.857984, 0.496465,
		-0.921892, -0.290210, -0.256696,
		35.229141, 29.498617, 49.615757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046692, 29.189709, 49.367912>,  <35.874466, 29.701763, 49.795441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046692, 29.189709, 49.367912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 29.277241, 49.270683>,  <35.441891, 29.329760, 49.212345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 29.277241, 49.270683>,  <36.046692, 29.189709, 49.367912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668690, 29.277241, 49.270683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161678, -0.333496, -0.928785,
		-0.284310, -0.917003, 0.279774,
		-0.945001, 0.218830, -0.243075,
		35.385189, 29.342890, 49.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696888, 28.571363, 49.233971>,  <36.046692, 29.189709, 49.367912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696888, 28.571363, 49.233971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505444, 28.876898, 49.060772>,  <35.390575, 29.060219, 48.956852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505444, 28.876898, 49.060772>,  <35.696888, 28.571363, 49.233971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505444, 28.876898, 49.060772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004747, -0.495388, -0.868659,
		-0.878012, -0.413698, 0.240726,
		-0.478615, 0.763836, -0.432993,
		35.361858, 29.106049, 48.930874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247169, 28.164005, 48.753574>,  <35.696888, 28.571363, 49.233971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247169, 28.164005, 48.753574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215591, 28.549627, 48.652092>,  <35.196644, 28.781000, 48.591202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215591, 28.549627, 48.652092>,  <35.247169, 28.164005, 48.753574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215591, 28.549627, 48.652092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161322, -0.263497, -0.951076,
		-0.983739, -0.034153, 0.176325,
		-0.078943, 0.964056, -0.253703,
		35.191910, 28.838844, 48.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741154, 28.144770, 48.270939>,  <35.247169, 28.164005, 48.753574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741154, 28.144770, 48.270939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927288, 28.496655, 48.231819>,  <35.038967, 28.707787, 48.208347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927288, 28.496655, 48.231819>,  <34.741154, 28.144770, 48.270939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927288, 28.496655, 48.231819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094230, -0.060631, -0.993703,
		-0.880104, 0.471622, 0.054681,
		0.465337, 0.879714, -0.097802,
		35.066891, 28.760569, 48.202480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314438, 28.607206, 47.925884>,  <34.741154, 28.144770, 48.270939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314438, 28.607206, 47.925884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696503, 28.694353, 47.845676>,  <34.925739, 28.746641, 47.797550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696503, 28.694353, 47.845676>,  <34.314438, 28.607206, 47.925884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696503, 28.694353, 47.845676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219444, 0.066195, -0.973377,
		-0.198792, 0.973731, 0.111036,
		0.955157, 0.217866, -0.200521,
		34.983051, 28.759712, 47.785519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250286, 29.134569, 47.550198>,  <34.314438, 28.607206, 47.925884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250286, 29.134569, 47.550198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622993, 29.018349, 47.463120>,  <34.846619, 28.948616, 47.410873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622993, 29.018349, 47.463120>,  <34.250286, 29.134569, 47.550198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622993, 29.018349, 47.463120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088618, 0.399476, -0.912450,
		0.352079, 0.869482, 0.346470,
		0.931765, -0.290551, -0.217699,
		34.902523, 28.931183, 47.397808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450001, 29.681784, 47.122883>,  <34.250286, 29.134569, 47.550198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450001, 29.681784, 47.122883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705368, 29.382599, 47.050251>,  <34.858589, 29.203087, 47.006672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705368, 29.382599, 47.050251>,  <34.450001, 29.681784, 47.122883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705368, 29.382599, 47.050251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107723, 0.146762, -0.983289,
		0.762114, 0.647310, 0.013123,
		0.638419, -0.747964, -0.181579,
		34.896893, 29.158209, 46.995777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041809, 29.937397, 46.737007>,  <34.450001, 29.681784, 47.122883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041809, 29.937397, 46.737007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978146, 29.550091, 46.659935>,  <34.939949, 29.317707, 46.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978146, 29.550091, 46.659935>,  <35.041809, 29.937397, 46.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978146, 29.550091, 46.659935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078636, 0.206985, -0.975179,
		0.984116, -0.140057, -0.109084,
		-0.159159, -0.968267, -0.192684,
		34.930397, 29.259611, 46.602131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189655, 29.940168, 46.029274>,  <35.041809, 29.937397, 46.737007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189655, 29.940168, 46.029274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031242, 29.576414, 46.080143>,  <34.936195, 29.358162, 46.110664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031242, 29.576414, 46.080143>,  <35.189655, 29.940168, 46.029274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031242, 29.576414, 46.080143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383428, 0.037934, -0.922792,
		0.834349, -0.414221, -0.363707,
		-0.396036, -0.909386, 0.127174,
		34.912430, 29.303598, 46.118294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348392, 29.628979, 45.386166>,  <35.189655, 29.940168, 46.029274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348392, 29.628979, 45.386166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070324, 29.398605, 45.558228>,  <34.903481, 29.260382, 45.661465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070324, 29.398605, 45.558228>,  <35.348392, 29.628979, 45.386166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070324, 29.398605, 45.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397680, -0.190358, -0.897560,
		0.598817, -0.795026, -0.096704,
		-0.695175, -0.575932, 0.430156,
		34.861771, 29.225826, 45.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282364, 28.941290, 45.098015>,  <35.348392, 29.628979, 45.386166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282364, 28.941290, 45.098015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926289, 29.002905, 45.269520>,  <34.712643, 29.039873, 45.372425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926289, 29.002905, 45.269520>,  <35.282364, 28.941290, 45.098015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926289, 29.002905, 45.269520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447418, -0.118070, -0.886497,
		-0.085928, -0.980985, 0.174023,
		-0.890187, 0.154036, 0.428764,
		34.659233, 29.049116, 45.398148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865223, 28.498596, 44.635468>,  <35.282364, 28.941290, 45.098015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865223, 28.498596, 44.635468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 28.696310, 44.815887>,  <34.389626, 28.814939, 44.924141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 28.696310, 44.815887>,  <34.865223, 28.498596, 44.635468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567974, 28.696310, 44.815887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529633, -0.022505, -0.847928,
		-0.408968, -0.869008, 0.278514,
		-0.743124, 0.494286, 0.451052,
		34.345036, 28.844595, 44.951202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237339, 28.085329, 44.561543>,  <34.865223, 28.498596, 44.635468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237339, 28.085329, 44.561543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148884, 28.470633, 44.622513>,  <34.095810, 28.701815, 44.659096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148884, 28.470633, 44.622513>,  <34.237339, 28.085329, 44.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148884, 28.470633, 44.622513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446921, 0.038817, -0.893731,
		-0.866809, -0.265761, 0.421916,
		-0.221141, 0.963257, 0.152421,
		34.082542, 28.759609, 44.668240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411209, 28.103613, 44.301006>,  <34.237339, 28.085329, 44.561543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411209, 28.103613, 44.301006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508320, 28.485771, 44.368271>,  <33.566586, 28.715067, 44.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508320, 28.485771, 44.368271>,  <33.411209, 28.103613, 44.301006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508320, 28.485771, 44.368271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518758, 0.274337, -0.809710,
		-0.819727, 0.109340, 0.562221,
		0.242772, 0.955398, 0.168160,
		33.581150, 28.772390, 44.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798077, 28.532602, 44.352928>,  <33.411209, 28.103613, 44.301006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798077, 28.532602, 44.352928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088963, 28.790541, 44.258839>,  <33.263496, 28.945303, 44.202385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088963, 28.790541, 44.258839>,  <32.798077, 28.532602, 44.352928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088963, 28.790541, 44.258839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465011, 0.210762, -0.859851,
		-0.504895, 0.734680, 0.453129,
		0.727218, 0.644844, -0.235222,
		33.307129, 28.983994, 44.188271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411209, 29.141699, 44.220474>,  <32.798077, 28.532602, 44.352928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411209, 29.141699, 44.220474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759380, 29.194820, 44.030861>,  <32.968285, 29.226694, 43.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759380, 29.194820, 44.030861>,  <32.411209, 29.141699, 44.220474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759380, 29.194820, 44.030861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490686, 0.311664, -0.813691,
		0.039677, 0.940866, 0.336448,
		0.870432, 0.132805, -0.474036,
		33.020512, 29.234661, 43.888649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362976, 29.710863, 43.740799>,  <32.411209, 29.141699, 44.220474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362976, 29.710863, 43.740799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681355, 29.550175, 43.559650>,  <32.872383, 29.453762, 43.450962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681355, 29.550175, 43.559650>,  <32.362976, 29.710863, 43.740799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681355, 29.550175, 43.559650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452806, 0.101442, -0.885819,
		0.401793, 0.910125, -0.101160,
		0.795945, -0.401723, -0.452869,
		32.920139, 29.429657, 43.423790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590179, 30.171766, 43.368965>,  <32.362976, 29.710863, 43.740799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590179, 30.171766, 43.368965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718410, 29.829140, 43.207214>,  <32.795349, 29.623564, 43.110165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718410, 29.829140, 43.207214>,  <32.590179, 30.171766, 43.368965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718410, 29.829140, 43.207214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429404, 0.249105, -0.868077,
		0.844300, 0.451928, -0.287956,
		0.320577, -0.856567, -0.404379,
		32.814583, 29.572170, 43.085899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935486, 30.394821, 42.788635>,  <32.590179, 30.171766, 43.368965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935486, 30.394821, 42.788635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869213, 30.005533, 42.724892>,  <32.829449, 29.771961, 42.686646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869213, 30.005533, 42.724892>,  <32.935486, 30.394821, 42.788635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869213, 30.005533, 42.724892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140281, 0.183203, -0.973015,
		0.976152, -0.138852, -0.166877,
		-0.165677, -0.973220, -0.159356,
		32.819511, 29.713568, 42.677086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332905, 30.216101, 42.182369>,  <32.935486, 30.394821, 42.788635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332905, 30.216101, 42.182369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062588, 29.922489, 42.209217>,  <32.900398, 29.746323, 42.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062588, 29.922489, 42.209217>,  <33.332905, 30.216101, 42.182369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062588, 29.922489, 42.209217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036035, -0.058054, -0.997663,
		0.736208, -0.676635, 0.012782,
		-0.675796, -0.734027, 0.067122,
		32.859848, 29.702282, 42.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547649, 29.817873, 41.667736>,  <33.332905, 30.216101, 42.182369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547649, 29.817873, 41.667736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166931, 29.717485, 41.738285>,  <32.938499, 29.657253, 41.780613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166931, 29.717485, 41.738285>,  <33.547649, 29.817873, 41.667736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166931, 29.717485, 41.738285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151233, -0.116303, -0.981632,
		0.266872, -0.960983, 0.072741,
		-0.951792, -0.250969, 0.176370,
		32.881393, 29.642195, 41.791195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444042, 29.319016, 41.286324>,  <33.547649, 29.817873, 41.667736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444042, 29.319016, 41.286324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082390, 29.478922, 41.346642>,  <32.865398, 29.574865, 41.382832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082390, 29.478922, 41.346642>,  <33.444042, 29.319016, 41.286324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082390, 29.478922, 41.346642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121691, 0.097372, -0.987780,
		-0.409563, -0.911431, -0.039389,
		-0.904129, 0.399765, 0.150793,
		32.811150, 29.598852, 41.391880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066792, 28.986200, 40.746307>,  <33.444042, 29.319016, 41.286324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066792, 28.986200, 40.746307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824200, 29.285509, 40.853836>,  <32.678646, 29.465096, 40.918354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824200, 29.285509, 40.853836>,  <33.066792, 28.986200, 40.746307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824200, 29.285509, 40.853836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120857, 0.247418, -0.961342,
		-0.785859, -0.615525, -0.059620,
		-0.606481, 0.748274, 0.268826,
		32.642254, 29.509991, 40.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568546, 28.960136, 40.200306>,  <33.066792, 28.986200, 40.746307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568546, 28.960136, 40.200306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484261, 29.319378, 40.354713>,  <32.433689, 29.534924, 40.447357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484261, 29.319378, 40.354713>,  <32.568546, 28.960136, 40.200306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484261, 29.319378, 40.354713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113815, 0.369658, -0.922171,
		-0.970899, -0.238252, 0.024324,
		-0.210718, 0.898103, 0.386017,
		32.421043, 29.588808, 40.470520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913500, 29.188427, 39.908276>,  <32.568546, 28.960136, 40.200306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913500, 29.188427, 39.908276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124031, 29.499498, 40.045792>,  <32.250351, 29.686140, 40.128304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124031, 29.499498, 40.045792>,  <31.913500, 29.188427, 39.908276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124031, 29.499498, 40.045792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279363, 0.540046, -0.793918,
		-0.803077, 0.321819, 0.501497,
		0.526330, 0.777678, 0.343794,
		32.281929, 29.732801, 40.148930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431162, 29.873377, 39.878025>,  <31.913500, 29.188427, 39.908276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431162, 29.873377, 39.878025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815918, 29.978739, 39.848663>,  <32.046772, 30.041956, 39.831047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815918, 29.978739, 39.848663>,  <31.431162, 29.873377, 39.878025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815918, 29.978739, 39.848663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231638, 0.642275, -0.730634,
		-0.145304, 0.719793, 0.678812,
		0.961889, 0.263403, -0.073406,
		32.104485, 30.057760, 39.826641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249681, 30.542545, 39.539879>,  <31.431162, 29.873377, 39.878025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249681, 30.542545, 39.539879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648798, 30.516338, 39.544189>,  <31.888268, 30.500614, 39.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648798, 30.516338, 39.544189>,  <31.249681, 30.542545, 39.539879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648798, 30.516338, 39.544189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054755, 0.720138, -0.691667,
		0.037559, 0.690730, 0.722137,
		0.997793, -0.065519, 0.010773,
		31.948135, 30.496683, 39.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474474, 31.211508, 39.671509>,  <31.249681, 30.542545, 39.539879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474474, 31.211508, 39.671509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777754, 31.024687, 39.489521>,  <31.959721, 30.912594, 39.380329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777754, 31.024687, 39.489521>,  <31.474474, 31.211508, 39.671509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777754, 31.024687, 39.489521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066313, 0.749400, -0.658788,
		0.648643, 0.469322, 0.599166,
		0.758199, -0.467051, -0.454971,
		32.005215, 30.884571, 39.353031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114071, 31.565645, 39.717205>,  <31.474474, 31.211508, 39.671509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114071, 31.565645, 39.717205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149323, 31.346537, 39.384415>,  <32.170475, 31.215071, 39.184742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149323, 31.346537, 39.384415>,  <32.114071, 31.565645, 39.717205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149323, 31.346537, 39.384415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150895, 0.832926, -0.532414,
		0.984614, -0.078619, 0.156061,
		0.088129, -0.547771, -0.831974,
		32.175762, 31.182205, 39.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707378, 31.859163, 39.374329>,  <32.114071, 31.565645, 39.717205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707378, 31.859163, 39.374329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529339, 31.636675, 39.093616>,  <32.422516, 31.503181, 38.925190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529339, 31.636675, 39.093616>,  <32.707378, 31.859163, 39.374329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529339, 31.636675, 39.093616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317112, 0.635006, -0.704419,
		0.837452, -0.536082, -0.106258,
		-0.445101, -0.556222, -0.701785,
		32.395809, 31.469809, 38.883080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169098, 31.820915, 38.792229>,  <32.707378, 31.859163, 39.374329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169098, 31.820915, 38.792229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812042, 31.738127, 38.632050>,  <32.597809, 31.688454, 38.535942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812042, 31.738127, 38.632050>,  <33.169098, 31.820915, 38.792229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812042, 31.738127, 38.632050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240033, 0.533693, -0.810899,
		0.381549, -0.819961, -0.426715,
		-0.892639, -0.206971, -0.400447,
		32.544250, 31.676035, 38.511917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275448, 31.823969, 38.076206>,  <33.169098, 31.820915, 38.792229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275448, 31.823969, 38.076206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877197, 31.858789, 38.089756>,  <32.638248, 31.879683, 38.097885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877197, 31.858789, 38.089756>,  <33.275448, 31.823969, 38.076206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877197, 31.858789, 38.089756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010729, 0.466834, -0.884280,
		-0.092794, -0.880050, -0.465726,
		-0.995627, 0.087052, 0.033877,
		32.578510, 31.884905, 38.099918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996449, 31.556688, 37.450573>,  <33.275448, 31.823969, 38.076206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996449, 31.556688, 37.450573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711529, 31.801729, 37.587597>,  <32.540577, 31.948753, 37.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711529, 31.801729, 37.587597>,  <32.996449, 31.556688, 37.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711529, 31.801729, 37.587597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081353, 0.412719, -0.907218,
		-0.697147, -0.674078, -0.244142,
		-0.712297, 0.612602, 0.342564,
		32.497841, 31.985510, 37.690365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688461, 31.525343, 37.528675>,  <32.996449, 31.556688, 37.450573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688461, 31.525343, 37.528675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036106, 31.600819, 37.345795>,  <34.244694, 31.646105, 37.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036106, 31.600819, 37.345795>,  <33.688461, 31.525343, 37.528675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036106, 31.600819, 37.345795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482011, -0.530407, 0.697377,
		-0.110915, -0.826477, -0.551935,
		0.869116, 0.188689, -0.457201,
		34.296841, 31.657425, 37.208633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073471, 30.907299, 37.515076>,  <33.688461, 31.525343, 37.528675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073471, 30.907299, 37.515076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356213, 31.176483, 37.427910>,  <34.525856, 31.337994, 37.375610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356213, 31.176483, 37.427910>,  <34.073471, 30.907299, 37.515076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356213, 31.176483, 37.427910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663267, -0.523483, 0.534830,
		0.245843, -0.522582, -0.816376,
		0.706851, 0.672959, -0.217916,
		34.568268, 31.378370, 37.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658058, 30.546600, 37.324558>,  <34.073471, 30.907299, 37.515076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658058, 30.546600, 37.324558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770924, 30.910200, 37.447262>,  <34.838642, 31.128361, 37.520882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770924, 30.910200, 37.447262>,  <34.658058, 30.546600, 37.324558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770924, 30.910200, 37.447262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627715, -0.416733, 0.657501,
		0.725506, 0.007034, -0.688180,
		0.282163, 0.909002, 0.306757,
		34.855572, 31.182901, 37.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376583, 30.605673, 37.274704>,  <34.658058, 30.546600, 37.324558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376583, 30.605673, 37.274704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231380, 30.846495, 37.559170>,  <35.144260, 30.990988, 37.729851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231380, 30.846495, 37.559170>,  <35.376583, 30.605673, 37.274704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231380, 30.846495, 37.559170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619845, -0.413833, 0.666734,
		0.695713, 0.682843, -0.222955,
		-0.363008, 0.602053, 0.711166,
		35.122478, 31.027111, 37.772518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964344, 30.746508, 37.656765>,  <35.376583, 30.605673, 37.274704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964344, 30.746508, 37.656765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689808, 30.876087, 37.917225>,  <35.525085, 30.953835, 38.073502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689808, 30.876087, 37.917225>,  <35.964344, 30.746508, 37.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689808, 30.876087, 37.917225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549245, -0.356001, 0.756038,
		0.476727, 0.876539, 0.066411,
		-0.686339, 0.323948, 0.651150,
		35.483906, 30.973272, 38.112572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259605, 31.168589, 38.261307>,  <35.964344, 30.746508, 37.656765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259605, 31.168589, 38.261307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898273, 31.064095, 38.397392>,  <35.681473, 31.001398, 38.479042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898273, 31.064095, 38.397392>,  <36.259605, 31.168589, 38.261307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898273, 31.064095, 38.397392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423079, -0.411972, 0.807021,
		-0.070662, 0.872946, 0.482671,
		-0.903333, -0.261234, 0.340214,
		35.627274, 30.985723, 38.499458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265549, 31.316994, 39.001522>,  <36.259605, 31.168589, 38.261307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265549, 31.316994, 39.001522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980972, 31.045694, 38.927944>,  <35.810226, 30.882915, 38.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980972, 31.045694, 38.927944>,  <36.265549, 31.316994, 39.001522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980972, 31.045694, 38.927944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307301, -0.535651, 0.786539,
		-0.631997, 0.503050, 0.589509,
		-0.711440, -0.678247, -0.183942,
		35.767540, 30.842220, 38.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975456, 31.166172, 39.504322>,  <36.265549, 31.316994, 39.001522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975456, 31.166172, 39.504322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827492, 30.831669, 39.342415>,  <35.738712, 30.630966, 39.245270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827492, 30.831669, 39.342415>,  <35.975456, 31.166172, 39.504322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827492, 30.831669, 39.342415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222535, -0.502742, 0.835302,
		-0.902022, 0.218912, 0.372067,
		-0.369911, -0.836258, -0.404769,
		35.716518, 30.580791, 39.220985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567028, 30.904869, 40.025005>,  <35.975456, 31.166172, 39.504322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567028, 30.904869, 40.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633301, 30.594088, 39.782059>,  <35.673065, 30.407618, 39.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633301, 30.594088, 39.782059>,  <35.567028, 30.904869, 40.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633301, 30.594088, 39.782059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065804, -0.605792, 0.792897,
		-0.983981, -0.171339, -0.049244,
		0.165686, -0.776955, -0.607363,
		35.683006, 30.361002, 39.599850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156837, 30.320396, 40.244106>,  <35.567028, 30.904869, 40.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156837, 30.320396, 40.244106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433311, 30.127939, 40.028416>,  <35.599197, 30.012465, 39.899002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433311, 30.127939, 40.028416>,  <35.156837, 30.320396, 40.244106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433311, 30.127939, 40.028416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169917, -0.617032, 0.768375,
		-0.702419, -0.622712, -0.344729,
		0.691185, -0.481145, -0.539224,
		35.640667, 29.983597, 39.866650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887760, 29.655357, 40.349670>,  <35.156837, 30.320396, 40.244106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887760, 29.655357, 40.349670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270378, 29.632927, 40.235210>,  <35.499947, 29.619469, 40.166534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270378, 29.632927, 40.235210>,  <34.887760, 29.655357, 40.349670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270378, 29.632927, 40.235210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165265, -0.704248, 0.690451,
		-0.240243, -0.707736, -0.664374,
		0.956541, -0.056078, -0.286154,
		35.557339, 29.616104, 40.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008854, 28.963717, 40.259724>,  <34.887760, 29.655357, 40.349670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008854, 28.963717, 40.259724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367168, 29.136715, 40.300743>,  <35.582157, 29.240515, 40.325356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367168, 29.136715, 40.300743>,  <35.008854, 28.963717, 40.259724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367168, 29.136715, 40.300743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242416, -0.668742, 0.702865,
		0.372564, -0.604757, -0.703893,
		0.895785, 0.432497, 0.102546,
		35.635902, 29.266464, 40.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438663, 28.432568, 40.289646>,  <35.008854, 28.963717, 40.259724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438663, 28.432568, 40.289646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656631, 28.730616, 40.443459>,  <35.787411, 28.909445, 40.535748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656631, 28.730616, 40.443459>,  <35.438663, 28.432568, 40.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656631, 28.730616, 40.443459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120772, -0.523564, 0.843383,
		0.829748, -0.413132, -0.375288,
		0.544916, 0.745119, 0.384531,
		35.820107, 28.954151, 40.558819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037739, 28.211483, 40.531631>,  <35.438663, 28.432568, 40.289646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037739, 28.211483, 40.531631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978184, 28.542168, 40.748657>,  <35.942451, 28.740578, 40.878872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978184, 28.542168, 40.748657>,  <36.037739, 28.211483, 40.531631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978184, 28.542168, 40.748657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230274, -0.504614, 0.832069,
		0.961669, 0.248821, -0.115241,
		-0.148885, 0.826712, 0.542569,
		35.933517, 28.790182, 40.911427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614975, 28.253323, 40.944267>,  <36.037739, 28.211483, 40.531631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614975, 28.253323, 40.944267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354397, 28.495584, 41.127045>,  <36.198048, 28.640942, 41.236713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354397, 28.495584, 41.127045>,  <36.614975, 28.253323, 40.944267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354397, 28.495584, 41.127045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409482, -0.226352, 0.883793,
		0.638703, 0.762856, -0.100547,
		-0.651447, 0.605653, 0.456947,
		36.158962, 28.677280, 41.264130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015244, 28.666527, 41.570637>,  <36.614975, 28.253323, 40.944267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015244, 28.666527, 41.570637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621658, 28.687824, 41.638741>,  <36.385509, 28.700602, 41.679604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621658, 28.687824, 41.638741>,  <37.015244, 28.666527, 41.570637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621658, 28.687824, 41.638741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165272, -0.087134, 0.982392,
		0.067139, 0.994773, 0.076937,
		-0.983960, 0.053242, 0.170258,
		36.326469, 28.703796, 41.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827236, 29.179201, 42.146709>,  <37.015244, 28.666527, 41.570637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827236, 29.179201, 42.146709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535019, 28.907310, 42.120537>,  <36.359688, 28.744177, 42.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535019, 28.907310, 42.120537>,  <36.827236, 29.179201, 42.146709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535019, 28.907310, 42.120537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032226, -0.130029, 0.990986,
		-0.682108, 0.721848, 0.116897,
		-0.730541, -0.679726, -0.065431,
		36.315857, 28.703392, 42.100906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443108, 29.368671, 42.673943>,  <36.827236, 29.179201, 42.146709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443108, 29.368671, 42.673943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316063, 29.004305, 42.568607>,  <36.239834, 28.785685, 42.505405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316063, 29.004305, 42.568607>,  <36.443108, 29.368671, 42.673943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316063, 29.004305, 42.568607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110826, -0.311480, 0.943768,
		-0.941721, 0.270571, 0.199884,
		-0.317616, -0.910918, -0.263341,
		36.220779, 28.731030, 42.489605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992516, 29.163519, 43.176319>,  <36.443108, 29.368671, 42.673943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992516, 29.163519, 43.176319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056358, 28.790344, 43.047226>,  <36.094662, 28.566439, 42.969772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056358, 28.790344, 43.047226>,  <35.992516, 29.163519, 43.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056358, 28.790344, 43.047226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090824, -0.339411, 0.936243,
		-0.982994, -0.120116, -0.138904,
		0.159604, -0.932937, -0.322730,
		36.104240, 28.510464, 42.950405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438904, 28.869926, 43.547222>,  <35.992516, 29.163519, 43.176319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438904, 28.869926, 43.547222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706821, 28.591326, 43.444260>,  <35.867573, 28.424166, 43.382484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706821, 28.591326, 43.444260>,  <35.438904, 28.869926, 43.547222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706821, 28.591326, 43.444260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094535, -0.423816, 0.900801,
		-0.736503, -0.579019, -0.349714,
		0.669796, -0.696503, -0.257404,
		35.907761, 28.382376, 43.367039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218929, 28.353722, 43.970406>,  <35.438904, 28.869926, 43.547222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218929, 28.353722, 43.970406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590271, 28.269032, 43.848209>,  <35.813076, 28.218218, 43.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590271, 28.269032, 43.848209>,  <35.218929, 28.353722, 43.970406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590271, 28.269032, 43.848209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148754, -0.541565, 0.827393,
		-0.340620, -0.813560, -0.471272,
		0.928359, -0.211723, -0.305489,
		35.868778, 28.205515, 43.756561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426674, 27.538839, 44.097126>,  <35.218929, 28.353722, 43.970406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426674, 27.538839, 44.097126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754440, 27.768105, 44.094704>,  <35.951099, 27.905663, 44.093250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754440, 27.768105, 44.094704>,  <35.426674, 27.538839, 44.097126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754440, 27.768105, 44.094704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301617, -0.422171, 0.854868,
		0.487419, -0.702323, -0.518811,
		0.819420, 0.573161, -0.006058,
		36.000267, 27.940052, 44.092888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034737, 27.188168, 44.528492>,  <35.426674, 27.538839, 44.097126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034737, 27.188168, 44.528492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169403, 27.564268, 44.508179>,  <36.250202, 27.789928, 44.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169403, 27.564268, 44.508179>,  <36.034737, 27.188168, 44.528492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169403, 27.564268, 44.508179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411311, -0.098334, 0.906175,
		0.847041, -0.325965, -0.419843,
		0.336666, 0.940254, -0.050780,
		36.270405, 27.846344, 44.492943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704819, 27.117039, 44.699348>,  <36.034737, 27.188168, 44.528492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704819, 27.117039, 44.699348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622604, 27.499706, 44.781849>,  <36.573277, 27.729307, 44.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622604, 27.499706, 44.781849>,  <36.704819, 27.117039, 44.699348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622604, 27.499706, 44.781849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382533, -0.115454, 0.916700,
		0.900791, 0.267312, -0.342228,
		-0.205533, 0.956668, 0.206255,
		36.560944, 27.786707, 44.843727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332497, 27.458828, 45.039856>,  <36.704819, 27.117039, 44.699348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332497, 27.458828, 45.039856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066139, 27.738356, 45.144348>,  <36.906326, 27.906073, 45.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066139, 27.738356, 45.144348>,  <37.332497, 27.458828, 45.039856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066139, 27.738356, 45.144348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411339, 0.051787, 0.910010,
		0.622403, 0.713423, -0.321936,
		-0.665894, 0.698817, 0.261227,
		36.866371, 27.948002, 45.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810455, 27.941858, 45.358646>,  <37.332497, 27.458828, 45.039856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810455, 27.941858, 45.358646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446270, 28.044538, 45.488361>,  <37.227760, 28.106148, 45.566193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446270, 28.044538, 45.488361>,  <37.810455, 27.941858, 45.358646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446270, 28.044538, 45.488361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345852, 0.042532, 0.937325,
		0.226821, 0.965554, -0.127504,
		-0.910461, 0.256702, 0.324292,
		37.173130, 28.121550, 45.585648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773045, 28.609169, 45.859013>,  <37.810455, 27.941858, 45.358646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773045, 28.609169, 45.859013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456165, 28.378393, 45.938576>,  <37.266037, 28.239927, 45.986313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456165, 28.378393, 45.938576>,  <37.773045, 28.609169, 45.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456165, 28.378393, 45.938576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282835, -0.058287, 0.957396,
		-0.540768, 0.814703, 0.209354,
		-0.792196, -0.576942, 0.198907,
		37.218506, 28.205311, 45.998249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637302, 28.883150, 46.529121>,  <37.773045, 28.609169, 45.859013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637302, 28.883150, 46.529121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458817, 28.526052, 46.504139>,  <37.351723, 28.311794, 46.489151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458817, 28.526052, 46.504139>,  <37.637302, 28.883150, 46.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458817, 28.526052, 46.504139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186902, -0.161215, 0.969060,
		-0.875189, 0.420739, 0.238793,
		-0.446218, -0.892742, -0.062456,
		37.324951, 28.258230, 46.485401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154015, 28.846251, 47.157944>,  <37.637302, 28.883150, 46.529121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154015, 28.846251, 47.157944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205303, 28.468122, 47.037991>,  <37.236076, 28.241245, 46.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205303, 28.468122, 47.037991>,  <37.154015, 28.846251, 47.157944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205303, 28.468122, 47.037991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225925, -0.266587, 0.936958,
		-0.965670, -0.187887, 0.179390,
		0.128219, -0.945320, -0.299883,
		37.243771, 28.184526, 46.948025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764313, 28.427013, 47.585129>,  <37.154015, 28.846251, 47.157944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764313, 28.427013, 47.585129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029881, 28.172731, 47.427601>,  <37.189220, 28.020163, 47.333084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029881, 28.172731, 47.427601>,  <36.764313, 28.427013, 47.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029881, 28.172731, 47.427601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339564, -0.212930, 0.916164,
		-0.666265, -0.741985, 0.074494,
		0.663918, -0.635703, -0.393820,
		37.229057, 27.982021, 47.309456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657253, 27.777617, 47.954144>,  <36.764313, 28.427013, 47.585129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657253, 27.777617, 47.954144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032856, 27.744379, 47.820663>,  <37.258217, 27.724436, 47.740574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032856, 27.744379, 47.820663>,  <36.657253, 27.777617, 47.954144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032856, 27.744379, 47.820663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327893, -0.076181, 0.941638,
		-0.103671, -0.993625, -0.044287,
		0.939009, -0.083099, -0.333700,
		37.314560, 27.719450, 47.720554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939896, 27.135206, 48.151306>,  <36.657253, 27.777617, 47.954144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939896, 27.135206, 48.151306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244991, 27.383703, 48.079430>,  <37.428047, 27.532801, 48.036304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244991, 27.383703, 48.079430>,  <36.939896, 27.135206, 48.151306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244991, 27.383703, 48.079430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327698, -0.131727, 0.935554,
		0.557534, -0.772469, -0.304053,
		0.762738, 0.621241, -0.179694,
		37.473812, 27.570076, 48.025520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542339, 26.841080, 48.444927>,  <36.939896, 27.135206, 48.151306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542339, 26.841080, 48.444927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633484, 27.230556, 48.445625>,  <37.688171, 27.464243, 48.446045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633484, 27.230556, 48.445625>,  <37.542339, 26.841080, 48.444927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633484, 27.230556, 48.445625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422274, -0.100433, 0.900887,
		0.877361, -0.204544, -0.434050,
		0.227864, 0.973692, 0.001743,
		37.701843, 27.522663, 48.446148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184753, 26.885603, 48.763401>,  <37.542339, 26.841080, 48.444927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184753, 26.885603, 48.763401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116714, 27.279364, 48.745415>,  <38.075893, 27.515619, 48.734623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116714, 27.279364, 48.745415>,  <38.184753, 26.885603, 48.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116714, 27.279364, 48.745415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495228, 0.124841, 0.859747,
		0.851949, 0.123970, -0.508738,
		-0.170094, 0.984402, -0.044965,
		38.065685, 27.574684, 48.731926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876369, 27.269339, 48.710850>,  <38.184753, 26.885603, 48.763401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876369, 27.269339, 48.710850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605938, 27.524641, 48.858116>,  <38.443680, 27.677822, 48.946476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605938, 27.524641, 48.858116>,  <38.876369, 27.269339, 48.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605938, 27.524641, 48.858116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536055, 0.083245, 0.840069,
		0.505529, 0.765312, -0.398419,
		-0.676081, 0.638254, 0.368166,
		38.403114, 27.716118, 48.968567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302021, 27.801098, 49.015530>,  <38.876369, 27.269339, 48.710850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302021, 27.801098, 49.015530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946873, 27.847115, 49.193722>,  <38.733784, 27.874725, 49.300636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946873, 27.847115, 49.193722>,  <39.302021, 27.801098, 49.015530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946873, 27.847115, 49.193722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458731, 0.146925, 0.876344,
		0.035364, 0.982435, -0.183223,
		-0.887871, 0.115042, 0.445477,
		38.680511, 27.881626, 49.327366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421722, 28.255375, 49.561337>,  <39.302021, 27.801098, 49.015530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421722, 28.255375, 49.561337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061287, 28.120218, 49.670052>,  <38.845024, 28.039124, 49.735279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061287, 28.120218, 49.670052>,  <39.421722, 28.255375, 49.561337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061287, 28.120218, 49.670052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229499, 0.160194, 0.960036,
		-0.367927, 0.927452, -0.066803,
		-0.901088, -0.337892, 0.271788,
		38.790962, 28.018850, 49.751587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267876, 28.762413, 50.169315>,  <39.421722, 28.255375, 49.561337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267876, 28.762413, 50.169315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055855, 28.423506, 50.183056>,  <38.928642, 28.220161, 50.191299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055855, 28.423506, 50.183056>,  <39.267876, 28.762413, 50.169315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055855, 28.423506, 50.183056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327543, -0.167211, 0.929922,
		-0.782150, 0.504159, 0.366148,
		-0.530053, -0.847269, 0.034350,
		38.896839, 28.169325, 50.193359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544018, 29.036613, 49.983921>,  <39.267876, 28.762413, 50.169315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544018, 29.036613, 49.983921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679466, 29.397072, 50.092197>,  <38.760735, 29.613346, 50.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679466, 29.397072, 50.092197>,  <38.544018, 29.036613, 49.983921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679466, 29.397072, 50.092197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147369, 0.233343, -0.961163,
		-0.929310, 0.365362, -0.053786,
		0.338622, 0.901145, 0.270691,
		38.781052, 29.667416, 50.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145779, 29.523371, 49.512699>,  <38.544018, 29.036613, 49.983921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145779, 29.523371, 49.512699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484024, 29.676268, 49.661732>,  <38.686974, 29.768005, 49.751152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484024, 29.676268, 49.661732>,  <38.145779, 29.523371, 49.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484024, 29.676268, 49.661732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182282, 0.449256, -0.874610,
		-0.501701, 0.807501, 0.310222,
		0.845618, 0.382244, 0.372585,
		38.737709, 29.790941, 49.773506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078373, 30.221815, 49.364849>,  <38.145779, 29.523371, 49.512699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078373, 30.221815, 49.364849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460762, 30.118591, 49.420723>,  <38.690197, 30.056656, 49.454247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460762, 30.118591, 49.420723>,  <38.078373, 30.221815, 49.364849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460762, 30.118591, 49.420723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240740, 0.417542, -0.876186,
		0.167786, 0.871242, 0.461286,
		0.955977, -0.258061, 0.139685,
		38.747555, 30.041172, 49.462627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409164, 30.833944, 49.329887>,  <38.078373, 30.221815, 49.364849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409164, 30.833944, 49.329887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671707, 30.544880, 49.243214>,  <38.829235, 30.371441, 49.191208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671707, 30.544880, 49.243214>,  <38.409164, 30.833944, 49.329887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671707, 30.544880, 49.243214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145699, 0.403217, -0.903431,
		0.740245, 0.561405, 0.369947,
		0.656360, -0.722662, -0.216683,
		38.868614, 30.328081, 49.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907963, 31.241886, 48.988106>,  <38.409164, 30.833944, 49.329887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907963, 31.241886, 48.988106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002712, 30.863050, 48.901470>,  <39.059563, 30.635750, 48.849487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002712, 30.863050, 48.901470>,  <38.907963, 31.241886, 48.988106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002712, 30.863050, 48.901470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213443, 0.268220, -0.939415,
		0.947803, 0.176297, 0.265685,
		0.236878, -0.947089, -0.216591,
		39.073776, 30.578924, 48.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471359, 31.288891, 48.432541>,  <38.907963, 31.241886, 48.988106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471359, 31.288891, 48.432541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290443, 30.932169, 48.428223>,  <39.181892, 30.718136, 48.425632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290443, 30.932169, 48.428223>,  <39.471359, 31.288891, 48.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290443, 30.932169, 48.428223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088417, 0.056876, -0.994459,
		0.887476, -0.448833, -0.104575,
		-0.452293, -0.891804, -0.010792,
		39.154755, 30.664627, 48.424984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572247, 31.018932, 47.718819>,  <39.471359, 31.288891, 48.432541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572247, 31.018932, 47.718819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287750, 30.775455, 47.859463>,  <39.117054, 30.629370, 47.943851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287750, 30.775455, 47.859463>,  <39.572247, 31.018932, 47.718819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287750, 30.775455, 47.859463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253697, -0.244215, -0.935947,
		0.655572, -0.754887, 0.019272,
		-0.711241, -0.608691, 0.351613,
		39.074379, 30.592848, 47.964947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536427, 30.490816, 47.291451>,  <39.572247, 31.018932, 47.718819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536427, 30.490816, 47.291451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186947, 30.414131, 47.470287>,  <38.977257, 30.368120, 47.577587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186947, 30.414131, 47.470287>,  <39.536427, 30.490816, 47.291451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186947, 30.414131, 47.470287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436277, -0.097744, -0.894488,
		0.215186, -0.976572, 0.001759,
		-0.873703, -0.191714, 0.447089,
		38.924835, 30.356617, 47.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265755, 29.882469, 46.998581>,  <39.536427, 30.490816, 47.291451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265755, 29.882469, 46.998581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962936, 30.085480, 47.163166>,  <38.781246, 30.207287, 47.261917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962936, 30.085480, 47.163166>,  <39.265755, 29.882469, 46.998581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962936, 30.085480, 47.163166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394998, 0.146114, -0.906988,
		-0.520440, -0.849157, 0.089858,
		-0.757045, 0.507527, 0.411459,
		38.735825, 30.237738, 47.286602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685654, 29.556108, 46.712738>,  <39.265755, 29.882469, 46.998581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685654, 29.556108, 46.712738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578606, 29.923668, 46.828671>,  <38.514378, 30.144203, 46.898232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578606, 29.923668, 46.828671>,  <38.685654, 29.556108, 46.712738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578606, 29.923668, 46.828671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512632, 0.118912, -0.850334,
		-0.815837, -0.376143, 0.439235,
		-0.267617, 0.918900, 0.289836,
		38.498322, 30.199337, 46.915623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944984, 29.506279, 46.698174>,  <38.685654, 29.556108, 46.712738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944984, 29.506279, 46.698174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070915, 29.885717, 46.685215>,  <38.146473, 30.113380, 46.677441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070915, 29.885717, 46.685215>,  <37.944984, 29.506279, 46.698174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070915, 29.885717, 46.685215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507318, 0.139333, -0.850421,
		-0.802191, 0.284173, 0.525105,
		0.314831, 0.948595, -0.032394,
		38.165363, 30.170296, 46.675495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424408, 29.966610, 46.501587>,  <37.944984, 29.506279, 46.698174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424408, 29.966610, 46.501587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745113, 30.175117, 46.384655>,  <37.937538, 30.300222, 46.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745113, 30.175117, 46.384655>,  <37.424408, 29.966610, 46.501587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745113, 30.175117, 46.384655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442685, 0.189384, -0.876449,
		-0.401504, 0.832113, 0.382599,
		0.801763, 0.521269, -0.292326,
		37.985641, 30.331499, 46.296959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154987, 30.505636, 46.076172>,  <37.424408, 29.966610, 46.501587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154987, 30.505636, 46.076172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547832, 30.478271, 46.006001>,  <37.783539, 30.461853, 45.963898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547832, 30.478271, 46.006001>,  <37.154987, 30.505636, 46.076172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547832, 30.478271, 46.006001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153756, 0.246432, -0.956886,
		0.108693, 0.966743, 0.231505,
		0.982113, -0.068411, -0.175428,
		37.842464, 30.457748, 45.953373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363995, 31.086330, 45.678619>,  <37.154987, 30.505636, 46.076172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363995, 31.086330, 45.678619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669422, 30.839340, 45.603058>,  <37.852680, 30.691147, 45.557720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669422, 30.839340, 45.603058>,  <37.363995, 31.086330, 45.678619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669422, 30.839340, 45.603058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031444, 0.327753, -0.944240,
		0.644958, 0.715054, 0.269679,
		0.763571, -0.617475, -0.188903,
		37.898495, 30.654099, 45.546387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788719, 31.473186, 45.248043>,  <37.363995, 31.086330, 45.678619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788719, 31.473186, 45.248043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898663, 31.093348, 45.187752>,  <37.964630, 30.865444, 45.151577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898663, 31.093348, 45.187752>,  <37.788719, 31.473186, 45.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898663, 31.093348, 45.187752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055135, 0.172074, -0.983540,
		0.959903, 0.262024, 0.099652,
		0.274859, -0.949597, -0.150727,
		37.981121, 30.808468, 45.142532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278095, 31.509275, 44.806099>,  <37.788719, 31.473186, 45.248043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278095, 31.509275, 44.806099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145168, 31.132418, 44.788509>,  <38.065411, 30.906303, 44.777958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145168, 31.132418, 44.788509>,  <38.278095, 31.509275, 44.806099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145168, 31.132418, 44.788509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062511, 0.068520, -0.995689,
		0.941094, -0.328136, -0.081664,
		-0.332317, -0.942142, -0.043972,
		38.045471, 30.849775, 44.775318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601456, 31.134840, 44.291054>,  <38.278095, 31.509275, 44.806099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601456, 31.134840, 44.291054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245453, 30.958851, 44.338905>,  <38.031853, 30.853258, 44.367619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245453, 30.958851, 44.338905>,  <38.601456, 31.134840, 44.291054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245453, 30.958851, 44.338905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110887, -0.045638, -0.992785,
		0.442257, -0.896851, -0.008168,
		-0.890008, -0.439971, 0.119633,
		37.978451, 30.826860, 44.374794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612232, 30.717564, 43.704300>,  <38.601456, 31.134840, 44.291054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612232, 30.717564, 43.704300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237434, 30.730116, 43.843475>,  <38.012558, 30.737646, 43.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237434, 30.730116, 43.843475>,  <38.612232, 30.717564, 43.704300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237434, 30.730116, 43.843475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346417, 0.045324, -0.936985,
		-0.045173, -0.998479, -0.031597,
		-0.936993, 0.031381, 0.347938,
		37.956337, 30.739529, 43.947857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304268, 30.251694, 43.296646>,  <38.612232, 30.717564, 43.704300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304268, 30.251694, 43.296646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008915, 30.471640, 43.452824>,  <37.831703, 30.603607, 43.546532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008915, 30.471640, 43.452824>,  <38.304268, 30.251694, 43.296646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008915, 30.471640, 43.452824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405380, 0.100797, -0.908574,
		-0.538948, -0.829150, 0.148478,
		-0.738378, 0.549864, 0.390446,
		37.787403, 30.636599, 43.569958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684929, 30.003223, 42.983379>,  <38.304268, 30.251694, 43.296646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684929, 30.003223, 42.983379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596962, 30.376425, 43.097321>,  <37.544182, 30.600346, 43.165684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596962, 30.376425, 43.097321>,  <37.684929, 30.003223, 42.983379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596962, 30.376425, 43.097321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379550, 0.187159, -0.906042,
		-0.898654, -0.307369, 0.312963,
		-0.219915, 0.933003, 0.284853,
		37.530987, 30.656326, 43.182777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064041, 30.100161, 42.693615>,  <37.684929, 30.003223, 42.983379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064041, 30.100161, 42.693615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226490, 30.460138, 42.757072>,  <37.323959, 30.676125, 42.795147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226490, 30.460138, 42.757072>,  <37.064041, 30.100161, 42.693615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226490, 30.460138, 42.757072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188250, 0.252271, -0.949169,
		-0.894217, 0.355616, 0.271867,
		0.406124, 0.899942, 0.158640,
		37.348328, 30.730122, 42.804665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621113, 30.569237, 42.322243>,  <37.064041, 30.100161, 42.693615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621113, 30.569237, 42.322243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975964, 30.749372, 42.362644>,  <37.188873, 30.857454, 42.386887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975964, 30.749372, 42.362644>,  <36.621113, 30.569237, 42.322243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975964, 30.749372, 42.362644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000111, 0.218649, -0.975804,
		-0.461526, 0.865673, 0.193920,
		0.887127, 0.450337, 0.101008,
		37.242100, 30.884474, 42.392948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558826, 31.258574, 41.986179>,  <36.621113, 30.569237, 42.322243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558826, 31.258574, 41.986179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948017, 31.176844, 42.029198>,  <37.181530, 31.127806, 42.055008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948017, 31.176844, 42.029198>,  <36.558826, 31.258574, 41.986179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948017, 31.176844, 42.029198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160761, 0.265116, -0.950720,
		0.165744, 0.942319, 0.290800,
		0.972977, -0.204326, 0.107547,
		37.239910, 31.115545, 42.061462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880974, 31.803806, 41.688488>,  <36.558826, 31.258574, 41.986179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880974, 31.803806, 41.688488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170086, 31.528492, 41.713341>,  <37.343552, 31.363304, 41.728252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170086, 31.528492, 41.713341>,  <36.880974, 31.803806, 41.688488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170086, 31.528492, 41.713341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243409, 0.169399, -0.955016,
		0.646798, 0.705386, 0.289972,
		0.722776, -0.688284, 0.062130,
		37.386917, 31.322006, 41.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565254, 32.062309, 41.378151>,  <36.880974, 31.803806, 41.688488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565254, 32.062309, 41.378151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556961, 31.662441, 41.371964>,  <37.551987, 31.422522, 41.368252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556961, 31.662441, 41.371964>,  <37.565254, 32.062309, 41.378151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556961, 31.662441, 41.371964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248802, 0.009826, -0.968504,
		0.968332, -0.023928, 0.248515,
		-0.020732, -0.999665, -0.015469,
		37.550743, 31.362541, 41.367321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178589, 31.955322, 41.062595>,  <37.565254, 32.062309, 41.378151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178589, 31.955322, 41.062595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997215, 31.599329, 41.043297>,  <37.888393, 31.385733, 41.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997215, 31.599329, 41.043297>,  <38.178589, 31.955322, 41.062595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997215, 31.599329, 41.043297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402518, -0.156176, -0.901991,
		0.795223, -0.428412, 0.429049,
		-0.453432, -0.889984, -0.048249,
		37.861187, 31.332335, 41.028824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595760, 31.521244, 40.814301>,  <38.178589, 31.955322, 41.062595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595760, 31.521244, 40.814301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255646, 31.336452, 40.713440>,  <38.051575, 31.225578, 40.652924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255646, 31.336452, 40.713440>,  <38.595760, 31.521244, 40.814301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255646, 31.336452, 40.713440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360638, -0.162476, -0.918445,
		0.383335, -0.871881, 0.304759,
		-0.850291, -0.461980, -0.252151,
		38.000557, 31.197859, 40.637794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794529, 30.839808, 40.496086>,  <38.595760, 31.521244, 40.814301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794529, 30.839808, 40.496086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428661, 30.954880, 40.382504>,  <38.209141, 31.023922, 40.314354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428661, 30.954880, 40.382504>,  <38.794529, 30.839808, 40.496086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428661, 30.954880, 40.382504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291326, -0.017813, -0.956458,
		-0.280211, -0.957561, -0.067515,
		-0.914665, 0.287679, -0.283954,
		38.154263, 31.041183, 40.297318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660328, 30.463770, 39.864742>,  <38.794529, 30.839808, 40.496086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660328, 30.463770, 39.864742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430176, 30.790529, 39.880802>,  <38.292084, 30.986586, 39.890438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430176, 30.790529, 39.880802>,  <38.660328, 30.463770, 39.864742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430176, 30.790529, 39.880802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210924, 0.195639, -0.957725,
		-0.790219, -0.542589, -0.284871,
		-0.575382, 0.816898, 0.040152,
		38.257561, 31.035599, 39.892849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340256, 30.410601, 39.289963>,  <38.660328, 30.463770, 39.864742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340256, 30.410601, 39.289963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279606, 30.792681, 39.391628>,  <38.243214, 31.021929, 39.452625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279606, 30.792681, 39.391628>,  <38.340256, 30.410601, 39.289963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279606, 30.792681, 39.391628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161371, 0.277607, -0.947045,
		-0.975176, -0.102583, -0.196235,
		-0.151626, 0.955202, 0.254162,
		38.234119, 31.079241, 39.467876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069885, 30.573444, 38.725742>,  <38.340256, 30.410601, 39.289963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069885, 30.573444, 38.725742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186943, 30.911469, 38.904732>,  <38.257179, 31.114283, 39.012127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186943, 30.911469, 38.904732>,  <38.069885, 30.573444, 38.725742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186943, 30.911469, 38.904732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159752, 0.418177, -0.894208,
		-0.942783, 0.333169, -0.012623,
		0.292644, 0.845060, 0.447475,
		38.274734, 31.164986, 39.038975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741428, 31.192564, 38.358406>,  <38.069885, 30.573444, 38.725742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741428, 31.192564, 38.358406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031082, 31.395491, 38.545280>,  <38.204872, 31.517246, 38.657406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031082, 31.395491, 38.545280>,  <37.741428, 31.192564, 38.358406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031082, 31.395491, 38.545280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152814, 0.542545, -0.826010,
		-0.672518, 0.669533, 0.315349,
		0.724132, 0.507317, 0.467185,
		38.248322, 31.547686, 38.685436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710922, 31.885691, 38.097782>,  <37.741428, 31.192564, 38.358406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710922, 31.885691, 38.097782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081917, 31.868309, 38.246311>,  <38.304512, 31.857880, 38.335430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081917, 31.868309, 38.246311>,  <37.710922, 31.885691, 38.097782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081917, 31.868309, 38.246311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325258, 0.583485, -0.744146,
		-0.184324, 0.810961, 0.555308,
		0.927487, -0.043455, 0.371321,
		38.360165, 31.855272, 38.357708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986343, 32.475422, 38.249439>,  <37.710922, 31.885691, 38.097782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986343, 32.475422, 38.249439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331684, 32.276382, 38.215942>,  <38.538891, 32.156960, 38.195843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331684, 32.276382, 38.215942>,  <37.986343, 32.475422, 38.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331684, 32.276382, 38.215942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325667, 0.676257, -0.660771,
		0.385430, 0.543208, 0.745902,
		0.863357, -0.497597, -0.083745,
		38.590691, 32.127102, 38.190819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506149, 32.995838, 38.237579>,  <37.986343, 32.475422, 38.249439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506149, 32.995838, 38.237579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675976, 32.670471, 38.078529>,  <38.777870, 32.475250, 37.983101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675976, 32.670471, 38.078529>,  <38.506149, 32.995838, 38.237579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675976, 32.670471, 38.078529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311271, 0.543531, -0.779541,
		0.850210, 0.207197, 0.483956,
		0.424563, -0.813415, -0.397620,
		38.803345, 32.426445, 37.959244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265026, 33.132561, 38.075962>,  <38.506149, 32.995838, 38.237579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265026, 33.132561, 38.075962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146233, 32.823277, 37.851837>,  <39.074959, 32.637707, 37.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146233, 32.823277, 37.851837>,  <39.265026, 33.132561, 38.075962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146233, 32.823277, 37.851837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250971, 0.502947, -0.827078,
		0.921312, -0.386248, 0.044688,
		-0.296981, -0.773212, -0.560308,
		39.057137, 32.591312, 37.683746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865761, 32.982613, 37.731335>,  <39.265026, 33.132561, 38.075962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865761, 32.982613, 37.731335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567398, 32.802536, 37.534988>,  <39.388378, 32.694492, 37.417179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567398, 32.802536, 37.534988>,  <39.865761, 32.982613, 37.731335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567398, 32.802536, 37.534988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283988, 0.451669, -0.845782,
		0.602468, -0.770277, -0.209057,
		-0.745911, -0.450187, -0.490865,
		39.343624, 32.667480, 37.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150024, 32.842625, 37.097675>,  <39.865761, 32.982613, 37.731335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150024, 32.842625, 37.097675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756809, 32.814915, 37.029739>,  <39.520882, 32.798286, 36.988979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756809, 32.814915, 37.029739>,  <40.150024, 32.842625, 37.097675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756809, 32.814915, 37.029739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099877, 0.574447, -0.812426,
		0.153844, -0.815605, -0.557782,
		-0.983034, -0.069277, -0.169836,
		39.461899, 32.794132, 36.978790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146385, 32.857872, 36.342808>,  <40.150024, 32.842625, 37.097675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146385, 32.857872, 36.342808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774746, 32.953556, 36.455635>,  <39.551762, 33.010967, 36.523331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774746, 32.953556, 36.455635>,  <40.146385, 32.857872, 36.342808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774746, 32.953556, 36.455635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083330, 0.607678, -0.789800,
		-0.360335, -0.757303, -0.544656,
		-0.929093, 0.239206, 0.282073,
		39.496017, 33.025318, 36.540257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853577, 32.824875, 35.707138>,  <40.146385, 32.857872, 36.342808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853577, 32.824875, 35.707138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626278, 33.045570, 35.951328>,  <39.489899, 33.177990, 36.097843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626278, 33.045570, 35.951328>,  <39.853577, 32.824875, 35.707138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626278, 33.045570, 35.951328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063313, 0.769011, -0.636092,
		-0.820418, -0.322807, -0.471921,
		-0.568248, 0.551740, 0.610472,
		39.455803, 33.211094, 36.134468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293411, 33.083729, 35.322483>,  <39.853577, 32.824875, 35.707138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293411, 33.083729, 35.322483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359688, 33.323215, 35.635937>,  <39.399452, 33.466908, 35.824009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359688, 33.323215, 35.635937>,  <39.293411, 33.083729, 35.322483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359688, 33.323215, 35.635937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213899, 0.753882, -0.621215,
		-0.962701, 0.270549, -0.003154,
		0.165691, 0.598719, 0.783633,
		39.409393, 33.502831, 35.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813282, 33.599903, 35.392052>,  <39.293411, 33.083729, 35.322483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813282, 33.599903, 35.392052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189537, 33.705818, 35.476982>,  <39.415291, 33.769367, 35.527939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189537, 33.705818, 35.476982>,  <38.813282, 33.599903, 35.392052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189537, 33.705818, 35.476982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023109, 0.574156, -0.818420,
		-0.338616, 0.774746, 0.533955,
		0.940641, 0.264791, 0.212322,
		39.471729, 33.785255, 35.540680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940319, 34.343357, 35.376183>,  <38.813282, 33.599903, 35.392052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940319, 34.343357, 35.376183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272507, 34.133846, 35.300301>,  <39.471817, 34.008141, 35.254772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272507, 34.133846, 35.300301>,  <38.940319, 34.343357, 35.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272507, 34.133846, 35.300301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168326, 0.560558, -0.810828,
		0.531031, 0.641432, 0.553688,
		0.830465, -0.523775, -0.189704,
		39.521645, 33.976715, 35.243389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413803, 34.912365, 35.255253>,  <38.940319, 34.343357, 35.376183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413803, 34.912365, 35.255253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534370, 34.576195, 35.075108>,  <39.606712, 34.374493, 34.967022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534370, 34.576195, 35.075108>,  <39.413803, 34.912365, 35.255253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534370, 34.576195, 35.075108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252636, 0.525845, -0.812196,
		0.919412, 0.131036, 0.370824,
		0.301423, -0.840427, -0.450364,
		39.624798, 34.324066, 34.939999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037090, 35.192585, 34.909275>,  <39.413803, 34.912365, 35.255253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037090, 35.192585, 34.909275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898037, 34.856945, 34.741913>,  <39.814606, 34.655560, 34.641495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898037, 34.856945, 34.741913>,  <40.037090, 35.192585, 34.909275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898037, 34.856945, 34.741913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382150, 0.280692, -0.880439,
		0.856219, -0.465963, 0.223085,
		-0.347633, -0.839101, -0.418402,
		39.793747, 34.605213, 34.616394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586193, 34.903858, 34.435158>,  <40.037090, 35.192585, 34.909275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586193, 34.903858, 34.435158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199638, 34.847103, 34.349396>,  <39.967705, 34.813049, 34.297939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199638, 34.847103, 34.349396>,  <40.586193, 34.903858, 34.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199638, 34.847103, 34.349396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151674, 0.358753, -0.921027,
		0.207599, -0.922586, -0.325173,
		-0.966384, -0.141884, -0.214409,
		39.909721, 34.804539, 34.285072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019646, 35.627075, 34.383698>,  <40.586193, 34.903858, 34.435158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019646, 35.627075, 34.383698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226540, 35.962341, 34.314484>,  <41.350677, 36.163502, 34.272953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226540, 35.962341, 34.314484>,  <41.019646, 35.627075, 34.383698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226540, 35.962341, 34.314484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587390, -0.494712, -0.640494,
		-0.622444, 0.229649, -0.748215,
		0.517239, 0.838166, -0.173037,
		41.381710, 36.213791, 34.262573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627296, 35.151630, 34.555321>,  <41.019646, 35.627075, 34.383698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627296, 35.151630, 34.555321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022259, 35.091259, 34.536354>,  <42.259235, 35.055038, 34.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022259, 35.091259, 34.536354>,  <41.627296, 35.151630, 34.555321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022259, 35.091259, 34.536354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084452, -0.249430, -0.964703,
		0.133772, 0.956559, -0.259035,
		0.987407, -0.150927, -0.047417,
		42.318481, 35.045982, 34.522129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982643, 35.589748, 34.060654>,  <41.627296, 35.151630, 34.555321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982643, 35.589748, 34.060654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200455, 35.259552, 34.120056>,  <42.331142, 35.061436, 34.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200455, 35.259552, 34.120056>,  <41.982643, 35.589748, 34.060654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200455, 35.259552, 34.120056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028138, -0.194936, -0.980412,
		0.838268, 0.529687, -0.129377,
		0.544532, -0.825489, 0.148504,
		42.363815, 35.011906, 34.164608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381660, 35.582035, 33.444572>,  <41.982643, 35.589748, 34.060654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381660, 35.582035, 33.444572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381348, 35.212650, 33.598045>,  <42.381161, 34.991020, 33.690128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381348, 35.212650, 33.598045>,  <42.381660, 35.582035, 33.444572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381348, 35.212650, 33.598045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185605, -0.376878, -0.907477,
		0.982624, -0.071925, -0.171105,
		-0.000784, -0.923466, 0.383679,
		42.381111, 34.935612, 33.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679028, 35.217453, 32.938236>,  <42.381660, 35.582035, 33.444572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679028, 35.217453, 32.938236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512672, 34.930717, 33.162086>,  <42.412857, 34.758678, 33.296398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512672, 34.930717, 33.162086>,  <42.679028, 35.217453, 32.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512672, 34.930717, 33.162086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300324, -0.472589, -0.828532,
		0.858395, -0.512647, -0.018738,
		-0.415889, -0.716835, 0.559629,
		42.387905, 34.715668, 33.329975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059906, 34.668961, 32.813587>,  <42.679028, 35.217453, 32.938236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059906, 34.668961, 32.813587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728424, 34.496788, 32.956684>,  <42.529533, 34.393482, 33.042542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728424, 34.496788, 32.956684>,  <43.059906, 34.668961, 32.813587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728424, 34.496788, 32.956684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023602, -0.611732, -0.790713,
		0.559190, -0.663710, 0.496785,
		-0.828704, -0.430433, 0.357739,
		42.479813, 34.367657, 33.064007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142357, 33.982506, 32.698986>,  <43.059906, 34.668961, 32.813587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142357, 33.982506, 32.698986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750992, 34.020718, 32.772278>,  <42.516171, 34.043644, 32.816254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750992, 34.020718, 32.772278>,  <43.142357, 33.982506, 32.698986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750992, 34.020718, 32.772278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205971, -0.522072, -0.827658,
		0.016590, -0.847534, 0.530481,
		-0.978417, 0.095533, 0.183229,
		42.457466, 34.049377, 32.827248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847107, 33.261013, 32.853699>,  <43.142357, 33.982506, 32.698986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847107, 33.261013, 32.853699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567650, 33.503922, 32.702377>,  <42.399975, 33.649666, 32.611584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567650, 33.503922, 32.702377>,  <42.847107, 33.261013, 32.853699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567650, 33.503922, 32.702377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120792, -0.621275, -0.774227,
		-0.705201, -0.495211, 0.507403,
		-0.698642, 0.607276, -0.378306,
		42.358055, 33.686104, 32.588886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451206, 32.878162, 32.504204>,  <42.847107, 33.261013, 32.853699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451206, 32.878162, 32.504204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301712, 33.212620, 32.343609>,  <42.212017, 33.413292, 32.247253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301712, 33.212620, 32.343609>,  <42.451206, 32.878162, 32.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301712, 33.212620, 32.343609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152209, -0.482273, -0.862697,
		-0.914961, -0.261311, 0.307511,
		-0.373736, 0.836140, -0.401487,
		42.189590, 33.463463, 32.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783581, 32.735458, 32.266586>,  <42.451206, 32.878162, 32.504204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783581, 32.735458, 32.266586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905331, 33.050224, 32.051880>,  <41.978382, 33.239082, 31.923056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905331, 33.050224, 32.051880>,  <41.783581, 32.735458, 32.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905331, 33.050224, 32.051880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303618, -0.453969, -0.837692,
		-0.902868, 0.417947, 0.100744,
		0.304376, 0.786913, -0.536771,
		41.996643, 33.286297, 31.890848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237320, 32.836594, 31.793127>,  <41.783581, 32.735458, 32.266586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237320, 32.836594, 31.793127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557358, 33.029076, 31.649855>,  <41.749378, 33.144566, 31.563890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557358, 33.029076, 31.649855>,  <41.237320, 32.836594, 31.793127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557358, 33.029076, 31.649855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205267, -0.341433, -0.917218,
		-0.563666, 0.807382, -0.174402,
		0.800092, 0.481205, -0.358183,
		41.797386, 33.173439, 31.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031197, 33.143665, 31.212240>,  <41.237320, 32.836594, 31.793127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031197, 33.143665, 31.212240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429417, 33.155205, 31.176374>,  <41.668350, 33.162128, 31.154856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429417, 33.155205, 31.176374>,  <41.031197, 33.143665, 31.212240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429417, 33.155205, 31.176374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084161, -0.154987, -0.984325,
		-0.042296, 0.987495, -0.151870,
		0.995554, 0.028851, -0.089664,
		41.728085, 33.163860, 31.149475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109798, 33.383469, 30.566923>,  <41.031197, 33.143665, 31.212240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109798, 33.383469, 30.566923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470608, 33.224785, 30.635014>,  <41.687092, 33.129574, 30.675867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470608, 33.224785, 30.635014>,  <41.109798, 33.383469, 30.566923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470608, 33.224785, 30.635014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074804, -0.244720, -0.966704,
		0.425159, 0.884722, -0.191067,
		0.902022, -0.396710, 0.170226,
		41.741215, 33.105770, 30.686081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538555, 33.576279, 30.098944>,  <41.109798, 33.383469, 30.566923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538555, 33.576279, 30.098944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763317, 33.273457, 30.232290>,  <41.898174, 33.091763, 30.312298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763317, 33.273457, 30.232290>,  <41.538555, 33.576279, 30.098944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763317, 33.273457, 30.232290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219293, -0.252257, -0.942485,
		0.797608, 0.602688, 0.024274,
		0.561901, -0.757056, 0.333367,
		41.931889, 33.046341, 30.332300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128513, 33.692249, 29.640194>,  <41.538555, 33.576279, 30.098944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128513, 33.692249, 29.640194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146324, 33.315033, 29.772062>,  <42.157013, 33.088703, 29.851183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146324, 33.315033, 29.772062>,  <42.128513, 33.692249, 29.640194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146324, 33.315033, 29.772062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252726, -0.308629, -0.916994,
		0.966513, 0.124150, 0.224588,
		0.044531, -0.943045, 0.329670,
		42.159683, 33.032120, 29.870964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760696, 33.435436, 29.464128>,  <42.128513, 33.692249, 29.640194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760696, 33.435436, 29.464128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485279, 33.146217, 29.486429>,  <42.320030, 32.972687, 29.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485279, 33.146217, 29.486429>,  <42.760696, 33.435436, 29.464128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485279, 33.146217, 29.486429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145553, -0.213101, -0.966127,
		0.710440, -0.657104, 0.251971,
		-0.688542, -0.723051, 0.055752,
		42.278717, 32.929302, 29.503155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041878, 32.975403, 29.167395>,  <42.760696, 33.435436, 29.464128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041878, 32.975403, 29.167395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664162, 32.843994, 29.159468>,  <42.437534, 32.765148, 29.154711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664162, 32.843994, 29.159468>,  <43.041878, 32.975403, 29.167395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664162, 32.843994, 29.159468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122183, -0.294010, -0.947960,
		0.305599, -0.897569, 0.317770,
		-0.944288, -0.328522, -0.019819,
		42.380875, 32.745438, 29.153522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098083, 32.357861, 28.876072>,  <43.041878, 32.975403, 29.167395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098083, 32.357861, 28.876072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704361, 32.420048, 28.842670>,  <42.468128, 32.457359, 28.822630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704361, 32.420048, 28.842670>,  <43.098083, 32.357861, 28.876072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704361, 32.420048, 28.842670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006847, -0.506460, -0.862236,
		-0.176346, -0.848131, 0.499576,
		-0.984305, 0.155473, -0.083505,
		42.409069, 32.466690, 28.817619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938065, 31.774303, 28.506144>,  <43.098083, 32.357861, 28.876072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938065, 31.774303, 28.506144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627834, 32.025490, 28.480415>,  <42.441696, 32.176201, 28.464977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627834, 32.025490, 28.480415>,  <42.938065, 31.774303, 28.506144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627834, 32.025490, 28.480415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167922, -0.303467, -0.937928,
		-0.608506, -0.716637, 0.340812,
		-0.775579, 0.627965, -0.064322,
		42.395161, 32.213879, 28.461119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273705, 31.392900, 28.221910>,  <42.938065, 31.774303, 28.506144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273705, 31.392900, 28.221910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239586, 31.787331, 28.164803>,  <42.219116, 32.023987, 28.130537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239586, 31.787331, 28.164803>,  <42.273705, 31.392900, 28.221910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239586, 31.787331, 28.164803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090611, -0.150375, -0.984468,
		-0.992227, -0.071036, 0.102175,
		-0.085297, 0.986074, -0.142769,
		42.213997, 32.083153, 28.121971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681087, 31.468082, 27.761562>,  <42.273705, 31.392900, 28.221910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681087, 31.468082, 27.761562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915947, 31.790213, 27.728800>,  <42.056862, 31.983492, 27.709143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915947, 31.790213, 27.728800>,  <41.681087, 31.468082, 27.761562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915947, 31.790213, 27.728800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081902, -0.159768, -0.983751,
		-0.805327, 0.570897, -0.159765,
		0.587146, 0.805326, -0.081908,
		42.092091, 32.031811, 27.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244453, 31.953384, 27.430374>,  <41.681087, 31.468082, 27.761562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244453, 31.953384, 27.430374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629044, 32.002964, 27.332228>,  <41.859798, 32.032711, 27.273340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629044, 32.002964, 27.332228>,  <41.244453, 31.953384, 27.430374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629044, 32.002964, 27.332228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171202, -0.428357, -0.887243,
		-0.215076, 0.895068, -0.390634,
		0.961474, 0.123948, -0.245367,
		41.917484, 32.040150, 27.258617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226986, 32.413445, 26.919197>,  <41.244453, 31.953384, 27.430374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226986, 32.413445, 26.919197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528374, 32.150555, 26.926580>,  <41.709206, 31.992821, 26.931011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528374, 32.150555, 26.926580>,  <41.226986, 32.413445, 26.919197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528374, 32.150555, 26.926580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199996, -0.255850, -0.945802,
		0.626325, 0.708943, -0.324217,
		0.753471, -0.657222, 0.018460,
		41.754414, 31.953388, 26.932117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790283, 32.482384, 26.435598>,  <41.226986, 32.413445, 26.919197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790283, 32.482384, 26.435598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735069, 32.098103, 26.531931>,  <41.701942, 31.867535, 26.589729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735069, 32.098103, 26.531931>,  <41.790283, 32.482384, 26.435598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735069, 32.098103, 26.531931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177597, -0.215208, -0.960284,
		0.974374, -0.175323, -0.140912,
		-0.138035, -0.960702, 0.240830,
		41.693661, 31.809893, 26.604179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207520, 32.051685, 25.967367>,  <41.790283, 32.482384, 26.435598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207520, 32.051685, 25.967367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863400, 31.889177, 26.090548>,  <41.656929, 31.791674, 26.164455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863400, 31.889177, 26.090548>,  <42.207520, 32.051685, 25.967367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863400, 31.889177, 26.090548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241087, -0.208032, -0.947945,
		0.449183, -0.889758, 0.081024,
		-0.860298, -0.406267, 0.307953,
		41.605309, 31.767298, 26.182934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170330, 31.320230, 26.023264>,  <42.207520, 32.051685, 25.967367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170330, 31.320230, 26.023264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813072, 31.457659, 25.907152>,  <41.598717, 31.540115, 25.837486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813072, 31.457659, 25.907152>,  <42.170330, 31.320230, 26.023264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813072, 31.457659, 25.907152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182156, -0.313785, -0.931857,
		-0.411243, -0.885154, 0.217671,
		-0.893139, 0.343570, -0.290278,
		41.545132, 31.560730, 25.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808605, 31.446451, 25.592638>,  <42.170330, 31.320230, 26.023264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808605, 31.446451, 25.592638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901859, 31.568346, 25.962023>,  <42.957813, 31.641483, 26.183653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901859, 31.568346, 25.962023>,  <42.808605, 31.446451, 25.592638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901859, 31.568346, 25.962023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468458, -0.867373, 0.167963,
		0.852170, 0.393444, -0.344974,
		0.233137, 0.304739, 0.923462,
		42.971802, 31.659767, 26.239061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623577, 31.451996, 25.584019>,  <42.808605, 31.446451, 25.592638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623577, 31.451996, 25.584019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454945, 31.391718, 25.941692>,  <43.353764, 31.355551, 26.156296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454945, 31.391718, 25.941692>,  <43.623577, 31.451996, 25.584019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454945, 31.391718, 25.941692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654100, -0.733492, 0.184776,
		0.628031, 0.662783, 0.407794,
		-0.421580, -0.150693, 0.894182,
		43.328472, 31.346510, 26.209948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083843, 31.856520, 26.070274>,  <43.623577, 31.451996, 25.584019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083843, 31.856520, 26.070274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453785, 31.709070, 26.107708>,  <44.675751, 31.620602, 26.130167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453785, 31.709070, 26.107708>,  <44.083843, 31.856520, 26.070274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453785, 31.709070, 26.107708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265466, 0.801918, 0.535215,
		-0.272338, -0.470154, 0.839516,
		0.924857, -0.368622, 0.093583,
		44.731243, 31.598484, 26.135782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188683, 31.908144, 26.731829>,  <44.083843, 31.856520, 26.070274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188683, 31.908144, 26.731829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531708, 31.897041, 26.526377>,  <44.737522, 31.890381, 26.403105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531708, 31.897041, 26.526377>,  <44.188683, 31.908144, 26.731829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531708, 31.897041, 26.526377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282964, 0.859331, 0.426005,
		0.429554, -0.510665, 0.744785,
		0.857563, -0.027755, -0.513629,
		44.788979, 31.888716, 26.372288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919357, 31.814573, 27.206778>,  <44.188683, 31.908144, 26.731829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919357, 31.814573, 27.206778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973022, 32.040226, 26.880892>,  <45.005222, 32.175617, 26.685360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973022, 32.040226, 26.880892>,  <44.919357, 31.814573, 27.206778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973022, 32.040226, 26.880892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401819, 0.720556, 0.565102,
		0.905838, -0.403181, -0.130009,
		0.134159, 0.564131, -0.814713,
		45.013271, 32.209465, 26.636478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572353, 32.030563, 27.019991>,  <44.919357, 31.814573, 27.206778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572353, 32.030563, 27.019991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290672, 32.292843, 26.911062>,  <45.121662, 32.450211, 26.845705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290672, 32.292843, 26.911062>,  <45.572353, 32.030563, 27.019991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290672, 32.292843, 26.911062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338877, 0.647450, 0.682621,
		0.623908, 0.388419, -0.678136,
		-0.704202, 0.655697, -0.272323,
		45.079411, 32.489552, 26.829365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834087, 32.755756, 26.999451>,  <45.572353, 32.030563, 27.019991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834087, 32.755756, 26.999451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457382, 32.762516, 27.133789>,  <45.231358, 32.766571, 27.214392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457382, 32.762516, 27.133789>,  <45.834087, 32.755756, 26.999451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457382, 32.762516, 27.133789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287558, 0.558208, 0.778276,
		-0.174319, 0.829529, -0.530560,
		-0.941766, 0.016898, 0.335845,
		45.174854, 32.767586, 27.234543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843349, 33.333790, 27.374100>,  <45.834087, 32.755756, 26.999451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843349, 33.333790, 27.374100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512775, 33.159248, 27.516422>,  <45.314430, 33.054523, 27.601816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512775, 33.159248, 27.516422>,  <45.843349, 33.333790, 27.374100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512775, 33.159248, 27.516422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214341, 0.340531, 0.915476,
		-0.520632, 0.832848, -0.187900,
		-0.826438, -0.436351, 0.355805,
		45.264843, 33.028343, 27.623163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416420, 33.894997, 27.712456>,  <45.843349, 33.333790, 27.374100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416420, 33.894997, 27.712456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323906, 33.543640, 27.879755>,  <45.268398, 33.332825, 27.980135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323906, 33.543640, 27.879755>,  <45.416420, 33.894997, 27.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323906, 33.543640, 27.879755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241858, 0.364495, 0.899249,
		-0.942345, 0.309135, 0.128146,
		-0.231281, -0.878395, 0.418247,
		45.254520, 33.280121, 28.005230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974182, 34.148830, 28.156097>,  <45.416420, 33.894997, 27.712456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974182, 34.148830, 28.156097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055622, 33.775143, 28.273251>,  <45.104488, 33.550930, 28.343542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055622, 33.775143, 28.273251>,  <44.974182, 34.148830, 28.156097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055622, 33.775143, 28.273251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044109, 0.307599, 0.950493,
		-0.978059, -0.180605, 0.103836,
		0.203604, -0.934219, 0.292884,
		45.116703, 33.494877, 28.361116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411045, 33.989048, 28.643749>,  <44.974182, 34.148830, 28.156097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411045, 33.989048, 28.643749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709843, 33.734680, 28.721312>,  <44.889122, 33.582058, 28.767849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709843, 33.734680, 28.721312>,  <44.411045, 33.989048, 28.643749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709843, 33.734680, 28.721312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044390, 0.338721, 0.939839,
		-0.663344, -0.693449, 0.281252,
		0.746996, -0.635922, 0.193906,
		44.933941, 33.543903, 28.779484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245079, 33.689274, 29.252470>,  <44.411045, 33.989048, 28.643749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245079, 33.689274, 29.252470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640766, 33.632805, 29.236837>,  <44.878178, 33.598923, 29.227457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640766, 33.632805, 29.236837>,  <44.245079, 33.689274, 29.252470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640766, 33.632805, 29.236837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060428, 0.150239, 0.986801,
		-0.133437, -0.978519, 0.157149,
		0.989214, -0.141172, -0.039082,
		44.937531, 33.590454, 29.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360844, 33.274708, 29.728041>,  <44.245079, 33.689274, 29.252470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360844, 33.274708, 29.728041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727283, 33.420467, 29.661142>,  <44.947147, 33.507923, 29.621002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727283, 33.420467, 29.661142>,  <44.360844, 33.274708, 29.728041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727283, 33.420467, 29.661142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158346, 0.054407, 0.985883,
		0.368352, -0.929653, -0.007859,
		0.916102, 0.364397, -0.167248,
		45.002113, 33.529785, 29.610968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877407, 32.873653, 30.140446>,  <44.360844, 33.274708, 29.728041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877407, 32.873653, 30.140446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071709, 33.211540, 30.050562>,  <45.188290, 33.414272, 29.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071709, 33.211540, 30.050562>,  <44.877407, 32.873653, 30.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071709, 33.211540, 30.050562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273041, 0.097579, 0.957041,
		0.830356, -0.526241, -0.183244,
		0.485754, 0.844718, -0.224711,
		45.217434, 33.464954, 29.983149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658710, 32.845844, 30.402149>,  <44.877407, 32.873653, 30.140446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658710, 32.845844, 30.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520214, 33.220257, 30.376976>,  <45.437115, 33.444904, 30.361872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520214, 33.220257, 30.376976>,  <45.658710, 32.845844, 30.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520214, 33.220257, 30.376976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267780, 0.162900, 0.949609,
		0.899116, 0.311943, -0.307053,
		-0.346243, 0.936032, -0.062934,
		45.416340, 33.501068, 30.358095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138451, 33.150986, 30.697271>,  <45.658710, 32.845844, 30.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138451, 33.150986, 30.697271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851936, 33.429695, 30.682076>,  <45.680027, 33.596920, 30.672958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851936, 33.429695, 30.682076>,  <46.138451, 33.150986, 30.697271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851936, 33.429695, 30.682076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312239, 0.368720, 0.875530,
		0.624051, 0.615269, -0.481669,
		-0.716287, 0.696771, -0.037988,
		45.637051, 33.638725, 30.670679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439465, 33.706367, 30.977526>,  <46.138451, 33.150986, 30.697271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439465, 33.706367, 30.977526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043076, 33.745083, 31.014626>,  <45.805241, 33.768314, 31.036886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043076, 33.745083, 31.014626>,  <46.439465, 33.706367, 30.977526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043076, 33.745083, 31.014626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113479, 0.237346, 0.964774,
		0.071368, 0.966591, -0.246187,
		-0.990974, 0.096791, 0.092749,
		45.745785, 33.774120, 31.042450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436310, 34.317867, 31.394176>,  <46.439465, 33.706367, 30.977526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436310, 34.317867, 31.394176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068306, 34.162178, 31.412462>,  <45.847504, 34.068764, 31.423433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.068306, 34.162178, 31.412462>,  <46.436310, 34.317867, 31.394176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068306, 34.162178, 31.412462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001159, 0.119348, 0.992852,
		-0.391892, 0.913381, -0.110253,
		-0.920010, -0.389219, 0.045713,
		45.792301, 34.045414, 31.426176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088482, 34.722843, 31.840071>,  <46.436310, 34.317867, 31.394176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088482, 34.722843, 31.840071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866722, 34.389950, 31.838442>,  <45.733665, 34.190212, 31.837465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866722, 34.389950, 31.838442>,  <46.088482, 34.722843, 31.840071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866722, 34.389950, 31.838442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090974, 0.055740, 0.994292,
		-0.827261, 0.551610, -0.106615,
		-0.554404, -0.832238, -0.004071,
		45.700401, 34.140278, 31.837221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362923, 34.806732, 32.113243>,  <46.088482, 34.722843, 31.840071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362923, 34.806732, 32.113243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462337, 34.423325, 32.169056>,  <45.521988, 34.193279, 32.202545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462337, 34.423325, 32.169056>,  <45.362923, 34.806732, 32.113243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462337, 34.423325, 32.169056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433856, 0.018636, 0.900789,
		-0.866025, -0.284417, -0.411228,
		0.248536, -0.958519, 0.139536,
		45.536900, 34.135769, 32.210918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851479, 34.648388, 32.496620>,  <45.362923, 34.806732, 32.113243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851479, 34.648388, 32.496620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113297, 34.349499, 32.542622>,  <45.270386, 34.170166, 32.570225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113297, 34.349499, 32.542622>,  <44.851479, 34.648388, 32.496620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113297, 34.349499, 32.542622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314546, -0.130825, 0.940184,
		-0.687482, -0.651568, -0.320668,
		0.654545, -0.747224, 0.115008,
		45.309662, 34.125332, 32.577126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488617, 34.109676, 32.735909>,  <44.851479, 34.648388, 32.496620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488617, 34.109676, 32.735909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861683, 34.025043, 32.852779>,  <45.085522, 33.974266, 32.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861683, 34.025043, 32.852779>,  <44.488617, 34.109676, 32.735909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861683, 34.025043, 32.852779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304949, -0.029712, 0.951905,
		-0.192722, -0.976909, -0.092232,
		0.932665, -0.211579, 0.292181,
		45.141483, 33.961571, 32.940434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426151, 33.674549, 33.331028>,  <44.488617, 34.109676, 32.735909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426151, 33.674549, 33.331028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809044, 33.789093, 33.347542>,  <45.038780, 33.857819, 33.357449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809044, 33.789093, 33.347542>,  <44.426151, 33.674549, 33.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809044, 33.789093, 33.347542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015052, -0.093206, 0.995533,
		0.288930, -0.953578, -0.084910,
		0.957232, 0.286361, 0.041283,
		45.096214, 33.875000, 33.359928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705654, 33.135719, 33.704704>,  <44.426151, 33.674549, 33.331028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705654, 33.135719, 33.704704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973644, 33.430679, 33.739052>,  <45.134438, 33.607655, 33.759663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973644, 33.430679, 33.739052>,  <44.705654, 33.135719, 33.704704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973644, 33.430679, 33.739052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022887, -0.095102, 0.995204,
		0.742031, -0.668727, -0.046839,
		0.669975, 0.737401, 0.085874,
		45.174637, 33.651901, 33.764812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306229, 32.899323, 34.068516>,  <44.705654, 33.135719, 33.704704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306229, 32.899323, 34.068516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294014, 33.296391, 34.115280>,  <45.286686, 33.534634, 34.143337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294014, 33.296391, 34.115280>,  <45.306229, 32.899323, 34.068516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294014, 33.296391, 34.115280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032194, -0.117878, 0.992506,
		0.999015, 0.026543, 0.035558,
		-0.030535, 0.992673, 0.116907,
		45.284855, 33.594193, 34.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747391, 33.052490, 34.592342>,  <45.306229, 32.899323, 34.068516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747391, 33.052490, 34.592342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502144, 33.368488, 34.592052>,  <45.354996, 33.558086, 34.591881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502144, 33.368488, 34.592052>,  <45.747391, 33.052490, 34.592342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502144, 33.368488, 34.592052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102351, 0.080342, 0.991499,
		0.783334, 0.607830, -0.130116,
		-0.613117, 0.789992, -0.000722,
		45.318211, 33.605488, 34.591835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042114, 33.501244, 35.109730>,  <45.747391, 33.052490, 34.592342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042114, 33.501244, 35.109730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664856, 33.614746, 35.040489>,  <45.438503, 33.682846, 34.998947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664856, 33.614746, 35.040489>,  <46.042114, 33.501244, 35.109730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664856, 33.614746, 35.040489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212433, -0.114056, 0.970497,
		0.255643, 0.952089, 0.167851,
		-0.943143, 0.283758, -0.173098,
		45.381912, 33.699875, 34.988560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493717, 33.390652, 34.644501>,  <46.042114, 33.501244, 35.109730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493717, 33.390652, 34.644501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742191, 33.144444, 34.838520>,  <46.891277, 32.996719, 34.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742191, 33.144444, 34.838520>,  <46.493717, 33.390652, 34.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742191, 33.144444, 34.838520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003809, -0.616566, -0.787294,
		0.783655, 0.490903, -0.380657,
		0.621185, -0.615517, 0.485044,
		46.928547, 32.959789, 34.984032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111244, 33.651981, 34.310959>,  <46.493717, 33.390652, 34.644501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111244, 33.651981, 34.310959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893070, 33.925213, 34.116680>,  <46.762165, 34.089153, 34.000114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893070, 33.925213, 34.116680>,  <47.111244, 33.651981, 34.310959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893070, 33.925213, 34.116680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079213, 0.534876, 0.841209,
		0.834399, 0.497302, -0.237634,
		-0.545439, 0.683080, -0.485693,
		46.729439, 34.130138, 33.970974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341072, 34.427086, 34.250900>,  <47.111244, 33.651981, 34.310959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341072, 34.427086, 34.250900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942421, 34.414185, 34.281071>,  <46.703228, 34.406445, 34.299171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942421, 34.414185, 34.281071>,  <47.341072, 34.427086, 34.250900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942421, 34.414185, 34.281071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042438, 0.584167, 0.810523,
		-0.070203, 0.810992, -0.580829,
		-0.996630, -0.032252, 0.075427,
		46.643433, 34.404510, 34.303699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651249, 35.055386, 34.636101>,  <47.341072, 34.427086, 34.250900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651249, 35.055386, 34.636101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808979, 34.931396, 34.982147>,  <47.903618, 34.857002, 35.189774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808979, 34.931396, 34.982147>,  <47.651249, 35.055386, 34.636101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808979, 34.931396, 34.982147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590177, -0.807022, -0.020149,
		0.704414, -0.502627, -0.501167,
		0.394325, -0.309971, 0.865116,
		47.927277, 34.838406, 35.241684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.644928, 35.641823, 45.203655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248981, 35.611721, 45.251820>,  <37.011414, 35.593662, 45.280720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248981, 35.611721, 45.251820>,  <37.644928, 35.641823, 45.203655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248981, 35.611721, 45.251820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138945, 0.338633, -0.930603,
		0.029253, -0.937905, -0.345657,
		-0.989868, -0.075250, 0.120411,
		36.952023, 35.589146, 45.287941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380417, 35.320972, 44.656319>,  <37.644928, 35.641823, 45.203655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380417, 35.320972, 44.656319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037739, 35.493263, 44.769836>,  <36.832130, 35.596638, 44.837948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037739, 35.493263, 44.769836>,  <37.380417, 35.320972, 44.656319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037739, 35.493263, 44.769836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211681, 0.208142, -0.954918,
		-0.470382, -0.878150, -0.087138,
		-0.856698, 0.430731, 0.283794,
		36.780727, 35.622482, 44.854973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804871, 35.035976, 44.227703>,  <37.380417, 35.320972, 44.656319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804871, 35.035976, 44.227703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709705, 35.407043, 44.342827>,  <36.652607, 35.629684, 44.411900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709705, 35.407043, 44.342827>,  <36.804871, 35.035976, 44.227703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709705, 35.407043, 44.342827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316489, 0.206103, -0.925936,
		-0.918277, -0.311378, 0.244562,
		-0.237911, 0.927667, 0.287807,
		36.638332, 35.685345, 44.429169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232018, 35.144245, 43.834080>,  <36.804871, 35.035976, 44.227703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232018, 35.144245, 43.834080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292713, 35.515526, 43.969975>,  <36.329128, 35.738293, 44.051510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292713, 35.515526, 43.969975>,  <36.232018, 35.144245, 43.834080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292713, 35.515526, 43.969975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350172, 0.371903, -0.859691,
		-0.924314, 0.011481, 0.381461,
		0.151736, 0.928201, 0.339735,
		36.338234, 35.793987, 44.071896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607494, 35.412750, 43.427967>,  <36.232018, 35.144245, 43.834080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607494, 35.412750, 43.427967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849506, 35.693527, 43.578285>,  <35.994713, 35.861992, 43.668476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.849506, 35.693527, 43.578285>,  <35.607494, 35.412750, 43.427967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849506, 35.693527, 43.578285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177394, 0.578963, -0.795822,
		-0.776193, 0.414828, 0.474807,
		0.605025, 0.701940, 0.375800,
		36.031013, 35.904110, 43.691025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208347, 36.018532, 43.505936>,  <35.607494, 35.412750, 43.427967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208347, 36.018532, 43.505936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598866, 36.071274, 43.437279>,  <35.833176, 36.102917, 43.396084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598866, 36.071274, 43.437279>,  <35.208347, 36.018532, 43.505936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598866, 36.071274, 43.437279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198622, 0.230727, -0.952531,
		-0.085990, 0.964044, 0.251446,
		0.976297, 0.131851, -0.171640,
		35.891754, 36.110828, 43.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237679, 36.694965, 43.073811>,  <35.208347, 36.018532, 43.505936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237679, 36.694965, 43.073811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605381, 36.542343, 43.035049>,  <35.826000, 36.450771, 43.011795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605381, 36.542343, 43.035049>,  <35.237679, 36.694965, 43.073811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605381, 36.542343, 43.035049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020564, 0.199272, -0.979728,
		0.393130, 0.902611, 0.175335,
		0.919253, -0.381555, -0.096901,
		35.881157, 36.427876, 43.005978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567024, 37.167709, 42.646221>,  <35.237679, 36.694965, 43.073811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567024, 37.167709, 42.646221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750366, 36.812405, 42.634247>,  <35.860371, 36.599220, 42.627064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750366, 36.812405, 42.634247>,  <35.567024, 37.167709, 42.646221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750366, 36.812405, 42.634247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036955, 0.014607, -0.999210,
		0.888000, 0.459100, -0.026130,
		0.458356, -0.888264, -0.029937,
		35.887875, 36.545925, 42.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087013, 37.305092, 42.173450>,  <35.567024, 37.167709, 42.646221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087013, 37.305092, 42.173450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041386, 36.909389, 42.210011>,  <36.014011, 36.671967, 42.231945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041386, 36.909389, 42.210011>,  <36.087013, 37.305092, 42.173450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041386, 36.909389, 42.210011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136720, -0.106757, -0.984840,
		0.984021, -0.099841, 0.147429,
		-0.114067, -0.989260, 0.091400,
		36.007164, 36.612610, 42.237431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538254, 37.018105, 41.731060>,  <36.087013, 37.305092, 42.173450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538254, 37.018105, 41.731060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290691, 36.704967, 41.756733>,  <36.142155, 36.517086, 41.772137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290691, 36.704967, 41.756733>,  <36.538254, 37.018105, 41.731060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290691, 36.704967, 41.756733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097369, -0.157545, -0.982700,
		0.779410, -0.601946, 0.173729,
		-0.618902, -0.782841, 0.064182,
		36.105022, 36.470116, 41.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817799, 36.522583, 41.295700>,  <36.538254, 37.018105, 41.731060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817799, 36.522583, 41.295700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435768, 36.417225, 41.350025>,  <36.206551, 36.354012, 41.382622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435768, 36.417225, 41.350025>,  <36.817799, 36.522583, 41.295700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435768, 36.417225, 41.350025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043965, -0.327284, -0.943903,
		0.293068, -0.907474, 0.301002,
		-0.955080, -0.263394, 0.135814,
		36.149242, 36.338207, 41.390770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775333, 35.862434, 41.054321>,  <36.817799, 36.522583, 41.295700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775333, 35.862434, 41.054321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406414, 36.015087, 41.029938>,  <36.185062, 36.106678, 41.015308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406414, 36.015087, 41.029938>,  <36.775333, 35.862434, 41.054321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406414, 36.015087, 41.029938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082273, -0.347995, -0.933879,
		-0.377610, -0.856304, 0.352354,
		-0.922303, 0.381631, -0.060956,
		36.129723, 36.129578, 41.011650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405266, 35.349216, 40.754101>,  <36.775333, 35.862434, 41.054321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405266, 35.349216, 40.754101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170883, 35.664845, 40.680317>,  <36.030254, 35.854221, 40.636047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170883, 35.664845, 40.680317>,  <36.405266, 35.349216, 40.754101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170883, 35.664845, 40.680317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032892, -0.250607, -0.967530,
		-0.809678, -0.560859, 0.172798,
		-0.585952, 0.789071, -0.184463,
		35.995098, 35.901566, 40.624977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862427, 35.069561, 40.455421>,  <36.405266, 35.349216, 40.754101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862427, 35.069561, 40.455421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869072, 35.455791, 40.351589>,  <35.873058, 35.687531, 40.289291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869072, 35.455791, 40.351589>,  <35.862427, 35.069561, 40.455421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869072, 35.455791, 40.351589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124408, -0.255599, -0.958745,
		-0.992092, 0.048221, 0.115880,
		0.016613, 0.965580, -0.259577,
		35.874054, 35.745464, 40.273716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281162, 35.195305, 40.054630>,  <35.862427, 35.069561, 40.455421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281162, 35.195305, 40.054630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536694, 35.494446, 39.982388>,  <35.690010, 35.673931, 39.939041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.536694, 35.494446, 39.982388>,  <35.281162, 35.195305, 40.054630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536694, 35.494446, 39.982388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026628, -0.213115, -0.976664,
		-0.768891, 0.628726, -0.116230,
		0.638825, 0.747854, -0.180604,
		35.728340, 35.718803, 39.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069096, 35.339451, 39.347485>,  <35.281162, 35.195305, 40.054630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069096, 35.339451, 39.347485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.402225, 35.556641, 39.390537>,  <35.602104, 35.686954, 39.416370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.402225, 35.556641, 39.390537>,  <35.069096, 35.339451, 39.347485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402225, 35.556641, 39.390537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148174, -0.031333, -0.988465,
		-0.533341, 0.839163, -0.106550,
		0.832822, 0.542976, 0.107631,
		35.652073, 35.719532, 39.422825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964783, 35.885681, 38.923447>,  <35.069096, 35.339451, 39.347485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964783, 35.885681, 38.923447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357628, 35.829399, 38.973511>,  <35.593334, 35.795631, 39.003548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357628, 35.829399, 38.973511>,  <34.964783, 35.885681, 38.923447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357628, 35.829399, 38.973511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103459, -0.152175, -0.982924,
		0.157346, 0.978287, -0.134895,
		0.982109, -0.140703, 0.125157,
		35.652260, 35.787189, 39.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239456, 36.202316, 38.307182>,  <34.964783, 35.885681, 38.923447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239456, 36.202316, 38.307182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506516, 35.948624, 38.463127>,  <35.666752, 35.796410, 38.556694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506516, 35.948624, 38.463127>,  <35.239456, 36.202316, 38.307182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506516, 35.948624, 38.463127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327822, -0.219716, -0.918835,
		0.668413, 0.741266, 0.061222,
		0.667650, -0.634231, 0.389864,
		35.706810, 35.758354, 38.580086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837593, 36.407913, 37.975628>,  <35.239456, 36.202316, 38.307182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837593, 36.407913, 37.975628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856491, 36.026379, 38.094269>,  <35.867828, 35.797459, 38.165451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856491, 36.026379, 38.094269>,  <35.837593, 36.407913, 37.975628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856491, 36.026379, 38.094269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315852, -0.267431, -0.910340,
		0.947632, 0.136688, 0.288636,
		0.047242, -0.953833, 0.296599,
		35.870663, 35.740231, 38.183250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364243, 36.230106, 37.691189>,  <35.837593, 36.407913, 37.975628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364243, 36.230106, 37.691189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196911, 35.877472, 37.778652>,  <36.096512, 35.665890, 37.831131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196911, 35.877472, 37.778652>,  <36.364243, 36.230106, 37.691189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196911, 35.877472, 37.778652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392553, -0.392566, -0.831742,
		0.819088, -0.262105, 0.510290,
		-0.418326, -0.881586, 0.218656,
		36.071411, 35.612995, 37.844250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780540, 35.736610, 37.457054>,  <36.364243, 36.230106, 37.691189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780540, 35.736610, 37.457054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453194, 35.509701, 37.493881>,  <36.256786, 35.373554, 37.515976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453194, 35.509701, 37.493881>,  <36.780540, 35.736610, 37.457054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453194, 35.509701, 37.493881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171322, -0.393727, -0.903121,
		0.548571, -0.723308, 0.419399,
		-0.818363, -0.567279, 0.092069,
		36.207684, 35.339516, 37.521503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981167, 35.078556, 37.207592>,  <36.780540, 35.736610, 37.457054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981167, 35.078556, 37.207592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584503, 35.117802, 37.174160>,  <36.346504, 35.141350, 37.154102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.584503, 35.117802, 37.174160>,  <36.981167, 35.078556, 37.207592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584503, 35.117802, 37.174160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035338, -0.416644, -0.908382,
		-0.123948, -0.903759, 0.409702,
		-0.991660, 0.098114, -0.083579,
		36.287006, 35.147236, 37.149086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541328, 35.225826, 36.714767>,  <36.981167, 35.078556, 37.207592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541328, 35.225826, 36.714767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940468, 35.212086, 36.737095>,  <38.179951, 35.203842, 36.750492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940468, 35.212086, 36.737095>,  <37.541328, 35.225826, 36.714767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940468, 35.212086, 36.737095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061473, -0.195036, 0.978868,
		-0.022736, -0.980194, -0.196728,
		0.997850, -0.034349, 0.055821,
		38.239822, 35.201782, 36.753841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712448, 34.686302, 37.068794>,  <37.541328, 35.225826, 36.714767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712448, 34.686302, 37.068794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063702, 34.875072, 37.100235>,  <38.274452, 34.988335, 37.119099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063702, 34.875072, 37.100235>,  <37.712448, 34.686302, 37.068794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063702, 34.875072, 37.100235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072140, -0.293028, 0.953379,
		0.472954, -0.831519, -0.291361,
		0.878129, 0.471923, 0.078603,
		38.327141, 35.016647, 37.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117420, 34.245537, 37.448490>,  <37.712448, 34.686302, 37.068794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117420, 34.245537, 37.448490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283981, 34.605957, 37.496998>,  <38.383919, 34.822208, 37.526104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283981, 34.605957, 37.496998>,  <38.117420, 34.245537, 37.448490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283981, 34.605957, 37.496998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006053, -0.130634, 0.991412,
		0.909158, -0.413565, -0.048943,
		0.416407, 0.901055, 0.121270,
		38.408905, 34.876274, 37.533379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608006, 34.249649, 38.025639>,  <38.117420, 34.245537, 37.448490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608006, 34.249649, 38.025639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538601, 34.640491, 37.976387>,  <38.496960, 34.874996, 37.946835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.538601, 34.640491, 37.976387>,  <38.608006, 34.249649, 38.025639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538601, 34.640491, 37.976387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022707, 0.121023, 0.992390,
		0.984570, 0.174988, 0.001188,
		-0.173513, 0.977104, -0.123129,
		38.486546, 34.933624, 37.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188038, 34.724571, 38.345070>,  <38.608006, 34.249649, 38.025639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188038, 34.724571, 38.345070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834629, 34.911026, 38.326714>,  <38.622585, 35.022900, 38.315701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.834629, 34.911026, 38.326714>,  <39.188038, 34.724571, 38.345070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834629, 34.911026, 38.326714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041647, 0.019415, 0.998944,
		0.466539, 0.884498, 0.002259,
		-0.883519, 0.466141, -0.045895,
		38.569572, 35.050869, 38.312946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244934, 35.199642, 38.828049>,  <39.188038, 34.724571, 38.345070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244934, 35.199642, 38.828049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847496, 35.193348, 38.783295>,  <38.609032, 35.189571, 38.756443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847496, 35.193348, 38.783295>,  <39.244934, 35.199642, 38.828049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847496, 35.193348, 38.783295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112248, 0.024546, 0.993377,
		-0.012888, 0.999575, -0.026155,
		-0.993597, -0.015739, -0.111884,
		38.549416, 35.188625, 38.749729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099438, 35.756161, 39.140198>,  <39.244934, 35.199642, 38.828049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099438, 35.756161, 39.140198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771927, 35.526543, 39.143700>,  <38.575420, 35.388771, 39.145802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.771927, 35.526543, 39.143700>,  <39.099438, 35.756161, 39.140198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771927, 35.526543, 39.143700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031184, 0.059699, 0.997729,
		-0.573263, 0.816646, -0.066781,
		-0.818778, -0.574044, 0.008757,
		38.526295, 35.354328, 39.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742004, 36.033237, 39.643963>,  <39.099438, 35.756161, 39.140198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742004, 36.033237, 39.643963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545506, 35.688145, 39.596001>,  <38.427608, 35.481091, 39.567223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545506, 35.688145, 39.596001>,  <38.742004, 36.033237, 39.643963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545506, 35.688145, 39.596001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026781, -0.122630, 0.992091,
		-0.870610, 0.490570, 0.037136,
		-0.491244, -0.862730, -0.119901,
		38.398132, 35.429325, 39.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050617, 36.100014, 40.039921>,  <38.742004, 36.033237, 39.643963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050617, 36.100014, 40.039921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130444, 35.709148, 40.010738>,  <38.178337, 35.474628, 39.993229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130444, 35.709148, 40.010738>,  <38.050617, 36.100014, 40.039921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130444, 35.709148, 40.010738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095166, -0.093432, 0.991067,
		-0.975253, -0.190838, -0.111638,
		0.199564, -0.977165, -0.072958,
		38.190311, 35.416000, 39.988850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746723, 35.702778, 40.672127>,  <38.050617, 36.100014, 40.039921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746723, 35.702778, 40.672127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998302, 35.429348, 40.523991>,  <38.149250, 35.265289, 40.435108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998302, 35.429348, 40.523991>,  <37.746723, 35.702778, 40.672127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998302, 35.429348, 40.523991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262226, -0.261918, 0.928782,
		-0.731890, -0.681268, 0.014518,
		0.628947, -0.683573, -0.370342,
		38.186985, 35.224277, 40.412888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546230, 35.146675, 41.033707>,  <37.746723, 35.702778, 40.672127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546230, 35.146675, 41.033707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911629, 35.056267, 40.898396>,  <38.130867, 35.002022, 40.817207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911629, 35.056267, 40.898396>,  <37.546230, 35.146675, 41.033707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911629, 35.056267, 40.898396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292159, -0.214209, 0.932072,
		-0.283130, -0.950279, -0.129646,
		0.913499, -0.226020, -0.338281,
		38.185680, 34.988461, 40.796913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624744, 34.539463, 41.274742>,  <37.546230, 35.146675, 41.033707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624744, 34.539463, 41.274742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997650, 34.654945, 41.187534>,  <38.221394, 34.724236, 41.135208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997650, 34.654945, 41.187534>,  <37.624744, 34.539463, 41.274742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997650, 34.654945, 41.187534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268817, -0.149485, 0.951521,
		0.242114, -0.945677, -0.216968,
		0.932265, 0.288702, -0.218022,
		38.277328, 34.741554, 41.122128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103706, 34.049755, 41.565205>,  <37.624744, 34.539463, 41.274742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103706, 34.049755, 41.565205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316715, 34.382351, 41.501907>,  <38.444523, 34.581909, 41.463928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316715, 34.382351, 41.501907>,  <38.103706, 34.049755, 41.565205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316715, 34.382351, 41.501907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372010, -0.061990, 0.926157,
		0.760279, -0.552072, -0.342333,
		0.532526, 0.831489, -0.158247,
		38.476475, 34.631798, 41.454433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764774, 33.838280, 41.592937>,  <38.103706, 34.049755, 41.565205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764774, 33.838280, 41.592937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763409, 34.229607, 41.675766>,  <38.762589, 34.464405, 41.725464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763409, 34.229607, 41.675766>,  <38.764774, 33.838280, 41.592937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763409, 34.229607, 41.675766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376426, -0.190588, 0.906631,
		0.926440, 0.081040, -0.367615,
		-0.003410, 0.978319, 0.207074,
		38.762386, 34.523102, 41.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381569, 34.021885, 41.969608>,  <38.764774, 33.838280, 41.592937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381569, 34.021885, 41.969608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114273, 34.305470, 42.059795>,  <38.953896, 34.475620, 42.113907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.114273, 34.305470, 42.059795>,  <39.381569, 34.021885, 41.969608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114273, 34.305470, 42.059795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296743, -0.023907, 0.954658,
		0.682206, 0.704842, -0.194404,
		-0.668235, 0.708962, 0.225467,
		38.913803, 34.518158, 42.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771748, 34.314610, 42.534744>,  <39.381569, 34.021885, 41.969608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771748, 34.314610, 42.534744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426243, 34.511711, 42.576900>,  <39.218941, 34.629971, 42.602196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426243, 34.511711, 42.576900>,  <39.771748, 34.314610, 42.534744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426243, 34.511711, 42.576900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192845, 0.130023, 0.972576,
		0.465536, 0.860400, -0.207334,
		-0.863764, 0.492752, 0.105393,
		39.167114, 34.659538, 42.608517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915699, 34.917816, 42.796776>,  <39.771748, 34.314610, 42.534744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915699, 34.917816, 42.796776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534260, 34.843895, 42.891850>,  <39.305397, 34.799541, 42.948895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534260, 34.843895, 42.891850>,  <39.915699, 34.917816, 42.796776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534260, 34.843895, 42.891850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213747, 0.140444, 0.966741,
		-0.212040, 0.972688, -0.094426,
		-0.953599, -0.184805, 0.237689,
		39.248180, 34.788452, 42.963158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712662, 35.502007, 43.128937>,  <39.915699, 34.917816, 42.796776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712662, 35.502007, 43.128937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458195, 35.213554, 43.238670>,  <39.305515, 35.040482, 43.304512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.458195, 35.213554, 43.238670>,  <39.712662, 35.502007, 43.128937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458195, 35.213554, 43.238670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268453, 0.126465, 0.954955,
		-0.723341, 0.681159, 0.113137,
		-0.636168, -0.721130, 0.274337,
		39.267345, 34.997215, 43.320972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.337425, 35.686024, 43.763382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228741, 35.301224, 43.774166>,  <39.163532, 35.070343, 43.780636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228741, 35.301224, 43.774166>,  <39.337425, 35.686024, 43.763382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228741, 35.301224, 43.774166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072310, 0.007527, 0.997354,
		-0.959660, 0.272938, 0.067518,
		-0.271707, -0.962002, 0.026960,
		39.147228, 35.012623, 43.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785194, 35.708488, 44.284275>,  <39.337425, 35.686024, 43.763382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785194, 35.708488, 44.284275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932564, 35.339981, 44.234413>,  <39.020985, 35.118877, 44.204498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932564, 35.339981, 44.234413>,  <38.785194, 35.708488, 44.284275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932564, 35.339981, 44.234413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041204, -0.150134, 0.987807,
		-0.928746, -0.358790, -0.093272,
		0.368418, -0.921265, -0.124653,
		39.043091, 35.063602, 44.197018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349194, 35.269779, 44.729038>,  <38.785194, 35.708488, 44.284275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349194, 35.269779, 44.729038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683865, 35.061218, 44.661976>,  <38.884666, 34.936081, 44.621738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683865, 35.061218, 44.661976>,  <38.349194, 35.269779, 44.729038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683865, 35.061218, 44.661976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041423, -0.244992, 0.968640,
		-0.546125, -0.817385, -0.183382,
		0.836679, -0.521402, -0.167655,
		38.934868, 34.904797, 44.611679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222355, 34.619633, 44.943962>,  <38.349194, 35.269779, 44.729038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222355, 34.619633, 44.943962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620895, 34.651058, 44.930679>,  <38.860020, 34.669914, 44.922710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620895, 34.651058, 44.930679>,  <38.222355, 34.619633, 44.943962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620895, 34.651058, 44.930679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063979, -0.430949, 0.900106,
		0.056405, -0.898950, -0.434405,
		0.996356, 0.078564, -0.033206,
		38.919804, 34.674625, 44.920719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599491, 33.878475, 45.000561>,  <38.222355, 34.619633, 44.943962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599491, 33.878475, 45.000561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836514, 34.173286, 45.130585>,  <38.978725, 34.350174, 45.208599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.836514, 34.173286, 45.130585>,  <38.599491, 33.878475, 45.000561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836514, 34.173286, 45.130585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051996, -0.437693, 0.897620,
		0.803850, -0.514987, -0.297680,
		0.592555, 0.737030, 0.325063,
		39.014278, 34.394394, 45.228104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954800, 33.500816, 45.440327>,  <38.599491, 33.878475, 45.000561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954800, 33.500816, 45.440327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059139, 33.873299, 45.542160>,  <39.121742, 34.096786, 45.603260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059139, 33.873299, 45.542160>,  <38.954800, 33.500816, 45.440327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059139, 33.873299, 45.542160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138944, -0.297183, 0.944657,
		0.955330, -0.211035, -0.206904,
		0.260844, 0.931207, 0.254585,
		39.137394, 34.152660, 45.618534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568092, 33.447601, 45.855785>,  <38.954800, 33.500816, 45.440327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568092, 33.447601, 45.855785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382957, 33.790165, 45.947308>,  <39.271877, 33.995701, 46.002220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382957, 33.790165, 45.947308>,  <39.568092, 33.447601, 45.855785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382957, 33.790165, 45.947308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188801, -0.156953, 0.969392,
		0.866103, 0.491870, -0.089046,
		-0.462839, 0.856405, 0.228803,
		39.244106, 34.047085, 46.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937134, 33.690895, 46.444530>,  <39.568092, 33.447601, 45.855785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937134, 33.690895, 46.444530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.630898, 33.948036, 46.454468>,  <39.447155, 34.102322, 46.460430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.630898, 33.948036, 46.454468>,  <39.937134, 33.690895, 46.444530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630898, 33.948036, 46.454468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081251, 0.058318, 0.994986,
		0.638182, 0.763766, -0.096880,
		-0.765586, 0.642854, 0.024839,
		39.401222, 34.140892, 46.461918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195595, 34.153973, 46.976364>,  <39.937134, 33.690895, 46.444530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195595, 34.153973, 46.976364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803761, 34.227135, 46.942997>,  <39.568661, 34.271030, 46.922977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803761, 34.227135, 46.942997>,  <40.195595, 34.153973, 46.976364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803761, 34.227135, 46.942997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033795, 0.259226, 0.965225,
		0.198168, 0.948340, -0.247753,
		-0.979585, 0.182904, -0.083420,
		39.509884, 34.282005, 46.917973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066765, 34.844975, 47.271290>,  <40.195595, 34.153973, 46.976364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066765, 34.844975, 47.271290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736374, 34.619591, 47.264622>,  <39.538139, 34.484360, 47.260620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.736374, 34.619591, 47.264622>,  <40.066765, 34.844975, 47.271290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736374, 34.619591, 47.264622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030758, 0.015516, 0.999407,
		-0.562869, 0.825997, -0.030146,
		-0.825974, -0.563462, -0.016672,
		39.488583, 34.450554, 47.259621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691765, 35.084270, 47.761292>,  <40.066765, 34.844975, 47.271290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691765, 35.084270, 47.761292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510136, 34.729973, 47.722775>,  <39.401157, 34.517395, 47.699665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510136, 34.729973, 47.722775>,  <39.691765, 35.084270, 47.761292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510136, 34.729973, 47.722775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138291, -0.036702, 0.989711,
		-0.880167, 0.462718, -0.105825,
		-0.454073, -0.885745, -0.096294,
		39.373913, 34.464249, 47.693886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194000, 35.125519, 48.209480>,  <39.691765, 35.084270, 47.761292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194000, 35.125519, 48.209480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206688, 34.735535, 48.121445>,  <39.214298, 34.501545, 48.068623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206688, 34.735535, 48.121445>,  <39.194000, 35.125519, 48.209480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206688, 34.735535, 48.121445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281233, -0.220008, 0.934080,
		-0.959115, 0.032271, -0.281169,
		0.031716, -0.974964, -0.220089,
		39.216202, 34.443047, 48.055416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565617, 34.859261, 48.382664>,  <39.194000, 35.125519, 48.209480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565617, 34.859261, 48.382664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830311, 34.560345, 48.406902>,  <38.989128, 34.380997, 48.421444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830311, 34.560345, 48.406902>,  <38.565617, 34.859261, 48.382664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830311, 34.560345, 48.406902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223305, -0.119291, 0.967422,
		-0.715713, -0.653706, -0.245812,
		0.661733, -0.747287, 0.060598,
		39.028831, 34.336159, 48.425083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250118, 34.514633, 48.813751>,  <38.565617, 34.859261, 48.382664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250118, 34.514633, 48.813751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598171, 34.318092, 48.798611>,  <38.807003, 34.200169, 48.789528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.598171, 34.318092, 48.798611>,  <38.250118, 34.514633, 48.813751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598171, 34.318092, 48.798611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225468, -0.465212, 0.856004,
		-0.438203, -0.736310, -0.515583,
		0.870139, -0.491351, -0.037843,
		38.859211, 34.170685, 48.787258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243095, 33.714382, 48.936653>,  <38.250118, 34.514633, 48.813751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243095, 33.714382, 48.936653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608456, 33.833939, 49.047184>,  <38.827671, 33.905674, 49.113503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608456, 33.833939, 49.047184>,  <38.243095, 33.714382, 48.936653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608456, 33.833939, 49.047184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066415, -0.560317, 0.825611,
		0.401600, -0.772468, -0.491945,
		0.913404, 0.298893, 0.276327,
		38.882477, 33.923607, 49.130081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402740, 33.173065, 49.286472>,  <38.243095, 33.714382, 48.936653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402740, 33.173065, 49.286472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670715, 33.448318, 49.397942>,  <38.831501, 33.613468, 49.464825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670715, 33.448318, 49.397942>,  <38.402740, 33.173065, 49.286472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670715, 33.448318, 49.397942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032072, -0.401832, 0.915152,
		0.741724, -0.604157, -0.291272,
		0.669938, 0.688131, 0.278672,
		38.871696, 33.654758, 49.481544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884792, 32.817093, 49.733768>,  <38.402740, 33.173065, 49.286472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884792, 32.817093, 49.733768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952328, 33.203297, 49.813057>,  <38.992851, 33.435017, 49.860630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952328, 33.203297, 49.813057>,  <38.884792, 32.817093, 49.733768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952328, 33.203297, 49.813057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131127, -0.221327, 0.966344,
		0.976882, -0.137168, -0.163974,
		0.168843, 0.965505, 0.198223,
		39.002979, 33.492947, 49.872524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486023, 32.824379, 50.060360>,  <38.884792, 32.817093, 49.733768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486023, 32.824379, 50.060360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344906, 33.185429, 50.158989>,  <39.260235, 33.402058, 50.218166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344906, 33.185429, 50.158989>,  <39.486023, 32.824379, 50.060360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344906, 33.185429, 50.158989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245893, -0.164824, 0.955180,
		0.902814, 0.397612, -0.163801,
		-0.352793, 0.902628, 0.246576,
		39.239067, 33.456219, 50.232960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075584, 33.208069, 50.439220>,  <39.486023, 32.824379, 50.060360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075584, 33.208069, 50.439220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712589, 33.326996, 50.557922>,  <39.494793, 33.398354, 50.629143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712589, 33.326996, 50.557922>,  <40.075584, 33.208069, 50.439220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712589, 33.326996, 50.557922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261047, -0.154330, 0.952909,
		0.329116, 0.942223, 0.062438,
		-0.907489, 0.297319, 0.296757,
		39.440342, 33.416191, 50.646950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095745, 33.545547, 51.096210>,  <40.075584, 33.208069, 50.439220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095745, 33.545547, 51.096210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697098, 33.514694, 51.107513>,  <39.457909, 33.496181, 51.114296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697098, 33.514694, 51.107513>,  <40.095745, 33.545547, 51.096210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697098, 33.514694, 51.107513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064500, -0.521746, 0.850659,
		-0.050869, 0.849606, 0.524958,
		-0.996620, -0.077132, 0.028259,
		39.398113, 33.491554, 51.115990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879112, 33.647820, 51.815968>,  <40.095745, 33.545547, 51.096210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879112, 33.647820, 51.815968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580505, 33.437099, 51.653389>,  <39.401340, 33.310669, 51.555843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580505, 33.437099, 51.653389>,  <39.879112, 33.647820, 51.815968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580505, 33.437099, 51.653389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021018, -0.591878, 0.805753,
		-0.665035, 0.610050, 0.430774,
		-0.746516, -0.526800, -0.406442,
		39.356552, 33.279060, 51.531456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435364, 33.711071, 52.252998>,  <39.879112, 33.647820, 51.815968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435364, 33.711071, 52.252998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285221, 33.405476, 52.043076>,  <39.195133, 33.222118, 51.917122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.285221, 33.405476, 52.043076>,  <39.435364, 33.711071, 52.252998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285221, 33.405476, 52.043076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188582, -0.491420, 0.850261,
		-0.907492, 0.418124, 0.040385,
		-0.375361, -0.763989, -0.524810,
		39.172611, 33.176277, 51.885632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165394, 33.817619, 52.960999>,  <39.435364, 33.711071, 52.252998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165394, 33.817619, 52.960999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350414, 34.046814, 52.690372>,  <39.461426, 34.184330, 52.527996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.350414, 34.046814, 52.690372>,  <39.165394, 33.817619, 52.960999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350414, 34.046814, 52.690372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879598, 0.200902, -0.431213,
		-0.111155, 0.794562, 0.596922,
		0.462549, 0.572983, -0.676564,
		39.489178, 34.218708, 52.487404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565594, 34.271976, 52.959652>,  <39.165394, 33.817619, 52.960999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565594, 34.271976, 52.959652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220066, 34.241127, 53.158794>,  <38.012749, 34.222618, 53.278278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220066, 34.241127, 53.158794>,  <38.565594, 34.271976, 52.959652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220066, 34.241127, 53.158794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495521, -0.048290, -0.867252,
		0.090930, -0.995851, 0.003496,
		-0.863823, -0.077127, 0.497857,
		37.960918, 34.217991, 53.308151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211426, 33.707466, 52.617130>,  <38.565594, 34.271976, 52.959652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211426, 33.707466, 52.617130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949558, 33.958508, 52.785664>,  <37.792439, 34.109131, 52.886784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949558, 33.958508, 52.785664>,  <38.211426, 33.707466, 52.617130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949558, 33.958508, 52.785664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617671, -0.122821, -0.776787,
		-0.435763, -0.768786, 0.468058,
		-0.654670, 0.627601, 0.421336,
		37.753159, 34.146786, 52.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638466, 33.476646, 52.479462>,  <38.211426, 33.707466, 52.617130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638466, 33.476646, 52.479462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528252, 33.846409, 52.584957>,  <37.462124, 34.068268, 52.648254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528252, 33.846409, 52.584957>,  <37.638466, 33.476646, 52.479462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528252, 33.846409, 52.584957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691189, 0.000158, -0.722674,
		-0.668085, -0.381413, 0.638895,
		-0.275536, 0.924405, 0.263734,
		37.445591, 34.123730, 52.664078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054066, 33.424892, 52.618172>,  <37.638466, 33.476646, 52.479462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054066, 33.424892, 52.618172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081146, 33.812229, 52.522068>,  <37.097393, 34.044632, 52.464405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081146, 33.812229, 52.522068>,  <37.054066, 33.424892, 52.618172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081146, 33.812229, 52.522068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608740, -0.150703, -0.778925,
		-0.790476, 0.198988, 0.579268,
		0.067699, 0.968345, -0.240259,
		37.101456, 34.102734, 52.449989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320000, 33.644604, 52.463360>,  <37.054066, 33.424892, 52.618172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320000, 33.644604, 52.463360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573704, 33.902454, 52.292633>,  <36.725925, 34.057163, 52.190197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573704, 33.902454, 52.292633>,  <36.320000, 33.644604, 52.463360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573704, 33.902454, 52.292633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475434, -0.110127, -0.872831,
		-0.609655, 0.756523, 0.236629,
		0.634258, 0.644628, -0.426816,
		36.763981, 34.095844, 52.164589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867016, 34.241257, 52.117409>,  <36.320000, 33.644604, 52.463360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867016, 34.241257, 52.117409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229549, 34.223900, 51.949276>,  <36.447071, 34.213486, 51.848396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229549, 34.223900, 51.949276>,  <35.867016, 34.241257, 52.117409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229549, 34.223900, 51.949276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418951, 0.037469, -0.907235,
		0.055117, 0.998355, 0.015780,
		0.906334, -0.043393, -0.420327,
		36.501450, 34.210880, 51.823177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721088, 34.732346, 51.499039>,  <35.867016, 34.241257, 52.117409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721088, 34.732346, 51.499039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045612, 34.517971, 51.405617>,  <36.240326, 34.389347, 51.349564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045612, 34.517971, 51.405617>,  <35.721088, 34.732346, 51.499039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045612, 34.517971, 51.405617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097289, 0.270166, -0.957886,
		0.576462, 0.799866, 0.167048,
		0.811311, -0.535933, -0.233558,
		36.289005, 34.357193, 51.335548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071102, 35.081249, 50.986256>,  <35.721088, 34.732346, 51.499039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071102, 35.081249, 50.986256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190495, 34.701988, 50.942589>,  <36.262131, 34.474434, 50.916389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190495, 34.701988, 50.942589>,  <36.071102, 35.081249, 50.986256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190495, 34.701988, 50.942589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186012, 0.054401, -0.981040,
		0.936112, 0.313133, -0.160130,
		0.298484, -0.948150, -0.109172,
		36.280041, 34.417542, 50.909836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399017, 35.181385, 50.393894>,  <36.071102, 35.081249, 50.986256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399017, 35.181385, 50.393894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390862, 34.782715, 50.425465>,  <36.385967, 34.543514, 50.444405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390862, 34.782715, 50.425465>,  <36.399017, 35.181385, 50.393894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390862, 34.782715, 50.425465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015586, -0.078613, -0.996783,
		0.999670, -0.021558, -0.013931,
		-0.020394, -0.996672, 0.078923,
		36.384743, 34.483715, 50.449142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037689, 35.012627, 50.014908>,  <36.399017, 35.181385, 50.393894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037689, 35.012627, 50.014908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811237, 34.683300, 50.031204>,  <36.675365, 34.485706, 50.040981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811237, 34.683300, 50.031204>,  <37.037689, 35.012627, 50.014908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811237, 34.683300, 50.031204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181126, -0.172458, -0.968221,
		0.804174, -0.540755, 0.246756,
		-0.566125, -0.823312, 0.040741,
		36.641399, 34.436306, 50.043427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483425, 34.606956, 49.717636>,  <37.037689, 35.012627, 50.014908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483425, 34.606956, 49.717636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103455, 34.489326, 49.675369>,  <36.875473, 34.418747, 49.650009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103455, 34.489326, 49.675369>,  <37.483425, 34.606956, 49.717636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103455, 34.489326, 49.675369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130748, -0.066919, -0.989155,
		0.283815, -0.953436, 0.102018,
		-0.949923, -0.294076, -0.105667,
		36.818478, 34.401104, 49.643669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561867, 34.165203, 49.206814>,  <37.483425, 34.606956, 49.717636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561867, 34.165203, 49.206814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166744, 34.225082, 49.189671>,  <36.929672, 34.261009, 49.179382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166744, 34.225082, 49.189671>,  <37.561867, 34.165203, 49.206814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166744, 34.225082, 49.189671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028032, -0.099802, -0.994612,
		-0.153171, -0.983682, 0.094388,
		-0.987802, 0.149700, -0.042861,
		36.870403, 34.269993, 49.176811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316120, 33.590996, 48.777660>,  <37.561867, 34.165203, 49.206814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316120, 33.590996, 48.777660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043118, 33.882614, 48.756969>,  <36.879318, 34.057587, 48.744553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043118, 33.882614, 48.756969>,  <37.316120, 33.590996, 48.777660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043118, 33.882614, 48.756969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083377, -0.147979, -0.985470,
		-0.726112, -0.668272, 0.161782,
		-0.682503, 0.729050, -0.051731,
		36.838367, 34.101330, 48.741451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047173, 33.489449, 48.096642>,  <37.316120, 33.590996, 48.777660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047173, 33.489449, 48.096642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889538, 33.847385, 48.180508>,  <36.794956, 34.062145, 48.230827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889538, 33.847385, 48.180508>,  <37.047173, 33.489449, 48.096642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889538, 33.847385, 48.180508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068257, 0.199001, -0.977619,
		-0.916536, -0.399576, -0.017344,
		-0.394084, 0.894840, 0.209665,
		36.771313, 34.115837, 48.243408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391609, 33.525539, 47.622887>,  <37.047173, 33.489449, 48.096642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391609, 33.525539, 47.622887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509075, 33.892002, 47.732010>,  <36.579556, 34.111877, 47.797482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509075, 33.892002, 47.732010>,  <36.391609, 33.525539, 47.622887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509075, 33.892002, 47.732010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101209, 0.253984, -0.961899,
		-0.950534, 0.310090, -0.018136,
		0.293669, 0.916153, 0.272804,
		36.597176, 34.166847, 47.813850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026939, 34.028122, 47.110828>,  <36.391609, 33.525539, 47.622887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026939, 34.028122, 47.110828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302578, 34.257736, 47.287750>,  <36.467960, 34.395504, 47.393902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302578, 34.257736, 47.287750>,  <36.026939, 34.028122, 47.110828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302578, 34.257736, 47.287750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037639, 0.581172, -0.812909,
		-0.723690, 0.576822, 0.378878,
		0.689098, 0.574034, 0.442300,
		36.509308, 34.429947, 47.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792770, 34.710392, 47.162979>,  <36.026939, 34.028122, 47.110828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792770, 34.710392, 47.162979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191284, 34.744854, 47.162807>,  <36.430393, 34.765530, 47.162704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.191284, 34.744854, 47.162807>,  <35.792770, 34.710392, 47.162979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191284, 34.744854, 47.162807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062073, 0.714310, -0.697071,
		-0.059750, 0.694506, 0.717002,
		0.996281, 0.086156, -0.000430,
		36.490170, 34.770702, 47.162678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028332, 35.415878, 47.098637>,  <35.792770, 34.710392, 47.162979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028332, 35.415878, 47.098637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345116, 35.207916, 46.970573>,  <36.535187, 35.083138, 46.893734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.345116, 35.207916, 46.970573>,  <36.028332, 35.415878, 47.098637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345116, 35.207916, 46.970573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016148, 0.542002, -0.840222,
		0.610363, 0.660250, 0.437638,
		0.791957, -0.519907, -0.320157,
		36.582703, 35.051945, 46.874527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406105, 35.929245, 46.768108>,  <36.028332, 35.415878, 47.098637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406105, 35.929245, 46.768108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555782, 35.583244, 46.634392>,  <36.645588, 35.375645, 46.554161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555782, 35.583244, 46.634392>,  <36.406105, 35.929245, 46.768108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555782, 35.583244, 46.634392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167619, 0.417629, -0.893023,
		0.912076, 0.278130, 0.301265,
		0.374194, -0.865003, -0.334289,
		36.668041, 35.323742, 46.534103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008060, 36.115993, 46.472084>,  <36.406105, 35.929245, 46.768108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008060, 36.115993, 46.472084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917793, 35.759418, 46.314907>,  <36.863632, 35.545471, 46.220600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917793, 35.759418, 46.314907>,  <37.008060, 36.115993, 46.472084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917793, 35.759418, 46.314907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140672, 0.369304, -0.918600,
		0.963995, -0.262574, 0.042061,
		-0.225667, -0.891442, -0.392944,
		36.850094, 35.491985, 46.197025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536858, 35.891850, 46.050064>,  <37.008060, 36.115993, 46.472084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536858, 35.891850, 46.050064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.205936, 35.708763, 45.919792>,  <37.007385, 35.598911, 45.841629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.205936, 35.708763, 45.919792>,  <37.536858, 35.891850, 46.050064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205936, 35.708763, 45.919792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173165, 0.343728, -0.922965,
		0.534401, -0.819968, -0.205107,
		-0.827303, -0.457716, -0.325678,
		36.957745, 35.571449, 45.822090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.320496, 32.672306, 27.288256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972752, 32.474842, 27.297337>,  <42.764107, 32.356361, 27.302786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.972752, 32.474842, 27.297337>,  <43.320496, 32.672306, 27.288256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972752, 32.474842, 27.297337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091503, 0.205949, 0.974275,
		-0.485640, 0.844915, -0.224215,
		-0.869356, -0.493664, 0.022705,
		42.711945, 32.326744, 27.304148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875580, 33.109066, 27.631853>,  <43.320496, 32.672306, 27.288256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875580, 33.109066, 27.631853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634354, 32.790081, 27.639505>,  <42.489616, 32.598690, 27.644096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634354, 32.790081, 27.639505>,  <42.875580, 33.109066, 27.631853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634354, 32.790081, 27.639505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397242, 0.321033, 0.859731,
		-0.691746, 0.510873, -0.510389,
		-0.603065, -0.797463, 0.019133,
		42.453434, 32.550842, 27.645245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150009, 33.298351, 27.811914>,  <42.875580, 33.109066, 27.631853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150009, 33.298351, 27.811914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173187, 32.913532, 27.918573>,  <42.187092, 32.682640, 27.982569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173187, 32.913532, 27.918573>,  <42.150009, 33.298351, 27.811914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173187, 32.913532, 27.918573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378688, 0.225956, 0.897518,
		-0.923709, -0.152980, -0.351225,
		0.057942, -0.962050, 0.266649,
		42.190571, 32.624916, 27.998568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535583, 33.210625, 28.211327>,  <42.150009, 33.298351, 27.811914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535583, 33.210625, 28.211327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784206, 32.908817, 28.295578>,  <41.933380, 32.727734, 28.346128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784206, 32.908817, 28.295578>,  <41.535583, 33.210625, 28.211327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784206, 32.908817, 28.295578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389933, -0.064795, 0.918561,
		-0.679426, -0.653069, -0.334486,
		0.621557, -0.754521, 0.210630,
		41.970673, 32.682461, 28.358767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101124, 32.753307, 28.622217>,  <41.535583, 33.210625, 28.211327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101124, 32.753307, 28.622217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481926, 32.656483, 28.697144>,  <41.710407, 32.598389, 28.742100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481926, 32.656483, 28.697144>,  <41.101124, 32.753307, 28.622217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481926, 32.656483, 28.697144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210273, -0.072536, 0.974948,
		-0.222410, -0.967546, -0.119953,
		0.952008, -0.242061, 0.187316,
		41.767529, 32.583866, 28.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214626, 32.182930, 29.072258>,  <41.101124, 32.753307, 28.622217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214626, 32.182930, 29.072258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566025, 32.365902, 29.127403>,  <41.776863, 32.475685, 29.160490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566025, 32.365902, 29.127403>,  <41.214626, 32.182930, 29.072258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566025, 32.365902, 29.127403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068137, -0.165654, 0.983827,
		0.472873, -0.873678, -0.114357,
		0.878492, 0.457433, 0.137863,
		41.829571, 32.503132, 29.168762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440876, 31.966194, 29.637228>,  <41.214626, 32.182930, 29.072258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440876, 31.966194, 29.637228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698849, 32.270409, 29.607183>,  <41.853634, 32.452938, 29.589157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698849, 32.270409, 29.607183>,  <41.440876, 31.966194, 29.637228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698849, 32.270409, 29.607183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189831, -0.064218, 0.979714,
		0.740285, -0.646112, -0.185790,
		0.644936, 0.760537, -0.075113,
		41.892330, 32.498569, 29.584650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961479, 31.781754, 30.109676>,  <41.440876, 31.966194, 29.637228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961479, 31.781754, 30.109676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975788, 32.178265, 30.058941>,  <41.984371, 32.416172, 30.028500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975788, 32.178265, 30.058941>,  <41.961479, 31.781754, 30.109676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975788, 32.178265, 30.058941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388165, 0.103173, 0.915796,
		0.920895, -0.081993, -0.381089,
		0.035771, 0.991278, -0.126838,
		41.986519, 32.475647, 30.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582310, 31.986261, 30.407173>,  <41.961479, 31.781754, 30.109676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582310, 31.986261, 30.407173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369499, 32.324848, 30.398758>,  <42.241814, 32.528000, 30.393709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369499, 32.324848, 30.398758>,  <42.582310, 31.986261, 30.407173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369499, 32.324848, 30.398758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301290, 0.212469, 0.929559,
		0.791312, 0.488210, -0.368071,
		-0.532024, 0.846468, -0.021036,
		42.209892, 32.578789, 30.392447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840557, 32.471886, 31.004482>,  <42.582310, 31.986261, 30.407173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840557, 32.471886, 31.004482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512291, 32.671940, 30.893938>,  <42.315331, 32.791973, 30.827612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512291, 32.671940, 30.893938>,  <42.840557, 32.471886, 31.004482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512291, 32.671940, 30.893938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061132, 0.557718, 0.827776,
		0.568134, 0.662431, -0.488272,
		-0.820663, 0.500136, -0.276363,
		42.266090, 32.821980, 30.811029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045120, 33.096840, 31.124859>,  <42.840557, 32.471886, 31.004482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045120, 33.096840, 31.124859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.645840, 33.113556, 31.107651>,  <42.406273, 33.123585, 31.097326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.645840, 33.113556, 31.107651>,  <43.045120, 33.096840, 31.124859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645840, 33.113556, 31.107651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007345, 0.626706, 0.779221,
		0.059523, 0.778135, -0.625271,
		-0.998200, 0.041789, -0.043019,
		42.346378, 33.126091, 31.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841030, 33.831261, 31.111074>,  <43.045120, 33.096840, 31.124859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841030, 33.831261, 31.111074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522816, 33.629257, 31.244995>,  <42.331886, 33.508057, 31.325348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.522816, 33.629257, 31.244995>,  <42.841030, 33.831261, 31.111074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522816, 33.629257, 31.244995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098892, 0.653369, 0.750552,
		-0.597785, 0.563980, -0.569719,
		-0.795533, -0.505010, 0.334801,
		42.284157, 33.477753, 31.345436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243515, 34.389969, 31.278006>,  <42.841030, 33.831261, 31.111074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243515, 34.389969, 31.278006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189217, 34.045780, 31.474438>,  <42.156639, 33.839268, 31.592297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189217, 34.045780, 31.474438>,  <42.243515, 34.389969, 31.278006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189217, 34.045780, 31.474438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157704, 0.508115, 0.846728,
		-0.978112, 0.037492, -0.204673,
		-0.135743, -0.860473, 0.491081,
		42.148495, 33.787640, 31.621761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698818, 34.524334, 31.690149>,  <42.243515, 34.389969, 31.278006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698818, 34.524334, 31.690149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855728, 34.195419, 31.855059>,  <41.949875, 33.998070, 31.954004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855728, 34.195419, 31.855059>,  <41.698818, 34.524334, 31.690149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855728, 34.195419, 31.855059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055043, 0.426410, 0.902854,
		-0.918200, -0.376858, 0.122008,
		0.392273, -0.822285, 0.412273,
		41.973412, 33.948734, 31.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418736, 34.476677, 32.263557>,  <41.698818, 34.524334, 31.690149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418736, 34.476677, 32.263557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700100, 34.205692, 32.349583>,  <41.868919, 34.043102, 32.401199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700100, 34.205692, 32.349583>,  <41.418736, 34.476677, 32.263557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700100, 34.205692, 32.349583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080816, 0.376845, 0.922744,
		-0.706173, -0.631688, 0.319827,
		0.703412, -0.677464, 0.215067,
		41.911125, 34.002453, 32.414104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202217, 34.277878, 32.950794>,  <41.418736, 34.476677, 32.263557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202217, 34.277878, 32.950794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589371, 34.183773, 32.915340>,  <41.821663, 34.127312, 32.894070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.589371, 34.183773, 32.915340>,  <41.202217, 34.277878, 32.950794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589371, 34.183773, 32.915340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172582, 0.365410, 0.914708,
		-0.182806, -0.900627, 0.394275,
		0.967883, -0.235259, -0.088633,
		41.879734, 34.113197, 32.888752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386791, 33.960346, 33.560074>,  <41.202217, 34.277878, 32.950794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386791, 33.960346, 33.560074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719925, 34.115131, 33.401764>,  <41.919807, 34.208004, 33.306778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719925, 34.115131, 33.401764>,  <41.386791, 33.960346, 33.560074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719925, 34.115131, 33.401764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273614, 0.333747, 0.902080,
		0.481165, -0.859575, 0.172077,
		0.832836, 0.386966, -0.395779,
		41.969776, 34.231220, 33.283031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833157, 33.819485, 34.103466>,  <41.386791, 33.960346, 33.560074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833157, 33.819485, 34.103466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015682, 34.088326, 33.870205>,  <42.125198, 34.249630, 33.730247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015682, 34.088326, 33.870205>,  <41.833157, 33.819485, 34.103466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015682, 34.088326, 33.870205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305008, 0.497513, 0.812066,
		0.835913, -0.548420, 0.022025,
		0.456311, 0.672098, -0.583150,
		42.152576, 34.289955, 33.695259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479099, 33.729542, 34.237175>,  <41.833157, 33.819485, 34.103466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479099, 33.729542, 34.237175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449532, 34.100327, 34.090050>,  <42.431793, 34.322796, 34.001774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449532, 34.100327, 34.090050>,  <42.479099, 33.729542, 34.237175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449532, 34.100327, 34.090050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541751, 0.346976, 0.765581,
		0.837283, -0.142672, -0.527828,
		-0.073917, 0.926959, -0.367810,
		42.427357, 34.378414, 33.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157387, 34.010258, 34.335381>,  <42.479099, 33.729542, 34.237175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157387, 34.010258, 34.335381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909122, 34.317200, 34.270950>,  <42.760162, 34.501366, 34.232292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909122, 34.317200, 34.270950>,  <43.157387, 34.010258, 34.335381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909122, 34.317200, 34.270950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468530, 0.527690, 0.708535,
		0.628696, 0.364293, -0.687046,
		-0.620662, 0.767355, -0.161075,
		42.722923, 34.547405, 34.222630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579243, 34.640125, 34.420383>,  <43.157387, 34.010258, 34.335381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579243, 34.640125, 34.420383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205986, 34.777130, 34.464081>,  <42.982033, 34.859333, 34.490299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.205986, 34.777130, 34.464081>,  <43.579243, 34.640125, 34.420383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205986, 34.777130, 34.464081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289704, 0.536440, 0.792656,
		0.212890, 0.771308, -0.599801,
		-0.933140, 0.342513, 0.109248,
		42.926044, 34.879883, 34.496857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112804, 34.115555, 34.773167>,  <43.579243, 34.640125, 34.420383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112804, 34.115555, 34.773167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488468, 33.997311, 34.843140>,  <44.713867, 33.926365, 34.885124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488468, 33.997311, 34.843140>,  <44.112804, 34.115555, 34.773167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488468, 33.997311, 34.843140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261861, 0.286565, -0.921580,
		0.222296, 0.911316, 0.346538,
		0.939155, -0.295609, 0.174936,
		44.770214, 33.908627, 34.895622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623821, 34.702927, 34.698761>,  <44.112804, 34.115555, 34.773167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623821, 34.702927, 34.698761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811913, 34.354038, 34.644917>,  <44.924767, 34.144707, 34.612610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811913, 34.354038, 34.644917>,  <44.623821, 34.702927, 34.698761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811913, 34.354038, 34.644917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366666, 0.331815, -0.869169,
		0.802773, 0.359348, 0.475841,
		0.470225, -0.872220, -0.134611,
		44.952980, 34.092373, 34.604534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224365, 34.897995, 34.309872>,  <44.623821, 34.702927, 34.698761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224365, 34.897995, 34.309872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242340, 34.501335, 34.261520>,  <45.253124, 34.263340, 34.232510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242340, 34.501335, 34.261520>,  <45.224365, 34.897995, 34.309872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242340, 34.501335, 34.261520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417205, 0.128570, -0.899672,
		0.907701, -0.009997, 0.419499,
		0.044941, -0.991650, -0.120874,
		45.255821, 34.203838, 34.225258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894417, 34.718864, 33.938152>,  <45.224365, 34.897995, 34.309872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894417, 34.718864, 33.938152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662155, 34.400093, 33.871536>,  <45.522797, 34.208828, 33.831566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662155, 34.400093, 33.871536>,  <45.894417, 34.718864, 33.938152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662155, 34.400093, 33.871536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365994, -0.072789, -0.927766,
		0.727244, -0.599667, 0.333938,
		-0.580658, -0.796932, -0.166540,
		45.487957, 34.161015, 33.821575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346943, 34.320919, 33.465939>,  <45.894417, 34.718864, 33.938152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346943, 34.320919, 33.465939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980827, 34.162766, 33.435181>,  <45.761158, 34.067875, 33.416725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980827, 34.162766, 33.435181>,  <46.346943, 34.320919, 33.465939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980827, 34.162766, 33.435181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158218, -0.177351, -0.971346,
		0.370417, -0.901231, 0.224884,
		-0.915292, -0.395384, -0.076897,
		45.706242, 34.044151, 33.412113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.412991, 33.701614, 33.157543>,  <46.346943, 34.320919, 33.465939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.412991, 33.701614, 33.157543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.026943, 33.793293, 33.106926>,  <45.795315, 33.848301, 33.076557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.026943, 33.793293, 33.106926>,  <46.412991, 33.701614, 33.157543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026943, 33.793293, 33.106926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059715, -0.277884, -0.958757,
		-0.254897, -0.932874, 0.254506,
		-0.965123, 0.229186, -0.126538,
		45.737408, 33.862053, 33.068962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100502, 33.145992, 32.796394>,  <46.412991, 33.701614, 33.157543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100502, 33.145992, 32.796394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.849884, 33.450081, 32.727684>,  <45.699512, 33.632534, 32.686459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.849884, 33.450081, 32.727684>,  <46.100502, 33.145992, 32.796394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849884, 33.450081, 32.727684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047538, -0.182719, -0.982015,
		-0.777935, -0.623442, 0.078342,
		-0.626544, 0.760220, -0.171780,
		45.661922, 33.678146, 32.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654819, 32.828835, 32.334641>,  <46.100502, 33.145992, 32.796394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654819, 32.828835, 32.334641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605339, 33.224667, 32.305149>,  <45.575649, 33.462166, 32.287453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.605339, 33.224667, 32.305149>,  <45.654819, 32.828835, 32.334641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605339, 33.224667, 32.305149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149578, -0.092048, -0.984456,
		-0.980981, -0.110750, 0.159405,
		-0.123701, 0.989577, -0.073731,
		45.568230, 33.521538, 32.283031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069286, 33.008717, 32.000774>,  <45.654819, 32.828835, 32.334641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069286, 33.008717, 32.000774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252075, 33.358444, 31.935369>,  <45.361748, 33.568283, 31.896126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.252075, 33.358444, 31.935369>,  <45.069286, 33.008717, 32.000774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252075, 33.358444, 31.935369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369284, 0.019250, -0.929117,
		-0.809199, 0.484966, 0.331669,
		0.456975, 0.874321, -0.163513,
		45.389168, 33.620739, 31.886316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702229, 33.324600, 31.427509>,  <45.069286, 33.008717, 32.000774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702229, 33.324600, 31.427509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015213, 33.573341, 31.440456>,  <45.203003, 33.722588, 31.448225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.015213, 33.573341, 31.440456>,  <44.702229, 33.324600, 31.427509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015213, 33.573341, 31.440456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089971, 0.164338, -0.982293,
		-0.616160, 0.765697, 0.184538,
		0.782465, 0.621853, 0.032367,
		45.249954, 33.759895, 31.450167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508945, 33.992779, 31.042166>,  <44.702229, 33.324600, 31.427509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508945, 33.992779, 31.042166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.902447, 33.920967, 31.042618>,  <45.138546, 33.877880, 31.042889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.902447, 33.920967, 31.042618>,  <44.508945, 33.992779, 31.042166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902447, 33.920967, 31.042618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021960, 0.114065, -0.993231,
		0.178188, 0.977117, 0.116154,
		0.983751, -0.179533, 0.001132,
		45.197571, 33.867107, 31.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689240, 34.567593, 30.634254>,  <44.508945, 33.992779, 31.042166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689240, 34.567593, 30.634254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968826, 34.281548, 30.637278>,  <45.136578, 34.109921, 30.639091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968826, 34.281548, 30.637278>,  <44.689240, 34.567593, 30.634254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968826, 34.281548, 30.637278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060999, 0.049087, -0.996930,
		0.712550, 0.697280, 0.077931,
		0.698965, -0.715116, 0.007557,
		45.178516, 34.067013, 30.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201794, 34.744141, 30.093601>,  <44.689240, 34.567593, 30.634254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201794, 34.744141, 30.093601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.269432, 34.358398, 30.175013>,  <45.310017, 34.126953, 30.223860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.269432, 34.358398, 30.175013>,  <45.201794, 34.744141, 30.093601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269432, 34.358398, 30.175013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141907, -0.180529, -0.973279,
		0.975329, 0.193463, 0.106321,
		0.169100, -0.964355, 0.203529,
		45.320164, 34.069092, 30.236071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787251, 34.639557, 29.752060>,  <45.201794, 34.744141, 30.093601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787251, 34.639557, 29.752060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608147, 34.285717, 29.804203>,  <45.500683, 34.073414, 29.835489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.608147, 34.285717, 29.804203>,  <45.787251, 34.639557, 29.752060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608147, 34.285717, 29.804203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122928, -0.205303, -0.970948,
		0.885663, -0.418728, 0.200669,
		-0.447761, -0.884600, 0.130356,
		45.473820, 34.020336, 29.843309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118237, 34.125912, 29.277658>,  <45.787251, 34.639557, 29.752060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118237, 34.125912, 29.277658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788208, 33.931084, 29.392221>,  <45.590191, 33.814186, 29.460960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788208, 33.931084, 29.392221>,  <46.118237, 34.125912, 29.277658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788208, 33.931084, 29.392221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034824, -0.462092, -0.886148,
		0.563961, -0.741105, 0.364295,
		-0.825067, -0.487067, 0.286410,
		45.540688, 33.784966, 29.478144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237503, 33.428787, 29.092319>,  <46.118237, 34.125912, 29.277658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237503, 33.428787, 29.092319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.844360, 33.485874, 29.139021>,  <45.608475, 33.520126, 29.167042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.844360, 33.485874, 29.139021>,  <46.237503, 33.428787, 29.092319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844360, 33.485874, 29.139021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170849, -0.466731, -0.867740,
		-0.069346, -0.872809, 0.483111,
		-0.982854, 0.142714, 0.116752,
		45.549503, 33.528687, 29.174047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963100, 32.793148, 29.082277>,  <46.237503, 33.428787, 29.092319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963100, 32.793148, 29.082277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672081, 33.044239, 28.971548>,  <45.497467, 33.194893, 28.905111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.672081, 33.044239, 28.971548>,  <45.963100, 32.793148, 29.082277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672081, 33.044239, 28.971548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054724, -0.455317, -0.888646,
		-0.683866, -0.631387, 0.365618,
		-0.727552, 0.627723, -0.276823,
		45.453815, 33.232555, 28.888500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336308, 32.333824, 28.909140>,  <45.963100, 32.793148, 29.082277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336308, 32.333824, 28.909140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289890, 32.680126, 28.714407>,  <45.262039, 32.887909, 28.597569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289890, 32.680126, 28.714407>,  <45.336308, 32.333824, 28.909140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289890, 32.680126, 28.714407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355465, -0.493877, -0.793555,
		-0.927458, 0.080964, 0.365057,
		-0.116044, 0.865754, -0.486830,
		45.255077, 32.939854, 28.568357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715195, 32.289898, 28.560656>,  <45.336308, 32.333824, 28.909140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715195, 32.289898, 28.560656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890820, 32.596390, 28.372990>,  <44.996193, 32.780285, 28.260389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890820, 32.596390, 28.372990>,  <44.715195, 32.289898, 28.560656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890820, 32.596390, 28.372990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556521, -0.178015, -0.811539,
		-0.705346, 0.617413, 0.348265,
		0.439059, 0.766232, -0.469165,
		45.022537, 32.826260, 28.232241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193169, 32.579655, 28.108784>,  <44.715195, 32.289898, 28.560656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193169, 32.579655, 28.108784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549561, 32.691078, 27.965364>,  <44.763397, 32.757931, 27.879313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549561, 32.691078, 27.965364>,  <44.193169, 32.579655, 28.108784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549561, 32.691078, 27.965364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340487, -0.112489, -0.933496,
		-0.300367, 0.953809, -0.005380,
		0.890982, 0.278560, -0.358547,
		44.816856, 32.774647, 27.857800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999275, 33.084511, 27.674904>,  <44.193169, 32.579655, 28.108784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999275, 33.084511, 27.674904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362736, 33.000584, 27.530497>,  <44.580811, 32.950230, 27.443853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362736, 33.000584, 27.530497>,  <43.999275, 33.084511, 27.674904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362736, 33.000584, 27.530497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349842, 0.089480, -0.932526,
		0.227963, 0.973638, 0.007904,
		0.908650, -0.209816, -0.361017,
		44.635330, 32.937637, 27.422192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.411194, 35.317142, 40.886166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072906, 35.116680, 40.959484>,  <38.869934, 34.996403, 41.003475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072906, 35.116680, 40.959484>,  <39.411194, 35.317142, 40.886166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072906, 35.116680, 40.959484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209793, -0.003565, -0.977739,
		0.490657, -0.865347, -0.102124,
		-0.845720, -0.501160, 0.183293,
		38.819191, 34.966331, 41.014473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389427, 34.623024, 40.368969>,  <39.411194, 35.317142, 40.886166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389427, 34.623024, 40.368969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034027, 34.752068, 40.499496>,  <38.820786, 34.829494, 40.577812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034027, 34.752068, 40.499496>,  <39.389427, 34.623024, 40.368969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034027, 34.752068, 40.499496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317162, 0.082157, -0.944806,
		-0.331617, -0.942958, 0.029324,
		-0.888503, 0.322614, 0.326315,
		38.767475, 34.848850, 40.597393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009647, 34.286827, 40.089115>,  <39.389427, 34.623024, 40.368969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009647, 34.286827, 40.089115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773178, 34.597481, 40.176163>,  <38.631298, 34.783875, 40.228390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773178, 34.597481, 40.176163>,  <39.009647, 34.286827, 40.089115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773178, 34.597481, 40.176163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360831, -0.013361, -0.932536,
		-0.721333, -0.629809, 0.288133,
		-0.591169, 0.776636, 0.217617,
		38.595829, 34.830471, 40.241447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517368, 34.240219, 39.650734>,  <39.009647, 34.286827, 40.089115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517368, 34.240219, 39.650734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445366, 34.616749, 39.764931>,  <38.402164, 34.842667, 39.833447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445366, 34.616749, 39.764931>,  <38.517368, 34.240219, 39.650734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445366, 34.616749, 39.764931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212062, 0.246269, -0.945717,
		-0.960535, -0.230777, 0.155289,
		-0.180006, 0.941325, 0.285489,
		38.391365, 34.899147, 39.850578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829929, 34.308689, 39.384087>,  <38.517368, 34.240219, 39.650734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829929, 34.308689, 39.384087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015377, 34.660095, 39.430168>,  <38.126644, 34.870937, 39.457817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015377, 34.660095, 39.430168>,  <37.829929, 34.308689, 39.384087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015377, 34.660095, 39.430168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097733, 0.078521, -0.992110,
		-0.880628, 0.471221, -0.049455,
		0.463619, 0.878513, 0.115202,
		38.154465, 34.923649, 39.464729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401279, 34.719582, 38.955009>,  <37.829929, 34.308689, 39.384087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401279, 34.719582, 38.955009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727112, 34.941917, 39.021347>,  <37.922611, 35.075317, 39.061150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727112, 34.941917, 39.021347>,  <37.401279, 34.719582, 38.955009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727112, 34.941917, 39.021347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004591, 0.279720, -0.960070,
		-0.580031, 0.782817, 0.225303,
		0.814581, 0.555836, 0.165841,
		37.971485, 35.108669, 39.071098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276520, 35.243893, 38.555004>,  <37.401279, 34.719582, 38.955009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276520, 35.243893, 38.555004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669159, 35.254959, 38.630577>,  <37.904743, 35.261597, 38.675919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669159, 35.254959, 38.630577>,  <37.276520, 35.243893, 38.555004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669159, 35.254959, 38.630577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185128, 0.104453, -0.977147,
		-0.046766, 0.994145, 0.097410,
		0.981601, 0.027664, 0.188929,
		37.963638, 35.263260, 38.687256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548866, 35.863228, 38.169552>,  <37.276520, 35.243893, 38.555004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548866, 35.863228, 38.169552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844627, 35.597328, 38.212250>,  <38.022083, 35.437790, 38.237869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844627, 35.597328, 38.212250>,  <37.548866, 35.863228, 38.169552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844627, 35.597328, 38.212250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283693, 0.163839, -0.944815,
		0.610578, 0.728878, 0.309728,
		0.739400, -0.664751, 0.106741,
		38.066448, 35.397903, 38.244270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194336, 36.203205, 37.866096>,  <37.548866, 35.863228, 38.169552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194336, 36.203205, 37.866096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273983, 35.811306, 37.874546>,  <38.321774, 35.576168, 37.879616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273983, 35.811306, 37.874546>,  <38.194336, 36.203205, 37.866096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273983, 35.811306, 37.874546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484748, 0.079739, -0.871011,
		0.851686, 0.183677, 0.490809,
		0.199121, -0.979747, 0.021124,
		38.333721, 35.517384, 37.880882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875835, 36.060688, 37.769035>,  <38.194336, 36.203205, 37.866096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875835, 36.060688, 37.769035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708130, 35.707077, 37.686367>,  <38.607506, 35.494911, 37.636765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708130, 35.707077, 37.686367>,  <38.875835, 36.060688, 37.769035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708130, 35.707077, 37.686367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336223, 0.060261, -0.939852,
		0.843308, -0.463537, 0.271964,
		-0.419267, -0.884026, -0.206670,
		38.582348, 35.441868, 37.624367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341305, 35.794952, 37.331715>,  <38.875835, 36.060688, 37.769035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341305, 35.794952, 37.331715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012260, 35.573338, 37.280563>,  <38.814835, 35.440369, 37.249870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012260, 35.573338, 37.280563>,  <39.341305, 35.794952, 37.331715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012260, 35.573338, 37.280563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191026, -0.057449, -0.979902,
		0.535559, -0.830505, 0.153094,
		-0.822609, -0.554041, -0.127881,
		38.765476, 35.407124, 37.242199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545280, 35.252697, 36.887905>,  <39.341305, 35.794952, 37.331715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545280, 35.252697, 36.887905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147995, 35.259926, 36.841961>,  <38.909622, 35.264263, 36.814396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147995, 35.259926, 36.841961>,  <39.545280, 35.252697, 36.887905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147995, 35.259926, 36.841961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114734, -0.007747, -0.993366,
		-0.018859, -0.999806, 0.005619,
		-0.993217, 0.018089, -0.114858,
		38.850029, 35.265347, 36.807503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933998, 34.669762, 37.053741>,  <39.545280, 35.252697, 36.887905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933998, 34.669762, 37.053741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128731, 34.770432, 37.388325>,  <40.245571, 34.830833, 37.589073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128731, 34.770432, 37.388325>,  <39.933998, 34.669762, 37.053741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128731, 34.770432, 37.388325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576155, -0.627227, 0.524054,
		0.656539, -0.737052, -0.160346,
		0.486828, 0.251678, 0.836455,
		40.274780, 34.845936, 37.639259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430637, 34.110783, 36.919353>,  <39.933998, 34.669762, 37.053741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430637, 34.110783, 36.919353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333935, 33.955627, 36.563580>,  <39.275913, 33.862534, 36.350113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333935, 33.955627, 36.563580>,  <39.430637, 34.110783, 36.919353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333935, 33.955627, 36.563580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540523, -0.707407, 0.455423,
		-0.805845, 0.590864, -0.038639,
		-0.241760, -0.387886, -0.889436,
		39.261406, 33.839260, 36.296749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753391, 33.945854, 36.883781>,  <39.430637, 34.110783, 36.919353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753391, 33.945854, 36.883781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947975, 33.712517, 36.623604>,  <39.064724, 33.572514, 36.467499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947975, 33.712517, 36.623604>,  <38.753391, 33.945854, 36.883781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947975, 33.712517, 36.623604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335712, -0.812111, 0.477255,
		-0.806624, -0.013814, -0.590904,
		0.486472, -0.583339, -0.650431,
		39.093910, 33.537514, 36.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286236, 33.332668, 36.804752>,  <38.753391, 33.945854, 36.883781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286236, 33.332668, 36.804752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656235, 33.228199, 36.694363>,  <38.878235, 33.165516, 36.628128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656235, 33.228199, 36.694363>,  <38.286236, 33.332668, 36.804752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656235, 33.228199, 36.694363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038931, -0.787640, 0.614904,
		-0.377968, -0.558041, -0.738735,
		0.924999, -0.261174, -0.275978,
		38.933735, 33.149845, 36.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312912, 32.677956, 36.431370>,  <38.286236, 33.332668, 36.804752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312912, 32.677956, 36.431370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651844, 32.739475, 36.634689>,  <38.855206, 32.776386, 36.756683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651844, 32.739475, 36.634689>,  <38.312912, 32.677956, 36.431370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651844, 32.739475, 36.634689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200174, -0.794045, 0.573954,
		0.491891, -0.588079, -0.642033,
		0.847333, 0.153804, 0.508302,
		38.906044, 32.785618, 36.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380856, 32.085896, 36.751381>,  <38.312912, 32.677956, 36.431370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380856, 32.085896, 36.751381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690849, 32.263737, 36.931038>,  <38.876846, 32.370441, 37.038830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690849, 32.263737, 36.931038>,  <38.380856, 32.085896, 36.751381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690849, 32.263737, 36.931038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040929, -0.673887, 0.737700,
		0.630650, -0.590091, -0.504057,
		0.774987, 0.444600, 0.449139,
		38.923347, 32.397118, 37.065781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890461, 31.536438, 36.992237>,  <38.380856, 32.085896, 36.751381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890461, 31.536438, 36.992237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935860, 31.869801, 37.208588>,  <38.963100, 32.069817, 37.338398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935860, 31.869801, 37.208588>,  <38.890461, 31.536438, 36.992237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935860, 31.869801, 37.208588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095762, -0.532687, 0.840877,
		0.988912, -0.147234, 0.019350,
		0.113498, 0.833407, 0.540880,
		38.969910, 32.119823, 37.370853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428394, 31.397869, 37.383244>,  <38.890461, 31.536438, 36.992237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428394, 31.397869, 37.383244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256577, 31.702217, 37.577797>,  <39.153488, 31.884827, 37.694530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256577, 31.702217, 37.577797>,  <39.428394, 31.397869, 37.383244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256577, 31.702217, 37.577797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019084, -0.546130, 0.837483,
		0.902845, 0.350452, 0.249107,
		-0.429543, 0.760872, 0.486382,
		39.127712, 31.930479, 37.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712502, 31.489807, 38.078892>,  <39.428394, 31.397869, 37.383244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712502, 31.489807, 38.078892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361046, 31.679724, 38.099136>,  <39.150173, 31.793674, 38.111282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361046, 31.679724, 38.099136>,  <39.712502, 31.489807, 38.078892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361046, 31.679724, 38.099136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173791, -0.416727, 0.892264,
		0.444731, 0.775184, 0.448669,
		-0.878642, 0.474792, 0.050612,
		39.097454, 31.822161, 38.114319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575974, 31.708704, 38.796238>,  <39.712502, 31.489807, 38.078892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575974, 31.708704, 38.796238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202152, 31.758417, 38.662868>,  <38.977859, 31.788244, 38.582848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202152, 31.758417, 38.662868>,  <39.575974, 31.708704, 38.796238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202152, 31.758417, 38.662868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354411, -0.241482, 0.903371,
		0.031758, 0.962414, 0.269725,
		-0.934550, 0.124283, -0.333421,
		38.921787, 31.795702, 38.562843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269939, 32.155354, 39.246262>,  <39.575974, 31.708704, 38.796238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269939, 32.155354, 39.246262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964458, 31.953720, 39.084938>,  <38.781170, 31.832739, 38.988144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964458, 31.953720, 39.084938>,  <39.269939, 32.155354, 39.246262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964458, 31.953720, 39.084938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339734, -0.217403, 0.915050,
		-0.548946, 0.835842, -0.005225,
		-0.763701, -0.504088, -0.403306,
		38.735348, 31.802494, 38.963947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686356, 32.296795, 39.638748>,  <39.269939, 32.155354, 39.246262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686356, 32.296795, 39.638748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561668, 31.964691, 39.453922>,  <38.486858, 31.765429, 39.343025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561668, 31.964691, 39.453922>,  <38.686356, 32.296795, 39.638748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561668, 31.964691, 39.453922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527536, -0.253239, 0.810910,
		-0.790278, 0.496529, -0.359053,
		-0.311715, -0.830258, -0.462066,
		38.468155, 31.715614, 39.315304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960381, 32.284832, 39.799835>,  <38.686356, 32.296795, 39.638748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960381, 32.284832, 39.799835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057110, 31.911657, 39.693142>,  <38.115147, 31.687752, 39.629128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057110, 31.911657, 39.693142>,  <37.960381, 32.284832, 39.799835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057110, 31.911657, 39.693142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540414, -0.357806, 0.761530,
		-0.805899, -0.040011, -0.590699,
		0.241826, -0.932939, -0.266733,
		38.129658, 31.631775, 39.613121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384716, 31.978525, 39.813755>,  <37.960381, 32.284832, 39.799835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384716, 31.978525, 39.813755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643539, 31.674109, 39.832222>,  <37.798836, 31.491459, 39.843304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643539, 31.674109, 39.832222>,  <37.384716, 31.978525, 39.813755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643539, 31.674109, 39.832222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530338, -0.405754, 0.744383,
		-0.547773, -0.506144, -0.666155,
		0.647060, -0.761040, 0.046166,
		37.837658, 31.445797, 39.846073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979305, 31.364407, 39.964760>,  <37.384716, 31.978525, 39.813755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979305, 31.364407, 39.964760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349049, 31.278048, 40.090588>,  <37.570896, 31.226233, 40.166084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349049, 31.278048, 40.090588>,  <36.979305, 31.364407, 39.964760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349049, 31.278048, 40.090588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372827, -0.336063, 0.864906,
		-0.081017, -0.916761, -0.391135,
		0.924357, -0.215898, 0.314566,
		37.626354, 31.213278, 40.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880215, 30.631578, 40.352764>,  <36.979305, 31.364407, 39.964760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880215, 30.631578, 40.352764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229603, 30.804380, 40.442581>,  <37.439236, 30.908062, 40.496471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229603, 30.804380, 40.442581>,  <36.880215, 30.631578, 40.352764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229603, 30.804380, 40.442581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176003, -0.149842, 0.972918,
		0.453951, -0.889337, -0.054849,
		0.873471, 0.432004, 0.224547,
		37.491646, 30.933981, 40.509945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735641, 29.938332, 40.374386>,  <36.880215, 30.631578, 40.352764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735641, 29.938332, 40.374386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402058, 29.717615, 40.376659>,  <36.201908, 29.585186, 40.378021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402058, 29.717615, 40.376659>,  <36.735641, 29.938332, 40.374386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402058, 29.717615, 40.376659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153607, 0.222247, -0.962814,
		0.530010, -0.803824, -0.270105,
		-0.833963, -0.551791, 0.005680,
		36.151867, 29.552078, 40.378365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812416, 29.493919, 39.768707>,  <36.735641, 29.938332, 40.374386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812416, 29.493919, 39.768707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432861, 29.541986, 39.885445>,  <36.205128, 29.570826, 39.955486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432861, 29.541986, 39.885445>,  <36.812416, 29.493919, 39.768707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432861, 29.541986, 39.885445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228478, 0.376399, -0.897843,
		-0.217740, -0.918631, -0.329705,
		-0.948887, 0.120166, 0.291844,
		36.148193, 29.578035, 39.973000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529255, 29.282181, 39.163162>,  <36.812416, 29.493919, 39.768707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529255, 29.282181, 39.163162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283344, 29.509010, 39.382427>,  <36.135799, 29.645107, 39.513985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283344, 29.509010, 39.382427>,  <36.529255, 29.282181, 39.163162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283344, 29.509010, 39.382427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252973, 0.516518, -0.818055,
		-0.747032, -0.641589, -0.174088,
		-0.614775, 0.567074, 0.548160,
		36.098911, 29.679132, 39.546875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852821, 29.365461, 38.760418>,  <36.529255, 29.282181, 39.163162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852821, 29.365461, 38.760418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821918, 29.673777, 39.013374>,  <35.803375, 29.858767, 39.165146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821918, 29.673777, 39.013374>,  <35.852821, 29.365461, 38.760418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821918, 29.673777, 39.013374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395387, 0.558588, -0.729142,
		-0.915259, -0.306370, 0.261605,
		-0.077258, 0.770790, 0.632388,
		35.798740, 29.905014, 39.203091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262012, 29.618759, 38.517372>,  <35.852821, 29.365461, 38.760418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262012, 29.618759, 38.517372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404324, 29.902868, 38.760334>,  <35.489712, 30.073334, 38.906113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404324, 29.902868, 38.760334>,  <35.262012, 29.618759, 38.517372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404324, 29.902868, 38.760334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421242, 0.702037, -0.574194,
		-0.834253, -0.051579, 0.548965,
		0.355777, 0.710271, 0.607403,
		35.511055, 30.115950, 38.942554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685158, 30.077122, 38.736504>,  <35.262012, 29.618759, 38.517372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685158, 30.077122, 38.736504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012840, 30.300890, 38.787033>,  <35.209450, 30.435150, 38.817352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012840, 30.300890, 38.787033>,  <34.685158, 30.077122, 38.736504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012840, 30.300890, 38.787033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401191, 0.716395, -0.570810,
		-0.409822, 0.416927, 0.811306,
		0.819202, 0.559419, 0.126327,
		35.258602, 30.468716, 38.824932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425346, 30.658640, 38.906357>,  <34.685158, 30.077122, 38.736504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425346, 30.658640, 38.906357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796211, 30.756699, 38.793022>,  <35.018730, 30.815535, 38.725021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796211, 30.756699, 38.793022>,  <34.425346, 30.658640, 38.906357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796211, 30.756699, 38.793022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367824, 0.739453, -0.563839,
		0.071292, 0.626987, 0.775761,
		0.927158, 0.245146, -0.283338,
		35.074360, 30.830242, 38.708019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468891, 31.404514, 38.893532>,  <34.425346, 30.658640, 38.906357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468891, 31.404514, 38.893532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759052, 31.270056, 38.653263>,  <34.933147, 31.189381, 38.509102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759052, 31.270056, 38.653263>,  <34.468891, 31.404514, 38.893532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759052, 31.270056, 38.653263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343557, 0.579367, -0.739123,
		0.596460, 0.742523, 0.304788,
		0.725400, -0.336145, -0.600668,
		34.976673, 31.169212, 38.473064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731449, 32.021988, 38.547550>,  <34.468891, 31.404514, 38.893532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731449, 32.021988, 38.547550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856823, 31.712406, 38.327457>,  <34.932049, 31.526657, 38.195404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856823, 31.712406, 38.327457>,  <34.731449, 32.021988, 38.547550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856823, 31.712406, 38.327457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286435, 0.475383, -0.831845,
		0.905379, 0.418337, -0.072684,
		0.313438, -0.773954, -0.550228,
		34.950855, 31.480221, 38.162388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178375, 32.291229, 38.050339>,  <34.731449, 32.021988, 38.547550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178375, 32.291229, 38.050339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086121, 31.945543, 37.871483>,  <35.030769, 31.738131, 37.764172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086121, 31.945543, 37.871483>,  <35.178375, 32.291229, 38.050339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086121, 31.945543, 37.871483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215495, 0.493481, -0.842638,
		0.948878, -0.097988, -0.300050,
		-0.230637, -0.864219, -0.447137,
		35.016930, 31.686277, 37.737343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295670, 32.435837, 37.316902>,  <35.178375, 32.291229, 38.050339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295670, 32.435837, 37.316902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100243, 32.087238, 37.299934>,  <34.982986, 31.878078, 37.289753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100243, 32.087238, 37.299934>,  <35.295670, 32.435837, 37.316902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100243, 32.087238, 37.299934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496732, 0.317785, -0.807633,
		0.717330, -0.373507, -0.588158,
		-0.488564, -0.871496, -0.042424,
		34.953674, 31.825790, 37.287209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355534, 32.100433, 36.565434>,  <35.295670, 32.435837, 37.316902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355534, 32.100433, 36.565434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041378, 31.995560, 36.789730>,  <34.852886, 31.932634, 36.924309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041378, 31.995560, 36.789730>,  <35.355534, 32.100433, 36.565434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041378, 31.995560, 36.789730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618121, 0.283740, -0.733088,
		0.033100, -0.922362, -0.384907,
		-0.785386, -0.262184, 0.560740,
		34.805763, 31.916904, 36.957951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.141983, 28.176867, 43.424755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754498, 28.154753, 43.521526>,  <36.522007, 28.141485, 43.579590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.754498, 28.154753, 43.521526>,  <37.141983, 28.176867, 43.424755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754498, 28.154753, 43.521526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248164, 0.216307, -0.944259,
		-0.000130, -0.974759, -0.223260,
		-0.968718, -0.055282, 0.241929,
		36.463882, 28.138168, 43.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858631, 27.579176, 43.019894>,  <37.141983, 28.176867, 43.424755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858631, 27.579176, 43.019894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569283, 27.832924, 43.128933>,  <36.395672, 27.985172, 43.194355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569283, 27.832924, 43.128933>,  <36.858631, 27.579176, 43.019894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569283, 27.832924, 43.128933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258123, 0.117714, -0.958914,
		-0.640393, -0.764016, 0.078594,
		-0.723374, 0.634368, 0.272594,
		36.352272, 28.023233, 43.210712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252323, 27.346626, 42.471581>,  <36.858631, 27.579176, 43.019894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252323, 27.346626, 42.471581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170181, 27.707870, 42.622429>,  <36.120895, 27.924618, 42.712936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170181, 27.707870, 42.622429>,  <36.252323, 27.346626, 42.471581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170181, 27.707870, 42.622429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202912, 0.337669, -0.919133,
		-0.957421, -0.265272, 0.113910,
		-0.205356, 0.903111, 0.377118,
		36.108574, 27.978804, 42.735565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679691, 27.552364, 42.115330>,  <36.252323, 27.346626, 42.471581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679691, 27.552364, 42.115330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851398, 27.887529, 42.250164>,  <35.954422, 28.088629, 42.331066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851398, 27.887529, 42.250164>,  <35.679691, 27.552364, 42.115330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851398, 27.887529, 42.250164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183632, 0.446401, -0.875789,
		-0.884312, 0.314048, 0.345493,
		0.429268, 0.837914, 0.337088,
		35.980179, 28.138905, 42.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186142, 28.023405, 41.976303>,  <35.679691, 27.552364, 42.115330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186142, 28.023405, 41.976303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527348, 28.228006, 42.017735>,  <35.732071, 28.350767, 42.042591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.527348, 28.228006, 42.017735>,  <35.186142, 28.023405, 41.976303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527348, 28.228006, 42.017735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122687, 0.389445, -0.912842,
		-0.507260, 0.765961, 0.394957,
		0.853015, 0.511505, 0.103576,
		35.783253, 28.381458, 42.048809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040764, 28.780491, 41.970909>,  <35.186142, 28.023405, 41.976303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040764, 28.780491, 41.970909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426964, 28.743462, 41.873547>,  <35.658684, 28.721245, 41.815128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426964, 28.743462, 41.873547>,  <35.040764, 28.780491, 41.970909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426964, 28.743462, 41.873547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199574, 0.337414, -0.919958,
		0.167292, 0.936793, 0.307297,
		0.965497, -0.092573, -0.243406,
		35.716614, 28.715689, 41.800526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343800, 29.496073, 41.800583>,  <35.040764, 28.780491, 41.970909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343800, 29.496073, 41.800583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602077, 29.240448, 41.633408>,  <35.757046, 29.087072, 41.533100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602077, 29.240448, 41.633408>,  <35.343800, 29.496073, 41.800583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602077, 29.240448, 41.633408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092663, 0.608865, -0.787843,
		0.757951, 0.469979, 0.452360,
		0.645696, -0.639063, -0.417940,
		35.795788, 29.048729, 41.508026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903606, 29.856735, 41.605530>,  <35.343800, 29.496073, 41.800583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903606, 29.856735, 41.605530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887230, 29.519363, 41.391258>,  <35.877403, 29.316940, 41.262695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887230, 29.519363, 41.391258>,  <35.903606, 29.856735, 41.605530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887230, 29.519363, 41.391258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134416, 0.526606, -0.839415,
		0.990079, -0.106371, 0.091810,
		-0.040941, -0.843428, -0.535680,
		35.874947, 29.266335, 41.230553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469822, 29.995939, 41.118984>,  <35.903606, 29.856735, 41.605530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469822, 29.995939, 41.118984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272797, 29.697245, 40.940201>,  <36.154583, 29.518028, 40.832932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.272797, 29.697245, 40.940201>,  <36.469822, 29.995939, 41.118984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272797, 29.697245, 40.940201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310188, 0.329207, -0.891855,
		0.813121, -0.577934, 0.069473,
		-0.492563, -0.746736, -0.446954,
		36.125027, 29.473225, 40.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173531, 30.181465, 40.948952>,  <36.469822, 29.995939, 41.118984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173531, 30.181465, 40.948952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399982, 30.510168, 40.974922>,  <37.535854, 30.707390, 40.990505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399982, 30.510168, 40.974922>,  <37.173531, 30.181465, 40.948952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399982, 30.510168, 40.974922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133240, 0.013493, 0.990992,
		0.813480, -0.569677, 0.117130,
		0.566126, 0.821758, 0.064927,
		37.569820, 30.756695, 40.994400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719761, 30.067644, 41.410004>,  <37.173531, 30.181465, 40.948952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719761, 30.067644, 41.410004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704235, 30.467281, 41.417042>,  <37.694920, 30.707064, 41.421265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704235, 30.467281, 41.417042>,  <37.719761, 30.067644, 41.410004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704235, 30.467281, 41.417042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032595, -0.016335, 0.999335,
		0.998715, 0.039362, -0.031932,
		-0.038814, 0.999092, 0.017597,
		37.692593, 30.767010, 41.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275120, 30.394184, 41.840107>,  <37.719761, 30.067644, 41.410004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275120, 30.394184, 41.840107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988499, 30.670485, 41.801289>,  <37.816528, 30.836266, 41.777996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988499, 30.670485, 41.801289>,  <38.275120, 30.394184, 41.840107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988499, 30.670485, 41.801289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064480, 0.204124, 0.976819,
		0.694548, 0.693683, -0.190805,
		-0.716551, 0.690751, -0.097045,
		37.773533, 30.877710, 41.772175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505287, 30.866749, 42.321075>,  <38.275120, 30.394184, 41.840107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505287, 30.866749, 42.321075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122364, 30.928175, 42.223110>,  <37.892609, 30.965031, 42.164330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122364, 30.928175, 42.223110>,  <38.505287, 30.866749, 42.321075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122364, 30.928175, 42.223110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207102, 0.226739, 0.951682,
		0.201675, 0.961773, -0.185255,
		-0.957306, 0.153564, -0.244913,
		37.835171, 30.974245, 42.149635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320503, 31.575666, 42.625111>,  <38.505287, 30.866749, 42.321075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320503, 31.575666, 42.625111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983173, 31.378452, 42.539589>,  <37.780773, 31.260124, 42.488277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983173, 31.378452, 42.539589>,  <38.320503, 31.575666, 42.625111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983173, 31.378452, 42.539589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229416, -0.029479, 0.972882,
		-0.485969, 0.869509, -0.088250,
		-0.843328, -0.493037, -0.213805,
		37.730175, 31.230541, 42.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834011, 31.913853, 43.006588>,  <38.320503, 31.575666, 42.625111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834011, 31.913853, 43.006588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673683, 31.553345, 42.940792>,  <37.577488, 31.337040, 42.901314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673683, 31.553345, 42.940792>,  <37.834011, 31.913853, 43.006588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673683, 31.553345, 42.940792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174004, -0.101388, 0.979512,
		-0.899483, 0.421225, -0.116187,
		-0.400815, -0.901271, -0.164492,
		37.553440, 31.282963, 42.891445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210499, 31.821856, 43.459694>,  <37.834011, 31.913853, 43.006588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210499, 31.821856, 43.459694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324955, 31.447958, 43.375431>,  <37.393631, 31.223619, 43.324875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324955, 31.447958, 43.375431>,  <37.210499, 31.821856, 43.459694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324955, 31.447958, 43.375431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025622, -0.227232, 0.973503,
		-0.957844, -0.273165, -0.088971,
		0.286145, -0.934744, -0.210654,
		37.410797, 31.167534, 43.312233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812550, 31.410929, 44.050938>,  <37.210499, 31.821856, 43.459694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812550, 31.410929, 44.050938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102089, 31.180140, 43.899597>,  <37.275810, 31.041666, 43.808792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102089, 31.180140, 43.899597>,  <36.812550, 31.410929, 44.050938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102089, 31.180140, 43.899597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219510, -0.327298, 0.919071,
		-0.654113, -0.748317, -0.110262,
		0.723845, -0.576972, -0.378353,
		37.319244, 31.007048, 43.786091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724773, 30.766634, 44.334213>,  <36.812550, 31.410929, 44.050938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724773, 30.766634, 44.334213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106937, 30.761879, 44.216198>,  <37.336235, 30.759026, 44.145390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106937, 30.761879, 44.216198>,  <36.724773, 30.766634, 44.334213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106937, 30.761879, 44.216198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272059, -0.352925, 0.895225,
		-0.114768, -0.935576, -0.333954,
		0.955413, -0.011888, -0.295036,
		37.393562, 30.758312, 44.127686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963272, 30.078516, 44.565033>,  <36.724773, 30.766634, 44.334213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963272, 30.078516, 44.565033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283260, 30.309172, 44.498653>,  <37.475254, 30.447565, 44.458824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283260, 30.309172, 44.498653>,  <36.963272, 30.078516, 44.565033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283260, 30.309172, 44.498653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340031, -0.207775, 0.917174,
		0.494400, -0.790136, -0.362289,
		0.799967, 0.576640, -0.165947,
		37.523251, 30.482164, 44.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647175, 29.634186, 44.673073>,  <36.963272, 30.078516, 44.565033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647175, 29.634186, 44.673073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.791176, 30.005821, 44.706997>,  <37.877579, 30.228802, 44.727352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.791176, 30.005821, 44.706997>,  <37.647175, 29.634186, 44.673073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791176, 30.005821, 44.706997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354875, -0.220446, 0.908552,
		0.862821, -0.296986, -0.409072,
		0.360006, 0.929087, 0.084813,
		37.899178, 30.284548, 44.732441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259598, 29.540167, 45.065327>,  <37.647175, 29.634186, 44.673073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259598, 29.540167, 45.065327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151489, 29.925081, 45.077713>,  <38.086624, 30.156031, 45.085144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151489, 29.925081, 45.077713>,  <38.259598, 29.540167, 45.065327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151489, 29.925081, 45.077713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341330, 0.065697, 0.937645,
		0.900248, 0.263989, -0.346213,
		-0.270273, 0.962286, 0.030964,
		38.070408, 30.213766, 45.087002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801899, 29.830740, 45.298042>,  <38.259598, 29.540167, 45.065327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801899, 29.830740, 45.298042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514393, 30.096554, 45.379799>,  <38.341888, 30.256042, 45.428852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.514393, 30.096554, 45.379799>,  <38.801899, 29.830740, 45.298042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514393, 30.096554, 45.379799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346834, 0.087933, 0.933795,
		0.602566, 0.742067, -0.293686,
		-0.718763, 0.664534, 0.204388,
		38.298763, 30.295914, 45.441116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106915, 30.481012, 45.604298>,  <38.801899, 29.830740, 45.298042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106915, 30.481012, 45.604298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722504, 30.433964, 45.704376>,  <38.491859, 30.405735, 45.764423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.722504, 30.433964, 45.704376>,  <39.106915, 30.481012, 45.604298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722504, 30.433964, 45.704376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228484, 0.171622, 0.958301,
		-0.155656, 0.978116, -0.138058,
		-0.961024, -0.117621, 0.250198,
		38.434196, 30.398678, 45.779434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.266926, 34.383762, 47.381855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477509, 34.102558, 47.190601>,  <33.603859, 33.933834, 47.075848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477509, 34.102558, 47.190601>,  <33.266926, 34.383762, 47.381855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477509, 34.102558, 47.190601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005699, 0.565283, -0.824878,
		0.850180, 0.431541, 0.301606,
		0.526461, -0.703013, -0.478133,
		33.635448, 33.891655, 47.047161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635338, 34.728527, 46.842964>,  <33.266926, 34.383762, 47.381855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635338, 34.728527, 46.842964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717751, 34.351517, 46.737743>,  <33.767197, 34.125309, 46.674610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.717751, 34.351517, 46.737743>,  <33.635338, 34.728527, 46.842964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717751, 34.351517, 46.737743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195979, 0.303112, -0.932585,
		0.958720, 0.140589, 0.247165,
		0.206030, -0.942527, -0.263047,
		33.779560, 34.068760, 46.658829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867577, 34.891464, 46.256569>,  <33.635338, 34.728527, 46.842964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867577, 34.891464, 46.256569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838474, 34.492817, 46.241322>,  <33.821014, 34.253628, 46.232174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838474, 34.492817, 46.241322>,  <33.867577, 34.891464, 46.256569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838474, 34.492817, 46.241322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113107, 0.029731, -0.993138,
		0.990916, -0.076567, 0.110562,
		-0.072754, -0.996621, -0.038121,
		33.816647, 34.193832, 46.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478470, 34.590538, 45.883297>,  <33.867577, 34.891464, 46.256569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478470, 34.590538, 45.883297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208290, 34.297672, 45.848183>,  <34.046181, 34.121952, 45.827114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208290, 34.297672, 45.848183>,  <34.478470, 34.590538, 45.883297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208290, 34.297672, 45.848183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192634, -0.060278, -0.979418,
		0.711799, -0.678460, 0.181753,
		-0.675451, -0.732161, -0.087789,
		34.005653, 34.078026, 45.821846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795052, 34.031918, 45.507103>,  <34.478470, 34.590538, 45.883297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795052, 34.031918, 45.507103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396786, 34.005783, 45.480629>,  <34.157825, 33.990105, 45.464745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396786, 34.005783, 45.480629>,  <34.795052, 34.031918, 45.507103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396786, 34.005783, 45.480629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070837, -0.071725, -0.994906,
		0.060255, -0.995282, 0.076042,
		-0.995666, -0.065334, -0.066181,
		34.098087, 33.986183, 45.460773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758873, 33.702759, 44.923794>,  <34.795052, 34.031918, 45.507103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758873, 33.702759, 44.923794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383324, 33.835495, 44.960461>,  <34.157993, 33.915138, 44.982460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.383324, 33.835495, 44.960461>,  <34.758873, 33.702759, 44.923794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383324, 33.835495, 44.960461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039622, 0.160339, -0.986266,
		-0.341985, -0.929608, -0.137389,
		-0.938870, 0.331844, 0.091666,
		34.101662, 33.935047, 44.987961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447227, 33.381996, 44.453453>,  <34.758873, 33.702759, 44.923794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447227, 33.381996, 44.453453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229092, 33.704796, 44.544106>,  <34.098209, 33.898476, 44.598495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229092, 33.704796, 44.544106>,  <34.447227, 33.381996, 44.453453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229092, 33.704796, 44.544106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176252, 0.153926, -0.972236,
		-0.819473, -0.570146, 0.058292,
		-0.545343, 0.806995, 0.226627,
		34.065487, 33.946896, 44.612095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873894, 33.341667, 44.038570>,  <34.447227, 33.381996, 44.453453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873894, 33.341667, 44.038570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.915703, 33.728943, 44.129513>,  <33.940788, 33.961308, 44.184078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.915703, 33.728943, 44.129513>,  <33.873894, 33.341667, 44.038570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915703, 33.728943, 44.129513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227356, 0.245820, -0.942275,
		-0.968186, 0.046799, 0.245817,
		0.104524, 0.968185, 0.227359,
		33.947060, 34.019398, 44.197720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340958, 33.669319, 43.674000>,  <33.873894, 33.341667, 44.038570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340958, 33.669319, 43.674000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572807, 33.983601, 43.760445>,  <33.711918, 34.172169, 43.812313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572807, 33.983601, 43.760445>,  <33.340958, 33.669319, 43.674000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572807, 33.983601, 43.760445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198552, 0.393390, -0.897675,
		-0.790323, 0.477407, 0.384022,
		0.579627, 0.785702, 0.216115,
		33.746696, 34.219311, 43.825279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035702, 34.202568, 43.345829>,  <33.340958, 33.669319, 43.674000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035702, 34.202568, 43.345829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409069, 34.328983, 43.413776>,  <33.633091, 34.404831, 43.454544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409069, 34.328983, 43.413776>,  <33.035702, 34.202568, 43.345829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409069, 34.328983, 43.413776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007516, 0.490553, -0.871379,
		-0.358713, 0.812084, 0.460267,
		0.933418, 0.316034, 0.169864,
		33.689095, 34.423794, 43.464737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089661, 34.915512, 43.173687>,  <33.035702, 34.202568, 43.345829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089661, 34.915512, 43.173687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473637, 34.803886, 43.183777>,  <33.704021, 34.736912, 43.189831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473637, 34.803886, 43.183777>,  <33.089661, 34.915512, 43.173687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473637, 34.803886, 43.183777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118590, 0.323066, -0.938917,
		0.253869, 0.904296, 0.343218,
		0.959941, -0.279064, 0.025224,
		33.761620, 34.720169, 43.191345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435020, 35.543350, 42.954742>,  <33.089661, 34.915512, 43.173687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435020, 35.543350, 42.954742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690132, 35.241772, 42.891747>,  <33.843201, 35.060825, 42.853947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690132, 35.241772, 42.891747>,  <33.435020, 35.543350, 42.954742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690132, 35.241772, 42.891747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038865, 0.235718, -0.971044,
		0.769238, 0.613190, 0.179638,
		0.637779, -0.753946, -0.157491,
		33.881466, 35.015587, 42.844498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014759, 35.857819, 42.473343>,  <33.435020, 35.543350, 42.954742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014759, 35.857819, 42.473343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985565, 35.460140, 42.441715>,  <33.968048, 35.221535, 42.422737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.985565, 35.460140, 42.441715>,  <34.014759, 35.857819, 42.473343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985565, 35.460140, 42.441715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084449, 0.085161, -0.992782,
		0.993751, -0.065781, -0.090174,
		-0.072985, -0.994193, -0.079074,
		33.963669, 35.161880, 42.417992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497066, 35.775074, 41.909756>,  <34.014759, 35.857819, 42.473343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497066, 35.775074, 41.909756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243401, 35.466213, 41.925816>,  <34.091202, 35.280895, 41.935452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243401, 35.466213, 41.925816>,  <34.497066, 35.775074, 41.909756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243401, 35.466213, 41.925816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278333, 0.179531, -0.943557,
		0.721361, -0.609548, -0.328768,
		-0.634168, -0.772153, 0.040151,
		34.053150, 35.234566, 41.937862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240334, 35.524776, 41.968864>,  <34.497066, 35.775074, 41.909756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240334, 35.524776, 41.968864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487465, 35.834370, 41.913387>,  <35.635742, 36.020126, 41.880100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487465, 35.834370, 41.913387>,  <35.240334, 35.524776, 41.968864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487465, 35.834370, 41.913387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155934, 0.052284, 0.986383,
		0.770700, -0.631038, -0.088389,
		0.617824, 0.773988, -0.138696,
		35.672813, 36.066566, 41.871780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719799, 35.295120, 42.361519>,  <35.240334, 35.524776, 41.968864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719799, 35.295120, 42.361519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800194, 35.683750, 42.311501>,  <35.848431, 35.916927, 42.281490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.800194, 35.683750, 42.311501>,  <35.719799, 35.295120, 42.361519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800194, 35.683750, 42.311501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291542, 0.062542, 0.954511,
		0.935204, -0.228303, -0.270686,
		0.200989, 0.971579, -0.125049,
		35.860489, 35.975224, 42.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451645, 35.365993, 42.451809>,  <35.719799, 35.295120, 42.361519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451645, 35.365993, 42.451809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279602, 35.718430, 42.530495>,  <36.176376, 35.929890, 42.577705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279602, 35.718430, 42.530495>,  <36.451645, 35.365993, 42.451809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279602, 35.718430, 42.530495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351453, -0.037288, 0.935463,
		0.831558, 0.471483, -0.293623,
		-0.430106, 0.881087, 0.196711,
		36.150570, 35.982754, 42.589508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020977, 35.862175, 42.855953>,  <36.451645, 35.365993, 42.451809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020977, 35.862175, 42.855953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660049, 36.027260, 42.905746>,  <36.443493, 36.126312, 42.935623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660049, 36.027260, 42.905746>,  <37.020977, 35.862175, 42.855953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660049, 36.027260, 42.905746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175919, 0.088910, 0.980381,
		0.393547, 0.906512, -0.152828,
		-0.902316, 0.412711, 0.124483,
		36.389355, 36.151073, 42.943092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116261, 36.439293, 43.292957>,  <37.020977, 35.862175, 42.855953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116261, 36.439293, 43.292957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733418, 36.324345, 43.307720>,  <36.503712, 36.255375, 43.316578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.733418, 36.324345, 43.307720>,  <37.116261, 36.439293, 43.292957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733418, 36.324345, 43.307720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063371, -0.083348, 0.994504,
		-0.282718, 0.954185, 0.097984,
		-0.957107, -0.287374, 0.036903,
		36.446285, 36.238132, 43.318790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740280, 36.936348, 43.744717>,  <37.116261, 36.439293, 43.292957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740280, 36.936348, 43.744717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587734, 36.567291, 43.721733>,  <36.496208, 36.345860, 43.707943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.587734, 36.567291, 43.721733>,  <36.740280, 36.936348, 43.744717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587734, 36.567291, 43.721733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038706, -0.078036, 0.996199,
		-0.923615, 0.377688, 0.065471,
		-0.381361, -0.922639, -0.057457,
		36.473328, 36.290501, 43.704494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687618, 36.949200, 44.489681>,  <36.740280, 36.936348, 43.744717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687618, 36.949200, 44.489681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548832, 36.593052, 44.371792>,  <36.465561, 36.379364, 44.301060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.548832, 36.593052, 44.371792>,  <36.687618, 36.949200, 44.489681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548832, 36.593052, 44.371792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099259, -0.277619, 0.955550,
		-0.932611, 0.360795, 0.007947,
		-0.346964, -0.890368, -0.294723,
		36.444744, 36.325943, 44.283375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209576, 36.804008, 45.023537>,  <36.687618, 36.949200, 44.489681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209576, 36.804008, 45.023537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309883, 36.465931, 44.834747>,  <36.370068, 36.263084, 44.721474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309883, 36.465931, 44.834747>,  <36.209576, 36.804008, 45.023537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309883, 36.465931, 44.834747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063413, -0.472166, 0.879226,
		-0.965967, -0.250415, -0.064810,
		0.250772, -0.845193, -0.471976,
		36.385117, 36.212372, 44.693153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775654, 36.251320, 45.354103>,  <36.209576, 36.804008, 45.023537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775654, 36.251320, 45.354103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075420, 36.046200, 45.186573>,  <36.255280, 35.923126, 45.086056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075420, 36.046200, 45.186573>,  <35.775654, 36.251320, 45.354103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075420, 36.046200, 45.186573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149806, -0.484839, 0.861678,
		-0.644934, -0.708495, -0.286523,
		0.749412, -0.512803, -0.418826,
		36.300243, 35.892361, 45.060925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647373, 35.611549, 45.223396>,  <35.775654, 36.251320, 45.354103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647373, 35.611549, 45.223396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041973, 35.612598, 45.288902>,  <36.278732, 35.613228, 45.328205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041973, 35.612598, 45.288902>,  <35.647373, 35.611549, 45.223396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041973, 35.612598, 45.288902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121156, -0.661149, 0.740408,
		0.110210, -0.750251, -0.651903,
		0.986496, 0.002618, 0.163763,
		36.337921, 35.613384, 45.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820927, 34.927750, 45.486027>,  <35.647373, 35.611549, 45.223396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820927, 34.927750, 45.486027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158703, 35.113636, 45.592583>,  <36.361366, 35.225170, 45.656517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158703, 35.113636, 45.592583>,  <35.820927, 34.927750, 45.486027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158703, 35.113636, 45.592583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063359, -0.580474, 0.811810,
		0.531894, -0.668645, -0.519618,
		0.844437, 0.464720, 0.266386,
		36.412033, 35.253052, 45.672497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323414, 34.413929, 45.626759>,  <35.820927, 34.927750, 45.486027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323414, 34.413929, 45.626759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515675, 34.722103, 45.794285>,  <36.631031, 34.907009, 45.894798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.515675, 34.722103, 45.794285>,  <36.323414, 34.413929, 45.626759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515675, 34.722103, 45.794285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153944, -0.544314, 0.824635,
		0.863294, -0.331887, -0.380228,
		0.480649, 0.770437, 0.418812,
		36.659870, 34.953236, 45.919930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994392, 34.215244, 45.959435>,  <36.323414, 34.413929, 45.626759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994392, 34.215244, 45.959435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878777, 34.556274, 46.133591>,  <36.809406, 34.760895, 46.238083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878777, 34.556274, 46.133591>,  <36.994392, 34.215244, 45.959435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878777, 34.556274, 46.133591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223539, -0.382120, 0.896669,
		0.930851, 0.356503, -0.080135,
		-0.289043, 0.852579, 0.435389,
		36.792065, 34.812050, 46.264206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606663, 34.491154, 46.496605>,  <36.994392, 34.215244, 45.959435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606663, 34.491154, 46.496605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234230, 34.610477, 46.580597>,  <37.010769, 34.682072, 46.630993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234230, 34.610477, 46.580597>,  <37.606663, 34.491154, 46.496605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234230, 34.610477, 46.580597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066701, -0.426688, 0.901936,
		0.358653, 0.853785, 0.377385,
		-0.931085, 0.298310, 0.209981,
		36.954903, 34.699970, 46.643593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314621, 34.907715, 46.457485>,  <37.606663, 34.491154, 46.496605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314621, 34.907715, 46.457485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649914, 34.690956, 46.481865>,  <38.851089, 34.560902, 46.496490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649914, 34.690956, 46.481865>,  <38.314621, 34.907715, 46.457485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649914, 34.690956, 46.481865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273353, 0.320850, -0.906826,
		0.471850, 0.776791, 0.417076,
		0.838233, -0.541895, 0.060945,
		38.901382, 34.528389, 46.500149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844784, 35.319901, 46.261436>,  <38.314621, 34.907715, 46.457485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844784, 35.319901, 46.261436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985703, 34.955208, 46.176937>,  <39.070255, 34.736393, 46.126240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985703, 34.955208, 46.176937>,  <38.844784, 35.319901, 46.261436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985703, 34.955208, 46.176937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061389, 0.247742, -0.966879,
		0.933873, 0.327661, 0.143249,
		0.352297, -0.911736, -0.211245,
		39.091393, 34.681686, 46.113564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444359, 35.384045, 45.856827>,  <38.844784, 35.319901, 46.261436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444359, 35.384045, 45.856827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375038, 34.995964, 45.789085>,  <39.333447, 34.763115, 45.748440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375038, 34.995964, 45.789085>,  <39.444359, 35.384045, 45.856827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375038, 34.995964, 45.789085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193822, 0.134993, -0.971705,
		0.965608, -0.201225, 0.164651,
		-0.173305, -0.970199, -0.169352,
		39.323048, 34.704903, 45.738281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986069, 35.212013, 45.472778>,  <39.444359, 35.384045, 45.856827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986069, 35.212013, 45.472778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687946, 34.952423, 45.411659>,  <39.509071, 34.796669, 45.374989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.687946, 34.952423, 45.411659>,  <39.986069, 35.212013, 45.472778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687946, 34.952423, 45.411659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140226, 0.071469, -0.987537,
		0.651809, -0.757444, 0.037737,
		-0.745307, -0.648977, -0.152798,
		39.464355, 34.757729, 45.365818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183212, 34.822693, 44.985901>,  <39.986069, 35.212013, 45.472778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183212, 34.822693, 44.985901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787281, 34.773598, 44.957134>,  <39.549721, 34.744141, 44.939873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787281, 34.773598, 44.957134>,  <40.183212, 34.822693, 44.985901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787281, 34.773598, 44.957134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061640, 0.085586, -0.994422,
		0.128218, -0.988741, -0.077150,
		-0.989829, -0.122748, -0.071919,
		39.490334, 34.736774, 44.935558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098106, 34.263577, 44.496967>,  <40.183212, 34.822693, 44.985901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098106, 34.263577, 44.496967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763020, 34.480595, 44.521862>,  <39.561966, 34.610806, 44.536800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763020, 34.480595, 44.521862>,  <40.098106, 34.263577, 44.496967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763020, 34.480595, 44.521862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105752, -0.049355, -0.993167,
		-0.535762, -0.838578, 0.098721,
		-0.837721, 0.542541, 0.062239,
		39.511703, 34.643356, 44.540535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578434, 33.903805, 44.107132>,  <40.098106, 34.263577, 44.496967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578434, 33.903805, 44.107132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439083, 34.276886, 44.144444>,  <39.355473, 34.500732, 44.166832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.439083, 34.276886, 44.144444>,  <39.578434, 33.903805, 44.107132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439083, 34.276886, 44.144444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395339, -0.055972, -0.916828,
		-0.849904, -0.356284, 0.388232,
		-0.348381, 0.932700, 0.093282,
		39.334568, 34.556694, 44.172428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918110, 33.774899, 43.720173>,  <39.578434, 33.903805, 44.107132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918110, 33.774899, 43.720173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002735, 34.164883, 43.747597>,  <39.053509, 34.398872, 43.764053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002735, 34.164883, 43.747597>,  <38.918110, 33.774899, 43.720173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002735, 34.164883, 43.747597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415849, 0.153278, -0.896424,
		-0.884484, 0.161138, 0.437862,
		0.211562, 0.974956, 0.068563,
		39.066204, 34.457371, 43.768166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302177, 34.143913, 43.600922>,  <38.918110, 33.774899, 43.720173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302177, 34.143913, 43.600922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610878, 34.381023, 43.508823>,  <38.796101, 34.523289, 43.453564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610878, 34.381023, 43.508823>,  <38.302177, 34.143913, 43.600922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610878, 34.381023, 43.508823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380265, 0.139973, -0.914224,
		-0.509700, 0.793112, 0.333436,
		0.771754, 0.592774, -0.230248,
		38.842403, 34.558857, 43.439751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998585, 34.486660, 43.122219>,  <38.302177, 34.143913, 43.600922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998585, 34.486660, 43.122219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377014, 34.610592, 43.084385>,  <38.604073, 34.684952, 43.061684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377014, 34.610592, 43.084385>,  <37.998585, 34.486660, 43.122219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377014, 34.610592, 43.084385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147649, 0.152524, -0.977208,
		-0.288338, 0.938480, 0.190045,
		0.946077, 0.309827, -0.094587,
		38.660835, 34.703541, 43.056007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917484, 35.038311, 42.744541>,  <37.998585, 34.486660, 43.122219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917484, 35.038311, 42.744541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289082, 34.899353, 42.693481>,  <38.512039, 34.815979, 42.662846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289082, 34.899353, 42.693481>,  <37.917484, 35.038311, 42.744541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289082, 34.899353, 42.693481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117682, 0.049732, -0.991805,
		0.350900, 0.936398, 0.005318,
		0.928989, -0.347399, -0.127648,
		38.567780, 34.795132, 42.655186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075073, 35.452427, 42.306656>,  <37.917484, 35.038311, 42.744541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075073, 35.452427, 42.306656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361633, 35.175282, 42.273880>,  <38.533569, 35.008995, 42.254215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361633, 35.175282, 42.273880>,  <38.075073, 35.452427, 42.306656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361633, 35.175282, 42.273880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102080, 0.220267, -0.970083,
		0.690179, 0.686606, 0.228527,
		0.716402, -0.692860, -0.081935,
		38.576553, 34.967422, 42.249298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692112, 35.796745, 42.042248>,  <38.075073, 35.452427, 42.306656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692112, 35.796745, 42.042248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682362, 35.409271, 41.943409>,  <38.676510, 35.176788, 41.884106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682362, 35.409271, 41.943409>,  <38.692112, 35.796745, 42.042248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682362, 35.409271, 41.943409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010921, 0.247413, -0.968849,
		0.999643, -0.020917, -0.016610,
		-0.024375, -0.968684, -0.247096,
		38.675049, 35.118668, 41.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151737, 35.728085, 41.413727>,  <38.692112, 35.796745, 42.042248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151737, 35.728085, 41.413727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945213, 35.385605, 41.406326>,  <38.821297, 35.180115, 41.401886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945213, 35.385605, 41.406326>,  <39.151737, 35.728085, 41.413727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945213, 35.385605, 41.406326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058310, 0.056698, -0.996687,
		0.854414, -0.513522, -0.079198,
		-0.516311, -0.856201, -0.018500,
		38.790321, 35.128746, 41.400776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.496813, 43.480644, 36.287418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815403, 43.368568, 36.073082>,  <29.006557, 43.301323, 35.944481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815403, 43.368568, 36.073082>,  <28.496813, 43.480644, 36.287418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815403, 43.368568, 36.073082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506648, -0.792939, -0.338459,
		-0.330054, 0.541055, -0.773514,
		0.796474, -0.280190, -0.535838,
		29.054346, 43.284512, 35.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271473, 43.374390, 35.531864>,  <28.496813, 43.480644, 36.287418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271473, 43.374390, 35.531864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597858, 43.148190, 35.579899>,  <28.793690, 43.012470, 35.608719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597858, 43.148190, 35.579899>,  <28.271473, 43.374390, 35.531864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597858, 43.148190, 35.579899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463712, -0.764269, -0.448178,
		0.345221, 0.310011, -0.885842,
		0.815962, -0.565496, 0.120086,
		28.842648, 42.978542, 35.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288109, 42.941410, 35.013741>,  <28.271473, 43.374390, 35.531864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288109, 42.941410, 35.013741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559294, 42.741016, 35.228920>,  <28.722004, 42.620781, 35.358028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559294, 42.741016, 35.228920>,  <28.288109, 42.941410, 35.013741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559294, 42.741016, 35.228920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317250, -0.859547, -0.400665,
		0.663116, 0.100972, -0.741675,
		0.677960, -0.500984, 0.537946,
		28.762682, 42.590721, 35.390305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513739, 42.486633, 34.583870>,  <28.288109, 42.941410, 35.013741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513739, 42.486633, 34.583870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626665, 42.338566, 34.937881>,  <28.694422, 42.249725, 35.150288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626665, 42.338566, 34.937881>,  <28.513739, 42.486633, 34.583870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626665, 42.338566, 34.937881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250373, -0.919012, -0.304518,
		0.926073, -0.135616, -0.352132,
		0.282316, -0.370170, 0.885027,
		28.711359, 42.227516, 35.203388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978006, 41.812138, 34.452076>,  <28.513739, 42.486633, 34.583870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978006, 41.812138, 34.452076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789402, 41.813503, 34.804817>,  <28.676239, 41.814323, 35.016460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789402, 41.813503, 34.804817>,  <28.978006, 41.812138, 34.452076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789402, 41.813503, 34.804817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385695, -0.900076, -0.202737,
		0.793042, -0.435719, 0.425714,
		-0.471512, 0.003417, 0.881853,
		28.647949, 41.814529, 35.069374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031569, 41.086876, 34.617718>,  <28.978006, 41.812138, 34.452076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031569, 41.086876, 34.617718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751705, 41.240746, 34.858551>,  <28.583786, 41.333069, 35.003052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751705, 41.240746, 34.858551>,  <29.031569, 41.086876, 34.617718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751705, 41.240746, 34.858551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485540, -0.874196, -0.005697,
		0.524144, -0.296320, 0.798415,
		-0.699660, 0.384677, 0.602080,
		28.541807, 41.356148, 35.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943914, 40.630795, 35.144676>,  <29.031569, 41.086876, 34.617718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943914, 40.630795, 35.144676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618931, 40.863857, 35.152962>,  <28.423941, 41.003693, 35.157932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618931, 40.863857, 35.152962>,  <28.943914, 40.630795, 35.144676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618931, 40.863857, 35.152962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572984, -0.804530, 0.156269,
		0.107712, 0.115096, 0.987497,
		-0.812457, 0.582652, 0.020710,
		28.375193, 41.038654, 35.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566343, 40.343616, 35.752174>,  <28.943914, 40.630795, 35.144676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566343, 40.343616, 35.752174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298964, 40.547321, 35.535351>,  <28.138535, 40.669544, 35.405258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298964, 40.547321, 35.535351>,  <28.566343, 40.343616, 35.752174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298964, 40.547321, 35.535351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671012, -0.727291, 0.144188,
		-0.320805, 0.460111, 0.827878,
		-0.668451, 0.509260, -0.542059,
		28.098429, 40.700100, 35.372734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050041, 40.416504, 36.161606>,  <28.566343, 40.343616, 35.752174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050041, 40.416504, 36.161606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922348, 40.460869, 35.785141>,  <27.845732, 40.487488, 35.559261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922348, 40.460869, 35.785141>,  <28.050041, 40.416504, 36.161606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922348, 40.460869, 35.785141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677227, -0.721406, 0.144698,
		-0.662912, 0.683574, 0.305409,
		-0.319235, 0.110909, -0.941163,
		27.826578, 40.494141, 35.502792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262053, 40.297928, 36.190189>,  <28.050041, 40.416504, 36.161606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262053, 40.297928, 36.190189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.385231, 40.235455, 35.814793>,  <27.459139, 40.197971, 35.589554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.385231, 40.235455, 35.814793>,  <27.262053, 40.297928, 36.190189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385231, 40.235455, 35.814793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530726, -0.846893, -0.033205,
		-0.789619, 0.508309, -0.343690,
		0.307947, -0.156186, -0.938496,
		27.477615, 40.188599, 35.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689493, 39.875839, 36.057190>,  <27.262053, 40.297928, 36.190189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689493, 39.875839, 36.057190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938486, 39.868671, 35.744221>,  <27.087883, 39.864372, 35.556438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938486, 39.868671, 35.744221>,  <26.689493, 39.875839, 36.057190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938486, 39.868671, 35.744221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467780, -0.810027, -0.353608,
		-0.627452, 0.586119, -0.512609,
		0.622484, -0.017916, -0.782428,
		27.125231, 39.863297, 35.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316029, 39.854389, 35.416466>,  <26.689493, 39.875839, 36.057190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316029, 39.854389, 35.416466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667854, 39.672409, 35.360779>,  <26.878950, 39.563221, 35.327366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667854, 39.672409, 35.360779>,  <26.316029, 39.854389, 35.416466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667854, 39.672409, 35.360779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475740, -0.844706, -0.245241,
		-0.006023, 0.281936, -0.959414,
		0.879566, -0.454954, -0.139216,
		26.931725, 39.535923, 35.319016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247032, 39.477825, 34.763500>,  <26.316029, 39.854389, 35.416466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247032, 39.477825, 34.763500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533773, 39.304478, 34.981972>,  <26.705818, 39.200470, 35.113056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.533773, 39.304478, 34.981972>,  <26.247032, 39.477825, 34.763500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533773, 39.304478, 34.981972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323487, -0.900676, -0.290068,
		0.617639, 0.031254, -0.785841,
		0.716854, -0.433367, 0.546182,
		26.748829, 39.174469, 35.145824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429611, 38.954773, 34.326488>,  <26.247032, 39.477825, 34.763500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429611, 38.954773, 34.326488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559139, 38.841019, 34.687435>,  <26.636856, 38.772766, 34.904003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559139, 38.841019, 34.687435>,  <26.429611, 38.954773, 34.326488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559139, 38.841019, 34.687435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247563, -0.945995, -0.209299,
		0.913156, -0.155618, -0.376734,
		0.323818, -0.284388, 0.902367,
		26.656284, 38.755703, 34.958145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591774, 38.360306, 34.147064>,  <26.429611, 38.954773, 34.326488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591774, 38.360306, 34.147064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603775, 38.346153, 34.546635>,  <26.610975, 38.337662, 34.786377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603775, 38.346153, 34.546635>,  <26.591774, 38.360306, 34.147064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603775, 38.346153, 34.546635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186508, -0.982020, -0.029180,
		0.981995, -0.185432, -0.036063,
		0.030004, -0.035381, 0.998923,
		26.612776, 38.335541, 34.846313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169956, 37.778698, 34.467674>,  <26.591774, 38.360306, 34.147064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169956, 37.778698, 34.467674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870436, 37.855202, 34.721516>,  <26.690723, 37.901104, 34.873821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870436, 37.855202, 34.721516>,  <27.169956, 37.778698, 34.467674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870436, 37.855202, 34.721516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230341, -0.972874, 0.021421,
		0.621483, -0.130134, 0.772544,
		-0.748800, 0.191261, 0.634600,
		26.645796, 37.912579, 34.911896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235249, 37.357838, 34.988983>,  <27.169956, 37.778698, 34.467674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235249, 37.357838, 34.988983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.848013, 37.455872, 35.009911>,  <26.615671, 37.514690, 35.022469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.848013, 37.455872, 35.009911>,  <27.235249, 37.357838, 34.988983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848013, 37.455872, 35.009911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244939, -0.969494, 0.009262,
		0.052993, -0.003848, 0.998587,
		-0.968089, 0.245084, 0.052319,
		26.557587, 37.529396, 35.025608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944132, 36.809891, 35.491226>,  <27.235249, 37.357838, 34.988983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944132, 36.809891, 35.491226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625669, 36.968987, 35.308823>,  <26.434593, 37.064445, 35.199383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.625669, 36.968987, 35.308823>,  <26.944132, 36.809891, 35.491226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625669, 36.968987, 35.308823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327001, -0.916902, -0.228826,
		-0.509125, -0.033067, 0.860057,
		-0.796154, 0.397741, -0.456005,
		26.386824, 37.088310, 35.172020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478447, 36.420216, 35.780319>,  <26.944132, 36.809891, 35.491226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478447, 36.420216, 35.780319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289701, 36.590298, 35.471375>,  <26.176455, 36.692345, 35.286007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289701, 36.590298, 35.471375>,  <26.478447, 36.420216, 35.780319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289701, 36.590298, 35.471375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188333, -0.904415, -0.382838,
		-0.861322, -0.035185, 0.506840,
		-0.471864, 0.425201, -0.772365,
		26.148144, 36.717857, 35.239666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076790, 36.043415, 35.640842>,  <26.478447, 36.420216, 35.780319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076790, 36.043415, 35.640842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411701, 35.873066, 35.503670>,  <27.612648, 35.770855, 35.421368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411701, 35.873066, 35.503670>,  <27.076790, 36.043415, 35.640842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411701, 35.873066, 35.503670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536448, 0.518480, 0.665884,
		-0.105781, -0.741493, 0.662570,
		0.837277, -0.425873, -0.342927,
		27.662884, 35.745304, 35.400791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429256, 35.686981, 36.239262>,  <27.076790, 36.043415, 35.640842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429256, 35.686981, 36.239262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701426, 35.754448, 35.954002>,  <27.864727, 35.794930, 35.782848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701426, 35.754448, 35.954002>,  <27.429256, 35.686981, 36.239262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701426, 35.754448, 35.954002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517641, 0.578217, 0.630645,
		0.518724, -0.798258, 0.306120,
		0.680421, 0.168670, -0.713146,
		27.905552, 35.805050, 35.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120029, 35.617458, 36.609493>,  <27.429256, 35.686981, 36.239262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120029, 35.617458, 36.609493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194977, 35.822174, 36.274120>,  <28.239944, 35.945004, 36.072899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.194977, 35.822174, 36.274120>,  <28.120029, 35.617458, 36.609493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194977, 35.822174, 36.274120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635260, 0.587892, 0.500826,
		0.749225, -0.626458, -0.214970,
		0.187367, 0.511793, -0.838428,
		28.251186, 35.975712, 36.022591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848248, 35.834560, 36.620789>,  <28.120029, 35.617458, 36.609493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848248, 35.834560, 36.620789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672779, 36.075542, 36.354073>,  <28.567497, 36.220131, 36.194042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.672779, 36.075542, 36.354073>,  <28.848248, 35.834560, 36.620789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672779, 36.075542, 36.354073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566401, 0.761419, 0.315327,
		0.697679, -0.239346, -0.675246,
		-0.438673, 0.602457, -0.666792,
		28.541178, 36.256279, 36.154034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439562, 36.174290, 36.278805>,  <28.848248, 35.834560, 36.620789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439562, 36.174290, 36.278805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105406, 36.391037, 36.241917>,  <28.904911, 36.521084, 36.219784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105406, 36.391037, 36.241917>,  <29.439562, 36.174290, 36.278805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105406, 36.391037, 36.241917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468645, 0.789840, 0.395631,
		0.287216, 0.287289, -0.913768,
		-0.835391, 0.541865, -0.092218,
		28.854788, 36.553596, 36.214252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703215, 36.854149, 36.143730>,  <29.439562, 36.174290, 36.278805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703215, 36.854149, 36.143730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320488, 36.895130, 36.252548>,  <29.090853, 36.919720, 36.317841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320488, 36.895130, 36.252548>,  <29.703215, 36.854149, 36.143730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320488, 36.895130, 36.252548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210060, 0.890578, 0.403418,
		-0.200949, 0.443142, -0.873638,
		-0.956814, 0.102450, 0.272048,
		29.033443, 36.925865, 36.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564955, 37.506538, 35.864243>,  <29.703215, 36.854149, 36.143730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564955, 37.506538, 35.864243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313211, 37.432869, 36.166233>,  <29.162165, 37.388668, 36.347427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313211, 37.432869, 36.166233>,  <29.564955, 37.506538, 35.864243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313211, 37.432869, 36.166233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059112, 0.957349, 0.282822,
		-0.774864, 0.222624, -0.591628,
		-0.629358, -0.184177, 0.754975,
		29.124405, 37.377617, 36.392727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172235, 38.097942, 35.935753>,  <29.564955, 37.506538, 35.864243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172235, 38.097942, 35.935753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118160, 37.912788, 36.286171>,  <29.085716, 37.801697, 36.496422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118160, 37.912788, 36.286171>,  <29.172235, 38.097942, 35.935753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118160, 37.912788, 36.286171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026346, 0.882172, 0.470189,
		-0.990470, 0.086644, -0.107063,
		-0.135187, -0.462887, 0.876048,
		29.077604, 37.773922, 36.548985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641874, 38.484146, 36.194622>,  <29.172235, 38.097942, 35.935753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641874, 38.484146, 36.194622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833015, 38.307014, 36.498085>,  <28.947701, 38.200737, 36.680164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833015, 38.307014, 36.498085>,  <28.641874, 38.484146, 36.194622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833015, 38.307014, 36.498085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064206, 0.878939, 0.472593,
		-0.876089, -0.177121, 0.448437,
		0.477855, -0.442826, 0.758657,
		28.976372, 38.174168, 36.725681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400339, 38.879417, 36.775047>,  <28.641874, 38.484146, 36.194622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400339, 38.879417, 36.775047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665464, 38.653694, 36.971916>,  <28.824539, 38.518261, 37.090038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665464, 38.653694, 36.971916>,  <28.400339, 38.879417, 36.775047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665464, 38.653694, 36.971916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396518, 0.822091, 0.408584,
		-0.635178, -0.075659, 0.768651,
		0.662814, -0.564307, 0.492174,
		28.864309, 38.484402, 37.119568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299408, 39.008316, 37.474430>,  <28.400339, 38.879417, 36.775047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299408, 39.008316, 37.474430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682682, 38.912971, 37.411095>,  <28.912645, 38.855766, 37.373093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.682682, 38.912971, 37.411095>,  <28.299408, 39.008316, 37.474430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682682, 38.912971, 37.411095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285989, 0.816519, 0.501505,
		0.009748, -0.525816, 0.850542,
		0.958183, -0.238357, -0.158337,
		28.970137, 38.841465, 37.363594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613298, 39.345768, 37.900467>,  <28.299408, 39.008316, 37.474430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613298, 39.345768, 37.900467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928804, 39.230637, 37.683208>,  <29.118107, 39.161556, 37.552853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928804, 39.230637, 37.683208>,  <28.613298, 39.345768, 37.900467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928804, 39.230637, 37.683208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554580, 0.714326, 0.426824,
		0.265127, -0.637880, 0.723061,
		0.788763, -0.287833, -0.543143,
		29.165434, 39.144287, 37.520264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251451, 39.044395, 38.339039>,  <28.613298, 39.345768, 37.900467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251451, 39.044395, 38.339039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.380960, 39.206562, 37.997089>,  <29.458666, 39.303860, 37.791920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.380960, 39.206562, 37.997089>,  <29.251451, 39.044395, 38.339039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380960, 39.206562, 37.997089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553839, 0.651354, 0.518653,
		0.767095, -0.641388, -0.013644,
		0.323771, 0.405412, -0.854876,
		29.478092, 39.328186, 37.740627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011747, 39.208408, 38.434093>,  <29.251451, 39.044395, 38.339039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011747, 39.208408, 38.434093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859957, 39.431763, 38.139015>,  <29.768883, 39.565777, 37.961967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859957, 39.431763, 38.139015>,  <30.011747, 39.208408, 38.434093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859957, 39.431763, 38.139015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383268, 0.820581, 0.423972,
		0.842083, -0.121849, -0.525403,
		-0.379475, 0.558390, -0.737699,
		29.746115, 39.599281, 37.917706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595451, 39.708790, 38.223049>,  <30.011747, 39.208408, 38.434093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595451, 39.708790, 38.223049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266911, 39.895226, 38.091507>,  <30.069786, 40.007088, 38.012581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266911, 39.895226, 38.091507>,  <30.595451, 39.708790, 38.223049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266911, 39.895226, 38.091507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427458, 0.884654, 0.186194,
		0.377702, 0.012361, -0.925845,
		-0.821353, 0.466085, -0.328852,
		30.020504, 40.035049, 37.992851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784330, 40.215508, 37.877480>,  <30.595451, 39.708790, 38.223049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784330, 40.215508, 37.877480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400379, 40.319733, 37.918930>,  <30.170008, 40.382267, 37.943802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400379, 40.319733, 37.918930>,  <30.784330, 40.215508, 37.877480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400379, 40.319733, 37.918930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275059, 0.946767, 0.167254,
		-0.054533, 0.189048, -0.980452,
		-0.959879, 0.260562, 0.103629,
		30.112415, 40.397900, 37.950020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748539, 40.736942, 37.429173>,  <30.784330, 40.215508, 37.877480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748539, 40.736942, 37.429173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466944, 40.765869, 37.711781>,  <30.297987, 40.783226, 37.881344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466944, 40.765869, 37.711781>,  <30.748539, 40.736942, 37.429173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466944, 40.765869, 37.711781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239683, 0.960632, 0.140496,
		-0.668545, 0.268248, -0.693607,
		-0.703989, 0.072318, 0.706519,
		30.255747, 40.787563, 37.923737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602112, 41.384251, 37.377083>,  <30.748539, 40.736942, 37.429173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602112, 41.384251, 37.377083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476114, 41.265194, 37.737568>,  <30.400517, 41.193760, 37.953861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.476114, 41.265194, 37.737568>,  <30.602112, 41.384251, 37.377083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476114, 41.265194, 37.737568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328474, 0.856684, 0.397741,
		-0.890440, 0.421312, -0.172084,
		-0.314994, -0.297640, 0.901215,
		30.381617, 41.175903, 38.007931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294613, 41.962284, 37.613400>,  <30.602112, 41.384251, 37.377083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294613, 41.962284, 37.613400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388502, 41.725304, 37.921661>,  <30.444836, 41.583115, 38.106617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.388502, 41.725304, 37.921661>,  <30.294613, 41.962284, 37.613400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388502, 41.725304, 37.921661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460681, 0.765915, 0.448494,
		-0.855966, 0.249752, 0.452711,
		0.234725, -0.592451, 0.770653,
		30.458920, 41.547569, 38.152859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279121, 42.433739, 38.152946>,  <30.294613, 41.962284, 37.613400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279121, 42.433739, 38.152946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513811, 42.141872, 38.293423>,  <30.654625, 41.966751, 38.377708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513811, 42.141872, 38.293423>,  <30.279121, 42.433739, 38.152946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513811, 42.141872, 38.293423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482133, 0.663210, 0.572452,
		-0.650615, -0.166550, 0.740919,
		0.586727, -0.729667, 0.351195,
		30.689829, 41.922974, 38.398781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286385, 42.576908, 38.876041>,  <30.279121, 42.433739, 38.152946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286385, 42.576908, 38.876041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.595255, 42.342251, 38.778393>,  <30.780577, 42.201458, 38.719803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.595255, 42.342251, 38.778393>,  <30.286385, 42.576908, 38.876041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595255, 42.342251, 38.778393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621712, 0.618209, 0.480929,
		-0.131213, -0.523136, 0.842088,
		0.772177, -0.586640, -0.244123,
		30.826908, 42.166260, 38.705154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645155, 42.239269, 39.483433>,  <30.286385, 42.576908, 38.876041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645155, 42.239269, 39.483433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915867, 42.265263, 39.190109>,  <31.078295, 42.280857, 39.014114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915867, 42.265263, 39.190109>,  <30.645155, 42.239269, 39.483433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915867, 42.265263, 39.190109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585339, 0.556614, 0.589541,
		0.446481, -0.828225, 0.338669,
		0.676781, 0.064983, -0.733310,
		31.118900, 42.284760, 38.970116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220783, 42.000496, 39.814583>,  <30.645155, 42.239269, 39.483433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220783, 42.000496, 39.814583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335627, 42.229820, 39.507629>,  <31.404533, 42.367416, 39.323456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335627, 42.229820, 39.507629>,  <31.220783, 42.000496, 39.814583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335627, 42.229820, 39.507629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706056, 0.414729, 0.574008,
		0.647343, -0.706621, -0.285717,
		0.287110, 0.573312, -0.767386,
		31.421761, 42.401814, 39.277412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.842617, 31.138885, 46.098629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610050, 30.817400, 46.149216>,  <38.470509, 30.624508, 46.179569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610050, 30.817400, 46.149216>,  <38.842617, 31.138885, 46.098629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610050, 30.817400, 46.149216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088414, 0.092106, 0.991816,
		-0.808785, 0.587844, 0.017507,
		-0.581421, -0.803714, 0.126468,
		38.435623, 30.576286, 46.187157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376095, 31.465477, 46.559933>,  <38.842617, 31.138885, 46.098629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376095, 31.465477, 46.559933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334770, 31.068520, 46.586716>,  <38.309975, 30.830345, 46.602787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334770, 31.068520, 46.586716>,  <38.376095, 31.465477, 46.559933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334770, 31.068520, 46.586716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292972, 0.033972, 0.955517,
		-0.950523, 0.118333, 0.287234,
		-0.103311, -0.992393, 0.066959,
		38.303776, 30.770802, 46.606804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216713, 31.429243, 47.303463>,  <38.376095, 31.465477, 46.559933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216713, 31.429243, 47.303463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254417, 31.050104, 47.181679>,  <38.277039, 30.822620, 47.108608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254417, 31.050104, 47.181679>,  <38.216713, 31.429243, 47.303463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254417, 31.050104, 47.181679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161992, -0.287144, 0.944091,
		-0.982280, -0.138311, 0.126477,
		0.094261, -0.947849, -0.304461,
		38.282696, 30.765749, 47.090340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854389, 31.008049, 47.824387>,  <38.216713, 31.429243, 47.303463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854389, 31.008049, 47.824387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127174, 30.774776, 47.647831>,  <38.290844, 30.634813, 47.541897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127174, 30.774776, 47.647831>,  <37.854389, 31.008049, 47.824387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127174, 30.774776, 47.647831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284909, -0.343999, 0.894702,
		-0.673611, -0.735910, -0.068441,
		0.681964, -0.583182, -0.441389,
		38.331764, 30.599821, 47.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721645, 30.270498, 48.014500>,  <37.854389, 31.008049, 47.824387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721645, 30.270498, 48.014500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106880, 30.308828, 47.913879>,  <38.338020, 30.331827, 47.853508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106880, 30.308828, 47.913879>,  <37.721645, 30.270498, 48.014500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106880, 30.308828, 47.913879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267174, -0.226313, 0.936697,
		0.032830, -0.969330, -0.243561,
		0.963089, 0.095825, -0.251550,
		38.395805, 30.337576, 47.838413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110142, 29.820675, 48.416950>,  <37.721645, 30.270498, 48.014500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110142, 29.820675, 48.416950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400188, 30.060223, 48.280975>,  <38.574219, 30.203951, 48.199390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400188, 30.060223, 48.280975>,  <38.110142, 29.820675, 48.416950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400188, 30.060223, 48.280975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505773, -0.128161, 0.853093,
		0.467325, -0.790525, -0.395824,
		0.725121, 0.598869, -0.339933,
		38.617725, 30.239883, 48.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616421, 29.439772, 48.501415>,  <38.110142, 29.820675, 48.416950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616421, 29.439772, 48.501415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.785423, 29.800295, 48.463192>,  <38.886826, 30.016609, 48.440258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.785423, 29.800295, 48.463192>,  <38.616421, 29.439772, 48.501415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785423, 29.800295, 48.463192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495921, -0.141634, 0.856739,
		0.758653, -0.409366, -0.506819,
		0.422503, 0.901310, -0.095562,
		38.912174, 30.070688, 48.434525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360317, 29.318058, 48.579613>,  <38.616421, 29.439772, 48.501415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360317, 29.318058, 48.579613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274868, 29.703539, 48.643669>,  <39.223598, 29.934828, 48.682102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274868, 29.703539, 48.643669>,  <39.360317, 29.318058, 48.579613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274868, 29.703539, 48.643669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286569, -0.094894, 0.953349,
		0.933940, 0.249547, -0.255896,
		-0.213623, 0.963702, 0.160137,
		39.210781, 29.992649, 48.691711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904434, 29.609493, 49.066383>,  <39.360317, 29.318058, 48.579613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904434, 29.609493, 49.066383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573952, 29.833464, 49.091236>,  <39.375660, 29.967846, 49.106148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573952, 29.833464, 49.091236>,  <39.904434, 29.609493, 49.066383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573952, 29.833464, 49.091236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104504, 0.043951, 0.993553,
		0.553584, 0.827377, -0.094827,
		-0.826210, 0.559925, 0.062134,
		39.326088, 30.001442, 49.109875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046959, 30.052940, 49.615341>,  <39.904434, 29.609493, 49.066383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046959, 30.052940, 49.615341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649143, 30.037050, 49.576725>,  <39.410454, 30.027515, 49.553555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.649143, 30.037050, 49.576725>,  <40.046959, 30.052940, 49.615341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649143, 30.037050, 49.576725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087616, -0.185163, 0.978794,
		-0.056758, 0.981905, 0.180670,
		-0.994536, -0.039725, -0.096541,
		39.350784, 30.025133, 49.547764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837807, 30.382977, 50.181145>,  <40.046959, 30.052940, 49.615341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837807, 30.382977, 50.181145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497627, 30.210411, 50.060730>,  <39.293522, 30.106873, 49.988480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.497627, 30.210411, 50.060730>,  <39.837807, 30.382977, 50.181145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497627, 30.210411, 50.060730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352214, 0.041895, 0.934981,
		-0.390751, 0.901181, -0.187579,
		-0.850446, -0.431413, -0.301038,
		39.242493, 30.080988, 49.970417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289997, 30.810209, 50.510418>,  <39.837807, 30.382977, 50.181145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289997, 30.810209, 50.510418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.164864, 30.443703, 50.410347>,  <39.089783, 30.223799, 50.350304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.164864, 30.443703, 50.410347>,  <39.289997, 30.810209, 50.510418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164864, 30.443703, 50.410347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365641, -0.126923, 0.922061,
		-0.876607, 0.379930, -0.295319,
		-0.312836, -0.916266, -0.250180,
		39.071014, 30.168823, 50.335293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671734, 30.747456, 50.852516>,  <39.289997, 30.810209, 50.510418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671734, 30.747456, 50.852516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826237, 30.387922, 50.769665>,  <38.918938, 30.172203, 50.719955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826237, 30.387922, 50.769665>,  <38.671734, 30.747456, 50.852516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826237, 30.387922, 50.769665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502458, -0.393353, 0.769942,
		-0.773523, -0.193325, -0.603562,
		0.386262, -0.898832, -0.207130,
		38.942116, 30.118273, 50.707527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760735, 31.497906, 50.906773>,  <38.671734, 30.747456, 50.852516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760735, 31.497906, 50.906773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427967, 31.572340, 50.697666>,  <38.228306, 31.617001, 50.572201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427967, 31.572340, 50.697666>,  <38.760735, 31.497906, 50.906773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427967, 31.572340, 50.697666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166349, -0.982399, -0.084972,
		-0.529380, 0.016272, 0.848229,
		-0.831916, 0.186085, -0.522770,
		38.178391, 31.628166, 50.540836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868797, 32.134174, 51.131561>,  <38.760735, 31.497906, 50.906773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868797, 32.134174, 51.131561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939198, 32.459488, 51.353405>,  <38.981438, 32.654678, 51.486511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.939198, 32.459488, 51.353405>,  <38.868797, 32.134174, 51.131561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939198, 32.459488, 51.353405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181162, 0.527016, -0.830322,
		-0.967576, 0.246612, -0.054581,
		0.176003, 0.813287, 0.554605,
		38.991997, 32.703476, 51.519787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352798, 32.571754, 50.886440>,  <38.868797, 32.134174, 51.131561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352798, 32.571754, 50.886440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633678, 32.791363, 51.067760>,  <38.802208, 32.923130, 51.176552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633678, 32.791363, 51.067760>,  <38.352798, 32.571754, 50.886440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633678, 32.791363, 51.067760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156143, 0.739934, -0.654307,
		-0.694644, 0.388677, 0.605311,
		0.702204, 0.549025, 0.453301,
		38.844341, 32.956070, 51.203751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134312, 33.260933, 50.926735>,  <38.352798, 32.571754, 50.886440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134312, 33.260933, 50.926735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524025, 33.320202, 50.994633>,  <38.757854, 33.355762, 51.035370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.524025, 33.320202, 50.994633>,  <38.134312, 33.260933, 50.926735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524025, 33.320202, 50.994633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020816, 0.690933, -0.722619,
		-0.224353, 0.707570, 0.670082,
		0.974286, 0.148174, 0.169742,
		38.816311, 33.364655, 51.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350365, 33.970287, 51.069473>,  <38.134312, 33.260933, 50.926735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350365, 33.970287, 51.069473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673489, 33.793476, 50.913494>,  <38.867363, 33.687389, 50.819908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673489, 33.793476, 50.913494>,  <38.350365, 33.970287, 51.069473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673489, 33.793476, 50.913494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081248, 0.571736, -0.816405,
		0.583821, 0.691180, 0.425939,
		0.807807, -0.442027, -0.389949,
		38.915833, 33.660870, 50.796509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622414, 34.496239, 50.667152>,  <38.350365, 33.970287, 51.069473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622414, 34.496239, 50.667152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829128, 34.182697, 50.529453>,  <38.953156, 33.994572, 50.446835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829128, 34.182697, 50.529453>,  <38.622414, 34.496239, 50.667152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829128, 34.182697, 50.529453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062285, 0.435468, -0.898047,
		0.853845, 0.442657, 0.273866,
		0.516787, -0.783851, -0.344252,
		38.984165, 33.947540, 50.426178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120003, 34.771797, 50.259819>,  <38.622414, 34.496239, 50.667152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120003, 34.771797, 50.259819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136307, 34.390766, 50.139202>,  <39.146088, 34.162148, 50.066830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136307, 34.390766, 50.139202>,  <39.120003, 34.771797, 50.259819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136307, 34.390766, 50.139202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, 0.303893, -0.935940,
		0.983195, -0.015515, 0.181896,
		0.040756, -0.952580, -0.301547,
		39.148533, 34.104992, 50.048737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726990, 34.638371, 49.847416>,  <39.120003, 34.771797, 50.259819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726990, 34.638371, 49.847416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486164, 34.340847, 49.731308>,  <39.341667, 34.162331, 49.661644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486164, 34.340847, 49.731308>,  <39.726990, 34.638371, 49.847416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486164, 34.340847, 49.731308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294543, 0.131007, -0.946616,
		0.742133, -0.655423, 0.140210,
		-0.602065, -0.743813, -0.290275,
		39.305546, 34.117702, 49.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112534, 34.183479, 49.407101>,  <39.726990, 34.638371, 49.847416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112534, 34.183479, 49.407101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726784, 34.104393, 49.336796>,  <39.495335, 34.056942, 49.294613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726784, 34.104393, 49.336796>,  <40.112534, 34.183479, 49.407101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726784, 34.104393, 49.336796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109370, 0.306980, -0.945411,
		0.240878, -0.930952, -0.274419,
		-0.964373, -0.197715, -0.175763,
		39.437473, 34.045078, 49.284065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152798, 33.816284, 48.841743>,  <40.112534, 34.183479, 49.407101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152798, 33.816284, 48.841743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.765026, 33.913803, 48.852806>,  <39.532364, 33.972313, 48.859444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.765026, 33.913803, 48.852806>,  <40.152798, 33.816284, 48.841743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765026, 33.913803, 48.852806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009795, 0.074161, -0.997198,
		-0.245167, -0.966986, -0.069506,
		-0.969432, 0.243799, 0.027654,
		39.474197, 33.986942, 48.861103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837173, 33.387470, 48.421486>,  <40.152798, 33.816284, 48.841743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837173, 33.387470, 48.421486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576458, 33.690727, 48.429436>,  <39.420029, 33.872681, 48.434204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576458, 33.690727, 48.429436>,  <39.837173, 33.387470, 48.421486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576458, 33.690727, 48.429436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013847, 0.014302, -0.999802,
		-0.758272, -0.651937, 0.001176,
		-0.651791, 0.758138, 0.019872,
		39.380920, 33.918167, 48.435398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516281, 33.242702, 47.819500>,  <39.837173, 33.387470, 48.421486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516281, 33.242702, 47.819500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400311, 33.613548, 47.914501>,  <39.330727, 33.836056, 47.971500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400311, 33.613548, 47.914501>,  <39.516281, 33.242702, 47.819500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400311, 33.613548, 47.914501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186841, 0.188557, -0.964125,
		-0.938634, -0.323901, 0.118555,
		-0.289927, 0.927111, 0.237504,
		39.313332, 33.891682, 47.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898861, 33.287827, 47.465965>,  <39.516281, 33.242702, 47.819500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898861, 33.287827, 47.465965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022068, 33.661049, 47.540306>,  <39.095993, 33.884983, 47.584911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022068, 33.661049, 47.540306>,  <38.898861, 33.287827, 47.465965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022068, 33.661049, 47.540306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061315, 0.214412, -0.974817,
		-0.949404, 0.288862, 0.123252,
		0.308014, 0.933052, 0.185852,
		39.114471, 33.940964, 47.596062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376671, 33.766163, 47.225586>,  <38.898861, 33.287827, 47.465965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376671, 33.766163, 47.225586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723820, 33.964855, 47.228481>,  <38.932110, 34.084068, 47.230217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.723820, 33.964855, 47.228481>,  <38.376671, 33.766163, 47.225586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723820, 33.964855, 47.228481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200193, 0.363034, -0.910016,
		-0.454658, 0.788332, 0.414510,
		0.867876, 0.496728, 0.007238,
		38.984184, 34.113873, 47.230652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171326, 34.303791, 46.867184>,  <38.376671, 33.766163, 47.225586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171326, 34.303791, 46.867184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570683, 34.322044, 46.880600>,  <38.810299, 34.332996, 46.888649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570683, 34.322044, 46.880600>,  <38.171326, 34.303791, 46.867184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570683, 34.322044, 46.880600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009232, 0.453195, -0.891364,
		-0.055876, 0.890243, 0.452047,
		0.998395, 0.045633, 0.033541,
		38.870201, 34.335735, 46.890663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844055, 34.797733, 47.243599>,  <38.171326, 34.303791, 46.867184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844055, 34.797733, 47.243599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444515, 34.812626, 47.231529>,  <37.204792, 34.821560, 47.224289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444515, 34.812626, 47.231529>,  <37.844055, 34.797733, 47.243599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444515, 34.812626, 47.231529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042496, -0.397089, 0.916796,
		0.022152, 0.917025, 0.398215,
		-0.998851, 0.037231, -0.030174,
		37.144859, 34.823795, 47.222477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564735, 35.129009, 47.820946>,  <37.844055, 34.797733, 47.243599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564735, 35.129009, 47.820946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244781, 34.919022, 47.704613>,  <37.052807, 34.793030, 47.634811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.244781, 34.919022, 47.704613>,  <37.564735, 35.129009, 47.820946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244781, 34.919022, 47.704613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225970, -0.185487, 0.956312,
		-0.555983, 0.830662, 0.029741,
		-0.799888, -0.524972, -0.290832,
		37.004814, 34.761532, 47.617363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038540, 35.304256, 48.186859>,  <37.564735, 35.129009, 47.820946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038540, 35.304256, 48.186859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889713, 34.953014, 48.066528>,  <36.800415, 34.742268, 47.994328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889713, 34.953014, 48.066528>,  <37.038540, 35.304256, 48.186859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889713, 34.953014, 48.066528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210831, -0.235677, 0.948687,
		-0.903944, 0.416402, -0.097443,
		-0.372070, -0.878104, -0.300829,
		36.778091, 34.689583, 47.976280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298756, 35.321266, 48.427456>,  <37.038540, 35.304256, 48.186859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298756, 35.321266, 48.427456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451275, 34.953403, 48.389824>,  <36.542786, 34.732685, 48.367245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451275, 34.953403, 48.389824>,  <36.298756, 35.321266, 48.427456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451275, 34.953403, 48.389824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242749, -0.197800, 0.949709,
		-0.892011, -0.339286, -0.298666,
		0.381299, -0.919652, -0.094079,
		36.565666, 34.677509, 48.361599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872875, 34.978310, 48.747749>,  <36.298756, 35.321266, 48.427456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872875, 34.978310, 48.747749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176140, 34.717834, 48.734211>,  <36.358097, 34.561550, 48.726086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176140, 34.717834, 48.734211>,  <35.872875, 34.978310, 48.747749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176140, 34.717834, 48.734211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296855, -0.390911, 0.871244,
		-0.580575, -0.650495, -0.489682,
		0.758162, -0.651187, -0.033850,
		36.403587, 34.522480, 48.724056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619965, 34.477974, 49.158695>,  <35.872875, 34.978310, 48.747749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619965, 34.477974, 49.158695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012020, 34.399067, 49.150566>,  <36.247253, 34.351723, 49.145687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012020, 34.399067, 49.150566>,  <35.619965, 34.477974, 49.158695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012020, 34.399067, 49.150566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037763, -0.286281, 0.957401,
		-0.194685, -0.937618, -0.288045,
		0.980139, -0.197269, -0.020327,
		36.306061, 34.339886, 49.144466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712063, 33.770252, 49.349861>,  <35.619965, 34.477974, 49.158695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712063, 33.770252, 49.349861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048470, 33.963230, 49.447792>,  <36.250313, 34.079018, 49.506550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048470, 33.963230, 49.447792>,  <35.712063, 33.770252, 49.349861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048470, 33.963230, 49.447792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093312, -0.316400, 0.944025,
		0.532907, -0.816783, -0.221079,
		0.841013, 0.482448, 0.244827,
		36.300774, 34.107964, 49.521240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206951, 33.162422, 49.389423>,  <35.712063, 33.770252, 49.349861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206951, 33.162422, 49.389423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870857, 32.947483, 49.418419>,  <34.669201, 32.818520, 49.435818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870857, 32.947483, 49.418419>,  <35.206951, 33.162422, 49.389423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870857, 32.947483, 49.418419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207386, 0.194962, -0.958635,
		0.500991, -0.820514, -0.275254,
		-0.840238, -0.537351, 0.072489,
		34.618786, 32.786278, 49.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207470, 32.629475, 48.870293>,  <35.206951, 33.162422, 49.389423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207470, 32.629475, 48.870293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828331, 32.708523, 48.970318>,  <34.600849, 32.755951, 49.030334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828331, 32.708523, 48.970318>,  <35.207470, 32.629475, 48.870293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828331, 32.708523, 48.970318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187850, 0.287440, -0.939197,
		-0.257486, -0.937189, -0.235325,
		-0.947846, 0.197624, 0.250063,
		34.543976, 32.767811, 49.045338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750206, 32.228359, 48.354435>,  <35.207470, 32.629475, 48.870293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750206, 32.228359, 48.354435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514359, 32.500935, 48.527863>,  <34.372849, 32.664482, 48.631920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514359, 32.500935, 48.527863>,  <34.750206, 32.228359, 48.354435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514359, 32.500935, 48.527863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421195, 0.198619, -0.884955,
		-0.689161, -0.704406, 0.169909,
		-0.589621, 0.681441, 0.433573,
		34.337471, 32.705368, 48.657936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156086, 32.097832, 48.075264>,  <34.750206, 32.228359, 48.354435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156086, 32.097832, 48.075264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121250, 32.468689, 48.221043>,  <34.100349, 32.691204, 48.308510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121250, 32.468689, 48.221043>,  <34.156086, 32.097832, 48.075264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121250, 32.468689, 48.221043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332773, 0.317752, -0.887861,
		-0.938977, -0.198599, 0.280856,
		-0.087086, 0.927142, 0.364450,
		34.095123, 32.746830, 48.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456070, 32.345436, 47.761948>,  <34.156086, 32.097832, 48.075264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456070, 32.345436, 47.761948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643639, 32.676472, 47.885368>,  <33.756180, 32.875095, 47.959423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643639, 32.676472, 47.885368>,  <33.456070, 32.345436, 47.761948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643639, 32.676472, 47.885368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418820, 0.515918, -0.747274,
		-0.777626, 0.221184, 0.588537,
		0.468922, 0.827591, 0.308554,
		33.784317, 32.924747, 47.977936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976467, 32.904510, 47.580956>,  <33.456070, 32.345436, 47.761948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976467, 32.904510, 47.580956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338596, 33.071095, 47.614323>,  <33.555874, 33.171047, 47.634342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338596, 33.071095, 47.614323>,  <32.976467, 32.904510, 47.580956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338596, 33.071095, 47.614323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171892, 0.538845, -0.824681,
		-0.388396, 0.732261, 0.559413,
		0.905318, 0.416462, 0.083415,
		33.610191, 33.196033, 47.639347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893269, 33.681831, 47.565948>,  <32.976467, 32.904510, 47.580956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893269, 33.681831, 47.565948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267399, 33.596443, 47.453094>,  <33.491879, 33.545212, 47.385384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267399, 33.596443, 47.453094>,  <32.893269, 33.681831, 47.565948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267399, 33.596443, 47.453094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161588, 0.451671, -0.877429,
		0.314734, 0.866271, 0.387966,
		0.935324, -0.213466, -0.282136,
		33.547997, 33.532402, 47.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.188202, 27.086954, 50.205631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414463, 27.416496, 50.220058>,  <38.550220, 27.614222, 50.228714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414463, 27.416496, 50.220058>,  <38.188202, 27.086954, 50.205631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414463, 27.416496, 50.220058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498856, 0.376678, -0.780549,
		-0.656644, 0.423528, 0.624054,
		0.565651, 0.823856, 0.036064,
		38.584160, 27.663652, 50.230877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750572, 27.570974, 50.261818>,  <38.188202, 27.086954, 50.205631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750572, 27.570974, 50.261818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070332, 27.730240, 50.081848>,  <38.262188, 27.825798, 49.973866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.070332, 27.730240, 50.081848>,  <37.750572, 27.570974, 50.261818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070332, 27.730240, 50.081848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545498, 0.167158, -0.821274,
		-0.251791, 0.901956, 0.350822,
		0.799395, 0.398162, -0.449927,
		38.310150, 27.849688, 49.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562706, 28.128750, 49.932793>,  <37.750572, 27.570974, 50.261818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562706, 28.128750, 49.932793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.909027, 28.064335, 49.743282>,  <38.116817, 28.025686, 49.629578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.909027, 28.064335, 49.743282>,  <37.562706, 28.128750, 49.932793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909027, 28.064335, 49.743282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464410, 0.093952, -0.880623,
		0.186325, 0.982466, 0.006556,
		0.865798, -0.161038, -0.473772,
		38.168766, 28.016024, 49.601151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398968, 28.412909, 49.379574>,  <37.562706, 28.128750, 49.932793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398968, 28.412909, 49.379574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733353, 28.233248, 49.253441>,  <37.933983, 28.125452, 49.177761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733353, 28.233248, 49.253441>,  <37.398968, 28.412909, 49.379574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733353, 28.233248, 49.253441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406203, -0.120047, -0.905863,
		0.369014, 0.885355, -0.282800,
		0.835959, -0.449150, -0.315335,
		37.984142, 28.098503, 49.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607658, 28.755602, 48.818493>,  <37.398968, 28.412909, 49.379574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607658, 28.755602, 48.818493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.766735, 28.389421, 48.793842>,  <37.862179, 28.169714, 48.779053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.766735, 28.389421, 48.793842>,  <37.607658, 28.755602, 48.818493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766735, 28.389421, 48.793842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336940, -0.083241, -0.937839,
		0.853414, 0.393731, -0.341555,
		0.397688, -0.915449, -0.061624,
		37.886040, 28.114786, 48.775356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100449, 28.687489, 48.190620>,  <37.607658, 28.755602, 48.818493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100449, 28.687489, 48.190620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.979839, 28.317484, 48.283081>,  <37.907475, 28.095480, 48.338558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.979839, 28.317484, 48.283081>,  <38.100449, 28.687489, 48.190620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979839, 28.317484, 48.283081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073583, -0.219139, -0.972915,
		0.950614, -0.310369, -0.001988,
		-0.301527, -0.925013, 0.231155,
		37.889381, 28.039980, 48.352428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513229, 28.205881, 47.733772>,  <38.100449, 28.687489, 48.190620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513229, 28.205881, 47.733772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.178917, 28.006285, 47.825413>,  <37.978329, 27.886528, 47.880398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.178917, 28.006285, 47.825413>,  <38.513229, 28.205881, 47.733772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178917, 28.006285, 47.825413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120429, -0.240493, -0.963151,
		0.535700, -0.832569, 0.140906,
		-0.835777, -0.498990, 0.229098,
		37.928185, 27.856588, 47.894142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531155, 27.699614, 47.221180>,  <38.513229, 28.205881, 47.733772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531155, 27.699614, 47.221180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158482, 27.708273, 47.366230>,  <37.934879, 27.713469, 47.453262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158482, 27.708273, 47.366230>,  <38.531155, 27.699614, 47.221180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158482, 27.708273, 47.366230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355458, -0.260296, -0.897717,
		0.074957, -0.965286, 0.250208,
		-0.931682, 0.021649, 0.362630,
		37.878979, 27.714767, 47.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093102, 27.167530, 46.898369>,  <38.531155, 27.699614, 47.221180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093102, 27.167530, 46.898369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826309, 27.438034, 47.023468>,  <37.666233, 27.600336, 47.098526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826309, 27.438034, 47.023468>,  <38.093102, 27.167530, 46.898369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826309, 27.438034, 47.023468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506802, -0.104084, -0.855756,
		-0.546164, -0.729271, 0.412152,
		-0.666976, 0.676263, 0.312749,
		37.626217, 27.640913, 47.117294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451889, 26.954245, 46.661865>,  <38.093102, 27.167530, 46.898369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451889, 26.954245, 46.661865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.360401, 27.335047, 46.743229>,  <37.305508, 27.563528, 46.792046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.360401, 27.335047, 46.743229>,  <37.451889, 26.954245, 46.661865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360401, 27.335047, 46.743229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533173, 0.052321, -0.844387,
		-0.814503, -0.301580, 0.495616,
		-0.228719, 0.952004, 0.203409,
		37.291786, 27.620647, 46.804253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709793, 27.117428, 46.440346>,  <37.451889, 26.954245, 46.661865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709793, 27.117428, 46.440346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.878796, 27.479971, 46.439766>,  <36.980198, 27.697496, 46.439419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.878796, 27.479971, 46.439766>,  <36.709793, 27.117428, 46.440346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878796, 27.479971, 46.439766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618935, 0.287351, -0.730992,
		-0.662124, 0.309746, 0.682385,
		0.422506, 0.906359, -0.001450,
		37.005547, 27.751879, 46.439331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152748, 27.585943, 46.380009>,  <36.709793, 27.117428, 46.440346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152748, 27.585943, 46.380009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.479229, 27.775944, 46.248440>,  <36.675117, 27.889944, 46.169498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.479229, 27.775944, 46.248440>,  <36.152748, 27.585943, 46.380009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479229, 27.775944, 46.248440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524284, 0.369679, -0.767113,
		-0.242783, 0.798568, 0.550768,
		0.816200, 0.475001, -0.328925,
		36.724091, 27.918444, 46.149761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762405, 28.158644, 46.751431>,  <36.152748, 27.585943, 46.380009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762405, 28.158644, 46.751431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.523758, 28.471739, 46.822277>,  <35.380569, 28.659595, 46.864784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.523758, 28.471739, 46.822277>,  <35.762405, 28.158644, 46.751431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523758, 28.471739, 46.822277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372208, 0.074359, 0.925166,
		0.710990, 0.617895, -0.335705,
		-0.596618, 0.782736, 0.177117,
		35.344772, 28.706560, 46.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183983, 28.648232, 47.161110>,  <35.762405, 28.158644, 46.751431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183983, 28.648232, 47.161110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794983, 28.726986, 47.210888>,  <35.561584, 28.774239, 47.240753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794983, 28.726986, 47.210888>,  <36.183983, 28.648232, 47.161110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794983, 28.726986, 47.210888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172769, 0.251461, 0.952322,
		0.156205, 0.947630, -0.278561,
		-0.972497, 0.196884, 0.124442,
		35.503235, 28.786051, 47.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235970, 29.186998, 47.630466>,  <36.183983, 28.648232, 47.161110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235970, 29.186998, 47.630466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.859447, 29.057291, 47.667961>,  <35.633533, 28.979467, 47.690456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.859447, 29.057291, 47.667961>,  <36.235970, 29.186998, 47.630466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859447, 29.057291, 47.667961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002584, 0.284610, 0.958640,
		-0.337535, 0.902134, -0.268744,
		-0.941309, -0.324269, 0.093735,
		35.577053, 28.960011, 47.696083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877003, 29.783817, 47.916622>,  <36.235970, 29.186998, 47.630466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877003, 29.783817, 47.916622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.633228, 29.478271, 48.001564>,  <35.486965, 29.294943, 48.052528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.633228, 29.478271, 48.001564>,  <35.877003, 29.783817, 47.916622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633228, 29.478271, 48.001564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208188, 0.412632, 0.886788,
		-0.765013, 0.496230, -0.410501,
		-0.609437, -0.763865, 0.212359,
		35.450397, 29.249111, 48.065273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259693, 30.062979, 48.142723>,  <35.877003, 29.783817, 47.916622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259693, 30.062979, 48.142723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229008, 29.689747, 48.283279>,  <35.210594, 29.465809, 48.367615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.229008, 29.689747, 48.283279>,  <35.259693, 30.062979, 48.142723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229008, 29.689747, 48.283279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286953, 0.358185, 0.888460,
		-0.954868, -0.032674, -0.295229,
		-0.076717, -0.933079, 0.351395,
		35.205994, 29.409822, 48.388699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601917, 30.039991, 48.430077>,  <35.259693, 30.062979, 48.142723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601917, 30.039991, 48.430077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.832275, 29.748363, 48.578022>,  <34.970490, 29.573387, 48.666790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.832275, 29.748363, 48.578022>,  <34.601917, 30.039991, 48.430077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832275, 29.748363, 48.578022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234872, 0.285800, 0.929061,
		-0.783056, -0.621916, -0.006646,
		0.575898, -0.729068, 0.369868,
		35.005043, 29.529644, 48.688984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196529, 29.631050, 48.871574>,  <34.601917, 30.039991, 48.430077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196529, 29.631050, 48.871574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571957, 29.551287, 48.984230>,  <34.797215, 29.503429, 49.051823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571957, 29.551287, 48.984230>,  <34.196529, 29.631050, 48.871574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571957, 29.551287, 48.984230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234162, 0.231490, 0.944235,
		-0.253486, -0.952181, 0.170576,
		0.938570, -0.199408, 0.281644,
		34.853527, 29.491465, 49.068722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034603, 29.130884, 49.330189>,  <34.196529, 29.631050, 48.871574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034603, 29.130884, 49.330189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397785, 29.288891, 49.386150>,  <34.615696, 29.383694, 49.419727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397785, 29.288891, 49.386150>,  <34.034603, 29.130884, 49.330189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397785, 29.288891, 49.386150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240326, 0.217336, 0.946049,
		0.343298, -0.892596, 0.292264,
		0.907959, 0.395015, 0.139904,
		34.670174, 29.407396, 49.428120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022102, 28.992678, 49.971218>,  <34.034603, 29.130884, 49.330189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022102, 28.992678, 49.971218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353184, 29.217081, 49.965931>,  <34.551834, 29.351723, 49.962757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.353184, 29.217081, 49.965931>,  <34.022102, 28.992678, 49.971218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353184, 29.217081, 49.965931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198359, 0.314527, 0.928292,
		0.524939, -0.765729, 0.371616,
		0.827703, 0.561010, -0.013218,
		34.601494, 29.385384, 49.961967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379757, 28.726145, 50.592331>,  <34.022102, 28.992678, 49.971218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379757, 28.726145, 50.592331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476231, 29.099443, 50.485836>,  <34.534115, 29.323423, 50.421940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476231, 29.099443, 50.485836>,  <34.379757, 28.726145, 50.592331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476231, 29.099443, 50.485836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127166, 0.302361, 0.944673,
		0.962112, -0.193983, 0.191602,
		0.241183, 0.933246, -0.266237,
		34.548584, 29.379417, 50.405964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791664, 29.011833, 51.146614>,  <34.379757, 28.726145, 50.592331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791664, 29.011833, 51.146614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722885, 29.355892, 50.954540>,  <34.681618, 29.562328, 50.839294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722885, 29.355892, 50.954540>,  <34.791664, 29.011833, 51.146614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722885, 29.355892, 50.954540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143539, 0.460365, 0.876048,
		0.974592, 0.219562, 0.044305,
		-0.171950, 0.860149, -0.480184,
		34.671299, 29.613937, 50.810486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369488, 29.498575, 51.379520>,  <34.791664, 29.011833, 51.146614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369488, 29.498575, 51.379520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030800, 29.680683, 51.269402>,  <34.827587, 29.789948, 51.203331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.030800, 29.680683, 51.269402>,  <35.369488, 29.498575, 51.379520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030800, 29.680683, 51.269402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033600, 0.470657, 0.881676,
		0.530973, 0.755785, -0.383218,
		-0.846722, 0.455270, -0.275301,
		34.776783, 29.817265, 51.186810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469299, 30.207336, 51.533329>,  <35.369488, 29.498575, 51.379520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469299, 30.207336, 51.533329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073235, 30.195675, 51.478592>,  <34.835594, 30.188679, 51.445751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073235, 30.195675, 51.478592>,  <35.469299, 30.207336, 51.533329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073235, 30.195675, 51.478592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133136, 0.497005, 0.857473,
		0.043013, 0.867258, -0.495998,
		-0.990164, -0.029153, -0.136840,
		34.776184, 30.186930, 51.437538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184998, 30.896572, 51.634899>,  <35.469299, 30.207336, 51.533329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184998, 30.896572, 51.634899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888065, 30.651968, 51.744438>,  <34.709904, 30.505205, 51.810162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888065, 30.651968, 51.744438>,  <35.184998, 30.896572, 51.634899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888065, 30.651968, 51.744438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209684, 0.600207, 0.771871,
		-0.636375, 0.515563, -0.573778,
		-0.742333, -0.611512, 0.273851,
		34.665367, 30.468515, 51.826595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224602, 30.636084, 50.949371>,  <35.184998, 30.896572, 51.634899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224602, 30.636084, 50.949371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383026, 30.995770, 50.875019>,  <35.478081, 31.211580, 50.830406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383026, 30.995770, 50.875019>,  <35.224602, 30.636084, 50.949371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383026, 30.995770, 50.875019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272281, -0.078322, -0.959025,
		-0.876926, 0.430445, 0.213819,
		0.396060, 0.899212, -0.185884,
		35.501842, 31.265533, 50.819252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441555, 30.800825, 51.074863>,  <35.224602, 30.636084, 50.949371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441555, 30.800825, 51.074863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661541, 31.078777, 51.260201>,  <34.793533, 31.245548, 51.371403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661541, 31.078777, 51.260201>,  <34.441555, 30.800825, 51.074863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661541, 31.078777, 51.260201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402701, 0.706648, -0.581791,
		-0.731694, 0.133375, 0.668458,
		0.549960, 0.694881, 0.463340,
		34.826530, 31.287241, 51.399204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073982, 31.351133, 51.277901>,  <34.441555, 30.800825, 51.074863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073982, 31.351133, 51.277901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436855, 31.507223, 51.214989>,  <34.654579, 31.600878, 51.177242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436855, 31.507223, 51.214989>,  <34.073982, 31.351133, 51.277901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436855, 31.507223, 51.214989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406754, 0.717924, -0.564922,
		-0.107533, 0.576463, 0.810017,
		0.907187, 0.390226, -0.157278,
		34.709011, 31.624290, 51.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854786, 31.954611, 51.144131>,  <34.073982, 31.351133, 51.277901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854786, 31.954611, 51.144131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235916, 31.928474, 51.025566>,  <34.464592, 31.912792, 50.954426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235916, 31.928474, 51.025566>,  <33.854786, 31.954611, 51.144131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235916, 31.928474, 51.025566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183096, 0.655141, -0.732984,
		0.242085, 0.752676, 0.612270,
		0.952823, -0.065340, -0.296412,
		34.521763, 31.908873, 50.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249180, 32.680977, 51.166561>,  <33.854786, 31.954611, 51.144131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249180, 32.680977, 51.166561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.422787, 32.436241, 50.902050>,  <34.526951, 32.289398, 50.743343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.422787, 32.436241, 50.902050>,  <34.249180, 32.680977, 51.166561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422787, 32.436241, 50.902050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062116, 0.711941, -0.699487,
		0.898762, 0.344663, 0.270987,
		0.434014, -0.611840, -0.661275,
		34.552990, 32.252689, 50.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659870, 33.170795, 50.707497>,  <34.249180, 32.680977, 51.166561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659870, 33.170795, 50.707497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.616505, 32.818066, 50.523914>,  <34.590485, 32.606430, 50.413765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.616505, 32.818066, 50.523914>,  <34.659870, 33.170795, 50.707497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616505, 32.818066, 50.523914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086459, 0.468290, -0.879335,
		0.990339, -0.055654, -0.127012,
		-0.108417, -0.881820, -0.458954,
		34.583981, 32.553520, 50.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077248, 33.234146, 50.127293>,  <34.659870, 33.170795, 50.707497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077248, 33.234146, 50.127293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837929, 32.928894, 50.029579>,  <34.694340, 32.745743, 49.970951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.837929, 32.928894, 50.029579>,  <35.077248, 33.234146, 50.127293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837929, 32.928894, 50.029579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015232, 0.315646, -0.948755,
		0.801132, -0.563914, -0.200473,
		-0.598294, -0.763131, -0.244285,
		34.658440, 32.699955, 49.956295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847294, 33.420479, 49.957413>,  <35.077248, 33.234146, 50.127293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847294, 33.420479, 49.957413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107155, 33.723679, 49.980698>,  <36.263073, 33.905598, 49.994671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107155, 33.723679, 49.980698>,  <35.847294, 33.420479, 49.957413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107155, 33.723679, 49.980698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018578, -0.092384, 0.995550,
		0.760003, -0.645681, -0.074099,
		0.649654, 0.757998, 0.058217,
		36.302052, 33.951077, 49.998161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286209, 33.231396, 50.407421>,  <35.847294, 33.420479, 49.957413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286209, 33.231396, 50.407421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.355537, 33.625118, 50.420658>,  <36.397133, 33.861351, 50.428600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.355537, 33.625118, 50.420658>,  <36.286209, 33.231396, 50.407421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355537, 33.625118, 50.420658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118479, -0.054200, 0.991476,
		0.977714, -0.167919, -0.126014,
		0.173318, 0.984310, 0.033097,
		36.407532, 33.920410, 50.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794598, 33.242039, 50.823574>,  <36.286209, 33.231396, 50.407421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794598, 33.242039, 50.823574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.646935, 33.613663, 50.833179>,  <36.558338, 33.836636, 50.838943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.646935, 33.613663, 50.833179>,  <36.794598, 33.242039, 50.823574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646935, 33.613663, 50.833179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169633, 0.041958, 0.984614,
		0.913755, 0.367549, -0.173088,
		-0.369156, 0.929057, 0.024009,
		36.536186, 33.892380, 50.840382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403896, 33.614159, 51.048592>,  <36.794598, 33.242039, 50.823574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403896, 33.614159, 51.048592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084332, 33.841366, 51.127674>,  <36.892593, 33.977692, 51.175121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084332, 33.841366, 51.127674>,  <37.403896, 33.614159, 51.048592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084332, 33.841366, 51.127674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382332, 0.225891, 0.895989,
		0.464280, 0.791408, -0.397640,
		-0.798916, 0.568020, 0.197704,
		36.844658, 34.011772, 51.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605640, 34.307758, 51.257549>,  <37.403896, 33.614159, 51.048592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605640, 34.307758, 51.257549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252197, 34.266457, 51.440228>,  <37.040131, 34.241676, 51.549835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252197, 34.266457, 51.440228>,  <37.605640, 34.307758, 51.257549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252197, 34.266457, 51.440228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386650, 0.389206, 0.836074,
		-0.264079, 0.915345, -0.303983,
		-0.883609, -0.103255, 0.456699,
		36.987114, 34.235481, 51.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541389, 35.017860, 51.639969>,  <37.605640, 34.307758, 51.257549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541389, 35.017860, 51.639969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.315109, 34.728630, 51.798534>,  <37.179340, 34.555092, 51.893673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.315109, 34.728630, 51.798534>,  <37.541389, 35.017860, 51.639969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315109, 34.728630, 51.798534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282509, 0.281696, 0.916971,
		-0.774707, 0.630722, 0.044920,
		-0.565701, -0.723074, 0.396416,
		37.145397, 34.511707, 51.917458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343075, 35.375546, 52.223942>,  <37.541389, 35.017860, 51.639969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343075, 35.375546, 52.223942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256229, 34.991665, 52.295315>,  <37.204121, 34.761337, 52.338139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256229, 34.991665, 52.295315>,  <37.343075, 35.375546, 52.223942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256229, 34.991665, 52.295315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184843, 0.139070, 0.972878,
		-0.958486, 0.244207, 0.147200,
		-0.217113, -0.959699, 0.178437,
		37.191097, 34.703754, 52.348846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114258, 35.354622, 52.900303>,  <37.343075, 35.375546, 52.223942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114258, 35.354622, 52.900303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217354, 34.976620, 52.819767>,  <37.279213, 34.749821, 52.771446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217354, 34.976620, 52.819767>,  <37.114258, 35.354622, 52.900303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217354, 34.976620, 52.819767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296095, -0.121105, 0.947450,
		-0.919727, -0.303812, 0.248597,
		0.257740, -0.945004, -0.201340,
		37.294678, 34.693119, 52.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878735, 34.976227, 53.408630>,  <37.114258, 35.354622, 52.900303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878735, 34.976227, 53.408630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.190109, 34.770882, 53.264137>,  <37.376934, 34.647675, 53.177441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.190109, 34.770882, 53.264137>,  <36.878735, 34.976227, 53.408630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190109, 34.770882, 53.264137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314051, -0.179765, 0.932232,
		-0.543515, -0.839129, 0.021287,
		0.778437, -0.513368, -0.361234,
		37.423641, 34.616871, 53.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.036495, 34.824284, 37.025814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417229, 34.933311, 37.081982>,  <35.645668, 34.998730, 37.115681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417229, 34.933311, 37.081982>,  <35.036495, 34.824284, 37.025814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417229, 34.933311, 37.081982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167577, 0.078945, 0.982693,
		0.256767, -0.958892, 0.120819,
		0.951834, 0.272570, 0.140417,
		35.702778, 35.015083, 37.124107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184769, 34.616642, 37.769924>,  <35.036495, 34.824284, 37.025814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184769, 34.616642, 37.769924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511185, 34.830387, 37.681801>,  <35.707035, 34.958633, 37.628925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511185, 34.830387, 37.681801>,  <35.184769, 34.616642, 37.769924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511185, 34.830387, 37.681801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006086, 0.373199, 0.927731,
		0.577964, -0.758406, 0.301293,
		0.816039, 0.534362, -0.220311,
		35.755997, 34.990696, 37.615707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552830, 34.530773, 38.247036>,  <35.184769, 34.616642, 37.769924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552830, 34.530773, 38.247036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718452, 34.874332, 38.126469>,  <35.817825, 35.080467, 38.054131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718452, 34.874332, 38.126469>,  <35.552830, 34.530773, 38.247036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718452, 34.874332, 38.126469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058510, 0.305336, 0.950446,
		0.908368, -0.411175, 0.076173,
		0.414058, 0.858898, -0.301415,
		35.842670, 35.132000, 38.036045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090015, 34.537575, 38.666767>,  <35.552830, 34.530773, 38.247036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090015, 34.537575, 38.666767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021305, 34.909397, 38.536285>,  <35.980080, 35.132492, 38.457996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021305, 34.909397, 38.536285>,  <36.090015, 34.537575, 38.666767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021305, 34.909397, 38.536285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068704, 0.341625, 0.937322,
		0.982737, 0.138600, -0.122548,
		-0.171778, 0.929560, -0.326205,
		35.969772, 35.188267, 38.438423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610058, 34.913155, 38.895721>,  <36.090015, 34.537575, 38.666767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610058, 34.913155, 38.895721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342190, 35.199066, 38.815094>,  <36.181469, 35.370613, 38.766716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342190, 35.199066, 38.815094>,  <36.610058, 34.913155, 38.895721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342190, 35.199066, 38.815094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036951, 0.303154, 0.952225,
		0.741738, 0.630229, -0.229426,
		-0.669671, 0.714779, -0.201573,
		36.141289, 35.413502, 38.754623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911835, 35.625656, 39.159138>,  <36.610058, 34.913155, 38.895721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911835, 35.625656, 39.159138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515278, 35.668797, 39.129433>,  <36.277344, 35.694679, 39.111610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515278, 35.668797, 39.129433>,  <36.911835, 35.625656, 39.159138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515278, 35.668797, 39.129433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008677, 0.511788, 0.859068,
		0.130655, 0.852316, -0.506445,
		-0.991390, 0.107847, -0.074263,
		36.217861, 35.701149, 39.107155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855061, 36.267628, 39.446980>,  <36.911835, 35.625656, 39.159138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855061, 36.267628, 39.446980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496216, 36.090908, 39.448578>,  <36.280910, 35.984879, 39.449535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496216, 36.090908, 39.448578>,  <36.855061, 36.267628, 39.446980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496216, 36.090908, 39.448578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213667, 0.441751, 0.871322,
		-0.386711, 0.780816, -0.490695,
		-0.897107, -0.441795, 0.003996,
		36.227085, 35.958370, 39.449776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313931, 36.783451, 39.580040>,  <36.855061, 36.267628, 39.446980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313931, 36.783451, 39.580040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159752, 36.434204, 39.699432>,  <36.067245, 36.224655, 39.771069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159752, 36.434204, 39.699432>,  <36.313931, 36.783451, 39.580040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159752, 36.434204, 39.699432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279040, 0.418625, 0.864228,
		-0.879525, 0.249830, -0.404994,
		-0.385451, -0.873120, 0.298478,
		36.044117, 36.172268, 39.788975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814690, 37.016312, 39.960766>,  <36.313931, 36.783451, 39.580040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814690, 37.016312, 39.960766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862522, 36.630989, 40.056885>,  <35.891224, 36.399796, 40.114555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862522, 36.630989, 40.056885>,  <35.814690, 37.016312, 39.960766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862522, 36.630989, 40.056885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222037, 0.209956, 0.952165,
		-0.967677, -0.167219, -0.188782,
		0.119584, -0.963305, 0.240298,
		35.898396, 36.341999, 40.128975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194691, 36.886852, 40.419563>,  <35.814690, 37.016312, 39.960766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194691, 36.886852, 40.419563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443283, 36.579517, 40.480770>,  <35.592438, 36.395115, 40.517494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443283, 36.579517, 40.480770>,  <35.194691, 36.886852, 40.419563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443283, 36.579517, 40.480770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061245, 0.147067, 0.987229,
		-0.781030, -0.622917, 0.044342,
		0.621482, -0.768340, 0.153015,
		35.629726, 36.349014, 40.526676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903400, 36.490215, 40.889179>,  <35.194691, 36.886852, 40.419563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903400, 36.490215, 40.889179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290165, 36.403706, 40.943298>,  <35.522224, 36.351799, 40.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290165, 36.403706, 40.943298>,  <34.903400, 36.490215, 40.889179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290165, 36.403706, 40.943298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103855, 0.150717, 0.983107,
		-0.233012, -0.964630, 0.123269,
		0.966912, -0.216274, 0.135301,
		35.580238, 36.338825, 40.983887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962467, 35.916832, 41.359730>,  <34.903400, 36.490215, 40.889179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962467, 35.916832, 41.359730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327274, 36.080147, 41.375347>,  <35.546158, 36.178135, 41.384720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327274, 36.080147, 41.375347>,  <34.962467, 35.916832, 41.359730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327274, 36.080147, 41.375347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040588, -0.004891, 0.999164,
		0.408136, -0.912841, 0.012111,
		0.912019, 0.408286, 0.039046,
		35.600880, 36.202633, 41.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674793, 35.323860, 41.219612>,  <34.962467, 35.916832, 41.359730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674793, 35.323860, 41.219612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326210, 35.210896, 41.380013>,  <34.117062, 35.143116, 41.476254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326210, 35.210896, 41.380013>,  <34.674793, 35.323860, 41.219612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326210, 35.210896, 41.380013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404480, -0.048626, -0.913253,
		0.277412, -0.958060, -0.071854,
		-0.871458, -0.282411, 0.401005,
		34.064774, 35.126171, 41.500313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445637, 34.747166, 40.775005>,  <34.674793, 35.323860, 41.219612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445637, 34.747166, 40.775005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139381, 34.925850, 40.960152>,  <33.955627, 35.033062, 41.071239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139381, 34.925850, 40.960152>,  <34.445637, 34.747166, 40.775005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139381, 34.925850, 40.960152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532952, -0.037573, -0.845311,
		-0.360219, -0.893889, 0.266843,
		-0.765640, 0.446712, 0.462865,
		33.909691, 35.059864, 41.099010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815186, 34.252945, 40.742302>,  <34.445637, 34.747166, 40.775005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815186, 34.252945, 40.742302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678837, 34.625927, 40.790188>,  <33.597027, 34.849716, 40.818920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678837, 34.625927, 40.790188>,  <33.815186, 34.252945, 40.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678837, 34.625927, 40.790188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510174, -0.076516, -0.856661,
		-0.789637, -0.353092, 0.501796,
		-0.340876, 0.932455, 0.119719,
		33.576572, 34.905663, 40.826103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177109, 34.194145, 40.539928>,  <33.815186, 34.252945, 40.742302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177109, 34.194145, 40.539928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208179, 34.592831, 40.549084>,  <33.226822, 34.832043, 40.554577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208179, 34.592831, 40.549084>,  <33.177109, 34.194145, 40.539928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208179, 34.592831, 40.549084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643203, 0.067645, -0.762702,
		-0.761746, 0.044520, 0.646345,
		0.077678, 0.996716, 0.022892,
		33.231483, 34.891846, 40.555950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442440, 34.415596, 40.540703>,  <33.177109, 34.194145, 40.539928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442440, 34.415596, 40.540703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654995, 34.732128, 40.419765>,  <32.782528, 34.922047, 40.347202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654995, 34.732128, 40.419765>,  <32.442440, 34.415596, 40.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654995, 34.732128, 40.419765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560181, 0.060517, -0.826157,
		-0.635469, 0.608382, 0.475449,
		0.531391, 0.791334, -0.302347,
		32.814411, 34.969528, 40.329060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970425, 34.842255, 40.182224>,  <32.442440, 34.415596, 40.540703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970425, 34.842255, 40.182224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342659, 34.917580, 40.056656>,  <32.565998, 34.962772, 39.981316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342659, 34.917580, 40.056656>,  <31.970425, 34.842255, 40.182224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342659, 34.917580, 40.056656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330858, 0.065682, -0.941392,
		-0.156655, 0.979911, 0.123427,
		0.930587, 0.188310, -0.313922,
		32.621834, 34.974072, 39.962479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930449, 35.320026, 39.619785>,  <31.970425, 34.842255, 40.182224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930449, 35.320026, 39.619785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295868, 35.173721, 39.548626>,  <32.515118, 35.085938, 39.505928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295868, 35.173721, 39.548626>,  <31.930449, 35.320026, 39.619785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295868, 35.173721, 39.548626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217139, -0.068740, -0.973717,
		0.343919, 0.928167, -0.142218,
		0.913548, -0.365761, -0.177901,
		32.569931, 35.063992, 39.495255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070415, 35.516376, 38.819607>,  <31.930449, 35.320026, 39.619785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070415, 35.516376, 38.819607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348026, 35.243206, 38.910767>,  <32.514591, 35.079304, 38.965462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348026, 35.243206, 38.910767>,  <32.070415, 35.516376, 38.819607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348026, 35.243206, 38.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012221, -0.327674, -0.944712,
		0.719846, 0.652870, -0.235760,
		0.694026, -0.682928, 0.227896,
		32.556232, 35.038326, 38.979134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570656, 35.572426, 38.449127>,  <32.070415, 35.516376, 38.819607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570656, 35.572426, 38.449127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585766, 35.188122, 38.559052>,  <32.594830, 34.957539, 38.625008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585766, 35.188122, 38.559052>,  <32.570656, 35.572426, 38.449127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585766, 35.188122, 38.559052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080379, -0.277037, -0.957491,
		0.996048, 0.014078, -0.087690,
		0.037773, -0.960756, 0.274811,
		32.597099, 34.899895, 38.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168278, 35.445499, 37.995815>,  <32.570656, 35.572426, 38.449127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168278, 35.445499, 37.995815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945133, 35.127735, 38.091896>,  <32.811249, 34.937077, 38.149544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945133, 35.127735, 38.091896>,  <33.168278, 35.445499, 37.995815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945133, 35.127735, 38.091896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148825, -0.188980, -0.970638,
		0.816484, -0.577227, -0.012805,
		-0.557858, -0.794416, 0.240205,
		32.777775, 34.889412, 38.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471066, 35.004700, 37.556446>,  <33.168278, 35.445499, 37.995815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471066, 35.004700, 37.556446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101418, 34.886208, 37.652985>,  <32.879627, 34.815113, 37.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101418, 34.886208, 37.652985>,  <33.471066, 35.004700, 37.556446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101418, 34.886208, 37.652985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181002, -0.216882, -0.959271,
		0.336508, -0.930167, 0.146807,
		-0.924121, -0.296230, 0.241345,
		32.824181, 34.797340, 37.725388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400009, 34.567390, 37.048241>,  <33.471066, 35.004700, 37.556446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400009, 34.567390, 37.048241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026081, 34.546185, 37.188694>,  <32.801723, 34.533463, 37.272964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026081, 34.546185, 37.188694>,  <33.400009, 34.567390, 37.048241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026081, 34.546185, 37.188694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318428, -0.312529, -0.894946,
		0.157184, -0.948428, 0.275278,
		-0.934825, -0.053015, 0.351131,
		32.745632, 34.530281, 37.294033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210651, 33.973934, 36.750515>,  <33.400009, 34.567390, 37.048241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210651, 33.973934, 36.750515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886124, 34.191872, 36.835285>,  <32.691406, 34.322632, 36.886147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886124, 34.191872, 36.835285>,  <33.210651, 33.973934, 36.750515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886124, 34.191872, 36.835285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437163, -0.324741, -0.838708,
		-0.388144, -0.773103, 0.501653,
		-0.811315, 0.544844, 0.211926,
		32.642727, 34.355324, 36.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586517, 33.482502, 36.764771>,  <33.210651, 33.973934, 36.750515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586517, 33.482502, 36.764771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445210, 33.848030, 36.684643>,  <32.360424, 34.067348, 36.636566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445210, 33.848030, 36.684643>,  <32.586517, 33.482502, 36.764771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445210, 33.848030, 36.684643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554320, -0.376953, -0.742048,
		-0.753610, -0.151106, 0.639717,
		-0.353272, 0.913823, -0.200315,
		32.339230, 34.122177, 36.624550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643200, 33.211319, 37.550442>,  <32.586517, 33.482502, 36.764771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643200, 33.211319, 37.550442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369308, 32.969242, 37.388016>,  <32.204975, 32.823997, 37.290558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369308, 32.969242, 37.388016>,  <32.643200, 33.211319, 37.550442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369308, 32.969242, 37.388016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129194, -0.447556, 0.884874,
		-0.717257, 0.658359, 0.228266,
		-0.684727, -0.605192, -0.406069,
		32.163891, 32.787685, 37.266193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093769, 33.025387, 38.080982>,  <32.643200, 33.211319, 37.550442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093769, 33.025387, 38.080982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128742, 32.739861, 37.803040>,  <32.149727, 32.568546, 37.636276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128742, 32.739861, 37.803040>,  <32.093769, 33.025387, 38.080982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128742, 32.739861, 37.803040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068267, -0.691591, 0.719056,
		-0.993828, -0.110306, -0.011739,
		0.087435, -0.713817, -0.694853,
		32.154972, 32.525715, 37.594585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512966, 32.619831, 38.155544>,  <32.093769, 33.025387, 38.080982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512966, 32.619831, 38.155544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817844, 32.413780, 37.998726>,  <32.000771, 32.290150, 37.904636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817844, 32.413780, 37.998726>,  <31.512966, 32.619831, 38.155544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817844, 32.413780, 37.998726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095985, -0.688858, 0.718514,
		-0.640189, -0.510019, -0.574490,
		0.762197, -0.515127, -0.392045,
		32.046505, 32.259243, 37.881111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311827, 31.967545, 38.290913>,  <31.512966, 32.619831, 38.155544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311827, 31.967545, 38.290913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697849, 31.919397, 38.197807>,  <31.929462, 31.890509, 38.141945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697849, 31.919397, 38.197807>,  <31.311827, 31.967545, 38.290913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697849, 31.919397, 38.197807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037240, -0.816240, 0.576511,
		-0.259385, -0.565033, -0.783235,
		0.965056, -0.120370, -0.232763,
		31.987366, 31.883286, 38.127979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384338, 31.291660, 38.041843>,  <31.311827, 31.967545, 38.290913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384338, 31.291660, 38.041843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750189, 31.394081, 38.166996>,  <31.969700, 31.455534, 38.242088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750189, 31.394081, 38.166996>,  <31.384338, 31.291660, 38.041843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750189, 31.394081, 38.166996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033293, -0.818957, 0.572888,
		0.402926, -0.513562, -0.757565,
		0.914627, 0.256053, 0.312881,
		32.024578, 31.470898, 38.260860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851452, 30.692324, 38.000931>,  <31.384338, 31.291660, 38.041843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851452, 30.692324, 38.000931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997681, 30.940706, 38.278282>,  <32.085419, 31.089737, 38.444691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997681, 30.940706, 38.278282>,  <31.851452, 30.692324, 38.000931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997681, 30.940706, 38.278282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154032, -0.775026, 0.612869,
		0.917950, -0.117244, -0.378973,
		0.365569, 0.620958, 0.693376,
		32.107353, 31.126993, 38.486294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529366, 30.383469, 38.210014>,  <31.851452, 30.692324, 38.000931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529366, 30.383469, 38.210014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392399, 30.626856, 38.496376>,  <32.310219, 30.772888, 38.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392399, 30.626856, 38.496376>,  <32.529366, 30.383469, 38.210014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392399, 30.626856, 38.496376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203056, -0.696034, 0.688699,
		0.917344, 0.381190, 0.114781,
		-0.342416, 0.608467, 0.715905,
		32.289673, 30.809397, 38.711147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985382, 30.288311, 38.753704>,  <32.529366, 30.383469, 38.210014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985382, 30.288311, 38.753704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678123, 30.471073, 38.933117>,  <32.493767, 30.580730, 39.040764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678123, 30.471073, 38.933117>,  <32.985382, 30.288311, 38.753704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678123, 30.471073, 38.933117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025187, -0.678434, 0.734230,
		0.639776, 0.575295, 0.509630,
		-0.768149, 0.456906, 0.448536,
		32.447678, 30.608145, 39.067677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193661, 30.265928, 39.372616>,  <32.985382, 30.288311, 38.753704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193661, 30.265928, 39.372616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805962, 30.341965, 39.435127>,  <32.573341, 30.387587, 39.472633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805962, 30.341965, 39.435127>,  <33.193661, 30.265928, 39.372616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805962, 30.341965, 39.435127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043008, -0.494443, 0.868145,
		0.242297, 0.848170, 0.471063,
		-0.969248, 0.190089, 0.156280,
		32.515186, 30.398991, 39.482010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198704, 30.646891, 39.942135>,  <33.193661, 30.265928, 39.372616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198704, 30.646891, 39.942135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839233, 30.478951, 39.891361>,  <32.623550, 30.378185, 39.860897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839233, 30.478951, 39.891361>,  <33.198704, 30.646891, 39.942135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839233, 30.478951, 39.891361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062691, -0.409370, 0.910212,
		-0.434117, 0.810025, 0.394210,
		-0.898673, -0.419852, -0.126933,
		32.569633, 30.352995, 39.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939915, 30.766241, 40.535419>,  <33.198704, 30.646891, 39.942135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939915, 30.766241, 40.535419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715328, 30.463459, 40.401691>,  <32.580574, 30.281790, 40.321453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715328, 30.463459, 40.401691>,  <32.939915, 30.766241, 40.535419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715328, 30.463459, 40.401691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020971, -0.416899, 0.908710,
		-0.827232, 0.503201, 0.249950,
		-0.561469, -0.756957, -0.334320,
		32.546886, 30.236372, 40.301395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319824, 30.754091, 40.994423>,  <32.939915, 30.766241, 40.535419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319824, 30.754091, 40.994423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344967, 30.382248, 40.849163>,  <32.360054, 30.159142, 40.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344967, 30.382248, 40.849163>,  <32.319824, 30.754091, 40.994423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344967, 30.382248, 40.849163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070666, -0.367102, 0.927493,
		-0.995518, -0.032635, -0.088766,
		0.062855, -0.929608, -0.363150,
		32.363823, 30.103365, 40.740219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779839, 30.334837, 41.325462>,  <32.319824, 30.754091, 40.994423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779839, 30.334837, 41.325462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054501, 30.066118, 41.214329>,  <32.219299, 29.904886, 41.147648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054501, 30.066118, 41.214329>,  <31.779839, 30.334837, 41.325462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054501, 30.066118, 41.214329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070838, -0.442188, 0.894120,
		-0.723524, -0.594271, -0.351220,
		0.686655, -0.671797, -0.277837,
		32.260498, 29.864578, 41.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537558, 29.668165, 41.535492>,  <31.779839, 30.334837, 41.325462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537558, 29.668165, 41.535492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932457, 29.643082, 41.476971>,  <32.169395, 29.628033, 41.441856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932457, 29.643082, 41.476971>,  <31.537558, 29.668165, 41.535492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932457, 29.643082, 41.476971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108822, -0.404921, 0.907853,
		-0.116172, -0.912199, -0.392935,
		0.987250, -0.062708, -0.146307,
		32.228630, 29.624269, 41.433079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679924, 29.130083, 41.845623>,  <31.537558, 29.668165, 41.535492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679924, 29.130083, 41.845623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039436, 29.304903, 41.831894>,  <32.255142, 29.409796, 41.823658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039436, 29.304903, 41.831894>,  <31.679924, 29.130083, 41.845623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039436, 29.304903, 41.831894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189702, -0.317151, 0.929208,
		0.395228, -0.841666, -0.367959,
		0.898781, 0.437051, -0.034319,
		32.309071, 29.436018, 41.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969072, 28.737375, 42.365803>,  <31.679924, 29.130083, 41.845623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969072, 28.737375, 42.365803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253540, 29.015467, 42.324043>,  <32.424221, 29.182322, 42.298988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253540, 29.015467, 42.324043>,  <31.969072, 28.737375, 42.365803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253540, 29.015467, 42.324043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315103, -0.182475, 0.931350,
		0.628451, -0.695242, -0.348839,
		0.711168, 0.695228, -0.104396,
		32.466892, 29.224035, 42.292725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657413, 28.440947, 42.469780>,  <31.969072, 28.737375, 42.365803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657413, 28.440947, 42.469780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728996, 28.831127, 42.521107>,  <32.771946, 29.065235, 42.551903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728996, 28.831127, 42.521107>,  <32.657413, 28.440947, 42.469780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728996, 28.831127, 42.521107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351847, -0.185251, 0.917543,
		0.918792, -0.119052, -0.376362,
		0.178956, 0.975453, 0.128319,
		32.782684, 29.123764, 42.559601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386436, 28.571800, 42.532764>,  <32.657413, 28.440947, 42.469780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386436, 28.571800, 42.532764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199642, 28.880547, 42.705341>,  <33.087566, 29.065794, 42.808887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199642, 28.880547, 42.705341>,  <33.386436, 28.571800, 42.532764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199642, 28.880547, 42.705341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451998, -0.210988, 0.866707,
		0.760012, 0.599753, -0.250354,
		-0.466989, 0.771868, 0.431441,
		33.059544, 29.112106, 42.834774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870846, 28.676264, 43.042511>,  <33.386436, 28.571800, 42.532764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870846, 28.676264, 43.042511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601410, 28.947060, 43.161144>,  <33.439747, 29.109537, 43.232327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601410, 28.947060, 43.161144>,  <33.870846, 28.676264, 43.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601410, 28.947060, 43.161144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448432, 0.055356, 0.892101,
		0.587524, 0.733909, -0.340870,
		-0.673590, 0.676988, 0.296586,
		33.399334, 29.150156, 43.250118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256981, 29.220190, 43.355499>,  <33.870846, 28.676264, 43.042511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256981, 29.220190, 43.355499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886730, 29.275167, 43.496536>,  <33.664581, 29.308153, 43.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886730, 29.275167, 43.496536>,  <34.256981, 29.220190, 43.355499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886730, 29.275167, 43.496536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364103, 0.069458, 0.928765,
		0.103161, 0.988071, -0.114335,
		-0.925628, 0.137442, 0.352595,
		33.609043, 29.316401, 43.602314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189926, 29.850273, 43.807922>,  <34.256981, 29.220190, 43.355499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189926, 29.850273, 43.807922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910702, 29.592402, 43.932568>,  <33.743168, 29.437679, 44.007355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910702, 29.592402, 43.932568>,  <34.189926, 29.850273, 43.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910702, 29.592402, 43.932568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364391, 0.054786, 0.929633,
		-0.616388, 0.762487, 0.196672,
		-0.698058, -0.644680, 0.311613,
		33.701283, 29.398998, 44.026051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966499, 30.061329, 44.508717>,  <34.189926, 29.850273, 43.807922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966499, 30.061329, 44.508717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859459, 29.676208, 44.493755>,  <33.795235, 29.445135, 44.484779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859459, 29.676208, 44.493755>,  <33.966499, 30.061329, 44.508717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859459, 29.676208, 44.493755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428292, -0.153634, 0.890485,
		-0.863107, 0.222280, 0.453474,
		-0.267606, -0.962802, -0.037402,
		33.779179, 29.387367, 44.482536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643040, 29.886700, 45.063034>,  <33.966499, 30.061329, 44.508717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643040, 29.886700, 45.063034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765175, 29.531212, 44.926247>,  <33.838455, 29.317919, 44.844173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765175, 29.531212, 44.926247>,  <33.643040, 29.886700, 45.063034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765175, 29.531212, 44.926247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409136, -0.201844, 0.889869,
		-0.859870, -0.411624, 0.301977,
		0.305339, -0.888721, -0.341970,
		33.856777, 29.264595, 44.823654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383671, 29.441484, 45.501335>,  <33.643040, 29.886700, 45.063034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383671, 29.441484, 45.501335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707275, 29.274616, 45.335701>,  <33.901440, 29.174496, 45.236320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707275, 29.274616, 45.335701>,  <33.383671, 29.441484, 45.501335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707275, 29.274616, 45.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393789, -0.138337, 0.908731,
		-0.436379, -0.898238, 0.052361,
		0.809014, -0.417171, -0.414084,
		33.949978, 29.149466, 45.211475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475784, 28.919241, 45.895485>,  <33.383671, 29.441484, 45.501335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475784, 28.919241, 45.895485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840958, 28.973204, 45.741417>,  <34.060062, 29.005581, 45.648975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840958, 28.973204, 45.741417>,  <33.475784, 28.919241, 45.895485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840958, 28.973204, 45.741417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403215, -0.152453, 0.902317,
		0.063008, -0.979060, -0.193575,
		0.912934, 0.134905, -0.385166,
		34.114838, 29.013676, 45.625866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888153, 28.463772, 46.198624>,  <33.475784, 28.919241, 45.895485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888153, 28.463772, 46.198624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186047, 28.668310, 46.027088>,  <34.364780, 28.791033, 45.924168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186047, 28.668310, 46.027088>,  <33.888153, 28.463772, 46.198624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186047, 28.668310, 46.027088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596885, -0.222947, 0.770729,
		0.298502, -0.829952, -0.471251,
		0.744731, 0.511347, -0.428836,
		34.409466, 28.821714, 45.898438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512375, 28.063808, 46.198383>,  <33.888153, 28.463772, 46.198624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512375, 28.063808, 46.198383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635765, 28.444012, 46.183525>,  <34.709801, 28.672132, 46.174610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635765, 28.444012, 46.183525>,  <34.512375, 28.063808, 46.198383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635765, 28.444012, 46.183525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649464, -0.181928, 0.738308,
		0.695009, -0.251873, -0.673440,
		0.308478, 0.950506, -0.037141,
		34.728310, 28.729164, 46.172382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293602, 28.009655, 46.196999>,  <34.512375, 28.063808, 46.198383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293602, 28.009655, 46.196999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175232, 28.369234, 46.326195>,  <35.104210, 28.584982, 46.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175232, 28.369234, 46.326195>,  <35.293602, 28.009655, 46.196999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175232, 28.369234, 46.326195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591799, -0.092880, 0.800717,
		0.749803, 0.428093, -0.504512,
		-0.295922, 0.898949, 0.322987,
		35.086456, 28.638918, 46.423092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947338, 28.254017, 46.038048>,  <35.293602, 28.009655, 46.196999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947338, 28.254017, 46.038048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317314, 28.214790, 45.891151>,  <36.539299, 28.191254, 45.803013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317314, 28.214790, 45.891151>,  <35.947338, 28.254017, 46.038048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317314, 28.214790, 45.891151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320370, 0.318802, -0.892036,
		0.204556, 0.942734, 0.263456,
		0.924943, -0.098068, -0.367237,
		36.594795, 28.185369, 45.780979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925282, 28.739204, 45.565964>,  <35.947338, 28.254017, 46.038048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925282, 28.739204, 45.565964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222324, 28.490835, 45.465576>,  <36.400551, 28.341814, 45.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222324, 28.490835, 45.465576>,  <35.925282, 28.739204, 45.565964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222324, 28.490835, 45.465576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261586, 0.076056, -0.962179,
		0.616528, 0.780173, -0.105945,
		0.742608, -0.620924, -0.250973,
		36.445107, 28.304558, 45.390285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300217, 29.078867, 45.011467>,  <35.925282, 28.739204, 45.565964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300217, 29.078867, 45.011467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379478, 28.688887, 44.971054>,  <36.427036, 28.454899, 44.946808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379478, 28.688887, 44.971054>,  <36.300217, 29.078867, 45.011467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379478, 28.688887, 44.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218696, 0.056499, -0.974156,
		0.955462, 0.215127, -0.202022,
		0.198154, -0.974950, -0.101030,
		36.438923, 28.396402, 44.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686619, 29.009474, 44.454002>,  <36.300217, 29.078867, 45.011467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686619, 29.009474, 44.454002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567413, 28.627766, 44.463448>,  <36.495888, 28.398741, 44.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567413, 28.627766, 44.463448>,  <36.686619, 29.009474, 44.454002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567413, 28.627766, 44.463448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027262, -0.016222, -0.999497,
		0.954171, -0.298511, -0.021181,
		-0.298017, -0.954268, 0.023617,
		36.478008, 28.341486, 44.470531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039616, 28.769642, 43.974258>,  <36.686619, 29.009474, 44.454002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039616, 28.769642, 43.974258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730564, 28.520515, 44.023487>,  <36.545132, 28.371040, 44.053024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730564, 28.520515, 44.023487>,  <37.039616, 28.769642, 43.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730564, 28.520515, 44.023487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106543, -0.063897, -0.992253,
		0.625855, -0.779754, -0.016988,
		-0.772628, -0.622817, 0.123068,
		36.498775, 28.333670, 44.060406>
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
