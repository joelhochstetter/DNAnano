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
	<4.283851, -0.740057, 1.890396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.234116, -0.355534, 1.792070>,  <4.204275, -0.124819, 1.733075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.234116, -0.355534, 1.792070>,  <4.283851, -0.740057, 1.890396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.234116, -0.355534, 1.792070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481318, 0.158204, 0.862151,
		0.867682, 0.225513, 0.443025,
		-0.124338, 0.961309, -0.245815,
		4.196814, -0.067141, 1.718326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.532682, -0.259971, 2.376965>,  <4.283851, -0.740057, 1.890396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.532682, -0.259971, 2.376965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.240784, -0.071066, 2.179201>,  <4.065645, 0.042277, 2.060543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.240784, -0.071066, 2.179201>,  <4.532682, -0.259971, 2.376965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.240784, -0.071066, 2.179201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429224, 0.246434, 0.868929,
		0.532201, 0.846309, 0.022872,
		-0.729746, 0.472262, -0.494409,
		4.021860, 0.070613, 2.030879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.429058, 0.410818, 2.673769>,  <4.532682, -0.259971, 2.376965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.429058, 0.410818, 2.673769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.093609, 0.265081, 2.511797>,  <3.892339, 0.177639, 2.414614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.093609, 0.265081, 2.511797>,  <4.429058, 0.410818, 2.673769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.093609, 0.265081, 2.511797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513212, 0.279349, 0.811528,
		-0.182557, 0.888381, -0.421252,
		-0.838622, -0.364341, -0.404930,
		3.842022, 0.155779, 2.390318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.879956, 0.905383, 2.613625>,  <4.429058, 0.410818, 2.673769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.879956, 0.905383, 2.613625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.705997, 0.548008, 2.658587>,  <3.601622, 0.333583, 2.685564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.705997, 0.548008, 2.658587>,  <3.879956, 0.905383, 2.613625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.705997, 0.548008, 2.658587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759527, 0.431008, 0.487188,
		-0.483719, 0.126502, -0.866033,
		-0.434897, -0.893437, 0.112405,
		3.575528, 0.279977, 2.692308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.153768, 1.010456, 2.464352>,  <3.879956, 0.905383, 2.613625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.153768, 1.010456, 2.464352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.182636, 0.685759, 2.696167>,  <3.199957, 0.490940, 2.835256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.182636, 0.685759, 2.696167>,  <3.153768, 1.010456, 2.464352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.182636, 0.685759, 2.696167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819826, 0.282648, 0.497992,
		-0.568046, -0.511060, -0.645090,
		0.072171, -0.811743, 0.579537,
		3.204288, 0.442236, 2.870028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.441155, 0.709959, 2.518886>,  <3.153768, 1.010456, 2.464352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.441155, 0.709959, 2.518886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692417, 0.594095, 2.807751>,  <2.843174, 0.524577, 2.981070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.692417, 0.594095, 2.807751>,  <2.441155, 0.709959, 2.518886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.692417, 0.594095, 2.807751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593214, 0.422311, 0.685383,
		-0.503506, -0.858924, 0.093446,
		0.628155, -0.289660, 0.722162,
		2.880864, 0.507197, 3.024399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932391, 0.456373, 3.144620>,  <2.441155, 0.709959, 2.518886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932391, 0.456373, 3.144620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303085, 0.511204, 3.284546>,  <2.525502, 0.544102, 3.368501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303085, 0.511204, 3.284546>,  <1.932391, 0.456373, 3.144620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.303085, 0.511204, 3.284546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375703, 0.344795, 0.860211,
		-0.002699, -0.928615, 0.371035,
		0.926736, 0.137077, 0.349814,
		2.581106, 0.552327, 3.389490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.885674, 0.142822, 3.816403>,  <1.932391, 0.456373, 3.144620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.885674, 0.142822, 3.816403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.202164, 0.386660, 3.835825>,  <2.392058, 0.532962, 3.847478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.202164, 0.386660, 3.835825>,  <1.885674, 0.142822, 3.816403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.202164, 0.386660, 3.835825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331355, 0.360637, 0.871863,
		0.513973, -0.705927, 0.487337,
		0.791224, 0.609596, 0.048555,
		2.439531, 0.569538, 3.850392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.647907, 1.679985, 4.384897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021324, 1.689957, 4.527937>,  <2.245374, 1.695940, 4.613761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.021324, 1.689957, 4.527937>,  <1.647907, 1.679985, 4.384897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.021324, 1.689957, 4.527937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289168, -0.641933, -0.710144,
		0.211852, 0.766356, -0.606480,
		0.933542, 0.024929, 0.357600,
		2.301387, 1.697435, 4.635217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.086038, 1.831362, 3.776975>,  <1.647907, 1.679985, 4.384897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.086038, 1.831362, 3.776975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.275726, 1.626328, 4.063295>,  <2.389539, 1.503307, 4.235087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.275726, 1.626328, 4.063295>,  <2.086038, 1.831362, 3.776975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.275726, 1.626328, 4.063295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417856, -0.584585, -0.695454,
		0.774927, 0.628900, -0.063035,
		0.474221, -0.512587, 0.715800,
		2.417993, 1.472552, 4.278035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.738801, 1.723532, 3.597410>,  <2.086038, 1.831362, 3.776975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.738801, 1.723532, 3.597410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694756, 1.424866, 3.859819>,  <2.668329, 1.245666, 4.017265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694756, 1.424866, 3.859819>,  <2.738801, 1.723532, 3.597410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.694756, 1.424866, 3.859819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373108, -0.642819, -0.669010,
		0.921230, 0.171101, 0.349369,
		-0.110112, -0.746665, 0.656024,
		2.661722, 1.200866, 4.056626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354385, 1.447083, 3.627426>,  <2.738801, 1.723532, 3.597410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354385, 1.447083, 3.627426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.098732, 1.169373, 3.759783>,  <2.945340, 1.002746, 3.839197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.098732, 1.169373, 3.759783>,  <3.354385, 1.447083, 3.627426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.098732, 1.169373, 3.759783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539070, -0.711259, -0.451125,
		0.548555, -0.109955, 0.828853,
		-0.639133, -0.694277, 0.330891,
		2.906992, 0.961089, 3.859050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756077, 0.785569, 3.838469>,  <3.354385, 1.447083, 3.627426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756077, 0.785569, 3.838469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383644, 0.685619, 3.732151>,  <3.160184, 0.625649, 3.668360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.383644, 0.685619, 3.732151>,  <3.756077, 0.785569, 3.838469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383644, 0.685619, 3.732151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363996, -0.684891, -0.631215,
		-0.024315, -0.684462, 0.728644,
		-0.931083, -0.249875, -0.265795,
		3.104319, 0.610657, 3.652412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.629280, 0.097981, 3.983296>,  <3.756077, 0.785569, 3.838469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.629280, 0.097981, 3.983296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.391762, 0.209053, 3.681223>,  <3.249251, 0.275696, 3.499979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.391762, 0.209053, 3.681223>,  <3.629280, 0.097981, 3.983296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.391762, 0.209053, 3.681223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397979, -0.714354, -0.575596,
		-0.699293, -0.642336, 0.313678,
		-0.593804, 0.277673, -0.755179,
		3.213623, 0.292357, 3.454668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.322458, -0.551690, 3.716524>,  <3.629280, 0.097981, 3.983296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.322458, -0.551690, 3.716524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.290520, -0.258053, 3.446789>,  <3.271357, -0.081870, 3.284948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.290520, -0.258053, 3.446789>,  <3.322458, -0.551690, 3.716524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.290520, -0.258053, 3.446789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414983, -0.590606, -0.692079,
		-0.906319, -0.335099, -0.257479,
		-0.079846, 0.734093, -0.674338,
		3.266566, -0.037825, 3.244488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.017375, -0.774329, 3.158811>,  <3.322458, -0.551690, 3.716524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.017375, -0.774329, 3.158811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.281616, -0.487938, 3.068495>,  <3.440161, -0.316103, 3.014305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.281616, -0.487938, 3.068495>,  <3.017375, -0.774329, 3.158811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.281616, -0.487938, 3.068495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464429, -0.626047, -0.626395,
		-0.589840, 0.308934, -0.746089,
		0.660601, 0.715978, -0.225790,
		3.479797, -0.273144, 3.000758>
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
