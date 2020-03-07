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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.546253, 53.180698, 49.579987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439816, 52.883255, 49.825340>,  <36.375954, 52.704788, 49.972553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439816, 52.883255, 49.825340>,  <36.546253, 53.180698, 49.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439816, 52.883255, 49.825340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931803, -0.035471, 0.361226,
		-0.246855, 0.667669, 0.702339,
		-0.266092, -0.743612, 0.613380,
		36.359989, 52.660172, 50.009354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775776, 53.361504, 50.244034>,  <36.546253, 53.180698, 49.579987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775776, 53.361504, 50.244034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733036, 52.965973, 50.285614>,  <36.707390, 52.728653, 50.310562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733036, 52.965973, 50.285614>,  <36.775776, 53.361504, 50.244034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733036, 52.965973, 50.285614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936198, -0.064854, 0.345438,
		-0.334837, 0.134225, 0.932667,
		-0.106854, -0.988826, 0.103946,
		36.700981, 52.669327, 50.316799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000011, 53.268124, 50.903316>,  <36.775776, 53.361504, 50.244034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000011, 53.268124, 50.903316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022179, 52.922897, 50.702503>,  <37.035480, 52.715759, 50.582016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022179, 52.922897, 50.702503>,  <37.000011, 53.268124, 50.903316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022179, 52.922897, 50.702503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847851, -0.224875, 0.480188,
		-0.527331, -0.452266, 0.719290,
		0.055423, -0.863068, -0.502038,
		37.038807, 52.663979, 50.551891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150978, 52.719299, 51.411293>,  <37.000011, 53.268124, 50.903316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150978, 52.719299, 51.411293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252888, 52.576672, 51.051750>,  <37.314034, 52.491093, 50.836025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252888, 52.576672, 51.051750>,  <37.150978, 52.719299, 51.411293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252888, 52.576672, 51.051750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795976, -0.450497, 0.404321,
		-0.549102, -0.818480, 0.169048,
		0.254773, -0.356571, -0.898859,
		37.329319, 52.469700, 50.782093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196030, 52.022320, 51.482498>,  <37.150978, 52.719299, 51.411293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196030, 52.022320, 51.482498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443211, 52.144611, 51.192764>,  <37.591518, 52.217987, 51.018925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443211, 52.144611, 51.192764>,  <37.196030, 52.022320, 51.482498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443211, 52.144611, 51.192764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760323, -0.466870, 0.451599,
		-0.200105, -0.829797, -0.520956,
		0.617954, 0.305727, -0.724337,
		37.628597, 52.236328, 50.975464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679100, 51.428593, 51.253300>,  <37.196030, 52.022320, 51.482498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679100, 51.428593, 51.253300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830467, 51.795395, 51.202854>,  <37.921288, 52.015476, 51.172588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830467, 51.795395, 51.202854>,  <37.679100, 51.428593, 51.253300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830467, 51.795395, 51.202854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754736, -0.226800, 0.615577,
		0.535883, -0.328130, -0.777920,
		0.378422, 0.917002, -0.126113,
		37.943993, 52.070496, 51.165020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448921, 51.304417, 51.145393>,  <37.679100, 51.428593, 51.253300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448921, 51.304417, 51.145393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370163, 51.662525, 51.305248>,  <38.322906, 51.877392, 51.401161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370163, 51.662525, 51.305248>,  <38.448921, 51.304417, 51.145393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370163, 51.662525, 51.305248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804902, -0.085127, 0.587270,
		0.559789, 0.437306, -0.703847,
		-0.196900, 0.895275, 0.399641,
		38.311092, 51.931107, 51.425140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018387, 51.757542, 51.074753>,  <38.448921, 51.304417, 51.145393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018387, 51.757542, 51.074753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816578, 51.888615, 51.394272>,  <38.695492, 51.967258, 51.585983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816578, 51.888615, 51.394272>,  <39.018387, 51.757542, 51.074753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816578, 51.888615, 51.394272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852384, 0.041707, 0.521251,
		0.137491, 0.943866, -0.300356,
		-0.504518, 0.327686, 0.798801,
		38.665222, 51.986919, 51.633911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411186, 52.328434, 51.375057>,  <39.018387, 51.757542, 51.074753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411186, 52.328434, 51.375057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181660, 52.162479, 51.657505>,  <39.043945, 52.062904, 51.826973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181660, 52.162479, 51.657505>,  <39.411186, 52.328434, 51.375057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181660, 52.162479, 51.657505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730815, 0.129763, 0.670127,
		-0.369658, 0.900570, 0.228749,
		-0.573814, -0.414891, 0.706119,
		39.009514, 52.038013, 51.869339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242138, 52.854683, 52.015686>,  <39.411186, 52.328434, 51.375057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242138, 52.854683, 52.015686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283298, 52.463604, 52.088917>,  <39.307995, 52.228958, 52.132854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283298, 52.463604, 52.088917>,  <39.242138, 52.854683, 52.015686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283298, 52.463604, 52.088917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744088, 0.197805, 0.638128,
		-0.660110, 0.070566, 0.747847,
		0.102898, -0.977698, 0.183080,
		39.314167, 52.170296, 52.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046120, 52.632687, 52.700768>,  <39.242138, 52.854683, 52.015686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046120, 52.632687, 52.700768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352886, 52.456394, 52.514175>,  <39.536945, 52.350620, 52.402222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352886, 52.456394, 52.514175>,  <39.046120, 52.632687, 52.700768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352886, 52.456394, 52.514175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641163, 0.495090, 0.586341,
		-0.027472, -0.748759, 0.662272,
		0.766913, -0.440733, -0.466476,
		39.582958, 52.324173, 52.374233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534878, 52.335331, 53.182426>,  <39.046120, 52.632687, 52.700768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534878, 52.335331, 53.182426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734234, 52.405499, 52.842819>,  <39.853848, 52.447598, 52.639053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734234, 52.405499, 52.842819>,  <39.534878, 52.335331, 53.182426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734234, 52.405499, 52.842819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769243, 0.362187, 0.526390,
		0.399842, -0.915451, 0.045571,
		0.498389, 0.175417, -0.849021,
		39.883751, 52.458122, 52.588112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072891, 51.831257, 53.132805>,  <39.534878, 52.335331, 53.182426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072891, 51.831257, 53.132805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141266, 52.187660, 52.964577>,  <40.182293, 52.401505, 52.863640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141266, 52.187660, 52.964577>,  <40.072891, 51.831257, 53.132805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141266, 52.187660, 52.964577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681253, 0.201494, 0.703771,
		0.711811, -0.406817, -0.572560,
		0.170939, 0.891010, -0.420571,
		40.192547, 52.454964, 52.838406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847736, 51.898224, 53.057053>,  <40.072891, 51.831257, 53.132805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847736, 51.898224, 53.057053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647633, 52.243107, 53.088898>,  <40.527569, 52.450035, 53.108006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647633, 52.243107, 53.088898>,  <40.847736, 51.898224, 53.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647633, 52.243107, 53.088898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688703, 0.340480, 0.640126,
		0.524814, 0.375060, -0.764133,
		-0.500258, 0.862208, 0.079616,
		40.497555, 52.501770, 53.112782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176758, 52.593834, 52.748604>,  <40.847736, 51.898224, 53.057053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176758, 52.593834, 52.748604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940178, 52.627251, 53.069405>,  <40.798229, 52.647301, 53.261887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940178, 52.627251, 53.069405>,  <41.176758, 52.593834, 52.748604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940178, 52.627251, 53.069405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783900, 0.292586, 0.547626,
		-0.188906, 0.952583, -0.238536,
		-0.591452, 0.083538, 0.802002,
		40.762741, 52.652313, 53.310005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599102, 52.454079, 52.240215>,  <41.176758, 52.593834, 52.748604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599102, 52.454079, 52.240215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744835, 52.498028, 52.610123>,  <41.832275, 52.524399, 52.832066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744835, 52.498028, 52.610123>,  <41.599102, 52.454079, 52.240215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744835, 52.498028, 52.610123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480107, -0.873041, -0.085420,
		0.797974, 0.475107, -0.370825,
		0.364330, 0.109873, 0.924766,
		41.854134, 52.530991, 52.887554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259251, 52.306183, 52.190990>,  <41.599102, 52.454079, 52.240215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259251, 52.306183, 52.190990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090416, 52.193314, 52.535599>,  <41.989117, 52.125591, 52.742363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090416, 52.193314, 52.535599>,  <42.259251, 52.306183, 52.190990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090416, 52.193314, 52.535599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298573, -0.940574, -0.161788,
		0.855978, 0.188938, 0.481252,
		-0.422085, -0.282176, 0.861522,
		41.963791, 52.108662, 52.794056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777119, 52.073372, 52.811970>,  <42.259251, 52.306183, 52.190990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777119, 52.073372, 52.811970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428452, 51.886711, 52.752048>,  <42.219254, 51.774715, 52.716095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428452, 51.886711, 52.752048>,  <42.777119, 52.073372, 52.811970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428452, 51.886711, 52.752048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481355, -0.872629, -0.082554,
		-0.092195, -0.144066, 0.985264,
		-0.871663, -0.466651, -0.149799,
		42.166954, 51.746716, 52.707108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705250, 51.541203, 53.446117>,  <42.777119, 52.073372, 52.811970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705250, 51.541203, 53.446117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532120, 51.444027, 53.098869>,  <42.428242, 51.385719, 52.890518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532120, 51.444027, 53.098869>,  <42.705250, 51.541203, 53.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532120, 51.444027, 53.098869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564438, -0.823908, -0.050848,
		-0.702901, -0.512010, 0.493737,
		-0.432828, -0.242943, -0.868124,
		42.402271, 51.371143, 52.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665344, 51.737530, 54.136040>,  <42.705250, 51.541203, 53.446117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665344, 51.737530, 54.136040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703522, 51.988117, 54.445473>,  <42.726429, 52.138470, 54.631130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703522, 51.988117, 54.445473>,  <42.665344, 51.737530, 54.136040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703522, 51.988117, 54.445473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753305, 0.462544, -0.467530,
		-0.650709, 0.627365, -0.427776,
		0.095447, 0.626471, 0.773579,
		42.732155, 52.176060, 54.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359573, 52.455925, 53.877552>,  <42.665344, 51.737530, 54.136040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359573, 52.455925, 53.877552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647209, 52.351521, 54.135166>,  <42.819790, 52.288879, 54.289734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647209, 52.351521, 54.135166>,  <42.359573, 52.455925, 53.877552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647209, 52.351521, 54.135166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692942, 0.339132, -0.636255,
		-0.052347, 0.903806, 0.424729,
		0.719090, -0.261007, 0.644038,
		42.862938, 52.273220, 54.328377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761353, 53.012890, 54.292892>,  <42.359573, 52.455925, 53.877552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761353, 53.012890, 54.292892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010803, 52.714539, 54.199295>,  <43.160473, 52.535526, 54.143135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010803, 52.714539, 54.199295>,  <42.761353, 53.012890, 54.292892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010803, 52.714539, 54.199295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665145, 0.663556, -0.342455,
		0.410698, 0.057924, 0.909930,
		0.623626, -0.745881, -0.233993,
		43.197891, 52.490776, 54.129097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477219, 53.280853, 54.495651>,  <42.761353, 53.012890, 54.292892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477219, 53.280853, 54.495651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498486, 52.982243, 54.230358>,  <43.511246, 52.803078, 54.071182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498486, 52.982243, 54.230358>,  <43.477219, 53.280853, 54.495651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498486, 52.982243, 54.230358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823421, 0.408520, -0.393815,
		0.564936, -0.525182, 0.636421,
		0.053167, -0.746522, -0.663233,
		43.514435, 52.758286, 54.031387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125484, 53.101871, 54.487106>,  <43.477219, 53.280853, 54.495651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125484, 53.101871, 54.487106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994278, 52.989101, 54.126457>,  <43.915554, 52.921440, 53.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994278, 52.989101, 54.126457>,  <44.125484, 53.101871, 54.487106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994278, 52.989101, 54.126457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764334, 0.481685, -0.428687,
		0.555157, -0.829756, 0.057488,
		-0.328014, -0.281929, -0.901622,
		43.895874, 52.904522, 53.855972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639645, 52.774647, 54.079506>,  <44.125484, 53.101871, 54.487106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639645, 52.774647, 54.079506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388134, 52.978188, 53.844318>,  <44.237228, 53.100311, 53.703205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388134, 52.978188, 53.844318>,  <44.639645, 52.774647, 54.079506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388134, 52.978188, 53.844318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764406, 0.543141, -0.347392,
		0.142580, -0.667880, -0.730484,
		-0.628772, 0.508855, -0.587973,
		44.199501, 53.130844, 53.667927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814774, 52.738522, 53.326740>,  <44.639645, 52.774647, 54.079506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814774, 52.738522, 53.326740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604645, 53.066959, 53.416046>,  <44.478569, 53.264023, 53.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604645, 53.066959, 53.416046>,  <44.814774, 52.738522, 53.326740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604645, 53.066959, 53.416046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775094, 0.570014, -0.272604,
		-0.351095, 0.029844, -0.935864,
		-0.525320, 0.821093, 0.223261,
		44.447048, 53.313286, 53.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964310, 53.349697, 52.881462>,  <44.814774, 52.738522, 53.326740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964310, 53.349697, 52.881462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837387, 53.502769, 53.228535>,  <44.761234, 53.594612, 53.436779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837387, 53.502769, 53.228535>,  <44.964310, 53.349697, 52.881462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837387, 53.502769, 53.228535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838045, 0.541384, 0.067697,
		-0.443843, 0.748637, -0.492489,
		-0.317307, 0.382681, 0.867682,
		44.742195, 53.617573, 53.488838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144054, 54.089161, 52.981644>,  <44.964310, 53.349697, 52.881462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144054, 54.089161, 52.981644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094776, 53.958427, 53.356453>,  <45.065208, 53.879990, 53.581337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094776, 53.958427, 53.356453>,  <45.144054, 54.089161, 52.981644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094776, 53.958427, 53.356453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809693, 0.512822, 0.285327,
		-0.573778, 0.793848, 0.201456,
		-0.123195, -0.326832, 0.937019,
		45.057819, 53.860378, 53.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184776, 54.648445, 53.556316>,  <45.144054, 54.089161, 52.981644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184776, 54.648445, 53.556316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277328, 54.281837, 53.686832>,  <45.332859, 54.061874, 53.765141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.277328, 54.281837, 53.686832>,  <45.184776, 54.648445, 53.556316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277328, 54.281837, 53.686832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831233, 0.360505, 0.423188,
		-0.505487, 0.173306, 0.845250,
		0.231376, -0.916516, 0.326289,
		45.346741, 54.006882, 53.784718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450092, 54.645554, 54.294247>,  <45.184776, 54.648445, 53.556316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450092, 54.645554, 54.294247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617443, 54.320599, 54.131775>,  <45.717854, 54.125626, 54.034290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.617443, 54.320599, 54.131775>,  <45.450092, 54.645554, 54.294247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617443, 54.320599, 54.131775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843608, 0.181850, 0.505230,
		-0.336577, -0.554038, 0.761418,
		0.418380, -0.812387, -0.406184,
		45.742958, 54.076881, 54.009918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787380, 54.192657, 54.840641>,  <45.450092, 54.645554, 54.294247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787380, 54.192657, 54.840641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985130, 54.168343, 54.493793>,  <46.103779, 54.153751, 54.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985130, 54.168343, 54.493793>,  <45.787380, 54.192657, 54.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985130, 54.168343, 54.493793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821954, 0.357250, 0.443580,
		0.282813, -0.932028, 0.226583,
		0.494376, -0.060790, -0.867120,
		46.133442, 54.150105, 54.233658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397888, 53.825111, 54.959114>,  <45.787380, 54.192657, 54.840641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397888, 53.825111, 54.959114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509312, 54.082962, 54.674339>,  <46.576168, 54.237671, 54.503475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.509312, 54.082962, 54.674339>,  <46.397888, 53.825111, 54.959114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509312, 54.082962, 54.674339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888586, 0.108303, 0.445742,
		0.364443, -0.756787, -0.542637,
		0.278562, 0.644627, -0.711940,
		46.592880, 54.276352, 54.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138454, 53.641476, 54.627213>,  <46.397888, 53.825111, 54.959114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138454, 53.641476, 54.627213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057781, 54.032448, 54.602085>,  <47.009377, 54.267033, 54.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057781, 54.032448, 54.602085>,  <47.138454, 53.641476, 54.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057781, 54.032448, 54.602085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908771, 0.210665, 0.360216,
		0.365322, 0.015557, -0.930751,
		-0.201681, 0.977435, -0.062823,
		46.997276, 54.325680, 54.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844284, 53.919823, 54.692799>,  <47.138454, 53.641476, 54.627213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844284, 53.919823, 54.692799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656570, 54.270538, 54.734787>,  <47.543941, 54.480968, 54.759979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656570, 54.270538, 54.734787>,  <47.844284, 53.919823, 54.692799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656570, 54.270538, 54.734787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792711, 0.365914, 0.487561,
		0.389076, 0.312017, -0.866756,
		-0.469286, 0.876785, 0.104971,
		47.515785, 54.533573, 54.766277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.247227, 54.440529, 54.571232>,  <47.844284, 53.919823, 54.692799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.247227, 54.440529, 54.571232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966415, 54.637539, 54.776978>,  <47.797928, 54.755745, 54.900425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966415, 54.637539, 54.776978>,  <48.247227, 54.440529, 54.571232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966415, 54.637539, 54.776978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706577, 0.571883, 0.416773,
		-0.088883, 0.656024, -0.749488,
		-0.702033, 0.492527, 0.514362,
		47.755806, 54.785297, 54.931286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098255, 55.166218, 54.315384>,  <48.247227, 54.440529, 54.571232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098255, 55.166218, 54.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.093258, 55.059738, 54.700920>,  <48.090260, 54.995850, 54.932240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.093258, 55.059738, 54.700920>,  <48.098255, 55.166218, 54.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.093258, 55.059738, 54.700920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812689, 0.558880, 0.164894,
		-0.582564, 0.785359, 0.209357,
		-0.012495, -0.266204, 0.963836,
		48.089508, 54.979877, 54.990070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.206856, 55.740726, 54.632671>,  <48.098255, 55.166218, 54.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.206856, 55.740726, 54.632671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.353485, 55.428268, 54.834835>,  <48.441463, 55.240795, 54.956135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.353485, 55.428268, 54.834835>,  <48.206856, 55.740726, 54.632671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.353485, 55.428268, 54.834835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831240, 0.518985, 0.199233,
		-0.417931, 0.347085, 0.839563,
		0.366570, -0.781144, 0.505411,
		48.463455, 55.193924, 54.986458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.280521, 55.797436, 55.446800>,  <48.206856, 55.740726, 54.632671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.280521, 55.797436, 55.446800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.549515, 55.545555, 55.291245>,  <48.710911, 55.394428, 55.197910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.549515, 55.545555, 55.291245>,  <48.280521, 55.797436, 55.446800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.549515, 55.545555, 55.291245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738721, 0.538938, 0.404767,
		-0.045294, -0.559483, 0.827603,
		0.672487, -0.629701, -0.388892,
		48.751263, 55.356644, 55.174576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.754784, 55.266224, 55.896790>,  <48.280521, 55.797436, 55.446800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.754784, 55.266224, 55.896790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.965698, 55.394035, 55.581863>,  <49.092247, 55.470722, 55.392906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.965698, 55.394035, 55.581863>,  <48.754784, 55.266224, 55.896790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.965698, 55.394035, 55.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724933, 0.314160, 0.613005,
		0.443217, -0.893982, -0.065985,
		0.527286, 0.319530, -0.787318,
		49.123882, 55.489895, 55.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.528755, 54.949902, 55.786362>,  <48.754784, 55.266224, 55.896790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.528755, 54.949902, 55.786362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.498306, 55.323406, 55.646477>,  <49.480038, 55.547508, 55.562546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.498306, 55.323406, 55.646477>,  <49.528755, 54.949902, 55.786362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.498306, 55.323406, 55.646477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660133, 0.310049, 0.684174,
		0.747282, -0.178775, -0.640007,
		-0.076121, 0.933761, -0.349710,
		49.475471, 55.603535, 55.541565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.042564, 55.152233, 56.119198>,  <49.528755, 54.949902, 55.786362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.042564, 55.152233, 56.119198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.911240, 55.500622, 55.972977>,  <49.832447, 55.709656, 55.885242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.911240, 55.500622, 55.972977>,  <50.042564, 55.152233, 56.119198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.911240, 55.500622, 55.972977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603651, 0.491126, 0.628013,
		0.726512, -0.014485, -0.687001,
		-0.328308, 0.870968, -0.365553,
		49.812748, 55.761913, 55.863312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.587337, 55.621735, 55.802227>,  <50.042564, 55.152233, 56.119198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.587337, 55.621735, 55.802227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.264801, 55.788898, 55.969643>,  <50.071281, 55.889198, 56.070091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.264801, 55.788898, 55.969643>,  <50.587337, 55.621735, 55.802227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.264801, 55.788898, 55.969643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589990, 0.518522, 0.618907,
		0.041627, 0.745980, -0.664666,
		-0.806337, 0.417909, 0.418537,
		50.022900, 55.914272, 56.095203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.042603, 56.111675, 55.582130>,  <50.587337, 55.621735, 55.802227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.042603, 56.111675, 55.582130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.087646, 55.900433, 55.918800>,  <51.114674, 55.773685, 56.120804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.087646, 55.900433, 55.918800>,  <51.042603, 56.111675, 55.582130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.087646, 55.900433, 55.918800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949736, 0.306214, 0.065067,
		-0.292096, 0.792044, 0.536046,
		0.112609, -0.528108, 0.841677,
		51.121429, 55.742001, 56.171303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.271900, 56.512314, 56.060951>,  <51.042603, 56.111675, 55.582130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.271900, 56.512314, 56.060951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412533, 56.154655, 56.171875>,  <51.496914, 55.940060, 56.238430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.412533, 56.154655, 56.171875>,  <51.271900, 56.512314, 56.060951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.412533, 56.154655, 56.171875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873588, 0.419838, 0.246132,
		-0.336501, 0.155715, 0.928720,
		0.351585, -0.894141, 0.277307,
		51.518009, 55.886414, 56.255066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.502266, 56.394848, 56.767868>,  <51.271900, 56.512314, 56.060951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.502266, 56.394848, 56.767868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.690170, 56.191322, 56.479301>,  <51.802914, 56.069206, 56.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.690170, 56.191322, 56.479301>,  <51.502266, 56.394848, 56.767868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.690170, 56.191322, 56.479301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777506, 0.625494, 0.065125,
		0.418105, -0.591498, 0.689433,
		0.469758, -0.508810, -0.721416,
		51.831097, 56.038681, 56.262878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.182018, 56.091660, 56.903629>,  <51.502266, 56.394848, 56.767868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.182018, 56.091660, 56.903629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170883, 56.160610, 56.509773>,  <52.164200, 56.201981, 56.273460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.170883, 56.160610, 56.509773>,  <52.182018, 56.091660, 56.903629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.170883, 56.160610, 56.509773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837079, 0.542418, 0.071291,
		0.546374, -0.822234, -0.159397,
		-0.027842, 0.172380, -0.984637,
		52.162529, 56.212322, 56.214382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.868656, 56.021290, 56.539455>,  <52.182018, 56.091660, 56.903629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.868656, 56.021290, 56.539455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.648869, 56.317551, 56.384781>,  <52.516998, 56.495308, 56.291977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.648869, 56.317551, 56.384781>,  <52.868656, 56.021290, 56.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.648869, 56.317551, 56.384781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808366, 0.588273, -0.021896,
		0.211261, -0.324616, -0.921951,
		-0.549466, 0.740648, -0.386688,
		52.484028, 56.539745, 56.268776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.208881, 56.331699, 55.952049>,  <52.868656, 56.021290, 56.539455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.208881, 56.331699, 55.952049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.954491, 56.614281, 56.076279>,  <52.801857, 56.783829, 56.150818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.954491, 56.614281, 56.076279>,  <53.208881, 56.331699, 55.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.954491, 56.614281, 56.076279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762564, 0.637069, 0.112428,
		-0.118433, 0.308336, -0.943876,
		-0.635980, 0.706450, 0.310576,
		52.763699, 56.826218, 56.169453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.082150, 56.796795, 55.394695>,  <53.208881, 56.331699, 55.952049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.082150, 56.796795, 55.394695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.074532, 56.924805, 55.773582>,  <53.069962, 57.001610, 56.000916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.074532, 56.924805, 55.773582>,  <53.082150, 56.796795, 55.394695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.074532, 56.924805, 55.773582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855651, 0.495298, -0.150135,
		-0.517202, 0.807628, -0.283265,
		-0.019048, 0.320026, 0.947217,
		53.068817, 57.020813, 56.057747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.192467, 57.530621, 55.414169>,  <53.082150, 56.796795, 55.394695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.192467, 57.530621, 55.414169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.281982, 57.408279, 55.784332>,  <53.335690, 57.334873, 56.006428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.281982, 57.408279, 55.784332>,  <53.192467, 57.530621, 55.414169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.281982, 57.408279, 55.784332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900048, 0.429145, -0.075818,
		-0.373943, 0.849874, 0.371324,
		0.223787, -0.305857, 0.925403,
		53.349117, 57.316521, 56.061954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.370228, 58.090443, 55.990414>,  <53.192467, 57.530621, 55.414169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.370228, 58.090443, 55.990414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.555847, 57.744404, 56.066589>,  <53.667221, 57.536781, 56.112293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.555847, 57.744404, 56.066589>,  <53.370228, 58.090443, 55.990414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.555847, 57.744404, 56.066589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885697, 0.449730, -0.115255,
		0.014061, 0.222153, 0.974910,
		0.464050, -0.865096, 0.190437,
		53.695061, 57.484875, 56.123722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.912769, 58.260876, 56.337467>,  <53.370228, 58.090443, 55.990414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.912769, 58.260876, 56.337467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.992561, 57.896034, 56.194206>,  <54.040436, 57.677128, 56.108250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.992561, 57.896034, 56.194206>,  <53.912769, 58.260876, 56.337467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.992561, 57.896034, 56.194206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960773, 0.253917, -0.111537,
		0.192674, -0.321853, 0.926977,
		0.199477, -0.912105, -0.358151,
		54.052406, 57.622402, 56.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.636692, 58.150181, 56.510670>,  <53.912769, 58.260876, 56.337467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.636692, 58.150181, 56.510670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.522865, 57.908699, 56.212791>,  <54.454571, 57.763809, 56.034065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.522865, 57.908699, 56.212791>,  <54.636692, 58.150181, 56.510670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.522865, 57.908699, 56.212791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926102, 0.027602, -0.376264,
		0.247706, -0.796731, 0.551236,
		-0.284566, -0.603703, -0.744691,
		54.437496, 57.727589, 55.989384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.998215, 57.544754, 56.431252>,  <54.636692, 58.150181, 56.510670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.998215, 57.544754, 56.431252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.875702, 57.678036, 56.074562>,  <54.802193, 57.758003, 55.860550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.875702, 57.678036, 56.074562>,  <54.998215, 57.544754, 56.431252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.875702, 57.678036, 56.074562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949824, 0.169386, -0.262950,
		0.063428, -0.927514, -0.368367,
		-0.306286, 0.333205, -0.891719,
		54.783817, 57.777996, 55.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.278847, 57.074749, 55.872627>,  <54.998215, 57.544754, 56.431252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.278847, 57.074749, 55.872627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.229141, 57.461349, 55.782799>,  <55.199318, 57.693310, 55.728901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.229141, 57.461349, 55.782799>,  <55.278847, 57.074749, 55.872627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.229141, 57.461349, 55.782799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986160, 0.095264, -0.135697,
		-0.109757, -0.238328, -0.964963,
		-0.124267, 0.966501, -0.224574,
		55.191860, 57.751301, 55.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.818821, 57.264751, 55.320301>,  <55.278847, 57.074749, 55.872627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.818821, 57.264751, 55.320301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.710526, 57.595161, 55.518044>,  <55.645550, 57.793407, 55.636688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.710526, 57.595161, 55.518044>,  <55.818821, 57.264751, 55.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.710526, 57.595161, 55.518044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955971, 0.291101, 0.037142,
		-0.113228, 0.482646, -0.868466,
		-0.270738, 0.826023, 0.494356,
		55.629303, 57.842968, 55.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.504959, 57.182838, 55.625896>,  <55.818821, 57.264751, 55.320301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.504959, 57.182838, 55.625896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.422729, 57.554348, 55.749260>,  <56.373390, 57.777256, 55.823277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.422729, 57.554348, 55.749260>,  <56.504959, 57.182838, 55.625896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.422729, 57.554348, 55.749260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856110, 0.017989, 0.516481,
		0.474148, 0.370203, -0.798833,
		-0.205573, 0.928777, 0.308405,
		56.361057, 57.832981, 55.841782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.176079, 57.547264, 55.556499>,  <56.504959, 57.182838, 55.625896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.176079, 57.547264, 55.556499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.934479, 57.721222, 55.823647>,  <56.789516, 57.825596, 55.983936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.934479, 57.721222, 55.823647>,  <57.176079, 57.547264, 55.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.934479, 57.721222, 55.823647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769832, 0.101495, 0.630125,
		0.206251, 0.894745, -0.396097,
		-0.604003, 0.434892, 0.667869,
		56.753277, 57.851688, 56.024006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.462280, 58.207851, 55.749752>,  <57.176079, 57.547264, 55.556499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.462280, 58.207851, 55.749752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.218079, 58.091213, 56.044304>,  <57.071560, 58.021229, 56.221035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.218079, 58.091213, 56.044304>,  <57.462280, 58.207851, 55.749752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.218079, 58.091213, 56.044304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734467, 0.139500, 0.664152,
		-0.296388, 0.946315, 0.129002,
		-0.610501, -0.291595, 0.736384,
		57.034927, 58.003735, 56.265221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.378971, 58.743595, 56.278500>,  <57.462280, 58.207851, 55.749752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.378971, 58.743595, 56.278500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.324371, 58.383980, 56.444923>,  <57.291611, 58.168213, 56.544777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.324371, 58.383980, 56.444923>,  <57.378971, 58.743595, 56.278500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.324371, 58.383980, 56.444923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838047, 0.119155, 0.532427,
		-0.528246, 0.421352, 0.737169,
		-0.136502, -0.899035, 0.416056,
		57.283421, 58.114269, 56.569740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.570904, 58.740086, 56.968346>,  <57.378971, 58.743595, 56.278500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.570904, 58.740086, 56.968346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.635353, 58.359856, 56.862175>,  <57.674023, 58.131718, 56.798473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.635353, 58.359856, 56.862175>,  <57.570904, 58.740086, 56.968346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.635353, 58.359856, 56.862175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819168, -0.021191, 0.573162,
		-0.550456, -0.309779, 0.775264,
		0.161125, -0.950572, -0.265426,
		57.683689, 58.074684, 56.782547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.624737, 58.284943, 57.648170>,  <57.570904, 58.740086, 56.968346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.624737, 58.284943, 57.648170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.802711, 58.135277, 57.322708>,  <57.909496, 58.045475, 57.127430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.802711, 58.135277, 57.322708>,  <57.624737, 58.284943, 57.648170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.802711, 58.135277, 57.322708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822285, -0.189251, 0.536685,
		-0.354795, -0.907845, 0.223468,
		0.444935, -0.374168, -0.813653,
		57.936192, 58.023026, 57.078613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.898148, 57.624981, 57.667496>,  <57.624737, 58.284943, 57.648170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.898148, 57.624981, 57.667496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118057, 57.809349, 57.388840>,  <58.250004, 57.919971, 57.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118057, 57.809349, 57.388840>,  <57.898148, 57.624981, 57.667496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.118057, 57.809349, 57.388840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818656, -0.131577, 0.559008,
		0.165999, -0.877631, -0.449675,
		0.549770, 0.460924, -0.696637,
		58.282990, 57.947624, 57.179848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.384521, 57.172577, 57.346233>,  <57.898148, 57.624981, 57.667496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.384521, 57.172577, 57.346233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.518097, 57.549450, 57.357430>,  <58.598244, 57.775574, 57.364147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.518097, 57.549450, 57.357430>,  <58.384521, 57.172577, 57.346233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.518097, 57.549450, 57.357430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826561, -0.306976, 0.471765,
		0.453078, -0.134410, -0.881280,
		0.333942, 0.942178, 0.027986,
		58.618279, 57.832104, 57.365826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.082775, 57.218056, 56.963551>,  <58.384521, 57.172577, 57.346233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.082775, 57.218056, 56.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.004448, 57.477661, 57.257607>,  <58.957451, 57.633427, 57.434040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.004448, 57.477661, 57.257607>,  <59.082775, 57.218056, 56.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.004448, 57.477661, 57.257607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871310, -0.228834, 0.434113,
		0.449972, 0.725543, -0.520685,
		-0.195817, 0.649017, 0.735141,
		58.945702, 57.672367, 57.478149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.573509, 57.758801, 57.160088>,  <59.082775, 57.218056, 56.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.573509, 57.758801, 57.160088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.395035, 57.694603, 57.512260>,  <59.287949, 57.656082, 57.723564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.395035, 57.694603, 57.512260>,  <59.573509, 57.758801, 57.160088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.395035, 57.694603, 57.512260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890205, 0.021469, 0.455054,
		-0.091937, 0.986803, 0.133297,
		-0.446187, -0.160498, 0.880431,
		59.261177, 57.646454, 57.776390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.796856, 58.263119, 57.635239>,  <59.573509, 57.758801, 57.160088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.796856, 58.263119, 57.635239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.724411, 57.931114, 57.846245>,  <59.680943, 57.731911, 57.972847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.724411, 57.931114, 57.846245>,  <59.796856, 58.263119, 57.635239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.724411, 57.931114, 57.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933966, 0.022858, 0.356631,
		-0.308067, 0.557272, 0.771066,
		-0.181115, -0.830016, 0.527514,
		59.670078, 57.682110, 58.004498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.774036, 58.409893, 58.312603>,  <59.796856, 58.263119, 57.635239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.774036, 58.409893, 58.312603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.887337, 58.036049, 58.226562>,  <59.955318, 57.811741, 58.174938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.887337, 58.036049, 58.226562>,  <59.774036, 58.409893, 58.312603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.887337, 58.036049, 58.226562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946413, 0.236116, 0.220345,
		-0.155149, -0.265986, 0.951410,
		0.283252, -0.934613, -0.215099,
		59.972313, 57.755665, 58.162033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.071472, 58.156456, 58.903458>,  <59.774036, 58.409893, 58.312603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.071472, 58.156456, 58.903458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.203819, 58.011177, 58.555061>,  <60.283226, 57.924011, 58.346024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.203819, 58.011177, 58.555061>,  <60.071472, 58.156456, 58.903458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.203819, 58.011177, 58.555061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887775, 0.432751, 0.156786,
		0.319977, -0.825115, 0.465617,
		0.330863, -0.363195, -0.870987,
		60.303078, 57.902218, 58.293766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.783970, 57.799492, 58.948380>,  <60.071472, 58.156456, 58.903458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.783970, 57.799492, 58.948380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.707527, 57.996185, 58.608574>,  <60.661659, 58.114201, 58.404690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.707527, 57.996185, 58.608574>,  <60.783970, 57.799492, 58.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.707527, 57.996185, 58.608574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823806, 0.550911, 0.133567,
		0.533686, -0.674308, -0.510379,
		-0.191109, 0.491736, -0.849513,
		60.650196, 58.143707, 58.353722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.300331, 57.782578, 58.436314>,  <60.783970, 57.799492, 58.948380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.300331, 57.782578, 58.436314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.153038, 58.151863, 58.392349>,  <61.064663, 58.373436, 58.365971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.153038, 58.151863, 58.392349>,  <61.300331, 57.782578, 58.436314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.153038, 58.151863, 58.392349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883683, 0.384284, 0.267265,
		0.288979, 0.001291, -0.957335,
		-0.368233, 0.923214, -0.109909,
		61.042568, 58.428829, 58.359375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.566013, 58.125740, 57.884815>,  <61.300331, 57.782578, 58.436314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.566013, 58.125740, 57.884815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.450592, 58.384274, 58.167374>,  <61.381340, 58.539394, 58.336906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.450592, 58.384274, 58.167374>,  <61.566013, 58.125740, 57.884815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.450592, 58.384274, 58.167374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935596, 0.347115, 0.064582,
		-0.203459, 0.679535, -0.704866,
		-0.288555, 0.646330, 0.706394,
		61.364025, 58.578171, 58.379292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.771709, 58.875771, 57.699440>,  <61.566013, 58.125740, 57.884815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.771709, 58.875771, 57.699440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.764580, 58.785343, 58.089020>,  <61.760300, 58.731087, 58.322769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.764580, 58.785343, 58.089020>,  <61.771709, 58.875771, 57.699440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.764580, 58.785343, 58.089020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978930, 0.194234, 0.063001,
		-0.203417, 0.954551, 0.217838,
		-0.017827, -0.226064, 0.973949,
		61.759232, 58.717525, 58.381203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.027103, 59.386662, 58.170341>,  <61.771709, 58.875771, 57.699440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.027103, 59.386662, 58.170341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.117264, 59.043907, 58.355789>,  <62.171360, 58.838257, 58.467060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.117264, 59.043907, 58.355789>,  <62.027103, 59.386662, 58.170341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.117264, 59.043907, 58.355789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966225, 0.257619, 0.006389,
		-0.124913, 0.446523, 0.886010,
		0.225400, -0.856884, 0.463622,
		62.184883, 58.786842, 58.494877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.490135, 59.555008, 58.643074>,  <62.027103, 59.386662, 58.170341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.490135, 59.555008, 58.643074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.533211, 59.161831, 58.583427>,  <62.559055, 58.925926, 58.547642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.533211, 59.161831, 58.583427>,  <62.490135, 59.555008, 58.643074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.533211, 59.161831, 58.583427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994185, 0.106418, 0.016469,
		-0.000320, -0.150020, 0.988683,
		0.107684, -0.982939, -0.149114,
		62.565517, 58.866951, 58.538692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.083965, 59.301975, 58.968487>,  <62.490135, 59.555008, 58.643074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.083965, 59.301975, 58.968487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.061722, 58.957466, 58.766449>,  <63.048374, 58.750759, 58.645226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.061722, 58.957466, 58.766449>,  <63.083965, 59.301975, 58.968487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.061722, 58.957466, 58.766449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935886, -0.221221, 0.274187,
		-0.347887, -0.457460, 0.818355,
		-0.055607, -0.861274, -0.505090,
		63.045040, 58.699085, 58.614922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.110874, 58.736713, 59.509201>,  <63.083965, 59.301975, 58.968487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.110874, 58.736713, 59.509201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259201, 58.680977, 59.141922>,  <63.348198, 58.647537, 58.921555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.259201, 58.680977, 59.141922>,  <63.110874, 58.736713, 59.509201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.259201, 58.680977, 59.141922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924533, -0.038241, 0.379180,
		-0.087947, -0.989506, 0.114644,
		0.370817, -0.139340, -0.918194,
		63.370445, 58.639175, 58.866463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.534283, 58.146656, 59.561234>,  <63.110874, 58.736713, 59.509201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.534283, 58.146656, 59.561234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.639206, 58.436165, 59.305939>,  <63.702160, 58.609871, 59.152760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.639206, 58.436165, 59.305939>,  <63.534283, 58.146656, 59.561234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.639206, 58.436165, 59.305939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950059, -0.077824, 0.302211,
		0.169061, -0.685638, -0.708039,
		0.262310, 0.723771, -0.638239,
		63.717899, 58.653297, 59.114468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.052132, 57.844906, 59.132160>,  <63.534283, 58.146656, 59.561234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.052132, 57.844906, 59.132160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.116913, 58.239582, 59.137985>,  <64.155785, 58.476387, 59.141479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.116913, 58.239582, 59.137985>,  <64.052132, 57.844906, 59.132160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.116913, 58.239582, 59.137985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959101, -0.160860, 0.232912,
		0.232155, -0.023757, -0.972389,
		0.161952, 0.986691, 0.014559,
		64.165497, 58.535591, 59.142353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.644501, 58.104393, 58.596809>,  <64.052132, 57.844906, 59.132160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.644501, 58.104393, 58.596809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.591965, 58.317738, 58.931061>,  <64.560440, 58.445744, 59.131611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.591965, 58.317738, 58.931061>,  <64.644501, 58.104393, 58.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.591965, 58.317738, 58.931061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962169, -0.134386, 0.237003,
		0.238705, 0.835143, -0.495537,
		-0.131338, 0.533364, 0.835627,
		64.552567, 58.477745, 59.181747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.081261, 58.807590, 58.646923>,  <64.644501, 58.104393, 58.596809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.081261, 58.807590, 58.646923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.988358, 58.638695, 58.997414>,  <64.932617, 58.537357, 59.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.988358, 58.638695, 58.997414>,  <65.081261, 58.807590, 58.646923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.988358, 58.638695, 58.997414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971140, -0.150906, 0.184702,
		0.054238, 0.893835, 0.445104,
		-0.232262, -0.422241, 0.876223,
		64.918678, 58.512024, 59.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.409142, 59.073734, 59.134209>,  <65.081261, 58.807590, 58.646923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.409142, 59.073734, 59.134209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.346596, 58.692924, 59.239433>,  <65.309067, 58.464439, 59.302567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.346596, 58.692924, 59.239433>,  <65.409142, 59.073734, 59.134209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.346596, 58.692924, 59.239433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953841, -0.076407, 0.290431,
		-0.256398, 0.296330, 0.920027,
		-0.156359, -0.952025, 0.263061,
		65.299690, 58.407318, 59.318352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.570610, 58.871964, 59.875469>,  <65.409142, 59.073734, 59.134209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.570610, 58.871964, 59.875469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.621399, 58.531090, 59.672424>,  <65.651871, 58.326565, 59.550598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.621399, 58.531090, 59.672424>,  <65.570610, 58.871964, 59.875469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.621399, 58.531090, 59.672424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945462, -0.050784, 0.321751,
		-0.299969, -0.520777, 0.799256,
		0.126971, -0.852181, -0.507608,
		65.659492, 58.275436, 59.520142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.829422, 58.262531, 60.356197>,  <65.570610, 58.871964, 59.875469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.829422, 58.262531, 60.356197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.950706, 58.259354, 59.975044>,  <66.023476, 58.257446, 59.746353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.950706, 58.259354, 59.975044>,  <65.829422, 58.262531, 60.356197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.950706, 58.259354, 59.975044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944777, -0.127949, 0.301706,
		-0.124314, -0.991749, -0.031303,
		0.303222, -0.007932, -0.952887,
		66.041672, 58.256973, 59.689178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.315971, 57.655468, 60.135227>,  <65.829422, 58.262531, 60.356197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.315971, 57.655468, 60.135227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.382599, 58.014191, 59.971275>,  <66.422577, 58.229424, 59.872906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.382599, 58.014191, 59.971275>,  <66.315971, 57.655468, 60.135227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.382599, 58.014191, 59.971275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981489, -0.110947, 0.156114,
		0.094529, -0.428292, -0.898682,
		0.166568, 0.896804, -0.409876,
		66.432571, 58.283234, 59.848312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.058784, 57.611790, 59.756618>,  <66.315971, 57.655468, 60.135227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.058784, 57.611790, 59.756618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.976303, 57.988655, 59.862305>,  <66.926811, 58.214775, 59.925716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.976303, 57.988655, 59.862305>,  <67.058784, 57.611790, 59.756618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.976303, 57.988655, 59.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966364, 0.153679, 0.206211,
		0.153679, 0.297856, -0.942160,
		-0.206211, 0.942160, 0.264220,
		66.914436, 58.271301, 59.941570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.394905, 58.150909, 59.264278>,  <67.058784, 57.611790, 59.756618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.394905, 58.150909, 59.264278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.354546, 58.274696, 59.642494>,  <67.330330, 58.348969, 59.869423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.354546, 58.274696, 59.642494>,  <67.394905, 58.150909, 59.264278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.354546, 58.274696, 59.642494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982765, -0.116971, 0.143147,
		0.154900, 0.943688, -0.292333,
		-0.100891, 0.309468, 0.945542,
		67.324280, 58.367538, 59.926155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.906799, 58.609093, 59.388874>,  <67.394905, 58.150909, 59.264278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.906799, 58.609093, 59.388874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.801880, 58.460583, 59.745155>,  <67.738930, 58.371479, 59.958923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.801880, 58.460583, 59.745155>,  <67.906799, 58.609093, 59.388874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.801880, 58.460583, 59.745155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958915, 0.003073, 0.283676,
		-0.108058, 0.928519, 0.355212,
		-0.262307, -0.371272, 0.890703,
		67.723190, 58.349201, 60.012367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.328186, 58.979000, 59.816048>,  <67.906799, 58.609093, 59.388874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.328186, 58.979000, 59.816048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.210625, 58.613152, 59.927109>,  <68.140091, 58.393642, 59.993744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.210625, 58.613152, 59.927109>,  <68.328186, 58.979000, 59.816048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.210625, 58.613152, 59.927109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955321, -0.271523, 0.116774,
		-0.031416, 0.299563, 0.953559,
		-0.293894, -0.914624, 0.277649,
		68.122459, 58.338764, 60.010403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.616074, 58.871700, 60.496849>,  <68.328186, 58.979000, 59.816048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.616074, 58.871700, 60.496849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.564415, 58.536278, 60.285133>,  <68.533417, 58.335026, 60.158104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.564415, 58.536278, 60.285133>,  <68.616074, 58.871700, 60.496849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.564415, 58.536278, 60.285133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989505, -0.143860, -0.013536,
		-0.064794, -0.525485, 0.848332,
		-0.129154, -0.838552, -0.529291,
		68.525665, 58.284714, 60.126347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.866653, 58.308243, 60.854252>,  <68.616074, 58.871700, 60.496849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.866653, 58.308243, 60.854252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.893616, 58.313713, 60.455200>,  <68.909790, 58.316994, 60.215767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.893616, 58.313713, 60.455200>,  <68.866653, 58.308243, 60.854252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.893616, 58.313713, 60.455200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993893, -0.088480, 0.065936,
		-0.087369, -0.995984, -0.019551,
		0.067401, 0.013671, -0.997632,
		68.913834, 58.317814, 60.155910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.420738, 58.471481, 60.467438>,  <68.866653, 58.308243, 60.854252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.420738, 58.471481, 60.467438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.633354, 58.793098, 60.574005>,  <69.760925, 58.986069, 60.637947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.633354, 58.793098, 60.574005>,  <69.420738, 58.471481, 60.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.633354, 58.793098, 60.574005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827715, -0.559846, 0.038220,
		0.179884, 0.200202, -0.963100,
		0.531536, 0.804047, 0.266417,
		69.792816, 59.034313, 60.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.075218, 58.566368, 59.902596>,  <69.420738, 58.471481, 60.467438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.075218, 58.566368, 59.902596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.134659, 58.670914, 60.284088>,  <70.170326, 58.733643, 60.512985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.134659, 58.670914, 60.284088>,  <70.075218, 58.566368, 59.902596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.134659, 58.670914, 60.284088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953494, -0.293618, -0.068099,
		0.262234, 0.919499, -0.292840,
		0.148600, 0.261363, 0.953733,
		70.179237, 58.749321, 60.570210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.669212, 59.033947, 60.036221>,  <70.075218, 58.566368, 59.902596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.669212, 59.033947, 60.036221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627922, 58.807831, 60.363586>,  <70.603149, 58.672161, 60.560005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.627922, 58.807831, 60.363586>,  <70.669212, 59.033947, 60.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.627922, 58.807831, 60.363586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968145, -0.245810, -0.047674,
		0.228123, 0.787418, 0.572654,
		-0.103225, -0.565287, 0.818410,
		70.596954, 58.638245, 60.609108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.048492, 59.320740, 60.660439>,  <70.669212, 59.033947, 60.036221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.048492, 59.320740, 60.660439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.989693, 58.925526, 60.641785>,  <70.954414, 58.688396, 60.630592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.989693, 58.925526, 60.641785>,  <71.048492, 59.320740, 60.660439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.989693, 58.925526, 60.641785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983870, -0.141201, -0.109821,
		0.101922, -0.062029, 0.992857,
		-0.147005, -0.988036, -0.046637,
		70.945595, 58.629116, 60.627792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.365631, 58.986465, 61.196995>,  <71.048492, 59.320740, 60.660439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.365631, 58.986465, 61.196995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.373390, 58.738770, 60.883011>,  <71.378044, 58.590153, 60.694622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.373390, 58.738770, 60.883011>,  <71.365631, 58.986465, 61.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.373390, 58.738770, 60.883011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957615, -0.214175, 0.192620,
		-0.287398, -0.755426, 0.588842,
		0.019395, -0.619242, -0.784961,
		71.379211, 58.552998, 60.647522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.508759, 58.292107, 61.429924>,  <71.365631, 58.986465, 61.196995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.508759, 58.292107, 61.429924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638634, 58.413437, 61.071579>,  <71.716560, 58.486237, 60.856571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638634, 58.413437, 61.071579>,  <71.508759, 58.292107, 61.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.638634, 58.413437, 61.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935604, -0.241862, 0.257193,
		-0.138662, -0.921680, -0.362323,
		0.324682, 0.303328, -0.895865,
		71.736038, 58.504436, 60.802818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.971329, 57.686714, 61.075745>,  <71.508759, 58.292107, 61.429924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.971329, 57.686714, 61.075745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.069702, 58.049911, 60.940056>,  <72.128723, 58.267830, 60.858643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.069702, 58.049911, 60.940056>,  <71.971329, 57.686714, 61.075745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.069702, 58.049911, 60.940056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959622, -0.178775, 0.217173,
		0.136548, -0.378929, -0.915296,
		0.245926, 0.907993, -0.339218,
		72.143478, 58.322311, 60.838291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.465729, 57.622517, 60.626312>,  <71.971329, 57.686714, 61.075745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.465729, 57.622517, 60.626312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.513542, 57.976959, 60.805435>,  <72.542229, 58.189625, 60.912910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.513542, 57.976959, 60.805435>,  <72.465729, 57.622517, 60.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.513542, 57.976959, 60.805435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978773, -0.180801, 0.096508,
		0.166481, 0.426767, -0.888906,
		0.119529, 0.886104, 0.447808,
		72.549400, 58.242790, 60.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.082603, 58.022549, 60.334476>,  <72.465729, 57.622517, 60.626312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.082603, 58.022549, 60.334476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.007019, 58.081928, 60.722755>,  <72.961670, 58.117554, 60.955723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.007019, 58.081928, 60.722755>,  <73.082603, 58.022549, 60.334476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.007019, 58.081928, 60.722755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855136, -0.461073, 0.236971,
		0.482741, 0.874858, -0.039819,
		-0.188957, 0.148446, 0.970700,
		72.950333, 58.126461, 61.013966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
