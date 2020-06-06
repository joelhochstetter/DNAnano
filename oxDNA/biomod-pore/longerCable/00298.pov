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
	<24.492006, 35.389683, 34.699898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213575, 35.217701, 34.929893>,  <24.046516, 35.114513, 35.067890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213575, 35.217701, 34.929893>,  <24.492006, 35.389683, 34.699898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213575, 35.217701, 34.929893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288817, -0.900891, -0.324007,
		0.657313, -0.059467, 0.751268,
		-0.696078, -0.429953, 0.574992,
		24.004751, 35.088715, 35.102390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673601, 35.007202, 35.277596>,  <24.492006, 35.389683, 34.699898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673601, 35.007202, 35.277596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734613, 34.748688, 35.576672>,  <24.771221, 34.593578, 35.756119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734613, 34.748688, 35.576672>,  <24.673601, 35.007202, 35.277596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734613, 34.748688, 35.576672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302406, -0.689737, -0.657885,
		0.940896, 0.326455, 0.090235,
		0.152532, -0.646289, 0.747693,
		24.780373, 34.554802, 35.800980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964830, 35.710964, 35.141037>,  <24.673601, 35.007202, 35.277596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964830, 35.710964, 35.141037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336821, 35.578163, 35.077888>,  <25.560015, 35.498482, 35.040001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336821, 35.578163, 35.077888>,  <24.964830, 35.710964, 35.141037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336821, 35.578163, 35.077888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271632, 0.331200, 0.903617,
		-0.247716, -0.883223, 0.398190,
		0.929975, -0.332001, -0.157868,
		25.615812, 35.478561, 35.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151918, 35.327484, 35.762615>,  <24.964830, 35.710964, 35.141037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151918, 35.327484, 35.762615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505917, 35.429657, 35.606903>,  <25.718315, 35.490959, 35.513474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505917, 35.429657, 35.606903>,  <25.151918, 35.327484, 35.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505917, 35.429657, 35.606903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282448, 0.370147, 0.884994,
		0.370147, -0.893166, 0.255432,
		-0.884994, -0.255432, 0.389282,
		25.771416, 35.506287, 35.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657011, 34.963448, 36.172962>,  <25.151918, 35.327484, 35.762615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657011, 34.963448, 36.172962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819954, 35.285793, 36.001080>,  <25.917719, 35.479198, 35.897949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819954, 35.285793, 36.001080>,  <25.657011, 34.963448, 36.172962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819954, 35.285793, 36.001080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157137, 0.401650, 0.902212,
		0.899649, -0.435045, 0.036984,
		0.407357, 0.805862, -0.429705,
		25.942162, 35.527554, 35.872169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570210, 35.760468, 36.201237>,  <25.657011, 34.963448, 36.172962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570210, 35.760468, 36.201237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558609, 36.045326, 35.920666>,  <25.551649, 36.216244, 35.752323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558609, 36.045326, 35.920666>,  <25.570210, 35.760468, 36.201237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558609, 36.045326, 35.920666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041224, 0.701978, 0.711005,
		0.998729, -0.008294, -0.049718,
		-0.029004, 0.712151, -0.701428,
		25.549908, 36.258972, 35.710236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090252, 36.346100, 36.379311>,  <25.570210, 35.760468, 36.201237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090252, 36.346100, 36.379311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809233, 36.522537, 36.155933>,  <25.640621, 36.628399, 36.021908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809233, 36.522537, 36.155933>,  <26.090252, 36.346100, 36.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809233, 36.522537, 36.155933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162182, 0.664845, 0.729163,
		0.692907, 0.602843, -0.395550,
		-0.702550, 0.441091, -0.558446,
		25.598467, 36.654865, 35.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300882, 37.014236, 36.370781>,  <26.090252, 36.346100, 36.379311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300882, 37.014236, 36.370781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901499, 36.999287, 36.354385>,  <25.661869, 36.990318, 36.344547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901499, 36.999287, 36.354385>,  <26.300882, 37.014236, 36.370781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901499, 36.999287, 36.354385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055242, 0.737133, 0.673486,
		0.005047, 0.674713, -0.738063,
		-0.998460, -0.037373, -0.040993,
		25.601961, 36.988075, 36.342087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093952, 37.768173, 36.398827>,  <26.300882, 37.014236, 36.370781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093952, 37.768173, 36.398827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769754, 37.548416, 36.480083>,  <25.575235, 37.416561, 36.528839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769754, 37.548416, 36.480083>,  <26.093952, 37.768173, 36.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769754, 37.548416, 36.480083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169436, 0.551877, 0.816532,
		-0.560706, 0.627374, -0.540379,
		-0.810494, -0.549394, 0.203141,
		25.526606, 37.383598, 36.541027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571661, 38.266018, 36.601494>,  <26.093952, 37.768173, 36.398827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571661, 38.266018, 36.601494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468399, 37.917431, 36.768299>,  <25.406441, 37.708279, 36.868382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468399, 37.917431, 36.768299>,  <25.571661, 38.266018, 36.601494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468399, 37.917431, 36.768299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070343, 0.447454, 0.891536,
		-0.963539, 0.200821, -0.176814,
		-0.258156, -0.871468, 0.417013,
		25.390953, 37.655991, 36.893402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922878, 38.482319, 36.974594>,  <25.571661, 38.266018, 36.601494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922878, 38.482319, 36.974594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057793, 38.134830, 37.119682>,  <25.138742, 37.926338, 37.206734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057793, 38.134830, 37.119682>,  <24.922878, 38.482319, 36.974594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057793, 38.134830, 37.119682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187328, 0.315657, 0.930198,
		-0.922576, -0.381691, -0.056268,
		0.337287, -0.868719, 0.362719,
		25.158979, 37.874214, 37.228497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372280, 38.188618, 37.437794>,  <24.922878, 38.482319, 36.974594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372280, 38.188618, 37.437794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740137, 38.049202, 37.510212>,  <24.960852, 37.965553, 37.553661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740137, 38.049202, 37.510212>,  <24.372280, 38.188618, 37.437794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740137, 38.049202, 37.510212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067151, 0.314631, 0.946836,
		-0.386974, -0.882908, 0.265943,
		0.919643, -0.348542, 0.181042,
		25.016029, 37.944641, 37.564526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995117, 38.487564, 37.692993>,  <24.372280, 38.188618, 37.437794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.995117, 38.487564, 37.692993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255835, 38.790871, 37.698654>,  <25.412266, 38.972855, 37.702049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255835, 38.790871, 37.698654>,  <24.995117, 38.487564, 37.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255835, 38.790871, 37.698654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416283, 0.342112, 0.842418,
		0.633934, -0.554973, 0.538639,
		0.651794, 0.758264, 0.014150,
		25.451372, 39.018349, 37.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.965029, 38.561398, 38.414116>,  <24.995117, 38.487564, 37.692993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.965029, 38.561398, 38.414116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890589, 38.168720, 38.430374>,  <24.845924, 37.933113, 38.440128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890589, 38.168720, 38.430374>,  <24.965029, 38.561398, 38.414116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890589, 38.168720, 38.430374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405169, -0.114365, -0.907061,
		0.895100, -0.152337, 0.419033,
		-0.186102, -0.981689, 0.040646,
		24.834759, 37.874214, 38.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573009, 38.104446, 38.395786>,  <24.965029, 38.561398, 38.414116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573009, 38.104446, 38.395786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251608, 37.920712, 38.244320>,  <25.058767, 37.810471, 38.153439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251608, 37.920712, 38.244320>,  <25.573009, 38.104446, 38.395786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251608, 37.920712, 38.244320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558370, -0.360978, -0.746939,
		0.206409, -0.811604, 0.546529,
		-0.803504, -0.459341, -0.378666,
		25.010557, 37.782909, 38.130718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846233, 37.515644, 38.097588>,  <25.573009, 38.104446, 38.395786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846233, 37.515644, 38.097588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473204, 37.521381, 37.953308>,  <25.249386, 37.524826, 37.866741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473204, 37.521381, 37.953308>,  <25.846233, 37.515644, 38.097588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473204, 37.521381, 37.953308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319768, -0.430822, -0.843884,
		-0.167504, -0.902323, 0.397185,
		-0.932572, 0.014347, -0.360699,
		25.193432, 37.525684, 37.845097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527248, 36.736923, 37.994926>,  <25.846233, 37.515644, 38.097588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527248, 36.736923, 37.994926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431021, 37.047894, 37.762466>,  <25.373283, 37.234474, 37.622990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431021, 37.047894, 37.762466>,  <25.527248, 36.736923, 37.994926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431021, 37.047894, 37.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160743, -0.558554, -0.813743,
		-0.957229, -0.289178, 0.009406,
		-0.240571, 0.777427, -0.581148,
		25.358849, 37.281120, 37.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043079, 36.418816, 37.430954>,  <25.527248, 36.736923, 37.994926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043079, 36.418816, 37.430954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143875, 36.776962, 37.284084>,  <25.204351, 36.991852, 37.195961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143875, 36.776962, 37.284084>,  <25.043079, 36.418816, 37.430954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143875, 36.776962, 37.284084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130613, -0.344483, -0.929662,
		-0.958876, 0.282222, 0.030141,
		0.251988, 0.895367, -0.367179,
		25.219471, 37.045574, 37.173931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533186, 36.717224, 37.050076>,  <25.043079, 36.418816, 37.430954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533186, 36.717224, 37.050076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861832, 36.876057, 36.886478>,  <25.059019, 36.971355, 36.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861832, 36.876057, 36.886478>,  <24.533186, 36.717224, 37.050076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861832, 36.876057, 36.886478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308446, -0.293694, -0.904768,
		-0.479387, 0.869522, -0.118825,
		0.821614, 0.397083, -0.408993,
		25.108316, 36.995182, 36.763779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.315092, 36.896652, 36.434654>,  <24.533186, 36.717224, 37.050076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.315092, 36.896652, 36.434654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713238, 36.904705, 36.397034>,  <24.952126, 36.909538, 36.374462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713238, 36.904705, 36.397034>,  <24.315092, 36.896652, 36.434654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713238, 36.904705, 36.397034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083829, -0.297875, -0.950917,
		-0.047161, 0.954392, -0.294807,
		0.995364, 0.020132, -0.094054,
		25.011847, 36.910744, 36.368816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522591, 36.647800, 35.757095>,  <24.315092, 36.896652, 36.434654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522591, 36.647800, 35.757095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855453, 36.860222, 35.820965>,  <25.055172, 36.987675, 35.859287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855453, 36.860222, 35.820965>,  <24.522591, 36.647800, 35.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855453, 36.860222, 35.820965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342663, -0.266047, -0.901000,
		-0.436000, 0.804487, -0.403366,
		0.832157, 0.531055, 0.159671,
		25.105101, 37.019539, 35.868866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604485, 37.053070, 35.222679>,  <24.522591, 36.647800, 35.757095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604485, 37.053070, 35.222679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937681, 36.950779, 35.418938>,  <25.137600, 36.889404, 35.536694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937681, 36.950779, 35.418938>,  <24.604485, 37.053070, 35.222679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937681, 36.950779, 35.418938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289651, -0.554004, -0.780501,
		0.471411, 0.792266, -0.387410,
		0.832991, -0.255724, 0.490644,
		25.187578, 36.874062, 35.566132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208021, 37.204323, 34.847912>,  <24.604485, 37.053070, 35.222679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208021, 37.204323, 34.847912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315329, 36.911873, 35.098827>,  <25.379713, 36.736404, 35.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315329, 36.911873, 35.098827>,  <25.208021, 37.204323, 34.847912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315329, 36.911873, 35.098827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187522, -0.599066, -0.778431,
		0.944917, 0.326457, -0.023608,
		0.268267, -0.731126, 0.627286,
		25.395809, 36.692535, 35.287014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961899, 36.947830, 34.802811>,  <25.208021, 37.204323, 34.847912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961899, 36.947830, 34.802811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720808, 36.648598, 34.913868>,  <25.576153, 36.469059, 34.980503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720808, 36.648598, 34.913868>,  <25.961899, 36.947830, 34.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720808, 36.648598, 34.913868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256639, -0.511200, -0.820251,
		0.755550, -0.423134, 0.500102,
		-0.602728, -0.748086, 0.277644,
		25.539989, 36.424171, 34.997162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385420, 36.614082, 35.259930>,  <25.961899, 36.947830, 34.802811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385420, 36.614082, 35.259930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268780, 36.278870, 35.444393>,  <26.198795, 36.077740, 35.555069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268780, 36.278870, 35.444393>,  <26.385420, 36.614082, 35.259930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268780, 36.278870, 35.444393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098062, -0.505758, -0.857084,
		0.951500, -0.204706, 0.229660,
		-0.291602, -0.838036, 0.461155,
		26.181299, 36.027458, 35.582741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858082, 35.962009, 35.014606>,  <26.385420, 36.614082, 35.259930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858082, 35.962009, 35.014606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516430, 35.814365, 35.161156>,  <26.311440, 35.725780, 35.249084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.516430, 35.814365, 35.161156>,  <26.858082, 35.962009, 35.014606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.516430, 35.814365, 35.161156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106293, -0.565699, -0.817732,
		0.509085, -0.737390, 0.443946,
		-0.854128, -0.369107, 0.366369,
		26.260191, 35.703632, 35.271065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930899, 35.280476, 34.786644>,  <26.858082, 35.962009, 35.014606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930899, 35.280476, 34.786644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543663, 35.348103, 34.860638>,  <26.311321, 35.388680, 34.905033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543663, 35.348103, 34.860638>,  <26.930899, 35.280476, 34.786644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543663, 35.348103, 34.860638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245514, -0.491779, -0.835390,
		-0.050266, -0.854148, 0.517594,
		-0.968089, 0.169069, 0.184986,
		26.253237, 35.398823, 34.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537849, 34.641026, 34.922054>,  <26.930899, 35.280476, 34.786644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537849, 34.641026, 34.922054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293772, 34.907417, 34.750412>,  <26.147326, 35.067253, 34.647427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293772, 34.907417, 34.750412>,  <26.537849, 34.641026, 34.922054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293772, 34.907417, 34.750412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141503, -0.624538, -0.768068,
		-0.779514, -0.407949, 0.475326,
		-0.610192, 0.665981, -0.429110,
		26.110714, 35.107212, 34.621677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682030, 34.459610, 34.213486>,  <26.537849, 34.641026, 34.922054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682030, 34.459610, 34.213486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037413, 34.279007, 34.180553>,  <27.250643, 34.170647, 34.160793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037413, 34.279007, 34.180553>,  <26.682030, 34.459610, 34.213486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037413, 34.279007, 34.180553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176067, -0.169636, -0.969652,
		0.423839, 0.875993, -0.230210,
		0.888460, -0.451509, -0.082335,
		27.303951, 34.143555, 34.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849806, 34.589127, 33.595093>,  <26.682030, 34.459610, 34.213486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849806, 34.589127, 33.595093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096037, 34.280922, 33.661274>,  <27.243776, 34.096001, 33.700981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096037, 34.280922, 33.661274>,  <26.849806, 34.589127, 33.595093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096037, 34.280922, 33.661274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094241, -0.136466, -0.986152,
		0.782420, 0.622646, -0.011391,
		0.615579, -0.770512, 0.165452,
		27.280710, 34.049767, 33.710911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558317, 34.703651, 33.137554>,  <26.849806, 34.589127, 33.595093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558317, 34.703651, 33.137554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456768, 34.327744, 33.229095>,  <27.395840, 34.102200, 33.284019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456768, 34.327744, 33.229095>,  <27.558317, 34.703651, 33.137554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456768, 34.327744, 33.229095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078217, -0.255776, -0.963566,
		0.964070, -0.226722, 0.138441,
		-0.253871, -0.939774, 0.228853,
		27.380606, 34.045811, 33.297752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993761, 34.234688, 32.793713>,  <27.558317, 34.703651, 33.137554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993761, 34.234688, 32.793713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672890, 34.004253, 32.856487>,  <27.480368, 33.865993, 32.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672890, 34.004253, 32.856487>,  <27.993761, 34.234688, 32.793713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672890, 34.004253, 32.856487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159142, -0.459621, -0.873740,
		0.575486, -0.675920, 0.460378,
		-0.802178, -0.576091, 0.156938,
		27.432236, 33.831425, 32.903568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136198, 33.625492, 32.461838>,  <27.993761, 34.234688, 32.793713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136198, 33.625492, 32.461838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742531, 33.606899, 32.530254>,  <27.506330, 33.595745, 32.571304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742531, 33.606899, 32.530254>,  <28.136198, 33.625492, 32.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742531, 33.606899, 32.530254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111732, -0.586431, -0.802256,
		0.137597, -0.808664, 0.571952,
		-0.984166, -0.046483, 0.171044,
		27.447281, 33.592953, 32.581566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980555, 32.929249, 32.299610>,  <28.136198, 33.625492, 32.461838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980555, 32.929249, 32.299610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661253, 33.167393, 32.263088>,  <27.469671, 33.310280, 32.241173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661253, 33.167393, 32.263088>,  <27.980555, 32.929249, 32.299610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661253, 33.167393, 32.263088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199858, -0.404819, -0.892289,
		-0.568194, -0.694025, 0.442136,
		-0.798256, 0.595357, -0.091309,
		27.421776, 33.346001, 32.235695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273392, 32.759071, 32.442894>,  <27.980555, 32.929249, 32.299610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273392, 32.759071, 32.442894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943308, 32.980022, 32.395718>,  <26.745258, 33.112595, 32.367413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943308, 32.980022, 32.395718>,  <27.273392, 32.759071, 32.442894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943308, 32.980022, 32.395718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097011, -0.344308, -0.933831,
		-0.556433, -0.759165, 0.337713,
		-0.825209, 0.552377, -0.117937,
		26.695745, 33.145737, 32.360336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547192, 32.541473, 32.374798>,  <27.273392, 32.759071, 32.442894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547192, 32.541473, 32.374798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597908, 32.867252, 32.148315>,  <26.628338, 33.062721, 32.012424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597908, 32.867252, 32.148315>,  <26.547192, 32.541473, 32.374798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597908, 32.867252, 32.148315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272285, -0.520314, -0.809404,
		-0.953827, 0.256795, 0.155792,
		0.126790, 0.814451, -0.566210,
		26.635944, 33.111588, 31.978453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350952, 32.426109, 31.803108>,  <26.547192, 32.541473, 32.374798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350952, 32.426109, 31.803108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487535, 32.759617, 31.629566>,  <26.569487, 32.959721, 31.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487535, 32.759617, 31.629566>,  <26.350952, 32.426109, 31.803108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487535, 32.759617, 31.629566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069546, -0.437921, -0.896320,
		-0.937320, 0.336231, -0.091547,
		0.341460, 0.833771, -0.433855,
		26.589973, 33.009747, 31.499409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867657, 32.626198, 31.361856>,  <26.350952, 32.426109, 31.803108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867657, 32.626198, 31.361856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205456, 32.786106, 31.219307>,  <26.408136, 32.882050, 31.133778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205456, 32.786106, 31.219307>,  <25.867657, 32.626198, 31.361856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205456, 32.786106, 31.219307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037673, -0.619438, -0.784141,
		-0.534230, 0.675632, -0.508055,
		0.844499, 0.399772, -0.356375,
		26.458805, 32.906036, 31.112394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695753, 32.677925, 30.632048>,  <25.867657, 32.626198, 31.361856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695753, 32.677925, 30.632048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091299, 32.684059, 30.691254>,  <26.328627, 32.687740, 30.726778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091299, 32.684059, 30.691254>,  <25.695753, 32.677925, 30.632048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091299, 32.684059, 30.691254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134619, -0.516083, -0.845894,
		0.063415, 0.856402, -0.512401,
		0.988866, 0.015337, 0.148016,
		26.387959, 32.688660, 30.735659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811497, 32.305447, 30.014223>,  <25.695753, 32.677925, 30.632048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811497, 32.305447, 30.014223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080330, 32.433578, 29.747181>,  <26.241629, 32.510456, 29.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080330, 32.433578, 29.747181>,  <25.811497, 32.305447, 30.014223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080330, 32.433578, 29.747181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530564, 0.420601, 0.735933,
		0.516535, -0.848814, 0.112723,
		0.672081, 0.320329, -0.667605,
		26.281954, 32.529678, 29.546900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318188, 31.938496, 30.155750>,  <25.811497, 32.305447, 30.014223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318188, 31.938496, 30.155750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377165, 32.303963, 30.004238>,  <26.412550, 32.523243, 29.913330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377165, 32.303963, 30.004238>,  <26.318188, 31.938496, 30.155750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377165, 32.303963, 30.004238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574085, 0.232800, 0.785004,
		0.805412, -0.333194, -0.490197,
		0.147441, 0.913666, -0.378781,
		26.421398, 32.578064, 29.890604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970547, 32.184082, 30.432661>,  <26.318188, 31.938496, 30.155750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970547, 32.184082, 30.432661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767157, 32.504066, 30.305210>,  <26.645123, 32.696056, 30.228741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767157, 32.504066, 30.305210>,  <26.970547, 32.184082, 30.432661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767157, 32.504066, 30.305210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292158, 0.508359, 0.810071,
		0.809998, 0.318812, -0.492201,
		-0.508475, 0.799956, -0.318626,
		26.614614, 32.744053, 30.209621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326818, 32.834629, 30.524481>,  <26.970547, 32.184082, 30.432661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326818, 32.834629, 30.524481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936136, 32.919189, 30.539181>,  <26.701727, 32.969925, 30.548000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936136, 32.919189, 30.539181>,  <27.326818, 32.834629, 30.524481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936136, 32.919189, 30.539181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140638, 0.501354, 0.853736,
		0.162058, 0.839019, -0.519408,
		-0.976708, 0.211403, 0.036750,
		26.643124, 32.982609, 30.550205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313789, 33.684135, 30.572620>,  <27.326818, 32.834629, 30.524481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313789, 33.684135, 30.572620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058760, 33.441566, 30.762674>,  <26.905741, 33.296024, 30.876707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058760, 33.441566, 30.762674>,  <27.313789, 33.684135, 30.572620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058760, 33.441566, 30.762674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102447, 0.544530, 0.832461,
		-0.763545, 0.579433, -0.285054,
		-0.637576, -0.606419, 0.475135,
		26.867487, 33.259640, 30.905214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246952, 34.085316, 31.155287>,  <27.313789, 33.684135, 30.572620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246952, 34.085316, 31.155287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082136, 33.734299, 31.253387>,  <26.983246, 33.523689, 31.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082136, 33.734299, 31.253387>,  <27.246952, 34.085316, 31.155287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082136, 33.734299, 31.253387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137092, 0.206393, 0.968818,
		-0.900794, 0.432814, 0.035262,
		-0.412040, -0.877539, 0.245252,
		26.958525, 33.471039, 31.326963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647331, 34.212147, 31.582102>,  <27.246952, 34.085316, 31.155287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647331, 34.212147, 31.582102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741966, 33.834499, 31.673895>,  <26.798746, 33.607910, 31.728970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741966, 33.834499, 31.673895>,  <26.647331, 34.212147, 31.582102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741966, 33.834499, 31.673895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025977, 0.229956, 0.972854,
		-0.971263, -0.236124, 0.029879,
		0.236585, -0.944122, 0.229481,
		26.812943, 33.551262, 31.742739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213013, 33.840115, 32.154629>,  <26.647331, 34.212147, 31.582102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213013, 33.840115, 32.154629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590012, 33.706841, 32.165100>,  <26.816212, 33.626877, 32.171383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590012, 33.706841, 32.165100>,  <26.213013, 33.840115, 32.154629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590012, 33.706841, 32.165100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007828, 0.100305, 0.994926,
		-0.334119, -0.937511, 0.097146,
		0.942499, -0.333184, 0.026175,
		26.872761, 33.606884, 32.172951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240919, 33.528244, 32.848389>,  <26.213013, 33.840115, 32.154629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240919, 33.528244, 32.848389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628880, 33.524704, 32.751053>,  <26.861656, 33.522579, 32.692654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628880, 33.524704, 32.751053>,  <26.240919, 33.528244, 32.848389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628880, 33.524704, 32.751053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243436, 0.057335, 0.968221,
		0.005380, -0.998316, 0.057765,
		0.969902, -0.008853, -0.243335,
		26.919849, 33.522049, 32.678051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496771, 33.030670, 33.345444>,  <26.240919, 33.528244, 32.848389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496771, 33.030670, 33.345444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804806, 33.245014, 33.206982>,  <26.989626, 33.373619, 33.123905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804806, 33.245014, 33.206982>,  <26.496771, 33.030670, 33.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804806, 33.245014, 33.206982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385448, 0.041538, 0.921794,
		0.508327, -0.843287, -0.174557,
		0.770087, 0.535856, -0.346158,
		27.035831, 33.405769, 33.103134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251072, 32.694668, 33.308056>,  <26.496771, 33.030670, 33.345444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251072, 32.694668, 33.308056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259008, 33.087986, 33.380424>,  <27.263771, 33.323978, 33.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259008, 33.087986, 33.380424>,  <27.251072, 32.694668, 33.308056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259008, 33.087986, 33.380424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333688, -0.177096, 0.925899,
		0.942475, 0.042000, -0.331629,
		0.019843, 0.983297, 0.180923,
		27.264961, 33.382977, 33.434700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833818, 32.871819, 33.798615>,  <27.251072, 32.694668, 33.308056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833818, 32.871819, 33.798615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663725, 33.233734, 33.789318>,  <27.561668, 33.450882, 33.783741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663725, 33.233734, 33.789318>,  <27.833818, 32.871819, 33.798615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663725, 33.233734, 33.789318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299206, 0.164764, 0.939856,
		0.854198, 0.392703, -0.340781,
		-0.425232, 0.904786, -0.023242,
		27.536156, 33.505169, 33.782345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269463, 33.289845, 34.229744>,  <27.833818, 32.871819, 33.798615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269463, 33.289845, 34.229744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902666, 33.448555, 34.246201>,  <27.682589, 33.543781, 34.256077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902666, 33.448555, 34.246201>,  <28.269463, 33.289845, 34.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902666, 33.448555, 34.246201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231009, 0.444119, 0.865675,
		0.325206, 0.803323, -0.498913,
		-0.916993, 0.396776, 0.041145,
		27.627567, 33.567589, 34.258545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301142, 34.032379, 34.168392>,  <28.269463, 33.289845, 34.229744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301142, 34.032379, 34.168392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011583, 33.857887, 34.382191>,  <27.837849, 33.753193, 34.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011583, 33.857887, 34.382191>,  <28.301142, 34.032379, 34.168392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011583, 33.857887, 34.382191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290051, 0.510504, 0.809479,
		-0.625976, 0.741009, -0.243024,
		-0.723896, -0.436225, 0.534493,
		27.794415, 33.727020, 34.542538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997221, 33.927097, 34.180553>,  <28.301142, 34.032379, 34.168392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997221, 33.927097, 34.180553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368555, 34.052563, 34.100746>,  <29.591356, 34.127842, 34.052860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368555, 34.052563, 34.100746>,  <28.997221, 33.927097, 34.180553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368555, 34.052563, 34.100746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143010, -0.796737, -0.587161,
		-0.343136, 0.516549, -0.784497,
		0.928335, 0.313667, -0.199517,
		29.647055, 34.146664, 34.040890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170412, 34.320515, 33.618279>,  <28.997221, 33.927097, 34.180553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170412, 34.320515, 33.618279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510998, 34.119194, 33.677189>,  <29.715349, 33.998402, 33.712536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510998, 34.119194, 33.677189>,  <29.170412, 34.320515, 33.618279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510998, 34.119194, 33.677189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295549, -0.692547, -0.658050,
		0.433192, 0.516781, -0.738432,
		0.851466, -0.503305, 0.147272,
		29.766438, 33.968201, 33.721371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547794, 34.244644, 32.941872>,  <29.170412, 34.320515, 33.618279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547794, 34.244644, 32.941872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674072, 33.951611, 33.183086>,  <29.749840, 33.775791, 33.327816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674072, 33.951611, 33.183086>,  <29.547794, 34.244644, 32.941872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674072, 33.951611, 33.183086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221365, -0.674863, -0.703958,
		0.922677, 0.088747, -0.375221,
		0.315697, -0.732587, 0.603035,
		29.768782, 33.731834, 33.363998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825827, 33.833511, 32.448380>,  <29.547794, 34.244644, 32.941872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825827, 33.833511, 32.448380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761242, 33.620094, 32.780464>,  <29.722490, 33.492043, 32.979717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761242, 33.620094, 32.780464>,  <29.825827, 33.833511, 32.448380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761242, 33.620094, 32.780464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580865, -0.628719, -0.517019,
		0.797826, -0.565722, -0.208404,
		-0.161462, -0.533545, 0.830216,
		29.712803, 33.460030, 33.029530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015724, 33.139988, 32.383450>,  <29.825827, 33.833511, 32.448380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015724, 33.139988, 32.383450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712049, 33.185509, 32.639790>,  <29.529844, 33.212822, 32.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712049, 33.185509, 32.639790>,  <30.015724, 33.139988, 32.383450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712049, 33.185509, 32.639790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588413, -0.540866, -0.601028,
		0.278216, -0.833375, 0.477579,
		-0.759187, 0.113798, 0.640846,
		29.484293, 33.219646, 32.832043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774824, 32.509533, 32.773266>,  <30.015724, 33.139988, 32.383450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774824, 32.509533, 32.773266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511454, 32.796230, 32.681393>,  <29.353432, 32.968250, 32.626270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511454, 32.796230, 32.681393>,  <29.774824, 32.509533, 32.773266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511454, 32.796230, 32.681393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548619, -0.665963, -0.505481,
		-0.515259, -0.206815, 0.831707,
		-0.658426, 0.716744, -0.229681,
		29.313927, 33.011253, 32.612488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369568, 32.070122, 32.244801>,  <29.774824, 32.509533, 32.773266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369568, 32.070122, 32.244801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350336, 31.827892, 32.562534>,  <29.338797, 31.682554, 32.753174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350336, 31.827892, 32.562534>,  <29.369568, 32.070122, 32.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350336, 31.827892, 32.562534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188713, 0.786438, 0.588134,
		-0.980854, -0.121623, -0.152094,
		-0.048082, -0.605576, 0.794333,
		29.335911, 31.646219, 32.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762981, 32.385387, 32.497974>,  <29.369568, 32.070122, 32.244801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762981, 32.385387, 32.497974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981812, 32.225861, 32.792362>,  <29.113110, 32.130146, 32.968994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981812, 32.225861, 32.792362>,  <28.762981, 32.385387, 32.497974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981812, 32.225861, 32.792362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004458, 0.880585, 0.473867,
		-0.837070, -0.255960, 0.483526,
		0.547077, -0.398815, 0.735971,
		29.145935, 32.106216, 33.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573553, 32.524673, 33.201363>,  <28.762981, 32.385387, 32.497974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573553, 32.524673, 33.201363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968065, 32.476025, 33.156708>,  <29.204773, 32.446835, 33.129917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968065, 32.476025, 33.156708>,  <28.573553, 32.524673, 33.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968065, 32.476025, 33.156708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161792, 0.846503, 0.507205,
		0.032813, -0.518307, 0.854565,
		0.986279, -0.121619, -0.111635,
		29.263948, 32.439541, 33.123219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029358, 32.653332, 33.784988>,  <28.573553, 32.524673, 33.201363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029358, 32.653332, 33.784988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279982, 32.725105, 33.481613>,  <29.430355, 32.768169, 33.299587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.279982, 32.725105, 33.481613>,  <29.029358, 32.653332, 33.784988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279982, 32.725105, 33.481613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267878, 0.864268, 0.425772,
		0.731893, -0.469940, 0.493447,
		0.626557, 0.179436, -0.758438,
		29.467949, 32.778934, 33.254082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660652, 32.553032, 34.049751>,  <29.029358, 32.653332, 33.784988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660652, 32.553032, 34.049751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670044, 32.813404, 33.746243>,  <29.675678, 32.969627, 33.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670044, 32.813404, 33.746243>,  <29.660652, 32.553032, 34.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670044, 32.813404, 33.746243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455500, 0.668658, 0.587721,
		0.889926, -0.359420, -0.280800,
		0.023480, 0.650933, -0.758772,
		29.677088, 33.008682, 33.518612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269390, 32.740265, 34.098289>,  <29.660652, 32.553032, 34.049751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269390, 32.740265, 34.098289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106544, 33.032146, 33.878548>,  <30.008837, 33.207275, 33.746700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106544, 33.032146, 33.878548>,  <30.269390, 32.740265, 34.098289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106544, 33.032146, 33.878548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392584, 0.682863, 0.616097,
		0.824703, 0.035153, -0.564473,
		-0.407116, 0.729700, -0.549358,
		29.984409, 33.251057, 33.713741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800266, 33.305748, 34.041740>,  <30.269390, 32.740265, 34.098289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800266, 33.305748, 34.041740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459742, 33.493088, 33.947155>,  <30.255426, 33.605492, 33.890404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459742, 33.493088, 33.947155>,  <30.800266, 33.305748, 34.041740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459742, 33.493088, 33.947155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366028, 0.853074, 0.371872,
		0.375885, 0.230028, -0.897662,
		-0.851313, 0.468350, -0.236461,
		30.204348, 33.633595, 33.876217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901546, 33.950443, 33.705261>,  <30.800266, 33.305748, 34.041740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901546, 33.950443, 33.705261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551447, 33.998402, 33.892693>,  <30.341387, 34.027176, 34.005150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551447, 33.998402, 33.892693>,  <30.901546, 33.950443, 33.705261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551447, 33.998402, 33.892693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316605, 0.874417, 0.367637,
		-0.365653, 0.470128, -0.803292,
		-0.875248, 0.119898, 0.468577,
		30.288872, 34.034370, 34.033264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612391, 33.791782, 33.865150>,  <30.901546, 33.950443, 33.705261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612391, 33.791782, 33.865150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529947, 33.570210, 34.187809>,  <31.480480, 33.437267, 34.381405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529947, 33.570210, 34.187809>,  <31.612391, 33.791782, 33.865150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529947, 33.570210, 34.187809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771631, -0.414931, -0.482097,
		0.601751, -0.721800, -0.341908,
		-0.206110, -0.553929, 0.806648,
		31.468115, 33.404030, 34.429802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399170, 34.466759, 33.673531>,  <31.612391, 33.791782, 33.865150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399170, 34.466759, 33.673531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696222, 34.576588, 33.429199>,  <31.874453, 34.642487, 33.282600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696222, 34.576588, 33.429199>,  <31.399170, 34.466759, 33.673531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696222, 34.576588, 33.429199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370649, -0.928172, 0.033403,
		-0.557782, -0.251209, -0.791058,
		0.742629, 0.274574, -0.610828,
		31.919010, 34.658958, 33.245953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527765, 34.007423, 33.168495>,  <31.399170, 34.466759, 33.673531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527765, 34.007423, 33.168495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888069, 34.181133, 33.166046>,  <32.104252, 34.285358, 33.164577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888069, 34.181133, 33.166046>,  <31.527765, 34.007423, 33.168495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888069, 34.181133, 33.166046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430494, -0.894606, -0.119811,
		-0.057512, 0.105283, -0.992778,
		0.900759, 0.434275, -0.006127,
		32.158298, 34.311417, 33.164207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842604, 33.770145, 32.541801>,  <31.527765, 34.007423, 33.168495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842604, 33.770145, 32.541801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139168, 33.885685, 32.784084>,  <32.317104, 33.955009, 32.929455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139168, 33.885685, 32.784084>,  <31.842604, 33.770145, 32.541801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139168, 33.885685, 32.784084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560486, -0.762899, -0.322244,
		0.369012, 0.578404, -0.727516,
		0.741408, 0.288850, 0.605706,
		32.361591, 33.972340, 32.965797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363537, 34.011631, 32.130005>,  <31.842604, 33.770145, 32.541801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363537, 34.011631, 32.130005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513348, 33.882153, 32.477554>,  <32.603233, 33.804466, 32.686085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513348, 33.882153, 32.477554>,  <32.363537, 34.011631, 32.130005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513348, 33.882153, 32.477554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665861, -0.558229, -0.494984,
		0.645257, 0.763938, 0.006462,
		0.374530, -0.323695, 0.868878,
		32.625706, 33.785046, 32.738216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049599, 33.910206, 31.954571>,  <32.363537, 34.011631, 32.130005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049599, 33.910206, 31.954571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990116, 33.724152, 32.303635>,  <32.954426, 33.612518, 32.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990116, 33.724152, 32.303635>,  <33.049599, 33.910206, 31.954571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990116, 33.724152, 32.303635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634828, -0.721524, -0.276401,
		0.758209, 0.512887, 0.402575,
		-0.148705, -0.465135, 0.872660,
		32.945503, 33.584610, 32.565434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719547, 33.866310, 32.255581>,  <33.049599, 33.910206, 31.954571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719547, 33.866310, 32.255581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498169, 33.571423, 32.410606>,  <33.365341, 33.394489, 32.503620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498169, 33.571423, 32.410606>,  <33.719547, 33.866310, 32.255581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498169, 33.571423, 32.410606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642258, -0.674024, -0.364960,
		0.530281, 0.046928, 0.846522,
		-0.553450, -0.737217, 0.387562,
		33.332134, 33.350258, 32.526875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258904, 33.383385, 32.535973>,  <33.719547, 33.866310, 32.255581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258904, 33.383385, 32.535973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958420, 33.120010, 32.554493>,  <33.778130, 32.961987, 32.565605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958420, 33.120010, 32.554493>,  <34.258904, 33.383385, 32.535973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958420, 33.120010, 32.554493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583453, -0.695182, -0.419887,
		0.308655, -0.288410, 0.906395,
		-0.751209, -0.658439, 0.046298,
		33.733059, 32.922478, 32.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539417, 32.762119, 32.706329>,  <34.258904, 33.383385, 32.535973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539417, 32.762119, 32.706329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195782, 32.639759, 32.542183>,  <33.989601, 32.566345, 32.443695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195782, 32.639759, 32.542183>,  <34.539417, 32.762119, 32.706329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195782, 32.639759, 32.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501862, -0.660911, -0.557970,
		-0.100535, -0.685291, 0.721297,
		-0.859085, -0.305896, -0.410366,
		33.938057, 32.547989, 32.419071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451130, 32.001179, 32.865406>,  <34.539417, 32.762119, 32.706329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451130, 32.001179, 32.865406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218056, 32.084942, 32.551304>,  <34.078209, 32.135201, 32.362843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218056, 32.084942, 32.551304>,  <34.451130, 32.001179, 32.865406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218056, 32.084942, 32.551304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368748, -0.792924, -0.485074,
		-0.724223, -0.572208, 0.384810,
		-0.582689, 0.209404, -0.785254,
		34.043251, 32.147762, 32.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075562, 31.391869, 32.665298>,  <34.451130, 32.001179, 32.865406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075562, 31.391869, 32.665298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062073, 31.605829, 32.327602>,  <34.053982, 31.734205, 32.124985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062073, 31.605829, 32.327602>,  <34.075562, 31.391869, 32.665298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062073, 31.605829, 32.327602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361506, -0.780998, -0.509269,
		-0.931760, -0.322369, -0.167037,
		-0.033717, 0.534902, -0.844241,
		34.051956, 31.766300, 32.074329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798027, 30.957317, 32.125919>,  <34.075562, 31.391869, 32.665298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798027, 30.957317, 32.125919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983330, 31.246841, 31.921373>,  <34.094513, 31.420555, 31.798647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983330, 31.246841, 31.921373>,  <33.798027, 30.957317, 32.125919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983330, 31.246841, 31.921373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300940, -0.671209, -0.677432,
		-0.833562, 0.159937, -0.528767,
		0.463259, 0.723809, -0.511363,
		34.122307, 31.463984, 31.767965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728481, 30.811314, 31.330519>,  <33.798027, 30.957317, 32.125919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728481, 30.811314, 31.330519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055561, 31.037695, 31.372606>,  <34.251808, 31.173523, 31.397860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055561, 31.037695, 31.372606>,  <33.728481, 30.811314, 31.330519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055561, 31.037695, 31.372606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469958, -0.550756, -0.689788,
		-0.332436, 0.613486, -0.716325,
		0.817696, 0.565952, 0.105221,
		34.300869, 31.207481, 31.404173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022339, 30.690107, 30.695833>,  <33.728481, 30.811314, 31.330519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022339, 30.690107, 30.695833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314400, 30.886168, 30.886257>,  <34.489635, 31.003803, 31.000511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314400, 30.886168, 30.886257>,  <34.022339, 30.690107, 30.695833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314400, 30.886168, 30.886257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659864, -0.324957, -0.677482,
		-0.177367, 0.808800, -0.560699,
		0.730151, 0.490148, 0.476061,
		34.533443, 31.033213, 31.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334774, 31.076296, 30.167400>,  <34.022339, 30.690107, 30.695833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334774, 31.076296, 30.167400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603432, 31.042751, 30.461845>,  <34.764626, 31.022625, 30.638512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603432, 31.042751, 30.461845>,  <34.334774, 31.076296, 30.167400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603432, 31.042751, 30.461845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718039, -0.171087, -0.674647,
		0.182515, 0.981681, -0.054695,
		0.671646, -0.083860, 0.736111,
		34.804924, 31.017593, 30.682678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881939, 31.375555, 29.916523>,  <34.334774, 31.076296, 30.167400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881939, 31.375555, 29.916523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059525, 31.143559, 30.189728>,  <35.166077, 31.004360, 30.353651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059525, 31.143559, 30.189728>,  <34.881939, 31.375555, 29.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059525, 31.143559, 30.189728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724139, -0.216713, -0.654720,
		0.527750, 0.785268, 0.323782,
		0.443963, -0.579991, 0.683013,
		35.192715, 30.969561, 30.394632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592590, 31.599102, 30.076620>,  <34.881939, 31.375555, 29.916523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592590, 31.599102, 30.076620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601986, 31.220716, 30.205986>,  <35.607624, 30.993685, 30.283606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601986, 31.220716, 30.205986>,  <35.592590, 31.599102, 30.076620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601986, 31.220716, 30.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832081, -0.160824, -0.530826,
		0.554156, 0.281577, 0.783342,
		0.023488, -0.945965, 0.323417,
		35.609032, 30.936928, 30.303011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269463, 31.432096, 30.279871>,  <35.592590, 31.599102, 30.076620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269463, 31.432096, 30.279871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083839, 31.091665, 30.181639>,  <35.972466, 30.887405, 30.122700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083839, 31.091665, 30.181639>,  <36.269463, 31.432096, 30.279871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083839, 31.091665, 30.181639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794606, -0.277443, -0.540025,
		0.391469, -0.445746, 0.805023,
		-0.464062, -0.851079, -0.245581,
		35.944622, 30.836342, 30.107964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809460, 30.959238, 30.318998>,  <36.269463, 31.432096, 30.279871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809460, 30.959238, 30.318998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526852, 30.775366, 30.103769>,  <36.357288, 30.665043, 29.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526852, 30.775366, 30.103769>,  <36.809460, 30.959238, 30.318998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526852, 30.775366, 30.103769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705583, -0.516223, -0.485454,
		-0.054612, -0.722638, 0.689066,
		-0.706519, -0.459682, -0.538073,
		36.314896, 30.637461, 29.942347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952808, 30.243792, 30.192656>,  <36.809460, 30.959238, 30.318998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952808, 30.243792, 30.192656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705654, 30.317554, 29.886919>,  <36.557362, 30.361813, 29.703478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705654, 30.317554, 29.886919>,  <36.952808, 30.243792, 30.192656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705654, 30.317554, 29.886919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575070, -0.556949, -0.599251,
		-0.536201, -0.809816, 0.238085,
		-0.617885, 0.184403, -0.764338,
		36.520290, 30.372875, 29.657618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970024, 29.556042, 29.852995>,  <36.952808, 30.243792, 30.192656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970024, 29.556042, 29.852995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839211, 29.846735, 29.611364>,  <36.760723, 30.021151, 29.466387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839211, 29.846735, 29.611364>,  <36.970024, 29.556042, 29.852995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839211, 29.846735, 29.611364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408191, -0.467887, -0.783876,
		-0.852309, -0.502930, -0.143633,
		-0.327031, 0.726735, -0.604076,
		36.741100, 30.064754, 29.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600529, 29.321400, 29.283560>,  <36.970024, 29.556042, 29.852995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600529, 29.321400, 29.283560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669563, 29.692093, 29.150064>,  <36.710983, 29.914509, 29.069967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669563, 29.692093, 29.150064>,  <36.600529, 29.321400, 29.283560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669563, 29.692093, 29.150064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440203, -0.375672, -0.815531,
		-0.881155, -0.006160, -0.472787,
		0.172589, 0.926732, -0.333737,
		36.721340, 29.970112, 29.049944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435471, 29.337969, 28.602585>,  <36.600529, 29.321400, 29.283560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435471, 29.337969, 28.602585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699741, 29.633091, 28.657934>,  <36.858303, 29.810163, 28.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699741, 29.633091, 28.657934>,  <36.435471, 29.337969, 28.602585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699741, 29.633091, 28.657934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567165, -0.369864, -0.735884,
		-0.491759, 0.564664, -0.662818,
		0.660679, 0.737805, 0.138373,
		36.897945, 29.854433, 28.699446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465363, 29.654188, 27.964544>,  <36.435471, 29.337969, 28.602585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465363, 29.654188, 27.964544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810452, 29.769844, 28.130487>,  <37.017506, 29.839237, 28.230053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810452, 29.769844, 28.130487>,  <36.465363, 29.654188, 27.964544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810452, 29.769844, 28.130487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473948, -0.176306, -0.862722,
		-0.176306, 0.940911, -0.289142,
		0.862722, 0.289142, 0.414859,
		37.069267, 29.856586, 28.254946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804615, 30.216728, 27.452810>,  <36.465363, 29.654188, 27.964544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804615, 30.216728, 27.452810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080334, 30.069164, 27.702219>,  <37.245766, 29.980627, 27.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080334, 30.069164, 27.702219>,  <36.804615, 30.216728, 27.452810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080334, 30.069164, 27.702219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628140, -0.124524, -0.768072,
		0.360992, 0.921086, 0.145893,
		0.689293, -0.368909, 0.623523,
		37.287121, 29.958492, 27.889277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513767, 30.576105, 27.232492>,  <36.804615, 30.216728, 27.452810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513767, 30.576105, 27.232492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592407, 30.241888, 27.437712>,  <37.639591, 30.041357, 27.560843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592407, 30.241888, 27.437712>,  <37.513767, 30.576105, 27.232492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592407, 30.241888, 27.437712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497907, -0.365690, -0.786358,
		0.844652, 0.410049, 0.344127,
		0.196602, -0.835542, 0.513047,
		37.651386, 29.991226, 27.591625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032196, 30.349306, 26.938782>,  <37.513767, 30.576105, 27.232492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032196, 30.349306, 26.938782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953270, 30.015781, 27.145016>,  <37.905914, 29.815666, 27.268757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953270, 30.015781, 27.145016>,  <38.032196, 30.349306, 26.938782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953270, 30.015781, 27.145016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549906, -0.529531, -0.645911,
		0.811584, 0.156073, 0.563003,
		-0.197318, -0.833810, 0.515584,
		37.894073, 29.765638, 27.299690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661659, 30.050198, 27.091509>,  <38.032196, 30.349306, 26.938782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661659, 30.050198, 27.091509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367573, 29.779882, 27.070454>,  <38.191120, 29.617693, 27.057819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367573, 29.779882, 27.070454>,  <38.661659, 30.050198, 27.091509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367573, 29.779882, 27.070454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438861, -0.415387, -0.796778,
		0.516587, -0.608903, 0.601975,
		-0.735213, -0.675789, -0.052640,
		38.147007, 29.577147, 27.054661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942501, 29.436886, 27.017551>,  <38.661659, 30.050198, 27.091509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942501, 29.436886, 27.017551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586979, 29.358805, 26.851698>,  <38.373665, 29.311956, 26.752186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586979, 29.358805, 26.851698>,  <38.942501, 29.436886, 27.017551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586979, 29.358805, 26.851698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452434, -0.517879, -0.726020,
		-0.073009, -0.832885, 0.548610,
		-0.888804, -0.195204, -0.414635,
		38.320339, 29.300243, 26.727306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876369, 28.746077, 26.955538>,  <38.942501, 29.436886, 27.017551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876369, 28.746077, 26.955538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631622, 28.885241, 26.671406>,  <38.484772, 28.968739, 26.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631622, 28.885241, 26.671406>,  <38.876369, 28.746077, 26.955538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631622, 28.885241, 26.671406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468956, -0.563621, -0.680008,
		-0.636939, -0.749193, 0.181710,
		-0.611873, 0.347910, -0.710331,
		38.448059, 28.989614, 26.458307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629078, 28.205814, 26.639696>,  <38.876369, 28.746077, 26.955538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629078, 28.205814, 26.639696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605431, 28.504667, 26.374880>,  <38.591240, 28.683979, 26.215990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605431, 28.504667, 26.374880>,  <38.629078, 28.205814, 26.639696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605431, 28.504667, 26.374880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515966, -0.544870, -0.660981,
		-0.854566, -0.380669, -0.353281,
		-0.059123, 0.747133, -0.662040,
		38.587692, 28.728807, 26.176268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352058, 27.806673, 26.005575>,  <38.629078, 28.205814, 26.639696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352058, 27.806673, 26.005575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496498, 28.169493, 25.918978>,  <38.583164, 28.387184, 25.867020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496498, 28.169493, 25.918978>,  <38.352058, 27.806673, 26.005575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496498, 28.169493, 25.918978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491562, -0.382431, -0.782376,
		-0.792447, 0.176097, -0.583967,
		0.361101, 0.907048, -0.216494,
		38.604828, 28.441607, 25.854029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692284, 27.719591, 25.311634>,  <38.352058, 27.806673, 26.005575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692284, 27.719591, 25.311634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842136, 28.080259, 25.398024>,  <38.932049, 28.296659, 25.449858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842136, 28.080259, 25.398024>,  <38.692284, 27.719591, 25.311634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842136, 28.080259, 25.398024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827344, -0.219955, -0.516838,
		-0.418513, 0.372307, -0.828393,
		0.374632, 0.901669, 0.215972,
		38.954525, 28.350760, 25.462814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715897, 28.139416, 24.638874>,  <38.692284, 27.719591, 25.311634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715897, 28.139416, 24.638874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962765, 28.270737, 24.924900>,  <39.110886, 28.349529, 25.096516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962765, 28.270737, 24.924900>,  <38.715897, 28.139416, 24.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962765, 28.270737, 24.924900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771369, -0.073181, -0.632167,
		-0.155213, 0.941733, -0.298408,
		0.617170, 0.328303, 0.715065,
		39.147915, 28.369228, 25.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186516, 28.560825, 24.253357>,  <38.715897, 28.139416, 24.638874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186516, 28.560825, 24.253357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375706, 28.522615, 24.603710>,  <39.489220, 28.499689, 24.813921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375706, 28.522615, 24.603710>,  <39.186516, 28.560825, 24.253357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375706, 28.522615, 24.603710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880994, 0.064753, -0.468675,
		-0.011947, 0.993319, 0.114782,
		0.472976, -0.095523, 0.875882,
		39.517597, 28.493958, 24.866474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581718, 29.085295, 24.184399>,  <39.186516, 28.560825, 24.253357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581718, 29.085295, 24.184399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749149, 28.853279, 24.463924>,  <39.849609, 28.714069, 24.631639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749149, 28.853279, 24.463924>,  <39.581718, 29.085295, 24.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749149, 28.853279, 24.463924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887239, 0.096892, -0.451021,
		0.193900, 0.808806, 0.555190,
		0.418582, -0.580039, 0.698816,
		39.874725, 28.679268, 24.673569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195229, 29.403999, 24.473581>,  <39.581718, 29.085295, 24.184399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195229, 29.403999, 24.473581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228603, 29.006596, 24.504520>,  <40.248627, 28.768154, 24.523085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228603, 29.006596, 24.504520>,  <40.195229, 29.403999, 24.473581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228603, 29.006596, 24.504520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822557, 0.024845, -0.568139,
		0.562529, 0.111026, 0.819289,
		0.083433, -0.993507, 0.077349,
		40.253632, 28.708544, 24.527725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004486, 29.308643, 24.563524>,  <40.195229, 29.403999, 24.473581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004486, 29.308643, 24.563524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824512, 28.980440, 24.422485>,  <40.716526, 28.783518, 24.337862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824512, 28.980440, 24.422485>,  <41.004486, 29.308643, 24.563524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824512, 28.980440, 24.422485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679078, -0.057916, -0.731778,
		0.580007, -0.568696, 0.583246,
		-0.449938, -0.820506, -0.352598,
		40.689529, 28.734289, 24.316706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560947, 28.938406, 24.456118>,  <41.004486, 29.308643, 24.563524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560947, 28.938406, 24.456118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284798, 28.747858, 24.238329>,  <41.119106, 28.633530, 24.107655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284798, 28.747858, 24.238329>,  <41.560947, 28.938406, 24.456118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284798, 28.747858, 24.238329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677047, -0.160232, -0.718285,
		0.254928, -0.864521, 0.433145,
		-0.690377, -0.476371, -0.544474,
		41.077686, 28.604946, 24.074987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993069, 28.479576, 24.079378>,  <41.560947, 28.938406, 24.456118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993069, 28.479576, 24.079378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630116, 28.475607, 23.911301>,  <41.412346, 28.473225, 23.810455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630116, 28.475607, 23.911301>,  <41.993069, 28.479576, 24.079378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630116, 28.475607, 23.911301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411812, 0.179013, -0.893513,
		0.084088, -0.983797, -0.158346,
		-0.907381, -0.009925, -0.420192,
		41.357903, 28.472630, 23.785242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038120, 27.901035, 23.543779>,  <41.993069, 28.479576, 24.079378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038120, 27.901035, 23.543779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754112, 28.171757, 23.466000>,  <41.583710, 28.334190, 23.419333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754112, 28.171757, 23.466000>,  <42.038120, 27.901035, 23.543779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754112, 28.171757, 23.466000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385900, 0.142990, -0.911392,
		-0.589031, -0.722141, -0.362705,
		-0.710017, 0.676806, -0.194449,
		41.541107, 28.374798, 23.407665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647919, 27.691454, 22.944437>,  <42.038120, 27.901035, 23.543779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647919, 27.691454, 22.944437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600033, 28.088444, 22.954718>,  <41.571301, 28.326637, 22.960886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600033, 28.088444, 22.954718>,  <41.647919, 27.691454, 22.944437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600033, 28.088444, 22.954718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281511, 0.058758, -0.957757,
		-0.952061, -0.107421, -0.286427,
		-0.119713, 0.992476, 0.025701,
		41.564117, 28.386187, 22.962427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547226, 27.828297, 22.267673>,  <41.647919, 27.691454, 22.944437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547226, 27.828297, 22.267673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628708, 28.175262, 22.449265>,  <41.677597, 28.383442, 22.558220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628708, 28.175262, 22.449265>,  <41.547226, 27.828297, 22.267673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628708, 28.175262, 22.449265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413525, 0.344076, -0.842976,
		-0.887412, 0.359451, -0.288607,
		0.203706, 0.867414, 0.453979,
		41.689819, 28.435486, 22.585459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172535, 28.470947, 22.165987>,  <41.547226, 27.828297, 22.267673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172535, 28.470947, 22.165987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193359, 28.625183, 21.797506>,  <41.205853, 28.717724, 21.576418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193359, 28.625183, 21.797506>,  <41.172535, 28.470947, 22.165987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193359, 28.625183, 21.797506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476223, -0.820397, -0.316483,
		-0.877782, -0.422220, -0.226337,
		0.052061, 0.385590, -0.921200,
		41.208977, 28.740860, 21.521147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923172, 28.041903, 21.705019>,  <41.172535, 28.470947, 22.165987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923172, 28.041903, 21.705019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158566, 28.250181, 21.457611>,  <41.299801, 28.375149, 21.309166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158566, 28.250181, 21.457611>,  <40.923172, 28.041903, 21.705019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158566, 28.250181, 21.457611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413844, -0.851188, -0.322820,
		-0.694567, -0.065997, -0.716395,
		0.588481, 0.520696, -0.618519,
		41.335110, 28.406389, 21.272055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869114, 27.775639, 20.883833>,  <40.923172, 28.041903, 21.705019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869114, 27.775639, 20.883833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217686, 27.955839, 20.961458>,  <41.426830, 28.063959, 21.008034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217686, 27.955839, 20.961458>,  <40.869114, 27.775639, 20.883833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217686, 27.955839, 20.961458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489790, -0.777555, -0.394354,
		-0.026763, 0.438701, -0.898234,
		0.871430, 0.450500, 0.194061,
		41.479115, 28.090990, 21.019676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241417, 27.052359, 21.064831>,  <40.869114, 27.775639, 20.883833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241417, 27.052359, 21.064831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865913, 27.021091, 20.930593>,  <40.640610, 27.002331, 20.850052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865913, 27.021091, 20.930593>,  <41.241417, 27.052359, 21.064831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865913, 27.021091, 20.930593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160929, 0.960644, 0.226416,
		0.304688, 0.266556, -0.914392,
		-0.938758, -0.078166, -0.335593,
		40.584286, 26.997643, 20.829916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439400, 26.408285, 21.288612>,  <41.241417, 27.052359, 21.064831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439400, 26.408285, 21.288612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368294, 26.024635, 21.376684>,  <41.325630, 25.794445, 21.429527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368294, 26.024635, 21.376684>,  <41.439400, 26.408285, 21.288612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368294, 26.024635, 21.376684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950675, -0.225175, -0.213339,
		0.254197, 0.171393, 0.951845,
		-0.177767, -0.959125, 0.220178,
		41.314964, 25.736898, 21.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952965, 26.949961, 21.252035>,  <41.439400, 26.408285, 21.288612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952965, 26.949961, 21.252035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285202, 27.107471, 21.094528>,  <42.484543, 27.201979, 21.000025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285202, 27.107471, 21.094528>,  <41.952965, 26.949961, 21.252035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285202, 27.107471, 21.094528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374076, 0.918339, 0.129307,
		0.412528, 0.039897, 0.910071,
		0.830594, 0.393779, -0.393765,
		42.534382, 27.225605, 20.976398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264160, 27.511261, 21.686382>,  <41.952965, 26.949961, 21.252035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264160, 27.511261, 21.686382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374878, 27.560072, 21.305122>,  <42.441311, 27.589359, 21.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374878, 27.560072, 21.305122>,  <42.264160, 27.511261, 21.686382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374878, 27.560072, 21.305122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329493, 0.943823, 0.025149,
		0.902671, 0.307095, 0.301457,
		0.276799, 0.122029, -0.953148,
		42.457916, 27.596682, 21.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520508, 28.244593, 21.627312>,  <42.264160, 27.511261, 21.686382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520508, 28.244593, 21.627312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402367, 28.141182, 21.259415>,  <42.331482, 28.079136, 21.038675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402367, 28.141182, 21.259415>,  <42.520508, 28.244593, 21.627312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402367, 28.141182, 21.259415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300462, 0.938981, -0.167445,
		0.906911, 0.226892, -0.355010,
		-0.295356, -0.258525, -0.919744,
		42.313759, 28.063625, 20.983492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672482, 28.686165, 21.068600>,  <42.520508, 28.244593, 21.627312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672482, 28.686165, 21.068600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300716, 28.543312, 21.031389>,  <42.077660, 28.457600, 21.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300716, 28.543312, 21.031389>,  <42.672482, 28.686165, 21.068600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300716, 28.543312, 21.031389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367816, 0.916994, 0.154383,
		0.030167, 0.177701, -0.983622,
		-0.929410, -0.357134, -0.093024,
		42.021893, 28.436172, 21.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211288, 29.205137, 20.740669>,  <42.672482, 28.686165, 21.068600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211288, 29.205137, 20.740669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936230, 28.951323, 20.881807>,  <41.771194, 28.799034, 20.966490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936230, 28.951323, 20.881807>,  <42.211288, 29.205137, 20.740669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936230, 28.951323, 20.881807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603061, 0.769806, 0.209082,
		-0.404294, -0.069012, -0.912022,
		-0.687651, -0.634536, 0.352847,
		41.729935, 28.760962, 20.987661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502113, 29.278795, 20.331148>,  <42.211288, 29.205137, 20.740669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502113, 29.278795, 20.331148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461769, 29.138674, 20.703625>,  <41.437561, 29.054602, 20.927111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461769, 29.138674, 20.703625>,  <41.502113, 29.278795, 20.331148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461769, 29.138674, 20.703625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448741, 0.851368, 0.271670,
		-0.887952, -0.390462, -0.243067,
		-0.100863, -0.350304, 0.931190,
		41.431511, 29.033583, 20.982981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814449, 29.132740, 20.448380>,  <41.502113, 29.278795, 20.331148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814449, 29.132740, 20.448380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011890, 29.232971, 20.781502>,  <41.130356, 29.293110, 20.981375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011890, 29.232971, 20.781502>,  <40.814449, 29.132740, 20.448380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011890, 29.232971, 20.781502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613220, 0.779312, 0.128970,
		-0.616700, -0.574354, 0.538330,
		0.493601, 0.250579, 0.832807,
		41.159969, 29.308146, 21.031343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256035, 29.294651, 20.906702>,  <40.814449, 29.132740, 20.448380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256035, 29.294651, 20.906702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589092, 29.460398, 21.053673>,  <40.788929, 29.559845, 21.141855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589092, 29.460398, 21.053673>,  <40.256035, 29.294651, 20.906702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589092, 29.460398, 21.053673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487483, 0.863215, 0.131222,
		-0.262794, -0.288375, 0.920749,
		0.832646, 0.414366, 0.367425,
		40.838886, 29.584707, 21.163900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990810, 29.861712, 21.096197>,  <40.256035, 29.294651, 20.906702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990810, 29.861712, 21.096197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376114, 29.940100, 21.169655>,  <40.607296, 29.987133, 21.213730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376114, 29.940100, 21.169655>,  <39.990810, 29.861712, 21.096197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376114, 29.940100, 21.169655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234361, 0.947299, 0.218402,
		-0.131166, -0.253417, 0.958423,
		0.963260, 0.195970, 0.183645,
		40.665092, 29.998890, 21.224749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129913, 30.060118, 21.844248>,  <39.990810, 29.861712, 21.096197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129913, 30.060118, 21.844248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400368, 30.211498, 21.591389>,  <40.562641, 30.302326, 21.439674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400368, 30.211498, 21.591389>,  <40.129913, 30.060118, 21.844248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400368, 30.211498, 21.591389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152808, 0.911368, 0.382175,
		0.720752, -0.161807, 0.674043,
		0.676140, 0.378453, -0.632145,
		40.603210, 30.325035, 21.401745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526928, 30.393230, 22.194712>,  <40.129913, 30.060118, 21.844248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526928, 30.393230, 22.194712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619637, 30.557814, 21.842125>,  <40.675262, 30.656563, 21.630573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619637, 30.557814, 21.842125>,  <40.526928, 30.393230, 22.194712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619637, 30.557814, 21.842125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071884, 0.910908, 0.406298,
		0.970112, -0.030803, 0.240695,
		0.231767, 0.411457, -0.881469,
		40.689167, 30.681252, 21.577684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077328, 30.795094, 22.423574>,  <40.526928, 30.393230, 22.194712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077328, 30.795094, 22.423574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932476, 30.930153, 22.076044>,  <40.845566, 31.011189, 21.867527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932476, 30.930153, 22.076044>,  <41.077328, 30.795094, 22.423574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932476, 30.930153, 22.076044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273428, 0.852605, 0.445310,
		0.891122, 0.398822, -0.216433,
		-0.362131, 0.337647, -0.868824,
		40.823837, 31.031446, 21.815397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359478, 31.411007, 22.363380>,  <41.077328, 30.795094, 22.423574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359478, 31.411007, 22.363380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036171, 31.403940, 22.127960>,  <40.842186, 31.399700, 21.986708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036171, 31.403940, 22.127960>,  <41.359478, 31.411007, 22.363380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036171, 31.403940, 22.127960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368801, 0.794386, 0.482636,
		0.459011, 0.607157, -0.648590,
		-0.808266, -0.017666, -0.588552,
		40.793690, 31.398640, 21.951395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180141, 32.102566, 22.153416>,  <41.359478, 31.411007, 22.363380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180141, 32.102566, 22.153416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838428, 31.906082, 22.085398>,  <40.633400, 31.788193, 22.044586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838428, 31.906082, 22.085398>,  <41.180141, 32.102566, 22.153416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838428, 31.906082, 22.085398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499462, 0.685045, 0.530332,
		-0.144014, 0.537985, -0.830561,
		-0.854282, -0.491209, -0.170047,
		40.582146, 31.758720, 22.034384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652847, 32.587051, 21.969017>,  <41.180141, 32.102566, 22.153416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652847, 32.587051, 21.969017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431465, 32.280231, 22.098833>,  <40.298637, 32.096142, 22.176723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431465, 32.280231, 22.098833>,  <40.652847, 32.587051, 21.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431465, 32.280231, 22.098833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639358, 0.641000, 0.424664,
		-0.533769, 0.027533, -0.845182,
		-0.553454, -0.767047, 0.324543,
		40.265430, 32.050117, 22.196196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160362, 32.958008, 22.331011>,  <40.652847, 32.587051, 21.969017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160362, 32.958008, 22.331011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 32.588253, 22.371958>,  <39.925182, 32.366402, 22.396526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013374, 32.588253, 22.371958>,  <40.160362, 32.958008, 22.331011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013374, 32.588253, 22.371958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795306, 0.369386, 0.480669,
		-0.482136, 0.095218, -0.870907,
		-0.367469, -0.924385, 0.102367,
		39.903133, 32.310936, 22.402668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405952, 32.948849, 22.170353>,  <40.160362, 32.958008, 22.331011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405952, 32.948849, 22.170353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501911, 32.651455, 22.420052>,  <39.559486, 32.473019, 22.569872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501911, 32.651455, 22.420052>,  <39.405952, 32.948849, 22.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501911, 32.651455, 22.420052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797415, 0.215841, 0.563509,
		-0.553697, -0.632968, -0.541084,
		0.239895, -0.743481, 0.624249,
		39.573879, 32.428410, 22.607327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787979, 32.680668, 22.293915>,  <39.405952, 32.948849, 22.170353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787979, 32.680668, 22.293915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028522, 32.549938, 22.585546>,  <39.172848, 32.471500, 22.760525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028522, 32.549938, 22.585546>,  <38.787979, 32.680668, 22.293915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028522, 32.549938, 22.585546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774587, -0.014724, 0.632296,
		-0.195915, -0.944970, -0.262008,
		0.601359, -0.326824, 0.729077,
		39.208931, 32.451893, 22.804270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445587, 32.032551, 22.558174>,  <38.787979, 32.680668, 22.293915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445587, 32.032551, 22.558174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671402, 32.195869, 22.845114>,  <38.806892, 32.293861, 23.017279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671402, 32.195869, 22.845114>,  <38.445587, 32.032551, 22.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671402, 32.195869, 22.845114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811945, 0.118369, 0.571607,
		0.148479, -0.905138, 0.398346,
		0.564534, 0.408307, 0.717347,
		38.840763, 32.318359, 23.060318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092476, 31.876366, 23.171528>,  <38.445587, 32.032551, 22.558174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092476, 31.876366, 23.171528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360535, 32.148796, 23.289537>,  <38.521370, 32.312256, 23.360344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360535, 32.148796, 23.289537>,  <38.092476, 31.876366, 23.171528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360535, 32.148796, 23.289537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630743, 0.313047, 0.710046,
		0.391240, -0.661917, 0.639372,
		0.670145, 0.681078, 0.295023,
		38.561577, 32.353119, 23.378044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055561, 31.829290, 23.900763>,  <38.092476, 31.876366, 23.171528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055561, 31.829290, 23.900763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264267, 32.165432, 23.842018>,  <38.389488, 32.367119, 23.806772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264267, 32.165432, 23.842018>,  <38.055561, 31.829290, 23.900763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264267, 32.165432, 23.842018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481600, 0.432248, 0.762380,
		0.704150, -0.327052, 0.630245,
		0.521761, 0.840356, -0.146859,
		38.420795, 32.417538, 23.797960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449673, 31.979958, 24.560850>,  <38.055561, 31.829290, 23.900763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449673, 31.979958, 24.560850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379612, 32.310413, 24.346630>,  <38.337574, 32.508686, 24.218098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379612, 32.310413, 24.346630>,  <38.449673, 31.979958, 24.560850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379612, 32.310413, 24.346630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647478, 0.313121, 0.694785,
		0.741682, 0.468452, 0.480063,
		-0.175156, 0.826141, -0.535549,
		38.327065, 32.558254, 24.185965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614166, 32.454323, 24.967072>,  <38.449673, 31.979958, 24.560850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614166, 32.454323, 24.967072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321705, 32.586582, 24.728378>,  <38.146229, 32.665936, 24.585163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321705, 32.586582, 24.728378>,  <38.614166, 32.454323, 24.967072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321705, 32.586582, 24.728378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540475, 0.253010, 0.802417,
		0.416293, 0.909209, -0.006285,
		-0.731155, 0.330644, -0.596731,
		38.102360, 32.685776, 24.549358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420280, 32.930359, 25.307968>,  <38.614166, 32.454323, 24.967072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420280, 32.930359, 25.307968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122372, 32.892998, 25.043671>,  <37.943626, 32.870579, 24.885092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122372, 32.892998, 25.043671>,  <38.420280, 32.930359, 25.307968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122372, 32.892998, 25.043671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650635, 0.321637, 0.687913,
		0.148265, 0.942245, -0.300320,
		-0.744776, -0.093405, -0.660745,
		37.898937, 32.864975, 24.845448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129009, 33.548199, 25.249973>,  <38.420280, 32.930359, 25.307968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129009, 33.548199, 25.249973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860355, 33.271763, 25.143158>,  <37.699165, 33.105904, 25.079069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860355, 33.271763, 25.143158>,  <38.129009, 33.548199, 25.249973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860355, 33.271763, 25.143158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628186, 0.340101, 0.699795,
		-0.392799, 0.637754, -0.662554,
		-0.671633, -0.691086, -0.267037,
		37.658867, 33.064438, 25.063047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516155, 33.937363, 25.222048>,  <38.129009, 33.548199, 25.249973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516155, 33.937363, 25.222048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380413, 33.562553, 25.255087>,  <37.298969, 33.337669, 25.274910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380413, 33.562553, 25.255087>,  <37.516155, 33.937363, 25.222048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380413, 33.562553, 25.255087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593912, 0.281528, 0.753665,
		-0.729455, 0.206706, -0.652048,
		-0.339357, -0.937024, 0.082596,
		37.278606, 33.281445, 25.279865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776634, 33.925343, 25.175917>,  <37.516155, 33.937363, 25.222048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776634, 33.925343, 25.175917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868492, 33.577511, 25.350777>,  <36.923607, 33.368813, 25.455692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868492, 33.577511, 25.350777>,  <36.776634, 33.925343, 25.175917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868492, 33.577511, 25.350777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601313, 0.226415, 0.766263,
		-0.765302, -0.438829, -0.470894,
		0.229640, -0.869577, 0.437150,
		36.937386, 33.316639, 25.481922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120823, 33.602329, 25.389244>,  <36.776634, 33.925343, 25.175917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120823, 33.602329, 25.389244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412201, 33.445248, 25.613798>,  <36.587029, 33.350998, 25.748529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412201, 33.445248, 25.613798>,  <36.120823, 33.602329, 25.389244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412201, 33.445248, 25.613798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519741, 0.217101, 0.826279,
		-0.446358, -0.893673, -0.045957,
		0.728446, -0.392702, 0.561384,
		36.630733, 33.327438, 25.782213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749050, 33.197872, 25.886959>,  <36.120823, 33.602329, 25.389244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749050, 33.197872, 25.886959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111244, 33.185749, 26.056274>,  <36.328560, 33.178474, 26.157864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111244, 33.185749, 26.056274>,  <35.749050, 33.197872, 25.886959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111244, 33.185749, 26.056274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421337, 0.054904, 0.905241,
		-0.050681, -0.998031, 0.036943,
		0.905487, -0.030313, 0.423290,
		36.382889, 33.176659, 26.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595245, 32.807152, 26.470867>,  <35.749050, 33.197872, 25.886959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595245, 32.807152, 26.470867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923111, 33.014683, 26.568005>,  <36.119831, 33.139202, 26.626287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923111, 33.014683, 26.568005>,  <35.595245, 32.807152, 26.470867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923111, 33.014683, 26.568005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391289, 0.197458, 0.898834,
		0.418389, -0.831762, 0.364861,
		0.819661, 0.518828, 0.242845,
		36.169010, 33.170330, 26.640858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954639, 32.464897, 27.148867>,  <35.595245, 32.807152, 26.470867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954639, 32.464897, 27.148867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060928, 32.850323, 27.136608>,  <36.124702, 33.081577, 27.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060928, 32.850323, 27.136608>,  <35.954639, 32.464897, 27.148867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060928, 32.850323, 27.136608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298106, 0.112355, 0.947897,
		0.916802, -0.242739, 0.317099,
		0.265719, 0.963563, -0.030646,
		36.140644, 33.139393, 27.127415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275021, 32.587879, 27.796810>,  <35.954639, 32.464897, 27.148867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275021, 32.587879, 27.796810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214851, 32.969223, 27.692131>,  <36.178749, 33.198029, 27.629324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214851, 32.969223, 27.692131>,  <36.275021, 32.587879, 27.796810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214851, 32.969223, 27.692131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249287, 0.219581, 0.943208,
		0.956676, 0.207118, 0.204629,
		-0.150423, 0.953355, -0.261699,
		36.169724, 33.255230, 27.613621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484119, 32.902615, 28.315578>,  <36.275021, 32.587879, 27.796810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484119, 32.902615, 28.315578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268723, 33.194572, 28.147160>,  <36.139484, 33.369747, 28.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268723, 33.194572, 28.147160>,  <36.484119, 32.902615, 28.315578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268723, 33.194572, 28.147160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290010, 0.308616, 0.905897,
		0.791154, 0.609923, 0.045491,
		-0.538488, 0.729897, -0.421046,
		36.107178, 33.413540, 28.020845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776848, 33.671844, 28.565079>,  <36.484119, 32.902615, 28.315578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776848, 33.671844, 28.565079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392986, 33.683659, 28.453232>,  <36.162670, 33.690746, 28.386124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392986, 33.683659, 28.453232>,  <36.776848, 33.671844, 28.565079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392986, 33.683659, 28.453232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240139, 0.431208, 0.869708,
		0.146262, 0.901769, -0.406719,
		-0.959656, 0.029536, -0.279619,
		36.105091, 33.692520, 28.369347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566616, 34.424377, 28.576708>,  <36.776848, 33.671844, 28.565079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566616, 34.424377, 28.576708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218479, 34.229271, 28.603806>,  <36.009598, 34.112206, 28.620064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218479, 34.229271, 28.603806>,  <36.566616, 34.424377, 28.576708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218479, 34.229271, 28.603806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279876, 0.603129, 0.746930,
		-0.405189, 0.631123, -0.661442,
		-0.870340, -0.487770, 0.067745,
		35.957378, 34.082939, 28.624128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102367, 34.891102, 28.612333>,  <36.566616, 34.424377, 28.576708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102367, 34.891102, 28.612333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929264, 34.566223, 28.768824>,  <35.825401, 34.371296, 28.862719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929264, 34.566223, 28.768824>,  <36.102367, 34.891102, 28.612333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929264, 34.566223, 28.768824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296493, 0.538054, 0.789044,
		-0.851359, 0.225469, -0.473657,
		-0.432758, -0.812195, 0.391227,
		35.799438, 34.322563, 28.886192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520321, 35.181213, 28.915829>,  <36.102367, 34.891102, 28.612333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520321, 35.181213, 28.915829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509686, 34.803261, 29.046364>,  <35.503304, 34.576488, 29.124685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509686, 34.803261, 29.046364>,  <35.520321, 35.181213, 28.915829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509686, 34.803261, 29.046364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576959, 0.281095, 0.766879,
		-0.816340, -0.167898, -0.552629,
		-0.026584, -0.944879, 0.326339,
		35.501709, 34.519798, 29.144266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852459, 35.090599, 29.054575>,  <35.520321, 35.181213, 28.915829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852459, 35.090599, 29.054575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034924, 34.812469, 29.276722>,  <35.144402, 34.645592, 29.410011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034924, 34.812469, 29.276722>,  <34.852459, 35.090599, 29.054575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034924, 34.812469, 29.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595222, 0.225528, 0.771264,
		-0.661531, -0.682392, -0.310996,
		0.456165, -0.695326, 0.555369,
		35.171772, 34.603870, 29.443333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233978, 34.664436, 29.285944>,  <34.852459, 35.090599, 29.054575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233978, 34.664436, 29.285944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554531, 34.639702, 29.523924>,  <34.746864, 34.624863, 29.666712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554531, 34.639702, 29.523924>,  <34.233978, 34.664436, 29.285944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554531, 34.639702, 29.523924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555572, 0.291616, 0.778652,
		-0.221643, -0.954535, 0.199343,
		0.801383, -0.061833, 0.594948,
		34.794945, 34.621151, 29.702408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070206, 34.169178, 29.890299>,  <34.233978, 34.664436, 29.285944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070206, 34.169178, 29.890299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350723, 34.443798, 29.967077>,  <34.519032, 34.608570, 30.013145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350723, 34.443798, 29.967077>,  <34.070206, 34.169178, 29.890299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350723, 34.443798, 29.967077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497368, 0.278319, 0.821683,
		0.510703, -0.671707, 0.536649,
		0.701290, 0.686548, 0.191947,
		34.561111, 34.649761, 30.024662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781185, 34.377151, 30.431450>,  <34.070206, 34.169178, 29.890299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781185, 34.377151, 30.431450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101234, 34.616894, 30.440973>,  <34.293266, 34.760738, 30.446688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101234, 34.616894, 30.440973>,  <33.781185, 34.377151, 30.431450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101234, 34.616894, 30.440973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250290, 0.297536, 0.921318,
		0.545116, -0.743130, 0.388079,
		0.800127, 0.599358, 0.023806,
		34.341274, 34.796700, 30.448114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057518, 34.347023, 31.051037>,  <33.781185, 34.377151, 30.431450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057518, 34.347023, 31.051037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212559, 34.695225, 30.929718>,  <34.305584, 34.904144, 30.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212559, 34.695225, 30.929718>,  <34.057518, 34.347023, 31.051037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212559, 34.695225, 30.929718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155661, 0.386098, 0.909230,
		0.908591, -0.305204, 0.285154,
		0.387598, 0.870505, -0.303296,
		34.328838, 34.956375, 30.838730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508305, 34.570747, 31.503931>,  <34.057518, 34.347023, 31.051037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508305, 34.570747, 31.503931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419109, 34.921944, 31.334505>,  <34.365593, 35.132664, 31.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419109, 34.921944, 31.334505>,  <34.508305, 34.570747, 31.503931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419109, 34.921944, 31.334505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253100, 0.367458, 0.894938,
		0.941392, 0.306762, 0.140283,
		-0.222985, 0.877993, -0.423564,
		34.352215, 35.185341, 31.207436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830708, 35.032669, 31.845184>,  <34.508305, 34.570747, 31.503931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830708, 35.032669, 31.845184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556896, 35.263092, 31.666485>,  <34.392609, 35.401344, 31.559265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556896, 35.263092, 31.666485>,  <34.830708, 35.032669, 31.845184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556896, 35.263092, 31.666485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265843, 0.373369, 0.888776,
		0.678787, 0.727155, -0.102440,
		-0.684526, 0.576057, -0.446747,
		34.351540, 35.435909, 31.532461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871029, 35.794769, 31.803307>,  <34.830708, 35.032669, 31.845184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871029, 35.794769, 31.803307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104984, 35.790253, 32.127720>,  <35.245358, 35.787540, 32.322369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104984, 35.790253, 32.127720>,  <34.871029, 35.794769, 31.803307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104984, 35.790253, 32.127720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796718, 0.195549, -0.571841,
		-0.152139, 0.980629, 0.123372,
		0.584889, -0.011294, 0.811035,
		35.280453, 35.786865, 32.371029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423248, 36.218037, 31.639736>,  <34.871029, 35.794769, 31.803307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423248, 36.218037, 31.639736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613754, 36.035542, 31.940405>,  <35.728058, 35.926044, 32.120808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613754, 36.035542, 31.940405>,  <35.423248, 36.218037, 31.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613754, 36.035542, 31.940405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857166, 0.050302, -0.512578,
		0.196049, 0.888433, 0.415032,
		0.476268, -0.456242, 0.751673,
		35.756634, 35.898670, 32.165905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091049, 36.599751, 31.860622>,  <35.423248, 36.218037, 31.639736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091049, 36.599751, 31.860622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119953, 36.213779, 31.961578>,  <36.137295, 35.982197, 32.022152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119953, 36.213779, 31.961578>,  <36.091049, 36.599751, 31.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119953, 36.213779, 31.961578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904152, -0.043453, -0.424995,
		0.421055, 0.258911, 0.869297,
		0.072262, -0.964923, 0.252391,
		36.141632, 35.924301, 32.037296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799603, 36.525486, 32.212315>,  <36.091049, 36.599751, 31.860622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799603, 36.525486, 32.212315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691174, 36.170147, 32.064068>,  <36.626118, 35.956944, 31.975121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691174, 36.170147, 32.064068>,  <36.799603, 36.525486, 32.212315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691174, 36.170147, 32.064068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875467, -0.067498, -0.478540,
		0.400095, -0.454179, 0.796018,
		-0.271072, -0.888350, -0.370613,
		36.609852, 35.903641, 31.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385403, 36.221725, 32.208435>,  <36.799603, 36.525486, 32.212315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385403, 36.221725, 32.208435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 36.019733, 31.961449>,  <36.999416, 35.898540, 31.813255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 36.019733, 31.961449>,  <37.385403, 36.221725, 32.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144161, 36.019733, 31.961449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760105, -0.129084, -0.636850,
		0.241890, -0.853425, 0.461687,
		-0.603100, -0.504978, -0.617469,
		36.963230, 35.868240, 31.776209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809242, 35.877972, 31.885384>,  <37.385403, 36.221725, 32.208435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809242, 35.877972, 31.885384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493885, 35.829365, 31.644163>,  <37.304672, 35.800201, 31.499432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493885, 35.829365, 31.644163>,  <37.809242, 35.877972, 31.885384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493885, 35.829365, 31.644163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614682, -0.116471, -0.780128,
		0.024566, -0.985731, 0.166523,
		-0.788392, -0.121523, -0.603051,
		37.257366, 35.792908, 31.463247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825871, 35.161247, 31.446690>,  <37.809242, 35.877972, 31.885384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825871, 35.161247, 31.446690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610352, 35.444092, 31.263519>,  <37.481041, 35.613800, 31.153618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610352, 35.444092, 31.263519>,  <37.825871, 35.161247, 31.446690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610352, 35.444092, 31.263519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546160, -0.120671, -0.828944,
		-0.641414, -0.696729, -0.321179,
		-0.538792, 0.707112, -0.457925,
		37.448715, 35.656227, 31.126143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752766, 34.916843, 30.817636>,  <37.825871, 35.161247, 31.446690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752766, 34.916843, 30.817636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650955, 35.295902, 30.740511>,  <37.589870, 35.523338, 30.694235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650955, 35.295902, 30.740511>,  <37.752766, 34.916843, 30.817636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650955, 35.295902, 30.740511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637060, 0.014300, -0.770682,
		-0.727579, -0.318993, -0.607349,
		-0.254527, 0.947649, -0.192813,
		37.574596, 35.580196, 30.682667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528648, 34.889088, 30.159822>,  <37.752766, 34.916843, 30.817636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528648, 34.889088, 30.159822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637440, 35.262333, 30.253902>,  <37.702713, 35.486282, 30.310350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637440, 35.262333, 30.253902>,  <37.528648, 34.889088, 30.159822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637440, 35.262333, 30.253902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641462, 0.006392, -0.767129,
		-0.717324, 0.359515, -0.596820,
		0.271979, 0.933117, 0.235201,
		37.719032, 35.542267, 30.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424290, 35.239616, 29.590933>,  <37.528648, 34.889088, 30.159822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424290, 35.239616, 29.590933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697144, 35.442638, 29.801485>,  <37.860855, 35.564453, 29.927816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697144, 35.442638, 29.801485>,  <37.424290, 35.239616, 29.590933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697144, 35.442638, 29.801485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614563, -0.007861, -0.788829,
		-0.396238, 0.861582, -0.317288,
		0.682135, 0.507558, 0.526381,
		37.901783, 35.594906, 29.959400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700184, 35.609318, 29.084179>,  <37.424290, 35.239616, 29.590933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700184, 35.609318, 29.084179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966015, 35.621559, 29.382814>,  <38.125515, 35.628902, 29.561996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966015, 35.621559, 29.382814>,  <37.700184, 35.609318, 29.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966015, 35.621559, 29.382814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738288, -0.180891, -0.649777,
		0.115168, 0.983027, -0.142809,
		0.664581, 0.030601, 0.746590,
		38.165390, 35.630741, 29.606791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274673, 36.013561, 28.785807>,  <37.700184, 35.609318, 29.084179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274673, 36.013561, 28.785807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427502, 35.807934, 29.092989>,  <38.519199, 35.684559, 29.277298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427502, 35.807934, 29.092989>,  <38.274673, 36.013561, 28.785807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427502, 35.807934, 29.092989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773268, -0.277204, -0.570276,
		0.506040, 0.811723, 0.291598,
		0.382073, -0.514066, 0.767956,
		38.542122, 35.653713, 29.323376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831207, 36.351936, 28.932264>,  <38.274673, 36.013561, 28.785807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831207, 36.351936, 28.932264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898304, 35.980057, 29.063425>,  <38.938560, 35.756927, 29.142122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898304, 35.980057, 29.063425>,  <38.831207, 36.351936, 28.932264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898304, 35.980057, 29.063425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574449, -0.178132, -0.798922,
		0.801169, 0.322375, 0.504186,
		0.167741, -0.929701, 0.327902,
		38.948627, 35.701145, 29.161797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458508, 36.122929, 28.574478>,  <38.831207, 36.351936, 28.932264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458508, 36.122929, 28.574478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341908, 35.772308, 28.727676>,  <39.271950, 35.561935, 28.819595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341908, 35.772308, 28.727676>,  <39.458508, 36.122929, 28.574478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341908, 35.772308, 28.727676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542772, -0.481250, -0.688329,
		0.787673, 0.007233, 0.616051,
		-0.291496, -0.876553, 0.382994,
		39.254459, 35.509342, 28.842575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031536, 35.780846, 28.729200>,  <39.458508, 36.122929, 28.574478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031536, 35.780846, 28.729200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732002, 35.520473, 28.679359>,  <39.552280, 35.364250, 28.649456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732002, 35.520473, 28.679359>,  <40.031536, 35.780846, 28.729200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732002, 35.520473, 28.679359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486145, -0.411716, -0.770814,
		0.450449, -0.637789, 0.624757,
		-0.748838, -0.650935, -0.124601,
		39.507351, 35.325191, 28.641979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412361, 35.115597, 28.591137>,  <40.031536, 35.780846, 28.729200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412361, 35.115597, 28.591137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038826, 35.069103, 28.455826>,  <39.814705, 35.041206, 28.374640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038826, 35.069103, 28.455826>,  <40.412361, 35.115597, 28.591137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038826, 35.069103, 28.455826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343047, -0.558865, -0.754976,
		-0.101300, -0.821072, 0.561764,
		-0.933840, -0.116233, -0.338279,
		39.758675, 35.034233, 28.354342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363182, 34.430412, 28.379509>,  <40.412361, 35.115597, 28.591137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363182, 34.430412, 28.379509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067108, 34.606113, 28.175873>,  <39.889462, 34.711536, 28.053690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067108, 34.606113, 28.175873>,  <40.363182, 34.430412, 28.379509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067108, 34.606113, 28.175873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204366, -0.574344, -0.792694,
		-0.640592, -0.690782, 0.335352,
		-0.740187, 0.439259, -0.509093,
		39.845051, 34.737892, 28.023146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101509, 33.906536, 28.032984>,  <40.363182, 34.430412, 28.379509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101509, 33.906536, 28.032984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940430, 34.216656, 27.838360>,  <39.843781, 34.402729, 27.721584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940430, 34.216656, 27.838360>,  <40.101509, 33.906536, 28.032984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940430, 34.216656, 27.838360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124443, -0.480260, -0.868253,
		-0.906834, -0.410194, 0.096920,
		-0.402699, 0.775300, -0.486562,
		39.819618, 34.449245, 27.692390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501122, 33.658237, 27.660236>,  <40.101509, 33.906536, 28.032984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501122, 33.658237, 27.660236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624157, 33.995010, 27.482904>,  <39.697979, 34.197075, 27.376505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624157, 33.995010, 27.482904>,  <39.501122, 33.658237, 27.660236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624157, 33.995010, 27.482904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055761, -0.481065, -0.874910,
		-0.949883, 0.244395, -0.194918,
		0.307592, 0.841931, -0.443328,
		39.716434, 34.247589, 27.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167473, 33.539131, 27.020105>,  <39.501122, 33.658237, 27.660236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167473, 33.539131, 27.020105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451481, 33.811596, 26.948664>,  <39.621883, 33.975075, 26.905798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451481, 33.811596, 26.948664>,  <39.167473, 33.539131, 27.020105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451481, 33.811596, 26.948664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197108, -0.435735, -0.878227,
		-0.676035, 0.588353, -0.443642,
		0.710018, 0.681158, -0.178603,
		39.664486, 34.015942, 26.895082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017433, 33.643940, 26.395784>,  <39.167473, 33.539131, 27.020105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017433, 33.643940, 26.395784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401222, 33.737209, 26.459093>,  <39.631496, 33.793171, 26.497078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401222, 33.737209, 26.459093>,  <39.017433, 33.643940, 26.395784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401222, 33.737209, 26.459093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246402, -0.421536, -0.872693,
		-0.136771, 0.876320, -0.461905,
		0.959469, 0.233173, 0.158273,
		39.689064, 33.807159, 26.506575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406113, 34.050114, 25.816536>,  <39.017433, 33.643940, 26.395784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406113, 34.050114, 25.816536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693897, 33.855110, 26.014410>,  <39.866566, 33.738106, 26.133135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693897, 33.855110, 26.014410>,  <39.406113, 34.050114, 25.816536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693897, 33.855110, 26.014410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293999, -0.431520, -0.852851,
		0.629241, 0.759027, -0.167133,
		0.719458, -0.487512, 0.494683,
		39.909737, 33.708855, 26.162815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962555, 34.097496, 25.376131>,  <39.406113, 34.050114, 25.816536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962555, 34.097496, 25.376131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053955, 33.786369, 25.610325>,  <40.108795, 33.599693, 25.750841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053955, 33.786369, 25.610325>,  <39.962555, 34.097496, 25.376131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053955, 33.786369, 25.610325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467535, -0.439832, -0.766785,
		0.853932, 0.448944, 0.263155,
		0.228500, -0.777816, 0.585483,
		40.122505, 33.553024, 25.785971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624199, 33.890800, 25.142702>,  <39.962555, 34.097496, 25.376131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624199, 33.890800, 25.142702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497734, 33.584328, 25.366491>,  <40.421856, 33.400444, 25.500765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497734, 33.584328, 25.366491>,  <40.624199, 33.890800, 25.142702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497734, 33.584328, 25.366491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508873, -0.634664, -0.581593,
		0.800682, 0.100825, 0.590544,
		-0.316158, -0.766183, 0.559471,
		40.402885, 33.354473, 25.534332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180618, 33.422363, 25.252350>,  <40.624199, 33.890800, 25.142702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180618, 33.422363, 25.252350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872059, 33.191353, 25.359243>,  <40.686924, 33.052746, 25.423380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872059, 33.191353, 25.359243>,  <41.180618, 33.422363, 25.252350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872059, 33.191353, 25.359243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523991, -0.814748, -0.248230,
		0.361088, -0.051456, 0.931111,
		-0.771394, -0.577527, 0.267233,
		40.640640, 33.018093, 25.439413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478893, 32.889942, 25.632645>,  <41.180618, 33.422363, 25.252350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478893, 32.889942, 25.632645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133934, 32.789631, 25.456745>,  <40.926956, 32.729446, 25.351206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133934, 32.789631, 25.456745>,  <41.478893, 32.889942, 25.632645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133934, 32.789631, 25.456745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484821, -0.659086, -0.574938,
		-0.145652, -0.709026, 0.689977,
		-0.862401, -0.250774, -0.439747,
		40.875214, 32.714397, 25.324821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256668, 32.191769, 25.689798>,  <41.478893, 32.889942, 25.632645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256668, 32.191769, 25.689798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117352, 32.353130, 25.351341>,  <41.033764, 32.449947, 25.148266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117352, 32.353130, 25.351341>,  <41.256668, 32.191769, 25.689798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117352, 32.353130, 25.351341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658957, -0.536624, -0.527077,
		-0.666687, -0.741146, -0.078929,
		-0.348287, 0.403406, -0.846144,
		41.012867, 32.474152, 25.097498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189255, 31.626657, 25.345440>,  <41.256668, 32.191769, 25.689798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189255, 31.626657, 25.345440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174927, 31.931673, 25.087061>,  <41.166328, 32.114681, 24.932034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174927, 31.931673, 25.087061>,  <41.189255, 31.626657, 25.345440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174927, 31.931673, 25.087061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614779, -0.492774, -0.615809,
		-0.787886, -0.419176, -0.451141,
		-0.035822, 0.762539, -0.645950,
		41.164181, 32.160435, 24.893276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846672, 31.409666, 24.635113>,  <41.189255, 31.626657, 25.345440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846672, 31.409666, 24.635113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094681, 31.712036, 24.551067>,  <41.243488, 31.893457, 24.500639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094681, 31.712036, 24.551067>,  <40.846672, 31.409666, 24.635113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094681, 31.712036, 24.551067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421591, -0.546853, -0.723334,
		-0.661688, 0.359902, -0.657753,
		0.620024, 0.755924, -0.210115,
		41.280689, 31.938814, 24.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909100, 31.412693, 23.900877>,  <40.846672, 31.409666, 24.635113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909100, 31.412693, 23.900877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221272, 31.642811, 23.998829>,  <41.408573, 31.780882, 24.057600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221272, 31.642811, 23.998829>,  <40.909100, 31.412693, 23.900877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221272, 31.642811, 23.998829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570595, -0.495189, -0.655141,
		-0.255637, 0.651019, -0.714720,
		0.780430, 0.575294, 0.244879,
		41.455402, 31.815399, 24.072292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264160, 31.424644, 23.263227>,  <40.909100, 31.412693, 23.900877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264160, 31.424644, 23.263227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510178, 31.618498, 23.512016>,  <41.657787, 31.734810, 23.661289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510178, 31.618498, 23.512016>,  <41.264160, 31.424644, 23.263227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510178, 31.618498, 23.512016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765197, -0.176544, -0.619117,
		-0.190238, 0.856717, -0.479421,
		0.615047, 0.484632, 0.621972,
		41.694691, 31.763887, 23.698608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647858, 32.008202, 22.914076>,  <41.264160, 31.424644, 23.263227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647858, 32.008202, 22.914076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850903, 31.866911, 23.228416>,  <41.972729, 31.782137, 23.417021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850903, 31.866911, 23.228416>,  <41.647858, 32.008202, 22.914076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850903, 31.866911, 23.228416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743124, -0.282068, -0.606798,
		0.435998, 0.892004, 0.119306,
		0.507614, -0.353222, 0.785851,
		42.003185, 31.760944, 23.464172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430111, 32.148609, 22.836021>,  <41.647858, 32.008202, 22.914076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430111, 32.148609, 22.836021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414261, 31.839495, 23.089394>,  <42.404751, 31.654026, 23.241417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414261, 31.839495, 23.089394>,  <42.430111, 32.148609, 22.836021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414261, 31.839495, 23.089394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666914, -0.492519, -0.559151,
		0.744080, 0.400287, 0.534898,
		-0.039627, -0.772784, 0.633431,
		42.402374, 31.607660, 23.279423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126888, 31.976076, 22.923847>,  <42.430111, 32.148609, 22.836021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126888, 31.976076, 22.923847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916119, 31.662121, 23.054266>,  <42.789658, 31.473747, 23.132517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916119, 31.662121, 23.054266>,  <43.126888, 31.976076, 22.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916119, 31.662121, 23.054266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610689, -0.616451, -0.497038,
		0.591110, -0.062787, 0.804143,
		-0.526923, -0.784886, 0.326047,
		42.758041, 31.426655, 23.152081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662121, 31.551699, 23.183271>,  <43.126888, 31.976076, 22.923847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662121, 31.551699, 23.183271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340942, 31.320215, 23.126181>,  <43.148235, 31.181326, 23.091927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340942, 31.320215, 23.126181>,  <43.662121, 31.551699, 23.183271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340942, 31.320215, 23.126181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572617, -0.682463, -0.454261,
		0.165479, -0.446476, 0.879361,
		-0.802948, -0.578708, -0.142727,
		43.100060, 31.146603, 23.083363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790668, 30.751034, 23.496300>,  <43.662121, 31.551699, 23.183271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790668, 30.751034, 23.496300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513573, 30.709509, 23.210829>,  <43.347313, 30.684593, 23.039547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513573, 30.709509, 23.210829>,  <43.790668, 30.751034, 23.496300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513573, 30.709509, 23.210829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560598, -0.700058, -0.442322,
		-0.453694, -0.706500, 0.543157,
		-0.692741, -0.103814, -0.713675,
		43.305752, 30.678364, 22.996727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573242, 29.995417, 23.485731>,  <43.790668, 30.751034, 23.496300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573242, 29.995417, 23.485731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527405, 30.168303, 23.127947>,  <43.499905, 30.272034, 22.913277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527405, 30.168303, 23.127947>,  <43.573242, 29.995417, 23.485731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527405, 30.168303, 23.127947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450076, -0.780092, -0.434612,
		-0.885608, -0.452377, -0.105139,
		-0.114591, 0.432216, -0.894460,
		43.493027, 30.297968, 22.859610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596199, 29.483074, 23.041517>,  <43.573242, 29.995417, 23.485731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596199, 29.483074, 23.041517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693230, 29.791019, 22.805393>,  <43.751450, 29.975786, 22.663719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693230, 29.791019, 22.805393>,  <43.596199, 29.483074, 23.041517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693230, 29.791019, 22.805393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695095, -0.562400, -0.447827,
		-0.676756, -0.301690, -0.671553,
		0.242576, 0.769864, -0.590311,
		43.766003, 30.021978, 22.628300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363384, 29.635630, 23.252447>,  <43.596199, 29.483074, 23.041517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363384, 29.635630, 23.252447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625416, 29.466373, 23.502829>,  <44.782635, 29.364820, 23.653057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625416, 29.466373, 23.502829>,  <44.363384, 29.635630, 23.252447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625416, 29.466373, 23.502829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137175, 0.748092, 0.649262,
		-0.743001, -0.511185, 0.432017,
		0.655082, -0.423140, 0.625955,
		44.821941, 29.339432, 23.690615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026524, 29.525917, 23.963949>,  <44.363384, 29.635630, 23.252447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026524, 29.525917, 23.963949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423340, 29.531893, 24.013952>,  <44.661430, 29.535479, 24.043955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423340, 29.531893, 24.013952>,  <44.026524, 29.525917, 23.963949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423340, 29.531893, 24.013952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103007, 0.667212, 0.737711,
		-0.072386, -0.744718, 0.663442,
		0.992043, 0.014939, 0.125008,
		44.720951, 29.536375, 24.051455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084232, 29.334593, 24.652697>,  <44.026524, 29.525917, 23.963949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084232, 29.334593, 24.652697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429958, 29.519264, 24.572886>,  <44.637394, 29.630068, 24.525000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429958, 29.519264, 24.572886>,  <44.084232, 29.334593, 24.652697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429958, 29.519264, 24.572886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105828, 0.554775, 0.825243,
		0.491688, -0.692156, 0.528360,
		0.864317, 0.461677, -0.199526,
		44.689255, 29.657768, 24.513027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383511, 29.449150, 25.296253>,  <44.084232, 29.334593, 24.652697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383511, 29.449150, 25.296253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609375, 29.694147, 25.074982>,  <44.744896, 29.841145, 24.942219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609375, 29.694147, 25.074982>,  <44.383511, 29.449150, 25.296253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609375, 29.694147, 25.074982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016794, 0.678648, 0.734272,
		0.825152, -0.405325, 0.393493,
		0.564662, 0.612494, -0.553181,
		44.778774, 29.877895, 24.909027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022137, 29.728222, 25.823030>,  <44.383511, 29.449150, 25.296253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022137, 29.728222, 25.823030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939972, 29.967251, 25.513006>,  <44.890675, 30.110668, 25.326992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939972, 29.967251, 25.513006>,  <45.022137, 29.728222, 25.823030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939972, 29.967251, 25.513006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016105, 0.789774, 0.613186,
		0.978544, 0.138436, -0.152603,
		-0.205409, 0.597572, -0.775058,
		44.878349, 30.146523, 25.280489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542713, 30.295967, 25.785910>,  <45.022137, 29.728222, 25.823030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542713, 30.295967, 25.785910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213486, 30.436127, 25.607121>,  <45.015949, 30.520224, 25.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213486, 30.436127, 25.607121>,  <45.542713, 30.295967, 25.785910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213486, 30.436127, 25.607121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008744, 0.794722, 0.606911,
		0.567881, 0.495618, -0.657171,
		-0.823064, 0.350400, -0.446974,
		44.966568, 30.541246, 25.473028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596413, 31.025093, 25.998890>,  <45.542713, 30.295967, 25.785910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596413, 31.025093, 25.998890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242619, 31.004156, 25.813442>,  <45.030342, 30.991594, 25.702173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242619, 31.004156, 25.813442>,  <45.596413, 31.025093, 25.998890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242619, 31.004156, 25.813442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318045, 0.794678, 0.517044,
		0.341366, 0.604771, -0.719529,
		-0.884487, -0.052341, -0.463620,
		44.977272, 30.988453, 25.674356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474941, 31.627583, 25.646605>,  <45.596413, 31.025093, 25.998890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474941, 31.627583, 25.646605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117496, 31.469238, 25.731218>,  <44.903030, 31.374231, 25.781986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117496, 31.469238, 25.731218>,  <45.474941, 31.627583, 25.646605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117496, 31.469238, 25.731218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307081, 0.882951, 0.355103,
		-0.327346, 0.252367, -0.910580,
		-0.893614, -0.395863, 0.211533,
		44.849411, 31.350479, 25.794678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080399, 32.196922, 25.573671>,  <45.474941, 31.627583, 25.646605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080399, 32.196922, 25.573671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811005, 31.958685, 25.748798>,  <44.649368, 31.815742, 25.853874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811005, 31.958685, 25.748798>,  <45.080399, 32.196922, 25.573671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811005, 31.958685, 25.748798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422837, 0.796221, 0.432714,
		-0.606323, 0.106301, -0.788082,
		-0.673485, -0.595594, 0.437819,
		44.608959, 31.780006, 25.880144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437889, 32.484474, 25.349619>,  <45.080399, 32.196922, 25.573671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437889, 32.484474, 25.349619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410694, 32.278877, 25.691658>,  <44.394379, 32.155518, 25.896881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410694, 32.278877, 25.691658>,  <44.437889, 32.484474, 25.349619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410694, 32.278877, 25.691658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418934, 0.792564, 0.443099,
		-0.905468, -0.328105, -0.269210,
		-0.067983, -0.513993, 0.855096,
		44.390301, 32.124680, 25.948187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689823, 32.529198, 25.507055>,  <44.437889, 32.484474, 25.349619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689823, 32.529198, 25.507055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896355, 32.419075, 25.831429>,  <44.020271, 32.353001, 26.026052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896355, 32.419075, 25.831429>,  <43.689823, 32.529198, 25.507055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896355, 32.419075, 25.831429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544073, 0.625815, 0.558874,
		-0.661355, -0.729769, 0.173339,
		0.516327, -0.275305, 0.810934,
		44.051254, 32.336483, 26.074709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199005, 32.330116, 26.077185>,  <43.689823, 32.529198, 25.507055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199005, 32.330116, 26.077185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548832, 32.451794, 26.228237>,  <43.758728, 32.524799, 26.318869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548832, 32.451794, 26.228237>,  <43.199005, 32.330116, 26.077185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548832, 32.451794, 26.228237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484379, 0.584394, 0.651046,
		-0.022643, -0.752298, 0.658433,
		0.874565, 0.304189, 0.377630,
		43.811203, 32.543049, 26.341526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197502, 32.188732, 26.813101>,  <43.199005, 32.330116, 26.077185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197502, 32.188732, 26.813101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431900, 32.506725, 26.750349>,  <43.572536, 32.697521, 26.712698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431900, 32.506725, 26.750349>,  <43.197502, 32.188732, 26.813101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431900, 32.506725, 26.750349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425380, 0.466581, 0.775470,
		0.689685, -0.387686, 0.611583,
		0.585992, 0.794986, -0.156880,
		43.607697, 32.745220, 26.703285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506145, 32.384598, 27.499861>,  <43.197502, 32.188732, 26.813101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506145, 32.384598, 27.499861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554970, 32.718822, 27.285595>,  <43.584263, 32.919357, 27.157036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554970, 32.718822, 27.285595>,  <43.506145, 32.384598, 27.499861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554970, 32.718822, 27.285595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271248, 0.547238, 0.791805,
		0.954739, 0.048652, 0.293439,
		0.122059, 0.835562, -0.535666,
		43.591587, 32.969490, 27.124895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010563, 32.853943, 27.793362>,  <43.506145, 32.384598, 27.499861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010563, 32.853943, 27.793362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769241, 33.076275, 27.564598>,  <43.624447, 33.209675, 27.427340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769241, 33.076275, 27.564598>,  <44.010563, 32.853943, 27.793362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769241, 33.076275, 27.564598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185196, 0.599873, 0.778366,
		0.775711, 0.575506, -0.258968,
		-0.603303, 0.555828, -0.571910,
		43.588249, 33.243023, 27.393024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131760, 33.582439, 28.083069>,  <44.010563, 32.853943, 27.793362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131760, 33.582439, 28.083069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790234, 33.600086, 27.875587>,  <43.585320, 33.610676, 27.751099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790234, 33.600086, 27.875587>,  <44.131760, 33.582439, 28.083069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790234, 33.600086, 27.875587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375020, 0.638945, 0.671647,
		0.361057, 0.767986, -0.528994,
		-0.853814, 0.044119, -0.518705,
		43.534088, 33.613323, 27.719976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913063, 34.276234, 28.229250>,  <44.131760, 33.582439, 28.083069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913063, 34.276234, 28.229250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580803, 34.109222, 28.081905>,  <43.381447, 34.009014, 27.993500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580803, 34.109222, 28.081905>,  <43.913063, 34.276234, 28.229250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580803, 34.109222, 28.081905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547517, 0.492240, 0.676701,
		-0.101221, 0.763786, -0.637484,
		-0.830650, -0.417530, -0.368360,
		43.331608, 33.983963, 27.971397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367199, 34.872787, 28.277834>,  <43.913063, 34.276234, 28.229250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367199, 34.872787, 28.277834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187569, 34.516487, 28.249861>,  <43.079788, 34.302708, 28.233078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187569, 34.516487, 28.249861>,  <43.367199, 34.872787, 28.277834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187569, 34.516487, 28.249861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748419, 0.332256, 0.573999,
		-0.488055, 0.310107, -0.815865,
		-0.449077, -0.890752, -0.069931,
		43.052845, 34.249260, 28.228882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667667, 34.955025, 28.114176>,  <43.367199, 34.872787, 28.277834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667667, 34.955025, 28.114176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655655, 34.592205, 28.282156>,  <42.648445, 34.374512, 28.382944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655655, 34.592205, 28.282156>,  <42.667667, 34.955025, 28.114176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655655, 34.592205, 28.282156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782180, 0.282911, 0.555117,
		-0.622328, -0.311806, -0.717973,
		-0.030033, -0.907049, 0.419952,
		42.646645, 34.320091, 28.408142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919250, 34.796150, 28.191921>,  <42.667667, 34.955025, 28.114176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919250, 34.796150, 28.191921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092815, 34.507915, 28.408245>,  <42.196953, 34.334972, 28.538038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092815, 34.507915, 28.408245>,  <41.919250, 34.796150, 28.191921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092815, 34.507915, 28.408245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795513, -0.024641, 0.605435,
		-0.422944, -0.692924, -0.583931,
		0.433909, -0.720590, 0.540808,
		42.222988, 34.291740, 28.570488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317867, 34.331577, 28.383669>,  <41.919250, 34.796150, 28.191921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317867, 34.331577, 28.383669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613384, 34.281830, 28.648613>,  <41.790695, 34.251980, 28.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613384, 34.281830, 28.648613>,  <41.317867, 34.331577, 28.383669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613384, 34.281830, 28.648613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666232, 0.013408, 0.745624,
		-0.101612, -0.992146, -0.072952,
		0.738789, -0.124368, 0.662361,
		41.835022, 34.244518, 28.847321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025673, 33.880207, 28.786797>,  <41.317867, 34.331577, 28.383669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025673, 33.880207, 28.786797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295662, 34.055878, 29.023958>,  <41.457657, 34.161282, 29.166254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295662, 34.055878, 29.023958>,  <41.025673, 33.880207, 28.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295662, 34.055878, 29.023958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632887, -0.068466, 0.771211,
		0.379291, -0.895788, 0.231736,
		0.674976, 0.439176, 0.592902,
		41.498154, 34.187630, 29.201828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078484, 33.496571, 29.480209>,  <41.025673, 33.880207, 28.786797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078484, 33.496571, 29.480209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193413, 33.869953, 29.566095>,  <41.262371, 34.093983, 29.617628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193413, 33.869953, 29.566095>,  <41.078484, 33.496571, 29.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193413, 33.869953, 29.566095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632649, 0.016638, 0.774260,
		0.719165, -0.358305, 0.595331,
		0.287327, 0.933456, 0.214716,
		41.279610, 34.149990, 29.630510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097340, 33.527729, 30.196821>,  <41.078484, 33.496571, 29.480209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097340, 33.527729, 30.196821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081367, 33.917919, 30.110245>,  <41.071785, 34.152035, 30.058298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081367, 33.917919, 30.110245>,  <41.097340, 33.527729, 30.196821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081367, 33.917919, 30.110245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715181, 0.123375, 0.687965,
		0.697799, 0.182264, 0.692717,
		-0.039927, 0.975479, -0.216442,
		41.069389, 34.210564, 30.045313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037346, 33.801483, 30.887636>,  <41.097340, 33.527729, 30.196821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037346, 33.801483, 30.887636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939320, 34.138996, 30.696651>,  <40.880505, 34.341503, 30.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939320, 34.138996, 30.696651>,  <41.037346, 33.801483, 30.887636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939320, 34.138996, 30.696651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561389, 0.278011, 0.779456,
		0.790433, 0.459061, 0.405560,
		-0.245068, 0.843785, -0.477461,
		40.865799, 34.392132, 30.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015099, 34.369133, 31.370569>,  <41.037346, 33.801483, 30.887636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015099, 34.369133, 31.370569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771877, 34.510231, 31.086079>,  <40.625946, 34.594891, 30.915384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771877, 34.510231, 31.086079>,  <41.015099, 34.369133, 31.370569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771877, 34.510231, 31.086079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653875, 0.285556, 0.700647,
		0.450247, 0.891081, 0.057020,
		-0.608051, 0.352748, -0.711226,
		40.589462, 34.616055, 30.872711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848305, 35.113743, 31.633444>,  <41.015099, 34.369133, 31.370569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848305, 35.113743, 31.633444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574516, 34.973454, 31.377790>,  <40.410244, 34.889282, 31.224398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574516, 34.973454, 31.377790>,  <40.848305, 35.113743, 31.633444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574516, 34.973454, 31.377790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724027, 0.429635, 0.539628,
		0.085335, 0.832111, -0.548005,
		-0.684473, -0.350722, -0.639134,
		40.369175, 34.868237, 31.186050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512508, 35.706455, 31.333660>,  <40.848305, 35.113743, 31.633444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512508, 35.706455, 31.333660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272636, 35.387894, 31.302359>,  <40.128712, 35.196758, 31.283577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272636, 35.387894, 31.302359>,  <40.512508, 35.706455, 31.333660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272636, 35.387894, 31.302359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719906, 0.494191, 0.487350,
		-0.349455, 0.348589, -0.869693,
		-0.599679, -0.796405, -0.078254,
		40.092731, 35.148972, 31.278883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872292, 35.984848, 31.226620>,  <40.512508, 35.706455, 31.333660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872292, 35.984848, 31.226620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800430, 35.614594, 31.359837>,  <39.757313, 35.392441, 31.439766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800430, 35.614594, 31.359837>,  <39.872292, 35.984848, 31.226620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800430, 35.614594, 31.359837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655254, 0.365110, 0.661315,
		-0.733736, -0.099421, -0.672121,
		-0.179649, -0.925641, 0.333040,
		39.746536, 35.336903, 31.459749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091087, 35.902504, 31.301311>,  <39.872292, 35.984848, 31.226620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091087, 35.902504, 31.301311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243137, 35.616657, 31.536201>,  <39.334366, 35.445148, 31.677135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243137, 35.616657, 31.536201>,  <39.091087, 35.902504, 31.301311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243137, 35.616657, 31.536201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670202, 0.224743, 0.707333,
		-0.637445, -0.662432, -0.393507,
		0.380122, -0.714614, 0.587224,
		39.357174, 35.402271, 31.712368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491032, 35.476574, 31.611534>,  <39.091087, 35.902504, 31.301311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491032, 35.476574, 31.611534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805859, 35.443909, 31.856108>,  <38.994755, 35.424309, 32.002853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805859, 35.443909, 31.856108>,  <38.491032, 35.476574, 31.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805859, 35.443909, 31.856108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590020, 0.189547, 0.784824,
		-0.179989, -0.978469, 0.101002,
		0.787071, -0.081667, 0.611433,
		39.041981, 35.419407, 32.039539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163155, 35.320259, 32.227356>,  <38.491032, 35.476574, 31.611534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163155, 35.320259, 32.227356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541168, 35.376522, 32.345432>,  <38.767975, 35.410278, 32.416279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541168, 35.376522, 32.345432>,  <38.163155, 35.320259, 32.227356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541168, 35.376522, 32.345432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320184, 0.214891, 0.922661,
		0.066344, -0.966456, 0.248114,
		0.945029, 0.140656, 0.295187,
		38.824677, 35.418720, 32.433987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222622, 34.896351, 32.829140>,  <38.163155, 35.320259, 32.227356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222622, 34.896351, 32.829140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472668, 35.207981, 32.810097>,  <38.622696, 35.394958, 32.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472668, 35.207981, 32.810097>,  <38.222622, 34.896351, 32.829140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472668, 35.207981, 32.810097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292671, 0.290499, 0.911018,
		0.723584, -0.555559, 0.409609,
		0.625115, 0.779079, -0.047605,
		38.660202, 35.441704, 32.795815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470570, 35.024067, 33.490906>,  <38.222622, 34.896351, 32.829140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470570, 35.024067, 33.490906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610950, 35.365669, 33.337276>,  <38.695179, 35.570629, 33.245098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610950, 35.365669, 33.337276>,  <38.470570, 35.024067, 33.490906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610950, 35.365669, 33.337276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039276, 0.423222, 0.905174,
		0.935570, -0.302586, 0.182072,
		0.350950, 0.854005, -0.384069,
		38.716236, 35.621872, 33.222057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981251, 35.291599, 33.932549>,  <38.470570, 35.024067, 33.490906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981251, 35.291599, 33.932549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 35.605770, 33.734627>,  <38.743267, 35.794273, 33.615875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 35.605770, 33.734627>,  <38.981251, 35.291599, 33.932549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832512, 35.605770, 33.734627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137714, 0.480448, 0.866143,
		0.918022, 0.390214, -0.070488,
		-0.371848, 0.785431, -0.494800,
		38.720959, 35.841400, 33.586185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352760, 35.772049, 34.250160>,  <38.981251, 35.291599, 33.932549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352760, 35.772049, 34.250160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034592, 35.949753, 34.085266>,  <38.843689, 36.056377, 33.986332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034592, 35.949753, 34.085266>,  <39.352760, 35.772049, 34.250160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034592, 35.949753, 34.085266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170483, 0.488704, 0.855631,
		0.581583, 0.750867, -0.312987,
		-0.795422, 0.444261, -0.412232,
		38.795963, 36.083031, 33.961597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496449, 36.490612, 34.387550>,  <39.352760, 35.772049, 34.250160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496449, 36.490612, 34.387550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105019, 36.484756, 34.305408>,  <38.870159, 36.481243, 34.256123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105019, 36.484756, 34.305408>,  <39.496449, 36.490612, 34.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105019, 36.484756, 34.305408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179001, 0.553277, 0.813538,
		0.101708, 0.832869, -0.544045,
		-0.978578, -0.014641, -0.205357,
		38.811447, 36.480366, 34.243801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291771, 37.175091, 34.591534>,  <39.496449, 36.490612, 34.387550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291771, 37.175091, 34.591534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970203, 36.937641, 34.576981>,  <38.777264, 36.795170, 34.568249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970203, 36.937641, 34.576981>,  <39.291771, 37.175091, 34.591534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970203, 36.937641, 34.576981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432227, 0.541143, 0.721349,
		-0.408523, 0.595631, -0.691615,
		-0.803921, -0.593623, -0.036378,
		38.729027, 36.759556, 34.566067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671684, 37.544853, 34.359131>,  <39.291771, 37.175091, 34.591534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671684, 37.544853, 34.359131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563198, 37.238384, 34.592175>,  <38.498108, 37.054504, 34.731998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563198, 37.238384, 34.592175>,  <38.671684, 37.544853, 34.359131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563198, 37.238384, 34.592175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554448, 0.619137, 0.556109,
		-0.786786, -0.172201, -0.592718,
		-0.271211, -0.766170, 0.582605,
		38.481834, 37.008533, 34.766956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973377, 37.631416, 34.385548>,  <38.671684, 37.544853, 34.359131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973377, 37.631416, 34.385548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043819, 37.370026, 34.680019>,  <38.086086, 37.213192, 34.856701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043819, 37.370026, 34.680019>,  <37.973377, 37.631416, 34.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043819, 37.370026, 34.680019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652788, 0.482238, 0.584221,
		-0.736786, -0.583454, -0.341654,
		0.176107, -0.653474, 0.736178,
		38.096653, 37.173985, 34.900871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377548, 37.520111, 34.710484>,  <37.973377, 37.631416, 34.385548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377548, 37.520111, 34.710484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640537, 37.402752, 34.988087>,  <37.798332, 37.332336, 35.154648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640537, 37.402752, 34.988087>,  <37.377548, 37.520111, 34.710484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640537, 37.402752, 34.988087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579425, 0.391918, 0.714610,
		-0.481660, -0.871962, 0.087673,
		0.657473, -0.293399, 0.694008,
		37.837780, 37.314732, 35.196289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990459, 37.327641, 35.249123>,  <37.377548, 37.520111, 34.710484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990459, 37.327641, 35.249123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356014, 37.389492, 35.399265>,  <37.575348, 37.426601, 35.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356014, 37.389492, 35.399265>,  <36.990459, 37.327641, 35.249123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356014, 37.389492, 35.399265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404137, 0.434042, 0.805158,
		-0.038423, -0.887523, 0.459158,
		0.913891, 0.154626, 0.375359,
		37.630180, 37.435879, 35.511871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931141, 37.157665, 35.898670>,  <36.990459, 37.327641, 35.249123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931141, 37.157665, 35.898670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247059, 37.402710, 35.886482>,  <37.436611, 37.549736, 35.879169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247059, 37.402710, 35.886482>,  <36.931141, 37.157665, 35.898670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247059, 37.402710, 35.886482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420886, 0.577416, 0.699604,
		0.446182, -0.539719, 0.713881,
		0.789796, 0.612613, -0.030472,
		37.483997, 37.586494, 35.877338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982407, 37.402641, 36.576595>,  <36.931141, 37.157665, 35.898670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982407, 37.402641, 36.576595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223404, 37.650646, 36.375561>,  <37.368000, 37.799450, 36.254940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223404, 37.650646, 36.375561>,  <36.982407, 37.402641, 36.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223404, 37.650646, 36.375561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154280, 0.708303, 0.688843,
		0.783077, -0.337478, 0.522397,
		0.602485, 0.620013, -0.502589,
		37.404152, 37.836651, 36.224785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275200, 37.840565, 37.018902>,  <36.982407, 37.402641, 36.576595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275200, 37.840565, 37.018902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312378, 38.074291, 36.696430>,  <37.334682, 38.214527, 36.502945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312378, 38.074291, 36.696430>,  <37.275200, 37.840565, 37.018902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312378, 38.074291, 36.696430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136181, 0.794619, 0.591638,
		0.986315, -0.164774, -0.005721,
		0.092941, 0.584320, -0.806184,
		37.340260, 38.249588, 36.454575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850143, 38.316883, 37.145882>,  <37.275200, 37.840565, 37.018902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850143, 38.316883, 37.145882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618313, 38.482719, 36.865253>,  <37.479214, 38.582222, 36.696877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618313, 38.482719, 36.865253>,  <37.850143, 38.316883, 37.145882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618313, 38.482719, 36.865253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164346, 0.783759, 0.598926,
		0.798176, 0.462423, -0.386110,
		-0.579574, 0.414592, -0.701575,
		37.444439, 38.607098, 36.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242851, 39.049873, 36.937256>,  <37.850143, 38.316883, 37.145882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242851, 39.049873, 36.937256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864788, 39.049702, 36.806610>,  <37.637951, 39.049599, 36.728222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864788, 39.049702, 36.806610>,  <38.242851, 39.049873, 36.937256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864788, 39.049702, 36.806610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145591, 0.895698, 0.420152,
		0.292366, 0.444662, -0.846639,
		-0.945159, -0.000425, -0.326610,
		37.581242, 39.049576, 36.708626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102417, 39.603882, 36.472042>,  <38.242851, 39.049873, 36.937256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102417, 39.603882, 36.472042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738667, 39.512829, 36.611305>,  <37.520416, 39.458199, 36.694862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738667, 39.512829, 36.611305>,  <38.102417, 39.603882, 36.472042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738667, 39.512829, 36.611305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116682, 0.942970, 0.311756,
		-0.399271, 0.242880, -0.884077,
		-0.909378, -0.227631, 0.348161,
		37.465855, 39.444538, 36.715755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580925, 39.956932, 36.075199>,  <38.102417, 39.603882, 36.472042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580925, 39.956932, 36.075199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447044, 39.880058, 36.444206>,  <37.366718, 39.833935, 36.665611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447044, 39.880058, 36.444206>,  <37.580925, 39.956932, 36.075199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447044, 39.880058, 36.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083038, 0.981189, 0.174275,
		-0.938659, -0.018275, -0.344362,
		-0.334699, -0.192180, 0.922520,
		37.346634, 39.822403, 36.720963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833931, 40.297901, 36.304913>,  <37.580925, 39.956932, 36.075199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833931, 40.297901, 36.304913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090752, 40.236206, 36.605305>,  <37.244846, 40.199188, 36.785542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090752, 40.236206, 36.605305>,  <36.833931, 40.297901, 36.304913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090752, 40.236206, 36.605305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130357, 0.987253, 0.091312,
		-0.755495, 0.039269, 0.653977,
		0.642055, -0.154236, 0.750984,
		37.283367, 40.189934, 36.830601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125431, 40.881966, 36.462826>,  <36.833931, 40.297901, 36.304913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125431, 40.881966, 36.462826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285500, 40.686768, 36.773109>,  <37.381538, 40.569649, 36.959282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285500, 40.686768, 36.773109>,  <37.125431, 40.881966, 36.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285500, 40.686768, 36.773109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248750, 0.872499, 0.420558,
		-0.882037, 0.024664, 0.470535,
		0.400168, -0.487993, 0.775711,
		37.405552, 40.540371, 37.005821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875465, 41.109188, 37.082661>,  <37.125431, 40.881966, 36.462826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875465, 41.109188, 37.082661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244957, 40.974354, 37.155426>,  <37.466652, 40.893452, 37.199085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244957, 40.974354, 37.155426>,  <36.875465, 41.109188, 37.082661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244957, 40.974354, 37.155426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189032, 0.814235, 0.548897,
		-0.333150, -0.472645, 0.815854,
		0.923731, -0.337087, 0.181917,
		37.522076, 40.873226, 37.210003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941780, 41.218475, 37.788147>,  <36.875465, 41.109188, 37.082661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941780, 41.218475, 37.788147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301300, 41.228191, 37.613075>,  <37.517014, 41.234020, 37.508030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301300, 41.228191, 37.613075>,  <36.941780, 41.218475, 37.788147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301300, 41.228191, 37.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291434, 0.712736, 0.638023,
		0.327449, -0.701012, 0.633529,
		0.898801, 0.024288, -0.437683,
		37.570942, 41.235477, 37.481770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447361, 41.033951, 38.283081>,  <36.941780, 41.218475, 37.788147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447361, 41.033951, 38.283081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610519, 41.247574, 37.986862>,  <37.708416, 41.375748, 37.809132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610519, 41.247574, 37.986862>,  <37.447361, 41.033951, 38.283081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610519, 41.247574, 37.986862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224134, 0.727699, 0.648242,
		0.885090, -0.430397, 0.177126,
		0.407896, 0.534053, -0.740546,
		37.732887, 41.407791, 37.764698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050629, 41.364624, 38.570763>,  <37.447361, 41.033951, 38.283081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050629, 41.364624, 38.570763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979618, 41.583824, 38.243793>,  <37.937012, 41.715343, 38.047611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979618, 41.583824, 38.243793>,  <38.050629, 41.364624, 38.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979618, 41.583824, 38.243793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142342, 0.836177, 0.529666,
		0.973767, -0.022321, -0.226451,
		-0.177531, 0.548005, -0.817419,
		37.926357, 41.748226, 37.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503143, 41.855877, 38.672337>,  <38.050629, 41.364624, 38.570763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503143, 41.855877, 38.672337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 41.992882, 38.376404>,  <38.132530, 42.075085, 38.198845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 41.992882, 38.376404>,  <38.503143, 41.855877, 38.672337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271511, 41.992882, 38.376404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096394, 0.929867, 0.355044,
		0.809550, 0.134285, -0.571486,
		-0.579083, 0.342513, -0.739829,
		38.097786, 42.095634, 38.154453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825939, 42.476624, 38.485111>,  <38.503143, 41.855877, 38.672337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825939, 42.476624, 38.485111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439713, 42.484615, 38.381363>,  <38.207977, 42.489410, 38.319115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439713, 42.484615, 38.381363>,  <38.825939, 42.476624, 38.485111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439713, 42.484615, 38.381363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102724, 0.886739, 0.450713,
		0.238999, 0.461839, -0.854157,
		-0.965571, 0.019978, -0.259371,
		38.150040, 42.490608, 38.303551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751984, 43.064438, 38.025333>,  <38.825939, 42.476624, 38.485111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751984, 43.064438, 38.025333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407650, 42.996380, 38.217171>,  <38.201050, 42.955544, 38.332272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407650, 42.996380, 38.217171>,  <38.751984, 43.064438, 38.025333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407650, 42.996380, 38.217171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010959, 0.948427, 0.316805,
		-0.508764, 0.267461, -0.818305,
		-0.860836, -0.170147, 0.479594,
		38.149399, 42.945335, 38.361050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279369, 43.579777, 37.865353>,  <38.751984, 43.064438, 38.025333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279369, 43.579777, 37.865353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152462, 43.425301, 38.211807>,  <38.076317, 43.332615, 38.419682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152462, 43.425301, 38.211807>,  <38.279369, 43.579777, 37.865353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152462, 43.425301, 38.211807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057633, 0.919489, 0.388868,
		-0.946583, 0.073458, -0.313983,
		-0.317269, -0.386192, 0.866139,
		38.057281, 43.309444, 38.471649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660580, 43.920425, 38.073124>,  <38.279369, 43.579777, 37.865353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660580, 43.920425, 38.073124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820847, 43.758007, 38.401657>,  <37.917007, 43.660557, 38.598778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820847, 43.758007, 38.401657>,  <37.660580, 43.920425, 38.073124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820847, 43.758007, 38.401657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180780, 0.843779, 0.505327,
		-0.898211, -0.350951, 0.264672,
		0.400670, -0.406042, 0.821337,
		37.941048, 43.636196, 38.648060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257893, 44.109707, 38.620075>,  <37.660580, 43.920425, 38.073124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257893, 44.109707, 38.620075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642036, 44.036697, 38.704357>,  <37.872520, 43.992889, 38.754929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642036, 44.036697, 38.704357>,  <37.257893, 44.109707, 38.620075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642036, 44.036697, 38.704357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011721, 0.781611, 0.623656,
		-0.278526, -0.596463, 0.752765,
		0.960357, -0.182527, 0.210708,
		37.930145, 43.981937, 38.767570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267090, 44.368614, 39.200111>,  <37.257893, 44.109707, 38.620075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267090, 44.368614, 39.200111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631824, 44.369423, 39.035892>,  <37.850666, 44.369907, 38.937363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631824, 44.369423, 39.035892>,  <37.267090, 44.368614, 39.200111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631824, 44.369423, 39.035892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213511, 0.851786, 0.478407,
		0.350662, -0.523885, 0.776261,
		0.911838, 0.002019, -0.410544,
		37.905376, 44.370029, 38.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884743, 44.594421, 39.508469>,  <37.267090, 44.368614, 39.200111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884743, 44.594421, 39.508469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946156, 44.366302, 39.831253>,  <37.983002, 44.229431, 40.024925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946156, 44.366302, 39.831253>,  <37.884743, 44.594421, 39.508469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946156, 44.366302, 39.831253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157677, -0.820324, -0.549733,
		0.975482, -0.042837, -0.215869,
		0.153533, -0.570293, 0.806966,
		37.992214, 44.195213, 40.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365589, 44.186096, 39.285240>,  <37.884743, 44.594421, 39.508469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365589, 44.186096, 39.285240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150097, 44.012440, 39.574043>,  <38.020802, 43.908245, 39.747326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150097, 44.012440, 39.574043>,  <38.365589, 44.186096, 39.285240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150097, 44.012440, 39.574043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148497, -0.794650, -0.588625,
		0.829286, -0.424328, 0.363636,
		-0.538733, -0.434140, 0.722004,
		37.988476, 43.882198, 39.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647499, 43.510990, 39.387558>,  <38.365589, 44.186096, 39.285240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647499, 43.510990, 39.387558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252148, 43.526512, 39.446339>,  <38.014935, 43.535828, 39.481606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252148, 43.526512, 39.446339>,  <38.647499, 43.510990, 39.387558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252148, 43.526512, 39.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132960, -0.689201, -0.712266,
		0.073639, -0.723530, 0.686354,
		-0.988382, 0.038807, 0.146953,
		37.955631, 43.538155, 39.490425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345921, 42.815350, 39.467648>,  <38.647499, 43.510990, 39.387558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345921, 42.815350, 39.467648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122475, 43.110420, 39.315975>,  <37.988407, 43.287464, 39.224972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122475, 43.110420, 39.315975>,  <38.345921, 42.815350, 39.467648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122475, 43.110420, 39.315975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353916, -0.625448, -0.695383,
		-0.750130, -0.254251, 0.610460,
		-0.558613, 0.737679, -0.379184,
		37.954891, 43.331722, 39.202221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543846, 42.684647, 39.525669>,  <38.345921, 42.815350, 39.467648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543846, 42.684647, 39.525669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698658, 42.876076, 39.210411>,  <37.791546, 42.990932, 39.021255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698658, 42.876076, 39.210411>,  <37.543846, 42.684647, 39.525669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698658, 42.876076, 39.210411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485318, -0.621056, -0.615432,
		-0.784013, 0.620692, -0.008106,
		0.387027, 0.478573, -0.788148,
		37.814766, 43.019650, 38.973965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031456, 42.507191, 38.907623>,  <37.543846, 42.684647, 39.525669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031456, 42.507191, 38.907623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337132, 42.692226, 38.727829>,  <37.520535, 42.803246, 38.619953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337132, 42.692226, 38.727829>,  <37.031456, 42.507191, 38.907623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337132, 42.692226, 38.727829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102356, -0.601075, -0.792611,
		-0.636824, 0.651709, -0.411984,
		0.764185, 0.462585, -0.449485,
		37.566387, 42.831001, 38.592983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861347, 42.516842, 38.141064>,  <37.031456, 42.507191, 38.907623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861347, 42.516842, 38.141064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259277, 42.514191, 38.181618>,  <37.498035, 42.512600, 38.205952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259277, 42.514191, 38.181618>,  <36.861347, 42.516842, 38.141064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259277, 42.514191, 38.181618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069176, -0.686730, -0.723614,
		0.074420, 0.726882, -0.682718,
		0.994825, -0.006624, 0.101389,
		37.557724, 42.512203, 38.212036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115097, 42.453197, 37.512402>,  <36.861347, 42.516842, 38.141064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115097, 42.453197, 37.512402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470737, 42.391129, 37.684643>,  <37.684124, 42.353886, 37.787987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470737, 42.391129, 37.684643>,  <37.115097, 42.453197, 37.512402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470737, 42.391129, 37.684643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146671, -0.794575, -0.589184,
		0.433570, 0.587002, -0.683700,
		0.889103, -0.155174, 0.430600,
		37.737469, 42.344578, 37.813824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742355, 42.348057, 36.927959>,  <37.115097, 42.453197, 37.512402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742355, 42.348057, 36.927959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832878, 42.177227, 37.278133>,  <37.887192, 42.074730, 37.488239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832878, 42.177227, 37.278133>,  <37.742355, 42.348057, 36.927959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832878, 42.177227, 37.278133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014178, -0.897215, -0.441366,
		0.973953, 0.112296, -0.196990,
		0.226306, -0.427076, 0.875438,
		37.900768, 42.049103, 37.540764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357975, 42.046497, 36.818031>,  <37.742355, 42.348057, 36.927959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357975, 42.046497, 36.818031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149117, 41.865349, 37.107105>,  <38.023800, 41.756660, 37.280548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149117, 41.865349, 37.107105>,  <38.357975, 42.046497, 36.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149117, 41.865349, 37.107105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059053, -0.864533, -0.499094,
		0.850809, -0.217924, 0.478157,
		-0.522147, -0.452870, 0.722683,
		37.992474, 41.729488, 37.323910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640232, 41.326126, 36.898010>,  <38.357975, 42.046497, 36.818031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640232, 41.326126, 36.898010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253246, 41.341621, 36.998024>,  <38.021057, 41.350918, 37.058033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253246, 41.341621, 36.998024>,  <38.640232, 41.326126, 36.898010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253246, 41.341621, 36.998024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179711, -0.800822, -0.571304,
		0.178104, -0.597649, 0.781726,
		-0.967462, 0.038733, 0.250034,
		37.963009, 41.353241, 37.073032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492462, 40.630852, 37.094303>,  <38.640232, 41.326126, 36.898010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492462, 40.630852, 37.094303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252182, 40.746506, 37.392448>,  <38.108013, 40.815899, 37.571335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252182, 40.746506, 37.392448>,  <38.492462, 40.630852, 37.094303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252182, 40.746506, 37.392448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631024, -0.743921, -0.219977,
		0.490887, -0.602480, 0.629323,
		-0.600699, 0.289134, 0.745361,
		38.071972, 40.833244, 37.616058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334129, 40.056751, 37.584801>,  <38.492462, 40.630852, 37.094303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334129, 40.056751, 37.584801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049961, 40.334709, 37.540203>,  <37.879463, 40.501484, 37.513443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049961, 40.334709, 37.540203>,  <38.334129, 40.056751, 37.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049961, 40.334709, 37.540203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648974, -0.708112, -0.278228,
		-0.272291, -0.125299, 0.954022,
		-0.710416, 0.694894, -0.111497,
		37.836838, 40.543179, 37.506756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818752, 40.034863, 38.134449>,  <38.334129, 40.056751, 37.584801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818752, 40.034863, 38.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702053, 40.179279, 37.780155>,  <37.632034, 40.265930, 37.567577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702053, 40.179279, 37.780155>,  <37.818752, 40.034863, 38.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702053, 40.179279, 37.780155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603454, -0.787946, -0.122413,
		-0.742108, 0.498786, 0.447758,
		-0.291751, 0.361045, -0.885736,
		37.614529, 40.287594, 37.514435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076141, 39.910198, 38.083298>,  <37.818752, 40.034863, 38.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076141, 39.910198, 38.083298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152061, 39.954807, 37.693111>,  <37.197613, 39.981575, 37.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152061, 39.954807, 37.693111>,  <37.076141, 39.910198, 38.083298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152061, 39.954807, 37.693111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731332, -0.646830, -0.216250,
		-0.655080, 0.754435, -0.041206,
		0.189800, 0.111526, -0.975468,
		37.209000, 39.988266, 37.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591892, 39.386280, 37.668194>,  <37.076141, 39.910198, 38.083298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591892, 39.386280, 37.668194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795906, 39.519703, 37.351055>,  <36.918312, 39.599754, 37.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795906, 39.519703, 37.351055>,  <36.591892, 39.386280, 37.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795906, 39.519703, 37.351055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139598, -0.877432, -0.458941,
		-0.848753, 0.344754, -0.400953,
		0.510031, 0.333555, -0.792849,
		36.948914, 39.619770, 37.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239597, 39.161392, 37.026497>,  <36.591892, 39.386280, 37.668194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239597, 39.161392, 37.026497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619503, 39.249573, 36.937645>,  <36.847446, 39.302483, 36.884335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619503, 39.249573, 36.937645>,  <36.239597, 39.161392, 37.026497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619503, 39.249573, 36.937645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051605, -0.810379, -0.583629,
		-0.308672, 0.542849, -0.781048,
		0.949768, 0.220456, -0.222127,
		36.904434, 39.315708, 36.871006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237911, 39.082371, 36.284100>,  <36.239597, 39.161392, 37.026497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237911, 39.082371, 36.284100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611515, 39.087852, 36.426891>,  <36.835678, 39.091141, 36.512566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611515, 39.087852, 36.426891>,  <36.237911, 39.082371, 36.284100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611515, 39.087852, 36.426891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216252, -0.817070, -0.534446,
		0.284355, 0.576376, -0.766116,
		0.934012, 0.013702, 0.356980,
		36.891720, 39.091965, 36.533985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664825, 38.879066, 35.655281>,  <36.237911, 39.082371, 36.284100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664825, 38.879066, 35.655281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904442, 38.822605, 35.970554>,  <37.048210, 38.788731, 36.159718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904442, 38.822605, 35.970554>,  <36.664825, 38.879066, 35.655281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904442, 38.822605, 35.970554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468145, -0.736839, -0.487759,
		0.649610, 0.661169, -0.375315,
		0.599038, -0.141152, 0.788181,
		37.084152, 38.780258, 36.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287380, 38.884315, 35.336990>,  <36.664825, 38.879066, 35.655281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287380, 38.884315, 35.336990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328815, 38.690716, 35.684559>,  <37.353676, 38.574558, 35.893101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328815, 38.690716, 35.684559>,  <37.287380, 38.884315, 35.336990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328815, 38.690716, 35.684559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486996, -0.737053, -0.468603,
		0.867240, 0.471700, 0.159356,
		0.103586, -0.483997, 0.868917,
		37.359890, 38.545517, 35.945232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972851, 38.809982, 35.681824>,  <37.287380, 38.884315, 35.336990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972851, 38.809982, 35.681824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759472, 38.491684, 35.796524>,  <37.631447, 38.300705, 35.865345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759472, 38.491684, 35.796524>,  <37.972851, 38.809982, 35.681824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759472, 38.491684, 35.796524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707841, -0.605566, -0.363664,
		0.463032, 0.008982, 0.886296,
		-0.533444, -0.795745, 0.286754,
		37.599438, 38.252960, 35.882549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464264, 38.398129, 35.752636>,  <37.972851, 38.809982, 35.681824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464264, 38.398129, 35.752636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160599, 38.141346, 35.795639>,  <37.978397, 37.987274, 35.821442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160599, 38.141346, 35.795639>,  <38.464264, 38.398129, 35.752636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160599, 38.141346, 35.795639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538728, -0.712400, -0.449732,
		0.365295, -0.283506, 0.886670,
		-0.759166, -0.641959, 0.107503,
		37.932850, 37.948757, 35.827888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736599, 37.781036, 36.030521>,  <38.464264, 38.398129, 35.752636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736599, 37.781036, 36.030521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394825, 37.673660, 35.852585>,  <38.189762, 37.609234, 35.745823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394825, 37.673660, 35.852585>,  <38.736599, 37.781036, 36.030521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394825, 37.673660, 35.852585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466592, -0.773075, -0.429706,
		-0.228547, -0.574715, 0.785792,
		-0.854434, -0.268436, -0.444842,
		38.138496, 37.593128, 35.719131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817188, 37.001068, 35.979691>,  <38.736599, 37.781036, 36.030521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817188, 37.001068, 35.979691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508823, 37.093754, 35.742374>,  <38.323803, 37.149364, 35.599983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508823, 37.093754, 35.742374>,  <38.817188, 37.001068, 35.979691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508823, 37.093754, 35.742374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354459, -0.617840, -0.701878,
		-0.529193, -0.751388, 0.394171,
		-0.770917, 0.231711, -0.593293,
		38.277550, 37.163269, 35.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455643, 36.523186, 35.927963>,  <38.817188, 37.001068, 35.979691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455643, 36.523186, 35.927963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650654, 36.312458, 36.206470>,  <39.767658, 36.186024, 36.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650654, 36.312458, 36.206470>,  <39.455643, 36.523186, 35.927963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650654, 36.312458, 36.206470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628440, -0.341870, -0.698705,
		0.606120, 0.778197, 0.164401,
		0.487526, -0.526816, 0.696264,
		39.796913, 36.154415, 36.415348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915382, 36.184746, 35.387470>,  <39.455643, 36.523186, 35.927963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915382, 36.184746, 35.387470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016171, 36.397953, 35.064384>,  <40.076641, 36.525875, 34.870533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016171, 36.397953, 35.064384>,  <39.915382, 36.184746, 35.387470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016171, 36.397953, 35.064384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764545, -0.621331, -0.171520,
		-0.593282, -0.574319, -0.564069,
		0.251966, 0.533016, -0.807717,
		40.091759, 36.557858, 34.822071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892551, 35.810139, 34.736637>,  <39.915382, 36.184746, 35.387470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892551, 35.810139, 34.736637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178925, 36.089352, 34.731174>,  <40.350750, 36.256882, 34.727898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178925, 36.089352, 34.731174>,  <39.892551, 35.810139, 34.736637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178925, 36.089352, 34.731174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679067, -0.700756, -0.218652,
		-0.162200, 0.147265, -0.975707,
		0.715932, 0.698036, -0.013660,
		40.393703, 36.298763, 34.727077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255661, 35.707039, 34.170803>,  <39.892551, 35.810139, 34.736637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255661, 35.707039, 34.170803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509964, 35.889534, 34.419853>,  <40.662544, 35.999031, 34.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509964, 35.889534, 34.419853>,  <40.255661, 35.707039, 34.170803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509964, 35.889534, 34.419853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705688, -0.670381, -0.229335,
		0.312763, 0.585179, -0.748161,
		0.635755, 0.456240, 0.622624,
		40.700691, 36.026405, 34.606640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983757, 35.637703, 33.854481>,  <40.255661, 35.707039, 34.170803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983757, 35.637703, 33.854481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078552, 35.742065, 34.228809>,  <41.135429, 35.804684, 34.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078552, 35.742065, 34.228809>,  <40.983757, 35.637703, 33.854481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078552, 35.742065, 34.228809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917435, -0.376999, -0.127222,
		0.319612, 0.888707, -0.328705,
		0.236985, 0.260904, 0.935825,
		41.149647, 35.820335, 34.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707085, 36.008263, 33.977333>,  <40.983757, 35.637703, 33.854481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707085, 36.008263, 33.977333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604557, 35.805611, 34.306606>,  <41.543041, 35.684021, 34.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604557, 35.805611, 34.306606>,  <41.707085, 36.008263, 33.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604557, 35.805611, 34.306606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903222, -0.428823, 0.017324,
		0.344222, 0.747955, 0.567516,
		-0.256321, -0.506630, 0.823180,
		41.527660, 35.653622, 34.553562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280548, 36.182346, 34.428608>,  <41.707085, 36.008263, 33.977333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280548, 36.182346, 34.428608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095814, 35.836060, 34.505795>,  <41.984974, 35.628288, 34.552109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095814, 35.836060, 34.505795>,  <42.280548, 36.182346, 34.428608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095814, 35.836060, 34.505795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824540, -0.499228, -0.266281,
		0.326861, 0.036133, 0.944382,
		-0.461840, -0.865717, 0.192971,
		41.957260, 35.576344, 34.563686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580551, 35.674381, 34.876102>,  <42.280548, 36.182346, 34.428608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580551, 35.674381, 34.876102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846809, 35.757877, 35.162693>,  <43.006565, 35.807976, 35.334648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846809, 35.757877, 35.162693>,  <42.580551, 35.674381, 34.876102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846809, 35.757877, 35.162693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732823, -0.364248, -0.574712,
		0.141012, 0.907608, -0.395428,
		0.665647, 0.208738, 0.716480,
		43.046505, 35.820499, 35.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218792, 36.086857, 34.563404>,  <42.580551, 35.674381, 34.876102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218792, 36.086857, 34.563404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263210, 35.822090, 34.859928>,  <43.289864, 35.663231, 35.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263210, 35.822090, 34.859928>,  <43.218792, 36.086857, 34.563404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263210, 35.822090, 34.859928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686946, -0.487910, -0.538561,
		0.718173, 0.569046, 0.400517,
		0.111050, -0.661914, 0.741308,
		43.296524, 35.623516, 35.082321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883572, 36.049118, 34.742233>,  <43.218792, 36.086857, 34.563404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883572, 36.049118, 34.742233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667088, 35.714371, 34.775085>,  <43.537197, 35.513523, 34.794796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667088, 35.714371, 34.775085>,  <43.883572, 36.049118, 34.742233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667088, 35.714371, 34.775085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688482, -0.497074, -0.528119,
		0.482790, -0.229278, 0.845189,
		-0.541208, -0.836869, 0.082128,
		43.504726, 35.463310, 34.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215164, 35.490059, 35.117775>,  <43.883572, 36.049118, 34.742233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215164, 35.490059, 35.117775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981724, 35.328625, 34.835915>,  <43.841660, 35.231766, 34.666798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981724, 35.328625, 34.835915>,  <44.215164, 35.490059, 35.117775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981724, 35.328625, 34.835915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765489, -0.563003, -0.311536,
		-0.270989, -0.721214, 0.637507,
		-0.583602, -0.403581, -0.704649,
		43.806644, 35.207550, 34.624519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728218, 36.047676, 35.355862>,  <44.215164, 35.490059, 35.117775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728218, 36.047676, 35.355862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877625, 36.128643, 35.717968>,  <44.967270, 36.177223, 35.935234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877625, 36.128643, 35.717968>,  <44.728218, 36.047676, 35.355862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877625, 36.128643, 35.717968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761307, -0.624474, -0.174485,
		0.529998, 0.754360, -0.387353,
		0.373516, 0.202418, 0.905269,
		44.989681, 36.189369, 35.989548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.372025, 36.489834, 35.342640>,  <44.728218, 36.047676, 35.355862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.372025, 36.489834, 35.342640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357670, 36.258343, 35.668533>,  <45.349056, 36.119450, 35.864067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357670, 36.258343, 35.668533>,  <45.372025, 36.489834, 35.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357670, 36.258343, 35.668533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778669, -0.527207, -0.340187,
		0.626407, 0.622197, 0.469558,
		-0.035890, -0.578726, 0.814732,
		45.346901, 36.084724, 35.912952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871532, 36.000870, 35.186657>,  <45.372025, 36.489834, 35.342640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871532, 36.000870, 35.186657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787991, 35.919743, 35.569332>,  <45.737865, 35.871067, 35.798935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787991, 35.919743, 35.569332>,  <45.871532, 36.000870, 35.186657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787991, 35.919743, 35.569332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719336, -0.694594, 0.009785,
		0.662522, 0.690221, 0.290963,
		-0.208855, -0.202817, 0.956684,
		45.725334, 35.858898, 35.856339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555172, 36.111115, 35.530704>,  <45.871532, 36.000870, 35.186657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555172, 36.111115, 35.530704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296219, 35.865181, 35.710873>,  <46.140846, 35.717621, 35.818974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296219, 35.865181, 35.710873>,  <46.555172, 36.111115, 35.530704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296219, 35.865181, 35.710873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734594, -0.660865, 0.153720,
		0.203153, 0.430389, 0.879485,
		-0.647380, -0.614835, 0.450418,
		46.102005, 35.680729, 35.845997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044571, 35.993889, 35.142128>,  <46.555172, 36.111115, 35.530704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044571, 35.993889, 35.142128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934441, 35.635155, 35.280624>,  <46.868362, 35.419914, 35.363720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934441, 35.635155, 35.280624>,  <47.044571, 35.993889, 35.142128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934441, 35.635155, 35.280624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881372, 0.091658, -0.463446,
		0.383899, -0.432763, -0.815682,
		-0.275326, -0.896836, 0.346238,
		46.851841, 35.366104, 35.384495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639736, 36.267555, 35.188148>,  <47.044571, 35.993889, 35.142128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639736, 36.267555, 35.188148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.898205, 36.542046, 35.321751>,  <48.053288, 36.706738, 35.401913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.898205, 36.542046, 35.321751>,  <47.639736, 36.267555, 35.188148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.898205, 36.542046, 35.321751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493663, 0.042067, 0.868635,
		0.582026, -0.726175, 0.365945,
		0.646176, 0.686222, 0.334001,
		48.092056, 36.747913, 35.421951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.867081, 36.564949, 34.526859>,  <47.639736, 36.267555, 35.188148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.867081, 36.564949, 34.526859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475571, 36.488724, 34.496704>,  <47.240665, 36.442989, 34.478611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475571, 36.488724, 34.496704>,  <47.867081, 36.564949, 34.526859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475571, 36.488724, 34.496704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178576, -0.973558, 0.142465,
		-0.100539, 0.125980, 0.986925,
		-0.978776, -0.190564, -0.075384,
		47.181938, 36.431553, 34.474091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.986225, 35.913471, 34.492264>,  <47.867081, 36.564949, 34.526859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.986225, 35.913471, 34.492264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605442, 35.813110, 34.562496>,  <47.376972, 35.752895, 34.604633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605442, 35.813110, 34.562496>,  <47.986225, 35.913471, 34.492264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.605442, 35.813110, 34.562496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283204, -0.939434, 0.193029,
		0.116513, 0.233480, 0.965356,
		-0.951956, -0.250902, 0.175579,
		47.319855, 35.737839, 34.615170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041256, 35.331066, 34.823086>,  <47.986225, 35.913471, 34.492264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041256, 35.331066, 34.823086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643181, 35.299488, 34.799866>,  <47.404335, 35.280540, 34.785934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643181, 35.299488, 34.799866>,  <48.041256, 35.331066, 34.823086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643181, 35.299488, 34.799866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065492, -0.976529, 0.205186,
		-0.072886, 0.200396, 0.977000,
		-0.995188, -0.078941, -0.058051,
		47.344624, 35.275806, 34.782452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.926125, 34.914707, 35.312382>,  <48.041256, 35.331066, 34.823086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.926125, 34.914707, 35.312382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631737, 34.868198, 35.045601>,  <47.455105, 34.840294, 34.885532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631737, 34.868198, 35.045601>,  <47.926125, 34.914707, 35.312382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631737, 34.868198, 35.045601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024131, -0.989022, 0.145788,
		-0.676584, 0.091202, 0.730696,
		-0.735970, -0.116270, -0.666955,
		47.410946, 34.833317, 34.845516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.593552, 28.372667, 31.018396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259228, 28.328259, 30.803326>,  <39.058632, 28.301613, 30.674284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259228, 28.328259, 30.803326>,  <39.593552, 28.372667, 31.018396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259228, 28.328259, 30.803326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430072, 0.741138, 0.515512,
		0.341259, 0.662109, -0.667198,
		-0.835811, -0.111021, -0.537675,
		39.008484, 28.294952, 30.642023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450726, 29.041239, 30.922703>,  <39.593552, 28.372667, 31.018396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450726, 29.041239, 30.922703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105816, 28.853928, 30.845554>,  <38.898869, 28.741541, 30.799265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105816, 28.853928, 30.845554>,  <39.450726, 29.041239, 30.922703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105816, 28.853928, 30.845554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495142, 0.699498, 0.515303,
		-0.106394, 0.539830, -0.835023,
		-0.862273, -0.468280, -0.192870,
		38.847134, 28.713444, 30.787693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926777, 29.561192, 30.658278>,  <39.450726, 29.041239, 30.922703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926777, 29.561192, 30.658278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718998, 29.251986, 30.803949>,  <38.594330, 29.066462, 30.891352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718998, 29.251986, 30.803949>,  <38.926777, 29.561192, 30.658278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718998, 29.251986, 30.803949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517684, 0.623756, 0.585605,
		-0.679839, 0.115660, -0.724184,
		-0.519445, -0.773014, 0.364178,
		38.563164, 29.020081, 30.913202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349911, 29.876036, 30.765997>,  <38.926777, 29.561192, 30.658278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349911, 29.876036, 30.765997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268799, 29.539726, 30.966787>,  <38.220131, 29.337940, 31.087261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.268799, 29.539726, 30.966787>,  <38.349911, 29.876036, 30.765997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268799, 29.539726, 30.966787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595596, 0.512801, 0.618304,
		-0.777268, -0.173595, -0.604748,
		-0.202781, -0.840773, 0.501976,
		38.207966, 29.287495, 31.117380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649605, 29.844315, 30.784458>,  <38.349911, 29.876036, 30.765997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649605, 29.844315, 30.784458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765514, 29.620821, 31.095287>,  <37.835060, 29.486725, 31.281786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765514, 29.620821, 31.095287>,  <37.649605, 29.844315, 30.784458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765514, 29.620821, 31.095287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747000, 0.375551, 0.548591,
		-0.598348, -0.739444, -0.308549,
		0.289776, -0.558734, 0.777075,
		37.852448, 29.453201, 31.328409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084446, 29.479307, 30.966764>,  <37.649605, 29.844315, 30.784458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084446, 29.479307, 30.966764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314404, 29.477615, 31.294050>,  <37.452377, 29.476601, 31.490421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314404, 29.477615, 31.294050>,  <37.084446, 29.479307, 30.966764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314404, 29.477615, 31.294050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733604, 0.440213, 0.517724,
		-0.362378, -0.897884, 0.249975,
		0.574898, -0.004229, 0.818214,
		37.486874, 29.476347, 31.539515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510326, 29.422148, 31.542370>,  <37.084446, 29.479307, 30.966764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510326, 29.422148, 31.542370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820446, 29.478754, 31.788584>,  <37.006519, 29.512718, 31.936312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.820446, 29.478754, 31.788584>,  <36.510326, 29.422148, 31.542370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820446, 29.478754, 31.788584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604712, 0.447607, 0.658765,
		-0.182292, -0.882962, 0.432606,
		0.775302, 0.141514, 0.615533,
		37.053036, 29.521208, 31.973244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196037, 29.291468, 32.144421>,  <36.510326, 29.422148, 31.542370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196037, 29.291468, 32.144421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507511, 29.535212, 32.204193>,  <36.694397, 29.681458, 32.240059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507511, 29.535212, 32.204193>,  <36.196037, 29.291468, 32.144421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507511, 29.535212, 32.204193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549552, 0.547504, 0.631057,
		0.302723, -0.573517, 0.761207,
		0.778686, 0.609358, 0.149435,
		36.741116, 29.718019, 32.249023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205894, 29.506189, 32.834831>,  <36.196037, 29.291468, 32.144421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205894, 29.506189, 32.834831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423813, 29.794851, 32.663990>,  <36.554565, 29.968048, 32.561485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.423813, 29.794851, 32.663990>,  <36.205894, 29.506189, 32.834831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423813, 29.794851, 32.663990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223411, 0.615818, 0.755550,
		0.808260, -0.316201, 0.496721,
		0.544795, 0.721654, -0.427098,
		36.587250, 30.011347, 32.535862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724205, 29.891462, 33.418415>,  <36.205894, 29.506189, 32.834831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724205, 29.891462, 33.418415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688061, 30.141535, 33.108322>,  <36.666374, 30.291578, 32.922268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688061, 30.141535, 33.108322>,  <36.724205, 29.891462, 33.418415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688061, 30.141535, 33.108322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257235, 0.737349, 0.624617,
		0.962115, 0.255856, 0.094193,
		-0.090359, 0.625183, -0.775230,
		36.660954, 30.329090, 32.875751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158772, 30.444216, 33.502983>,  <36.724205, 29.891462, 33.418415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158772, 30.444216, 33.502983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884670, 30.575960, 33.243153>,  <36.720211, 30.655006, 33.087254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884670, 30.575960, 33.243153>,  <37.158772, 30.444216, 33.502983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884670, 30.575960, 33.243153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172968, 0.792789, 0.584438,
		0.707472, 0.512842, -0.486289,
		-0.685249, 0.329361, -0.649581,
		36.679096, 30.674768, 33.048279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201477, 31.167593, 33.552231>,  <37.158772, 30.444216, 33.502983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201477, 31.167593, 33.552231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863388, 31.117353, 33.344448>,  <36.660534, 31.087210, 33.219780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863388, 31.117353, 33.344448>,  <37.201477, 31.167593, 33.552231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863388, 31.117353, 33.344448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400908, 0.791741, 0.460890,
		0.353384, 0.597805, -0.719548,
		-0.845218, -0.125601, -0.519453,
		36.609821, 31.079674, 33.188614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106281, 31.788149, 33.188717>,  <37.201477, 31.167593, 33.552231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106281, 31.788149, 33.188717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745804, 31.619854, 33.230335>,  <36.529518, 31.518877, 33.255306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745804, 31.619854, 33.230335>,  <37.106281, 31.788149, 33.188717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745804, 31.619854, 33.230335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330812, 0.822844, 0.462051,
		-0.280015, 0.381979, -0.880729,
		-0.901197, -0.420737, 0.104045,
		36.475445, 31.493633, 33.261547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659172, 32.202423, 32.883270>,  <37.106281, 31.788149, 33.188717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659172, 32.202423, 32.883270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435005, 31.988184, 33.135956>,  <36.300503, 31.859640, 33.287567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.435005, 31.988184, 33.135956>,  <36.659172, 32.202423, 32.883270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435005, 31.988184, 33.135956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366596, 0.844377, 0.390686,
		-0.742654, -0.012634, -0.669556,
		-0.560421, -0.535601, 0.631711,
		36.266880, 31.827503, 33.325470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980568, 32.518444, 32.890621>,  <36.659172, 32.202423, 32.883270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980568, 32.518444, 32.890621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961029, 32.309551, 33.231182>,  <35.949306, 32.184216, 33.435520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961029, 32.309551, 33.231182>,  <35.980568, 32.518444, 32.890621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961029, 32.309551, 33.231182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357412, 0.805115, 0.473337,
		-0.932669, -0.281181, -0.225978,
		-0.048845, -0.522233, 0.851402,
		35.946377, 32.152882, 33.486603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292706, 32.663380, 33.172726>,  <35.980568, 32.518444, 32.890621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292706, 32.663380, 33.172726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515762, 32.519833, 33.472126>,  <35.649597, 32.433704, 33.651764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515762, 32.519833, 33.472126>,  <35.292706, 32.663380, 33.172726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515762, 32.519833, 33.472126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372014, 0.698044, 0.611834,
		-0.742052, -0.619635, 0.255754,
		0.557641, -0.358868, 0.748498,
		35.683056, 32.412170, 33.696674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821632, 32.583523, 33.801575>,  <35.292706, 32.663380, 33.172726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821632, 32.583523, 33.801575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203388, 32.628166, 33.912346>,  <35.432442, 32.654953, 33.978809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203388, 32.628166, 33.912346>,  <34.821632, 32.583523, 33.801575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203388, 32.628166, 33.912346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272243, 0.706156, 0.653626,
		-0.122605, -0.699204, 0.704331,
		0.954385, 0.111612, 0.276932,
		35.489704, 32.661652, 33.995426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780594, 32.632626, 34.526669>,  <34.821632, 32.583523, 33.801575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780594, 32.632626, 34.526669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125450, 32.796329, 34.407192>,  <35.332363, 32.894550, 34.335506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125450, 32.796329, 34.407192>,  <34.780594, 32.632626, 34.526669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125450, 32.796329, 34.407192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138803, 0.757749, 0.637613,
		0.487277, -0.508257, 0.710096,
		0.862145, 0.409258, -0.298686,
		35.384094, 32.919106, 34.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069416, 32.994457, 35.067394>,  <34.780594, 32.632626, 34.526669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069416, 32.994457, 35.067394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292622, 33.163498, 34.781727>,  <35.426544, 33.264923, 34.610329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292622, 33.163498, 34.781727>,  <35.069416, 32.994457, 35.067394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292622, 33.163498, 34.781727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089730, 0.886296, 0.454343,
		0.824966, -0.189448, 0.532485,
		0.558014, 0.422598, -0.714165,
		35.460026, 33.290276, 34.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473389, 33.488586, 35.468365>,  <35.069416, 32.994457, 35.067394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473389, 33.488586, 35.468365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510006, 33.587189, 35.082439>,  <35.531975, 33.646351, 34.850883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510006, 33.587189, 35.082439>,  <35.473389, 33.488586, 35.468365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510006, 33.587189, 35.082439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142977, 0.962092, 0.232243,
		0.985484, 0.116685, 0.123316,
		0.091542, 0.246503, -0.964809,
		35.537468, 33.661140, 34.792995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865681, 34.064194, 35.507580>,  <35.473389, 33.488586, 35.468365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865681, 34.064194, 35.507580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674633, 34.090092, 35.157108>,  <35.560005, 34.105629, 34.946827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674633, 34.090092, 35.157108>,  <35.865681, 34.064194, 35.507580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674633, 34.090092, 35.157108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040115, 0.994634, 0.095361,
		0.877653, 0.080694, -0.472456,
		-0.477616, 0.064741, -0.876180,
		35.531349, 34.109512, 34.894253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283813, 34.329937, 35.142094>,  <35.865681, 34.064194, 35.507580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283813, 34.329937, 35.142094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933643, 34.397629, 34.960991>,  <35.723541, 34.438244, 34.852329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933643, 34.397629, 34.960991>,  <36.283813, 34.329937, 35.142094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933643, 34.397629, 34.960991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322370, 0.493527, 0.807780,
		0.360148, 0.853107, -0.377493,
		-0.875426, 0.169228, -0.452759,
		35.671017, 34.448399, 34.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457848, 34.877522, 35.673306>,  <36.283813, 34.329937, 35.142094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457848, 34.877522, 35.673306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 34.881428, 35.886539>,  <36.999290, 34.883770, 36.014481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796249, 34.881428, 35.886539>,  <36.457848, 34.877522, 35.673306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796249, 34.881428, 35.886539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518143, -0.250796, -0.817698,
		0.125712, 0.967991, -0.217234,
		0.846005, 0.009764, 0.533085,
		37.050053, 34.884357, 36.046467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012337, 35.060486, 35.182175>,  <36.457848, 34.877522, 35.673306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012337, 35.060486, 35.182175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215233, 34.897964, 35.486179>,  <37.336971, 34.800453, 35.668583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215233, 34.897964, 35.486179>,  <37.012337, 35.060486, 35.182175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215233, 34.897964, 35.486179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617787, -0.443444, -0.649382,
		0.600868, 0.798923, 0.026072,
		0.507245, -0.406300, 0.760015,
		37.367405, 34.776073, 35.714184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662918, 35.311993, 35.210960>,  <37.012337, 35.060486, 35.182175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662918, 35.311993, 35.210960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687180, 34.956287, 35.392303>,  <37.701736, 34.742867, 35.501110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687180, 34.956287, 35.392303>,  <37.662918, 35.311993, 35.210960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687180, 34.956287, 35.392303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614238, -0.324762, -0.719195,
		0.786786, 0.322097, 0.526518,
		0.060658, -0.889260, 0.453362,
		37.705376, 34.689510, 35.528313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412205, 35.125393, 35.185871>,  <37.662918, 35.311993, 35.210960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412205, 35.125393, 35.185871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215622, 34.783504, 35.252720>,  <38.097672, 34.578373, 35.292831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215622, 34.783504, 35.252720>,  <38.412205, 35.125393, 35.185871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215622, 34.783504, 35.252720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575902, -0.462896, -0.673842,
		0.653306, -0.234916, 0.719726,
		-0.491455, -0.854717, 0.167124,
		38.068184, 34.527088, 35.302856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911636, 34.651531, 35.158272>,  <38.412205, 35.125393, 35.185871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911636, 34.651531, 35.158272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589653, 34.426891, 35.081699>,  <38.396461, 34.292107, 35.035755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589653, 34.426891, 35.081699>,  <38.911636, 34.651531, 35.158272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589653, 34.426891, 35.081699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565425, -0.628308, -0.534344,
		0.179811, -0.538365, 0.823305,
		-0.804961, -0.561598, -0.191428,
		38.348164, 34.258411, 35.024269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126377, 34.022038, 35.311268>,  <38.911636, 34.651531, 35.158272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126377, 34.022038, 35.311268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807720, 33.954517, 35.079109>,  <38.616524, 33.914005, 34.939812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.807720, 33.954517, 35.079109>,  <39.126377, 34.022038, 35.311268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807720, 33.954517, 35.079109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532796, -0.649577, -0.542382,
		-0.285457, -0.741319, 0.607420,
		-0.796644, -0.168804, -0.580399,
		38.568726, 33.903877, 34.904991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164642, 33.287292, 35.065292>,  <39.126377, 34.022038, 35.311268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164642, 33.287292, 35.065292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931686, 33.470100, 34.796383>,  <38.791912, 33.579784, 34.635036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931686, 33.470100, 34.796383>,  <39.164642, 33.287292, 35.065292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931686, 33.470100, 34.796383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268845, -0.672178, -0.689855,
		-0.767168, -0.582501, 0.268601,
		-0.582389, 0.457022, -0.672276,
		38.756969, 33.607208, 34.594700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128696, 32.712894, 34.594627>,  <39.164642, 33.287292, 35.065292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128696, 32.712894, 34.594627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998631, 33.036285, 34.398411>,  <38.920589, 33.230320, 34.280682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998631, 33.036285, 34.398411>,  <39.128696, 32.712894, 34.594627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998631, 33.036285, 34.398411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276984, -0.414551, -0.866849,
		-0.904184, -0.417739, -0.089139,
		-0.325164, 0.808481, -0.490537,
		38.901081, 33.278831, 34.251251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716808, 32.335197, 34.034740>,  <39.128696, 32.712894, 34.594627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716808, 32.335197, 34.034740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763062, 32.722157, 33.944611>,  <38.790813, 32.954330, 33.890533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763062, 32.722157, 33.944611>,  <38.716808, 32.335197, 34.034740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763062, 32.722157, 33.944611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094827, -0.236562, -0.966978,
		-0.988755, 0.090452, -0.119091,
		0.115637, 0.967397, -0.225324,
		38.797752, 33.012375, 33.877014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294125, 32.393459, 33.516552>,  <38.716808, 32.335197, 34.034740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294125, 32.393459, 33.516552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580990, 32.671860, 33.502350>,  <38.753109, 32.838898, 33.493828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580990, 32.671860, 33.502350>,  <38.294125, 32.393459, 33.516552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580990, 32.671860, 33.502350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320098, -0.374229, -0.870339,
		-0.619040, 0.612812, -0.491172,
		0.717165, 0.695998, -0.035503,
		38.796139, 32.880661, 33.491699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313766, 32.464840, 32.883347>,  <38.294125, 32.393459, 33.516552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313766, 32.464840, 32.883347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657078, 32.641781, 32.987411>,  <38.863064, 32.747944, 33.049850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657078, 32.641781, 32.987411>,  <38.313766, 32.464840, 32.883347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657078, 32.641781, 32.987411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426482, -0.332844, -0.841028,
		-0.285433, 0.832792, -0.474326,
		0.858278, 0.442349, 0.260166,
		38.914562, 32.774487, 33.065460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564377, 32.567871, 32.265442>,  <38.313766, 32.464840, 32.883347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564377, 32.567871, 32.265442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890438, 32.579147, 32.496864>,  <39.086075, 32.585911, 32.635715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890438, 32.579147, 32.496864>,  <38.564377, 32.567871, 32.265442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890438, 32.579147, 32.496864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485865, -0.577075, -0.656445,
		0.315365, 0.816204, -0.484103,
		0.815157, 0.028189, 0.578554,
		39.134987, 32.587605, 32.670429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144402, 32.761673, 31.896715>,  <38.564377, 32.567871, 32.265442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144402, 32.761673, 31.896715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293407, 32.556255, 32.205910>,  <39.382809, 32.433006, 32.391426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293407, 32.556255, 32.205910>,  <39.144402, 32.761673, 31.896715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293407, 32.556255, 32.205910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593164, -0.508828, -0.623900,
		0.713717, 0.690918, 0.115071,
		0.372512, -0.513544, 0.772986,
		39.405163, 32.402191, 32.437805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892216, 32.621334, 31.777052>,  <39.144402, 32.761673, 31.896715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892216, 32.621334, 31.777052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808548, 32.346436, 32.055317>,  <39.758347, 32.181496, 32.222275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808548, 32.346436, 32.055317>,  <39.892216, 32.621334, 31.777052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808548, 32.346436, 32.055317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519149, -0.680909, -0.516572,
		0.828694, 0.253103, 0.499205,
		-0.209167, -0.687242, 0.695663,
		39.745796, 32.140263, 32.264015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550037, 32.330154, 31.848141>,  <39.892216, 32.621334, 31.777052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550037, 32.330154, 31.848141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314301, 32.068985, 32.038452>,  <40.172859, 31.912283, 32.152637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314301, 32.068985, 32.038452>,  <40.550037, 32.330154, 31.848141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314301, 32.068985, 32.038452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415507, -0.750025, -0.514603,
		0.692845, -0.105586, 0.713315,
		-0.589339, -0.652927, 0.475779,
		40.137501, 31.873106, 32.181187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002117, 31.822521, 32.244404>,  <40.550037, 32.330154, 31.848141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002117, 31.822521, 32.244404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659534, 31.622192, 32.194363>,  <40.453983, 31.501995, 32.164337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659534, 31.622192, 32.194363>,  <41.002117, 31.822521, 32.244404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659534, 31.622192, 32.194363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466836, -0.648015, -0.601781,
		0.220317, -0.573805, 0.788802,
		-0.856460, -0.500824, -0.125104,
		40.402596, 31.471945, 32.156830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190540, 31.060675, 32.461060>,  <41.002117, 31.822521, 32.244404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190540, 31.060675, 32.461060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.864914, 31.057009, 32.228783>,  <40.669537, 31.054810, 32.089417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.864914, 31.057009, 32.228783>,  <41.190540, 31.060675, 32.461060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864914, 31.057009, 32.228783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419311, -0.701087, -0.576762,
		-0.401832, -0.713017, 0.574577,
		-0.814070, -0.009165, -0.580695,
		40.620693, 31.054260, 32.054573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068062, 30.395247, 32.420006>,  <41.190540, 31.060675, 32.461060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068062, 30.395247, 32.420006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860069, 30.549505, 32.115139>,  <40.735271, 30.642061, 31.932220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860069, 30.549505, 32.115139>,  <41.068062, 30.395247, 32.420006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860069, 30.549505, 32.115139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193682, -0.815806, -0.544929,
		-0.831930, -0.430970, 0.349510,
		-0.519981, 0.385649, -0.762164,
		40.704075, 30.665199, 31.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.614204, 29.822916, 32.195877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 30.090210, 31.900324>,  <40.669659, 30.250587, 31.722992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 30.090210, 31.900324>,  <40.614204, 29.822916, 32.195877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648865, 30.090210, 31.900324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249276, -0.732625, -0.633342,
		-0.964548, -0.129308, -0.230057,
		0.086649, 0.668236, -0.738886,
		40.674858, 30.290680, 31.678658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381596, 29.436981, 31.661587>,  <40.614204, 29.822916, 32.195877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381596, 29.436981, 31.661587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593388, 29.739973, 31.508812>,  <40.720463, 29.921768, 31.417147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593388, 29.739973, 31.508812>,  <40.381596, 29.436981, 31.661587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593388, 29.739973, 31.508812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425856, -0.626721, -0.652585,
		-0.733688, 0.182880, -0.654413,
		0.529479, 0.757480, -0.381937,
		40.752232, 29.967216, 31.394232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335880, 29.379292, 31.028017>,  <40.381596, 29.436981, 31.661587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335880, 29.379292, 31.028017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648949, 29.627642, 31.045635>,  <40.836788, 29.776651, 31.056206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.648949, 29.627642, 31.045635>,  <40.335880, 29.379292, 31.028017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648949, 29.627642, 31.045635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401212, -0.449132, -0.798317,
		-0.475875, 0.642489, -0.600625,
		0.782670, 0.620877, 0.044044,
		40.883751, 29.813906, 31.058847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524487, 29.641937, 30.273829>,  <40.335880, 29.379292, 31.028017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524487, 29.641937, 30.273829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857582, 29.697176, 30.488298>,  <41.057438, 29.730318, 30.616980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857582, 29.697176, 30.488298>,  <40.524487, 29.641937, 30.273829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857582, 29.697176, 30.488298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544283, -0.381761, -0.747004,
		0.101533, 0.913886, -0.393068,
		0.832735, 0.138095, 0.536174,
		41.107403, 29.738604, 30.649151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964664, 29.901630, 29.835508>,  <40.524487, 29.641937, 30.273829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964664, 29.901630, 29.835508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193424, 29.761526, 30.132223>,  <41.330681, 29.677464, 30.310251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193424, 29.761526, 30.132223>,  <40.964664, 29.901630, 29.835508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193424, 29.761526, 30.132223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628684, -0.393735, -0.670618,
		0.526958, 0.849877, -0.004974,
		0.571901, -0.350261, 0.741786,
		41.364994, 29.656448, 30.354759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584591, 30.117950, 29.589949>,  <40.964664, 29.901630, 29.835508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584591, 30.117950, 29.589949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618793, 29.816126, 29.850203>,  <41.639313, 29.635031, 30.006355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618793, 29.816126, 29.850203>,  <41.584591, 30.117950, 29.589949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618793, 29.816126, 29.850203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456678, -0.550707, -0.698690,
		0.885514, 0.356870, 0.297505,
		0.085503, -0.754563, 0.650633,
		41.644444, 29.589756, 30.045393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155579, 29.755917, 29.390303>,  <41.584591, 30.117950, 29.589949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155579, 29.755917, 29.390303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981350, 29.475899, 29.616653>,  <41.876812, 29.307888, 29.752464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981350, 29.475899, 29.616653>,  <42.155579, 29.755917, 29.390303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981350, 29.475899, 29.616653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372684, -0.712481, -0.594540,
		0.819379, -0.048073, 0.571232,
		-0.435573, -0.700043, 0.565876,
		41.850677, 29.265886, 29.786417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562447, 29.281649, 29.638575>,  <42.155579, 29.755917, 29.390303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562447, 29.281649, 29.638575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.244987, 29.044382, 29.692638>,  <42.054512, 28.902021, 29.725077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.244987, 29.044382, 29.692638>,  <42.562447, 29.281649, 29.638575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244987, 29.044382, 29.692638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472037, -0.740561, -0.478279,
		0.383794, -0.315786, 0.867745,
		-0.793652, -0.593168, 0.135160,
		42.006893, 28.866432, 29.733187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860554, 28.624878, 29.858496>,  <42.562447, 29.281649, 29.638575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860554, 28.624878, 29.858496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484497, 28.549515, 29.744909>,  <42.258862, 28.504297, 29.676758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484497, 28.549515, 29.744909>,  <42.860554, 28.624878, 29.858496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484497, 28.549515, 29.744909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314742, -0.799531, -0.511554,
		-0.130661, -0.570310, 0.810971,
		-0.940141, -0.188407, -0.283968,
		42.202454, 28.492992, 29.659719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670582, 27.889776, 29.983831>,  <42.860554, 28.624878, 29.858496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670582, 27.889776, 29.983831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.419903, 27.974918, 29.683981>,  <42.269497, 28.026005, 29.504070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.419903, 27.974918, 29.683981>,  <42.670582, 27.889776, 29.983831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419903, 27.974918, 29.683981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278725, -0.837103, -0.470713,
		-0.727710, -0.503935, 0.465282,
		-0.626698, 0.212857, -0.749628,
		42.231892, 28.038776, 29.459093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583096, 27.202127, 29.671040>,  <42.670582, 27.889776, 29.983831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583096, 27.202127, 29.671040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.481201, 27.486237, 29.408552>,  <42.420067, 27.656702, 29.251059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.481201, 27.486237, 29.408552>,  <42.583096, 27.202127, 29.671040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481201, 27.486237, 29.408552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464941, -0.505064, -0.727146,
		-0.847904, -0.490332, -0.201577,
		-0.254733, 0.710271, -0.656221,
		42.404781, 27.699318, 29.211685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436424, 26.888685, 29.194717>,  <42.583096, 27.202127, 29.671040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436424, 26.888685, 29.194717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.494900, 27.229729, 28.994043>,  <42.529987, 27.434355, 28.873638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.494900, 27.229729, 28.994043>,  <42.436424, 26.888685, 29.194717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494900, 27.229729, 28.994043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295138, -0.521629, -0.800498,
		-0.944204, -0.031041, -0.327894,
		0.146191, 0.852607, -0.501686,
		42.538757, 27.485512, 28.843538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323124, 26.762035, 28.451532>,  <42.436424, 26.888685, 29.194717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323124, 26.762035, 28.451532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520493, 27.109753, 28.463287>,  <42.638912, 27.318384, 28.470341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520493, 27.109753, 28.463287>,  <42.323124, 26.762035, 28.451532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520493, 27.109753, 28.463287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488784, -0.249175, -0.836063,
		-0.719463, 0.426894, -0.547846,
		0.493420, 0.869295, 0.029387,
		42.668518, 27.370541, 28.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276558, 27.024172, 27.794146>,  <42.323124, 26.762035, 28.451532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276558, 27.024172, 27.794146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603771, 27.182865, 27.960724>,  <42.800098, 27.278082, 28.060671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.603771, 27.182865, 27.960724>,  <42.276558, 27.024172, 27.794146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603771, 27.182865, 27.960724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504842, -0.148315, -0.850375,
		-0.275606, 0.905873, -0.321614,
		0.818032, 0.396733, 0.416446,
		42.849182, 27.301886, 28.085657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488869, 27.395882, 27.296486>,  <42.276558, 27.024172, 27.794146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488869, 27.395882, 27.296486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825317, 27.394133, 27.512817>,  <43.027187, 27.393084, 27.642616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825317, 27.394133, 27.512817>,  <42.488869, 27.395882, 27.296486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825317, 27.394133, 27.512817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540181, -0.042764, -0.840461,
		0.026803, 0.999076, -0.033607,
		0.841122, -0.004372, 0.540828,
		43.077652, 27.392820, 27.675066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928730, 28.027554, 27.140455>,  <42.488869, 27.395882, 27.296486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928730, 28.027554, 27.140455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181484, 27.764326, 27.304243>,  <43.333138, 27.606390, 27.402515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181484, 27.764326, 27.304243>,  <42.928730, 28.027554, 27.140455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181484, 27.764326, 27.304243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651983, 0.165644, -0.739919,
		0.419089, 0.734514, 0.533717,
		0.631888, -0.658067, 0.409471,
		43.371052, 27.566906, 27.427084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617161, 28.304085, 26.992523>,  <42.928730, 28.027554, 27.140455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617161, 28.304085, 26.992523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660980, 27.913628, 27.067509>,  <43.687271, 27.679354, 27.112499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660980, 27.913628, 27.067509>,  <43.617161, 28.304085, 26.992523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660980, 27.913628, 27.067509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612406, -0.082269, -0.786251,
		0.782917, 0.200934, 0.588785,
		0.109545, -0.976144, 0.187463,
		43.693844, 27.620785, 27.123747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230747, 28.305901, 26.925650>,  <43.617161, 28.304085, 26.992523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230747, 28.305901, 26.925650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.109039, 27.925226, 26.909088>,  <44.036015, 27.696821, 26.899151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.109039, 27.925226, 26.909088>,  <44.230747, 28.305901, 26.925650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109039, 27.925226, 26.909088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535503, -0.134936, -0.833684,
		0.787819, -0.275836, 0.550687,
		-0.304267, -0.951686, -0.041406,
		44.017757, 27.639721, 26.896666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846916, 28.047119, 26.790251>,  <44.230747, 28.305901, 26.925650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846916, 28.047119, 26.790251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.572510, 27.779726, 26.675348>,  <44.407867, 27.619291, 26.606407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.572510, 27.779726, 26.675348>,  <44.846916, 28.047119, 26.790251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572510, 27.779726, 26.675348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446051, -0.074484, -0.891903,
		0.574825, -0.739989, 0.349274,
		-0.686014, -0.668482, -0.287258,
		44.366707, 27.579182, 26.589170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250515, 27.440727, 26.532722>,  <44.846916, 28.047119, 26.790251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250515, 27.440727, 26.532722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.871086, 27.406998, 26.410679>,  <44.643429, 27.386761, 26.337452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.871086, 27.406998, 26.410679>,  <45.250515, 27.440727, 26.532722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871086, 27.406998, 26.410679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313844, -0.124843, -0.941231,
		0.041277, -0.988587, 0.144888,
		-0.948577, -0.084324, -0.305109,
		44.586514, 27.381701, 26.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168594, 26.767588, 26.076174>,  <45.250515, 27.440727, 26.532722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168594, 26.767588, 26.076174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.864323, 27.009521, 25.981901>,  <44.681759, 27.154682, 25.925337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.864323, 27.009521, 25.981901>,  <45.168594, 26.767588, 26.076174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864323, 27.009521, 25.981901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078490, -0.274710, -0.958318,
		-0.644367, -0.747470, 0.161493,
		-0.760678, 0.604833, -0.235683,
		44.636120, 27.190971, 25.911196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836853, 26.382425, 25.506302>,  <45.168594, 26.767588, 26.076174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836853, 26.382425, 25.506302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.733845, 26.767870, 25.477631>,  <44.672039, 26.999136, 25.460428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.733845, 26.767870, 25.477631>,  <44.836853, 26.382425, 25.506302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733845, 26.767870, 25.477631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080351, -0.052570, -0.995380,
		-0.962927, -0.262086, -0.063889,
		-0.257516, 0.963612, -0.071680,
		44.656590, 27.056953, 25.456127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231930, 26.446613, 25.087387>,  <44.836853, 26.382425, 25.506302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231930, 26.446613, 25.087387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.446800, 26.782459, 25.055166>,  <44.575722, 26.983967, 25.035833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.446800, 26.782459, 25.055166>,  <44.231930, 26.446613, 25.087387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446800, 26.782459, 25.055166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028514, -0.113522, -0.993126,
		-0.842988, 0.531187, -0.084922,
		0.537177, 0.839615, -0.080551,
		44.607952, 27.034344, 25.031000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070301, 26.849049, 24.524185>,  <44.231930, 26.446613, 25.087387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070301, 26.849049, 24.524185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.421795, 27.014896, 24.618776>,  <44.632690, 27.114405, 24.675531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.421795, 27.014896, 24.618776>,  <44.070301, 26.849049, 24.524185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421795, 27.014896, 24.618776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320294, -0.144871, -0.936175,
		-0.353897, 0.898389, -0.260103,
		0.878731, 0.414619, 0.236479,
		44.685413, 27.139282, 24.689720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545666, 26.288296, 24.390053>,  <44.070301, 26.849049, 24.524185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545666, 26.288296, 24.390053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.266491, 26.355858, 24.111670>,  <43.098988, 26.396395, 23.944639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.266491, 26.355858, 24.111670>,  <43.545666, 26.288296, 24.390053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266491, 26.355858, 24.111670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660367, 0.224266, 0.716673,
		0.277131, 0.959779, -0.044982,
		-0.697936, 0.168907, -0.695957,
		43.057110, 26.406530, 23.902882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232250, 26.932323, 24.656263>,  <43.545666, 26.288296, 24.390053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232250, 26.932323, 24.656263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.968170, 26.697695, 24.468618>,  <42.809723, 26.556917, 24.356031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.968170, 26.697695, 24.468618>,  <43.232250, 26.932323, 24.656263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968170, 26.697695, 24.468618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552063, -0.044528, 0.832613,
		-0.509277, 0.808671, -0.294427,
		-0.660200, -0.586573, -0.469115,
		42.770111, 26.521723, 24.327885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609608, 27.339365, 24.524807>,  <43.232250, 26.932323, 24.656263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609608, 27.339365, 24.524807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527702, 26.948236, 24.542408>,  <42.478561, 26.713558, 24.552969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.527702, 26.948236, 24.542408>,  <42.609608, 27.339365, 24.524807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527702, 26.948236, 24.542408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648476, 0.169191, 0.742195,
		-0.733179, 0.123439, -0.668738,
		-0.204760, -0.977823, 0.044000,
		42.466274, 26.654890, 24.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908241, 27.321421, 24.488005>,  <42.609608, 27.339365, 24.524807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908241, 27.321421, 24.488005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965290, 26.949533, 24.623819>,  <41.999519, 26.726402, 24.705309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965290, 26.949533, 24.623819>,  <41.908241, 27.321421, 24.488005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965290, 26.949533, 24.623819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800982, 0.093111, 0.591404,
		-0.581453, -0.356311, -0.731406,
		0.142622, -0.929716, 0.339539,
		42.008076, 26.670618, 24.725681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152832, 26.895746, 24.560129>,  <41.908241, 27.321421, 24.488005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152832, 26.895746, 24.560129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446972, 26.726208, 24.771645>,  <41.623455, 26.624485, 24.898554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446972, 26.726208, 24.771645>,  <41.152832, 26.895746, 24.560129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446972, 26.726208, 24.771645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516181, 0.155290, 0.842284,
		-0.439114, -0.892323, -0.104589,
		0.735347, -0.423846, 0.528791,
		41.667576, 26.599054, 24.930283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846649, 26.342373, 25.021576>,  <41.152832, 26.895746, 24.560129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846649, 26.342373, 25.021576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199406, 26.415953, 25.195210>,  <41.411060, 26.460100, 25.299389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199406, 26.415953, 25.195210>,  <40.846649, 26.342373, 25.021576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199406, 26.415953, 25.195210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467661, 0.224826, 0.854837,
		0.059654, -0.956878, 0.284298,
		0.881893, 0.183949, 0.434083,
		41.463974, 26.471138, 25.325434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874096, 25.942142, 25.597858>,  <40.846649, 26.342373, 25.021576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874096, 25.942142, 25.597858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155472, 26.217699, 25.667822>,  <41.324299, 26.383034, 25.709801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.155472, 26.217699, 25.667822>,  <40.874096, 25.942142, 25.597858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155472, 26.217699, 25.667822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490431, 0.292343, 0.820983,
		0.514438, -0.663295, 0.543502,
		0.703443, 0.688895, 0.174908,
		41.366505, 26.424368, 25.720295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160923, 25.781048, 26.302509>,  <40.874096, 25.942142, 25.597858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160923, 25.781048, 26.302509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224968, 26.168442, 26.226192>,  <41.263393, 26.400879, 26.180403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.224968, 26.168442, 26.226192>,  <41.160923, 25.781048, 26.302509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224968, 26.168442, 26.226192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216119, 0.222992, 0.950561,
		0.963149, -0.110961, 0.245011,
		0.160110, 0.968484, -0.190794,
		41.273003, 26.458986, 26.168955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396305, 26.107285, 26.948832>,  <41.160923, 25.781048, 26.302509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396305, 26.107285, 26.948832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309135, 26.442879, 26.749388>,  <41.256832, 26.644236, 26.629723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.309135, 26.442879, 26.749388>,  <41.396305, 26.107285, 26.948832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309135, 26.442879, 26.749388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488675, 0.348429, 0.799871,
		0.844810, 0.417972, 0.334059,
		-0.217928, 0.838986, -0.498609,
		41.243755, 26.694574, 26.599806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607914, 26.667164, 27.369562>,  <41.396305, 26.107285, 26.948832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607914, 26.667164, 27.369562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316929, 26.809824, 27.135092>,  <41.142338, 26.895420, 26.994410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.316929, 26.809824, 27.135092>,  <41.607914, 26.667164, 27.369562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316929, 26.809824, 27.135092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524217, 0.262323, 0.810175,
		0.442715, 0.896654, -0.003869,
		-0.727461, 0.356649, -0.586175,
		41.098690, 26.916819, 26.959240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675556, 27.293755, 27.471792>,  <41.607914, 26.667164, 27.369562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675556, 27.293755, 27.471792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305481, 27.240694, 27.329559>,  <41.083435, 27.208858, 27.244221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305481, 27.240694, 27.329559>,  <41.675556, 27.293755, 27.471792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305481, 27.240694, 27.329559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379319, 0.353583, 0.855042,
		0.012306, 0.925950, -0.377446,
		-0.925184, -0.132650, -0.355581,
		41.027927, 27.200899, 27.222885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313198, 27.785170, 27.766827>,  <41.675556, 27.293755, 27.471792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313198, 27.785170, 27.766827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020550, 27.549925, 27.628925>,  <40.844959, 27.408777, 27.546185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.020550, 27.549925, 27.628925>,  <41.313198, 27.785170, 27.766827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020550, 27.549925, 27.628925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515741, 0.146787, 0.844077,
		-0.445806, 0.795348, -0.410705,
		-0.731621, -0.588112, -0.344755,
		40.801064, 27.373491, 27.525499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681545, 28.205610, 27.785776>,  <41.313198, 27.785170, 27.766827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681545, 28.205610, 27.785776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558750, 27.824942, 27.782133>,  <40.485073, 27.596540, 27.779947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.558750, 27.824942, 27.782133>,  <40.681545, 28.205610, 27.785776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558750, 27.824942, 27.782133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759925, 0.239350, 0.604338,
		-0.572950, 0.192446, -0.796676,
		-0.306987, -0.951670, -0.009109,
		40.466656, 27.539440, 27.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977734, 28.334787, 27.839380>,  <40.681545, 28.205610, 27.785776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977734, 28.334787, 27.839380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044750, 27.963623, 27.972595>,  <40.084961, 27.740925, 28.052525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044750, 27.963623, 27.972595>,  <39.977734, 28.334787, 27.839380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044750, 27.963623, 27.972595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647423, 0.151205, 0.746981,
		-0.743488, -0.340766, -0.575417,
		0.167540, -0.927909, 0.333039,
		40.095013, 27.685251, 28.072508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314552, 28.080847, 27.861502>,  <39.977734, 28.334787, 27.839380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314552, 28.080847, 27.861502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551758, 27.870354, 28.105274>,  <39.694080, 27.744057, 28.251537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551758, 27.870354, 28.105274>,  <39.314552, 28.080847, 27.861502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551758, 27.870354, 28.105274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610479, 0.199672, 0.766450,
		-0.525019, -0.826564, -0.202847,
		0.593018, -0.526235, 0.609432,
		39.729664, 27.712482, 28.288103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863853, 27.801422, 28.255041>,  <39.314552, 28.080847, 27.861502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863853, 27.801422, 28.255041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208973, 27.774080, 28.455400>,  <39.416046, 27.757675, 28.575617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208973, 27.774080, 28.455400>,  <38.863853, 27.801422, 28.255041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208973, 27.774080, 28.455400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483545, 0.177499, 0.857134,
		-0.147498, -0.981744, 0.120095,
		0.862803, -0.068355, 0.500898,
		39.467815, 27.753574, 28.605669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779266, 27.323885, 28.882660>,  <38.863853, 27.801422, 28.255041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779266, 27.323885, 28.882660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097054, 27.551811, 28.966686>,  <39.287727, 27.688566, 29.017101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097054, 27.551811, 28.966686>,  <38.779266, 27.323885, 28.882660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097054, 27.551811, 28.966686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243625, -0.017812, 0.969706,
		0.556294, -0.821580, 0.124669,
		0.794471, 0.569815, 0.210066,
		39.335396, 27.722755, 29.029707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160465, 27.006727, 29.504995>,  <38.779266, 27.323885, 28.882660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160465, 27.006727, 29.504995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241043, 27.398346, 29.493067>,  <39.289391, 27.633316, 29.485910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241043, 27.398346, 29.493067>,  <39.160465, 27.006727, 29.504995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241043, 27.398346, 29.493067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347117, 0.099827, 0.932494,
		0.915930, -0.177498, 0.359953,
		0.201449, 0.979045, -0.029822,
		39.301479, 27.692059, 29.484119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283958, 27.190626, 30.181986>,  <39.160465, 27.006727, 29.504995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283958, 27.190626, 30.181986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242374, 27.560282, 30.034931>,  <39.217422, 27.782076, 29.946699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242374, 27.560282, 30.034931>,  <39.283958, 27.190626, 30.181986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242374, 27.560282, 30.034931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262100, 0.331118, 0.906457,
		0.959425, 0.190593, 0.207794,
		-0.103961, 0.924140, -0.367637,
		39.211185, 27.837524, 29.924641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570236, 27.571581, 30.680227>,  <39.283958, 27.190626, 30.181986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570236, 27.571581, 30.680227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326244, 27.800798, 30.461306>,  <39.179848, 27.938330, 30.329952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326244, 27.800798, 30.461306>,  <39.570236, 27.571581, 30.680227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326244, 27.800798, 30.461306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348036, 0.426755, 0.834716,
		0.711895, 0.699643, -0.060873,
		-0.609981, 0.573044, -0.547306,
		39.143250, 27.972712, 30.297113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.146828, 32.513714, 33.528080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835945, 32.538311, 33.277584>,  <39.649418, 32.553070, 33.127289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.835945, 32.538311, 33.277584>,  <40.146828, 32.513714, 33.528080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835945, 32.538311, 33.277584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389863, 0.734127, 0.555936,
		0.493923, 0.676222, -0.546592,
		-0.777205, 0.061494, -0.626236,
		39.602783, 32.556759, 33.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104340, 33.172684, 33.337734>,  <40.146828, 32.513714, 33.528080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104340, 33.172684, 33.337734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732224, 33.047066, 33.261898>,  <39.508953, 32.971695, 33.216396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.732224, 33.047066, 33.261898>,  <40.104340, 33.172684, 33.337734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732224, 33.047066, 33.261898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356834, 0.654839, 0.666225,
		-0.085072, 0.687432, -0.721249,
		-0.930286, -0.314044, -0.189591,
		39.453136, 32.952854, 33.205021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760277, 33.740108, 33.325272>,  <40.104340, 33.172684, 33.337734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760277, 33.740108, 33.325272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469124, 33.471611, 33.381310>,  <39.294434, 33.310513, 33.414932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469124, 33.471611, 33.381310>,  <39.760277, 33.740108, 33.325272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469124, 33.471611, 33.381310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336444, 0.527628, 0.780009,
		-0.597494, 0.520617, -0.609884,
		-0.727878, -0.671243, 0.140096,
		39.250759, 33.270237, 33.423340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284615, 34.204826, 33.590107>,  <39.760277, 33.740108, 33.325272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284615, 34.204826, 33.590107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171368, 33.835697, 33.694599>,  <39.103420, 33.614220, 33.757294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171368, 33.835697, 33.694599>,  <39.284615, 34.204826, 33.590107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171368, 33.835697, 33.694599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525864, 0.377148, 0.762382,
		-0.802066, 0.078474, -0.592057,
		-0.283121, -0.922822, 0.261231,
		39.086430, 33.558849, 33.772968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524265, 34.309319, 33.659878>,  <39.284615, 34.204826, 33.590107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524265, 34.309319, 33.659878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.605186, 33.959301, 33.835770>,  <38.653740, 33.749290, 33.941307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.605186, 33.959301, 33.835770>,  <38.524265, 34.309319, 33.659878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605186, 33.959301, 33.835770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668860, 0.204519, 0.714701,
		-0.715331, -0.438709, -0.543908,
		0.202306, -0.875047, 0.439734,
		38.665878, 33.696789, 33.967690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880653, 33.991425, 33.696510>,  <38.524265, 34.309319, 33.659878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880653, 33.991425, 33.696510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137192, 33.887066, 33.985123>,  <38.291115, 33.824451, 34.158291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137192, 33.887066, 33.985123>,  <37.880653, 33.991425, 33.696510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137192, 33.887066, 33.985123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663751, 0.283036, 0.692333,
		-0.384850, -0.922941, 0.008351,
		0.641347, -0.260901, 0.721529,
		38.329597, 33.808796, 34.201580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514832, 33.716656, 34.204796>,  <37.880653, 33.991425, 33.696510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514832, 33.716656, 34.204796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852913, 33.763222, 34.413441>,  <38.055763, 33.791161, 34.538628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.852913, 33.763222, 34.413441>,  <37.514832, 33.716656, 34.204796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852913, 33.763222, 34.413441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522122, 0.388204, 0.759398,
		-0.114086, -0.914191, 0.388895,
		0.845206, 0.116414, 0.521608,
		38.106476, 33.798145, 34.569923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238270, 33.568230, 34.880260>,  <37.514832, 33.716656, 34.204796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238270, 33.568230, 34.880260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583763, 33.765358, 34.922382>,  <37.791058, 33.883636, 34.947655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583763, 33.765358, 34.922382>,  <37.238270, 33.568230, 34.880260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583763, 33.765358, 34.922382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336584, 0.408631, 0.848370,
		0.375062, -0.768212, 0.518825,
		0.863736, 0.492819, 0.105306,
		37.842884, 33.913204, 34.953972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437572, 33.473007, 35.576340>,  <37.238270, 33.568230, 34.880260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437572, 33.473007, 35.576340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.622845, 33.812622, 35.474678>,  <37.734009, 34.016392, 35.413681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.622845, 33.812622, 35.474678>,  <37.437572, 33.473007, 35.576340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622845, 33.812622, 35.474678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370739, 0.446089, 0.814590,
		0.804995, -0.283077, 0.521392,
		0.463179, 0.849042, -0.254152,
		37.761799, 34.067333, 35.398434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687439, 33.649712, 36.224384>,  <37.437572, 33.473007, 35.576340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687439, 33.649712, 36.224384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675964, 33.967312, 35.981491>,  <37.669079, 34.157871, 35.835754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675964, 33.967312, 35.981491>,  <37.687439, 33.649712, 36.224384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675964, 33.967312, 35.981491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330997, 0.565668, 0.755289,
		0.943196, 0.222660, 0.246586,
		-0.028687, 0.794004, -0.607235,
		37.667358, 34.205513, 35.799320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023113, 34.198875, 36.649578>,  <37.687439, 33.649712, 36.224384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023113, 34.198875, 36.649578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805801, 34.356453, 36.353024>,  <37.675415, 34.451000, 36.175091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805801, 34.356453, 36.353024>,  <38.023113, 34.198875, 36.649578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805801, 34.356453, 36.353024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388489, 0.664884, 0.637969,
		0.744263, 0.634615, -0.208172,
		-0.543276, 0.393945, -0.741390,
		37.642818, 34.474636, 36.130608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049438, 34.860443, 36.851849>,  <38.023113, 34.198875, 36.649578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049438, 34.860443, 36.851849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729561, 34.830215, 36.613598>,  <37.537632, 34.812080, 36.470646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729561, 34.830215, 36.613598>,  <38.049438, 34.860443, 36.851849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729561, 34.830215, 36.613598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463417, 0.708446, 0.532306,
		0.381748, 0.701708, -0.601560,
		-0.799696, -0.075567, -0.595631,
		37.489651, 34.807545, 36.434910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893517, 35.621746, 36.648884>,  <38.049438, 34.860443, 36.851849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893517, 35.621746, 36.648884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595963, 35.354427, 36.650475>,  <37.417431, 35.194038, 36.651428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595963, 35.354427, 36.650475>,  <37.893517, 35.621746, 36.648884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595963, 35.354427, 36.650475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534645, 0.598665, 0.596452,
		-0.400984, 0.441568, -0.802639,
		-0.743886, -0.668295, 0.003973,
		37.372795, 35.153938, 36.651665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418819, 36.049862, 36.484493>,  <37.893517, 35.621746, 36.648884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418819, 36.049862, 36.484493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057724, 36.221420, 36.497822>,  <37.841068, 36.324356, 36.505817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057724, 36.221420, 36.497822>,  <38.418819, 36.049862, 36.484493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057724, 36.221420, 36.497822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198880, 0.484767, -0.851732,
		-0.381460, -0.762264, -0.522917,
		-0.902737, 0.428900, 0.033320,
		37.786903, 36.350090, 36.507816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416599, 36.382679, 35.856705>,  <38.418819, 36.049862, 36.484493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416599, 36.382679, 35.856705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315956, 36.647057, 35.573902>,  <38.255569, 36.805683, 35.404221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.315956, 36.647057, 35.573902>,  <38.416599, 36.382679, 35.856705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315956, 36.647057, 35.573902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145277, -0.696436, -0.702760,
		-0.956864, -0.279530, 0.079207,
		-0.251605, 0.660939, -0.707004,
		38.240475, 36.845337, 35.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965927, 35.965237, 35.323139>,  <38.416599, 36.382679, 35.856705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965927, 35.965237, 35.323139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.125488, 36.286297, 35.145771>,  <38.221226, 36.478935, 35.039349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.125488, 36.286297, 35.145771>,  <37.965927, 35.965237, 35.323139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125488, 36.286297, 35.145771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014667, -0.477916, -0.878283,
		-0.916876, 0.356852, -0.178869,
		0.398901, 0.802653, -0.443424,
		38.245159, 36.527092, 35.012745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636452, 36.093163, 34.676552>,  <37.965927, 35.965237, 35.323139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636452, 36.093163, 34.676552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.985043, 36.285995, 34.640484>,  <38.194195, 36.401695, 34.618843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.985043, 36.285995, 34.640484>,  <37.636452, 36.093163, 34.676552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985043, 36.285995, 34.640484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149521, -0.436254, -0.887314,
		-0.467096, 0.759788, -0.452266,
		0.871473, 0.482084, -0.090168,
		38.246483, 36.430622, 34.613434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606964, 36.218586, 34.011887>,  <37.636452, 36.093163, 34.676552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606964, 36.218586, 34.011887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986904, 36.312969, 34.093960>,  <38.214870, 36.369598, 34.143204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986904, 36.312969, 34.093960>,  <37.606964, 36.218586, 34.011887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986904, 36.312969, 34.093960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268527, -0.279291, -0.921895,
		-0.160223, 0.930763, -0.328647,
		0.949854, 0.235959, 0.205187,
		38.271862, 36.383759, 34.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739342, 36.710648, 33.526726>,  <37.606964, 36.218586, 34.011887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739342, 36.710648, 33.526726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079960, 36.536366, 33.643368>,  <38.284332, 36.431797, 33.713352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079960, 36.536366, 33.643368>,  <37.739342, 36.710648, 33.526726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079960, 36.536366, 33.643368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172857, -0.291769, -0.940740,
		0.494969, 0.851486, -0.173139,
		0.851544, -0.435708, 0.291602,
		38.335423, 36.405651, 33.730846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233940, 36.865860, 32.994259>,  <37.739342, 36.710648, 33.526726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233940, 36.865860, 32.994259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387722, 36.547287, 33.180969>,  <38.479992, 36.356144, 33.292995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387722, 36.547287, 33.180969>,  <38.233940, 36.865860, 32.994259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387722, 36.547287, 33.180969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297385, -0.371834, -0.879375,
		0.873930, 0.476896, 0.093894,
		0.384457, -0.796435, 0.466779,
		38.503059, 36.308357, 33.321003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949047, 36.747681, 32.676632>,  <38.233940, 36.865860, 32.994259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949047, 36.747681, 32.676632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868603, 36.396591, 32.850597>,  <38.820335, 36.185936, 32.954975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868603, 36.396591, 32.850597>,  <38.949047, 36.747681, 32.676632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868603, 36.396591, 32.850597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423124, -0.478268, -0.769562,
		0.883471, 0.029256, 0.467572,
		-0.201111, -0.877726, 0.434915,
		38.808270, 36.133274, 32.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526543, 36.408466, 32.618095>,  <38.949047, 36.747681, 32.676632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526543, 36.408466, 32.618095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275616, 36.108009, 32.700317>,  <39.125061, 35.927734, 32.749653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275616, 36.108009, 32.700317>,  <39.526543, 36.408466, 32.618095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275616, 36.108009, 32.700317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516812, -0.598995, -0.611645,
		0.582563, -0.277461, 0.763961,
		-0.627317, -0.751146, 0.205557,
		39.087421, 35.882664, 32.761986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956627, 35.810272, 32.893486>,  <39.526543, 36.408466, 32.618095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956627, 35.810272, 32.893486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615505, 35.682320, 32.728367>,  <39.410831, 35.605549, 32.629295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615505, 35.682320, 32.728367>,  <39.956627, 35.810272, 32.893486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615505, 35.682320, 32.728367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518615, -0.611619, -0.597462,
		-0.061362, -0.723602, 0.687484,
		-0.852803, -0.319878, -0.412801,
		39.359665, 35.586357, 32.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012196, 35.030373, 32.759701>,  <39.956627, 35.810272, 32.893486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012196, 35.030373, 32.759701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694920, 35.120316, 32.533325>,  <39.504555, 35.174282, 32.397499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694920, 35.120316, 32.533325>,  <40.012196, 35.030373, 32.759701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694920, 35.120316, 32.533325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385966, -0.533208, -0.752807,
		-0.471036, -0.815554, 0.336150,
		-0.793193, 0.224857, -0.565937,
		39.456963, 35.187771, 32.363544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772583, 34.393345, 32.422813>,  <40.012196, 35.030373, 32.759701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772583, 34.393345, 32.422813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651356, 34.702507, 32.199829>,  <39.578617, 34.888004, 32.066040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651356, 34.702507, 32.199829>,  <39.772583, 34.393345, 32.422813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651356, 34.702507, 32.199829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540500, -0.342364, -0.768535,
		-0.784861, -0.534228, -0.313996,
		-0.303072, 0.772908, -0.557459,
		39.560432, 34.934380, 32.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378529, 34.198898, 31.870665>,  <39.772583, 34.393345, 32.422813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378529, 34.198898, 31.870665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529572, 34.541683, 31.730362>,  <39.620197, 34.747353, 31.646181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529572, 34.541683, 31.730362>,  <39.378529, 34.198898, 31.870665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529572, 34.541683, 31.730362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371835, -0.487249, -0.790144,
		-0.848030, 0.167938, -0.502636,
		0.377604, 0.856963, -0.350757,
		39.642853, 34.798771, 31.625135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386600, 34.087639, 31.085026>,  <39.378529, 34.198898, 31.870665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386600, 34.087639, 31.085026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.583935, 34.431782, 31.136267>,  <39.702335, 34.638268, 31.167011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.583935, 34.431782, 31.136267>,  <39.386600, 34.087639, 31.085026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583935, 34.431782, 31.136267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486054, -0.150530, -0.860867,
		-0.721367, 0.486963, -0.492440,
		0.493338, 0.860353, 0.128102,
		39.731937, 34.689888, 31.174698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475361, 34.397079, 30.419680>,  <39.386600, 34.087639, 31.085026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475361, 34.397079, 30.419680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748795, 34.587154, 30.641279>,  <39.912853, 34.701199, 30.774239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748795, 34.587154, 30.641279>,  <39.475361, 34.397079, 30.419680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748795, 34.587154, 30.641279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691722, -0.179590, -0.699477,
		-0.232890, 0.861362, -0.451462,
		0.683581, 0.475187, 0.553998,
		39.953869, 34.729710, 30.807478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975292, 35.006660, 30.364878>,  <39.475361, 34.397079, 30.419680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975292, 35.006660, 30.364878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863773, 35.222332, 30.046995>,  <38.796864, 35.351734, 29.856266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863773, 35.222332, 30.046995>,  <38.975292, 35.006660, 30.364878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863773, 35.222332, 30.046995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654940, 0.498472, 0.567960,
		0.702371, 0.678830, 0.214158,
		-0.278796, 0.539180, -0.794706,
		38.780136, 35.384087, 29.808584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081821, 35.715130, 30.464279>,  <38.975292, 35.006660, 30.364878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081821, 35.715130, 30.464279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786541, 35.713501, 30.194454>,  <38.609371, 35.712524, 30.032558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786541, 35.713501, 30.194454>,  <39.081821, 35.715130, 30.464279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786541, 35.713501, 30.194454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628551, 0.367186, 0.685637,
		0.244901, 0.930139, -0.273616,
		-0.738206, -0.004068, -0.674564,
		38.565079, 35.712280, 29.992085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730995, 36.415958, 30.505352>,  <39.081821, 35.715130, 30.464279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730995, 36.415958, 30.505352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469994, 36.163849, 30.337070>,  <38.313393, 36.012581, 30.236101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469994, 36.163849, 30.337070>,  <38.730995, 36.415958, 30.505352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469994, 36.163849, 30.337070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750441, 0.460316, 0.474287,
		-0.105275, 0.625187, -0.773342,
		-0.652500, -0.630278, -0.420706,
		38.274242, 35.974766, 30.210859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116436, 36.774433, 30.624210>,  <38.730995, 36.415958, 30.505352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116436, 36.774433, 30.624210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998123, 36.404251, 30.529514>,  <37.927135, 36.182140, 30.472696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998123, 36.404251, 30.529514>,  <38.116436, 36.774433, 30.624210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998123, 36.404251, 30.529514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805637, 0.108507, 0.582388,
		-0.513286, 0.362986, -0.777675,
		-0.295782, -0.925455, -0.236740,
		37.909389, 36.126614, 30.458492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326035, 36.851166, 30.473080>,  <38.116436, 36.774433, 30.624210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326035, 36.851166, 30.473080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.429970, 36.474342, 30.557951>,  <37.492329, 36.248249, 30.608873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.429970, 36.474342, 30.557951>,  <37.326035, 36.851166, 30.473080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429970, 36.474342, 30.557951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812007, -0.094234, 0.575990,
		-0.522619, -0.321952, -0.789440,
		0.259833, -0.942055, 0.212179,
		37.507919, 36.191727, 30.621605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645981, 36.348259, 30.428335>,  <37.326035, 36.851166, 30.473080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645981, 36.348259, 30.428335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920044, 36.174557, 30.662251>,  <37.084484, 36.070335, 30.802599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920044, 36.174557, 30.662251>,  <36.645981, 36.348259, 30.428335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920044, 36.174557, 30.662251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728120, -0.386411, 0.566151,
		-0.019886, -0.813701, -0.580944,
		0.685161, -0.434256, 0.584788,
		37.125591, 36.044281, 30.837687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275776, 35.660046, 30.660334>,  <36.645981, 36.348259, 30.428335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275776, 35.660046, 30.660334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.582752, 35.741982, 30.903337>,  <36.766937, 35.791142, 31.049141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.582752, 35.741982, 30.903337>,  <36.275776, 35.660046, 30.660334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582752, 35.741982, 30.903337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528890, -0.333297, 0.780505,
		0.362360, -0.920301, -0.147450,
		0.767444, 0.204839, 0.607512,
		36.812984, 35.803432, 31.085590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396057, 35.046829, 31.006157>,  <36.275776, 35.660046, 30.660334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396057, 35.046829, 31.006157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547626, 35.335991, 31.237268>,  <36.638569, 35.509487, 31.375935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.547626, 35.335991, 31.237268>,  <36.396057, 35.046829, 31.006157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547626, 35.335991, 31.237268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424789, -0.418806, 0.802594,
		0.822174, -0.549557, 0.148385,
		0.378926, 0.722903, 0.577777,
		36.661304, 35.552860, 31.410601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261101, 34.719269, 31.582319>,  <36.396057, 35.046829, 31.006157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261101, 34.719269, 31.582319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383739, 35.086857, 31.681509>,  <36.457325, 35.307411, 31.741024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.383739, 35.086857, 31.681509>,  <36.261101, 34.719269, 31.582319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383739, 35.086857, 31.681509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575573, -0.028498, 0.817254,
		0.758098, -0.393299, 0.520196,
		0.306600, 0.918969, 0.247976,
		36.475719, 35.362549, 31.755901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219307, 34.666031, 32.373127>,  <36.261101, 34.719269, 31.582319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219307, 34.666031, 32.373127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 35.054722, 32.279121>,  <36.204739, 35.287937, 32.222717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 35.054722, 32.279121>,  <36.219307, 34.666031, 32.373127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210201, 35.054722, 32.279121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669816, 0.159691, 0.725152,
		0.742178, 0.173926, 0.647242,
		-0.022764, 0.971724, -0.235018,
		36.203373, 35.346241, 32.208614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355690, 35.152027, 32.986752>,  <36.219307, 34.666031, 32.373127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355690, 35.152027, 32.986752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142879, 35.365612, 32.723896>,  <36.015194, 35.493763, 32.566181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142879, 35.365612, 32.723896>,  <36.355690, 35.152027, 32.986752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142879, 35.365612, 32.723896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707267, 0.146452, 0.691610,
		0.465534, 0.832728, 0.299739,
		-0.532026, 0.533963, -0.657139,
		35.983273, 35.525803, 32.526752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090538, 35.782558, 33.399906>,  <36.355690, 35.152027, 32.986752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090538, 35.782558, 33.399906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842926, 35.787434, 33.085796>,  <35.694359, 35.790359, 32.897331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.842926, 35.787434, 33.085796>,  <36.090538, 35.782558, 33.399906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842926, 35.787434, 33.085796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776273, 0.142239, 0.614141,
		0.119180, 0.989757, -0.078591,
		-0.619029, 0.012185, -0.785274,
		35.657219, 35.791088, 32.850216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.952774, 34.100365, 26.812565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576729, 34.079418, 26.677843>,  <40.351101, 34.066853, 26.597010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576729, 34.079418, 26.677843>,  <40.952774, 34.100365, 26.812565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576729, 34.079418, 26.677843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282706, 0.671794, 0.684668,
		0.190414, 0.738885, -0.646368,
		-0.940117, -0.052362, -0.336806,
		40.294693, 34.063709, 26.576801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708099, 34.789913, 26.780762>,  <40.952774, 34.100365, 26.812565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708099, 34.789913, 26.780762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380936, 34.561935, 26.812227>,  <40.184639, 34.425148, 26.831106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380936, 34.561935, 26.812227>,  <40.708099, 34.789913, 26.780762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380936, 34.561935, 26.812227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392723, 0.652965, 0.647615,
		-0.420470, 0.498797, -0.757896,
		-0.817908, -0.569946, 0.078663,
		40.135563, 34.390953, 26.835827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173611, 35.346436, 26.822374>,  <40.708099, 34.789913, 26.780762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173611, 35.346436, 26.822374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057022, 34.996452, 26.977036>,  <39.987068, 34.786465, 27.069832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057022, 34.996452, 26.977036>,  <40.173611, 35.346436, 26.822374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057022, 34.996452, 26.977036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412729, 0.479669, 0.774320,
		-0.862960, 0.066109, -0.500929,
		-0.291469, -0.874955, 0.386651,
		39.969582, 34.733967, 27.093031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469845, 35.473618, 27.002140>,  <40.173611, 35.346436, 26.822374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469845, 35.473618, 27.002140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539478, 35.147995, 27.223772>,  <39.581257, 34.952621, 27.356750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539478, 35.147995, 27.223772>,  <39.469845, 35.473618, 27.002140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539478, 35.147995, 27.223772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268370, 0.502151, 0.822084,
		-0.947456, -0.291810, -0.131052,
		0.174084, -0.814059, 0.554078,
		39.591705, 34.903778, 27.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879890, 35.288887, 27.336428>,  <39.469845, 35.473618, 27.002140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879890, 35.288887, 27.336428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169773, 35.126678, 27.559265>,  <39.343704, 35.029354, 27.692968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169773, 35.126678, 27.559265>,  <38.879890, 35.288887, 27.336428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169773, 35.126678, 27.559265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453545, 0.327931, 0.828709,
		-0.518746, -0.853238, 0.053733,
		0.724706, -0.405519, 0.557095,
		39.387184, 35.005024, 27.726393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549988, 34.916176, 27.899296>,  <38.879890, 35.288887, 27.336428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549988, 34.916176, 27.899296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923450, 34.950924, 28.038286>,  <39.147530, 34.971771, 28.121679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923450, 34.950924, 28.038286>,  <38.549988, 34.916176, 27.899296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923450, 34.950924, 28.038286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357285, 0.293956, 0.886531,
		-0.025131, -0.951864, 0.305490,
		0.933657, 0.086868, 0.347474,
		39.203548, 34.976986, 28.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697254, 34.359520, 28.539009>,  <38.549988, 34.916176, 27.899296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697254, 34.359520, 28.539009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945511, 34.670616, 28.578844>,  <39.094463, 34.857273, 28.602745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945511, 34.670616, 28.578844>,  <38.697254, 34.359520, 28.539009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945511, 34.670616, 28.578844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419519, 0.222077, 0.880162,
		0.662425, -0.588044, 0.464109,
		0.620642, 0.777744, 0.099586,
		39.131702, 34.903938, 28.608721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940872, 34.290585, 29.192122>,  <38.697254, 34.359520, 28.539009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940872, 34.290585, 29.192122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030834, 34.666962, 29.090899>,  <39.084812, 34.892788, 29.030165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030834, 34.666962, 29.090899>,  <38.940872, 34.290585, 29.192122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030834, 34.666962, 29.090899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409411, 0.326931, 0.851762,
		0.884194, -0.087961, 0.458762,
		0.224905, 0.940946, -0.253058,
		39.098305, 34.949245, 29.014980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241440, 34.621475, 29.762398>,  <38.940872, 34.290585, 29.192122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241440, 34.621475, 29.762398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103550, 34.936275, 29.557734>,  <39.020817, 35.125156, 29.434935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103550, 34.936275, 29.557734>,  <39.241440, 34.621475, 29.762398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103550, 34.936275, 29.557734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435574, 0.348730, 0.829857,
		0.831530, 0.508935, 0.222583,
		-0.344722, 0.787002, -0.511659,
		39.000134, 35.172375, 29.404236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816799, 35.047520, 29.986986>,  <39.241440, 34.621475, 29.762398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816799, 35.047520, 29.986986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073765, 34.900143, 30.255777>,  <40.227943, 34.811714, 30.417051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073765, 34.900143, 30.255777>,  <39.816799, 35.047520, 29.986986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073765, 34.900143, 30.255777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697776, -0.081352, -0.711681,
		0.316883, 0.926083, 0.204831,
		0.642412, -0.368446, 0.671978,
		40.266487, 34.789608, 30.457371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430378, 35.326935, 29.740473>,  <39.816799, 35.047520, 29.986986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430378, 35.326935, 29.740473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572021, 35.037312, 29.977232>,  <40.657005, 34.863537, 30.119287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572021, 35.037312, 29.977232>,  <40.430378, 35.326935, 29.740473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572021, 35.037312, 29.977232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815076, -0.071381, -0.574941,
		0.458543, 0.686031, 0.564889,
		0.354104, -0.724063, 0.591898,
		40.678253, 34.820091, 30.154802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097031, 35.470768, 29.784554>,  <40.430378, 35.326935, 29.740473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097031, 35.470768, 29.784554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089733, 35.081383, 29.875797>,  <41.085354, 34.847752, 29.930544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089733, 35.081383, 29.875797>,  <41.097031, 35.470768, 29.784554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089733, 35.081383, 29.875797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811047, -0.147831, -0.565993,
		0.584696, 0.174680, 0.792224,
		-0.018248, -0.973464, 0.228110,
		41.084259, 34.789345, 29.944231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787445, 35.291412, 29.986824>,  <41.097031, 35.470768, 29.784554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787445, 35.291412, 29.986824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611862, 34.961872, 29.843391>,  <41.506512, 34.764149, 29.757332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611862, 34.961872, 29.843391>,  <41.787445, 35.291412, 29.986824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611862, 34.961872, 29.843391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850432, -0.252162, -0.461714,
		0.289964, -0.507622, 0.811320,
		-0.438960, -0.823853, -0.358580,
		41.480175, 34.714718, 29.735817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292210, 34.924961, 29.859926>,  <41.787445, 35.291412, 29.986824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292210, 34.924961, 29.859926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054768, 34.698383, 29.631269>,  <41.912304, 34.562435, 29.494076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054768, 34.698383, 29.631269>,  <42.292210, 34.924961, 29.859926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054768, 34.698383, 29.631269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717058, -0.049829, -0.695230,
		0.365326, -0.822591, 0.435753,
		-0.593603, -0.566446, -0.571642,
		41.876686, 34.528450, 29.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727909, 34.141350, 29.715969>,  <42.292210, 34.924961, 29.859926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727909, 34.141350, 29.715969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431183, 34.178253, 29.450279>,  <42.253147, 34.200397, 29.290865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431183, 34.178253, 29.450279>,  <42.727909, 34.141350, 29.715969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431183, 34.178253, 29.450279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602107, -0.344463, -0.720287,
		-0.295257, -0.934255, 0.199976,
		-0.741816, 0.092263, -0.664226,
		42.208637, 34.205933, 29.251011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835670, 33.563049, 29.478930>,  <42.727909, 34.141350, 29.715969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835670, 33.563049, 29.478930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654583, 33.788742, 29.202759>,  <42.545929, 33.924156, 29.037056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654583, 33.788742, 29.202759>,  <42.835670, 33.563049, 29.478930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654583, 33.788742, 29.202759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606908, -0.372281, -0.702189,
		-0.653228, -0.736921, -0.173896,
		-0.452720, 0.564229, -0.690428,
		42.518768, 33.958012, 28.995630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690357, 33.077629, 28.877436>,  <42.835670, 33.563049, 29.478930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690357, 33.077629, 28.877436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670074, 33.453770, 28.742876>,  <42.657906, 33.679455, 28.662140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670074, 33.453770, 28.742876>,  <42.690357, 33.077629, 28.877436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670074, 33.453770, 28.742876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551935, -0.254335, -0.794154,
		-0.832344, -0.225939, -0.506118,
		-0.050706, 0.940354, -0.336398,
		42.654861, 33.735874, 28.641956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481277, 33.076565, 28.155809>,  <42.690357, 33.077629, 28.877436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481277, 33.076565, 28.155809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649387, 33.439453, 28.162956>,  <42.750252, 33.657188, 28.167244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649387, 33.439453, 28.162956>,  <42.481277, 33.076565, 28.155809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649387, 33.439453, 28.162956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405379, -0.170102, -0.898183,
		-0.811813, 0.384723, -0.439258,
		0.420270, 0.907223, 0.017868,
		42.775467, 33.711620, 28.168316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380085, 33.254875, 27.522144>,  <42.481277, 33.076565, 28.155809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380085, 33.254875, 27.522144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664234, 33.505901, 27.649603>,  <42.834724, 33.656517, 27.726078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664234, 33.505901, 27.649603>,  <42.380085, 33.254875, 27.522144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664234, 33.505901, 27.649603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501639, -0.133880, -0.854654,
		-0.493688, 0.766970, -0.409915,
		0.710373, 0.627562, 0.318647,
		42.877346, 33.694168, 27.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432514, 33.768105, 27.030455>,  <42.380085, 33.254875, 27.522144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432514, 33.768105, 27.030455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774094, 33.725250, 27.234135>,  <42.979042, 33.699535, 27.356342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774094, 33.725250, 27.234135>,  <42.432514, 33.768105, 27.030455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774094, 33.725250, 27.234135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473742, -0.244729, -0.845977,
		0.215253, 0.963654, -0.158231,
		0.853953, -0.107138, 0.509202,
		43.030281, 33.693108, 27.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953831, 34.068066, 26.631338>,  <42.432514, 33.768105, 27.030455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953831, 34.068066, 26.631338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153324, 33.812901, 26.866058>,  <43.273022, 33.659801, 27.006891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153324, 33.812901, 26.866058>,  <42.953831, 34.068066, 26.631338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153324, 33.812901, 26.866058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492113, -0.348904, -0.797553,
		0.713504, 0.686539, 0.139913,
		0.498735, -0.637910, 0.586800,
		43.302944, 33.621529, 27.042099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674248, 34.084183, 26.353163>,  <42.953831, 34.068066, 26.631338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674248, 34.084183, 26.353163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646175, 33.756313, 26.580570>,  <43.629330, 33.559593, 26.717014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646175, 33.756313, 26.580570>,  <43.674248, 34.084183, 26.353163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646175, 33.756313, 26.580570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452286, -0.534124, -0.714247,
		0.889107, 0.207004, 0.408214,
		-0.070185, -0.819671, 0.568519,
		43.625118, 33.510410, 26.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344799, 33.828197, 26.536747>,  <43.674248, 34.084183, 26.353163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344799, 33.828197, 26.536747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105667, 33.508640, 26.563177>,  <43.962189, 33.316906, 26.579035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105667, 33.508640, 26.563177>,  <44.344799, 33.828197, 26.536747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105667, 33.508640, 26.563177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624493, -0.515824, -0.586459,
		0.502605, -0.309337, 0.807279,
		-0.597828, -0.798897, 0.066077,
		43.926319, 33.268970, 26.583000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.289997, 28.600773, 27.190060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561638, 28.892500, 27.156803>,  <37.724621, 29.067537, 27.136848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561638, 28.892500, 27.156803>,  <37.289997, 28.600773, 27.190060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561638, 28.892500, 27.156803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317813, 0.394235, 0.862307,
		0.661676, -0.559171, 0.499513,
		0.679102, 0.729320, -0.083144,
		37.765369, 29.111296, 27.131861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664436, 28.638445, 27.875330>,  <37.289997, 28.600773, 27.190060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664436, 28.638445, 27.875330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725609, 28.996248, 27.707298>,  <37.762314, 29.210930, 27.606480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725609, 28.996248, 27.707298>,  <37.664436, 28.638445, 27.875330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725609, 28.996248, 27.707298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232131, 0.445702, 0.864560,
		0.960586, -0.034709, 0.275807,
		0.152935, 0.894508, -0.420079,
		37.771488, 29.264601, 27.581274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915562, 28.969898, 28.450661>,  <37.664436, 28.638445, 27.875330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915562, 28.969898, 28.450661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846371, 29.264853, 28.189482>,  <37.804855, 29.441826, 28.032774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846371, 29.264853, 28.189482>,  <37.915562, 28.969898, 28.450661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846371, 29.264853, 28.189482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384817, 0.559650, 0.733967,
		0.906639, 0.378225, 0.186952,
		-0.172977, 0.737386, -0.652948,
		37.794479, 29.486069, 27.993597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109356, 29.512381, 28.775011>,  <37.915562, 28.969898, 28.450661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109356, 29.512381, 28.775011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860332, 29.650494, 28.494101>,  <37.710918, 29.733362, 28.325554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860332, 29.650494, 28.494101>,  <38.109356, 29.512381, 28.775011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860332, 29.650494, 28.494101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464591, 0.559070, 0.686729,
		0.629739, 0.753804, -0.187640,
		-0.622563, 0.345284, -0.702278,
		37.673565, 29.754080, 28.283417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043861, 30.197985, 28.996630>,  <38.109356, 29.512381, 28.775011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043861, 30.197985, 28.996630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740063, 30.125160, 28.746824>,  <37.557785, 30.081465, 28.596941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740063, 30.125160, 28.746824>,  <38.043861, 30.197985, 28.996630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740063, 30.125160, 28.746824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625489, 0.468095, 0.624219,
		0.178687, 0.864720, -0.469393,
		-0.759496, -0.182060, -0.624516,
		37.512215, 30.070541, 28.559469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647217, 30.884844, 28.832499>,  <38.043861, 30.197985, 28.996630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647217, 30.884844, 28.832499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413086, 30.561756, 28.804274>,  <37.272606, 30.367903, 28.787338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413086, 30.561756, 28.804274>,  <37.647217, 30.884844, 28.832499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413086, 30.561756, 28.804274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728848, 0.486043, 0.482226,
		-0.355208, 0.333690, -0.873200,
		-0.585327, -0.807721, -0.070563,
		37.237488, 30.319439, 28.783104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998554, 31.154839, 28.646626>,  <37.647217, 30.884844, 28.832499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998554, 31.154839, 28.646626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937008, 30.780998, 28.774900>,  <36.900078, 30.556694, 28.851866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937008, 30.780998, 28.774900>,  <36.998554, 31.154839, 28.646626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937008, 30.780998, 28.774900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830088, 0.298320, 0.471126,
		-0.535983, -0.193708, -0.821705,
		-0.153870, -0.934603, 0.320689,
		36.890846, 30.500618, 28.871107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213757, 30.983671, 28.604469>,  <36.998554, 31.154839, 28.646626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213757, 30.983671, 28.604469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376560, 30.718876, 28.856218>,  <36.474243, 30.559998, 29.007267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376560, 30.718876, 28.856218>,  <36.213757, 30.983671, 28.604469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376560, 30.718876, 28.856218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800160, 0.073922, 0.595214,
		-0.440551, -0.745858, -0.499611,
		0.407013, -0.661991, 0.629372,
		36.498665, 30.520279, 29.045031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670193, 30.497353, 28.716537>,  <36.213757, 30.983671, 28.604469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670193, 30.497353, 28.716537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939308, 30.453203, 29.009159>,  <36.100777, 30.426714, 29.184732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939308, 30.453203, 29.009159>,  <35.670193, 30.497353, 28.716537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939308, 30.453203, 29.009159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719999, 0.129751, 0.681737,
		-0.170167, -0.985384, 0.007825,
		0.672788, -0.110376, 0.731555,
		36.141144, 30.420092, 29.228626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360767, 30.082026, 29.206741>,  <35.670193, 30.497353, 28.716537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360767, 30.082026, 29.206741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642162, 30.272039, 29.418192>,  <35.811001, 30.386047, 29.545063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.642162, 30.272039, 29.418192>,  <35.360767, 30.082026, 29.206741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642162, 30.272039, 29.418192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618615, 0.043099, 0.784511,
		0.349888, -0.878910, 0.324184,
		0.703487, 0.475036, 0.528627,
		35.853210, 30.414551, 29.576780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286919, 29.774250, 29.877626>,  <35.360767, 30.082026, 29.206741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286919, 29.774250, 29.877626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.507954, 30.096510, 29.963017>,  <35.640575, 30.289865, 30.014250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.507954, 30.096510, 29.963017>,  <35.286919, 29.774250, 29.877626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507954, 30.096510, 29.963017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447513, 0.070731, 0.891476,
		0.703119, -0.588153, 0.399625,
		0.552590, 0.805651, 0.213474,
		35.673729, 30.338205, 30.027060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475353, 29.690607, 30.625502>,  <35.286919, 29.774250, 29.877626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475353, 29.690607, 30.625502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508934, 30.072763, 30.512238>,  <35.529083, 30.302057, 30.444279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.508934, 30.072763, 30.512238>,  <35.475353, 29.690607, 30.625502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508934, 30.072763, 30.512238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474539, 0.288201, 0.831717,
		0.876222, 0.064550, 0.477565,
		0.083947, 0.955392, -0.283159,
		35.534119, 30.359381, 30.427290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600048, 30.133032, 31.283762>,  <35.475353, 29.690607, 30.625502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600048, 30.133032, 31.283762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472485, 30.384230, 30.999811>,  <35.395947, 30.534948, 30.829441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472485, 30.384230, 30.999811>,  <35.600048, 30.133032, 31.283762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472485, 30.384230, 30.999811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379095, 0.601943, 0.702816,
		0.868668, 0.493244, 0.046104,
		-0.318908, 0.627992, -0.709875,
		35.376812, 30.572628, 30.786848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696075, 30.749653, 31.591158>,  <35.600048, 30.133032, 31.283762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696075, 30.749653, 31.591158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426735, 30.844254, 31.310968>,  <35.265129, 30.901014, 31.142855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426735, 30.844254, 31.310968>,  <35.696075, 30.749653, 31.591158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426735, 30.844254, 31.310968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535203, 0.497715, 0.682523,
		0.510054, 0.834474, -0.208560,
		-0.673351, 0.236502, -0.700475,
		35.224731, 30.915205, 31.100826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467533, 30.992128, 31.815517>,  <35.696075, 30.749653, 31.591158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467533, 30.992128, 31.815517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539265, 30.803955, 32.161125>,  <36.582302, 30.691051, 32.368492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539265, 30.803955, 32.161125>,  <36.467533, 30.992128, 31.815517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539265, 30.803955, 32.161125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576984, -0.661057, -0.479680,
		0.796825, 0.584548, 0.152885,
		0.179330, -0.470433, 0.864021,
		36.593063, 30.662825, 32.420330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199104, 30.990208, 31.949024>,  <36.467533, 30.992128, 31.815517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199104, 30.990208, 31.949024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005875, 30.686361, 32.123203>,  <36.889935, 30.504053, 32.227711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005875, 30.686361, 32.123203>,  <37.199104, 30.990208, 31.949024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005875, 30.686361, 32.123203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530284, -0.649567, -0.544849,
		0.696731, -0.032292, 0.716605,
		-0.483077, -0.759618, 0.435450,
		36.860950, 30.458475, 32.253838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741470, 30.613991, 32.231216>,  <37.199104, 30.990208, 31.949024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741470, 30.613991, 32.231216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449375, 30.341080, 32.245350>,  <37.274117, 30.177334, 32.253830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449375, 30.341080, 32.245350>,  <37.741470, 30.613991, 32.231216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449375, 30.341080, 32.245350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657346, -0.715764, -0.235748,
		0.186136, -0.148927, 0.971172,
		-0.730239, -0.682277, 0.035333,
		37.230305, 30.136396, 32.255951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031399, 30.020208, 32.639282>,  <37.741470, 30.613991, 32.231216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031399, 30.020208, 32.639282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727863, 29.912264, 32.402184>,  <37.545742, 29.847498, 32.259926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727863, 29.912264, 32.402184>,  <38.031399, 30.020208, 32.639282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727863, 29.912264, 32.402184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579513, -0.695101, -0.425440,
		-0.297206, -0.666341, 0.683855,
		-0.758836, -0.269859, -0.592742,
		37.500214, 29.831306, 32.224361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264366, 29.337275, 32.545944>,  <38.031399, 30.020208, 32.639282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264366, 29.337275, 32.545944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.997795, 29.385454, 32.251633>,  <37.837852, 29.414362, 32.075047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.997795, 29.385454, 32.251633>,  <38.264366, 29.337275, 32.545944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997795, 29.385454, 32.251633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550814, -0.585551, -0.594755,
		-0.502474, -0.801637, 0.323881,
		-0.666426, 0.120451, -0.735777,
		37.797867, 29.421589, 32.030899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124004, 28.712265, 32.316982>,  <38.264366, 29.337275, 32.545944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124004, 28.712265, 32.316982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064236, 28.958908, 32.007797>,  <38.028374, 29.106894, 31.822287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064236, 28.958908, 32.007797>,  <38.124004, 28.712265, 32.316982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064236, 28.958908, 32.007797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332588, -0.704843, -0.626563,
		-0.931160, -0.350697, -0.099760,
		-0.149418, 0.616609, -0.772960,
		38.019409, 29.143890, 31.775909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987682, 28.229727, 31.823238>,  <38.124004, 28.712265, 32.316982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987682, 28.229727, 31.823238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058342, 28.560085, 31.609064>,  <38.100739, 28.758301, 31.480560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.058342, 28.560085, 31.609064>,  <37.987682, 28.229727, 31.823238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058342, 28.560085, 31.609064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409108, -0.556381, -0.723236,
		-0.895225, -0.091295, -0.436163,
		0.176644, 0.825897, -0.535435,
		38.111336, 28.807854, 31.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748333, 28.052168, 31.194550>,  <37.987682, 28.229727, 31.823238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748333, 28.052168, 31.194550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995949, 28.344671, 31.079973>,  <38.144520, 28.520174, 31.011227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995949, 28.344671, 31.079973>,  <37.748333, 28.052168, 31.194550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995949, 28.344671, 31.079973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190151, -0.493432, -0.848745,
		-0.761992, 0.470940, -0.444504,
		0.619040, 0.731259, -0.286441,
		38.181660, 28.564049, 30.994041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769917, 28.043076, 30.482462>,  <37.748333, 28.052168, 31.194550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769917, 28.043076, 30.482462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.102406, 28.252136, 30.558250>,  <38.301899, 28.377573, 30.603724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.102406, 28.252136, 30.558250>,  <37.769917, 28.043076, 30.482462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102406, 28.252136, 30.558250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446622, -0.424858, -0.787417,
		-0.331046, 0.739143, -0.586580,
		0.831226, 0.522651, 0.189470,
		38.351772, 28.408932, 30.615091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915031, 28.286871, 29.933222>,  <37.769917, 28.043076, 30.482462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915031, 28.286871, 29.933222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262627, 28.288321, 30.131147>,  <38.471184, 28.289190, 30.249903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262627, 28.288321, 30.131147>,  <37.915031, 28.286871, 29.933222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262627, 28.288321, 30.131147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454971, -0.399037, -0.796097,
		0.194564, 0.916928, -0.348408,
		0.868991, 0.003624, 0.494814,
		38.523323, 28.289408, 30.279591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400936, 28.748100, 29.579592>,  <37.915031, 28.286871, 29.933222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400936, 28.748100, 29.579592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.622223, 28.508827, 29.811499>,  <38.754993, 28.365263, 29.950644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.622223, 28.508827, 29.811499>,  <38.400936, 28.748100, 29.579592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622223, 28.508827, 29.811499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697827, -0.047332, -0.714700,
		0.454961, 0.799962, 0.391242,
		0.553215, -0.598181, 0.579770,
		38.788189, 28.329372, 29.985430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095753, 29.078632, 29.613041>,  <38.400936, 28.748100, 29.579592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095753, 29.078632, 29.613041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119259, 28.683100, 29.667818>,  <39.133362, 28.445780, 29.700686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119259, 28.683100, 29.667818>,  <39.095753, 29.078632, 29.613041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119259, 28.683100, 29.667818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640902, -0.067803, -0.764622,
		0.765369, 0.132705, 0.629761,
		0.058770, -0.988834, 0.136945,
		39.136890, 28.386450, 29.708902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737545, 28.946100, 29.408775>,  <39.095753, 29.078632, 29.613041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737545, 28.946100, 29.408775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606411, 28.568665, 29.427376>,  <39.527733, 28.342203, 29.438536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606411, 28.568665, 29.427376>,  <39.737545, 28.946100, 29.408775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606411, 28.568665, 29.427376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701082, -0.275981, -0.657509,
		0.633253, -0.182951, 0.752010,
		-0.327833, -0.943591, 0.046503,
		39.508060, 28.285587, 29.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326176, 28.512283, 29.358898>,  <39.737545, 28.946100, 29.408775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326176, 28.512283, 29.358898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025234, 28.264534, 29.269157>,  <39.844669, 28.115885, 29.215313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.025234, 28.264534, 29.269157>,  <40.326176, 28.512283, 29.358898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025234, 28.264534, 29.269157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582068, -0.465556, -0.666674,
		0.308474, -0.632164, 0.710783,
		-0.752357, -0.619376, -0.224351,
		39.799526, 28.078722, 29.201853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868702, 28.304667, 29.874332>,  <40.326176, 28.512283, 29.358898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868702, 28.304667, 29.874332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237667, 28.452122, 29.828260>,  <41.459045, 28.540594, 29.800617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.237667, 28.452122, 29.828260>,  <40.868702, 28.304667, 29.874332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237667, 28.452122, 29.828260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124975, 0.567083, 0.814124,
		0.365431, -0.736563, 0.569154,
		0.922411, 0.368636, -0.115177,
		41.514389, 28.562714, 29.793707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200424, 28.401314, 30.511490>,  <40.868702, 28.304667, 29.874332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200424, 28.401314, 30.511490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406685, 28.659216, 30.285782>,  <41.530441, 28.813957, 30.150358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406685, 28.659216, 30.285782>,  <41.200424, 28.401314, 30.511490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406685, 28.659216, 30.285782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079610, 0.619673, 0.780813,
		0.853095, -0.447545, 0.268203,
		0.515646, 0.644755, -0.564269,
		41.561378, 28.852642, 30.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825424, 28.537024, 30.845449>,  <41.200424, 28.401314, 30.511490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825424, 28.537024, 30.845449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.745705, 28.843430, 30.600992>,  <41.697872, 29.027273, 30.454317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.745705, 28.843430, 30.600992>,  <41.825424, 28.537024, 30.845449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745705, 28.843430, 30.600992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142733, 0.594313, 0.791466,
		0.969488, 0.244969, -0.009110,
		-0.199299, 0.766017, -0.611145,
		41.685913, 29.073235, 30.417648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165325, 29.159067, 31.149586>,  <41.825424, 28.537024, 30.845449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165325, 29.159067, 31.149586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889030, 29.308828, 30.902130>,  <41.723255, 29.398685, 30.753656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.889030, 29.308828, 30.902130>,  <42.165325, 29.159067, 31.149586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889030, 29.308828, 30.902130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268454, 0.661608, 0.700148,
		0.671433, 0.649690, -0.356484,
		-0.690732, 0.374403, -0.618637,
		41.681812, 29.421148, 30.716539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186863, 29.897644, 31.338181>,  <42.165325, 29.159067, 31.149586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186863, 29.897644, 31.338181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.842094, 29.821730, 31.150110>,  <41.635231, 29.776180, 31.037268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.842094, 29.821730, 31.150110>,  <42.186863, 29.897644, 31.338181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842094, 29.821730, 31.150110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432356, 0.759513, 0.486013,
		0.264867, 0.622190, -0.736699,
		-0.861925, -0.189787, -0.470178,
		41.583519, 29.764793, 31.009056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924385, 30.565094, 31.131088>,  <42.186863, 29.897644, 31.338181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924385, 30.565094, 31.131088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.619488, 30.306456, 31.119110>,  <41.436550, 30.151272, 31.111923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.619488, 30.306456, 31.119110>,  <41.924385, 30.565094, 31.131088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619488, 30.306456, 31.119110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547322, 0.619132, 0.563128,
		-0.345576, 0.445632, -0.825827,
		-0.762244, -0.646597, -0.029948,
		41.390816, 30.112476, 31.110126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386909, 30.945972, 30.912676>,  <41.924385, 30.565094, 31.131088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386909, 30.945972, 30.912676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191120, 30.627844, 31.055717>,  <41.073647, 30.436968, 31.141542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.191120, 30.627844, 31.055717>,  <41.386909, 30.945972, 30.912676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191120, 30.627844, 31.055717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660820, 0.605877, 0.442977,
		-0.568971, -0.019484, -0.822126,
		-0.489477, -0.795319, 0.357602,
		41.044277, 30.389248, 31.162998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683361, 31.084871, 30.687908>,  <41.386909, 30.945972, 30.912676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683361, 31.084871, 30.687908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708424, 30.855860, 31.014904>,  <40.723461, 30.718452, 31.211102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708424, 30.855860, 31.014904>,  <40.683361, 31.084871, 30.687908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708424, 30.855860, 31.014904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526274, 0.677010, 0.514483,
		-0.848003, -0.462459, -0.258886,
		0.062659, -0.572528, 0.817487,
		40.727222, 30.684101, 31.260151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043270, 31.130987, 30.896063>,  <40.683361, 31.084871, 30.687908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043270, 31.130987, 30.896063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257915, 30.995916, 31.205391>,  <40.386703, 30.914873, 31.390987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.257915, 30.995916, 31.205391>,  <40.043270, 31.130987, 30.896063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257915, 30.995916, 31.205391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530026, 0.578216, 0.620273,
		-0.656598, -0.742724, 0.131299,
		0.536611, -0.337679, 0.773318,
		40.418900, 30.894613, 31.437386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570503, 30.937630, 31.302946>,  <40.043270, 31.130987, 30.896063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570503, 30.937630, 31.302946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.885765, 30.984928, 31.544550>,  <40.074924, 31.013308, 31.689512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.885765, 30.984928, 31.544550>,  <39.570503, 30.937630, 31.302946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885765, 30.984928, 31.544550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577749, 0.480442, 0.659835,
		-0.212167, -0.869019, 0.446981,
		0.788157, 0.118247, 0.604009,
		40.122211, 31.020403, 31.725752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234398, 30.994619, 31.912373>,  <39.570503, 30.937630, 31.302946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234398, 30.994619, 31.912373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598991, 31.129360, 32.006794>,  <39.817749, 31.210205, 32.063446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598991, 31.129360, 32.006794>,  <39.234398, 30.994619, 31.912373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598991, 31.129360, 32.006794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397227, 0.571888, 0.717743,
		0.106777, -0.747981, 0.655075,
		0.911487, 0.336852, 0.236053,
		39.872437, 31.230415, 32.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280865, 30.997723, 32.625587>,  <39.234398, 30.994619, 31.912373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280865, 30.997723, 32.625587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553913, 31.254463, 32.485840>,  <39.717743, 31.408506, 32.401993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553913, 31.254463, 32.485840>,  <39.280865, 30.997723, 32.625587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553913, 31.254463, 32.485840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360370, 0.711570, 0.603159,
		0.635739, -0.285825, 0.717035,
		0.682619, 0.641850, -0.349370,
		39.758698, 31.447018, 32.381027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523422, 31.297705, 33.242973>,  <39.280865, 30.997723, 32.625587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523422, 31.297705, 33.242973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600777, 31.554447, 32.946159>,  <39.647190, 31.708492, 32.768070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600777, 31.554447, 32.946159>,  <39.523422, 31.297705, 33.242973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600777, 31.554447, 32.946159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245841, 0.763889, 0.596688,
		0.949824, 0.067035, 0.305517,
		0.193382, 0.641857, -0.742040,
		39.658791, 31.747004, 32.723549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026775, 31.813992, 33.483166>,  <39.523422, 31.297705, 33.242973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026775, 31.813992, 33.483166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859055, 31.997154, 33.169605>,  <39.758423, 32.107052, 32.981468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859055, 31.997154, 33.169605>,  <40.026775, 31.813992, 33.483166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859055, 31.997154, 33.169605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374263, 0.699498, 0.608794,
		0.827110, 0.548656, -0.121925,
		-0.419305, 0.457908, -0.783903,
		39.733265, 32.134525, 32.934433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.942051, 32.545265, 26.890511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.574909, 32.540871, 26.731800>,  <44.354626, 32.538235, 26.636574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.574909, 32.540871, 26.731800>,  <44.942051, 32.545265, 26.890511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574909, 32.540871, 26.731800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223915, -0.839706, -0.494729,
		-0.327740, -0.542931, 0.773183,
		-0.917850, -0.010985, -0.396776,
		44.299553, 32.537575, 26.612768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594898, 31.997314, 27.156221>,  <44.942051, 32.545265, 26.890511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594898, 31.997314, 27.156221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.385715, 32.080467, 26.825575>,  <44.260204, 32.130360, 26.627186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.385715, 32.080467, 26.825575>,  <44.594898, 31.997314, 27.156221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385715, 32.080467, 26.825575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273687, -0.877494, -0.393827,
		-0.807221, -0.432191, 0.402001,
		-0.522961, 0.207883, -0.826617,
		44.228828, 32.142834, 26.577589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192352, 31.504457, 27.027767>,  <44.594898, 31.997314, 27.156221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192352, 31.504457, 27.027767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.232101, 31.657581, 26.660379>,  <44.255951, 31.749454, 26.439947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.232101, 31.657581, 26.660379>,  <44.192352, 31.504457, 27.027767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232101, 31.657581, 26.660379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259715, -0.901020, -0.347435,
		-0.960558, -0.204012, -0.188961,
		0.099377, 0.382808, -0.918467,
		44.261913, 31.772423, 26.384840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845108, 31.033573, 26.531000>,  <44.192352, 31.504457, 27.027767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845108, 31.033573, 26.531000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.083973, 31.266935, 26.310804>,  <44.227291, 31.406952, 26.178686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.083973, 31.266935, 26.310804>,  <43.845108, 31.033573, 26.531000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083973, 31.266935, 26.310804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241058, -0.785095, -0.570541,
		-0.765044, 0.208003, -0.609461,
		0.597159, 0.583404, -0.550491,
		44.263123, 31.441957, 26.145657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702705, 30.806507, 25.927155>,  <43.845108, 31.033573, 26.531000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702705, 30.806507, 25.927155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.056820, 30.990784, 25.901775>,  <44.269291, 31.101349, 25.886547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.056820, 30.990784, 25.901775>,  <43.702705, 30.806507, 25.927155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056820, 30.990784, 25.901775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360274, -0.765707, -0.532819,
		-0.294047, 0.448841, -0.843847,
		0.885290, 0.460690, -0.063448,
		44.322407, 31.128990, 25.882740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748138, 30.859896, 25.200281>,  <43.702705, 30.806507, 25.927155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748138, 30.859896, 25.200281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.123741, 30.885233, 25.335485>,  <44.349102, 30.900436, 25.416609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.123741, 30.885233, 25.335485>,  <43.748138, 30.859896, 25.200281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123741, 30.885233, 25.335485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330754, -0.435463, -0.837242,
		0.094157, 0.897975, -0.429855,
		0.939008, 0.063344, 0.338011,
		44.405445, 30.904236, 25.436888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077805, 31.060474, 24.658741>,  <43.748138, 30.859896, 25.200281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077805, 31.060474, 24.658741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359943, 30.894550, 24.888666>,  <44.529228, 30.794996, 25.026621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.359943, 30.894550, 24.888666>,  <44.077805, 31.060474, 24.658741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359943, 30.894550, 24.888666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312211, -0.546216, -0.777285,
		0.636400, 0.727722, -0.255765,
		0.705350, -0.414812, 0.574815,
		44.571548, 30.770107, 25.061111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694492, 31.021271, 24.314207>,  <44.077805, 31.060474, 24.658741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694492, 31.021271, 24.314207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.765343, 30.755707, 24.604820>,  <44.807854, 30.596369, 24.779188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.765343, 30.755707, 24.604820>,  <44.694492, 31.021271, 24.314207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765343, 30.755707, 24.604820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271010, -0.676767, -0.684500,
		0.946140, 0.318141, 0.060053,
		0.177125, -0.663908, 0.726535,
		44.818481, 30.556534, 24.822781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329174, 30.675631, 24.115173>,  <44.694492, 31.021271, 24.314207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329174, 30.675631, 24.115173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.188366, 30.428841, 24.396719>,  <45.103882, 30.280767, 24.565647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.188366, 30.428841, 24.396719>,  <45.329174, 30.675631, 24.115173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188366, 30.428841, 24.396719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247903, -0.786599, -0.565514,
		0.902568, -0.024579, 0.429845,
		-0.352016, -0.616975, 0.703866,
		45.082760, 30.243748, 24.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868553, 30.191387, 24.174332>,  <45.329174, 30.675631, 24.115173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868553, 30.191387, 24.174332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.511978, 30.043009, 24.278444>,  <45.298035, 29.953981, 24.340912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.511978, 30.043009, 24.278444>,  <45.868553, 30.191387, 24.174332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511978, 30.043009, 24.278444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144855, -0.777501, -0.611972,
		0.429377, -0.507829, 0.746823,
		-0.891433, -0.370948, 0.260280,
		45.244549, 29.931725, 24.356527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016533, 29.562416, 24.314127>,  <45.868553, 30.191387, 24.174332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016533, 29.562416, 24.314127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.623966, 29.543652, 24.239700>,  <45.388428, 29.532393, 24.195044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.623966, 29.543652, 24.239700>,  <46.016533, 29.562416, 24.314127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623966, 29.543652, 24.239700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160398, -0.732795, -0.661275,
		-0.105330, -0.678831, 0.726701,
		-0.981416, -0.046910, -0.186069,
		45.329540, 29.529579, 24.183880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863617, 28.881449, 24.366810>,  <46.016533, 29.562416, 24.314127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863617, 28.881449, 24.366810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.543110, 29.020988, 24.172377>,  <45.350807, 29.104712, 24.055717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.543110, 29.020988, 24.172377>,  <45.863617, 28.881449, 24.366810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543110, 29.020988, 24.172377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016594, -0.825076, -0.564778,
		-0.598076, -0.444472, 0.666896,
		-0.801268, 0.348847, -0.486083,
		45.302731, 29.125643, 24.026552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212223, 28.372219, 24.395817>,  <45.863617, 28.881449, 24.366810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212223, 28.372219, 24.395817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.222885, 28.609962, 24.074314>,  <45.229282, 28.752609, 23.881413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.222885, 28.609962, 24.074314>,  <45.212223, 28.372219, 24.395817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222885, 28.609962, 24.074314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116457, -0.796723, -0.593018,
		-0.992838, 0.109410, 0.047981,
		0.026655, 0.594359, -0.803758,
		45.230881, 28.788271, 23.833187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998550, 28.137720, 25.071745>,  <45.212223, 28.372219, 24.395817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998550, 28.137720, 25.071745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775002, 27.807486, 25.040573>,  <44.640873, 27.609344, 25.021870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775002, 27.807486, 25.040573>,  <44.998550, 28.137720, 25.071745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775002, 27.807486, 25.040573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255355, 0.081922, 0.963370,
		-0.788960, 0.558298, -0.256602,
		-0.558869, -0.825586, -0.077931,
		44.607342, 27.559811, 25.017193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226021, 28.254128, 25.236855>,  <44.998550, 28.137720, 25.071745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226021, 28.254128, 25.236855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374920, 27.892063, 25.318945>,  <44.464260, 27.674826, 25.368198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.374920, 27.892063, 25.318945>,  <44.226021, 28.254128, 25.236855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374920, 27.892063, 25.318945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307065, 0.088557, 0.947560,
		-0.875867, -0.415744, -0.244977,
		0.372248, -0.905160, 0.205224,
		44.486595, 27.620516, 25.380512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672276, 28.003866, 25.614304>,  <44.226021, 28.254128, 25.236855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672276, 28.003866, 25.614304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.995697, 27.783850, 25.697920>,  <44.189751, 27.651840, 25.748089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.995697, 27.783850, 25.697920>,  <43.672276, 28.003866, 25.614304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995697, 27.783850, 25.697920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295228, -0.071910, 0.952717,
		-0.509001, -0.832036, -0.220531,
		0.808553, -0.550040, 0.209038,
		44.238262, 27.618837, 25.760632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472744, 27.230446, 25.777573>,  <43.672276, 28.003866, 25.614304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472744, 27.230446, 25.777573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812244, 27.322025, 25.968239>,  <44.015945, 27.376972, 26.082640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812244, 27.322025, 25.968239>,  <43.472744, 27.230446, 25.777573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812244, 27.322025, 25.968239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406151, -0.295001, 0.864879,
		0.338630, -0.927662, -0.157394,
		0.848746, 0.228949, 0.476668,
		44.066868, 27.390709, 26.111238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476318, 26.636368, 26.233595>,  <43.472744, 27.230446, 25.777573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476318, 26.636368, 26.233595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.727852, 26.923502, 26.353115>,  <43.878773, 27.095781, 26.424828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.727852, 26.923502, 26.353115>,  <43.476318, 26.636368, 26.233595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727852, 26.923502, 26.353115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173855, -0.244749, 0.953872,
		0.757852, -0.651777, -0.029108,
		0.628836, 0.717833, 0.298798,
		43.916504, 27.138851, 26.442755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754349, 26.376808, 26.827112>,  <43.476318, 26.636368, 26.233595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754349, 26.376808, 26.827112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817989, 26.770903, 26.852407>,  <43.856174, 27.007359, 26.867584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.817989, 26.770903, 26.852407>,  <43.754349, 26.376808, 26.827112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817989, 26.770903, 26.852407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333811, -0.006596, 0.942617,
		0.929116, -0.171080, 0.327833,
		0.159101, 0.985235, 0.063237,
		43.865719, 27.066473, 26.871378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003765, 26.439596, 27.499207>,  <43.754349, 26.376808, 26.827112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003765, 26.439596, 27.499207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.916550, 26.815546, 27.394064>,  <43.864220, 27.041117, 27.330978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.916550, 26.815546, 27.394064>,  <44.003765, 26.439596, 27.499207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916550, 26.815546, 27.394064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330744, 0.182233, 0.925958,
		0.918186, 0.288835, 0.271124,
		-0.218041, 0.939875, -0.262854,
		43.851139, 27.097509, 27.315208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137699, 26.750568, 28.049747>,  <44.003765, 26.439596, 27.499207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137699, 26.750568, 28.049747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.912338, 27.013218, 27.849178>,  <43.777122, 27.170809, 27.728836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.912338, 27.013218, 27.849178>,  <44.137699, 26.750568, 28.049747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912338, 27.013218, 27.849178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473253, 0.240988, 0.847323,
		0.677211, 0.714681, 0.174978,
		-0.563398, 0.656625, -0.501425,
		43.743320, 27.210205, 27.698751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178078, 27.386362, 28.349363>,  <44.137699, 26.750568, 28.049747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178078, 27.386362, 28.349363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.828735, 27.366945, 28.155497>,  <43.619129, 27.355295, 28.039177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.828735, 27.366945, 28.155497>,  <44.178078, 27.386362, 28.349363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828735, 27.366945, 28.155497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469910, 0.345899, 0.812120,
		0.128223, 0.937015, -0.324902,
		-0.873352, -0.048543, -0.484665,
		43.566730, 27.352383, 28.010098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792183, 27.874363, 28.787016>,  <44.178078, 27.386362, 28.349363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792183, 27.874363, 28.787016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511120, 27.726074, 28.544088>,  <43.342480, 27.637102, 28.398333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511120, 27.726074, 28.544088>,  <43.792183, 27.874363, 28.787016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511120, 27.726074, 28.544088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703339, 0.232785, 0.671659,
		-0.107623, 0.899098, -0.424311,
		-0.702661, -0.370720, -0.607318,
		43.300323, 27.614859, 28.361893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399132, 28.394281, 28.460899>,  <43.792183, 27.874363, 28.787016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399132, 28.394281, 28.460899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.179321, 28.062479, 28.500778>,  <43.047436, 27.863398, 28.524706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.179321, 28.062479, 28.500778>,  <43.399132, 28.394281, 28.460899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179321, 28.062479, 28.500778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586196, 0.467839, 0.661439,
		-0.595310, 0.305036, -0.743343,
		-0.549528, -0.829506, 0.099698,
		43.014462, 27.813627, 28.530687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691040, 28.645382, 28.295572>,  <43.399132, 28.394281, 28.460899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691040, 28.645382, 28.295572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.634888, 28.283333, 28.456095>,  <42.601196, 28.066103, 28.552408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.634888, 28.283333, 28.456095>,  <42.691040, 28.645382, 28.295572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634888, 28.283333, 28.456095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643533, 0.391436, 0.657756,
		-0.752436, -0.165919, -0.637426,
		-0.140377, -0.905123, 0.401305,
		42.592773, 28.011795, 28.576487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911858, 28.509949, 28.310907>,  <42.691040, 28.645382, 28.295572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911858, 28.509949, 28.310907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097504, 28.278210, 28.578924>,  <42.208889, 28.139166, 28.739735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097504, 28.278210, 28.578924>,  <41.911858, 28.509949, 28.310907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097504, 28.278210, 28.578924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522225, 0.432028, 0.735278,
		-0.715459, -0.691162, -0.102042,
		0.464111, -0.579350, 0.670040,
		42.236736, 28.104404, 28.779936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392609, 28.140404, 28.536495>,  <41.911858, 28.509949, 28.310907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392609, 28.140404, 28.536495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670380, 28.127115, 28.824015>,  <41.837040, 28.119143, 28.996527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670380, 28.127115, 28.824015>,  <41.392609, 28.140404, 28.536495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670380, 28.127115, 28.824015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488821, 0.711272, 0.505120,
		-0.528041, -0.702131, 0.477686,
		0.694425, -0.033222, 0.718797,
		41.878708, 28.117149, 29.039654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998970, 28.187424, 29.137508>,  <41.392609, 28.140404, 28.536495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998970, 28.187424, 29.137508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350037, 28.289339, 29.299883>,  <41.560677, 28.350489, 29.397306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.350037, 28.289339, 29.299883>,  <40.998970, 28.187424, 29.137508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350037, 28.289339, 29.299883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478774, 0.504662, 0.718395,
		-0.021820, -0.824862, 0.564912,
		0.877666, 0.254790, 0.405935,
		41.613338, 28.365776, 29.421663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538532, 27.692728, 29.382593>,  <40.998970, 28.187424, 29.137508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538532, 27.692728, 29.382593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220192, 27.709362, 29.140968>,  <40.029186, 27.719343, 28.995995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220192, 27.709362, 29.140968>,  <40.538532, 27.692728, 29.382593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220192, 27.709362, 29.140968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493241, -0.534108, -0.686616,
		-0.351187, -0.844393, 0.404559,
		-0.795852, 0.041585, -0.604061,
		39.981438, 27.721838, 28.959749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378948, 26.999979, 29.117466>,  <40.538532, 27.692728, 29.382593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378948, 26.999979, 29.117466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194702, 27.241375, 28.857119>,  <40.084152, 27.386213, 28.700911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194702, 27.241375, 28.857119>,  <40.378948, 26.999979, 29.117466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194702, 27.241375, 28.857119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357803, -0.544825, -0.758382,
		-0.812286, -0.582207, 0.035025,
		-0.460618, 0.603491, -0.650869,
		40.056519, 27.422422, 28.661858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336742, 26.533480, 28.582079>,  <40.378948, 26.999979, 29.117466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336742, 26.533480, 28.582079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.245739, 26.888372, 28.421549>,  <40.191139, 27.101307, 28.325230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.245739, 26.888372, 28.421549>,  <40.336742, 26.533480, 28.582079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245739, 26.888372, 28.421549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457255, -0.266538, -0.848455,
		-0.859744, -0.376536, -0.345052,
		-0.227504, 0.887231, -0.401327,
		40.177486, 27.154541, 28.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049252, 26.346985, 27.808506>,  <40.336742, 26.533480, 28.582079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049252, 26.346985, 27.808506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172913, 26.727310, 27.800735>,  <40.247108, 26.955505, 27.796074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.172913, 26.727310, 27.800735>,  <40.049252, 26.346985, 27.808506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172913, 26.727310, 27.800735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502231, -0.180575, -0.845670,
		-0.807582, 0.251686, -0.533353,
		0.309153, 0.950814, -0.019425,
		40.265659, 27.012554, 27.794909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880096, 26.527836, 27.136484>,  <40.049252, 26.346985, 27.808506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880096, 26.527836, 27.136484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.148811, 26.801140, 27.250925>,  <40.310040, 26.965122, 27.319590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.148811, 26.801140, 27.250925>,  <39.880096, 26.527836, 27.136484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148811, 26.801140, 27.250925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525628, -0.167565, -0.834049,
		-0.521931, 0.710689, -0.471709,
		0.671791, 0.683260, 0.286100,
		40.350349, 27.006117, 27.336756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847065, 27.042593, 26.682514>,  <39.880096, 26.527836, 27.136484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847065, 27.042593, 26.682514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205265, 27.091841, 26.853588>,  <40.420185, 27.121389, 26.956232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205265, 27.091841, 26.853588>,  <39.847065, 27.042593, 26.682514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205265, 27.091841, 26.853588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431283, -0.002853, -0.902212,
		-0.109861, 0.992387, -0.055655,
		0.895503, 0.123121, 0.427687,
		40.473915, 27.128777, 26.981894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282597, 27.473717, 26.193123>,  <39.847065, 27.042593, 26.682514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282597, 27.473717, 26.193123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531487, 27.277412, 26.437084>,  <40.680820, 27.159630, 26.583462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531487, 27.277412, 26.437084>,  <40.282597, 27.473717, 26.193123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531487, 27.277412, 26.437084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610955, -0.182686, -0.770299,
		0.489455, 0.851926, 0.186162,
		0.622229, -0.490763, 0.609904,
		40.718155, 27.130184, 26.620056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162914, 28.203543, 25.964102>,  <40.282597, 27.473717, 26.193123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162914, 28.203543, 25.964102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978695, 28.315033, 25.627007>,  <39.868164, 28.381927, 25.424749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.978695, 28.315033, 25.627007>,  <40.162914, 28.203543, 25.964102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978695, 28.315033, 25.627007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748113, 0.389093, 0.537526,
		0.477724, 0.878021, 0.029320,
		-0.460551, 0.278724, -0.842737,
		39.840530, 28.398649, 25.374186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005123, 28.926712, 25.995409>,  <40.162914, 28.203543, 25.964102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005123, 28.926712, 25.995409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742157, 28.783073, 25.730423>,  <39.584377, 28.696890, 25.571432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.742157, 28.783073, 25.730423>,  <40.005123, 28.926712, 25.995409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742157, 28.783073, 25.730423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743250, 0.453742, 0.491628,
		0.124045, 0.815578, -0.565195,
		-0.657413, -0.359097, -0.662463,
		39.544933, 28.675344, 25.531685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536884, 29.476311, 25.842215>,  <40.005123, 28.926712, 25.995409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536884, 29.476311, 25.842215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340519, 29.151243, 25.716631>,  <39.222698, 28.956202, 25.641281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.340519, 29.151243, 25.716631>,  <39.536884, 29.476311, 25.842215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340519, 29.151243, 25.716631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869097, 0.431751, 0.241375,
		-0.060606, 0.391355, -0.918242,
		-0.490915, -0.812670, -0.313959,
		39.193245, 28.907442, 25.622444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933987, 29.736452, 25.556799>,  <39.536884, 29.476311, 25.842215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933987, 29.736452, 25.556799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.876392, 29.347507, 25.630318>,  <38.841835, 29.114141, 25.674429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.876392, 29.347507, 25.630318>,  <38.933987, 29.736452, 25.556799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876392, 29.347507, 25.630318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896195, 0.206889, 0.392469,
		-0.419647, -0.108209, -0.901214,
		-0.143982, -0.972362, 0.183797,
		38.833199, 29.055799, 25.685457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255497, 29.458918, 25.187029>,  <38.933987, 29.736452, 25.556799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255497, 29.458918, 25.187029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.371269, 29.283400, 25.527308>,  <38.440735, 29.178089, 25.731476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.371269, 29.283400, 25.527308>,  <38.255497, 29.458918, 25.187029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371269, 29.283400, 25.527308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918905, 0.121491, 0.375306,
		-0.268034, -0.890336, -0.368047,
		0.289434, -0.438795, 0.850698,
		38.458099, 29.151762, 25.782516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643726, 29.497461, 25.602737>,  <38.255497, 29.458918, 25.187029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643726, 29.497461, 25.602737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892731, 29.332861, 25.869013>,  <38.042133, 29.234100, 26.028778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892731, 29.332861, 25.869013>,  <37.643726, 29.497461, 25.602737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892731, 29.332861, 25.869013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571831, 0.341565, 0.745884,
		-0.534308, -0.844986, -0.022680,
		0.622514, -0.411501, 0.665690,
		38.079487, 29.209412, 26.068720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135548, 29.244968, 26.031204>,  <37.643726, 29.497461, 25.602737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135548, 29.244968, 26.031204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475552, 29.259308, 26.241419>,  <37.679554, 29.267912, 26.367548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.475552, 29.259308, 26.241419>,  <37.135548, 29.244968, 26.031204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475552, 29.259308, 26.241419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477255, 0.474662, 0.739543,
		-0.222942, -0.879438, 0.420579,
		0.850014, 0.035849, 0.525538,
		37.730556, 29.270061, 26.399080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.806633, 30.860727, 21.934479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.631176, 30.518930, 22.045784>,  <43.525902, 30.313852, 22.112568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.631176, 30.518930, 22.045784>,  <43.806633, 30.860727, 21.934479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631176, 30.518930, 22.045784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677454, 0.517872, 0.522365,
		-0.590462, 0.040624, -0.806042,
		-0.438647, -0.854493, 0.278263,
		43.499580, 30.262583, 22.129263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047005, 30.773262, 21.770159>,  <43.806633, 30.860727, 21.934479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047005, 30.773262, 21.770159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.178860, 30.596432, 22.103844>,  <43.257973, 30.490334, 22.304054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.178860, 30.596432, 22.103844>,  <43.047005, 30.773262, 21.770159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178860, 30.596432, 22.103844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639170, 0.545808, 0.541808,
		-0.694840, -0.711802, -0.102644,
		0.329636, -0.442076, 0.834211,
		43.277752, 30.463808, 22.354107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469688, 30.508589, 22.057489>,  <43.047005, 30.773262, 21.770159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469688, 30.508589, 22.057489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724373, 30.572189, 22.359301>,  <42.877186, 30.610350, 22.540388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724373, 30.572189, 22.359301>,  <42.469688, 30.508589, 22.057489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724373, 30.572189, 22.359301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677731, 0.582125, 0.449234,
		-0.367801, -0.797401, 0.478408,
		0.636713, 0.159002, 0.754530,
		42.915386, 30.619890, 22.585659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055443, 30.461905, 22.702957>,  <42.469688, 30.508589, 22.057489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055443, 30.461905, 22.702957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381084, 30.665239, 22.815262>,  <42.576469, 30.787241, 22.882645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381084, 30.665239, 22.815262>,  <42.055443, 30.461905, 22.702957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381084, 30.665239, 22.815262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571844, 0.617531, 0.540045,
		0.101145, -0.600206, 0.793424,
		0.814103, 0.508338, 0.280764,
		42.625317, 30.817741, 22.899490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044300, 30.362097, 23.458975>,  <42.055443, 30.461905, 22.702957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044300, 30.362097, 23.458975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266232, 30.685223, 23.379379>,  <42.399391, 30.879099, 23.331621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266232, 30.685223, 23.379379>,  <42.044300, 30.362097, 23.458975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266232, 30.685223, 23.379379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525253, 0.525607, 0.669213,
		0.645192, -0.266780, 0.715930,
		0.554830, 0.807815, -0.198990,
		42.432682, 30.927567, 23.319683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281162, 30.686596, 24.160698>,  <42.044300, 30.362097, 23.458975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281162, 30.686596, 24.160698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.325352, 30.965473, 23.877369>,  <42.351864, 31.132799, 23.707373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.325352, 30.965473, 23.877369>,  <42.281162, 30.686596, 24.160698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325352, 30.965473, 23.877369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489611, 0.658382, 0.571676,
		0.864914, 0.283647, 0.414087,
		0.110473, 0.697193, -0.708321,
		42.358494, 31.174631, 23.664873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620663, 31.257601, 24.477428>,  <42.281162, 30.686596, 24.160698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620663, 31.257601, 24.477428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.430763, 31.394823, 24.153223>,  <42.316826, 31.477156, 23.958700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.430763, 31.394823, 24.153223>,  <42.620663, 31.257601, 24.477428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430763, 31.394823, 24.153223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547130, 0.606307, 0.577097,
		0.689395, 0.717430, -0.100145,
		-0.474745, 0.343055, -0.810512,
		42.288342, 31.497740, 23.910069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656628, 32.013042, 24.512600>,  <42.620663, 31.257601, 24.477428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656628, 32.013042, 24.512600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342934, 31.945091, 24.273899>,  <42.154716, 31.904322, 24.130678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.342934, 31.945091, 24.273899>,  <42.656628, 32.013042, 24.512600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342934, 31.945091, 24.273899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535025, 0.672196, 0.511762,
		0.314200, 0.720621, -0.618049,
		-0.784236, -0.169876, -0.596754,
		42.107662, 31.894129, 24.094873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402176, 32.633854, 24.395676>,  <42.656628, 32.013042, 24.512600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402176, 32.633854, 24.395676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.112949, 32.366779, 24.324839>,  <41.939411, 32.206535, 24.282337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.112949, 32.366779, 24.324839>,  <42.402176, 32.633854, 24.395676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112949, 32.366779, 24.324839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674853, 0.628073, 0.387426,
		-0.147453, 0.399647, -0.904732,
		-0.723071, -0.667688, -0.177091,
		41.896027, 32.166473, 24.271711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892342, 32.984245, 24.070213>,  <42.402176, 32.633854, 24.395676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892342, 32.984245, 24.070213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709354, 32.659721, 24.215811>,  <41.599564, 32.465004, 24.303169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709354, 32.659721, 24.215811>,  <41.892342, 32.984245, 24.070213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709354, 32.659721, 24.215811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776038, 0.564111, 0.282034,
		-0.434151, -0.153451, -0.887674,
		-0.457468, -0.811314, 0.363994,
		41.572113, 32.416328, 24.325008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173851, 33.058662, 23.892359>,  <41.892342, 32.984245, 24.070213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173851, 33.058662, 23.892359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.178696, 32.796715, 24.194616>,  <41.181602, 32.639545, 24.375971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.178696, 32.796715, 24.194616>,  <41.173851, 33.058662, 23.892359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178696, 32.796715, 24.194616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844114, 0.398412, 0.358803,
		-0.536027, -0.642195, -0.547960,
		0.012108, -0.654869, 0.755646,
		41.182327, 32.600254, 24.421310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477909, 32.809086, 23.926670>,  <41.173851, 33.058662, 23.892359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477909, 32.809086, 23.926670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653118, 32.723518, 24.275925>,  <40.758244, 32.672176, 24.485477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653118, 32.723518, 24.275925>,  <40.477909, 32.809086, 23.926670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653118, 32.723518, 24.275925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863633, 0.169475, 0.474781,
		-0.249542, -0.962037, -0.110516,
		0.438027, -0.213923, 0.873138,
		40.784527, 32.659340, 24.537867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042992, 32.155853, 23.782263>,  <40.477909, 32.809086, 23.926670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042992, 32.155853, 23.782263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770599, 32.221088, 23.496698>,  <39.607162, 32.260231, 23.325359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.770599, 32.221088, 23.496698>,  <40.042992, 32.155853, 23.782263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770599, 32.221088, 23.496698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612337, -0.407863, -0.677267,
		-0.401633, -0.898359, 0.177881,
		-0.680981, 0.163089, -0.713910,
		39.566307, 32.270016, 23.282526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968491, 31.524092, 23.443438>,  <40.042992, 32.155853, 23.782263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968491, 31.524092, 23.443438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853550, 31.799696, 23.177298>,  <39.784584, 31.965059, 23.017614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853550, 31.799696, 23.177298>,  <39.968491, 31.524092, 23.443438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853550, 31.799696, 23.177298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521312, -0.470244, -0.712112,
		-0.803531, -0.551483, -0.224064,
		-0.287353, 0.689011, -0.665351,
		39.767345, 32.006401, 22.977692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660320, 31.197018, 22.972149>,  <39.968491, 31.524092, 23.443438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660320, 31.197018, 22.972149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720589, 31.535215, 22.767235>,  <39.756748, 31.738134, 22.644285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720589, 31.535215, 22.767235>,  <39.660320, 31.197018, 22.972149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720589, 31.535215, 22.767235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358573, -0.529653, -0.768695,
		-0.921261, -0.067871, -0.382976,
		0.150673, 0.845494, -0.512286,
		39.765789, 31.788864, 22.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502132, 31.028748, 22.278700>,  <39.660320, 31.197018, 22.972149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502132, 31.028748, 22.278700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737103, 31.351458, 22.253279>,  <39.878086, 31.545084, 22.238026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.737103, 31.351458, 22.253279>,  <39.502132, 31.028748, 22.278700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737103, 31.351458, 22.253279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481379, -0.411469, -0.773930,
		-0.650539, 0.424035, -0.630074,
		0.587430, 0.806776, -0.063555,
		39.913330, 31.593491, 22.234213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470772, 31.150671, 21.631830>,  <39.502132, 31.028748, 22.278700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470772, 31.150671, 21.631830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.795502, 31.340349, 21.768108>,  <39.990341, 31.454157, 21.849874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.795502, 31.340349, 21.768108>,  <39.470772, 31.150671, 21.631830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795502, 31.340349, 21.768108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536862, -0.376762, -0.754871,
		-0.229596, 0.795731, -0.560444,
		0.811828, 0.474196, 0.340695,
		40.039051, 31.482609, 21.870317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765137, 31.422153, 21.073313>,  <39.470772, 31.150671, 21.631830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765137, 31.422153, 21.073313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079231, 31.412207, 21.320789>,  <40.267689, 31.406239, 21.469276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079231, 31.412207, 21.320789>,  <39.765137, 31.422153, 21.073313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079231, 31.412207, 21.320789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499108, -0.565933, -0.656209,
		0.366456, 0.824076, -0.431982,
		0.785239, -0.024866, 0.618693,
		40.314804, 31.404747, 21.506397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379669, 31.476034, 20.658239>,  <39.765137, 31.422153, 21.073313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379669, 31.476034, 20.658239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506870, 31.344540, 21.013948>,  <40.583191, 31.265644, 21.227375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506870, 31.344540, 21.013948>,  <40.379669, 31.476034, 20.658239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506870, 31.344540, 21.013948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341187, -0.835444, -0.430842,
		0.884571, 0.440418, -0.153513,
		0.318002, -0.328734, 0.889274,
		40.602272, 31.245920, 21.280731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924599, 31.152779, 20.457279>,  <40.379669, 31.476034, 20.658239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924599, 31.152779, 20.457279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854752, 31.019714, 20.827974>,  <40.812843, 30.939875, 21.050392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854752, 31.019714, 20.827974>,  <40.924599, 31.152779, 20.457279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854752, 31.019714, 20.827974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285469, -0.917879, -0.275692,
		0.942345, 0.216414, 0.255245,
		-0.174621, -0.332662, 0.926738,
		40.802364, 30.919916, 21.105995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527039, 30.703009, 20.596281>,  <40.924599, 31.152779, 20.457279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527039, 30.703009, 20.596281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271847, 30.599733, 20.886473>,  <41.118732, 30.537767, 21.060587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271847, 30.599733, 20.886473>,  <41.527039, 30.703009, 20.596281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271847, 30.599733, 20.886473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335006, -0.941349, -0.040416,
		0.693364, 0.217255, 0.687057,
		-0.637980, -0.258191, 0.725479,
		41.080452, 30.522276, 21.104116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906223, 30.316483, 21.061106>,  <41.527039, 30.703009, 20.596281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906223, 30.316483, 21.061106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531544, 30.219250, 21.161915>,  <41.306736, 30.160910, 21.222401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531544, 30.219250, 21.161915>,  <41.906223, 30.316483, 21.061106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531544, 30.219250, 21.161915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271530, -0.958713, 0.084505,
		0.221074, 0.147587, 0.964025,
		-0.936695, -0.243080, 0.252021,
		41.250534, 30.146326, 21.237520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883110, 30.098625, 21.766582>,  <41.906223, 30.316483, 21.061106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883110, 30.098625, 21.766582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563572, 29.938951, 21.586580>,  <41.371849, 29.843147, 21.478579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563572, 29.938951, 21.586580>,  <41.883110, 30.098625, 21.766582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563572, 29.938951, 21.586580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395200, -0.912261, 0.107686,
		-0.453508, -0.091817, 0.886510,
		-0.798841, -0.399186, -0.450004,
		41.323921, 29.819195, 21.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675751, 29.551825, 22.192894>,  <41.883110, 30.098625, 21.766582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675751, 29.551825, 22.192894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.525162, 29.459518, 21.834003>,  <41.434807, 29.404135, 21.618670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.525162, 29.459518, 21.834003>,  <41.675751, 29.551825, 22.192894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525162, 29.459518, 21.834003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516169, -0.856479, 0.003702,
		-0.769308, -0.461725, 0.441560,
		-0.376477, -0.230767, -0.897224,
		41.412220, 29.390287, 21.564837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249298, 29.553677, 22.499676>,  <41.675751, 29.551825, 22.192894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249298, 29.553677, 22.499676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005714, 29.248075, 22.414389>,  <41.859562, 29.064714, 22.363216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.005714, 29.248075, 22.414389>,  <42.249298, 29.553677, 22.499676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005714, 29.248075, 22.414389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296156, -0.030371, 0.954657,
		-0.735837, 0.644497, -0.207770,
		-0.608963, -0.764004, -0.213219,
		41.823025, 29.018875, 22.350422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842644, 29.639271, 23.092081>,  <42.249298, 29.553677, 22.499676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842644, 29.639271, 23.092081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.779530, 29.287949, 22.911558>,  <41.741661, 29.077154, 22.803244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.779530, 29.287949, 22.911558>,  <41.842644, 29.639271, 23.092081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779530, 29.287949, 22.911558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529828, -0.310376, 0.789271,
		-0.833298, 0.363652, -0.416379,
		-0.157786, -0.878308, -0.451309,
		41.732193, 29.024456, 22.776165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225605, 29.628139, 23.064674>,  <41.842644, 29.639271, 23.092081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225605, 29.628139, 23.064674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.322178, 29.241053, 23.035740>,  <41.380123, 29.008801, 23.018379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.322178, 29.241053, 23.035740>,  <41.225605, 29.628139, 23.064674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322178, 29.241053, 23.035740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655942, -0.217673, 0.722744,
		-0.715158, -0.127046, -0.687320,
		0.241433, -0.967718, -0.072335,
		41.394608, 28.950737, 23.014040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593910, 29.211317, 23.038235>,  <41.225605, 29.628139, 23.064674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593910, 29.211317, 23.038235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.888088, 28.959850, 23.139345>,  <41.064594, 28.808969, 23.200012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.888088, 28.959850, 23.139345>,  <40.593910, 29.211317, 23.038235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888088, 28.959850, 23.139345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585848, -0.402534, 0.703383,
		-0.340438, -0.665394, -0.664344,
		0.735448, -0.628663, 0.252782,
		41.108723, 28.771250, 23.215179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293503, 28.584167, 23.070547>,  <40.593910, 29.211317, 23.038235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293503, 28.584167, 23.070547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.610439, 28.551188, 23.312340>,  <40.800602, 28.531399, 23.457417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.610439, 28.551188, 23.312340>,  <40.293503, 28.584167, 23.070547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610439, 28.551188, 23.312340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567136, -0.464709, 0.680001,
		0.224843, -0.881616, -0.414968,
		0.792340, -0.082450, 0.604483,
		40.848141, 28.526453, 23.493685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171230, 27.962204, 23.436487>,  <40.293503, 28.584167, 23.070547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171230, 27.962204, 23.436487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437721, 28.178408, 23.642006>,  <40.597618, 28.308130, 23.765318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.437721, 28.178408, 23.642006>,  <40.171230, 27.962204, 23.436487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437721, 28.178408, 23.642006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451287, -0.256288, 0.854784,
		0.593698, -0.801354, 0.073177,
		0.666231, 0.540508, 0.513798,
		40.637592, 28.340559, 23.796144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305408, 27.525990, 24.078140>,  <40.171230, 27.962204, 23.436487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305408, 27.525990, 24.078140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402054, 27.908190, 24.145840>,  <40.460041, 28.137510, 24.186459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402054, 27.908190, 24.145840>,  <40.305408, 27.525990, 24.078140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402054, 27.908190, 24.145840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458221, -0.041402, 0.887873,
		0.855370, -0.292072, 0.427827,
		0.241610, 0.955500, 0.169247,
		40.474537, 28.194839, 24.196613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469910, 27.461931, 24.752296>,  <40.305408, 27.525990, 24.078140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469910, 27.461931, 24.752296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397511, 27.849030, 24.682201>,  <40.354069, 28.081289, 24.640144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.397511, 27.849030, 24.682201>,  <40.469910, 27.461931, 24.752296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397511, 27.849030, 24.682201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576559, 0.039938, 0.816079,
		0.796755, 0.248745, 0.550734,
		-0.181000, 0.967745, -0.175236,
		40.343212, 28.139353, 24.629631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506252, 27.753830, 25.372572>,  <40.469910, 27.461931, 24.752296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506252, 27.753830, 25.372572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286163, 28.015436, 25.164911>,  <40.154110, 28.172400, 25.040316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286163, 28.015436, 25.164911>,  <40.506252, 27.753830, 25.372572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286163, 28.015436, 25.164911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494561, 0.245701, 0.833691,
		0.672804, 0.715467, 0.188262,
		-0.550222, 0.654017, -0.519151,
		40.121098, 28.211641, 25.009167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878811, 27.799002, 25.963211>,  <40.506252, 27.753830, 25.372572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878811, 27.799002, 25.963211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972492, 27.462776, 26.158600>,  <41.028702, 27.261042, 26.275833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.972492, 27.462776, 26.158600>,  <40.878811, 27.799002, 25.963211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972492, 27.462776, 26.158600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584606, -0.279687, -0.761585,
		0.776778, 0.463929, 0.425894,
		0.234204, -0.840562, 0.488470,
		41.042755, 27.210608, 26.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550987, 27.695671, 25.759499>,  <40.878811, 27.799002, 25.963211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550987, 27.695671, 25.759499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460182, 27.334908, 25.906483>,  <41.405701, 27.118450, 25.994673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460182, 27.334908, 25.906483>,  <41.550987, 27.695671, 25.759499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460182, 27.334908, 25.906483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642357, -0.422264, -0.639587,
		0.732014, 0.090847, 0.675206,
		-0.227010, -0.901909, 0.367459,
		41.392078, 27.064335, 26.016720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197571, 27.362644, 25.890234>,  <41.550987, 27.695671, 25.759499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197571, 27.362644, 25.890234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.925400, 27.076414, 25.827034>,  <41.762096, 26.904676, 25.789114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.925400, 27.076414, 25.827034>,  <42.197571, 27.362644, 25.890234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925400, 27.076414, 25.827034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639439, -0.474450, -0.604991,
		0.357954, -0.512686, 0.780398,
		-0.680431, -0.715576, -0.158000,
		41.721272, 26.861742, 25.779634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587166, 26.663027, 25.939318>,  <42.197571, 27.362644, 25.890234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587166, 26.663027, 25.939318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239307, 26.616674, 25.747364>,  <42.030594, 26.588863, 25.632193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.239307, 26.616674, 25.747364>,  <42.587166, 26.663027, 25.939318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239307, 26.616674, 25.747364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484886, -0.383124, -0.786194,
		-0.092751, -0.916399, 0.389371,
		-0.869645, -0.115881, -0.479884,
		41.978413, 26.581911, 25.603399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411503, 25.918312, 25.706596>,  <42.587166, 26.663027, 25.939318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411503, 25.918312, 25.706596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220966, 26.175720, 25.466936>,  <42.106644, 26.330166, 25.323139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220966, 26.175720, 25.466936>,  <42.411503, 25.918312, 25.706596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220966, 26.175720, 25.466936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448418, -0.408349, -0.795093,
		-0.756322, -0.647404, -0.094054,
		-0.476339, 0.643521, -0.599150,
		42.078064, 26.368776, 25.287191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436684, 25.525705, 25.087261>,  <42.411503, 25.918312, 25.706596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436684, 25.525705, 25.087261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.294533, 25.885750, 24.986464>,  <42.209240, 26.101776, 24.925985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.294533, 25.885750, 24.986464>,  <42.436684, 25.525705, 25.087261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294533, 25.885750, 24.986464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229666, -0.177245, -0.956994,
		-0.906068, -0.397971, -0.143736,
		-0.355380, 0.900113, -0.251996,
		42.187920, 26.155783, 24.910864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050999, 25.394249, 24.455099>,  <42.436684, 25.525705, 25.087261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050999, 25.394249, 24.455099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.174019, 25.773722, 24.484541>,  <42.247829, 26.001406, 24.502207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.174019, 25.773722, 24.484541>,  <42.050999, 25.394249, 24.455099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174019, 25.773722, 24.484541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352163, -0.041622, -0.935013,
		-0.883964, 0.313486, -0.346891,
		0.307552, 0.948680, 0.073606,
		42.266285, 26.058327, 24.506622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900135, 25.715132, 23.813604>,  <42.050999, 25.394249, 24.455099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900135, 25.715132, 23.813604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.166687, 25.966002, 23.974892>,  <42.326618, 26.116524, 24.071665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.166687, 25.966002, 23.974892>,  <41.900135, 25.715132, 23.813604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166687, 25.966002, 23.974892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436787, 0.109918, -0.892824,
		-0.604277, 0.771084, -0.200694,
		0.666383, 0.627174, 0.403220,
		42.366604, 26.154154, 24.095858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996201, 26.312511, 23.396248>,  <41.900135, 25.715132, 23.813604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996201, 26.312511, 23.396248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.321693, 26.217062, 23.608246>,  <42.516991, 26.159792, 23.735445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.321693, 26.217062, 23.608246>,  <41.996201, 26.312511, 23.396248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321693, 26.217062, 23.608246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540865, -0.023034, -0.840794,
		0.212840, 0.970839, 0.110318,
		0.813735, -0.238622, 0.529996,
		42.565815, 26.145475, 23.767244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.702667, 33.842884, 34.266926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403881, 33.644974, 34.444572>,  <34.224609, 33.526226, 34.551159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403881, 33.644974, 34.444572>,  <34.702667, 33.842884, 34.266926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403881, 33.644974, 34.444572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664461, -0.532264, 0.524582,
		-0.023165, 0.686942, 0.726343,
		-0.746964, -0.494779, 0.444116,
		34.179790, 33.496540, 34.577808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921329, 34.076653, 33.705616>,  <34.702667, 33.842884, 34.266926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921329, 34.076653, 33.705616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159557, 34.128574, 34.022717>,  <35.302494, 34.159729, 34.212975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159557, 34.128574, 34.022717>,  <34.921329, 34.076653, 33.705616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159557, 34.128574, 34.022717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457164, -0.866229, -0.201614,
		0.660532, 0.482491, -0.575239,
		0.595566, 0.129806, 0.792750,
		35.338226, 34.167515, 34.260540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708916, 33.974480, 33.523201>,  <34.921329, 34.076653, 33.705616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708916, 33.974480, 33.523201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646961, 33.880630, 33.907066>,  <35.609787, 33.824322, 34.137386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646961, 33.880630, 33.907066>,  <35.708916, 33.974480, 33.523201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646961, 33.880630, 33.907066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414488, -0.897195, -0.152453,
		0.896777, 0.374157, 0.236214,
		-0.154889, -0.234624, 0.959667,
		35.600494, 33.810242, 34.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225655, 33.887051, 33.766937>,  <35.708916, 33.974480, 33.523201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225655, 33.887051, 33.766937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002190, 33.683109, 34.028610>,  <35.868111, 33.560745, 34.185616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002190, 33.683109, 34.028610>,  <36.225655, 33.887051, 33.766937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002190, 33.683109, 34.028610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389350, -0.857648, -0.335926,
		0.732330, 0.067038, 0.677642,
		-0.558658, -0.509849, 0.654182,
		35.834591, 33.530155, 34.224865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656307, 33.382080, 34.034050>,  <36.225655, 33.887051, 33.766937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656307, 33.382080, 34.034050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288185, 33.246990, 34.113029>,  <36.067314, 33.165936, 34.160416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288185, 33.246990, 34.113029>,  <36.656307, 33.382080, 34.034050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288185, 33.246990, 34.113029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159465, -0.784725, -0.598981,
		0.357234, -0.519757, 0.776039,
		-0.920301, -0.337728, 0.197447,
		36.012096, 33.145672, 34.172264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715328, 32.754055, 34.403038>,  <36.656307, 33.382080, 34.034050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715328, 32.754055, 34.403038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336903, 32.732094, 34.275326>,  <36.109848, 32.718918, 34.198696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.336903, 32.732094, 34.275326>,  <36.715328, 32.754055, 34.403038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336903, 32.732094, 34.275326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176432, -0.913881, -0.365641,
		-0.271713, -0.402253, 0.874280,
		-0.946068, -0.054902, -0.319283,
		36.053082, 32.715622, 34.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343590, 32.216457, 34.766357>,  <36.715328, 32.754055, 34.403038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343590, 32.216457, 34.766357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170162, 32.273453, 34.410442>,  <36.066105, 32.307648, 34.196896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170162, 32.273453, 34.410442>,  <36.343590, 32.216457, 34.766357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170162, 32.273453, 34.410442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363585, -0.875816, -0.317414,
		-0.824515, -0.461133, 0.327920,
		-0.433568, 0.142486, -0.889785,
		36.040092, 32.316200, 34.143505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953003, 31.584871, 34.663609>,  <36.343590, 32.216457, 34.766357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953003, 31.584871, 34.663609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994881, 31.738615, 34.296719>,  <36.020008, 31.830860, 34.076584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994881, 31.738615, 34.296719>,  <35.953003, 31.584871, 34.663609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994881, 31.738615, 34.296719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242954, -0.904237, -0.351182,
		-0.964372, -0.186078, -0.188048,
		0.104693, 0.384357, -0.917229,
		36.026287, 31.853922, 34.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598961, 31.090948, 34.170620>,  <35.953003, 31.584871, 34.663609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598961, 31.090948, 34.170620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822533, 31.326824, 33.937431>,  <35.956676, 31.468349, 33.797516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822533, 31.326824, 33.937431>,  <35.598961, 31.090948, 34.170620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822533, 31.326824, 33.937431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150069, -0.763370, -0.628287,
		-0.815521, 0.263682, -0.515166,
		0.558931, 0.589692, -0.582974,
		35.990211, 31.503733, 33.762539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376675, 30.925877, 33.430122>,  <35.598961, 31.090948, 34.170620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376675, 30.925877, 33.430122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732937, 31.103830, 33.392578>,  <35.946693, 31.210602, 33.370052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732937, 31.103830, 33.392578>,  <35.376675, 30.925877, 33.430122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732937, 31.103830, 33.392578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210179, -0.585900, -0.782653,
		-0.403183, 0.677348, -0.615340,
		0.890656, 0.444884, -0.093861,
		36.000134, 31.237295, 33.364418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409241, 31.068138, 32.747780>,  <35.376675, 30.925877, 33.430122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409241, 31.068138, 32.747780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782471, 31.042839, 32.889412>,  <36.006409, 31.027660, 32.974392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782471, 31.042839, 32.889412>,  <35.409241, 31.068138, 32.747780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782471, 31.042839, 32.889412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229868, -0.652306, -0.722259,
		0.276651, 0.755312, -0.594110,
		0.933073, -0.063247, 0.354083,
		36.062393, 31.023865, 32.995636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787567, 31.110146, 32.203632>,  <35.409241, 31.068138, 32.747780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787567, 31.110146, 32.203632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042698, 30.951859, 32.467930>,  <36.195778, 30.856886, 32.626507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042698, 30.951859, 32.467930>,  <35.787567, 31.110146, 32.203632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042698, 30.951859, 32.467930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364180, -0.600980, -0.711475,
		0.678638, 0.694428, -0.239209,
		0.637827, -0.395718, 0.660744,
		36.234047, 30.833143, 32.666153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590858, 31.484303, 31.605747>,  <35.787567, 31.110146, 32.203632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590858, 31.484303, 31.605747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246281, 31.373917, 31.435213>,  <35.039536, 31.307686, 31.332893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.246281, 31.373917, 31.435213>,  <35.590858, 31.484303, 31.605747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246281, 31.373917, 31.435213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500979, 0.599437, 0.624256,
		0.083289, 0.751345, -0.654632,
		-0.861442, -0.275964, -0.426335,
		34.987846, 31.291128, 31.307312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221134, 32.083347, 31.526018>,  <35.590858, 31.484303, 31.605747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221134, 32.083347, 31.526018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938507, 31.804586, 31.476894>,  <34.768929, 31.637329, 31.447420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938507, 31.804586, 31.476894>,  <35.221134, 32.083347, 31.526018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938507, 31.804586, 31.476894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658533, 0.584034, 0.474594,
		-0.259020, 0.416209, -0.871595,
		-0.706571, -0.696904, -0.122811,
		34.726536, 31.595516, 31.440052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668896, 32.360535, 31.046328>,  <35.221134, 32.083347, 31.526018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668896, 32.360535, 31.046328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500313, 32.094925, 31.293373>,  <34.399162, 31.935558, 31.441601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500313, 32.094925, 31.293373>,  <34.668896, 32.360535, 31.046328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500313, 32.094925, 31.293373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703386, 0.669231, 0.239537,
		-0.572385, -0.333466, -0.749117,
		-0.421455, -0.664026, 0.617613,
		34.373875, 31.895718, 31.478657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031391, 32.631989, 31.057369>,  <34.668896, 32.360535, 31.046328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031391, 32.631989, 31.057369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043179, 32.371181, 31.360420>,  <34.050251, 32.214695, 31.542252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043179, 32.371181, 31.360420>,  <34.031391, 32.631989, 31.057369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043179, 32.371181, 31.360420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706805, 0.522361, 0.477038,
		-0.706794, -0.549552, -0.445460,
		0.029466, -0.652021, 0.757628,
		34.052017, 32.175575, 31.587709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338196, 32.466572, 31.331490>,  <34.031391, 32.631989, 31.057369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338196, 32.466572, 31.331490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575455, 32.378613, 31.641281>,  <33.717812, 32.325836, 31.827156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575455, 32.378613, 31.641281>,  <33.338196, 32.466572, 31.331490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575455, 32.378613, 31.641281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576050, 0.556121, 0.599079,
		-0.562442, -0.801482, 0.203189,
		0.593149, -0.219901, 0.774479,
		33.753399, 32.312641, 31.873625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855061, 32.107269, 31.898773>,  <33.338196, 32.466572, 31.331490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855061, 32.107269, 31.898773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197990, 32.255234, 32.041969>,  <33.403748, 32.344013, 32.127888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197990, 32.255234, 32.041969>,  <32.855061, 32.107269, 31.898773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197990, 32.255234, 32.041969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514177, 0.581888, 0.630102,
		0.024771, -0.724274, 0.689067,
		0.857327, 0.369911, 0.357991,
		33.455189, 32.366207, 32.149368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657192, 32.193954, 32.601250>,  <32.855061, 32.107269, 31.898773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657192, 32.193954, 32.601250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993038, 32.409370, 32.572899>,  <33.194546, 32.538620, 32.555889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993038, 32.409370, 32.572899>,  <32.657192, 32.193954, 32.601250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993038, 32.409370, 32.572899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310974, 0.583549, 0.750177,
		0.445361, -0.607817, 0.657428,
		0.839612, 0.538543, -0.070874,
		33.244923, 32.570934, 32.551636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731571, 32.393093, 33.260323>,  <32.657192, 32.193954, 32.601250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731571, 32.393093, 33.260323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909958, 32.677368, 33.042686>,  <33.016991, 32.847935, 32.912106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909958, 32.677368, 33.042686>,  <32.731571, 32.393093, 33.260323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909958, 32.677368, 33.042686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369637, 0.699870, 0.611188,
		0.815157, -0.071454, 0.574816,
		0.445969, 0.710687, -0.544091,
		33.043751, 32.890575, 32.879459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986534, 32.886593, 33.701096>,  <32.731571, 32.393093, 33.260323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986534, 32.886593, 33.701096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994255, 33.097958, 33.361588>,  <32.998886, 33.224777, 33.157883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994255, 33.097958, 33.361588>,  <32.986534, 32.886593, 33.701096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994255, 33.097958, 33.361588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214218, 0.831397, 0.512727,
		0.976595, 0.171925, 0.129243,
		0.019302, 0.528413, -0.848768,
		33.000046, 33.256481, 33.106956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210464, 33.521301, 33.897663>,  <32.986534, 32.886593, 33.701096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210464, 33.521301, 33.897663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053905, 33.589741, 33.535995>,  <32.959969, 33.630806, 33.318993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053905, 33.589741, 33.535995>,  <33.210464, 33.521301, 33.897663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053905, 33.589741, 33.535995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333319, 0.889479, 0.312610,
		0.857732, 0.423734, -0.291110,
		-0.391400, 0.171103, -0.904174,
		32.936485, 33.641071, 33.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321655, 34.249580, 33.828560>,  <33.210464, 33.521301, 33.897663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321655, 34.249580, 33.828560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055309, 34.166428, 33.541950>,  <32.895500, 34.116535, 33.369984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055309, 34.166428, 33.541950>,  <33.321655, 34.249580, 33.828560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055309, 34.166428, 33.541950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402757, 0.908591, 0.110676,
		0.628021, 0.362281, -0.688725,
		-0.665865, -0.207882, -0.716526,
		32.855549, 34.104065, 33.326992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318935, 34.803150, 33.304825>,  <33.321655, 34.249580, 33.828560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318935, 34.803150, 33.304825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954926, 34.642239, 33.264751>,  <32.736519, 34.545692, 33.240707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.954926, 34.642239, 33.264751>,  <33.318935, 34.803150, 33.304825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954926, 34.642239, 33.264751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414362, 0.890134, 0.189644,
		0.012891, 0.214094, -0.976728,
		-0.910021, -0.402274, -0.100187,
		32.681919, 34.521557, 33.234695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966263, 35.205368, 32.807995>,  <33.318935, 34.803150, 33.304825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966263, 35.205368, 32.807995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655285, 35.066895, 33.018036>,  <32.468697, 34.983810, 33.144062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.655285, 35.066895, 33.018036>,  <32.966263, 35.205368, 32.807995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655285, 35.066895, 33.018036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455462, 0.885647, -0.090465,
		-0.433740, -0.309497, -0.846216,
		-0.777447, -0.346180, 0.525105,
		32.422050, 34.963039, 33.175568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337406, 35.485676, 32.516808>,  <32.966263, 35.205368, 32.807995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337406, 35.485676, 32.516808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280048, 35.399441, 32.903168>,  <32.245632, 35.347698, 33.134983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280048, 35.399441, 32.903168>,  <32.337406, 35.485676, 32.516808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280048, 35.399441, 32.903168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430515, 0.892390, 0.135267,
		-0.891119, -0.396437, -0.220782,
		-0.143399, -0.215589, 0.965898,
		32.237030, 35.334763, 33.192936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910393, 35.630653, 32.132248>,  <32.337406, 35.485676, 32.516808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910393, 35.630653, 32.132248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289604, 35.740589, 32.068111>,  <33.517132, 35.806549, 32.029629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289604, 35.740589, 32.068111>,  <32.910393, 35.630653, 32.132248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289604, 35.740589, 32.068111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032458, -0.584821, -0.810513,
		-0.316530, 0.763184, -0.563347,
		0.948027, 0.274836, -0.160342,
		33.574013, 35.823040, 32.020008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091793, 35.669403, 31.439854>,  <32.910393, 35.630653, 32.132248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091793, 35.669403, 31.439854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474869, 35.711510, 31.546995>,  <33.704716, 35.736774, 31.611280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474869, 35.711510, 31.546995>,  <33.091793, 35.669403, 31.439854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474869, 35.711510, 31.546995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287579, -0.314223, -0.904744,
		-0.011070, 0.943495, -0.331201,
		0.957693, 0.105262, 0.267852,
		33.762177, 35.743088, 31.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376049, 35.963959, 30.917397>,  <33.091793, 35.669403, 31.439854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376049, 35.963959, 30.917397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677723, 35.797291, 31.120409>,  <33.858727, 35.697289, 31.242216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.677723, 35.797291, 31.120409>,  <33.376049, 35.963959, 30.917397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677723, 35.797291, 31.120409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430109, -0.270579, -0.861274,
		0.496199, 0.867853, -0.024851,
		0.754184, -0.416674, 0.507533,
		33.903976, 35.672287, 31.272669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983315, 36.194115, 30.522078>,  <33.376049, 35.963959, 30.917397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983315, 36.194115, 30.522078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087387, 35.878040, 30.744036>,  <34.149830, 35.688396, 30.877211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087387, 35.878040, 30.744036>,  <33.983315, 36.194115, 30.522078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087387, 35.878040, 30.744036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596768, -0.320179, -0.735767,
		0.759059, 0.522579, 0.388253,
		0.260186, -0.790187, 0.554894,
		34.165443, 35.640984, 30.910503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682732, 36.160007, 30.336668>,  <33.983315, 36.194115, 30.522078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682732, 36.160007, 30.336668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587601, 35.805016, 30.494562>,  <34.530521, 35.592022, 30.589298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587601, 35.805016, 30.494562>,  <34.682732, 36.160007, 30.336668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587601, 35.805016, 30.494562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545403, -0.458299, -0.701782,
		0.803725, 0.048388, 0.593030,
		-0.237828, -0.887480, 0.394737,
		34.516251, 35.538773, 30.612984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245747, 35.725784, 30.279150>,  <34.682732, 36.160007, 30.336668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245747, 35.725784, 30.279150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983921, 35.435608, 30.364277>,  <34.826828, 35.261501, 30.415352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983921, 35.435608, 30.364277>,  <35.245747, 35.725784, 30.279150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983921, 35.435608, 30.364277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468151, -0.609971, -0.639351,
		0.593621, -0.318864, 0.738877,
		-0.654560, -0.725439, 0.212816,
		34.787552, 35.217976, 30.428122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578606, 35.180687, 30.593822>,  <35.245747, 35.725784, 30.279150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578606, 35.180687, 30.593822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252285, 35.033257, 30.415554>,  <35.056492, 34.944798, 30.308592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252285, 35.033257, 30.415554>,  <35.578606, 35.180687, 30.593822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252285, 35.033257, 30.415554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576714, -0.460762, -0.674610,
		0.043297, -0.807371, 0.588453,
		-0.815798, -0.368578, -0.445673,
		35.007545, 34.922684, 30.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815639, 34.578171, 30.441710>,  <35.578606, 35.180687, 30.593822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815639, 34.578171, 30.441710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484650, 34.570892, 30.217228>,  <35.286057, 34.566525, 30.082539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484650, 34.570892, 30.217228>,  <35.815639, 34.578171, 30.441710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484650, 34.570892, 30.217228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496891, -0.489195, -0.716790,
		-0.261493, -0.871985, 0.413841,
		-0.827479, -0.018199, -0.561203,
		35.236404, 34.565434, 30.048866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892353, 33.895344, 30.191906>,  <35.815639, 34.578171, 30.441710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892353, 33.895344, 30.191906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638664, 34.085350, 29.947897>,  <35.486450, 34.199352, 29.801493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638664, 34.085350, 29.947897>,  <35.892353, 33.895344, 30.191906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638664, 34.085350, 29.947897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308642, -0.567859, -0.763070,
		-0.708874, -0.672234, 0.213540,
		-0.634222, 0.475013, -0.610020,
		35.448399, 34.227856, 29.764891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392136, 33.398922, 29.759054>,  <35.892353, 33.895344, 30.191906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392136, 33.398922, 29.759054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404499, 33.746780, 29.561974>,  <35.411915, 33.955498, 29.443726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404499, 33.746780, 29.561974>,  <35.392136, 33.398922, 29.759054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404499, 33.746780, 29.561974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324647, -0.474943, -0.817945,
		-0.945330, -0.134673, -0.297009,
		0.030907, 0.869650, -0.492700,
		35.413773, 34.007675, 29.414164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194469, 33.206722, 29.184071>,  <35.392136, 33.398922, 29.759054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194469, 33.206722, 29.184071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339382, 33.567844, 29.091379>,  <35.426331, 33.784515, 29.035765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339382, 33.567844, 29.091379>,  <35.194469, 33.206722, 29.184071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339382, 33.567844, 29.091379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252527, -0.334394, -0.907971,
		-0.897206, 0.270427, -0.349128,
		0.362286, 0.902801, -0.231730,
		35.448067, 33.838684, 29.021860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810329, 33.487602, 28.563524>,  <35.194469, 33.206722, 29.184071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810329, 33.487602, 28.563524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170929, 33.658279, 28.592442>,  <35.387291, 33.760685, 28.609793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170929, 33.658279, 28.592442>,  <34.810329, 33.487602, 28.563524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170929, 33.658279, 28.592442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170505, -0.196644, -0.965536,
		-0.397773, 0.882759, -0.250028,
		0.901502, 0.426695, 0.072295,
		35.441380, 33.786289, 28.614130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892132, 33.917271, 27.915545>,  <34.810329, 33.487602, 28.563524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892132, 33.917271, 27.915545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268684, 33.868355, 28.041298>,  <35.494617, 33.839005, 28.116751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268684, 33.868355, 28.041298>,  <34.892132, 33.917271, 27.915545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268684, 33.868355, 28.041298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305128, -0.088701, -0.948171,
		0.143841, 0.988522, -0.046187,
		0.941385, -0.122293, 0.314385,
		35.551102, 33.831665, 28.135614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265205, 34.276131, 27.447666>,  <34.892132, 33.917271, 27.915545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265205, 34.276131, 27.447666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516926, 34.023525, 27.628851>,  <35.667957, 33.871964, 27.737562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516926, 34.023525, 27.628851>,  <35.265205, 34.276131, 27.447666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516926, 34.023525, 27.628851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551387, -0.047930, -0.832872,
		0.547677, 0.773885, 0.318044,
		0.629303, -0.631510, 0.452960,
		35.705715, 33.834072, 27.764740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918301, 34.466457, 27.288057>,  <35.265205, 34.276131, 27.447666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918301, 34.466457, 27.288057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968208, 34.080799, 27.381748>,  <35.998154, 33.849403, 27.437963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968208, 34.080799, 27.381748>,  <35.918301, 34.466457, 27.288057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968208, 34.080799, 27.381748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634365, -0.104000, -0.766006,
		0.762898, 0.244160, 0.598642,
		0.124770, -0.964142, 0.234228,
		36.005638, 33.791557, 27.452017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582943, 34.370983, 27.077253>,  <35.918301, 34.466457, 27.288057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582943, 34.370983, 27.077253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446987, 33.994797, 27.077917>,  <36.365414, 33.769085, 27.078316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446987, 33.994797, 27.077917>,  <36.582943, 34.370983, 27.077253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446987, 33.994797, 27.077917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624447, -0.226996, -0.747354,
		0.703237, -0.252980, 0.664424,
		-0.339887, -0.940465, 0.001659,
		36.345020, 33.712658, 27.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225155, 33.886105, 27.029745>,  <36.582943, 34.370983, 27.077253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225155, 33.886105, 27.029745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901417, 33.682018, 26.913378>,  <36.707172, 33.559566, 26.843557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901417, 33.682018, 26.913378>,  <37.225155, 33.886105, 27.029745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901417, 33.682018, 26.913378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504349, -0.349928, -0.789419,
		0.300975, -0.785639, 0.540542,
		-0.809349, -0.510217, -0.290917,
		36.658611, 33.528954, 26.826103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533138, 33.278999, 26.784189>,  <37.225155, 33.886105, 27.029745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533138, 33.278999, 26.784189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181522, 33.273949, 26.593554>,  <36.970554, 33.270920, 26.479172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181522, 33.273949, 26.593554>,  <37.533138, 33.278999, 26.784189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181522, 33.273949, 26.593554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419408, -0.495811, -0.760439,
		-0.226697, -0.868339, 0.441131,
		-0.879037, -0.012625, -0.476587,
		36.917812, 33.270161, 26.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448627, 32.608788, 26.504280>,  <37.533138, 33.278999, 26.784189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448627, 32.608788, 26.504280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197857, 32.831928, 26.286743>,  <37.047394, 32.965813, 26.156221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197857, 32.831928, 26.286743>,  <37.448627, 32.608788, 26.504280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197857, 32.831928, 26.286743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435176, -0.328255, -0.838374,
		-0.646206, -0.762267, -0.036971,
		-0.626929, 0.557850, -0.543840,
		37.009777, 32.999283, 26.123590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298912, 32.201096, 26.062593>,  <37.448627, 32.608788, 26.504280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298912, 32.201096, 26.062593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168083, 32.537724, 25.890652>,  <37.089584, 32.739700, 25.787487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168083, 32.537724, 25.890652>,  <37.298912, 32.201096, 26.062593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168083, 32.537724, 25.890652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385112, -0.296686, -0.873880,
		-0.862966, -0.451367, -0.227062,
		-0.327074, 0.841573, -0.429857,
		37.069962, 32.790195, 25.761694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006802, 31.976633, 25.353783>,  <37.298912, 32.201096, 26.062593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006802, 31.976633, 25.353783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087132, 32.367779, 25.330288>,  <37.135330, 32.602467, 25.316191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087132, 32.367779, 25.330288>,  <37.006802, 31.976633, 25.353783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087132, 32.367779, 25.330288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409259, -0.138222, -0.901888,
		-0.890043, 0.157084, -0.427959,
		0.200826, 0.977865, -0.058736,
		37.147381, 32.661137, 25.312668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828255, 32.178040, 24.658045>,  <37.006802, 31.976633, 25.353783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828255, 32.178040, 24.658045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081375, 32.452648, 24.801292>,  <37.233246, 32.617413, 24.887241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081375, 32.452648, 24.801292>,  <36.828255, 32.178040, 24.658045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081375, 32.452648, 24.801292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539888, -0.059656, -0.839620,
		-0.555056, 0.724655, -0.408396,
		0.632798, 0.686525, 0.358120,
		37.271214, 32.658607, 24.908728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975086, 32.600914, 24.020073>,  <36.828255, 32.178040, 24.658045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975086, 32.600914, 24.020073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254051, 32.724857, 24.278563>,  <37.421429, 32.799225, 24.433657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.254051, 32.724857, 24.278563>,  <36.975086, 32.600914, 24.020073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254051, 32.724857, 24.278563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676141, 0.014457, -0.736630,
		-0.237594, 0.950673, -0.199426,
		0.697411, 0.309859, 0.646224,
		37.463276, 32.817814, 24.472429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286594, 33.250134, 23.741350>,  <36.975086, 32.600914, 24.020073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286594, 33.250134, 23.741350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.537239, 33.055790, 23.985085>,  <37.687626, 32.939182, 24.131325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.537239, 33.055790, 23.985085>,  <37.286594, 33.250134, 23.741350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537239, 33.055790, 23.985085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718493, 0.057313, -0.693168,
		0.301861, 0.872155, 0.385001,
		0.626616, -0.485861, 0.609337,
		37.725224, 32.910030, 24.167885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901474, 33.568878, 23.480734>,  <37.286594, 33.250134, 23.741350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901474, 33.568878, 23.480734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008755, 33.246925, 23.692482>,  <38.073124, 33.053753, 23.819530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008755, 33.246925, 23.692482>,  <37.901474, 33.568878, 23.480734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008755, 33.246925, 23.692482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675705, -0.234499, -0.698880,
		0.686652, 0.545140, 0.480969,
		0.268201, -0.804881, 0.529373,
		38.089214, 33.005463, 23.851294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674980, 33.634090, 23.494057>,  <37.901474, 33.568878, 23.480734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674980, 33.634090, 23.494057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558086, 33.262135, 23.583418>,  <38.487949, 33.038960, 23.637033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558086, 33.262135, 23.583418>,  <38.674980, 33.634090, 23.494057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558086, 33.262135, 23.583418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790995, -0.366312, -0.490044,
		0.537521, 0.033504, 0.842584,
		-0.292230, -0.929889, 0.223401,
		38.470417, 32.983170, 23.650438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323345, 33.288727, 23.832785>,  <38.674980, 33.634090, 23.494057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323345, 33.288727, 23.832785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075260, 33.023499, 23.665131>,  <38.926407, 32.864361, 23.564539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075260, 33.023499, 23.665131>,  <39.323345, 33.288727, 23.832785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075260, 33.023499, 23.665131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762380, -0.383720, -0.521091,
		0.184688, -0.642729, 0.743498,
		-0.620215, -0.663068, -0.419135,
		38.889194, 32.824577, 23.539391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562969, 32.702461, 24.037184>,  <39.323345, 33.288727, 23.832785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562969, 32.702461, 24.037184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346649, 32.580833, 23.723478>,  <39.216858, 32.507858, 23.535255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346649, 32.580833, 23.723478>,  <39.562969, 32.702461, 24.037184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346649, 32.580833, 23.723478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744427, -0.607100, -0.277953,
		-0.391609, -0.734147, 0.554681,
		-0.540805, -0.304071, -0.784265,
		39.184406, 32.489613, 23.488199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796291, 32.337879, 24.716715>,  <39.562969, 32.702461, 24.037184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796291, 32.337879, 24.716715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118526, 32.427372, 24.936155>,  <40.311867, 32.481068, 25.067820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.118526, 32.427372, 24.936155>,  <39.796291, 32.337879, 24.716715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118526, 32.427372, 24.936155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581685, 0.474552, 0.660638,
		-0.112532, -0.851318, 0.512439,
		0.805592, 0.223735, 0.548601,
		40.360203, 32.494492, 25.100737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700699, 32.129246, 25.490955>,  <39.796291, 32.337879, 24.716715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700699, 32.129246, 25.490955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976360, 32.417763, 25.463257>,  <40.141758, 32.590874, 25.446638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976360, 32.417763, 25.463257>,  <39.700699, 32.129246, 25.490955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976360, 32.417763, 25.463257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429777, 0.483821, 0.762371,
		0.583399, -0.495631, 0.643425,
		0.689157, 0.721296, -0.069250,
		40.183109, 32.634151, 25.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796490, 32.365070, 26.118315>,  <39.700699, 32.129246, 25.490955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796490, 32.365070, 26.118315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005802, 32.649792, 25.930908>,  <40.131390, 32.820625, 25.818464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005802, 32.649792, 25.930908>,  <39.796490, 32.365070, 26.118315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005802, 32.649792, 25.930908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186657, 0.632191, 0.751994,
		0.831465, -0.306054, 0.463678,
		0.523283, 0.711805, -0.468517,
		40.162788, 32.863335, 25.790354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362442, 32.613373, 26.632845>,  <39.796490, 32.365070, 26.118315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362442, 32.613373, 26.632845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305428, 32.909229, 26.369753>,  <40.271217, 33.086742, 26.211897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.305428, 32.909229, 26.369753>,  <40.362442, 32.613373, 26.632845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305428, 32.909229, 26.369753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, 0.669088, 0.741465,
		0.988499, 0.072465, -0.132733,
		-0.142540, 0.739642, -0.657732,
		40.262665, 33.131123, 26.172434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745316, 33.113895, 26.971043>,  <40.362442, 32.613373, 26.632845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745316, 33.113895, 26.971043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.498695, 33.288464, 26.708927>,  <40.350723, 33.393204, 26.551657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.498695, 33.288464, 26.708927>,  <40.745316, 33.113895, 26.971043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498695, 33.288464, 26.708927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238434, 0.689725, 0.683688,
		0.750342, 0.577773, -0.321195,
		-0.616552, 0.436416, -0.655290,
		40.313728, 33.419388, 26.512341>
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
