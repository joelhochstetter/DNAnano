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
	<4.282657, 3.277756, -0.156343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624638, 3.099182, -0.050699>,  <4.829826, 2.992038, 0.012687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624638, 3.099182, -0.050699>,  <4.282657, 3.277756, -0.156343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624638, 3.099182, -0.050699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159823, 0.257676, 0.952922,
		-0.493471, -0.856913, 0.148950,
		0.854952, -0.446434, 0.264110,
		4.881123, 2.965252, 0.028534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.180049, 2.690121, 0.335485>,  <4.282657, 3.277756, -0.156343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.180049, 2.690121, 0.335485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527035, 2.865875, 0.428820>,  <4.735226, 2.971328, 0.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.527035, 2.865875, 0.428820>,  <4.180049, 2.690121, 0.335485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.527035, 2.865875, 0.428820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248573, -0.023485, 0.968328,
		0.430949, -0.897992, 0.088847,
		0.867464, 0.439385, 0.233338,
		4.787274, 2.997691, 0.498821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.662145, 2.287569, 0.869221>,  <4.180049, 2.690121, 0.335485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.662145, 2.287569, 0.869221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670849, 2.687263, 0.882215>,  <4.676071, 2.927080, 0.890012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670849, 2.687263, 0.882215>,  <4.662145, 2.287569, 0.869221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.670849, 2.687263, 0.882215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104424, -0.030045, 0.994079,
		0.994295, -0.025023, 0.103690,
		0.021760, 0.999235, 0.032487,
		4.677377, 2.987034, 0.891962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.011045, 2.514993, 1.518698>,  <4.662145, 2.287569, 0.869221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.011045, 2.514993, 1.518698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.766888, 2.808411, 1.399141>,  <4.620393, 2.984461, 1.327407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.766888, 2.808411, 1.399141>,  <5.011045, 2.514993, 1.518698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.766888, 2.808411, 1.399141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332546, 0.105160, 0.937206,
		0.718912, 0.671458, 0.179748,
		-0.610392, 0.733543, -0.298891,
		4.583770, 3.028474, 1.309474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.120162, 2.937948, 2.023348>,  <5.011045, 2.514993, 1.518698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.120162, 2.937948, 2.023348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775997, 3.049568, 1.852785>,  <4.569498, 3.116540, 1.750448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775997, 3.049568, 1.852785>,  <5.120162, 2.937948, 2.023348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.775997, 3.049568, 1.852785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407815, 0.124704, 0.904509,
		0.305578, 0.952145, 0.006505,
		-0.860412, 0.279051, -0.426406,
		4.517874, 3.133283, 1.724863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.910430, 3.396766, 2.466557>,  <5.120162, 2.937948, 2.023348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.910430, 3.396766, 2.466557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583828, 3.281372, 2.266520>,  <4.387866, 3.212135, 2.146497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.583828, 3.281372, 2.266520>,  <4.910430, 3.396766, 2.466557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.583828, 3.281372, 2.266520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506794, -0.056770, 0.860196,
		-0.276545, 0.955800, -0.099849,
		-0.816507, -0.288486, -0.500093,
		4.338876, 3.194826, 2.116492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.293605, 3.898354, 2.645057>,  <4.910430, 3.396766, 2.466557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.293605, 3.898354, 2.645057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.139572, 3.553902, 2.512293>,  <4.047152, 3.347230, 2.432634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.139572, 3.553902, 2.512293>,  <4.293605, 3.898354, 2.645057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.139572, 3.553902, 2.512293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428530, -0.151678, 0.890705,
		-0.817357, 0.485229, -0.310612,
		-0.385083, -0.861131, -0.331910,
		4.024047, 3.295562, 2.412720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.577562, 3.988166, 2.762466>,  <4.293605, 3.898354, 2.645057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.577562, 3.988166, 2.762466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655426, 3.595848, 2.757605>,  <3.702145, 3.360457, 2.754688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.655426, 3.595848, 2.757605>,  <3.577562, 3.988166, 2.762466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655426, 3.595848, 2.757605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498941, -0.109680, 0.859667,
		-0.844491, -0.161279, -0.510710,
		0.194661, -0.980795, -0.012154,
		3.713824, 3.301610, 2.753958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.041707, 2.713685, 4.003335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094200, 2.400177, 3.760525>,  <3.125696, 2.212072, 3.614838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094200, 2.400177, 3.760525>,  <3.041707, 2.713685, 4.003335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.094200, 2.400177, 3.760525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086302, 0.619030, -0.780612,
		0.987588, 0.050055, 0.148878,
		0.131234, -0.783771, -0.607026,
		3.133570, 2.165046, 3.578417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814765, 2.617660, 3.748204>,  <3.041707, 2.713685, 4.003335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814765, 2.617660, 3.748204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538513, 2.505554, 3.481525>,  <3.372762, 2.438291, 3.321518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538513, 2.505554, 3.481525>,  <3.814765, 2.617660, 3.748204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538513, 2.505554, 3.481525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301626, 0.726231, -0.617746,
		0.657305, -0.627727, -0.417023,
		-0.690631, -0.280263, -0.666694,
		3.331324, 2.421475, 3.281517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.095963, 2.234005, 3.220406>,  <3.814765, 2.617660, 3.748204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.095963, 2.234005, 3.220406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.769180, 2.430367, 3.099346>,  <3.573111, 2.548183, 3.026710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.769180, 2.430367, 3.099346>,  <4.095963, 2.234005, 3.220406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.769180, 2.430367, 3.099346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509738, 0.369223, -0.777073,
		-0.269723, -0.789106, -0.551871,
		-0.816956, 0.490904, -0.302649,
		3.524094, 2.577638, 3.008551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756607, 2.002134, 2.581577>,  <4.095963, 2.234005, 3.220406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756607, 2.002134, 2.581577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.715111, 2.398712, 2.613255>,  <3.690213, 2.636659, 2.632261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.715111, 2.398712, 2.613255>,  <3.756607, 2.002134, 2.581577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.715111, 2.398712, 2.613255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591008, 0.125490, -0.796845,
		-0.799967, -0.035862, -0.598971,
		-0.103741, 0.991447, 0.079193,
		3.683988, 2.696146, 2.637012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.509986, 2.148671, 2.008169>,  <3.756607, 2.002134, 2.581577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.509986, 2.148671, 2.008169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686935, 2.480217, 2.145161>,  <3.793105, 2.679144, 2.227355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.686935, 2.480217, 2.145161>,  <3.509986, 2.148671, 2.008169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.686935, 2.480217, 2.145161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448023, 0.126566, -0.885018,
		-0.776905, 0.544946, -0.315360,
		0.442373, 0.828864, 0.342478,
		3.819647, 2.728876, 2.247904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.268134, 2.785796, 1.560079>,  <3.509986, 2.148671, 2.008169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.268134, 2.785796, 1.560079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.611931, 2.892639, 1.734402>,  <3.818209, 2.956745, 1.838995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.611931, 2.892639, 1.734402>,  <3.268134, 2.785796, 1.560079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.611931, 2.892639, 1.734402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326125, 0.369958, -0.869927,
		-0.393595, 0.889823, 0.230865,
		0.859492, 0.267108, 0.435807,
		3.869778, 2.972771, 1.865144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.380907, 3.494221, 1.285114>,  <3.268134, 2.785796, 1.560079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.380907, 3.494221, 1.285114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738586, 3.371254, 1.415285>,  <3.953194, 3.297473, 1.493388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738586, 3.371254, 1.415285>,  <3.380907, 3.494221, 1.285114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738586, 3.371254, 1.415285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399639, 0.220579, -0.889738,
		0.201739, 0.925656, 0.320098,
		0.894198, -0.307418, 0.325429,
		4.006846, 3.279028, 1.512914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830797, 4.035139, 1.129032>,  <3.380907, 3.494221, 1.285114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830797, 4.035139, 1.129032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.066498, 3.712593, 1.149263>,  <4.207918, 3.519065, 1.161402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.066498, 3.712593, 1.149263>,  <3.830797, 4.035139, 1.129032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.066498, 3.712593, 1.149263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301278, 0.161210, -0.939810,
		0.749676, 0.569022, 0.337934,
		0.589251, -0.806365, 0.050579,
		4.243273, 3.470684, 1.164437>
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
