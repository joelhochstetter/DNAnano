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
	<23.954258, 34.806240, 34.700989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268171, 34.879501, 34.937824>,  <24.456520, 34.923458, 35.079926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268171, 34.879501, 34.937824>,  <23.954258, 34.806240, 34.700989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268171, 34.879501, 34.937824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483441, -0.778695, -0.399899,
		0.387815, 0.600074, -0.699650,
		0.784783, 0.183153, 0.592090,
		24.503607, 34.934448, 35.115452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452038, 34.896664, 34.265125>,  <23.954258, 34.806240, 34.700989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452038, 34.896664, 34.265125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572281, 34.723244, 34.604931>,  <24.644426, 34.619190, 34.808815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572281, 34.723244, 34.604931>,  <24.452038, 34.896664, 34.265125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572281, 34.723244, 34.604931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501228, -0.685975, -0.527455,
		0.811422, 0.584355, 0.011101,
		0.300606, -0.433553, 0.849510,
		24.662462, 34.593178, 34.859783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108437, 34.824600, 34.102848>,  <24.452038, 34.896664, 34.265125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108437, 34.824600, 34.102848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990965, 34.565273, 34.383827>,  <24.920483, 34.409676, 34.552414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990965, 34.565273, 34.383827>,  <25.108437, 34.824600, 34.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990965, 34.565273, 34.383827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567575, -0.709560, -0.417592,
		0.769163, 0.276055, 0.576353,
		-0.293679, -0.648319, 0.702449,
		24.902861, 34.370777, 34.594563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709812, 34.455799, 34.423290>,  <25.108437, 34.824600, 34.102848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709812, 34.455799, 34.423290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399435, 34.211227, 34.485336>,  <25.213209, 34.064484, 34.522564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399435, 34.211227, 34.485336>,  <25.709812, 34.455799, 34.423290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399435, 34.211227, 34.485336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494500, -0.742273, -0.452218,
		0.391638, -0.274192, 0.878316,
		-0.775944, -0.611433, 0.155114,
		25.166651, 34.027798, 34.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946375, 33.747684, 34.646038>,  <25.709812, 34.455799, 34.423290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946375, 33.747684, 34.646038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591433, 33.720848, 34.463566>,  <25.378468, 33.704746, 34.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591433, 33.720848, 34.463566>,  <25.946375, 33.747684, 34.646038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591433, 33.720848, 34.463566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354355, -0.732241, -0.581597,
		-0.295013, -0.677733, 0.673532,
		-0.887355, -0.067091, -0.456179,
		25.325226, 33.700722, 34.326714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956980, 33.169659, 34.359272>,  <25.946375, 33.747684, 34.646038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956980, 33.169659, 34.359272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632927, 33.294014, 34.160461>,  <25.438496, 33.368626, 34.041176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632927, 33.294014, 34.160461>,  <25.956980, 33.169659, 34.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632927, 33.294014, 34.160461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219714, -0.625004, -0.749063,
		-0.543516, -0.716045, 0.438031,
		-0.810133, 0.310887, -0.497024,
		25.389887, 33.387280, 34.011353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541845, 32.563038, 34.192200>,  <25.956980, 33.169659, 34.359272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541845, 32.563038, 34.192200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506582, 32.863739, 33.930790>,  <25.485424, 33.044159, 33.773945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506582, 32.863739, 33.930790>,  <25.541845, 32.563038, 34.192200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506582, 32.863739, 33.930790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210870, -0.627122, -0.749835,
		-0.973531, -0.203911, -0.103238,
		-0.088157, 0.751757, -0.653521,
		25.480135, 33.089268, 33.734734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101295, 32.299549, 33.748856>,  <25.541845, 32.563038, 34.192200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101295, 32.299549, 33.748856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346142, 32.574154, 33.591877>,  <25.493050, 32.738914, 33.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346142, 32.574154, 33.591877>,  <25.101295, 32.299549, 33.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346142, 32.574154, 33.591877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264347, -0.645386, -0.716657,
		-0.745273, 0.334935, -0.576529,
		0.612118, 0.686509, -0.392450,
		25.529778, 32.780106, 33.474144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899702, 32.303802, 33.097324>,  <25.101295, 32.299549, 33.748856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899702, 32.303802, 33.097324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252872, 32.491528, 33.091900>,  <25.464775, 32.604164, 33.088646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.252872, 32.491528, 33.091900>,  <24.899702, 32.303802, 33.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.252872, 32.491528, 33.091900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241657, -0.479009, -0.843891,
		-0.402545, 0.741818, -0.536343,
		0.882927, 0.469315, -0.013557,
		25.517750, 32.632320, 33.087833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978334, 32.681873, 32.415390>,  <24.899702, 32.303802, 33.097324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978334, 32.681873, 32.415390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337320, 32.602043, 32.572731>,  <25.552711, 32.554146, 32.667137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337320, 32.602043, 32.572731>,  <24.978334, 32.681873, 32.415390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337320, 32.602043, 32.572731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296496, -0.387295, -0.872979,
		0.326573, 0.900095, -0.288409,
		0.897463, -0.199579, 0.393354,
		25.606560, 32.542168, 32.690739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357855, 32.487411, 31.849163>,  <24.978334, 32.681873, 32.415390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357855, 32.487411, 31.849163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626780, 32.423271, 32.138241>,  <25.788134, 32.384789, 32.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626780, 32.423271, 32.138241>,  <25.357855, 32.487411, 31.849163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626780, 32.423271, 32.138241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495453, -0.627894, -0.600230,
		0.550022, 0.761601, -0.342693,
		0.672311, -0.160352, 0.722693,
		25.828472, 32.375164, 32.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179123, 32.596733, 31.673090>,  <25.357855, 32.487411, 31.849163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179123, 32.596733, 31.673090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095726, 32.315308, 31.944832>,  <26.045687, 32.146450, 32.107876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095726, 32.315308, 31.944832>,  <26.179123, 32.596733, 31.673090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095726, 32.315308, 31.944832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584423, -0.646592, -0.490274,
		0.784206, 0.294813, 0.545990,
		-0.208493, -0.703566, 0.679357,
		26.033178, 32.104237, 32.148640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829229, 32.286182, 31.980404>,  <26.179123, 32.596733, 31.673090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829229, 32.286182, 31.980404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528666, 32.022877, 31.998617>,  <26.348328, 31.864893, 32.009544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528666, 32.022877, 31.998617>,  <26.829229, 32.286182, 31.980404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528666, 32.022877, 31.998617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607321, -0.716935, -0.342295,
		0.257965, -0.229550, 0.938489,
		-0.751409, -0.658264, 0.045533,
		26.303244, 31.825397, 32.012276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060188, 31.607639, 32.222427>,  <26.829229, 32.286182, 31.980404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060188, 31.607639, 32.222427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736881, 31.588619, 31.987671>,  <26.542896, 31.577208, 31.846817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736881, 31.588619, 31.987671>,  <27.060188, 31.607639, 32.222427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736881, 31.588619, 31.987671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443905, -0.704056, -0.554305,
		-0.386849, -0.708551, 0.590172,
		-0.808267, -0.047548, -0.586893,
		26.494402, 31.574354, 31.811604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849831, 30.906780, 32.258011>,  <27.060188, 31.607639, 32.222427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849831, 30.906780, 32.258011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727793, 31.075590, 31.916531>,  <26.654570, 31.176876, 31.711641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727793, 31.075590, 31.916531>,  <26.849831, 30.906780, 32.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727793, 31.075590, 31.916531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306439, -0.805262, -0.507591,
		-0.901673, -0.416471, 0.116354,
		-0.305092, 0.422026, -0.853705,
		26.636265, 31.202198, 31.660419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298767, 31.111897, 32.799538>,  <26.849831, 30.906780, 32.258011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298767, 31.111897, 32.799538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172491, 30.738707, 32.868698>,  <26.096725, 30.514793, 32.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172491, 30.738707, 32.868698>,  <26.298767, 31.111897, 32.799538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172491, 30.738707, 32.868698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515549, -0.321632, -0.794205,
		0.796585, -0.161585, 0.582532,
		-0.315692, -0.932975, 0.172902,
		26.077784, 30.458815, 32.920570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512857, 31.733471, 33.288734>,  <26.298767, 31.111897, 32.799538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512857, 31.733471, 33.288734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298908, 31.934282, 33.016888>,  <26.170540, 32.054768, 32.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298908, 31.934282, 33.016888>,  <26.512857, 31.733471, 33.288734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298908, 31.934282, 33.016888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141195, 0.739927, 0.657702,
		0.833053, 0.447744, -0.324882,
		-0.534871, 0.502029, -0.679617,
		26.138447, 32.084892, 32.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755713, 32.404697, 33.185169>,  <26.512857, 31.733471, 33.288734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755713, 32.404697, 33.185169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384626, 32.448902, 33.042549>,  <26.161974, 32.475426, 32.956978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384626, 32.448902, 33.042549>,  <26.755713, 32.404697, 33.185169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384626, 32.448902, 33.042549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058354, 0.900494, 0.430936,
		0.368698, 0.420592, -0.828954,
		-0.927716, 0.110512, -0.356553,
		26.106312, 32.482056, 32.935585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731510, 33.105049, 33.001663>,  <26.755713, 32.404697, 33.185169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731510, 33.105049, 33.001663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356436, 32.971657, 33.040714>,  <26.131392, 32.891621, 33.064144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.356436, 32.971657, 33.040714>,  <26.731510, 33.105049, 33.001663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356436, 32.971657, 33.040714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246718, 0.836810, 0.488752,
		-0.244685, 0.434210, -0.866943,
		-0.937688, -0.333481, 0.097628,
		26.075129, 32.871613, 33.070004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277000, 33.614853, 32.779305>,  <26.731510, 33.105049, 33.001663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277000, 33.614853, 32.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047184, 33.375980, 33.003189>,  <25.909294, 33.232658, 33.137520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047184, 33.375980, 33.003189>,  <26.277000, 33.614853, 32.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047184, 33.375980, 33.003189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300120, 0.789928, 0.534736,
		-0.761467, 0.139247, -0.633071,
		-0.574540, -0.597181, 0.559713,
		25.874823, 33.196827, 33.171104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634554, 33.947548, 32.794250>,  <26.277000, 33.614853, 32.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634554, 33.947548, 32.794250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725336, 33.717819, 33.108868>,  <25.779806, 33.579983, 33.297638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725336, 33.717819, 33.108868>,  <25.634554, 33.947548, 32.794250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725336, 33.717819, 33.108868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292137, 0.730280, 0.617533,
		-0.929057, -0.369931, -0.002039,
		0.226956, -0.574319, 0.786542,
		25.793423, 33.545525, 33.344830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217667, 33.387321, 32.981426>,  <25.634554, 33.947548, 32.794250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217667, 33.387321, 32.981426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936279, 33.660713, 32.903465>,  <24.767447, 33.824749, 32.856689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936279, 33.660713, 32.903465>,  <25.217667, 33.387321, 32.981426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936279, 33.660713, 32.903465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500689, -0.671206, -0.546619,
		-0.504420, -0.286947, 0.814385,
		-0.703471, 0.683479, -0.194898,
		24.725239, 33.865757, 32.844997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.618280, 33.150291, 33.208633>,  <25.217667, 33.387321, 32.981426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.618280, 33.150291, 33.208633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546551, 33.395721, 32.901031>,  <24.503513, 33.542980, 32.716473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.546551, 33.395721, 32.901031>,  <24.618280, 33.150291, 33.208633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.546551, 33.395721, 32.901031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518292, -0.723320, -0.456269,
		-0.836191, 0.316748, 0.447722,
		-0.179324, 0.613579, -0.769002,
		24.492754, 33.579796, 32.670330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614674, 33.857193, 33.462955>,  <24.618280, 33.150291, 33.208633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614674, 33.857193, 33.462955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796310, 33.578018, 33.684471>,  <24.905293, 33.410515, 33.817383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.796310, 33.578018, 33.684471>,  <24.614674, 33.857193, 33.462955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.796310, 33.578018, 33.684471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243295, 0.500812, 0.830660,
		-0.857094, -0.511929, 0.057609,
		0.454090, -0.697937, 0.553792,
		24.932537, 33.368637, 33.850609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131310, 33.497589, 33.916023>,  <24.614674, 33.857193, 33.462955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131310, 33.497589, 33.916023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504728, 33.532391, 34.055119>,  <24.728779, 33.553272, 34.138577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504728, 33.532391, 34.055119>,  <24.131310, 33.497589, 33.916023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504728, 33.532391, 34.055119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338824, 0.530789, 0.776827,
		-0.116990, -0.843026, 0.524995,
		0.933548, 0.087000, 0.347735,
		24.784792, 33.558491, 34.159439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.115250, 33.264584, 34.634666>,  <24.131310, 33.497589, 33.916023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.115250, 33.264584, 34.634666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425766, 33.512436, 34.588314>,  <24.612076, 33.661148, 34.560501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425766, 33.512436, 34.588314>,  <24.115250, 33.264584, 34.634666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.425766, 33.512436, 34.588314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327276, 0.553280, 0.766010,
		0.538747, -0.556732, 0.632299,
		0.776300, 0.619621, -0.115873,
		24.658653, 33.698326, 34.553551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.392897, 33.331936, 35.264565>,  <24.115250, 33.264584, 34.634666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.392897, 33.331936, 35.264565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502680, 33.666348, 35.074520>,  <24.568550, 33.866993, 34.960491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502680, 33.666348, 35.074520>,  <24.392897, 33.331936, 35.264565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502680, 33.666348, 35.074520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157419, 0.526487, 0.835482,
		0.948626, -0.154514, 0.276106,
		0.274460, 0.836024, -0.475116,
		24.585018, 33.917156, 34.931984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039188, 33.655926, 35.589569>,  <24.392897, 33.331936, 35.264565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039188, 33.655926, 35.589569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801735, 33.918896, 35.403931>,  <24.659264, 34.076679, 35.292545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801735, 33.918896, 35.403931>,  <25.039188, 33.655926, 35.589569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801735, 33.918896, 35.403931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012482, 0.584164, 0.811540,
		0.804640, 0.475963, -0.354984,
		-0.593632, 0.657428, -0.464100,
		24.623646, 34.116123, 35.264702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304697, 34.384617, 35.725460>,  <25.039188, 33.655926, 35.589569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304697, 34.384617, 35.725460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920450, 34.423996, 35.621521>,  <24.689901, 34.447624, 35.559158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920450, 34.423996, 35.621521>,  <25.304697, 34.384617, 35.725460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920450, 34.423996, 35.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117152, 0.704471, 0.699997,
		0.251964, 0.702872, -0.665196,
		-0.960619, 0.098445, -0.259844,
		24.632265, 34.453529, 35.543568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824934, 33.876301, 35.978878>,  <25.304697, 34.384617, 35.725460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824934, 33.876301, 35.978878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156967, 33.654938, 36.006298>,  <26.356188, 33.522121, 36.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156967, 33.654938, 36.006298>,  <25.824934, 33.876301, 35.978878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156967, 33.654938, 36.006298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521806, -0.727504, 0.445484,
		-0.196665, -0.405559, -0.892662,
		0.830085, -0.553408, 0.068549,
		26.405993, 33.488914, 36.026863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723396, 33.234020, 35.588089>,  <25.824934, 33.876301, 35.978878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723396, 33.234020, 35.588089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976269, 33.184338, 35.894009>,  <26.127993, 33.154530, 36.077560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976269, 33.184338, 35.894009>,  <25.723396, 33.234020, 35.588089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976269, 33.184338, 35.894009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574846, -0.737015, 0.355474,
		0.519517, -0.664366, -0.537327,
		0.632183, -0.124205, 0.764799,
		26.165924, 33.147076, 36.123447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497787, 32.587414, 35.910854>,  <25.723396, 33.234020, 35.588089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497787, 32.587414, 35.910854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777739, 32.701107, 36.172962>,  <25.945709, 32.769321, 36.330227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777739, 32.701107, 36.172962>,  <25.497787, 32.587414, 35.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777739, 32.701107, 36.172962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392471, -0.613468, 0.685291,
		0.596771, -0.736795, -0.317800,
		0.699880, 0.284234, 0.655271,
		25.987703, 32.786377, 36.369545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780630, 31.994781, 36.264835>,  <25.497787, 32.587414, 35.910854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780630, 31.994781, 36.264835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887215, 32.279987, 36.524254>,  <25.951166, 32.451111, 36.679905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887215, 32.279987, 36.524254>,  <25.780630, 31.994781, 36.264835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887215, 32.279987, 36.524254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241753, -0.601923, 0.761081,
		0.933035, -0.359587, 0.011984,
		0.266461, 0.713013, 0.648546,
		25.967154, 32.493893, 36.718819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232941, 31.652895, 36.764759>,  <25.780630, 31.994781, 36.264835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232941, 31.652895, 36.764759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091164, 31.989923, 36.926964>,  <26.006098, 32.192139, 37.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091164, 31.989923, 36.926964>,  <26.232941, 31.652895, 36.764759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091164, 31.989923, 36.926964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244617, -0.502119, 0.829481,
		0.902514, 0.194809, 0.384081,
		-0.354444, 0.842571, 0.405516,
		25.984831, 32.242695, 37.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591702, 31.801037, 37.505669>,  <26.232941, 31.652895, 36.764759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591702, 31.801037, 37.505669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221228, 31.950665, 37.486687>,  <25.998943, 32.040440, 37.475300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221228, 31.950665, 37.486687>,  <26.591702, 31.801037, 37.505669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221228, 31.950665, 37.486687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261603, -0.546837, 0.795319,
		0.271556, 0.749027, 0.604331,
		-0.926186, 0.374069, -0.047451,
		25.943371, 32.062885, 37.472450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272739, 31.848534, 38.206940>,  <26.591702, 31.801037, 37.505669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272739, 31.848534, 38.206940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958794, 31.841566, 37.959171>,  <25.770426, 31.837385, 37.810509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958794, 31.841566, 37.959171>,  <26.272739, 31.848534, 38.206940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958794, 31.841566, 37.959171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504312, -0.562893, 0.654844,
		-0.360074, 0.826346, 0.433011,
		-0.784867, -0.017419, -0.619420,
		25.723333, 31.836340, 37.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081289, 32.220886, 38.792294>,  <26.272739, 31.848534, 38.206940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081289, 32.220886, 38.792294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848467, 32.206841, 38.467339>,  <25.708773, 32.198414, 38.272366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848467, 32.206841, 38.467339>,  <26.081289, 32.220886, 38.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848467, 32.206841, 38.467339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508761, -0.763634, 0.397523,
		-0.634327, 0.644693, 0.426615,
		-0.582058, -0.035114, -0.812389,
		25.673849, 32.196304, 38.223621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387833, 32.398720, 38.964108>,  <26.081289, 32.220886, 38.792294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387833, 32.398720, 38.964108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353239, 32.181301, 38.630142>,  <25.332483, 32.050850, 38.429764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.353239, 32.181301, 38.630142>,  <25.387833, 32.398720, 38.964108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353239, 32.181301, 38.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606594, -0.636069, 0.476927,
		-0.790294, 0.547699, -0.274703,
		-0.086483, -0.543546, -0.834913,
		25.327293, 32.018238, 38.379669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640299, 32.167995, 38.823574>,  <25.387833, 32.398720, 38.964108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640299, 32.167995, 38.823574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912394, 31.921682, 38.664532>,  <25.075651, 31.773895, 38.569107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912394, 31.921682, 38.664532>,  <24.640299, 32.167995, 38.823574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912394, 31.921682, 38.664532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367165, -0.755737, 0.542265,
		-0.634401, -0.222884, -0.740175,
		0.680239, -0.615779, -0.397605,
		25.116465, 31.736948, 38.545250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709051, 31.612963, 39.377293>,  <24.640299, 32.167995, 38.823574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709051, 31.612963, 39.377293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437584, 31.857321, 39.540371>,  <24.274704, 32.003937, 39.638218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437584, 31.857321, 39.540371>,  <24.709051, 31.612963, 39.377293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437584, 31.857321, 39.540371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229671, -0.350738, 0.907873,
		0.697610, 0.709781, 0.097730,
		-0.678669, 0.610895, 0.407695,
		24.233984, 32.040588, 39.662678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709454, 30.957077, 38.992317>,  <24.709051, 31.612963, 39.377293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709454, 30.957077, 38.992317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545418, 30.914326, 38.630013>,  <24.446997, 30.888676, 38.412628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545418, 30.914326, 38.630013>,  <24.709454, 30.957077, 38.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545418, 30.914326, 38.630013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480328, 0.818918, -0.314101,
		0.775315, -0.563872, -0.284491,
		-0.410088, -0.106878, -0.905762,
		24.422392, 30.882261, 38.358284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349569, 30.878050, 38.526875>,  <24.709454, 30.957077, 38.992317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349569, 30.878050, 38.526875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003546, 31.020660, 38.385704>,  <24.795931, 31.106228, 38.301003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003546, 31.020660, 38.385704>,  <25.349569, 30.878050, 38.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003546, 31.020660, 38.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470094, 0.821732, -0.322131,
		0.175164, -0.444573, -0.878449,
		-0.865060, 0.356527, -0.352929,
		24.744028, 31.127619, 38.279827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336306, 30.947397, 37.804314>,  <25.349569, 30.878050, 38.526875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336306, 30.947397, 37.804314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136829, 31.255823, 37.962688>,  <25.017143, 31.440878, 38.057713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136829, 31.255823, 37.962688>,  <25.336306, 30.947397, 37.804314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136829, 31.255823, 37.962688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623687, 0.636424, -0.453850,
		-0.601931, 0.020609, -0.798282,
		-0.498692, 0.771064, 0.395937,
		24.987221, 31.487143, 38.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071562, 31.446989, 37.278179>,  <25.336306, 30.947397, 37.804314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071562, 31.446989, 37.278179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141851, 31.641119, 37.620777>,  <25.184025, 31.757597, 37.826336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141851, 31.641119, 37.620777>,  <25.071562, 31.446989, 37.278179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141851, 31.641119, 37.620777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549265, 0.673682, -0.494429,
		-0.816963, 0.557326, -0.148189,
		0.175726, 0.485325, 0.856493,
		25.194569, 31.786716, 37.877724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917583, 32.173470, 37.151386>,  <25.071562, 31.446989, 37.278179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917583, 32.173470, 37.151386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164312, 32.151577, 37.465466>,  <25.312349, 32.138443, 37.653912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164312, 32.151577, 37.465466>,  <24.917583, 32.173470, 37.151386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164312, 32.151577, 37.465466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585075, 0.699190, -0.410879,
		-0.526516, 0.712838, 0.463295,
		0.616822, -0.054728, 0.785198,
		25.349360, 32.135159, 37.701023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927578, 32.846188, 37.487305>,  <24.917583, 32.173470, 37.151386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927578, 32.846188, 37.487305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256716, 32.620201, 37.511757>,  <25.454199, 32.484608, 37.526428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256716, 32.620201, 37.511757>,  <24.927578, 32.846188, 37.487305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256716, 32.620201, 37.511757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533874, 0.731712, -0.423763,
		0.194683, 0.381327, 0.903708,
		0.822847, -0.564966, 0.061129,
		25.503571, 32.450710, 37.530094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558153, 33.212978, 37.803898>,  <24.927578, 32.846188, 37.487305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558153, 33.212978, 37.803898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691574, 32.924896, 37.560574>,  <25.771626, 32.752045, 37.414577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691574, 32.924896, 37.560574>,  <25.558153, 33.212978, 37.803898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691574, 32.924896, 37.560574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403005, 0.692264, -0.598630,
		0.852250, -0.045478, 0.521154,
		0.333551, -0.720210, -0.608310,
		25.791639, 32.708832, 37.378082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197779, 33.496056, 37.493729>,  <25.558153, 33.212978, 37.803898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197779, 33.496056, 37.493729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138750, 33.174618, 37.263092>,  <26.103333, 32.981754, 37.124710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138750, 33.174618, 37.263092>,  <26.197779, 33.496056, 37.493729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138750, 33.174618, 37.263092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376970, 0.493268, -0.783951,
		0.914393, -0.333047, 0.230139,
		-0.147573, -0.803596, -0.576590,
		26.094479, 32.933540, 37.090115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853481, 33.380890, 37.138618>,  <26.197779, 33.496056, 37.493729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853481, 33.380890, 37.138618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595716, 33.178261, 36.909492>,  <26.441057, 33.056683, 36.772015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595716, 33.178261, 36.909492>,  <26.853481, 33.380890, 37.138618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595716, 33.178261, 36.909492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433596, 0.374963, -0.819388,
		0.629863, -0.776395, -0.021983,
		-0.644412, -0.506571, -0.572817,
		26.402393, 33.026291, 36.737648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182192, 32.934353, 36.753231>,  <26.853481, 33.380890, 37.138618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182192, 32.934353, 36.753231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862152, 33.058922, 36.548153>,  <26.670128, 33.133663, 36.425106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862152, 33.058922, 36.548153>,  <27.182192, 32.934353, 36.753231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862152, 33.058922, 36.548153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597945, 0.482451, -0.640081,
		0.048012, -0.818691, -0.572224,
		-0.800098, 0.311426, -0.512695,
		26.622122, 33.152351, 36.394344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034567, 32.755970, 35.993004>,  <27.182192, 32.934353, 36.753231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034567, 32.755970, 35.993004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937683, 33.134888, 36.076870>,  <26.879553, 33.362240, 36.127190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937683, 33.134888, 36.076870>,  <27.034567, 32.755970, 35.993004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937683, 33.134888, 36.076870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814940, 0.315906, -0.485876,
		-0.526505, 0.053184, -0.848507,
		-0.242208, 0.947299, 0.209668,
		26.865021, 33.419079, 36.139771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131567, 33.094353, 35.359833>,  <27.034567, 32.755970, 35.993004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131567, 33.094353, 35.359833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175634, 33.334435, 35.676720>,  <27.202074, 33.478485, 35.866852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175634, 33.334435, 35.676720>,  <27.131567, 33.094353, 35.359833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175634, 33.334435, 35.676720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862630, 0.338179, -0.376171,
		-0.493693, 0.724835, -0.480501,
		0.110167, 0.600208, 0.792221,
		27.208685, 33.514496, 35.914387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508438, 33.720943, 35.082714>,  <27.131567, 33.094353, 35.359833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508438, 33.720943, 35.082714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578152, 33.631939, 35.466404>,  <27.619980, 33.578537, 35.696617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578152, 33.631939, 35.466404>,  <27.508438, 33.720943, 35.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578152, 33.631939, 35.466404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971043, 0.200488, -0.129922,
		-0.163404, 0.954093, 0.251010,
		0.174282, -0.222512, 0.959226,
		27.630436, 33.565186, 35.754173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127726, 34.077473, 35.302670>,  <27.508438, 33.720943, 35.082714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127726, 34.077473, 35.302670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079988, 33.779217, 35.564899>,  <28.051346, 33.600262, 35.722237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079988, 33.779217, 35.564899>,  <28.127726, 34.077473, 35.302670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079988, 33.779217, 35.564899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966701, -0.237817, -0.094512,
		0.226379, 0.622464, 0.749194,
		-0.119341, -0.745642, 0.655573,
		28.044186, 33.555523, 35.761570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544348, 34.222073, 35.930485>,  <28.127726, 34.077473, 35.302670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544348, 34.222073, 35.930485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465176, 33.850788, 35.804474>,  <28.417673, 33.628017, 35.728867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465176, 33.850788, 35.804474>,  <28.544348, 34.222073, 35.930485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465176, 33.850788, 35.804474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978489, -0.206171, -0.007305,
		-0.058170, -0.309700, 0.949053,
		-0.197930, -0.928213, -0.315031,
		28.405796, 33.572323, 35.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235289, 33.988419, 35.862152>,  <28.544348, 34.222073, 35.930485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235289, 33.988419, 35.862152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029812, 33.674038, 35.724510>,  <28.906527, 33.485409, 35.641926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029812, 33.674038, 35.724510>,  <29.235289, 33.988419, 35.862152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029812, 33.674038, 35.724510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857928, -0.466302, -0.215691,
		0.009064, -0.406017, 0.913820,
		-0.513690, -0.785947, -0.344107,
		28.875704, 33.438255, 35.621277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450089, 33.305626, 36.214531>,  <29.235289, 33.988419, 35.862152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450089, 33.305626, 36.214531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319847, 33.276093, 35.837482>,  <29.241703, 33.258373, 35.611256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319847, 33.276093, 35.837482>,  <29.450089, 33.305626, 36.214531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319847, 33.276093, 35.837482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900288, -0.328831, -0.285224,
		-0.288902, -0.941498, 0.173543,
		-0.325604, -0.073836, -0.942619,
		29.222166, 33.253941, 35.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490774, 32.723156, 36.063477>,  <29.450089, 33.305626, 36.214531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490774, 32.723156, 36.063477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534531, 32.929939, 35.723881>,  <29.560785, 33.054008, 35.520123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534531, 32.929939, 35.723881>,  <29.490774, 32.723156, 36.063477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534531, 32.929939, 35.723881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867103, -0.467210, -0.172762,
		-0.485968, -0.717264, -0.499368,
		0.109394, 0.516960, -0.848991,
		29.567348, 33.085026, 35.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710073, 32.199543, 35.586590>,  <29.490774, 32.723156, 36.063477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710073, 32.199543, 35.586590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832954, 32.568817, 35.494198>,  <29.906683, 32.790382, 35.438763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832954, 32.568817, 35.494198>,  <29.710073, 32.199543, 35.586590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832954, 32.568817, 35.494198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919662, -0.350397, -0.177325,
		-0.244639, -0.157947, -0.956663,
		0.307204, 0.923187, -0.230979,
		29.925116, 32.845772, 35.424904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203609, 32.188519, 34.983932>,  <29.710073, 32.199543, 35.586590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203609, 32.188519, 34.983932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293087, 32.541786, 35.148846>,  <30.346773, 32.753746, 35.247795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293087, 32.541786, 35.148846>,  <30.203609, 32.188519, 34.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293087, 32.541786, 35.148846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958424, -0.122432, -0.257749,
		-0.177158, 0.452801, -0.873834,
		0.223694, 0.883166, 0.412285,
		30.360195, 32.806736, 35.272530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556271, 32.747967, 34.553047>,  <30.203609, 32.188519, 34.983932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556271, 32.747967, 34.553047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658094, 32.860374, 34.923180>,  <30.719189, 32.927818, 35.145260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658094, 32.860374, 34.923180>,  <30.556271, 32.747967, 34.553047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658094, 32.860374, 34.923180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963779, 0.004993, -0.266655,
		-0.079554, 0.959690, -0.269566,
		0.254560, 0.281016, 0.925327,
		30.734463, 32.944679, 35.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031626, 33.296570, 34.367947>,  <30.556271, 32.747967, 34.553047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031626, 33.296570, 34.367947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093962, 33.108028, 34.715176>,  <31.131363, 32.994904, 34.923512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093962, 33.108028, 34.715176>,  <31.031626, 33.296570, 34.367947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093962, 33.108028, 34.715176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910581, -0.272040, -0.311186,
		0.382827, 0.838942, 0.386807,
		0.155840, -0.471349, 0.868069,
		31.140713, 32.966625, 34.975597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811123, 33.406780, 34.525581>,  <31.031626, 33.296570, 34.367947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811123, 33.406780, 34.525581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662886, 33.068424, 34.679016>,  <31.573944, 32.865410, 34.771076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662886, 33.068424, 34.679016>,  <31.811123, 33.406780, 34.525581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662886, 33.068424, 34.679016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903820, -0.423566, -0.060844,
		0.213941, 0.324145, 0.921499,
		-0.370593, -0.845886, 0.383586,
		31.551708, 32.814659, 34.794090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196262, 33.281071, 35.051727>,  <31.811123, 33.406780, 34.525581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196262, 33.281071, 35.051727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047192, 32.946793, 34.890369>,  <31.957748, 32.746227, 34.793556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047192, 32.946793, 34.890369>,  <32.196262, 33.281071, 35.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047192, 32.946793, 34.890369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918272, -0.394771, -0.030522,
		-0.133742, -0.381802, 0.914517,
		-0.372678, -0.835693, -0.403395,
		31.935389, 32.696083, 34.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327492, 32.624275, 35.447704>,  <32.196262, 33.281071, 35.051727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327492, 32.624275, 35.447704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345821, 32.547375, 35.055595>,  <32.356819, 32.501236, 34.820328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345821, 32.547375, 35.055595>,  <32.327492, 32.624275, 35.447704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345821, 32.547375, 35.055595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929987, -0.350073, 0.112126,
		-0.364724, -0.916782, 0.162747,
		0.045822, -0.192247, -0.980276,
		32.359570, 32.489700, 34.761513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041447, 32.286198, 35.382370>,  <32.327492, 32.624275, 35.447704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041447, 32.286198, 35.382370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942467, 32.268547, 34.995213>,  <32.883080, 32.257957, 34.762917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942467, 32.268547, 34.995213>,  <33.041447, 32.286198, 35.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942467, 32.268547, 34.995213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918706, -0.328047, -0.219918,
		-0.307811, -0.943630, 0.121715,
		-0.247450, -0.044127, -0.967896,
		32.868233, 32.255310, 34.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126457, 31.594337, 35.096256>,  <33.041447, 32.286198, 35.382370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126457, 31.594337, 35.096256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151634, 31.849531, 34.789268>,  <33.166740, 32.002647, 34.605076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151634, 31.849531, 34.789268>,  <33.126457, 31.594337, 35.096256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151634, 31.849531, 34.789268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822585, -0.468625, -0.322095,
		-0.565148, -0.611035, -0.554296,
		0.062946, 0.637987, -0.767470,
		33.170517, 32.040928, 34.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107967, 31.206318, 34.563961>,  <33.126457, 31.594337, 35.096256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107967, 31.206318, 34.563961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324940, 31.539013, 34.516663>,  <33.455124, 31.738630, 34.488285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324940, 31.539013, 34.516663>,  <33.107967, 31.206318, 34.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324940, 31.539013, 34.516663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661157, -0.509481, -0.550727,
		-0.518304, 0.220551, -0.826267,
		0.542431, 0.831737, -0.118247,
		33.487671, 31.788534, 34.481190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418499, 31.168030, 33.963047>,  <33.107967, 31.206318, 34.563961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418499, 31.168030, 33.963047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656498, 31.448034, 34.121017>,  <33.799297, 31.616037, 34.215801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656498, 31.448034, 34.121017>,  <33.418499, 31.168030, 33.963047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656498, 31.448034, 34.121017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757975, -0.325295, -0.565382,
		-0.267305, 0.635744, -0.724139,
		0.594997, 0.700009, 0.394925,
		33.834995, 31.658037, 34.239494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803612, 31.481565, 33.423687>,  <33.418499, 31.168030, 33.963047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803612, 31.481565, 33.423687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026165, 31.521233, 33.753681>,  <34.159695, 31.545033, 33.951679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026165, 31.521233, 33.753681>,  <33.803612, 31.481565, 33.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026165, 31.521233, 33.753681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713782, -0.565325, -0.413428,
		0.425388, 0.818885, -0.385321,
		0.556381, 0.099168, 0.824988,
		34.193081, 31.550983, 34.001179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389454, 31.361990, 33.105415>,  <33.803612, 31.481565, 33.423687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389454, 31.361990, 33.105415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482491, 31.352573, 33.494331>,  <34.538311, 31.346924, 33.727680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482491, 31.352573, 33.494331>,  <34.389454, 31.361990, 33.105415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482491, 31.352573, 33.494331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883960, -0.411804, -0.221431,
		0.405606, 0.910968, -0.074970,
		0.232590, -0.023543, 0.972290,
		34.552269, 31.345510, 33.786018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143124, 31.720573, 33.220428>,  <34.389454, 31.361990, 33.105415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143124, 31.720573, 33.220428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056553, 31.470320, 33.520226>,  <35.004612, 31.320168, 33.700104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056553, 31.470320, 33.520226>,  <35.143124, 31.720573, 33.220428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056553, 31.470320, 33.520226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876738, -0.462294, -0.132724,
		0.429524, 0.628386, 0.648568,
		-0.216427, -0.625632, 0.749496,
		34.991627, 31.282631, 33.745075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702713, 31.731758, 33.749767>,  <35.143124, 31.720573, 33.220428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702713, 31.731758, 33.749767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534870, 31.381256, 33.844517>,  <35.434166, 31.170956, 33.901367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534870, 31.381256, 33.844517>,  <35.702713, 31.731758, 33.749767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534870, 31.381256, 33.844517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887364, -0.450927, -0.096174,
		0.191087, 0.169840, 0.966768,
		-0.419608, -0.876253, 0.236876,
		35.408989, 31.118380, 33.915581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097031, 31.534712, 34.237423>,  <35.702713, 31.731758, 33.749767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097031, 31.534712, 34.237423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910511, 31.200249, 34.121902>,  <35.798599, 30.999571, 34.052589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910511, 31.200249, 34.121902>,  <36.097031, 31.534712, 34.237423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910511, 31.200249, 34.121902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865149, -0.499175, 0.048374,
		-0.184612, -0.227302, 0.956165,
		-0.466299, -0.836156, -0.288804,
		35.770622, 30.949402, 34.035259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568222, 30.960724, 34.517899>,  <36.097031, 31.534712, 34.237423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568222, 30.960724, 34.517899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318138, 30.789303, 34.256992>,  <36.168087, 30.686451, 34.100449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318138, 30.789303, 34.256992>,  <36.568222, 30.960724, 34.517899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318138, 30.789303, 34.256992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732903, -0.609655, -0.301951,
		-0.268257, -0.666833, 0.695250,
		-0.625213, -0.428550, -0.652267,
		36.130573, 30.660738, 34.061314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823380, 30.297695, 34.468670>,  <36.568222, 30.960724, 34.517899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823380, 30.297695, 34.468670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611996, 30.292423, 34.129128>,  <36.485165, 30.289259, 33.925404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611996, 30.292423, 34.129128>,  <36.823380, 30.297695, 34.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611996, 30.292423, 34.129128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755988, -0.462257, -0.463466,
		-0.386281, -0.886648, 0.254249,
		-0.528460, -0.013181, -0.848856,
		36.453457, 30.288469, 33.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832199, 29.591227, 34.073376>,  <36.823380, 30.297695, 34.468670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832199, 29.591227, 34.073376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744087, 29.846603, 33.778385>,  <36.691219, 29.999828, 33.601391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744087, 29.846603, 33.778385>,  <36.832199, 29.591227, 34.073376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744087, 29.846603, 33.778385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699763, -0.423291, -0.575462,
		-0.679566, -0.642820, -0.353515,
		-0.220279, 0.638441, -0.737475,
		36.678005, 30.038136, 33.557144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831654, 29.180607, 33.472374>,  <36.832199, 29.591227, 34.073376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831654, 29.180607, 33.472374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871552, 29.549179, 33.322163>,  <36.895489, 29.770323, 33.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871552, 29.549179, 33.322163>,  <36.831654, 29.180607, 33.472374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871552, 29.549179, 33.322163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512433, -0.371079, -0.774411,
		-0.852914, -0.115187, -0.509185,
		0.099746, 0.921429, -0.375524,
		36.901474, 29.825607, 33.209507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663822, 29.111706, 32.812420>,  <36.831654, 29.180607, 33.472374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663822, 29.111706, 32.812420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863361, 29.458376, 32.810390>,  <36.983086, 29.666378, 32.809174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863361, 29.458376, 32.810390>,  <36.663822, 29.111706, 32.812420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863361, 29.458376, 32.810390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464727, -0.272424, -0.842505,
		-0.731558, 0.417926, -0.538665,
		0.498850, 0.866673, -0.005073,
		37.013016, 29.718378, 32.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494789, 29.431759, 32.147907>,  <36.663822, 29.111706, 32.812420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494789, 29.431759, 32.147907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844555, 29.567211, 32.286896>,  <37.054413, 29.648483, 32.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844555, 29.567211, 32.286896>,  <36.494789, 29.431759, 32.147907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844555, 29.567211, 32.286896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423471, -0.183111, -0.887211,
		-0.236812, 0.922930, -0.303514,
		0.874410, 0.338632, 0.347471,
		37.106876, 29.668800, 32.391136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727310, 29.840155, 31.561264>,  <36.494789, 29.431759, 32.147907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727310, 29.840155, 31.561264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047039, 29.796511, 31.797632>,  <37.238876, 29.770325, 31.939453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047039, 29.796511, 31.797632>,  <36.727310, 29.840155, 31.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047039, 29.796511, 31.797632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580240, -0.115536, -0.806209,
		0.156238, 0.987292, -0.029040,
		0.799319, -0.109110, 0.590918,
		37.286835, 29.763777, 31.974907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178699, 30.307766, 31.243170>,  <36.727310, 29.840155, 31.561264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178699, 30.307766, 31.243170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391445, 30.051897, 31.465139>,  <37.519093, 29.898376, 31.598322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391445, 30.051897, 31.465139>,  <37.178699, 30.307766, 31.243170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391445, 30.051897, 31.465139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516754, -0.273988, -0.811108,
		0.670885, 0.718159, 0.184828,
		0.531864, -0.639671, 0.554926,
		37.551003, 29.859995, 31.631617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905682, 30.461849, 31.179726>,  <37.178699, 30.307766, 31.243170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905682, 30.461849, 31.179726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884941, 30.077614, 31.288967>,  <37.872498, 29.847073, 31.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884941, 30.077614, 31.288967>,  <37.905682, 30.461849, 31.179726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884941, 30.077614, 31.288967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353896, -0.273396, -0.894434,
		0.933847, 0.050276, 0.354123,
		-0.051847, -0.960587, 0.273102,
		37.869389, 29.789438, 31.370897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395447, 30.183250, 30.847498>,  <37.905682, 30.461849, 31.179726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395447, 30.183250, 30.847498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214165, 29.840693, 30.946447>,  <38.105396, 29.635157, 31.005817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214165, 29.840693, 30.946447>,  <38.395447, 30.183250, 30.847498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214165, 29.840693, 30.946447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362283, -0.430511, -0.826687,
		0.814468, -0.285037, 0.505367,
		-0.453202, -0.856396, 0.247373,
		38.078205, 29.583775, 31.020658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901688, 29.640055, 30.669636>,  <38.395447, 30.183250, 30.847498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901688, 29.640055, 30.669636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545376, 29.460079, 30.695133>,  <38.331589, 29.352095, 30.710432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545376, 29.460079, 30.695133>,  <38.901688, 29.640055, 30.669636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545376, 29.460079, 30.695133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275669, -0.646544, -0.711328,
		0.361266, -0.616066, 0.699964,
		-0.890782, -0.449937, 0.063744,
		38.278141, 29.325098, 30.714256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068893, 28.969275, 30.690376>,  <38.901688, 29.640055, 30.669636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068893, 28.969275, 30.690376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696037, 28.988401, 30.546801>,  <38.472324, 28.999878, 30.460655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696037, 28.988401, 30.546801>,  <39.068893, 28.969275, 30.690376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696037, 28.988401, 30.546801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282836, -0.522827, -0.804149,
		-0.226113, -0.851097, 0.473822,
		-0.932136, 0.047815, -0.358938,
		38.416397, 29.002747, 30.439119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845222, 28.254366, 30.612961>,  <39.068893, 28.969275, 30.690376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845222, 28.254366, 30.612961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618408, 28.492580, 30.385342>,  <38.482319, 28.635509, 30.248770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618408, 28.492580, 30.385342>,  <38.845222, 28.254366, 30.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618408, 28.492580, 30.385342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327565, -0.470834, -0.819156,
		-0.755763, -0.650886, 0.071901,
		-0.567031, 0.595535, -0.569046,
		38.448299, 28.671242, 30.214628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562103, 27.810101, 29.989624>,  <38.845222, 28.254366, 30.612961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562103, 27.810101, 29.989624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506905, 28.184008, 29.858677>,  <38.473785, 28.408352, 29.780109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506905, 28.184008, 29.858677>,  <38.562103, 27.810101, 29.989624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506905, 28.184008, 29.858677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317000, -0.271456, -0.908748,
		-0.938332, -0.229181, -0.258860,
		-0.137998, 0.934766, -0.327366,
		38.465504, 28.464437, 29.760468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985134, 27.808899, 29.389189>,  <38.562103, 27.810101, 29.989624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985134, 27.808899, 29.389189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236443, 28.115559, 29.336239>,  <38.387226, 28.299555, 29.304468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236443, 28.115559, 29.336239>,  <37.985134, 27.808899, 29.389189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236443, 28.115559, 29.336239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150011, -0.286332, -0.946314,
		-0.763394, 0.574685, -0.294900,
		0.628272, 0.766649, -0.132375,
		38.424923, 28.345554, 29.296526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810455, 28.235796, 28.740255>,  <37.985134, 27.808899, 29.389189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810455, 28.235796, 28.740255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192379, 28.344305, 28.788826>,  <38.421535, 28.409410, 28.817968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192379, 28.344305, 28.788826>,  <37.810455, 28.235796, 28.740255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192379, 28.344305, 28.788826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206664, -0.312366, -0.927209,
		-0.213598, 0.910405, -0.354313,
		0.954812, 0.271274, 0.121427,
		38.478821, 28.425688, 28.825254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912949, 28.532459, 28.137903>,  <37.810455, 28.235796, 28.740255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912949, 28.532459, 28.137903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277290, 28.470007, 28.290726>,  <38.495895, 28.432535, 28.382420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277290, 28.470007, 28.290726>,  <37.912949, 28.532459, 28.137903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277290, 28.470007, 28.290726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345352, -0.218556, -0.912669,
		0.225995, 0.963253, -0.145153,
		0.910856, -0.156130, 0.382054,
		38.550549, 28.423168, 28.405342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345074, 28.866343, 27.720703>,  <37.912949, 28.532459, 28.137903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345074, 28.866343, 27.720703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540932, 28.562647, 27.892193>,  <38.658447, 28.380430, 27.995087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540932, 28.562647, 27.892193>,  <38.345074, 28.866343, 27.720703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540932, 28.562647, 27.892193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316960, -0.303072, -0.898712,
		0.812271, 0.575939, 0.092250,
		0.489645, -0.759237, 0.428726,
		38.687824, 28.334875, 28.020811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923828, 28.744713, 27.272528>,  <38.345074, 28.866343, 27.720703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923828, 28.744713, 27.272528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913601, 28.405260, 27.483875>,  <38.907467, 28.201590, 27.610683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913601, 28.405260, 27.483875>,  <38.923828, 28.744713, 27.272528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913601, 28.405260, 27.483875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318809, -0.507863, -0.800272,
		0.947474, 0.147990, 0.283534,
		-0.025564, -0.848630, 0.528368,
		38.905933, 28.150671, 27.642385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484665, 28.410761, 27.084963>,  <38.923828, 28.744713, 27.272528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484665, 28.410761, 27.084963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227303, 28.132925, 27.213696>,  <39.072884, 27.966223, 27.290936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227303, 28.132925, 27.213696>,  <39.484665, 28.410761, 27.084963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227303, 28.132925, 27.213696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187267, -0.550440, -0.813601,
		0.742267, -0.463207, 0.484230,
		-0.643406, -0.694589, 0.321831,
		39.034283, 27.924549, 27.310246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894394, 27.787136, 27.066412>,  <39.484665, 28.410761, 27.084963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894394, 27.787136, 27.066412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503548, 27.702080, 27.064363>,  <39.269039, 27.651045, 27.063135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503548, 27.702080, 27.064363>,  <39.894394, 27.787136, 27.066412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503548, 27.702080, 27.064363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118562, -0.524503, -0.843113,
		0.176596, -0.824427, 0.537712,
		-0.977116, -0.212643, -0.005120,
		39.210411, 27.638287, 27.062828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497852, 27.147041, 27.323629>,  <39.894394, 27.787136, 27.066412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497852, 27.147041, 27.323629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207230, 27.048847, 27.066927>,  <39.032856, 26.989931, 26.912907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207230, 27.048847, 27.066927>,  <39.497852, 27.147041, 27.323629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207230, 27.048847, 27.066927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657031, 0.025075, -0.753446,
		0.201054, -0.969075, 0.143075,
		-0.726559, -0.245488, -0.641754,
		38.989262, 26.975201, 26.874401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863800, 26.827356, 26.747646>,  <39.497852, 27.147041, 27.323629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863800, 26.827356, 26.747646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524323, 26.955202, 26.579096>,  <39.320637, 27.031910, 26.477964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524323, 26.955202, 26.579096>,  <39.863800, 26.827356, 26.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524323, 26.955202, 26.579096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506354, 0.261008, -0.821876,
		-0.152700, -0.910891, -0.383355,
		-0.848698, 0.319614, -0.421377,
		39.269714, 27.051086, 26.452682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896301, 26.598286, 26.095512>,  <39.863800, 26.827356, 26.747646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896301, 26.598286, 26.095512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604435, 26.861927, 26.022671>,  <39.429314, 27.020113, 25.978966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604435, 26.861927, 26.022671>,  <39.896301, 26.598286, 26.095512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604435, 26.861927, 26.022671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590720, 0.473440, -0.653379,
		-0.344430, -0.584324, -0.734802,
		-0.729669, 0.659106, -0.182105,
		39.385532, 27.059658, 25.968039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868225, 26.653347, 25.385695>,  <39.896301, 26.598286, 26.095512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868225, 26.653347, 25.385695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705814, 26.987667, 25.533522>,  <39.608368, 27.188259, 25.622217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705814, 26.987667, 25.533522>,  <39.868225, 26.653347, 25.385695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705814, 26.987667, 25.533522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459728, 0.536313, -0.707827,
		-0.789807, -0.117494, -0.601997,
		-0.406024, 0.835802, 0.369568,
		39.584007, 27.238407, 25.644392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544132, 26.896973, 24.866777>,  <39.868225, 26.653347, 25.385695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544132, 26.896973, 24.866777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597225, 27.222124, 25.093620>,  <39.629082, 27.417215, 25.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597225, 27.222124, 25.093620>,  <39.544132, 26.896973, 24.866777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597225, 27.222124, 25.093620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292203, 0.514646, -0.806075,
		-0.947100, 0.272704, -0.169215,
		0.132734, 0.812879, 0.567106,
		39.637047, 27.465988, 25.263752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101669, 27.398638, 24.612078>,  <39.544132, 26.896973, 24.866777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101669, 27.398638, 24.612078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390362, 27.597363, 24.804859>,  <39.563576, 27.716597, 24.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390362, 27.597363, 24.804859>,  <39.101669, 27.398638, 24.612078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390362, 27.597363, 24.804859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134949, 0.581935, -0.801960,
		-0.678889, 0.643840, 0.352957,
		0.721733, 0.496810, 0.481955,
		39.606880, 27.746407, 24.949446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893509, 28.069208, 24.618212>,  <39.101669, 27.398638, 24.612078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893509, 28.069208, 24.618212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288612, 28.090012, 24.677032>,  <39.525677, 28.102493, 24.712324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288612, 28.090012, 24.677032>,  <38.893509, 28.069208, 24.618212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288612, 28.090012, 24.677032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053674, 0.771860, -0.633523,
		-0.146453, 0.633662, 0.759621,
		0.987760, 0.052010, 0.147052,
		39.584942, 28.105614, 24.721148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968559, 28.763393, 24.555393>,  <38.893509, 28.069208, 24.618212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968559, 28.763393, 24.555393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339279, 28.614923, 24.532492>,  <39.561710, 28.525841, 24.518751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339279, 28.614923, 24.532492>,  <38.968559, 28.763393, 24.555393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339279, 28.614923, 24.532492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281066, 0.786603, -0.549779,
		0.249103, 0.493440, 0.833345,
		0.926795, -0.371177, -0.057256,
		39.617317, 28.503571, 24.515314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500916, 29.364780, 24.664894>,  <38.968559, 28.763393, 24.555393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500916, 29.364780, 24.664894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658134, 29.067568, 24.448225>,  <39.752468, 28.889240, 24.318222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658134, 29.067568, 24.448225>,  <39.500916, 29.364780, 24.664894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658134, 29.067568, 24.448225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052018, 0.606111, -0.793677,
		0.918044, 0.283778, 0.276884,
		0.393051, -0.743034, -0.541675,
		39.776051, 28.844658, 24.285723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989109, 29.686367, 24.303507>,  <39.500916, 29.364780, 24.664894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989109, 29.686367, 24.303507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011951, 29.335203, 24.113344>,  <40.025658, 29.124504, 23.999247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011951, 29.335203, 24.113344>,  <39.989109, 29.686367, 24.303507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011951, 29.335203, 24.113344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266295, 0.472330, -0.840233,
		0.962198, -0.078613, 0.260758,
		0.057110, -0.877909, -0.475409,
		40.029083, 29.071831, 23.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656170, 29.645048, 23.907354>,  <39.989109, 29.686367, 24.303507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656170, 29.645048, 23.907354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419521, 29.386843, 23.714151>,  <40.277531, 29.231918, 23.598230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419521, 29.386843, 23.714151>,  <40.656170, 29.645048, 23.907354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419521, 29.386843, 23.714151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314279, 0.367051, -0.875501,
		0.742437, -0.669763, -0.014282,
		-0.591621, -0.645516, -0.483005,
		40.242035, 29.193188, 23.569250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064636, 29.424837, 23.346590>,  <40.656170, 29.645048, 23.907354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064636, 29.424837, 23.346590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693024, 29.316034, 23.246262>,  <40.470055, 29.250753, 23.186064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693024, 29.316034, 23.246262>,  <41.064636, 29.424837, 23.346590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693024, 29.316034, 23.246262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197004, 0.210166, -0.957611,
		0.313192, -0.939065, -0.141665,
		-0.929032, -0.272008, -0.250822,
		40.414314, 29.234432, 23.171015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161785, 28.970566, 22.811583>,  <41.064636, 29.424837, 23.346590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161785, 28.970566, 22.811583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790207, 29.115080, 22.779268>,  <40.567261, 29.201788, 22.759880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790207, 29.115080, 22.779268>,  <41.161785, 28.970566, 22.811583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790207, 29.115080, 22.779268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182899, 0.258158, -0.948632,
		-0.321871, -0.896006, -0.305895,
		-0.928949, 0.361285, -0.080785,
		40.511520, 29.223465, 22.755033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111229, 28.869225, 22.098906>,  <41.161785, 28.970566, 22.811583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111229, 28.869225, 22.098906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809166, 29.101238, 22.221090>,  <40.627930, 29.240446, 22.294401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809166, 29.101238, 22.221090>,  <41.111229, 28.869225, 22.098906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809166, 29.101238, 22.221090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012287, 0.478404, -0.878054,
		-0.655434, -0.659311, -0.368395,
		-0.755152, 0.580033, 0.305461,
		40.582619, 29.275248, 22.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575417, 28.832781, 21.588860>,  <41.111229, 28.869225, 22.098906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575417, 28.832781, 21.588860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578239, 29.179258, 21.788723>,  <40.579933, 29.387144, 21.908642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578239, 29.179258, 21.788723>,  <40.575417, 28.832781, 21.588860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578239, 29.179258, 21.788723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210558, 0.487182, -0.847537,
		-0.977556, 0.111190, -0.178945,
		0.007058, 0.866193, 0.499660,
		40.580357, 29.439116, 21.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967854, 29.131712, 21.481840>,  <40.575417, 28.832781, 21.588860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967854, 29.131712, 21.481840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287228, 29.363888, 21.545830>,  <40.478851, 29.503193, 21.584225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287228, 29.363888, 21.545830>,  <39.967854, 29.131712, 21.481840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287228, 29.363888, 21.545830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089020, 0.148976, -0.984826,
		-0.595463, 0.800561, 0.067278,
		0.798435, 0.580438, 0.159976,
		40.526760, 29.538019, 21.593822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687981, 29.887449, 21.254169>,  <39.967854, 29.131712, 21.481840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687981, 29.887449, 21.254169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990993, 30.131573, 21.161505>,  <40.172802, 30.278046, 21.105906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990993, 30.131573, 21.161505>,  <39.687981, 29.887449, 21.254169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990993, 30.131573, 21.161505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167814, -0.525013, -0.834386,
		-0.630857, 0.593200, -0.500134,
		0.757534, 0.610307, -0.231661,
		40.218254, 30.314665, 21.092007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778805, 30.032379, 20.459118>,  <39.687981, 29.887449, 21.254169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778805, 30.032379, 20.459118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128780, 30.086117, 20.645210>,  <40.338764, 30.118359, 20.756866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128780, 30.086117, 20.645210>,  <39.778805, 30.032379, 20.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128780, 30.086117, 20.645210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482822, -0.315513, -0.816906,
		0.037040, 0.939363, -0.340917,
		0.874935, 0.134344, 0.465232,
		40.391262, 30.126419, 20.784781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407383, 30.308485, 20.075163>,  <39.778805, 30.032379, 20.459118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407383, 30.308485, 20.075163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594231, 30.122366, 20.375906>,  <40.706341, 30.010695, 20.556353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594231, 30.122366, 20.375906>,  <40.407383, 30.308485, 20.075163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594231, 30.122366, 20.375906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750719, -0.240535, -0.615275,
		0.467135, 0.851845, 0.236949,
		0.467124, -0.465299, 0.751859,
		40.734367, 29.982777, 20.601463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965942, 30.653271, 20.074318>,  <40.407383, 30.308485, 20.075163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965942, 30.653271, 20.074318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166557, 30.605280, 19.731607>,  <41.286926, 30.576485, 19.525982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166557, 30.605280, 19.731607>,  <40.965942, 30.653271, 20.074318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166557, 30.605280, 19.731607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470422, 0.793313, -0.386467,
		0.726058, 0.596874, 0.341438,
		0.501540, -0.119978, -0.856775,
		41.317020, 30.569286, 19.474575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544430, 31.183041, 19.949312>,  <40.965942, 30.653271, 20.074318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544430, 31.183041, 19.949312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364994, 31.035749, 19.623569>,  <41.257332, 30.947374, 19.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364994, 31.035749, 19.623569>,  <41.544430, 31.183041, 19.949312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364994, 31.035749, 19.623569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216088, 0.928833, -0.300958,
		0.867222, 0.040966, -0.496233,
		-0.448588, -0.368228, -0.814357,
		41.230419, 30.925282, 19.379263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879112, 30.918447, 20.644188>,  <41.544430, 31.183041, 19.949312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879112, 30.918447, 20.644188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207661, 30.763662, 20.811813>,  <42.404789, 30.670792, 20.912388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207661, 30.763662, 20.811813>,  <41.879112, 30.918447, 20.644188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207661, 30.763662, 20.811813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537899, 0.281035, -0.794786,
		0.189780, 0.878226, 0.438980,
		0.821370, -0.386961, 0.419061,
		42.454071, 30.647573, 20.937532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408298, 30.464891, 20.805971>,  <41.879112, 30.918447, 20.644188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408298, 30.464891, 20.805971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019634, 30.448650, 20.712824>,  <40.786434, 30.438906, 20.656935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019634, 30.448650, 20.712824>,  <41.408298, 30.464891, 20.805971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019634, 30.448650, 20.712824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216427, 0.548975, 0.807332,
		0.095059, 0.834852, -0.542205,
		-0.971660, -0.040603, -0.232870,
		40.728138, 30.436470, 20.642963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127003, 31.155148, 20.850500>,  <41.408298, 30.464891, 20.805971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127003, 31.155148, 20.850500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811970, 30.913364, 20.898409>,  <40.622952, 30.768293, 20.927155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811970, 30.913364, 20.898409>,  <41.127003, 31.155148, 20.850500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811970, 30.913364, 20.898409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316202, 0.563258, 0.763385,
		-0.528897, 0.563356, -0.634743,
		-0.787581, -0.604459, 0.119771,
		40.575695, 30.732027, 20.934340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567493, 31.580124, 20.854771>,  <41.127003, 31.155148, 20.850500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567493, 31.580124, 20.854771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481201, 31.245569, 21.056330>,  <40.429424, 31.044836, 21.177265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481201, 31.245569, 21.056330>,  <40.567493, 31.580124, 20.854771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481201, 31.245569, 21.056330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374374, 0.547463, 0.748417,
		-0.901833, -0.027188, -0.431228,
		-0.215733, -0.836388, 0.503899,
		40.416481, 30.994654, 21.207500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969856, 31.592920, 21.005527>,  <40.567493, 31.580124, 20.854771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969856, 31.592920, 21.005527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070789, 31.311323, 21.271076>,  <40.131348, 31.142365, 21.430405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070789, 31.311323, 21.271076>,  <39.969856, 31.592920, 21.005527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070789, 31.311323, 21.271076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359916, 0.568564, 0.739727,
		-0.898215, -0.425591, -0.109914,
		0.252328, -0.703994, 0.663870,
		40.146488, 31.100124, 21.470238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359970, 31.504602, 21.516674>,  <39.969856, 31.592920, 21.005527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359970, 31.504602, 21.516674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673779, 31.340403, 21.702585>,  <39.862064, 31.241882, 21.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673779, 31.340403, 21.702585>,  <39.359970, 31.504602, 21.516674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673779, 31.340403, 21.702585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275745, 0.440400, 0.854407,
		-0.555423, -0.798459, 0.232309,
		0.784519, -0.410500, 0.464780,
		39.909134, 31.217253, 21.842020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068123, 31.215437, 22.159084>,  <39.359970, 31.504602, 21.516674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068123, 31.215437, 22.159084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459938, 31.278568, 22.209049>,  <39.695026, 31.316446, 22.239029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459938, 31.278568, 22.209049>,  <39.068123, 31.215437, 22.159084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459938, 31.278568, 22.209049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164868, 0.273130, 0.947744,
		0.115461, -0.948942, 0.293560,
		0.979534, 0.157826, 0.124914,
		39.753799, 31.325916, 22.246523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121731, 30.934134, 22.756067>,  <39.068123, 31.215437, 22.159084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121731, 30.934134, 22.756067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452976, 31.156858, 22.730173>,  <39.651722, 31.290493, 22.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452976, 31.156858, 22.730173>,  <39.121731, 30.934134, 22.756067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452976, 31.156858, 22.730173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048962, 0.186886, 0.981161,
		0.558419, -0.809342, 0.182025,
		0.828113, 0.556811, -0.064734,
		39.701408, 31.323902, 22.710752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436310, 30.740391, 23.424656>,  <39.121731, 30.934134, 22.756067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436310, 30.740391, 23.424656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618992, 31.054270, 23.257004>,  <39.728600, 31.242598, 23.156412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618992, 31.054270, 23.257004>,  <39.436310, 30.740391, 23.424656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618992, 31.054270, 23.257004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304623, 0.304713, 0.902416,
		0.835840, -0.539811, -0.099875,
		0.456701, 0.784700, -0.419131,
		39.756001, 31.289680, 23.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130791, 30.795517, 23.628998>,  <39.436310, 30.740391, 23.424656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130791, 30.795517, 23.628998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016876, 31.166943, 23.533779>,  <39.948528, 31.389797, 23.476648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016876, 31.166943, 23.533779>,  <40.130791, 30.795517, 23.628998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016876, 31.166943, 23.533779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304830, 0.323165, 0.895903,
		0.908831, 0.182581, -0.375088,
		-0.284790, 0.928563, -0.238046,
		39.931438, 31.445511, 23.462366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441727, 31.243177, 24.141003>,  <40.130791, 30.795517, 23.628998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441727, 31.243177, 24.141003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173355, 31.490561, 23.977362>,  <40.012333, 31.638990, 23.879177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173355, 31.490561, 23.977362>,  <40.441727, 31.243177, 24.141003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173355, 31.490561, 23.977362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011612, 0.542874, 0.839734,
		0.741431, 0.568152, -0.357048,
		-0.670929, 0.618459, -0.409101,
		39.972076, 31.676098, 23.854631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670956, 31.875174, 24.313534>,  <40.441727, 31.243177, 24.141003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670956, 31.875174, 24.313534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282288, 31.943258, 24.247955>,  <40.049088, 31.984110, 24.208609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282288, 31.943258, 24.247955>,  <40.670956, 31.875174, 24.313534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282288, 31.943258, 24.247955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049324, 0.532383, 0.845065,
		0.231122, 0.829214, -0.508907,
		-0.971674, 0.170211, -0.163946,
		39.990784, 31.994322, 24.198772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527653, 32.644505, 24.427004>,  <40.670956, 31.875174, 24.313534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527653, 32.644505, 24.427004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192287, 32.432774, 24.478954>,  <39.991066, 32.305733, 24.510124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192287, 32.432774, 24.478954>,  <40.527653, 32.644505, 24.427004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192287, 32.432774, 24.478954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230457, 0.560242, 0.795624,
		-0.493912, 0.637133, -0.591704,
		-0.838416, -0.529331, 0.129878,
		39.940762, 32.273975, 24.517918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041096, 33.103340, 24.637894>,  <40.527653, 32.644505, 24.427004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041096, 33.103340, 24.637894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858921, 32.758736, 24.727676>,  <39.749619, 32.551971, 24.781546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858921, 32.758736, 24.727676>,  <40.041096, 33.103340, 24.637894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858921, 32.758736, 24.727676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535283, 0.466447, 0.704201,
		-0.711373, 0.200569, -0.673587,
		-0.455434, -0.861510, 0.224457,
		39.722290, 32.500282, 24.795013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435692, 33.317501, 24.830780>,  <40.041096, 33.103340, 24.637894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435692, 33.317501, 24.830780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460407, 32.943451, 24.970341>,  <39.475235, 32.719021, 25.054077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460407, 32.943451, 24.970341>,  <39.435692, 33.317501, 24.830780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460407, 32.943451, 24.970341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432084, 0.290054, 0.853916,
		-0.899715, -0.203514, -0.386129,
		0.061785, -0.935121, 0.348900,
		39.478943, 32.662914, 25.075010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774147, 33.160454, 25.173056>,  <39.435692, 33.317501, 24.830780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774147, 33.160454, 25.173056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032436, 32.902702, 25.336922>,  <39.187408, 32.748051, 25.435242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032436, 32.902702, 25.336922>,  <38.774147, 33.160454, 25.173056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032436, 32.902702, 25.336922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475206, 0.080825, 0.876154,
		-0.597683, -0.760426, -0.254020,
		0.645720, -0.644375, 0.409667,
		39.226151, 32.709389, 25.459822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303993, 32.711502, 25.462948>,  <38.774147, 33.160454, 25.173056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303993, 32.711502, 25.462948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657806, 32.652744, 25.640047>,  <38.870094, 32.617489, 25.746305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657806, 32.652744, 25.640047>,  <38.303993, 32.711502, 25.462948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657806, 32.652744, 25.640047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458201, -0.095565, 0.883696,
		-0.087451, -0.984533, -0.151813,
		0.884536, -0.146841, 0.442757,
		38.923164, 32.608677, 25.772871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263229, 32.040447, 25.772713>,  <38.303993, 32.711502, 25.462948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263229, 32.040447, 25.772713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547348, 32.259247, 25.949919>,  <38.717819, 32.390526, 26.056242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547348, 32.259247, 25.949919>,  <38.263229, 32.040447, 25.772713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547348, 32.259247, 25.949919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530368, 0.002095, 0.847765,
		0.462802, -0.837128, 0.291601,
		0.710299, 0.547003, 0.443016,
		38.760437, 32.423347, 26.082825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273773, 31.745667, 26.424809>,  <38.263229, 32.040447, 25.772713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273773, 31.745667, 26.424809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455837, 32.098927, 26.470203>,  <38.565075, 32.310883, 26.497440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455837, 32.098927, 26.470203>,  <38.273773, 31.745667, 26.424809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455837, 32.098927, 26.470203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384620, 0.080057, 0.919597,
		0.803056, -0.462211, 0.376116,
		0.455158, 0.883149, 0.113485,
		38.592384, 32.363873, 26.504250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514217, 31.727640, 27.060953>,  <38.273773, 31.745667, 26.424809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514217, 31.727640, 27.060953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501549, 32.118107, 26.975071>,  <38.493946, 32.352386, 26.923542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501549, 32.118107, 26.975071>,  <38.514217, 31.727640, 27.060953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501549, 32.118107, 26.975071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497819, 0.170867, 0.850282,
		0.866702, 0.133815, 0.480542,
		-0.031671, 0.976165, -0.214706,
		38.492046, 32.410957, 26.910660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652882, 32.018719, 27.708683>,  <38.514217, 31.727640, 27.060953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652882, 32.018719, 27.708683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491615, 32.323189, 27.505480>,  <38.394855, 32.505871, 27.383558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491615, 32.323189, 27.505480>,  <38.652882, 32.018719, 27.708683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491615, 32.323189, 27.505480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535205, 0.254164, 0.805578,
		0.742300, 0.596674, 0.304910,
		-0.403170, 0.761170, -0.508009,
		38.370663, 32.551540, 27.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656841, 32.546074, 28.212708>,  <38.652882, 32.018719, 27.708683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656841, 32.546074, 28.212708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422573, 32.703083, 27.929039>,  <38.282013, 32.797287, 27.758839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422573, 32.703083, 27.929039>,  <38.656841, 32.546074, 28.212708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422573, 32.703083, 27.929039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603403, 0.373047, 0.704798,
		0.541200, 0.840693, 0.018366,
		-0.585668, 0.392519, -0.709170,
		38.246872, 32.820839, 27.716288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662952, 33.327003, 28.152054>,  <38.656841, 32.546074, 28.212708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662952, 33.327003, 28.152054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320873, 33.159729, 28.029577>,  <38.115623, 33.059364, 27.956091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320873, 33.159729, 28.029577>,  <38.662952, 33.327003, 28.152054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320873, 33.159729, 28.029577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441533, 0.278427, 0.852952,
		-0.271437, 0.864640, -0.422753,
		-0.855202, -0.418182, -0.306192,
		38.064312, 33.034275, 27.937719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162563, 33.772526, 28.564297>,  <38.662952, 33.327003, 28.152054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162563, 33.772526, 28.564297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912548, 33.531551, 28.365744>,  <37.762539, 33.386967, 28.246611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912548, 33.531551, 28.365744>,  <38.162563, 33.772526, 28.564297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912548, 33.531551, 28.365744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743762, 0.266584, 0.612986,
		-0.236958, 0.752330, -0.614695,
		-0.625036, -0.602439, -0.496385,
		37.725037, 33.350819, 28.216827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589596, 34.135944, 28.461205>,  <38.162563, 33.772526, 28.564297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589596, 34.135944, 28.461205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481476, 33.750874, 28.466696>,  <37.416603, 33.519833, 28.469992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481476, 33.750874, 28.466696>,  <37.589596, 34.135944, 28.461205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481476, 33.750874, 28.466696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658703, 0.195316, 0.726610,
		-0.702172, 0.187362, -0.686913,
		-0.270304, -0.962677, 0.013729,
		37.400383, 33.462070, 28.470814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885071, 34.231934, 28.362091>,  <37.589596, 34.135944, 28.461205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885071, 34.231934, 28.362091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955833, 33.870041, 28.517092>,  <36.998291, 33.652905, 28.610092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955833, 33.870041, 28.517092>,  <36.885071, 34.231934, 28.362091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955833, 33.870041, 28.517092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542323, 0.238948, 0.805474,
		-0.821334, -0.352644, -0.448388,
		0.176905, -0.904735, 0.387504,
		37.008904, 33.598621, 28.633343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292465, 34.034061, 28.639376>,  <36.885071, 34.231934, 28.362091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292465, 34.034061, 28.639376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568329, 33.834431, 28.849249>,  <36.733849, 33.714653, 28.975172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568329, 33.834431, 28.849249>,  <36.292465, 34.034061, 28.639376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568329, 33.834431, 28.849249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440374, 0.286124, 0.851002,
		-0.574839, -0.817958, -0.022452,
		0.689660, -0.499076, 0.524683,
		36.775227, 33.684708, 29.006653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953117, 33.597816, 29.037800>,  <36.292465, 34.034061, 28.639376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953117, 33.597816, 29.037800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311760, 33.640865, 29.209616>,  <36.526947, 33.666695, 29.312706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311760, 33.640865, 29.209616>,  <35.953117, 33.597816, 29.037800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311760, 33.640865, 29.209616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441274, 0.136207, 0.886975,
		0.036951, -0.984817, 0.169615,
		0.896611, 0.107622, 0.429542,
		36.580742, 33.673153, 29.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047512, 33.093628, 29.546497>,  <35.953117, 33.597816, 29.037800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047512, 33.093628, 29.546497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347534, 33.329014, 29.667250>,  <36.527546, 33.470245, 29.739700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347534, 33.329014, 29.667250>,  <36.047512, 33.093628, 29.546497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347534, 33.329014, 29.667250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353937, -0.028444, 0.934837,
		0.558704, -0.808023, 0.186944,
		0.750052, 0.588463, 0.301881,
		36.572548, 33.505554, 29.757814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276199, 32.850014, 30.266588>,  <36.047512, 33.093628, 29.546497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276199, 32.850014, 30.266588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457363, 33.205986, 30.245043>,  <36.566063, 33.419567, 30.232115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457363, 33.205986, 30.245043>,  <36.276199, 32.850014, 30.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457363, 33.205986, 30.245043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297300, 0.207711, 0.931917,
		0.840526, -0.406061, 0.358650,
		0.452911, 0.889927, -0.053865,
		36.593235, 33.472965, 30.228884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764900, 32.903767, 30.957396>,  <36.276199, 32.850014, 30.266588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764900, 32.903767, 30.957396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684586, 33.268177, 30.813326>,  <36.636398, 33.486824, 30.726885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684586, 33.268177, 30.813326>,  <36.764900, 32.903767, 30.957396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684586, 33.268177, 30.813326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288556, 0.296349, 0.910447,
		0.936174, 0.286732, 0.203379,
		-0.200783, 0.911022, -0.360172,
		36.624352, 33.541485, 30.705275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066238, 33.329025, 31.410742>,  <36.764900, 32.903767, 30.957396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066238, 33.329025, 31.410742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791836, 33.557186, 31.230057>,  <36.627193, 33.694080, 31.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791836, 33.557186, 31.230057>,  <37.066238, 33.329025, 31.410742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791836, 33.557186, 31.230057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334647, 0.303914, 0.891991,
		0.646071, 0.763074, -0.017605,
		-0.686006, 0.570398, -0.451710,
		36.586033, 33.728306, 31.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087486, 33.973629, 31.780394>,  <37.066238, 33.329025, 31.410742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087486, 33.973629, 31.780394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743534, 33.980320, 31.576303>,  <36.537163, 33.984333, 31.453850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743534, 33.980320, 31.576303>,  <37.087486, 33.973629, 31.780394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743534, 33.980320, 31.576303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456040, 0.424007, 0.782461,
		0.229426, 0.905504, -0.356967,
		-0.859878, 0.016726, -0.510225,
		36.485569, 33.985336, 31.423237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890751, 34.575443, 31.948017>,  <37.087486, 33.973629, 31.780394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890751, 34.575443, 31.948017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557316, 34.392101, 31.824699>,  <36.357254, 34.282097, 31.750708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557316, 34.392101, 31.824699>,  <36.890751, 34.575443, 31.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557316, 34.392101, 31.824699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512526, 0.433597, 0.741155,
		-0.206034, 0.775827, -0.596358,
		-0.833587, -0.458351, -0.308296,
		36.307240, 34.254597, 31.732210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368595, 35.098812, 31.976009>,  <36.890751, 34.575443, 31.948017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368595, 35.098812, 31.976009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191254, 34.740559, 31.990297>,  <36.084846, 34.525608, 31.998871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191254, 34.740559, 31.990297>,  <36.368595, 35.098812, 31.976009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191254, 34.740559, 31.990297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509090, 0.284408, 0.812366,
		-0.737742, 0.341983, -0.582052,
		-0.443356, -0.895634, 0.035719,
		36.058247, 34.471867, 32.001015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527660, 35.154518, 32.003914>,  <36.368595, 35.098812, 31.976009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527660, 35.154518, 32.003914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590382, 34.776596, 32.118984>,  <35.628014, 34.549843, 32.188026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590382, 34.776596, 32.118984>,  <35.527660, 35.154518, 32.003914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590382, 34.776596, 32.118984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589930, 0.144012, 0.794508,
		-0.792084, -0.294289, -0.534787,
		0.156799, -0.944804, 0.287679,
		35.637421, 34.493156, 32.205288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813137, 34.958946, 32.209995>,  <35.527660, 35.154518, 32.003914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813137, 34.958946, 32.209995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075649, 34.703766, 32.371151>,  <35.233154, 34.550659, 32.467846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075649, 34.703766, 32.371151>,  <34.813137, 34.958946, 32.209995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075649, 34.703766, 32.371151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457459, 0.088217, 0.884844,
		-0.600027, -0.765010, -0.233941,
		0.656277, -0.637948, 0.402893,
		35.272533, 34.512383, 32.492020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493050, 34.439331, 32.587162>,  <34.813137, 34.958946, 32.209995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493050, 34.439331, 32.587162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846123, 34.419781, 32.774132>,  <35.057968, 34.408051, 32.886314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846123, 34.419781, 32.774132>,  <34.493050, 34.439331, 32.587162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846123, 34.419781, 32.774132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467339, 0.013812, 0.883971,
		-0.049659, -0.998709, -0.010650,
		0.882683, -0.048874, 0.467421,
		35.110928, 34.405117, 32.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515553, 33.845337, 33.044373>,  <34.493050, 34.439331, 32.587162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515553, 33.845337, 33.044373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785927, 34.085232, 33.215687>,  <34.948151, 34.229168, 33.318474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785927, 34.085232, 33.215687>,  <34.515553, 33.845337, 33.044373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785927, 34.085232, 33.215687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405925, -0.182054, 0.895590,
		0.615087, -0.779214, 0.120391,
		0.675938, 0.599735, 0.428282,
		34.988708, 34.265152, 33.344170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691380, 33.603680, 33.730400>,  <34.515553, 33.845337, 33.044373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691380, 33.603680, 33.730400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863434, 33.956997, 33.804989>,  <34.966667, 34.168987, 33.849743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863434, 33.956997, 33.804989>,  <34.691380, 33.603680, 33.730400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863434, 33.956997, 33.804989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284661, -0.063311, 0.956536,
		0.856708, -0.464524, 0.224207,
		0.430139, 0.883294, 0.186470,
		34.992477, 34.221985, 33.860931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203602, 33.506893, 34.367393>,  <34.691380, 33.603680, 33.730400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203602, 33.506893, 34.367393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064053, 33.880295, 34.334263>,  <34.980324, 34.104336, 34.314384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064053, 33.880295, 34.334263>,  <35.203602, 33.506893, 34.367393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064053, 33.880295, 34.334263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336682, -0.042370, 0.940665,
		0.874603, 0.356061, 0.329075,
		-0.348877, 0.933501, -0.082822,
		34.959389, 34.160347, 34.309418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314606, 33.694202, 34.989635>,  <35.203602, 33.506893, 34.367393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314606, 33.694202, 34.989635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047413, 33.958763, 34.853195>,  <34.887096, 34.117500, 34.771332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047413, 33.958763, 34.853195>,  <35.314606, 33.694202, 34.989635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047413, 33.958763, 34.853195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472017, -0.022196, 0.881310,
		0.575328, 0.749704, 0.327019,
		-0.667980, 0.661401, -0.341103,
		34.847019, 34.157185, 34.750866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312691, 34.227940, 35.485569>,  <35.314606, 33.694202, 34.989635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312691, 34.227940, 35.485569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951744, 34.285221, 35.322979>,  <34.735176, 34.319588, 35.225426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951744, 34.285221, 35.322979>,  <35.312691, 34.227940, 35.485569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951744, 34.285221, 35.322979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376582, 0.196614, 0.905278,
		0.209556, 0.969967, -0.123491,
		-0.902370, 0.143202, -0.406473,
		34.681034, 34.328182, 35.201038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924744, 33.901806, 35.544044>,  <35.312691, 34.227940, 35.485569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924744, 33.901806, 35.544044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114204, 34.167576, 35.775288>,  <36.227879, 34.327038, 35.914032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114204, 34.167576, 35.775288>,  <35.924744, 33.901806, 35.544044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114204, 34.167576, 35.775288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622414, 0.211878, -0.753465,
		-0.623105, 0.716696, -0.313189,
		0.473647, 0.664420, 0.578104,
		36.256298, 34.366901, 35.948719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078087, 34.481754, 35.107666>,  <35.924744, 33.901806, 35.544044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078087, 34.481754, 35.107666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332035, 34.487858, 35.416653>,  <36.484406, 34.491520, 35.602043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332035, 34.487858, 35.416653>,  <36.078087, 34.481754, 35.107666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332035, 34.487858, 35.416653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771556, 0.039874, -0.634911,
		-0.040491, 0.999088, 0.013539,
		0.634872, 0.015262, 0.772467,
		36.522495, 34.492435, 35.648392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572247, 34.978336, 34.976505>,  <36.078087, 34.481754, 35.107666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572247, 34.978336, 34.976505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754391, 34.741791, 35.242718>,  <36.863678, 34.599865, 35.402447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754391, 34.741791, 35.242718>,  <36.572247, 34.978336, 34.976505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754391, 34.741791, 35.242718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723500, -0.189846, -0.663707,
		0.518841, 0.783740, 0.341403,
		0.455359, -0.591363, 0.665535,
		36.890999, 34.564381, 35.442379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229794, 35.153141, 34.920868>,  <36.572247, 34.978336, 34.976505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229794, 35.153141, 34.920868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243301, 34.780357, 35.065266>,  <37.251404, 34.556686, 35.151905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243301, 34.780357, 35.065266>,  <37.229794, 35.153141, 34.920868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243301, 34.780357, 35.065266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771401, -0.205355, -0.602304,
		0.635453, 0.298808, 0.711979,
		0.033765, -0.931957, 0.360995,
		37.253429, 34.500771, 35.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902687, 34.946831, 35.048397>,  <37.229794, 35.153141, 34.920868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902687, 34.946831, 35.048397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722477, 34.590397, 35.026485>,  <37.614353, 34.376537, 35.013336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722477, 34.590397, 35.026485>,  <37.902687, 34.946831, 35.048397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722477, 34.590397, 35.026485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706046, -0.318072, -0.632716,
		0.546378, -0.323732, 0.772444,
		-0.450523, -0.891082, -0.054782,
		37.587318, 34.323071, 35.010052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430653, 34.518463, 35.107365>,  <37.902687, 34.946831, 35.048397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430653, 34.518463, 35.107365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131973, 34.321507, 34.928486>,  <37.952766, 34.203335, 34.821159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131973, 34.321507, 34.928486>,  <38.430653, 34.518463, 35.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131973, 34.321507, 34.928486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648031, -0.386932, -0.656003,
		0.149972, -0.779639, 0.608006,
		-0.746702, -0.492389, -0.447201,
		37.907963, 34.173790, 34.794327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708885, 33.903732, 35.013596>,  <38.430653, 34.518463, 35.107365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708885, 33.903732, 35.013596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403625, 33.908131, 34.755142>,  <38.220470, 33.910770, 34.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403625, 33.908131, 34.755142>,  <38.708885, 33.903732, 35.013596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403625, 33.908131, 34.755142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623878, -0.248139, -0.741083,
		-0.168478, -0.968663, 0.182507,
		-0.763146, 0.010994, -0.646133,
		38.174683, 33.911430, 34.561302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906326, 33.362980, 34.467342>,  <38.708885, 33.903732, 35.013596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906326, 33.362980, 34.467342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600208, 33.547161, 34.287426>,  <38.416538, 33.657669, 34.179478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600208, 33.547161, 34.287426>,  <38.906326, 33.362980, 34.467342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600208, 33.547161, 34.287426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557094, 0.123751, -0.821177,
		-0.322449, -0.879017, -0.351220,
		-0.765293, 0.460451, -0.449792,
		38.370621, 33.685295, 34.152489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896450, 32.991688, 33.787346>,  <38.906326, 33.362980, 34.467342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896450, 32.991688, 33.787346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684479, 33.326027, 33.730026>,  <38.557297, 33.526630, 33.695637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684479, 33.326027, 33.730026>,  <38.896450, 32.991688, 33.787346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684479, 33.326027, 33.730026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385218, 0.086721, -0.918742,
		-0.755503, -0.542066, -0.367941,
		-0.529926, 0.835850, -0.143295,
		38.525501, 33.576782, 33.687038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639202, 32.854836, 33.168167>,  <38.896450, 32.991688, 33.787346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639202, 32.854836, 33.168167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607487, 33.252171, 33.201630>,  <38.588459, 33.490570, 33.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607487, 33.252171, 33.201630>,  <38.639202, 32.854836, 33.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607487, 33.252171, 33.201630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186932, 0.097248, -0.977548,
		-0.979168, -0.061868, -0.193397,
		-0.079286, 0.993335, 0.083657,
		38.583702, 33.550171, 33.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227840, 33.097702, 32.574120>,  <38.639202, 32.854836, 33.168167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227840, 33.097702, 32.574120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427105, 33.425110, 32.688572>,  <38.546661, 33.621555, 32.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427105, 33.425110, 32.688572>,  <38.227840, 33.097702, 32.574120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427105, 33.425110, 32.688572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143593, 0.247563, -0.958172,
		-0.855114, 0.518407, 0.005792,
		0.498157, 0.818515, 0.286134,
		38.576553, 33.670666, 32.774414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926987, 33.684177, 32.302841>,  <38.227840, 33.097702, 32.574120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926987, 33.684177, 32.302841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304924, 33.798630, 32.366604>,  <38.531685, 33.867302, 32.404861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304924, 33.798630, 32.366604>,  <37.926987, 33.684177, 32.302841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304924, 33.798630, 32.366604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079516, 0.271736, -0.959081,
		-0.317736, 0.918853, 0.233996,
		0.944839, 0.286128, 0.159404,
		38.588375, 33.884468, 32.414425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910530, 34.315380, 31.976576>,  <37.926987, 33.684177, 32.302841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910530, 34.315380, 31.976576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299126, 34.234177, 32.025562>,  <38.532284, 34.185455, 32.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299126, 34.234177, 32.025562>,  <37.910530, 34.315380, 31.976576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299126, 34.234177, 32.025562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197135, 0.404707, -0.892945,
		0.131715, 0.891627, 0.433188,
		0.971488, -0.203010, 0.122465,
		38.590572, 34.173275, 32.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319748, 34.928120, 31.828072>,  <37.910530, 34.315380, 31.976576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319748, 34.928120, 31.828072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600361, 34.643093, 31.823919>,  <38.768726, 34.472076, 31.821428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600361, 34.643093, 31.823919>,  <38.319748, 34.928120, 31.828072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600361, 34.643093, 31.823919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389850, 0.395923, -0.831422,
		0.596553, 0.579219, 0.555545,
		0.701528, -0.712566, -0.010381,
		38.810818, 34.429325, 31.820805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980457, 35.305050, 31.623703>,  <38.319748, 34.928120, 31.828072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980457, 35.305050, 31.623703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015957, 34.914780, 31.543518>,  <39.037258, 34.680618, 31.495407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015957, 34.914780, 31.543518>,  <38.980457, 35.305050, 31.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015957, 34.914780, 31.543518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419914, 0.219149, -0.880708,
		0.903214, -0.006014, 0.429148,
		0.088751, -0.975673, -0.200464,
		39.042583, 34.622078, 31.483379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623077, 35.224140, 31.336262>,  <38.980457, 35.305050, 31.623703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623077, 35.224140, 31.336262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416340, 34.910805, 31.198132>,  <39.292297, 34.722805, 31.115253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416340, 34.910805, 31.198132>,  <39.623077, 35.224140, 31.336262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416340, 34.910805, 31.198132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427685, 0.113166, -0.896816,
		0.741589, -0.611208, 0.276532,
		-0.516848, -0.783337, -0.345327,
		39.261284, 34.675804, 31.094534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125633, 34.743641, 31.016787>,  <39.623077, 35.224140, 31.336262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125633, 34.743641, 31.016787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777672, 34.634800, 30.852238>,  <39.568893, 34.569496, 30.753508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777672, 34.634800, 30.852238>,  <40.125633, 34.743641, 31.016787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777672, 34.634800, 30.852238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453064, -0.111193, -0.884516,
		0.194938, -0.955822, 0.220007,
		-0.869904, -0.272103, -0.411373,
		39.516701, 34.553169, 30.728827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355160, 34.234787, 30.608294>,  <40.125633, 34.743641, 31.016787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355160, 34.234787, 30.608294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984589, 34.299717, 30.472424>,  <39.762245, 34.338676, 30.390902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984589, 34.299717, 30.472424>,  <40.355160, 34.234787, 30.608294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984589, 34.299717, 30.472424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304254, -0.208536, -0.929485,
		-0.221736, -0.964446, 0.143797,
		-0.926425, 0.162350, -0.339676,
		39.706661, 34.348415, 30.370522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125282, 33.553047, 30.264164>,  <40.355160, 34.234787, 30.608294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125282, 33.553047, 30.264164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900620, 33.851551, 30.121260>,  <39.765823, 34.030655, 30.035517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900620, 33.851551, 30.121260>,  <40.125282, 33.553047, 30.264164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900620, 33.851551, 30.121260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328199, -0.195422, -0.924173,
		-0.759492, -0.636320, -0.135163,
		-0.561656, 0.746262, -0.357261,
		39.732124, 34.075428, 30.014082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828976, 33.235157, 29.632778>,  <40.125282, 33.553047, 30.264164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828976, 33.235157, 29.632778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811390, 33.633392, 29.599628>,  <39.800838, 33.872334, 29.579739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811390, 33.633392, 29.599628>,  <39.828976, 33.235157, 29.632778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811390, 33.633392, 29.599628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352945, -0.062126, -0.933579,
		-0.934611, -0.070296, -0.348657,
		-0.043966, 0.995590, -0.082875,
		39.798199, 33.932068, 29.574766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539795, 33.354721, 28.949766>,  <39.828976, 33.235157, 29.632778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539795, 33.354721, 28.949766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753883, 33.680168, 29.040598>,  <39.882336, 33.875435, 29.095097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753883, 33.680168, 29.040598>,  <39.539795, 33.354721, 28.949766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753883, 33.680168, 29.040598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326335, 0.048795, -0.943994,
		-0.779130, 0.579349, -0.239396,
		0.535221, 0.813618, 0.227079,
		39.914448, 33.924255, 29.108721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164883, 33.974594, 28.568451>,  <39.539795, 33.354721, 28.949766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164883, 33.974594, 28.568451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554241, 34.017567, 28.649406>,  <39.787857, 34.043350, 28.697979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554241, 34.017567, 28.649406>,  <39.164883, 33.974594, 28.568451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554241, 34.017567, 28.649406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196637, 0.061776, -0.978528,
		-0.117624, 0.992292, 0.039009,
		0.973395, 0.107428, 0.202388,
		39.846260, 34.049793, 28.710123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393246, 34.199677, 27.923700>,  <39.164883, 33.974594, 28.568451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393246, 34.199677, 27.923700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734760, 34.157192, 28.127571>,  <39.939671, 34.131702, 28.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734760, 34.157192, 28.127571>,  <39.393246, 34.199677, 27.923700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734760, 34.157192, 28.127571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494940, -0.138121, -0.857880,
		0.161510, 0.984704, -0.065360,
		0.853785, -0.106207, 0.509677,
		39.990894, 34.125332, 28.280474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926914, 34.546768, 27.586498>,  <39.393246, 34.199677, 27.923700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926914, 34.546768, 27.586498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144077, 34.285557, 27.797709>,  <40.274376, 34.128830, 27.924435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144077, 34.285557, 27.797709>,  <39.926914, 34.546768, 27.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144077, 34.285557, 27.797709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545266, -0.204091, -0.813039,
		0.638699, 0.729319, 0.245269,
		0.542908, -0.653024, 0.528026,
		40.306950, 34.089649, 27.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717804, 34.683613, 27.399612>,  <39.926914, 34.546768, 27.586498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717804, 34.683613, 27.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661674, 34.301815, 27.504879>,  <40.627995, 34.072739, 27.568039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661674, 34.301815, 27.504879>,  <40.717804, 34.683613, 27.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661674, 34.301815, 27.504879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712553, -0.281901, -0.642495,
		0.687442, 0.097361, 0.719683,
		-0.140325, -0.954491, 0.263166,
		40.619576, 34.015469, 27.583828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402706, 34.397846, 27.411634>,  <40.717804, 34.683613, 27.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402706, 34.397846, 27.411634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165962, 34.076099, 27.390890>,  <41.023914, 33.883053, 27.378443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165962, 34.076099, 27.390890>,  <41.402706, 34.397846, 27.411634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165962, 34.076099, 27.390890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620339, -0.413481, -0.666493,
		0.514662, -0.426645, 0.743705,
		-0.591864, -0.804368, -0.051862,
		40.988403, 33.834789, 27.375332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828209, 33.789452, 27.499653>,  <41.402706, 34.397846, 27.411634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828209, 33.789452, 27.499653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504974, 33.677757, 27.292181>,  <41.311035, 33.610741, 27.167698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504974, 33.677757, 27.292181>,  <41.828209, 33.789452, 27.499653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504974, 33.677757, 27.292181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586986, -0.455638, -0.669210,
		-0.049462, -0.845235, 0.532101,
		-0.808085, -0.279235, -0.518678,
		41.262550, 33.593987, 27.136578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026001, 33.121189, 27.432671>,  <41.828209, 33.789452, 27.499653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026001, 33.121189, 27.432671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755161, 33.229324, 27.158895>,  <41.592659, 33.294205, 26.994631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755161, 33.229324, 27.158895>,  <42.026001, 33.121189, 27.432671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755161, 33.229324, 27.158895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513799, -0.492179, -0.702688,
		-0.526830, -0.827452, 0.194353,
		-0.677096, 0.270339, -0.684439,
		41.552032, 33.310425, 26.953564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858601, 32.414169, 27.025946>,  <42.026001, 33.121189, 27.432671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858601, 32.414169, 27.025946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751186, 32.723263, 26.795893>,  <41.686737, 32.908718, 26.657862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751186, 32.723263, 26.795893>,  <41.858601, 32.414169, 27.025946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751186, 32.723263, 26.795893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488266, -0.405487, -0.772773,
		-0.830354, -0.488332, -0.268412,
		-0.268532, 0.772731, -0.575133,
		41.670628, 32.955082, 26.623352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686592, 32.118225, 26.375553>,  <41.858601, 32.414169, 27.025946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686592, 32.118225, 26.375553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706211, 32.508041, 26.288042>,  <41.717983, 32.741932, 26.235535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706211, 32.508041, 26.288042>,  <41.686592, 32.118225, 26.375553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706211, 32.508041, 26.288042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211446, -0.224208, -0.951326,
		-0.976158, 0.000398, -0.217059,
		0.049045, 0.974541, -0.218779,
		41.720924, 32.800404, 26.222408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538895, 32.013451, 25.762407>,  <41.686592, 32.118225, 26.375553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538895, 32.013451, 25.762407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683212, 32.386230, 25.776827>,  <41.769802, 32.609898, 25.785479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683212, 32.386230, 25.776827>,  <41.538895, 32.013451, 25.762407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683212, 32.386230, 25.776827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584042, -0.195632, -0.787796,
		-0.727135, 0.305283, -0.614880,
		0.360791, 0.931950, 0.036047,
		41.791451, 32.665817, 25.787642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506805, 32.354946, 25.031179>,  <41.538895, 32.013451, 25.762407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506805, 32.354946, 25.031179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787365, 32.526543, 25.258863>,  <41.955700, 32.629501, 25.395473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787365, 32.526543, 25.258863>,  <41.506805, 32.354946, 25.031179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787365, 32.526543, 25.258863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682791, -0.175248, -0.709285,
		-0.204524, 0.886146, -0.415830,
		0.701403, 0.428991, 0.569210,
		41.997787, 32.655239, 25.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933861, 32.795696, 24.538897>,  <41.506805, 32.354946, 25.031179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933861, 32.795696, 24.538897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179371, 32.708157, 24.842312>,  <42.326679, 32.655632, 25.024361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179371, 32.708157, 24.842312>,  <41.933861, 32.795696, 24.538897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179371, 32.708157, 24.842312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709810, -0.267637, -0.651567,
		0.345608, 0.938336, -0.008929,
		0.613779, -0.218849, 0.758538,
		42.363506, 32.642502, 25.069874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465778, 33.173264, 24.347836>,  <41.933861, 32.795696, 24.538897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465778, 33.173264, 24.347836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584515, 32.892719, 24.607059>,  <42.655754, 32.724392, 24.762594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584515, 32.892719, 24.607059>,  <42.465778, 33.173264, 24.347836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584515, 32.892719, 24.607059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753617, -0.244737, -0.610053,
		0.586471, 0.669476, 0.455910,
		0.296838, -0.701360, 0.648060,
		42.673565, 32.682312, 24.801477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141350, 33.184368, 24.228420>,  <42.465778, 33.173264, 24.347836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141350, 33.184368, 24.228420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109154, 32.845684, 24.438789>,  <43.089836, 32.642471, 24.565012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109154, 32.845684, 24.438789>,  <43.141350, 33.184368, 24.228420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109154, 32.845684, 24.438789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661284, -0.440157, -0.607425,
		0.745804, 0.298894, 0.595347,
		-0.080491, -0.846714, 0.525925,
		43.085007, 32.591671, 24.596567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791893, 33.049774, 24.526810>,  <43.141350, 33.184368, 24.228420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791893, 33.049774, 24.526810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598370, 32.702595, 24.481913>,  <43.482258, 32.494286, 24.454975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598370, 32.702595, 24.481913>,  <43.791893, 33.049774, 24.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598370, 32.702595, 24.481913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729551, -0.329130, -0.599524,
		0.483413, -0.371939, 0.792447,
		-0.483804, -0.867949, -0.112243,
		43.453228, 32.442211, 24.448240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285835, 32.585182, 24.483103>,  <43.791893, 33.049774, 24.526810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285835, 32.585182, 24.483103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992725, 32.377155, 24.307575>,  <43.816860, 32.252338, 24.202259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992725, 32.377155, 24.307575>,  <44.285835, 32.585182, 24.483103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992725, 32.377155, 24.307575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651816, -0.351317, -0.672095,
		0.195374, -0.778525, 0.596429,
		-0.732779, -0.520072, -0.438817,
		43.772892, 32.221134, 24.175930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706352, 32.034954, 24.263557>,  <44.285835, 32.585182, 24.483103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706352, 32.034954, 24.263557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368126, 32.043556, 24.050180>,  <44.165192, 32.048717, 23.922155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368126, 32.043556, 24.050180>,  <44.706352, 32.034954, 24.263557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368126, 32.043556, 24.050180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492764, -0.353062, -0.795318,
		-0.205437, -0.935353, 0.287942,
		-0.845565, 0.021501, -0.533440,
		44.114456, 32.050007, 23.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227962, 31.509201, 24.586226>,  <44.706352, 32.034954, 24.263557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227962, 31.509201, 24.586226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483459, 31.235207, 24.726398>,  <45.636757, 31.070810, 24.810503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483459, 31.235207, 24.726398>,  <45.227962, 31.509201, 24.586226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483459, 31.235207, 24.726398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161248, 0.326165, 0.931459,
		-0.752336, -0.651467, 0.097882,
		0.638740, -0.684987, 0.350433,
		45.675083, 31.029711, 24.831528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905491, 31.000566, 25.101812>,  <45.227962, 31.509201, 24.586226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905491, 31.000566, 25.101812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296635, 31.039747, 25.175787>,  <45.531319, 31.063255, 25.220173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296635, 31.039747, 25.175787>,  <44.905491, 31.000566, 25.101812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296635, 31.039747, 25.175787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208023, 0.358348, 0.910117,
		0.022876, -0.928435, 0.370789,
		0.977856, 0.097952, 0.184938,
		45.589993, 31.069134, 25.231268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016598, 30.804550, 25.747288>,  <44.905491, 31.000566, 25.101812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016598, 30.804550, 25.747288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328098, 31.041212, 25.663872>,  <45.514999, 31.183208, 25.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328098, 31.041212, 25.663872>,  <45.016598, 30.804550, 25.747288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328098, 31.041212, 25.663872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166834, 0.515779, 0.840320,
		0.604741, -0.619610, 0.500372,
		0.778752, 0.591655, -0.208541,
		45.561726, 31.218708, 25.601311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472172, 30.732452, 26.307838>,  <45.016598, 30.804550, 25.747288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472172, 30.732452, 26.307838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566277, 31.088329, 26.151325>,  <45.622738, 31.301855, 26.057417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566277, 31.088329, 26.151325>,  <45.472172, 30.732452, 26.307838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566277, 31.088329, 26.151325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042167, 0.411547, 0.910412,
		0.971018, -0.197683, 0.134336,
		0.235259, 0.889691, -0.391284,
		45.636856, 31.355236, 26.033939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892597, 31.036835, 26.790794>,  <45.472172, 30.732452, 26.307838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892597, 31.036835, 26.790794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782078, 31.357620, 26.578939>,  <45.715767, 31.550091, 26.451826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782078, 31.357620, 26.578939>,  <45.892597, 31.036835, 26.790794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782078, 31.357620, 26.578939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079152, 0.530230, 0.844151,
		0.957808, 0.275157, -0.083023,
		-0.276296, 0.801963, -0.529638,
		45.699188, 31.598209, 26.420048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247883, 31.531799, 27.102930>,  <45.892597, 31.036835, 26.790794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247883, 31.531799, 27.102930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975117, 31.744303, 26.901833>,  <45.811459, 31.871805, 26.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975117, 31.744303, 26.901833>,  <46.247883, 31.531799, 27.102930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975117, 31.744303, 26.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085438, 0.624786, 0.776108,
		0.726423, 0.572194, -0.380662,
		-0.681916, 0.531260, -0.502746,
		45.770542, 31.903681, 26.751009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364796, 32.355114, 27.170921>,  <46.247883, 31.531799, 27.102930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364796, 32.355114, 27.170921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980461, 32.297379, 27.076305>,  <45.749859, 32.262737, 27.019535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980461, 32.297379, 27.076305>,  <46.364796, 32.355114, 27.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980461, 32.297379, 27.076305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269176, 0.688866, 0.673058,
		0.065795, 0.710373, -0.700744,
		-0.960841, -0.144339, -0.236539,
		45.692207, 32.254078, 27.005344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058983, 32.960678, 27.281452>,  <46.364796, 32.355114, 27.170921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058983, 32.960678, 27.281452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724846, 32.740936, 27.273333>,  <45.524364, 32.609093, 27.268461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724846, 32.740936, 27.273333>,  <46.058983, 32.960678, 27.281452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724846, 32.740936, 27.273333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480229, 0.711268, 0.513301,
		-0.267547, 0.438530, -0.857969,
		-0.835344, -0.549353, -0.020297,
		45.474243, 32.576130, 27.267244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415298, 33.409882, 27.171461>,  <46.058983, 32.960678, 27.281452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415298, 33.409882, 27.171461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303467, 33.067245, 27.344938>,  <45.236370, 32.861664, 27.449024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303467, 33.067245, 27.344938>,  <45.415298, 33.409882, 27.171461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303467, 33.067245, 27.344938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620727, 0.505867, 0.598996,
		-0.732485, -0.101740, -0.673138,
		-0.279577, -0.856591, 0.433693,
		45.219593, 32.810268, 27.475046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756664, 33.566032, 27.228685>,  <45.415298, 33.409882, 27.171461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756664, 33.566032, 27.228685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835289, 33.253902, 27.466156>,  <44.882465, 33.066624, 27.608639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835289, 33.253902, 27.466156>,  <44.756664, 33.566032, 27.228685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835289, 33.253902, 27.466156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659685, 0.342699, 0.668860,
		-0.725381, -0.523115, -0.447406,
		0.196565, -0.780326, 0.593679,
		44.894260, 33.019806, 27.644260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130646, 33.430702, 27.506491>,  <44.756664, 33.566032, 27.228685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130646, 33.430702, 27.506491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361156, 33.241608, 27.773151>,  <44.499462, 33.128151, 27.933147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361156, 33.241608, 27.773151>,  <44.130646, 33.430702, 27.506491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361156, 33.241608, 27.773151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683038, 0.169294, 0.710491,
		-0.448738, -0.864787, -0.225340,
		0.576275, -0.472740, 0.666651,
		44.534039, 33.099785, 27.973146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761776, 32.895901, 27.816095>,  <44.130646, 33.430702, 27.506491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761776, 32.895901, 27.816095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060528, 32.970837, 28.071304>,  <44.239780, 33.015800, 28.224430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060528, 32.970837, 28.071304>,  <43.761776, 32.895901, 27.816095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060528, 32.970837, 28.071304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634288, -0.087326, 0.768149,
		0.199625, -0.978405, 0.053609,
		0.746879, 0.187346, 0.638023,
		44.284592, 33.027039, 28.262711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709293, 32.421719, 28.309643>,  <43.761776, 32.895901, 27.816095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709293, 32.421719, 28.309643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924835, 32.716095, 28.473604>,  <44.054161, 32.892723, 28.571981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924835, 32.716095, 28.473604>,  <43.709293, 32.421719, 28.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924835, 32.716095, 28.473604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635378, 0.035576, 0.771382,
		0.553112, -0.676106, 0.486773,
		0.538853, 0.735945, 0.409905,
		44.086491, 32.936878, 28.596577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690170, 32.253384, 28.949486>,  <43.709293, 32.421719, 28.309643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690170, 32.253384, 28.949486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762009, 32.646000, 28.923166>,  <43.805111, 32.881569, 28.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762009, 32.646000, 28.923166>,  <43.690170, 32.253384, 28.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762009, 32.646000, 28.923166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562004, 0.157268, 0.812045,
		0.807401, -0.108859, 0.579873,
		0.179594, 0.981538, -0.065799,
		43.815887, 32.940460, 28.903427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885056, 32.457043, 29.561455>,  <43.690170, 32.253384, 28.949486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885056, 32.457043, 29.561455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739040, 32.789787, 29.394239>,  <43.651432, 32.989433, 29.293911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739040, 32.789787, 29.394239>,  <43.885056, 32.457043, 29.561455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739040, 32.789787, 29.394239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404877, 0.262494, 0.875883,
		0.838345, 0.488985, 0.240981,
		-0.365038, 0.831860, -0.418039,
		43.629528, 33.039345, 29.268827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090244, 32.999371, 29.984196>,  <43.885056, 32.457043, 29.561455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090244, 32.999371, 29.984196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780304, 33.149799, 29.780954>,  <43.594337, 33.240059, 29.659010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780304, 33.149799, 29.780954>,  <44.090244, 32.999371, 29.984196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780304, 33.149799, 29.780954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408121, 0.316201, 0.856419,
		0.482740, 0.870968, -0.091527,
		-0.774855, 0.376074, -0.508103,
		43.547848, 33.262623, 29.628523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815331, 33.552212, 30.361492>,  <44.090244, 32.999371, 29.984196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815331, 33.552212, 30.361492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496742, 33.511852, 30.123011>,  <43.305592, 33.487637, 29.979921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496742, 33.511852, 30.123011>,  <43.815331, 33.552212, 30.361492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496742, 33.511852, 30.123011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553973, 0.516991, 0.652560,
		0.242388, 0.850023, -0.467663,
		-0.796469, -0.100900, -0.596202,
		43.257801, 33.481583, 29.944149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449936, 34.194576, 30.485573>,  <43.815331, 33.552212, 30.361492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449936, 34.194576, 30.485573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211960, 33.909264, 30.337370>,  <43.069176, 33.738075, 30.248447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211960, 33.909264, 30.337370>,  <43.449936, 34.194576, 30.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211960, 33.909264, 30.337370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657653, 0.166970, 0.734584,
		-0.462101, 0.680699, -0.568429,
		-0.594941, -0.713281, -0.370507,
		43.033478, 33.695278, 30.226217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752956, 34.459209, 30.541380>,  <43.449936, 34.194576, 30.485573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752956, 34.459209, 30.541380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691135, 34.071247, 30.466122>,  <42.654041, 33.838470, 30.420967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691135, 34.071247, 30.466122>,  <42.752956, 34.459209, 30.541380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691135, 34.071247, 30.466122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673432, -0.035924, 0.738376,
		-0.722913, 0.240823, -0.647612,
		-0.154553, -0.969904, -0.188148,
		42.644768, 33.780277, 30.409678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070950, 34.378723, 30.498234>,  <42.752956, 34.459209, 30.541380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070950, 34.378723, 30.498234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179615, 33.996418, 30.543346>,  <42.244816, 33.767036, 30.570414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179615, 33.996418, 30.543346>,  <42.070950, 34.378723, 30.498234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179615, 33.996418, 30.543346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689220, -0.111425, 0.715933,
		-0.671693, -0.272226, -0.689000,
		0.271667, -0.955760, 0.112781,
		42.261116, 33.709690, 30.577181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385700, 33.905445, 30.424545>,  <42.070950, 34.378723, 30.498234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385700, 33.905445, 30.424545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646484, 33.694183, 30.642168>,  <41.802956, 33.567425, 30.772741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646484, 33.694183, 30.642168>,  <41.385700, 33.905445, 30.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646484, 33.694183, 30.642168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742171, -0.297517, 0.600555,
		-0.155318, -0.795324, -0.585949,
		0.651965, -0.528152, 0.544056,
		41.842075, 33.535736, 30.805384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007389, 33.412807, 30.706192>,  <41.385700, 33.905445, 30.424545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007389, 33.412807, 30.706192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331062, 33.379299, 30.938810>,  <41.525269, 33.359192, 31.078382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331062, 33.379299, 30.938810>,  <41.007389, 33.412807, 30.706192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331062, 33.379299, 30.938810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571462, -0.342249, 0.745853,
		0.136551, -0.935867, -0.324817,
		0.809188, -0.083774, 0.581547,
		41.573818, 33.354168, 31.113274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794567, 32.853695, 31.257395>,  <41.007389, 33.412807, 30.706192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794567, 32.853695, 31.257395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097057, 33.055607, 31.423922>,  <41.278553, 33.176754, 31.523838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097057, 33.055607, 31.423922>,  <40.794567, 32.853695, 31.257395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097057, 33.055607, 31.423922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355095, -0.217807, 0.909102,
		0.549571, -0.835321, 0.014532,
		0.756227, 0.504776, 0.416319,
		41.323925, 33.207039, 31.548817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031380, 32.411922, 31.809502>,  <40.794567, 32.853695, 31.257395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031380, 32.411922, 31.809502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141865, 32.788807, 31.885338>,  <41.208157, 33.014938, 31.930840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141865, 32.788807, 31.885338>,  <41.031380, 32.411922, 31.809502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141865, 32.788807, 31.885338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136693, -0.156745, 0.978134,
		0.951325, -0.296092, 0.085498,
		0.276216, 0.942210, 0.189590,
		41.224731, 33.071468, 31.942215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257225, 32.320297, 32.492538>,  <41.031380, 32.411922, 31.809502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257225, 32.320297, 32.492538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232574, 32.715591, 32.436539>,  <41.217785, 32.952766, 32.402939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232574, 32.715591, 32.436539>,  <41.257225, 32.320297, 32.492538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232574, 32.715591, 32.436539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086388, 0.134457, 0.987147,
		0.994354, 0.072925, 0.077085,
		-0.061623, 0.988232, -0.139998,
		41.214088, 33.012062, 32.394539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680637, 32.550632, 32.953289>,  <41.257225, 32.320297, 32.492538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680637, 32.550632, 32.953289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436848, 32.860115, 32.884098>,  <41.290573, 33.045803, 32.842583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436848, 32.860115, 32.884098>,  <41.680637, 32.550632, 32.953289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436848, 32.860115, 32.884098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141450, 0.108565, 0.983974,
		0.780085, 0.624175, 0.043273,
		-0.609474, 0.773705, -0.172980,
		41.254005, 33.092228, 32.832203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933117, 33.105556, 33.427685>,  <41.680637, 32.550632, 32.953289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933117, 33.105556, 33.427685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553238, 33.160088, 33.314907>,  <41.325310, 33.192806, 33.247242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553238, 33.160088, 33.314907>,  <41.933117, 33.105556, 33.427685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553238, 33.160088, 33.314907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286855, -0.017450, 0.957815,
		0.125655, 0.990510, 0.055678,
		-0.949697, 0.136326, -0.281941,
		41.268330, 33.200985, 33.230324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709770, 33.558281, 33.905952>,  <41.933117, 33.105556, 33.427685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709770, 33.558281, 33.905952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368904, 33.386375, 33.786541>,  <41.164387, 33.283230, 33.714893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368904, 33.386375, 33.786541>,  <41.709770, 33.558281, 33.905952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368904, 33.386375, 33.786541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333047, 0.005427, 0.942894,
		-0.403605, 0.902923, -0.147757,
		-0.852163, -0.429767, -0.298526,
		41.113255, 33.257446, 33.696983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233177, 34.016033, 34.214256>,  <41.709770, 33.558281, 33.905952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233177, 34.016033, 34.214256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024227, 33.684734, 34.133133>,  <40.898857, 33.485954, 34.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024227, 33.684734, 34.133133>,  <41.233177, 34.016033, 34.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024227, 33.684734, 34.133133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421384, 0.043963, 0.905816,
		-0.741324, 0.558634, -0.371976,
		-0.522373, -0.828248, -0.202809,
		40.867516, 33.436260, 34.072289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555260, 34.128326, 34.431492>,  <41.233177, 34.016033, 34.214256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555260, 34.128326, 34.431492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619671, 33.733704, 34.442688>,  <40.658318, 33.496929, 34.449406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619671, 33.733704, 34.442688>,  <40.555260, 34.128326, 34.431492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619671, 33.733704, 34.442688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420045, -0.042843, 0.906492,
		-0.893102, -0.157731, -0.421295,
		0.161032, -0.986552, 0.027991,
		40.667980, 33.437737, 34.451084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165607, 33.942543, 34.989159>,  <40.555260, 34.128326, 34.431492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165607, 33.942543, 34.989159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304134, 33.572117, 34.929199>,  <40.387249, 33.349861, 34.893223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304134, 33.572117, 34.929199>,  <40.165607, 33.942543, 34.989159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304134, 33.572117, 34.929199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106373, -0.197515, 0.974512,
		-0.932069, -0.321542, -0.166910,
		0.346313, -0.926066, -0.149894,
		40.408028, 33.294296, 34.884232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703079, 33.553810, 35.310787>,  <40.165607, 33.942543, 34.989159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703079, 33.553810, 35.310787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046482, 33.351402, 35.277527>,  <40.252522, 33.229958, 35.257572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046482, 33.351402, 35.277527>,  <39.703079, 33.553810, 35.310787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046482, 33.351402, 35.277527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096841, -0.319206, 0.942724,
		-0.503581, -0.801280, -0.323043,
		0.858504, -0.506022, -0.083149,
		40.304035, 33.199596, 35.252583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602455, 32.961193, 35.636330>,  <39.703079, 33.553810, 35.310787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602455, 32.961193, 35.636330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001537, 32.985466, 35.648399>,  <40.240986, 33.000031, 35.655643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001537, 32.985466, 35.648399>,  <39.602455, 32.961193, 35.636330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001537, 32.985466, 35.648399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009629, -0.313830, 0.949430,
		0.067080, -0.947538, -0.312524,
		0.997701, 0.060679, 0.030176,
		40.300846, 33.003670, 35.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765942, 32.309887, 35.974285>,  <39.602455, 32.961193, 35.636330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765942, 32.309887, 35.974285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072350, 32.564583, 36.009552>,  <40.256195, 32.717400, 36.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072350, 32.564583, 36.009552>,  <39.765942, 32.309887, 35.974285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072350, 32.564583, 36.009552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158281, -0.319765, 0.934183,
		0.623022, -0.701650, -0.345731,
		0.766022, 0.636740, 0.088163,
		40.302155, 32.755604, 36.035999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316341, 31.980515, 36.396973>,  <39.765942, 32.309887, 35.974285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316341, 31.980515, 36.396973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428349, 32.362698, 36.434261>,  <40.495552, 32.592007, 36.456635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428349, 32.362698, 36.434261>,  <40.316341, 31.980515, 36.396973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428349, 32.362698, 36.434261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213374, -0.156618, 0.964335,
		0.935982, -0.250140, -0.247726,
		0.280017, 0.955458, 0.093218,
		40.512352, 32.649334, 36.462227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963638, 31.935686, 36.755394>,  <40.316341, 31.980515, 36.396973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963638, 31.935686, 36.755394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820618, 32.304096, 36.817192>,  <40.734806, 32.525143, 36.854271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820618, 32.304096, 36.817192>,  <40.963638, 31.935686, 36.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820618, 32.304096, 36.817192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193652, -0.088713, 0.977051,
		0.913594, 0.379265, -0.146639,
		-0.357552, 0.921025, 0.154493,
		40.713352, 32.580402, 36.863541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524101, 32.370770, 37.001495>,  <40.963638, 31.935686, 36.755394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524101, 32.370770, 37.001495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187515, 32.554417, 37.115440>,  <40.985565, 32.664604, 37.183807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187515, 32.554417, 37.115440>,  <41.524101, 32.370770, 37.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187515, 32.554417, 37.115440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346420, 0.053835, 0.936534,
		0.414646, 0.886742, -0.204349,
		-0.841465, 0.459120, 0.284862,
		40.935078, 32.692154, 37.200897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779728, 32.934013, 37.428833>,  <41.524101, 32.370770, 37.001495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779728, 32.934013, 37.428833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400452, 32.851677, 37.525631>,  <41.172886, 32.802277, 37.583710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400452, 32.851677, 37.525631>,  <41.779728, 32.934013, 37.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400452, 32.851677, 37.525631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212936, 0.153542, 0.964926,
		-0.235778, 0.966465, -0.101756,
		-0.948191, -0.205841, 0.241997,
		41.115993, 32.789925, 37.598228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508865, 33.448128, 37.933289>,  <41.779728, 32.934013, 37.428833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508865, 33.448128, 37.933289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250591, 33.149345, 37.996727>,  <41.095627, 32.970078, 38.034790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250591, 33.149345, 37.996727>,  <41.508865, 33.448128, 37.933289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250591, 33.149345, 37.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021135, 0.190131, 0.981531,
		-0.763310, 0.637113, -0.106978,
		-0.645687, -0.746952, 0.158594,
		41.056885, 32.925259, 38.044304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992832, 33.717285, 38.392822>,  <41.508865, 33.448128, 37.933289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992832, 33.717285, 38.392822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950535, 33.320232, 38.416500>,  <40.925156, 33.082001, 38.430706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950535, 33.320232, 38.416500>,  <40.992832, 33.717285, 38.392822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950535, 33.320232, 38.416500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158870, 0.075624, 0.984399,
		-0.981620, 0.094691, -0.165696,
		-0.105744, -0.992630, 0.059190,
		40.918812, 33.022442, 38.434258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310825, 33.584187, 38.693634>,  <40.992832, 33.717285, 38.392822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310825, 33.584187, 38.693634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591198, 33.303154, 38.742748>,  <40.759422, 33.134533, 38.772217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591198, 33.303154, 38.742748>,  <40.310825, 33.584187, 38.693634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591198, 33.303154, 38.742748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053440, 0.119930, 0.991343,
		-0.711226, -0.701422, 0.046517,
		0.700929, -0.702583, 0.122781,
		40.801476, 33.092381, 38.779583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031429, 33.108540, 39.099472>,  <40.310825, 33.584187, 38.693634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031429, 33.108540, 39.099472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421345, 33.026768, 39.135227>,  <40.655296, 32.977703, 39.156681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421345, 33.026768, 39.135227>,  <40.031429, 33.108540, 39.099472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421345, 33.026768, 39.135227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109732, -0.090407, 0.989841,
		-0.194273, -0.974697, -0.110561,
		0.974791, -0.204432, 0.089392,
		40.713783, 32.965439, 39.162045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077564, 32.427189, 39.555302>,  <40.031429, 33.108540, 39.099472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077564, 32.427189, 39.555302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430401, 32.614777, 39.573147>,  <40.642101, 32.727329, 39.583855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430401, 32.614777, 39.573147>,  <40.077564, 32.427189, 39.555302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430401, 32.614777, 39.573147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021866, -0.135357, 0.990556,
		0.470578, -0.872781, -0.129651,
		0.882087, 0.468969, 0.044612,
		40.695026, 32.755466, 39.586529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567326, 32.058899, 39.966862>,  <40.077564, 32.427189, 39.555302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567326, 32.058899, 39.966862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704681, 32.433605, 39.993881>,  <40.787094, 32.658428, 40.010094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704681, 32.433605, 39.993881>,  <40.567326, 32.058899, 39.966862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704681, 32.433605, 39.993881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011888, -0.067582, 0.997643,
		0.939119, -0.343379, -0.012070,
		0.343385, 0.936762, 0.067549,
		40.807697, 32.714634, 40.014145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897099, 32.097836, 40.566021>,  <40.567326, 32.058899, 39.966862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897099, 32.097836, 40.566021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891281, 32.486244, 40.470604>,  <40.887791, 32.719292, 40.413353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891281, 32.486244, 40.470604>,  <40.897099, 32.097836, 40.566021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891281, 32.486244, 40.470604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034399, 0.238909, 0.970433,
		0.999302, 0.005909, -0.036877,
		-0.014544, 0.971024, -0.238539,
		40.886917, 32.777550, 40.399044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514095, 32.397903, 40.871952>,  <40.897099, 32.097836, 40.566021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514095, 32.397903, 40.871952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228901, 32.672760, 40.816113>,  <41.057785, 32.837673, 40.782608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228901, 32.672760, 40.816113>,  <41.514095, 32.397903, 40.871952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228901, 32.672760, 40.816113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003108, 0.202189, 0.979341,
		0.701170, 0.697824, -0.146294,
		-0.712988, 0.687139, -0.139600,
		41.015003, 32.878902, 40.774231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694336, 32.946079, 41.432858>,  <41.514095, 32.397903, 40.871952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694336, 32.946079, 41.432858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327187, 33.041847, 41.306248>,  <41.106895, 33.099308, 41.230282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327187, 33.041847, 41.306248>,  <41.694336, 32.946079, 41.432858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327187, 33.041847, 41.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124371, 0.583840, 0.802286,
		0.376880, 0.775764, -0.506115,
		-0.917874, 0.239420, -0.316520,
		41.051823, 33.113674, 41.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638668, 33.492027, 41.736893>,  <41.694336, 32.946079, 41.432858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638668, 33.492027, 41.736893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259350, 33.443462, 41.619598>,  <41.031757, 33.414322, 41.549221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259350, 33.443462, 41.619598>,  <41.638668, 33.492027, 41.736893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259350, 33.443462, 41.619598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314381, 0.486083, 0.815407,
		0.043537, 0.865437, -0.499122,
		-0.948298, -0.121414, -0.293239,
		40.974861, 33.407040, 41.531628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247982, 34.226208, 41.974094>,  <41.638668, 33.492027, 41.736893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247982, 34.226208, 41.974094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981773, 33.939941, 41.889336>,  <40.822048, 33.768181, 41.838478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981773, 33.939941, 41.889336>,  <41.247982, 34.226208, 41.974094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981773, 33.939941, 41.889336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620656, 0.372957, 0.689702,
		-0.414566, 0.590530, -0.692393,
		-0.665523, -0.715666, -0.211901,
		40.782116, 33.725243, 41.825764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659374, 34.581863, 42.164696>,  <41.247982, 34.226208, 41.974094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659374, 34.581863, 42.164696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608570, 34.185265, 42.153366>,  <40.578087, 33.947304, 42.146568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608570, 34.185265, 42.153366>,  <40.659374, 34.581863, 42.164696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608570, 34.185265, 42.153366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363757, 0.019989, 0.931279,
		-0.922795, 0.128582, -0.363203,
		-0.127006, -0.991497, -0.028326,
		40.570469, 33.887814, 42.144867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908653, 34.495090, 42.446175>,  <40.659374, 34.581863, 42.164696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908653, 34.495090, 42.446175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123451, 34.163067, 42.506363>,  <40.252331, 33.963852, 42.542477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123451, 34.163067, 42.506363>,  <39.908653, 34.495090, 42.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123451, 34.163067, 42.506363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119815, 0.101512, 0.987593,
		-0.835036, -0.548357, -0.044943,
		0.536991, -0.830060, 0.150467,
		40.284550, 33.914047, 42.551502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584141, 34.209484, 42.998116>,  <39.908653, 34.495090, 42.446175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584141, 34.209484, 42.998116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938656, 34.024281, 43.002605>,  <40.151363, 33.913158, 43.005299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938656, 34.024281, 43.002605>,  <39.584141, 34.209484, 42.998116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938656, 34.024281, 43.002605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070449, -0.110828, 0.991340,
		-0.457752, -0.879399, -0.130844,
		0.886285, -0.463006, 0.011221,
		40.204540, 33.885380, 43.005970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491734, 33.533897, 43.394211>,  <39.584141, 34.209484, 42.998116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491734, 33.533897, 43.394211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880280, 33.626812, 43.414150>,  <40.113407, 33.682560, 43.426113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880280, 33.626812, 43.414150>,  <39.491734, 33.533897, 43.394211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880280, 33.626812, 43.414150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038277, -0.054066, 0.997803,
		0.234470, -0.971144, -0.043627,
		0.971369, 0.232285, 0.049850,
		40.171692, 33.696499, 43.429104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859444, 32.992214, 43.915112>,  <39.491734, 33.533897, 43.394211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859444, 32.992214, 43.915112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083744, 33.322826, 43.895512>,  <40.218327, 33.521194, 43.883751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083744, 33.322826, 43.895512>,  <39.859444, 32.992214, 43.915112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083744, 33.322826, 43.895512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062306, 0.101130, 0.992920,
		0.825636, -0.553730, 0.108207,
		0.560753, 0.826532, -0.048996,
		40.251968, 33.570786, 43.880814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361675, 32.957962, 44.462727>,  <39.859444, 32.992214, 43.915112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361675, 32.957962, 44.462727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281944, 33.341228, 44.380562>,  <40.234104, 33.571186, 44.331264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281944, 33.341228, 44.380562>,  <40.361675, 32.957962, 44.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281944, 33.341228, 44.380562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069318, 0.195307, 0.978290,
		0.977478, 0.209239, 0.027487,
		-0.199328, 0.958162, -0.205412,
		40.222145, 33.628677, 44.318939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691833, 33.270763, 44.924717>,  <40.361675, 32.957962, 44.462727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691833, 33.270763, 44.924717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405365, 33.526901, 44.813675>,  <40.233486, 33.680584, 44.747051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405365, 33.526901, 44.813675>,  <40.691833, 33.270763, 44.924717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405365, 33.526901, 44.813675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156229, 0.240579, 0.957974,
		0.680218, 0.729440, -0.072255,
		-0.716168, 0.640342, -0.277606,
		40.190514, 33.719006, 44.730392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824654, 33.929874, 45.282261>,  <40.691833, 33.270763, 44.924717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824654, 33.929874, 45.282261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436089, 33.928596, 45.187305>,  <40.202950, 33.927830, 45.130333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436089, 33.928596, 45.187305>,  <40.824654, 33.929874, 45.282261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436089, 33.928596, 45.187305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236273, 0.110937, 0.965333,
		0.023247, 0.993822, -0.108521,
		-0.971409, -0.003199, -0.237392,
		40.144665, 33.927635, 45.116089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624966, 34.514301, 45.573803>,  <40.824654, 33.929874, 45.282261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624966, 34.514301, 45.573803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298916, 34.290028, 45.515553>,  <40.103287, 34.155464, 45.480602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298916, 34.290028, 45.515553>,  <40.624966, 34.514301, 45.573803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298916, 34.290028, 45.515553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225945, 0.076241, 0.971152,
		-0.533403, 0.824515, -0.188829,
		-0.815126, -0.560680, -0.145627,
		40.054379, 34.121822, 45.471863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069057, 34.715736, 46.076344>,  <40.624966, 34.514301, 45.573803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069057, 34.715736, 46.076344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956394, 34.348663, 45.964252>,  <39.888794, 34.128418, 45.896999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956394, 34.348663, 45.964252>,  <40.069057, 34.715736, 46.076344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956394, 34.348663, 45.964252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110364, -0.321098, 0.940593,
		-0.953146, 0.234000, 0.191720,
		-0.281660, -0.917682, -0.280228,
		39.871895, 34.073360, 45.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356232, 34.431198, 46.264061>,  <40.069057, 34.715736, 46.076344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356232, 34.431198, 46.264061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658325, 34.169075, 46.269512>,  <39.839581, 34.011799, 46.272781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658325, 34.169075, 46.269512>,  <39.356232, 34.431198, 46.264061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658325, 34.169075, 46.269512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037132, -0.022023, 0.999068,
		-0.654399, -0.755039, -0.040965,
		0.755238, -0.655310, 0.013624,
		39.884895, 33.972481, 46.273598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282539, 33.871998, 46.698368>,  <39.356232, 34.431198, 46.264061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282539, 33.871998, 46.698368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673275, 33.955643, 46.716476>,  <39.907719, 34.005829, 46.727341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673275, 33.955643, 46.716476>,  <39.282539, 33.871998, 46.698368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673275, 33.955643, 46.716476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069355, 0.109314, 0.991585,
		0.202402, -0.971763, 0.121285,
		0.976844, 0.209110, 0.045271,
		39.966328, 34.018375, 46.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600605, 33.495628, 47.129814>,  <39.282539, 33.871998, 46.698368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600605, 33.495628, 47.129814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819817, 33.829399, 47.153145>,  <39.951344, 34.029659, 47.167145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819817, 33.829399, 47.153145>,  <39.600605, 33.495628, 47.129814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819817, 33.829399, 47.153145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212255, 0.071276, 0.974611,
		0.809081, -0.546495, 0.216172,
		0.548029, 0.834423, 0.058328,
		39.984226, 34.079727, 47.170643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264523, 33.125099, 47.048813>,  <39.600605, 33.495628, 47.129814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264523, 33.125099, 47.048813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393692, 33.399040, 47.310101>,  <40.471195, 33.563404, 47.466873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393692, 33.399040, 47.310101>,  <40.264523, 33.125099, 47.048813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393692, 33.399040, 47.310101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675038, -0.650434, 0.348222,
		0.663357, 0.328499, -0.672343,
		0.322924, 0.684853, 0.653220,
		40.490570, 33.604496, 47.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969517, 33.122177, 46.976585>,  <40.264523, 33.125099, 47.048813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969517, 33.122177, 46.976585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876133, 33.221146, 47.352730>,  <40.820103, 33.280525, 47.578415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876133, 33.221146, 47.352730>,  <40.969517, 33.122177, 46.976585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876133, 33.221146, 47.352730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510888, -0.791634, 0.335125,
		0.827339, 0.558657, 0.058409,
		-0.233458, 0.247422, 0.940361,
		40.806095, 33.295372, 47.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672585, 33.027275, 46.263386>,  <40.969517, 33.122177, 46.976585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672585, 33.027275, 46.263386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323166, 33.159370, 46.406414>,  <40.113514, 33.238628, 46.492229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323166, 33.159370, 46.406414>,  <40.672585, 33.027275, 46.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323166, 33.159370, 46.406414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292234, 0.231648, -0.927868,
		-0.389252, -0.915030, -0.105847,
		-0.873546, 0.330243, 0.357572,
		40.061104, 33.258442, 46.513687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079597, 32.884468, 45.944878>,  <40.672585, 33.027275, 46.263386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079597, 32.884468, 45.944878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895794, 33.214188, 46.077168>,  <39.785511, 33.412018, 46.156540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895794, 33.214188, 46.077168>,  <40.079597, 32.884468, 45.944878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895794, 33.214188, 46.077168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204666, 0.264073, -0.942538,
		-0.864268, -0.500797, 0.047361,
		-0.459513, 0.824298, 0.330726,
		39.757938, 33.461475, 46.176384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510403, 32.889561, 45.596325>,  <40.079597, 32.884468, 45.944878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510403, 32.889561, 45.596325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624352, 33.264511, 45.676487>,  <39.692722, 33.489483, 45.724586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624352, 33.264511, 45.676487>,  <39.510403, 32.889561, 45.596325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624352, 33.264511, 45.676487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180341, 0.257749, -0.949233,
		-0.941447, 0.234273, 0.242474,
		0.284877, 0.937381, 0.200408,
		39.709816, 33.545727, 45.736610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012806, 33.333584, 45.213634>,  <39.510403, 32.889561, 45.596325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012806, 33.333584, 45.213634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341000, 33.544235, 45.302597>,  <39.537914, 33.670628, 45.355976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341000, 33.544235, 45.302597>,  <39.012806, 33.333584, 45.213634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341000, 33.544235, 45.302597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110600, 0.235470, -0.965568,
		-0.560868, 0.816832, 0.134954,
		0.820484, 0.526631, 0.222409,
		39.587147, 33.702225, 45.369320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919029, 33.871357, 44.842419>,  <39.012806, 33.333584, 45.213634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919029, 33.871357, 44.842419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309956, 33.898922, 44.922527>,  <39.544510, 33.915462, 44.970592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309956, 33.898922, 44.922527>,  <38.919029, 33.871357, 44.842419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309956, 33.898922, 44.922527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173120, 0.284845, -0.942811,
		-0.122019, 0.956093, 0.266452,
		0.977313, 0.068912, 0.200275,
		39.603149, 33.919594, 44.982609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134888, 34.449329, 44.455662>,  <38.919029, 33.871357, 44.842419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134888, 34.449329, 44.455662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460011, 34.230015, 44.534378>,  <39.655087, 34.098427, 44.581608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460011, 34.230015, 44.534378>,  <39.134888, 34.449329, 44.455662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460011, 34.230015, 44.534378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242050, 0.010606, -0.970206,
		0.529860, 0.836226, 0.141333,
		0.812810, -0.548283, 0.196789,
		39.703854, 34.065529, 44.593414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666687, 34.868855, 44.144585>,  <39.134888, 34.449329, 44.455662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666687, 34.868855, 44.144585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817474, 34.502983, 44.202904>,  <39.907948, 34.283459, 44.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817474, 34.502983, 44.202904>,  <39.666687, 34.868855, 44.144585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817474, 34.502983, 44.202904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224567, -0.062456, -0.972455,
		0.898591, 0.399325, 0.181863,
		0.376967, -0.914680, 0.145797,
		39.930565, 34.228580, 44.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400841, 34.833935, 44.155811>,  <39.666687, 34.868855, 44.144585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400841, 34.833935, 44.155811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428215, 34.437641, 44.202724>,  <40.444641, 34.199863, 44.230873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428215, 34.437641, 44.202724>,  <40.400841, 34.833935, 44.155811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428215, 34.437641, 44.202724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310248, -0.090591, -0.946329,
		0.948189, 0.101150, 0.301175,
		0.068438, -0.990738, 0.117279,
		40.448746, 34.140419, 44.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037075, 34.605801, 43.823311>,  <40.400841, 34.833935, 44.155811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037075, 34.605801, 43.823311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795753, 34.287468, 43.844017>,  <40.650963, 34.096470, 43.856441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795753, 34.287468, 43.844017>,  <41.037075, 34.605801, 43.823311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795753, 34.287468, 43.844017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155942, -0.181371, -0.970972,
		0.782120, -0.577715, 0.233525,
		-0.603300, -0.795833, 0.051764,
		40.614765, 34.048717, 43.859547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414959, 34.097660, 43.447964>,  <41.037075, 34.605801, 43.823311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414959, 34.097660, 43.447964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035763, 33.970520, 43.441307>,  <40.808243, 33.894234, 43.437313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035763, 33.970520, 43.441307>,  <41.414959, 34.097660, 43.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035763, 33.970520, 43.441307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115509, -0.294849, -0.948537,
		0.296589, -0.901129, 0.316230,
		-0.947994, -0.317853, -0.016639,
		40.751366, 33.875164, 43.436314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373375, 33.500149, 43.064690>,  <41.414959, 34.097660, 43.447964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373375, 33.500149, 43.064690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993137, 33.613464, 43.013912>,  <40.764996, 33.681454, 42.983444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993137, 33.613464, 43.013912>,  <41.373375, 33.500149, 43.064690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993137, 33.613464, 43.013912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030945, -0.493367, -0.869271,
		-0.308888, -0.822396, 0.477759,
		-0.950595, 0.283292, -0.126946,
		40.707958, 33.698452, 42.975830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044979, 32.903667, 42.725967>,  <41.373375, 33.500149, 43.064690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044979, 32.903667, 42.725967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796955, 33.211132, 42.663124>,  <40.648140, 33.395611, 42.625420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796955, 33.211132, 42.663124>,  <41.044979, 32.903667, 42.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796955, 33.211132, 42.663124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069286, -0.253115, -0.964952,
		-0.781491, -0.587441, 0.210203,
		-0.620058, 0.768665, -0.157106,
		40.610939, 33.441730, 42.615993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222977, 32.773499, 42.642525>,  <41.044979, 32.903667, 42.725967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222977, 32.773499, 42.642525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364292, 33.083206, 42.432499>,  <40.449081, 33.269032, 42.306484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364292, 33.083206, 42.432499>,  <40.222977, 32.773499, 42.642525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364292, 33.083206, 42.432499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256657, -0.459507, -0.850283,
		-0.899620, 0.435156, 0.036384,
		0.353287, 0.774270, -0.525067,
		40.470280, 33.315487, 42.274979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074650, 32.692421, 41.974201>,  <40.222977, 32.773499, 42.642525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074650, 32.692421, 41.974201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276443, 33.029289, 41.898052>,  <40.397518, 33.231411, 41.852364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276443, 33.029289, 41.898052>,  <40.074650, 32.692421, 41.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276443, 33.029289, 41.898052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059487, -0.186064, -0.980735,
		-0.861370, 0.506089, -0.043768,
		0.504483, 0.842172, -0.190376,
		40.427788, 33.281940, 41.840939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768295, 32.988110, 41.423954>,  <40.074650, 32.692421, 41.974201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768295, 32.988110, 41.423954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137287, 33.142006, 41.436649>,  <40.358681, 33.234344, 41.444267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137287, 33.142006, 41.436649>,  <39.768295, 32.988110, 41.423954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137287, 33.142006, 41.436649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092286, -0.139949, -0.985849,
		-0.374859, 0.912352, -0.164606,
		0.922477, 0.384745, 0.031736,
		40.414032, 33.257431, 41.446171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823456, 33.344265, 40.839233>,  <39.768295, 32.988110, 41.423954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823456, 33.344265, 40.839233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205315, 33.294865, 40.947594>,  <40.434433, 33.265224, 41.012611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205315, 33.294865, 40.947594>,  <39.823456, 33.344265, 40.839233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205315, 33.294865, 40.947594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273834, 0.007083, -0.961751,
		0.116855, 0.992319, 0.040580,
		0.954652, -0.123498, 0.270903,
		40.491711, 33.257816, 41.028866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184189, 33.798141, 40.420277>,  <39.823456, 33.344265, 40.839233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184189, 33.798141, 40.420277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429630, 33.505539, 40.539196>,  <40.576897, 33.329975, 40.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429630, 33.505539, 40.539196>,  <40.184189, 33.798141, 40.420277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429630, 33.505539, 40.539196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407887, -0.028745, -0.912580,
		0.676106, 0.681225, 0.280736,
		0.613603, -0.731509, 0.297297,
		40.613712, 33.286087, 40.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770893, 34.080215, 40.130806>,  <40.184189, 33.798141, 40.420277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770893, 34.080215, 40.130806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810234, 33.689156, 40.205135>,  <40.833839, 33.454521, 40.249733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810234, 33.689156, 40.205135>,  <40.770893, 34.080215, 40.130806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810234, 33.689156, 40.205135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418557, -0.128773, -0.899015,
		0.902849, 0.166200, 0.396537,
		0.098353, -0.977648, 0.185827,
		40.839741, 33.395863, 40.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280533, 33.883736, 39.709057>,  <40.770893, 34.080215, 40.130806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280533, 33.883736, 39.709057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156666, 33.515915, 39.805832>,  <41.082344, 33.295223, 39.863899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156666, 33.515915, 39.805832>,  <41.280533, 33.883736, 39.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156666, 33.515915, 39.805832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149632, -0.298405, -0.942637,
		0.938996, -0.255705, 0.230001,
		-0.309671, -0.919548, 0.241940,
		41.063766, 33.240051, 39.878414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849934, 33.328072, 39.501133>,  <41.280533, 33.883736, 39.709057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849934, 33.328072, 39.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501312, 33.138180, 39.550175>,  <41.292141, 33.024246, 39.579601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501312, 33.138180, 39.550175>,  <41.849934, 33.328072, 39.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501312, 33.138180, 39.550175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050956, -0.336406, -0.940337,
		0.487648, -0.813305, 0.317386,
		-0.871552, -0.474727, 0.122605,
		41.239845, 32.995762, 39.586956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961460, 32.666233, 39.220367>,  <41.849934, 33.328072, 39.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961460, 32.666233, 39.220367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569618, 32.746574, 39.218151>,  <41.334515, 32.794781, 39.216824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569618, 32.746574, 39.218151>,  <41.961460, 32.666233, 39.220367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569618, 32.746574, 39.218151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048111, -0.261224, -0.964079,
		-0.195081, -0.944151, 0.265560,
		-0.979607, 0.200850, -0.005535,
		41.275738, 32.806831, 39.216492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565254, 32.042332, 38.929928>,  <41.961460, 32.666233, 39.220367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565254, 32.042332, 38.929928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339592, 32.369473, 38.884605>,  <41.204193, 32.565758, 38.857410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339592, 32.369473, 38.884605>,  <41.565254, 32.042332, 38.929928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339592, 32.369473, 38.884605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230579, -0.287832, -0.929508,
		-0.792817, -0.498263, 0.350963,
		-0.564158, 0.817855, -0.113309,
		41.170345, 32.614830, 38.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216648, 31.755396, 38.874901>,  <41.565254, 32.042332, 38.929928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216648, 31.755396, 38.874901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334232, 31.473951, 38.616127>,  <42.404781, 31.305084, 38.460865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334232, 31.473951, 38.616127>,  <42.216648, 31.755396, 38.874901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334232, 31.473951, 38.616127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794308, 0.556307, -0.244127,
		0.531662, -0.442099, 0.722415,
		0.293957, -0.703613, -0.646930,
		42.422421, 31.262867, 38.422047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860435, 31.552229, 38.949738>,  <42.216648, 31.755396, 38.874901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860435, 31.552229, 38.949738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862701, 31.481625, 38.556023>,  <42.864063, 31.439262, 38.319794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862701, 31.481625, 38.556023>,  <42.860435, 31.552229, 38.949738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862701, 31.481625, 38.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900112, 0.429688, -0.071872,
		0.435621, -0.885558, 0.161314,
		0.005668, -0.176509, -0.984283,
		42.864403, 31.428673, 38.260738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442333, 31.119219, 38.704979>,  <42.860435, 31.552229, 38.949738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442333, 31.119219, 38.704979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322926, 31.359243, 38.408112>,  <43.251282, 31.503258, 38.229992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.322926, 31.359243, 38.408112>,  <43.442333, 31.119219, 38.704979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322926, 31.359243, 38.408112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949672, 0.264084, -0.168469,
		0.094903, -0.755108, -0.648695,
		-0.298522, 0.600060, -0.742168,
		43.233368, 31.539261, 38.185463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998993, 30.978931, 38.052734>,  <43.442333, 31.119219, 38.704979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998993, 30.978931, 38.052734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840130, 31.342745, 38.003716>,  <43.744812, 31.561033, 37.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840130, 31.342745, 38.003716>,  <43.998993, 30.978931, 38.052734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840130, 31.342745, 38.003716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916933, 0.398886, -0.011164,
		0.038728, -0.116801, -0.992400,
		-0.397159, 0.909532, -0.122547,
		43.720982, 31.615604, 37.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380215, 31.346991, 37.555634>,  <43.998993, 30.978931, 38.052734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380215, 31.346991, 37.555634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187988, 31.629179, 37.764004>,  <44.072651, 31.798492, 37.889027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.187988, 31.629179, 37.764004>,  <44.380215, 31.346991, 37.555634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187988, 31.629179, 37.764004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802696, 0.593086, -0.062686,
		-0.353176, 0.388019, -0.851298,
		-0.480569, 0.705472, 0.520925,
		44.043816, 31.840820, 37.920280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543865, 30.940828, 36.863934>,  <44.380215, 31.346991, 37.555634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543865, 30.940828, 36.863934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609322, 30.735477, 36.526966>,  <44.648598, 30.612267, 36.324787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609322, 30.735477, 36.526966>,  <44.543865, 30.940828, 36.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609322, 30.735477, 36.526966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199409, 0.819088, -0.537896,
		0.966156, 0.256009, 0.031668,
		0.163645, -0.513376, -0.842417,
		44.658417, 30.581465, 36.274242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993122, 31.319029, 36.378506>,  <44.543865, 30.940828, 36.863934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993122, 31.319029, 36.378506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807758, 31.043318, 36.155743>,  <44.696541, 30.877892, 36.022083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807758, 31.043318, 36.155743>,  <44.993122, 31.319029, 36.378506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807758, 31.043318, 36.155743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146672, 0.679458, -0.718905,
		0.873921, -0.251466, -0.415966,
		-0.463411, -0.689276, -0.556909,
		44.668736, 30.836535, 35.988670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323681, 31.244753, 35.743427>,  <44.993122, 31.319029, 36.378506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323681, 31.244753, 35.743427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929184, 31.180046, 35.729847>,  <44.692486, 31.141222, 35.721699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.929184, 31.180046, 35.729847>,  <45.323681, 31.244753, 35.743427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929184, 31.180046, 35.729847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091373, 0.704728, -0.703569,
		0.137737, -0.690790, -0.709816,
		-0.986246, -0.161765, -0.033947,
		44.633312, 31.131517, 35.719662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115074, 31.072588, 35.036053>,  <45.323681, 31.244753, 35.743427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115074, 31.072588, 35.036053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811752, 31.260090, 35.217266>,  <44.629757, 31.372591, 35.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811752, 31.260090, 35.217266>,  <45.115074, 31.072588, 35.036053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811752, 31.260090, 35.217266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034800, 0.723059, -0.689909,
		-0.650966, -0.507399, -0.564614,
		-0.758309, 0.468756, 0.453030,
		44.584259, 31.400717, 35.353176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488880, 31.093336, 34.674656>,  <45.115074, 31.072588, 35.036053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488880, 31.093336, 34.674656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476154, 31.406630, 34.923019>,  <44.468517, 31.594606, 35.072037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476154, 31.406630, 34.923019>,  <44.488880, 31.093336, 34.674656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476154, 31.406630, 34.923019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095477, 0.620766, -0.778160,
		-0.994923, 0.034524, -0.094531,
		-0.031817, 0.783235, 0.620911,
		44.466610, 31.641600, 35.109291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978374, 31.516760, 34.458096>,  <44.488880, 31.093336, 34.674656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978374, 31.516760, 34.458096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260075, 31.741905, 34.631168>,  <44.429096, 31.876993, 34.735012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.260075, 31.741905, 34.631168>,  <43.978374, 31.516760, 34.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260075, 31.741905, 34.631168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176134, 0.451877, -0.874519,
		-0.687756, 0.692091, 0.219095,
		0.704251, 0.562865, 0.432682,
		44.471352, 31.910765, 34.760975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807732, 32.267666, 34.382717>,  <43.978374, 31.516760, 34.458096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807732, 32.267666, 34.382717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205147, 32.223640, 34.393826>,  <44.443596, 32.197224, 34.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205147, 32.223640, 34.393826>,  <43.807732, 32.267666, 34.382717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205147, 32.223640, 34.393826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068635, 0.387635, -0.919254,
		0.090412, 0.915219, 0.392683,
		0.993536, -0.110064, 0.027769,
		44.503208, 32.190620, 34.402157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134365, 32.845943, 34.118168>,  <43.807732, 32.267666, 34.382717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134365, 32.845943, 34.118168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402523, 32.551945, 34.077473>,  <44.563419, 32.375546, 34.053055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402523, 32.551945, 34.077473>,  <44.134365, 32.845943, 34.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402523, 32.551945, 34.077473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214298, 0.323057, -0.921797,
		0.710386, 0.596165, 0.374084,
		0.670393, -0.734998, -0.101739,
		44.603642, 32.331444, 34.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548828, 32.917995, 34.714096>,  <44.134365, 32.845943, 34.118168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548828, 32.917995, 34.714096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828026, 33.130993, 34.522575>,  <44.995544, 33.258793, 34.407661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828026, 33.130993, 34.522575>,  <44.548828, 32.917995, 34.714096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828026, 33.130993, 34.522575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145483, 0.549233, 0.822908,
		0.701165, -0.644046, 0.305895,
		0.697998, 0.532492, -0.478800,
		45.037426, 33.290741, 34.378937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117123, 33.105179, 35.202396>,  <44.548828, 32.917995, 34.714096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117123, 33.105179, 35.202396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189663, 33.366703, 34.908554>,  <45.233185, 33.523617, 34.732250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189663, 33.366703, 34.908554>,  <45.117123, 33.105179, 35.202396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189663, 33.366703, 34.908554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311153, 0.670465, 0.673544,
		0.932897, -0.350720, -0.081848,
		0.181349, 0.653814, -0.734602,
		45.244068, 33.562847, 34.688175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807377, 33.414070, 35.342518>,  <45.117123, 33.105179, 35.202396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807377, 33.414070, 35.342518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575695, 33.635479, 35.103142>,  <45.436684, 33.768322, 34.959515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575695, 33.635479, 35.103142>,  <45.807377, 33.414070, 35.342518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575695, 33.635479, 35.103142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258087, 0.820877, 0.509462,
		0.773246, 0.140634, -0.618315,
		-0.579208, 0.553518, -0.598444,
		45.401932, 33.801533, 34.923607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190536, 34.046227, 35.181747>,  <45.807377, 33.414070, 35.342518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190536, 34.046227, 35.181747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796375, 34.107635, 35.152325>,  <45.559879, 34.144482, 35.134670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796375, 34.107635, 35.152325>,  <46.190536, 34.046227, 35.181747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796375, 34.107635, 35.152325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110610, 0.905862, 0.408875,
		0.129406, 0.394771, -0.909621,
		-0.985403, 0.153524, -0.073558,
		45.500755, 34.153694, 35.130257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127731, 34.651352, 34.927540>,  <46.190536, 34.046227, 35.181747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127731, 34.651352, 34.927540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796413, 34.555420, 35.130089>,  <45.597622, 34.497860, 35.251617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796413, 34.555420, 35.130089>,  <46.127731, 34.651352, 34.927540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796413, 34.555420, 35.130089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019946, 0.890568, 0.454414,
		-0.559942, 0.386487, -0.732866,
		-0.828292, -0.239828, 0.506375,
		45.547928, 34.483471, 35.282001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686913, 35.194035, 35.076946>,  <46.127731, 34.651352, 34.927540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686913, 35.194035, 35.076946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791500, 35.454750, 34.792183>,  <46.854252, 35.611179, 34.621326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791500, 35.454750, 34.792183>,  <46.686913, 35.194035, 35.076946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791500, 35.454750, 34.792183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654191, 0.422644, 0.627220,
		0.709696, -0.629721, -0.315884,
		0.261467, 0.651785, -0.711907,
		46.869942, 35.650284, 34.578609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219124, 34.935688, 34.754520>,  <46.686913, 35.194035, 35.076946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219124, 34.935688, 34.754520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227657, 35.334702, 34.727776>,  <47.232777, 35.574108, 34.711731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227657, 35.334702, 34.727776>,  <47.219124, 34.935688, 34.754520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227657, 35.334702, 34.727776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721739, 0.030909, 0.691475,
		0.691837, -0.063006, -0.719300,
		0.021334, 0.997534, -0.066857,
		47.234058, 35.633961, 34.707718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.830780, 35.022781, 34.811165>,  <47.219124, 34.935688, 34.754520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.830780, 35.022781, 34.811165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658772, 35.376431, 34.884270>,  <47.555569, 35.588619, 34.928135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658772, 35.376431, 34.884270>,  <47.830780, 35.022781, 34.811165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658772, 35.376431, 34.884270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791138, 0.271491, 0.548082,
		0.434955, 0.380279, -0.816212,
		-0.430018, 0.884127, 0.182766,
		47.529766, 35.641670, 34.939098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.860840, 27.927998, 29.789612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534760, 27.700485, 29.745914>,  <41.339111, 27.563978, 29.719696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534760, 27.700485, 29.745914>,  <41.860840, 27.927998, 29.789612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534760, 27.700485, 29.745914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444783, 0.493999, 0.747083,
		-0.370960, 0.657613, -0.655693,
		-0.815203, -0.568779, -0.109242,
		41.290199, 27.529852, 29.713142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396923, 28.377968, 29.998264>,  <41.860840, 27.927998, 29.789612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396923, 28.377968, 29.998264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.201344, 28.029797, 30.021177>,  <41.083996, 27.820894, 30.034925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.201344, 28.029797, 30.021177>,  <41.396923, 28.377968, 29.998264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201344, 28.029797, 30.021177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382028, 0.272707, 0.882998,
		-0.784209, 0.409858, -0.465868,
		-0.488949, -0.870430, 0.057282,
		41.054657, 27.768667, 30.038363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722836, 28.524807, 30.118834>,  <41.396923, 28.377968, 29.998264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722836, 28.524807, 30.118834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762535, 28.146933, 30.243874>,  <40.786354, 27.920208, 30.318897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.762535, 28.146933, 30.243874>,  <40.722836, 28.524807, 30.118834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762535, 28.146933, 30.243874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427504, 0.243198, 0.870686,
		-0.898549, -0.220054, -0.379719,
		0.099251, -0.944686, 0.312600,
		40.792309, 27.863527, 30.337654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156601, 28.433807, 30.454556>,  <40.722836, 28.524807, 30.118834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156601, 28.433807, 30.454556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392521, 28.148872, 30.606718>,  <40.534073, 27.977911, 30.698015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392521, 28.148872, 30.606718>,  <40.156601, 28.433807, 30.454556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392521, 28.148872, 30.606718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346160, 0.202581, 0.916043,
		-0.729597, -0.671962, -0.127101,
		0.589798, -0.712340, 0.380409,
		40.569462, 27.935171, 30.720840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645138, 28.124426, 30.763378>,  <40.156601, 28.433807, 30.454556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645138, 28.124426, 30.763378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000114, 28.027508, 30.920218>,  <40.213100, 27.969357, 31.014320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000114, 28.027508, 30.920218>,  <39.645138, 28.124426, 30.763378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000114, 28.027508, 30.920218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363934, 0.153673, 0.918660,
		-0.282844, -0.957954, 0.048196,
		0.887441, -0.242297, 0.392098,
		40.266346, 27.954819, 31.037848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523975, 27.671873, 31.215149>,  <39.645138, 28.124426, 30.763378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523975, 27.671873, 31.215149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868656, 27.835262, 31.335562>,  <40.075466, 27.933296, 31.407810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868656, 27.835262, 31.335562>,  <39.523975, 27.671873, 31.215149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868656, 27.835262, 31.335562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364463, 0.085473, 0.927287,
		0.353041, -0.908760, 0.222525,
		0.861701, 0.408473, 0.301034,
		40.127167, 27.957804, 31.425873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528133, 27.434008, 31.891096>,  <39.523975, 27.671873, 31.215149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528133, 27.434008, 31.891096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785454, 27.739918, 31.876766>,  <39.939846, 27.923464, 31.868168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785454, 27.739918, 31.876766>,  <39.528133, 27.434008, 31.891096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785454, 27.739918, 31.876766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287387, 0.284581, 0.914561,
		0.709628, -0.578043, 0.402858,
		0.643302, 0.764774, -0.035824,
		39.978443, 27.969351, 31.866018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607773, 27.700808, 32.550022>,  <39.528133, 27.434008, 31.891096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607773, 27.700808, 32.550022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826042, 27.984892, 32.372105>,  <39.957005, 28.155342, 32.265354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826042, 27.984892, 32.372105>,  <39.607773, 27.700808, 32.550022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826042, 27.984892, 32.372105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152432, 0.606049, 0.780685,
		0.824020, -0.358196, 0.438961,
		0.545670, 0.710211, -0.444796,
		39.989742, 28.197956, 32.238667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173744, 27.914616, 32.965714>,  <39.607773, 27.700808, 32.550022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173744, 27.914616, 32.965714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096821, 28.235281, 32.739315>,  <40.050667, 28.427679, 32.603474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.096821, 28.235281, 32.739315>,  <40.173744, 27.914616, 32.965714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096821, 28.235281, 32.739315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137711, 0.549011, 0.824392,
		0.971623, 0.236484, 0.004817,
		-0.192311, 0.801662, -0.565998,
		40.039127, 28.475780, 32.569515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681919, 28.473665, 33.167240>,  <40.173744, 27.914616, 32.965714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681919, 28.473665, 33.167240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342487, 28.616606, 33.011185>,  <40.138828, 28.702370, 32.917553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342487, 28.616606, 33.011185>,  <40.681919, 28.473665, 33.167240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342487, 28.616606, 33.011185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050814, 0.678950, 0.732423,
		0.526615, 0.641347, -0.557988,
		-0.848584, 0.357351, -0.390135,
		40.087914, 28.723812, 32.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777031, 29.133238, 33.215790>,  <40.681919, 28.473665, 33.167240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777031, 29.133238, 33.215790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379704, 29.100866, 33.182880>,  <40.141308, 29.081444, 33.163136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379704, 29.100866, 33.182880>,  <40.777031, 29.133238, 33.215790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379704, 29.100866, 33.182880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114615, 0.608521, 0.785217,
		-0.013482, 0.789400, -0.613731,
		-0.993318, -0.080929, -0.082273,
		40.081707, 29.076588, 33.158199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517700, 29.680754, 33.538475>,  <40.777031, 29.133238, 33.215790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517700, 29.680754, 33.538475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.185684, 29.457735, 33.543812>,  <39.986473, 29.323925, 33.547012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.185684, 29.457735, 33.543812>,  <40.517700, 29.680754, 33.538475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185684, 29.457735, 33.543812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289237, 0.450804, 0.844463,
		-0.476839, 0.697080, -0.535448,
		-0.830040, -0.557544, 0.013340,
		39.936672, 29.290472, 33.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996876, 30.172974, 33.668179>,  <40.517700, 29.680754, 33.538475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996876, 30.172974, 33.668179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838173, 29.815992, 33.754070>,  <39.742950, 29.601805, 33.805607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838173, 29.815992, 33.754070>,  <39.996876, 30.172974, 33.668179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838173, 29.815992, 33.754070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235599, 0.325106, 0.915860,
		-0.887172, 0.312787, -0.339250,
		-0.396761, -0.892452, 0.214732,
		39.719143, 29.548256, 33.818489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394150, 30.304506, 34.042248>,  <39.996876, 30.172974, 33.668179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394150, 30.304506, 34.042248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432705, 29.911646, 34.106853>,  <39.455837, 29.675930, 34.145618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432705, 29.911646, 34.106853>,  <39.394150, 30.304506, 34.042248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432705, 29.911646, 34.106853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343042, 0.119551, 0.931681,
		-0.934361, -0.145214, -0.325395,
		0.096391, -0.982151, 0.161518,
		39.461624, 29.617001, 34.155308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775871, 30.021475, 34.218792>,  <39.394150, 30.304506, 34.042248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775871, 30.021475, 34.218792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.062672, 29.794668, 34.380978>,  <39.234753, 29.658585, 34.478291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.062672, 29.794668, 34.380978>,  <38.775871, 30.021475, 34.218792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062672, 29.794668, 34.380978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267384, 0.313461, 0.911180,
		-0.643751, -0.761731, 0.073141,
		0.717001, -0.567016, 0.405465,
		39.277771, 29.624563, 34.502617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395588, 29.643499, 34.787552>,  <38.775871, 30.021475, 34.218792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395588, 29.643499, 34.787552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785873, 29.600641, 34.863979>,  <39.020042, 29.574926, 34.909836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785873, 29.600641, 34.863979>,  <38.395588, 29.643499, 34.787552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785873, 29.600641, 34.863979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154042, 0.284569, 0.946199,
		-0.155757, -0.952649, 0.261151,
		0.975711, -0.107149, 0.191072,
		39.078587, 29.568497, 34.921299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382736, 29.275234, 35.351814>,  <38.395588, 29.643499, 34.787552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382736, 29.275234, 35.351814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740486, 29.453928, 35.342670>,  <38.955135, 29.561144, 35.337185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740486, 29.453928, 35.342670>,  <38.382736, 29.275234, 35.351814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740486, 29.453928, 35.342670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016711, 0.084444, 0.996288,
		0.447006, -0.890673, 0.082990,
		0.894375, 0.446734, -0.022863,
		39.008801, 29.587948, 35.335812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864208, 28.871529, 35.765018>,  <38.382736, 29.275234, 35.351814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864208, 28.871529, 35.765018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023239, 29.237658, 35.739346>,  <39.118656, 29.457335, 35.723942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.023239, 29.237658, 35.739346>,  <38.864208, 28.871529, 35.765018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023239, 29.237658, 35.739346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074030, 0.037721, 0.996542,
		0.914578, -0.400953, -0.052764,
		0.397576, 0.915322, -0.064182,
		39.142513, 29.512255, 35.720093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352734, 28.841965, 36.269142>,  <38.864208, 28.871529, 35.765018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352734, 28.841965, 36.269142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306519, 29.231882, 36.192799>,  <39.278790, 29.465834, 36.146992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306519, 29.231882, 36.192799>,  <39.352734, 28.841965, 36.269142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306519, 29.231882, 36.192799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107554, 0.203295, 0.973192,
		0.987463, 0.091909, -0.128330,
		-0.115534, 0.974794, -0.190861,
		39.271858, 29.524321, 36.135540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855736, 29.187956, 36.695461>,  <39.352734, 28.841965, 36.269142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855736, 29.187956, 36.695461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578781, 29.460014, 36.599125>,  <39.412609, 29.623249, 36.541325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578781, 29.460014, 36.599125>,  <39.855736, 29.187956, 36.695461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578781, 29.460014, 36.599125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002334, 0.335900, 0.941894,
		0.721523, 0.651593, -0.234160,
		-0.692386, 0.680145, -0.240839,
		39.371067, 29.664059, 36.526875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137859, 29.781654, 36.988167>,  <39.855736, 29.187956, 36.695461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137859, 29.781654, 36.988167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749523, 29.859924, 36.932762>,  <39.516521, 29.906887, 36.899517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749523, 29.859924, 36.932762>,  <40.137859, 29.781654, 36.988167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749523, 29.859924, 36.932762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032347, 0.465575, 0.884417,
		0.237547, 0.863106, -0.445668,
		-0.970837, 0.195674, -0.138515,
		39.458271, 29.918627, 36.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003239, 30.535265, 37.305557>,  <40.137859, 29.781654, 36.988167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003239, 30.535265, 37.305557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703762, 30.270306, 37.316055>,  <39.524075, 30.111330, 37.322353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.703762, 30.270306, 37.316055>,  <40.003239, 30.535265, 37.305557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703762, 30.270306, 37.316055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105830, 0.158507, 0.981670,
		-0.654415, 0.732192, -0.188774,
		-0.748692, -0.662398, 0.026242,
		39.479153, 30.071587, 37.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678020, 30.450491, 37.234982>,  <40.003239, 30.535265, 37.305557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678020, 30.450491, 37.234982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959614, 30.359415, 37.504074>,  <41.128571, 30.304770, 37.665527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959614, 30.359415, 37.504074>,  <40.678020, 30.450491, 37.234982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959614, 30.359415, 37.504074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687058, -0.021569, -0.726283,
		0.179878, 0.973495, 0.141252,
		0.703986, -0.227691, 0.672727,
		41.170811, 30.291107, 37.705891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074623, 30.992023, 37.105064>,  <40.678020, 30.450491, 37.234982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074623, 30.992023, 37.105064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296673, 30.709038, 37.280033>,  <41.429901, 30.539248, 37.385014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296673, 30.709038, 37.280033>,  <41.074623, 30.992023, 37.105064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296673, 30.709038, 37.280033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714654, 0.136613, -0.686007,
		0.425567, 0.693421, 0.581429,
		0.555123, -0.707463, 0.437418,
		41.463211, 30.496799, 37.411259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701431, 31.309017, 37.127357>,  <41.074623, 30.992023, 37.105064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701431, 31.309017, 37.127357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.751801, 30.913345, 37.157475>,  <41.782024, 30.675943, 37.175545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.751801, 30.913345, 37.157475>,  <41.701431, 31.309017, 37.127357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751801, 30.913345, 37.157475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700813, 0.034988, -0.712487,
		0.702142, 0.142485, 0.697635,
		0.125927, -0.989178, 0.075289,
		41.789577, 30.616592, 37.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385963, 31.148033, 36.979343>,  <41.701431, 31.309017, 37.127357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385963, 31.148033, 36.979343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.232853, 30.781115, 36.935448>,  <42.140987, 30.560963, 36.909111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.232853, 30.781115, 36.935448>,  <42.385963, 31.148033, 36.979343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232853, 30.781115, 36.935448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710991, -0.216659, -0.668992,
		0.589890, -0.334099, 0.735124,
		-0.382781, -0.917299, -0.109736,
		42.118019, 30.505924, 36.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999641, 30.748318, 36.766533>,  <42.385963, 31.148033, 36.979343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999641, 30.748318, 36.766533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.675732, 30.549295, 36.642139>,  <42.481388, 30.429882, 36.567505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.675732, 30.549295, 36.642139>,  <42.999641, 30.748318, 36.766533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675732, 30.549295, 36.642139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513410, -0.344274, -0.786057,
		0.284044, -0.796187, 0.534233,
		-0.809771, -0.497555, -0.310981,
		42.432800, 30.400028, 36.548843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245865, 29.995310, 36.589645>,  <42.999641, 30.748318, 36.766533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245865, 29.995310, 36.589645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901714, 30.074778, 36.401905>,  <42.695225, 30.122458, 36.289261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901714, 30.074778, 36.401905>,  <43.245865, 29.995310, 36.589645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901714, 30.074778, 36.401905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374306, -0.378706, -0.846449,
		-0.345900, -0.903945, 0.251470,
		-0.860376, 0.198660, -0.469347,
		42.643600, 30.134378, 36.261101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175007, 29.483049, 36.064121>,  <43.245865, 29.995310, 36.589645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175007, 29.483049, 36.064121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.872185, 29.707129, 35.929634>,  <42.690491, 29.841576, 35.848942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.872185, 29.707129, 35.929634>,  <43.175007, 29.483049, 36.064121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872185, 29.707129, 35.929634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066807, -0.445537, -0.892768,
		-0.649926, -0.698337, 0.299871,
		-0.757056, 0.560199, -0.336220,
		42.645069, 29.875189, 35.828770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700367, 29.053602, 35.602882>,  <43.175007, 29.483049, 36.064121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700367, 29.053602, 35.602882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635410, 29.436506, 35.507149>,  <42.596436, 29.666248, 35.449711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635410, 29.436506, 35.507149>,  <42.700367, 29.053602, 35.602882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635410, 29.436506, 35.507149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094547, -0.226338, -0.969449,
		-0.982186, -0.180060, -0.053751,
		-0.162393, 0.957261, -0.239330,
		42.586693, 29.723684, 35.435349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101902, 29.048943, 35.044724>,  <42.700367, 29.053602, 35.602882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101902, 29.048943, 35.044724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.283840, 29.403143, 35.006756>,  <42.393002, 29.615664, 34.983974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.283840, 29.403143, 35.006756>,  <42.101902, 29.048943, 35.044724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283840, 29.403143, 35.006756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051163, -0.132386, -0.989877,
		-0.889102, 0.445381, -0.105520,
		0.454842, 0.885500, -0.094917,
		42.420292, 29.668793, 34.978279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073673, 29.191042, 34.337425>,  <42.101902, 29.048943, 35.044724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073673, 29.191042, 34.337425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.347996, 29.465986, 34.433090>,  <42.512589, 29.630953, 34.490490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.347996, 29.465986, 34.433090>,  <42.073673, 29.191042, 34.337425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347996, 29.465986, 34.433090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433780, -0.122190, -0.892695,
		-0.584380, 0.715964, -0.381963,
		0.685810, 0.687361, 0.239166,
		42.553738, 29.672195, 34.504841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046299, 29.720316, 33.920563>,  <42.073673, 29.191042, 34.337425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046299, 29.720316, 33.920563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.424202, 29.696157, 34.049423>,  <42.650944, 29.681664, 34.126740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.424202, 29.696157, 34.049423>,  <42.046299, 29.720316, 33.920563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424202, 29.696157, 34.049423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323909, 0.021774, -0.945837,
		0.050109, 0.997937, 0.040134,
		0.944760, -0.060394, 0.322150,
		42.707630, 29.678040, 34.146069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375408, 30.162231, 33.465611>,  <42.046299, 29.720316, 33.920563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375408, 30.162231, 33.465611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.664097, 29.939852, 33.630554>,  <42.837311, 29.806423, 33.729519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.664097, 29.939852, 33.630554>,  <42.375408, 30.162231, 33.465611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664097, 29.939852, 33.630554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411915, -0.133808, -0.901344,
		0.556280, 0.820374, 0.132433,
		0.721719, -0.555951, 0.412360,
		42.880611, 29.773066, 33.754261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004906, 30.435772, 33.254963>,  <42.375408, 30.162231, 33.465611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004906, 30.435772, 33.254963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.041142, 30.048429, 33.347988>,  <43.062881, 29.816025, 33.403801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.041142, 30.048429, 33.347988>,  <43.004906, 30.435772, 33.254963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041142, 30.048429, 33.347988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406956, -0.177137, -0.896108,
		0.908945, 0.175820, 0.378030,
		0.090591, -0.968354, 0.232559,
		43.068317, 29.757923, 33.417755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586658, 30.187653, 32.986717>,  <43.004906, 30.435772, 33.254963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586658, 30.187653, 32.986717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423492, 29.827194, 33.045425>,  <43.325592, 29.610918, 33.080650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.423492, 29.827194, 33.045425>,  <43.586658, 30.187653, 32.986717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423492, 29.827194, 33.045425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372565, -0.311047, -0.874326,
		0.833548, -0.301967, 0.462616,
		-0.407913, -0.901147, 0.146770,
		43.301117, 29.556850, 33.089455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987652, 29.720013, 32.622398>,  <43.586658, 30.187653, 32.986717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987652, 29.720013, 32.622398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.668877, 29.494169, 32.708286>,  <43.477612, 29.358664, 32.759819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.668877, 29.494169, 32.708286>,  <43.987652, 29.720013, 32.622398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668877, 29.494169, 32.708286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174716, -0.555721, -0.812803,
		0.578244, -0.610237, 0.541521,
		-0.796937, -0.564611, 0.214724,
		43.429794, 29.324785, 32.772705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243450, 29.063238, 32.488457>,  <43.987652, 29.720013, 32.622398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243450, 29.063238, 32.488457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.846676, 29.015579, 32.471184>,  <43.608612, 28.986984, 32.460819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.846676, 29.015579, 32.471184>,  <44.243450, 29.063238, 32.488457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846676, 29.015579, 32.471184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088485, -0.407224, -0.909032,
		0.090726, -0.905523, 0.414484,
		-0.991937, -0.119149, -0.043180,
		43.549095, 28.979836, 32.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076408, 28.386904, 32.102356>,  <44.243450, 29.063238, 32.488457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076408, 28.386904, 32.102356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.738811, 28.599867, 32.076405>,  <43.536251, 28.727646, 32.060833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.738811, 28.599867, 32.076405>,  <44.076408, 28.386904, 32.102356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738811, 28.599867, 32.076405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169859, -0.380067, -0.909229,
		-0.508742, -0.756365, 0.411210,
		-0.843997, 0.532410, -0.064881,
		43.485611, 28.759590, 32.056942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568279, 27.869776, 31.955931>,  <44.076408, 28.386904, 32.102356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568279, 27.869776, 31.955931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.431530, 28.233725, 31.861908>,  <43.349480, 28.452093, 31.805494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.431530, 28.233725, 31.861908>,  <43.568279, 27.869776, 31.955931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431530, 28.233725, 31.861908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123930, -0.291598, -0.948479,
		-0.931537, -0.295132, 0.212451,
		-0.341877, 0.909872, -0.235058,
		43.328968, 28.506687, 31.791391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.681408, 27.806189, 31.353481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825153, 28.176126, 31.303654>,  <42.911400, 28.398088, 31.273758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.825153, 28.176126, 31.303654>,  <42.681408, 27.806189, 31.353481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825153, 28.176126, 31.303654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421709, -0.280022, -0.862409,
		-0.832477, 0.257389, -0.490646,
		0.359366, 0.924845, -0.124569,
		42.932964, 28.453581, 31.266283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457188, 28.010311, 30.720827>,  <42.681408, 27.806189, 31.353481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457188, 28.010311, 30.720827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767860, 28.251913, 30.792315>,  <42.954266, 28.396873, 30.835207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767860, 28.251913, 30.792315>,  <42.457188, 28.010311, 30.720827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767860, 28.251913, 30.792315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292064, -0.093939, -0.951774,
		-0.558087, 0.791425, -0.249369,
		0.776684, 0.604005, 0.178720,
		43.000866, 28.433115, 30.845930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508762, 28.455793, 30.167109>,  <42.457188, 28.010311, 30.720827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508762, 28.455793, 30.167109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.870888, 28.471399, 30.336290>,  <43.088161, 28.480762, 30.437799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.870888, 28.471399, 30.336290>,  <42.508762, 28.455793, 30.167109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870888, 28.471399, 30.336290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424074, -0.139218, -0.894863,
		0.023969, 0.989493, -0.142581,
		0.905310, 0.039016, 0.422956,
		43.142479, 28.483105, 30.463177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837193, 29.010632, 29.780468>,  <42.508762, 28.455793, 30.167109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837193, 29.010632, 29.780468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104336, 28.767412, 29.952162>,  <43.264622, 28.621481, 30.055178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.104336, 28.767412, 29.952162>,  <42.837193, 29.010632, 29.780468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104336, 28.767412, 29.952162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399199, -0.194103, -0.896083,
		0.628179, 0.769805, 0.113099,
		0.667856, -0.608049, 0.429237,
		43.304691, 28.584997, 30.080933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516926, 29.215956, 29.531689>,  <42.837193, 29.010632, 29.780468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516926, 29.215956, 29.531689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.548824, 28.833189, 29.643370>,  <43.567963, 28.603529, 29.710379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.548824, 28.833189, 29.643370>,  <43.516926, 29.215956, 29.531689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548824, 28.833189, 29.643370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320265, -0.240648, -0.916253,
		0.943966, 0.162484, 0.287276,
		0.079744, -0.956916, 0.279201,
		43.572746, 28.546114, 29.727131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994358, 29.081324, 29.101377>,  <43.516926, 29.215956, 29.531689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994358, 29.081324, 29.101377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832119, 28.735538, 29.220169>,  <43.734776, 28.528069, 29.291443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832119, 28.735538, 29.220169>,  <43.994358, 29.081324, 29.101377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832119, 28.735538, 29.220169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160901, -0.387354, -0.907782,
		0.899778, -0.320412, 0.296203,
		-0.405600, -0.864461, 0.296978,
		43.710438, 28.476200, 29.309263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522045, 28.643837, 28.975210>,  <43.994358, 29.081324, 29.101377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522045, 28.643837, 28.975210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.205837, 28.404593, 29.027887>,  <44.016113, 28.261045, 29.059494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.205837, 28.404593, 29.027887>,  <44.522045, 28.643837, 28.975210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205837, 28.404593, 29.027887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203020, -0.458793, -0.865038,
		0.577808, -0.657093, 0.484113,
		-0.790519, -0.598111, 0.131691,
		43.968681, 28.225159, 29.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766926, 27.881777, 28.911228>,  <44.522045, 28.643837, 28.975210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766926, 27.881777, 28.911228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375130, 27.868174, 28.831793>,  <44.140053, 27.860012, 28.784132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375130, 27.868174, 28.831793>,  <44.766926, 27.881777, 28.911228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375130, 27.868174, 28.831793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198182, -0.340175, -0.919241,
		-0.036291, -0.939747, 0.339940,
		-0.979493, -0.034010, -0.198586,
		44.081284, 27.857971, 28.772217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642654, 27.290405, 28.624035>,  <44.766926, 27.881777, 28.911228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642654, 27.290405, 28.624035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.353584, 27.530161, 28.486357>,  <44.180141, 27.674013, 28.403749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.353584, 27.530161, 28.486357>,  <44.642654, 27.290405, 28.624035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353584, 27.530161, 28.486357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106314, -0.395660, -0.912223,
		-0.682961, -0.695836, 0.222211,
		-0.722677, 0.599388, -0.344197,
		44.136780, 27.709978, 28.383099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386929, 26.888596, 28.039000>,  <44.642654, 27.290405, 28.624035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386929, 26.888596, 28.039000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.249043, 27.261927, 27.998861>,  <44.166309, 27.485926, 27.974777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.249043, 27.261927, 27.998861>,  <44.386929, 26.888596, 28.039000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249043, 27.261927, 27.998861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109597, -0.066152, -0.991772,
		-0.932287, -0.352878, -0.079486,
		-0.344717, 0.933328, -0.100347,
		44.145626, 27.541925, 27.968758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062210, 26.911446, 27.473440>,  <44.386929, 26.888596, 28.039000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062210, 26.911446, 27.473440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069569, 27.309381, 27.513348>,  <44.073982, 27.548143, 27.537292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069569, 27.309381, 27.513348>,  <44.062210, 26.911446, 27.473440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069569, 27.309381, 27.513348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079266, 0.100920, -0.991732,
		-0.996684, 0.010334, 0.080714,
		0.018395, 0.994841, 0.099767,
		44.075089, 27.607834, 27.543278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529140, 27.220058, 27.005972>,  <44.062210, 26.911446, 27.473440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529140, 27.220058, 27.005972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.817810, 27.487808, 27.076546>,  <43.991013, 27.648458, 27.118891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.817810, 27.487808, 27.076546>,  <43.529140, 27.220058, 27.005972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817810, 27.487808, 27.076546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121164, 0.128800, -0.984241,
		-0.681551, 0.731675, 0.011847,
		0.721670, 0.669375, 0.176436,
		44.034309, 27.688622, 27.129477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583920, 27.740191, 26.443304>,  <43.529140, 27.220058, 27.005972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583920, 27.740191, 26.443304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920902, 27.844324, 26.631981>,  <44.123093, 27.906805, 26.745186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920902, 27.844324, 26.631981>,  <43.583920, 27.740191, 26.443304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920902, 27.844324, 26.631981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356559, 0.386931, -0.850383,
		-0.403896, 0.884596, 0.233148,
		0.842457, 0.260335, 0.471690,
		44.173641, 27.922424, 26.773487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657368, 28.432770, 26.230288>,  <43.583920, 27.740191, 26.443304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657368, 28.432770, 26.230288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011810, 28.293282, 26.352407>,  <44.224476, 28.209589, 26.425680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011810, 28.293282, 26.352407>,  <43.657368, 28.432770, 26.230288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011810, 28.293282, 26.352407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430647, 0.375952, -0.820490,
		0.171343, 0.858519, 0.483309,
		0.886107, -0.348720, 0.305302,
		44.277641, 28.188665, 26.443998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146801, 28.953442, 26.183939>,  <43.657368, 28.432770, 26.230288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146801, 28.953442, 26.183939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371449, 28.623100, 26.204109>,  <44.506237, 28.424894, 26.216211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.371449, 28.623100, 26.204109>,  <44.146801, 28.953442, 26.183939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371449, 28.623100, 26.204109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531657, 0.313512, -0.786798,
		0.633972, 0.468693, 0.615147,
		0.561623, -0.825855, 0.050426,
		44.539936, 28.375343, 26.219236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807579, 29.112915, 26.007784>,  <44.146801, 28.953442, 26.183939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807579, 29.112915, 26.007784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.796993, 28.718451, 25.942316>,  <44.790642, 28.481771, 25.903036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.796993, 28.718451, 25.942316>,  <44.807579, 29.112915, 26.007784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796993, 28.718451, 25.942316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752251, 0.088177, -0.652949,
		0.658344, -0.140403, 0.739506,
		-0.026468, -0.986160, -0.163669,
		44.789051, 28.422602, 25.893215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516102, 29.002216, 25.973787>,  <44.807579, 29.112915, 26.007784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516102, 29.002216, 25.973787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.353054, 28.684820, 25.793026>,  <45.255226, 28.494383, 25.684568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.353054, 28.684820, 25.793026>,  <45.516102, 29.002216, 25.973787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353054, 28.684820, 25.793026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741901, 0.000743, -0.670509,
		0.532378, -0.608582, 0.588389,
		-0.407623, -0.793491, -0.451903,
		45.230766, 28.446774, 25.657455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.066891, 28.593575, 25.736406>,  <45.516102, 29.002216, 25.973787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.066891, 28.593575, 25.736406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.764454, 28.464687, 25.508549>,  <45.582993, 28.387356, 25.371834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.764454, 28.464687, 25.508549>,  <46.066891, 28.593575, 25.736406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764454, 28.464687, 25.508549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604828, -0.011530, -0.796273,
		0.250006, -0.946595, 0.203605,
		-0.756096, -0.322219, -0.569645,
		45.537624, 28.368021, 25.337656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329136, 27.993565, 25.314182>,  <46.066891, 28.593575, 25.736406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329136, 27.993565, 25.314182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.011089, 28.127783, 25.112112>,  <45.820263, 28.208315, 24.990870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.011089, 28.127783, 25.112112>,  <46.329136, 27.993565, 25.314182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011089, 28.127783, 25.112112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579769, 0.176166, -0.795508,
		-0.177937, -0.925404, -0.334612,
		-0.795114, 0.335548, -0.505174,
		45.772556, 28.228447, 24.960560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273869, 27.523438, 24.720028>,  <46.329136, 27.993565, 25.314182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273869, 27.523438, 24.720028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.062000, 27.852814, 24.638649>,  <45.934879, 28.050440, 24.589823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.062000, 27.852814, 24.638649>,  <46.273869, 27.523438, 24.720028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062000, 27.852814, 24.638649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565923, 0.164420, -0.807897,
		-0.631805, -0.543055, -0.553094,
		-0.529672, 0.823442, -0.203446,
		45.903099, 28.099846, 24.577616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987869, 27.361681, 24.097801>,  <46.273869, 27.523438, 24.720028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987869, 27.361681, 24.097801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.990921, 27.761595, 24.105507>,  <45.992752, 28.001543, 24.110130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.990921, 27.761595, 24.105507>,  <45.987869, 27.361681, 24.097801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990921, 27.761595, 24.105507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549176, 0.011909, -0.835622,
		-0.835672, 0.016959, -0.548967,
		0.007634, 0.999785, 0.019265,
		45.993210, 28.061531, 24.111286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644730, 27.658487, 23.427418>,  <45.987869, 27.361681, 24.097801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644730, 27.658487, 23.427418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.888535, 27.930271, 23.590799>,  <46.034817, 28.093342, 23.688828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.888535, 27.930271, 23.590799>,  <45.644730, 27.658487, 23.427418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888535, 27.930271, 23.590799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424194, 0.155745, -0.892078,
		-0.669745, 0.716993, -0.193295,
		0.609509, 0.679459, 0.408453,
		46.071388, 28.134109, 23.713335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592304, 28.330458, 23.099171>,  <45.644730, 27.658487, 23.427418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592304, 28.330458, 23.099171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960190, 28.265541, 23.242165>,  <46.180920, 28.226591, 23.327961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960190, 28.265541, 23.242165>,  <45.592304, 28.330458, 23.099171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960190, 28.265541, 23.242165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387640, 0.231142, -0.892361,
		0.062192, 0.959289, 0.275494,
		0.919711, -0.162290, 0.357483,
		46.236103, 28.216854, 23.349409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864368, 28.292976, 22.853951>,  <45.592304, 28.330458, 23.099171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864368, 28.292976, 22.853951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605362, 28.573900, 22.735643>,  <44.449959, 28.742455, 22.664660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.605362, 28.573900, 22.735643>,  <44.864368, 28.292976, 22.853951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605362, 28.573900, 22.735643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708578, -0.412066, 0.572816,
		0.280421, 0.580483, 0.764463,
		-0.647519, 0.702311, -0.295766,
		44.411106, 28.784594, 22.646914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530289, 28.651642, 23.517454>,  <44.864368, 28.292976, 22.853951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530289, 28.651642, 23.517454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277153, 28.609552, 23.210615>,  <44.125271, 28.584299, 23.026512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277153, 28.609552, 23.210615>,  <44.530289, 28.651642, 23.517454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277153, 28.609552, 23.210615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680017, -0.398219, 0.615628,
		-0.370252, 0.911235, 0.180456,
		-0.632843, -0.105224, -0.767097,
		44.087299, 28.577986, 22.980486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869503, 29.056583, 23.661228>,  <44.530289, 28.651642, 23.517454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869503, 29.056583, 23.661228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805305, 28.770046, 23.389612>,  <43.766788, 28.598124, 23.226643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.805305, 28.770046, 23.389612>,  <43.869503, 29.056583, 23.661228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805305, 28.770046, 23.389612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753328, -0.355616, 0.553204,
		-0.637761, 0.600324, -0.482568,
		-0.160493, -0.716344, -0.679039,
		43.757156, 28.555143, 23.185900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157822, 29.133728, 23.475237>,  <43.869503, 29.056583, 23.661228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157822, 29.133728, 23.475237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.284550, 28.759684, 23.411751>,  <43.360588, 28.535257, 23.373659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.284550, 28.759684, 23.411751>,  <43.157822, 29.133728, 23.475237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284550, 28.759684, 23.411751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667584, -0.338715, 0.663026,
		-0.673763, -0.104104, -0.731577,
		0.316820, -0.935112, -0.158716,
		43.379597, 28.479151, 23.364136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551537, 28.768116, 23.446939>,  <43.157822, 29.133728, 23.475237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551537, 28.768116, 23.446939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838390, 28.492138, 23.486307>,  <43.010502, 28.326551, 23.509928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.838390, 28.492138, 23.486307>,  <42.551537, 28.768116, 23.446939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838390, 28.492138, 23.486307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593736, -0.530877, 0.604687,
		-0.364952, -0.492080, -0.790359,
		0.717138, -0.689946, 0.098421,
		43.053532, 28.285154, 23.515833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225517, 28.153669, 23.243946>,  <42.551537, 28.768116, 23.446939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225517, 28.153669, 23.243946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.536106, 28.053625, 23.475306>,  <42.722458, 27.993599, 23.614120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.536106, 28.053625, 23.475306>,  <42.225517, 28.153669, 23.243946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536106, 28.053625, 23.475306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616806, -0.489591, 0.616320,
		0.129030, -0.835311, -0.534421,
		0.776467, -0.250111, 0.578397,
		42.769047, 27.978592, 23.648825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077724, 27.442911, 23.395460>,  <42.225517, 28.153669, 23.243946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077724, 27.442911, 23.395460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.357708, 27.527956, 23.668180>,  <42.525700, 27.578983, 23.831814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.357708, 27.527956, 23.668180>,  <42.077724, 27.442911, 23.395460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357708, 27.527956, 23.668180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480965, -0.565386, 0.670083,
		0.527949, -0.796954, -0.293488,
		0.699959, 0.212612, 0.681802,
		42.567696, 27.591740, 23.872721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252335, 26.762075, 23.733231>,  <42.077724, 27.442911, 23.395460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252335, 26.762075, 23.733231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381134, 27.053215, 23.975407>,  <42.458412, 27.227898, 24.120712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381134, 27.053215, 23.975407>,  <42.252335, 26.762075, 23.733231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381134, 27.053215, 23.975407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450478, -0.444678, 0.774164,
		0.832700, -0.522014, 0.184696,
		0.321994, 0.727848, 0.605440,
		42.477734, 27.271570, 24.157038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565365, 26.462711, 24.404640>,  <42.252335, 26.762075, 23.733231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565365, 26.462711, 24.404640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434864, 26.829323, 24.497187>,  <42.356564, 27.049290, 24.552715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434864, 26.829323, 24.497187>,  <42.565365, 26.462711, 24.404640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434864, 26.829323, 24.497187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350791, -0.344672, 0.870716,
		0.877784, 0.202912, 0.433961,
		-0.326253, 0.916530, 0.231368,
		42.336987, 27.104282, 24.566597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861881, 26.577776, 25.091377>,  <42.565365, 26.462711, 24.404640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861881, 26.577776, 25.091377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547649, 26.821203, 25.046625>,  <42.359112, 26.967258, 25.019773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547649, 26.821203, 25.046625>,  <42.861881, 26.577776, 25.091377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547649, 26.821203, 25.046625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119537, 0.028146, 0.992431,
		0.607109, 0.793004, 0.050635,
		-0.785576, 0.608566, -0.111881,
		42.311977, 27.003773, 25.013062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804173, 26.814241, 25.757030>,  <42.861881, 26.577776, 25.091377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804173, 26.814241, 25.757030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480453, 26.978838, 25.589355>,  <42.286224, 27.077597, 25.488750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480453, 26.978838, 25.589355>,  <42.804173, 26.814241, 25.757030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480453, 26.978838, 25.589355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375005, 0.187340, 0.907896,
		0.452124, 0.891951, 0.002699,
		-0.809293, 0.411493, -0.419187,
		42.237667, 27.102285, 25.463600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697315, 27.512318, 26.068563>,  <42.804173, 26.814241, 25.757030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697315, 27.512318, 26.068563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354782, 27.366842, 25.921911>,  <42.149261, 27.279556, 25.833920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354782, 27.366842, 25.921911>,  <42.697315, 27.512318, 26.068563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354782, 27.366842, 25.921911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466633, 0.240798, 0.851040,
		-0.221231, 0.899858, -0.375914,
		-0.856335, -0.363691, -0.366631,
		42.097881, 27.257734, 25.811922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268684, 28.006815, 26.360806>,  <42.697315, 27.512318, 26.068563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268684, 28.006815, 26.360806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049480, 27.693541, 26.243294>,  <41.917957, 27.505575, 26.172787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049480, 27.693541, 26.243294>,  <42.268684, 28.006815, 26.360806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049480, 27.693541, 26.243294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502607, 0.027562, 0.864075,
		-0.668634, 0.621177, -0.408739,
		-0.548010, -0.783185, -0.293779,
		41.885078, 27.458586, 26.155161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582439, 28.190777, 26.527079>,  <42.268684, 28.006815, 26.360806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582439, 28.190777, 26.527079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650311, 27.796581, 26.525316>,  <41.691032, 27.560064, 26.524260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650311, 27.796581, 26.525316>,  <41.582439, 28.190777, 26.527079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650311, 27.796581, 26.525316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350446, -0.064515, 0.934358,
		-0.921084, -0.156998, -0.356308,
		0.169680, -0.985489, -0.004405,
		41.701214, 27.500935, 26.523994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007732, 27.992128, 27.057354>,  <41.582439, 28.190777, 26.527079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007732, 27.992128, 27.057354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260342, 27.687654, 26.998323>,  <41.411907, 27.504971, 26.962904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.260342, 27.687654, 26.998323>,  <41.007732, 27.992128, 27.057354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260342, 27.687654, 26.998323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209866, -0.351037, 0.912540,
		-0.746417, -0.545316, -0.381434,
		0.631520, -0.761185, -0.147577,
		41.449799, 27.459299, 26.954050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682701, 27.304134, 27.235386>,  <41.007732, 27.992128, 27.057354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682701, 27.304134, 27.235386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077339, 27.252388, 27.275173>,  <41.314121, 27.221340, 27.299046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.077339, 27.252388, 27.275173>,  <40.682701, 27.304134, 27.235386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077339, 27.252388, 27.275173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119925, -0.161427, 0.979571,
		-0.110665, -0.978369, -0.174777,
		0.986596, -0.129365, 0.099467,
		41.373318, 27.213579, 27.305014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734806, 26.708889, 27.603600>,  <40.682701, 27.304134, 27.235386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734806, 26.708889, 27.603600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072468, 26.913572, 27.667551>,  <41.275063, 27.036383, 27.705923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072468, 26.913572, 27.667551>,  <40.734806, 26.708889, 27.603600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072468, 26.913572, 27.667551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053651, -0.216096, 0.974897,
		0.533412, -0.831539, -0.154965,
		0.844152, 0.511708, 0.159881,
		41.325714, 27.067085, 27.715515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224606, 26.286348, 28.102234>,  <40.734806, 26.708889, 27.603600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224606, 26.286348, 28.102234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353821, 26.664831, 28.109568>,  <41.431351, 26.891920, 28.113968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353821, 26.664831, 28.109568>,  <41.224606, 26.286348, 28.102234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353821, 26.664831, 28.109568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126922, -0.062516, 0.989941,
		0.937836, -0.317463, -0.140290,
		0.323039, 0.946208, 0.018337,
		41.450733, 26.948694, 28.115068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601936, 26.197813, 28.707861>,  <41.224606, 26.286348, 28.102234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601936, 26.197813, 28.707861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536076, 26.588621, 28.653721>,  <41.496559, 26.823107, 28.621237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.536076, 26.588621, 28.653721>,  <41.601936, 26.197813, 28.707861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536076, 26.588621, 28.653721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096652, 0.120582, 0.987987,
		0.981605, 0.175755, 0.074577,
		-0.164651, 0.977021, -0.135351,
		41.486679, 26.881727, 28.613115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937378, 26.531097, 29.277653>,  <41.601936, 26.197813, 28.707861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937378, 26.531097, 29.277653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.673027, 26.799822, 29.143837>,  <41.514416, 26.961056, 29.063547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.673027, 26.799822, 29.143837>,  <41.937378, 26.531097, 29.277653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673027, 26.799822, 29.143837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161457, 0.308050, 0.937570,
		0.732924, 0.673629, -0.095113,
		-0.660874, 0.671810, -0.334539,
		41.474766, 27.001366, 29.043476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139118, 27.206087, 29.567705>,  <41.937378, 26.531097, 29.277653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139118, 27.206087, 29.567705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.751137, 27.201082, 29.470518>,  <41.518349, 27.198080, 29.412205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.751137, 27.201082, 29.470518>,  <42.139118, 27.206087, 29.567705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751137, 27.201082, 29.470518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227041, 0.405398, 0.885497,
		0.087421, 0.914055, -0.396057,
		-0.969954, -0.012510, -0.242969,
		41.460152, 27.197329, 29.397627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.917416, 29.148827, 34.162739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568050, 29.306965, 34.049004>,  <43.358429, 29.401848, 33.980762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568050, 29.306965, 34.049004>,  <43.917416, 29.148827, 34.162739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568050, 29.306965, 34.049004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220633, 0.199257, 0.954787,
		0.434125, 0.896660, -0.086808,
		-0.873416, 0.395344, -0.284336,
		43.306026, 29.425568, 33.963703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858101, 29.630289, 34.614918>,  <43.917416, 29.148827, 34.162739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858101, 29.630289, 34.614918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483913, 29.637064, 34.473713>,  <43.259399, 29.641129, 34.388992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483913, 29.637064, 34.473713>,  <43.858101, 29.630289, 34.614918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483913, 29.637064, 34.473713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318963, 0.389694, 0.863945,
		0.152197, 0.920789, -0.359143,
		-0.935467, 0.016936, -0.353007,
		43.203274, 29.642145, 34.367809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604725, 30.238987, 34.904423>,  <43.858101, 29.630289, 34.614918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604725, 30.238987, 34.904423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259033, 30.070641, 34.794170>,  <43.051617, 29.969633, 34.728020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259033, 30.070641, 34.794170>,  <43.604725, 30.238987, 34.904423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259033, 30.070641, 34.794170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453299, 0.413770, 0.789503,
		-0.218224, 0.807260, -0.548371,
		-0.864233, -0.420864, -0.275635,
		42.999763, 29.944382, 34.711479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084522, 30.793447, 34.963837>,  <43.604725, 30.238987, 34.904423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084522, 30.793447, 34.963837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899441, 30.438887, 34.969418>,  <42.788391, 30.226151, 34.972767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899441, 30.438887, 34.969418>,  <43.084522, 30.793447, 34.963837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899441, 30.438887, 34.969418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576160, 0.312643, 0.755178,
		-0.673756, 0.341383, -0.655371,
		-0.462702, -0.886404, 0.013954,
		42.760632, 30.172966, 34.973602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392582, 30.977648, 35.288311>,  <43.084522, 30.793447, 34.963837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392582, 30.977648, 35.288311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429314, 30.580986, 35.324505>,  <42.451351, 30.342989, 35.346222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429314, 30.580986, 35.324505>,  <42.392582, 30.977648, 35.288311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429314, 30.580986, 35.324505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387273, 0.048153, 0.920707,
		-0.917381, -0.119590, -0.379619,
		0.091827, -0.991655, 0.090488,
		42.456863, 30.283489, 35.351650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762630, 30.749329, 35.474640>,  <42.392582, 30.977648, 35.288311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762630, 30.749329, 35.474640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032993, 30.475018, 35.582607>,  <42.195213, 30.310431, 35.647388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032993, 30.475018, 35.582607>,  <41.762630, 30.749329, 35.474640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032993, 30.475018, 35.582607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251581, 0.129548, 0.959127,
		-0.692714, -0.716190, -0.084966,
		0.675910, -0.685777, 0.269920,
		42.235767, 30.269285, 35.663582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407013, 30.367699, 35.866238>,  <41.762630, 30.749329, 35.474640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407013, 30.367699, 35.866238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781395, 30.284201, 35.979671>,  <42.006023, 30.234102, 36.047733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781395, 30.284201, 35.979671>,  <41.407013, 30.367699, 35.866238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781395, 30.284201, 35.979671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291008, -0.005082, 0.956707,
		-0.198270, -0.977956, -0.065504,
		0.935950, -0.208749, 0.283586,
		42.062180, 30.221577, 36.064747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374237, 29.755247, 36.152744>,  <41.407013, 30.367699, 35.866238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374237, 29.755247, 36.152744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701900, 29.942982, 36.284630>,  <41.898499, 30.055622, 36.363762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701900, 29.942982, 36.284630>,  <41.374237, 29.755247, 36.152744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701900, 29.942982, 36.284630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329303, -0.085830, 0.940315,
		0.469622, -0.878839, 0.084245,
		0.819155, 0.469335, 0.329712,
		41.947647, 30.083782, 36.383545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575062, 29.398245, 36.710564>,  <41.374237, 29.755247, 36.152744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575062, 29.398245, 36.710564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768547, 29.743856, 36.766384>,  <41.884640, 29.951223, 36.799877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768547, 29.743856, 36.766384>,  <41.575062, 29.398245, 36.710564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768547, 29.743856, 36.766384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235349, -0.025161, 0.971585,
		0.842988, -0.502814, 0.191177,
		0.483717, 0.864028, 0.139547,
		41.913662, 30.003065, 36.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128521, 29.376308, 37.419518>,  <41.575062, 29.398245, 36.710564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128521, 29.376308, 37.419518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031609, 29.753645, 37.328827>,  <41.973461, 29.980047, 37.274414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031609, 29.753645, 37.328827>,  <42.128521, 29.376308, 37.419518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031609, 29.753645, 37.328827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198077, 0.180674, 0.963391,
		0.949772, 0.278317, 0.143082,
		-0.242277, 0.943343, -0.226728,
		41.958927, 30.036648, 37.260807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276768, 29.722698, 38.122986>,  <42.128521, 29.376308, 37.419518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276768, 29.722698, 38.122986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.020844, 29.945843, 37.911537>,  <41.867290, 30.079729, 37.784668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.020844, 29.945843, 37.911537>,  <42.276768, 29.722698, 38.122986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020844, 29.945843, 37.911537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493804, 0.228658, 0.838971,
		0.588902, 0.797815, 0.129176,
		-0.639807, 0.557859, -0.528621,
		41.828903, 30.113201, 37.752953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134445, 30.309772, 38.560211>,  <42.276768, 29.722698, 38.122986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134445, 30.309772, 38.560211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822708, 30.272923, 38.312294>,  <41.635666, 30.250813, 38.163544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822708, 30.272923, 38.312294>,  <42.134445, 30.309772, 38.560211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822708, 30.272923, 38.312294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600877, 0.390371, 0.697537,
		0.177686, 0.916036, -0.359590,
		-0.779342, -0.092127, -0.619789,
		41.588905, 30.245285, 38.126358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708160, 31.011755, 38.533173>,  <42.134445, 30.309772, 38.560211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708160, 31.011755, 38.533173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519711, 30.672474, 38.436348>,  <41.406639, 30.468906, 38.378254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519711, 30.672474, 38.436348>,  <41.708160, 31.011755, 38.533173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519711, 30.672474, 38.436348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682234, 0.176451, 0.709522,
		-0.559105, 0.499418, -0.661803,
		-0.471124, -0.848202, -0.242066,
		41.378372, 30.418013, 38.363728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044430, 31.083893, 38.772217>,  <41.708160, 31.011755, 38.533173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044430, 31.083893, 38.772217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015686, 30.692038, 38.697231>,  <40.998440, 30.456924, 38.652241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015686, 30.692038, 38.697231>,  <41.044430, 31.083893, 38.772217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015686, 30.692038, 38.697231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693808, -0.085934, 0.715015,
		-0.716566, 0.181441, -0.673507,
		-0.071856, -0.979640, -0.187463,
		40.994129, 30.398146, 38.640991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796410, 31.742556, 38.482395>,  <41.044430, 31.083893, 38.772217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796410, 31.742556, 38.482395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828762, 32.141239, 38.480179>,  <40.848175, 32.380447, 38.478851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.828762, 32.141239, 38.480179>,  <40.796410, 31.742556, 38.482395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828762, 32.141239, 38.480179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356071, 0.023705, -0.934158,
		-0.930952, 0.077532, 0.356816,
		0.080885, 0.996708, -0.005538,
		40.853027, 32.440250, 38.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246681, 31.973457, 38.171906>,  <40.796410, 31.742556, 38.482395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246681, 31.973457, 38.171906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491901, 32.287361, 38.135410>,  <40.639034, 32.475704, 38.113514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491901, 32.287361, 38.135410>,  <40.246681, 31.973457, 38.171906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491901, 32.287361, 38.135410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225810, 0.063381, -0.972108,
		-0.757087, 0.616553, 0.216062,
		0.613050, 0.784758, -0.091239,
		40.675816, 32.522789, 38.108040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779320, 32.629642, 37.854111>,  <40.246681, 31.973457, 38.171906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779320, 32.629642, 37.854111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172009, 32.665424, 37.786915>,  <40.407623, 32.686893, 37.746597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172009, 32.665424, 37.786915>,  <39.779320, 32.629642, 37.854111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172009, 32.665424, 37.786915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186337, 0.272106, -0.944054,
		-0.038736, 0.958101, 0.283800,
		0.981722, 0.089452, -0.167989,
		40.466526, 32.692261, 37.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828587, 33.308792, 37.501320>,  <39.779320, 32.629642, 37.854111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828587, 33.308792, 37.501320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166485, 33.117069, 37.406094>,  <40.369225, 33.002037, 37.348957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166485, 33.117069, 37.406094>,  <39.828587, 33.308792, 37.501320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166485, 33.117069, 37.406094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052107, 0.369065, -0.927942,
		0.532628, 0.796278, 0.286790,
		0.844743, -0.479304, -0.238066,
		40.419907, 32.973278, 37.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195637, 33.770336, 37.057575>,  <39.828587, 33.308792, 37.501320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195637, 33.770336, 37.057575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359348, 33.410477, 36.996742>,  <40.457577, 33.194561, 36.960243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359348, 33.410477, 36.996742>,  <40.195637, 33.770336, 37.057575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359348, 33.410477, 36.996742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095895, 0.208173, -0.973380,
		0.907356, 0.383801, 0.171472,
		0.409280, -0.899645, -0.152083,
		40.482132, 33.140583, 36.951118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748730, 33.881817, 36.656689>,  <40.195637, 33.770336, 37.057575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748730, 33.881817, 36.656689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658604, 33.498333, 36.587273>,  <40.604527, 33.268242, 36.545624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658604, 33.498333, 36.587273>,  <40.748730, 33.881817, 36.656689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658604, 33.498333, 36.587273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071040, 0.161482, -0.984316,
		0.971692, -0.234111, 0.031722,
		-0.225316, -0.958705, -0.173543,
		40.591007, 33.210720, 36.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302799, 33.618988, 36.209431>,  <40.748730, 33.881817, 36.656689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302799, 33.618988, 36.209431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990368, 33.372082, 36.171696>,  <40.802910, 33.223938, 36.149055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990368, 33.372082, 36.171696>,  <41.302799, 33.618988, 36.209431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990368, 33.372082, 36.171696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086079, 0.043201, -0.995351,
		0.618473, -0.785567, 0.019390,
		-0.781077, -0.617266, -0.094339,
		40.756046, 33.186901, 36.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550797, 33.330830, 35.652782>,  <41.302799, 33.618988, 36.209431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550797, 33.330830, 35.652782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170258, 33.207726, 35.658691>,  <40.941933, 33.133862, 35.662235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170258, 33.207726, 35.658691>,  <41.550797, 33.330830, 35.652782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170258, 33.207726, 35.658691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026992, 0.035490, -0.999005,
		0.306932, -0.950801, -0.042070,
		-0.951349, -0.307763, 0.014771,
		40.884853, 33.115398, 35.663124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504864, 32.721928, 35.145275>,  <41.550797, 33.330830, 35.652782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504864, 32.721928, 35.145275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.125252, 32.843327, 35.179279>,  <40.897484, 32.916164, 35.199684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.125252, 32.843327, 35.179279>,  <41.504864, 32.721928, 35.145275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125252, 32.843327, 35.179279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123458, -0.109790, -0.986258,
		-0.289992, -0.946486, 0.141663,
		-0.949032, 0.303497, 0.085013,
		40.840542, 32.934376, 35.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107468, 32.169418, 34.704563>,  <41.504864, 32.721928, 35.145275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107468, 32.169418, 34.704563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.895069, 32.505043, 34.751923>,  <40.767632, 32.706417, 34.780338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.895069, 32.505043, 34.751923>,  <41.107468, 32.169418, 34.704563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895069, 32.505043, 34.751923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331619, -0.077188, -0.940250,
		-0.779790, -0.538532, 0.319236,
		-0.530996, 0.839062, 0.118397,
		40.735771, 32.756763, 34.787441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410820, 32.144783, 34.417206>,  <41.107468, 32.169418, 34.704563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410820, 32.144783, 34.417206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498020, 32.535141, 34.421326>,  <40.550339, 32.769356, 34.423798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.498020, 32.535141, 34.421326>,  <40.410820, 32.144783, 34.417206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498020, 32.535141, 34.421326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019737, 0.014956, -0.999693,
		-0.975749, 0.217731, 0.022522,
		0.218001, 0.975894, 0.010296,
		40.563419, 32.827908, 34.424416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283077, 32.284027, 33.782112>,  <40.410820, 32.144783, 34.417206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283077, 32.284027, 33.782112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470966, 32.624084, 33.877293>,  <40.583698, 32.828117, 33.934402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470966, 32.624084, 33.877293>,  <40.283077, 32.284027, 33.782112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470966, 32.624084, 33.877293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190168, 0.165776, -0.967654,
		-0.862090, 0.499779, -0.083801,
		0.469721, 0.850141, 0.237956,
		40.611881, 32.879128, 33.948681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043388, 32.658714, 33.261963>,  <40.283077, 32.284027, 33.782112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043388, 32.658714, 33.261963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359371, 32.871452, 33.384014>,  <40.548962, 32.999096, 33.457245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359371, 32.871452, 33.384014>,  <40.043388, 32.658714, 33.261963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359371, 32.871452, 33.384014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099758, 0.379525, -0.919788,
		-0.604988, 0.757035, 0.246754,
		0.789961, 0.531845, 0.305128,
		40.596359, 33.031006, 33.475552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980736, 33.382088, 33.020679>,  <40.043388, 32.658714, 33.261963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980736, 33.382088, 33.020679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371590, 33.324505, 33.083260>,  <40.606102, 33.289955, 33.120808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371590, 33.324505, 33.083260>,  <39.980736, 33.382088, 33.020679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371590, 33.324505, 33.083260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169431, 0.082718, -0.982065,
		0.128437, 0.986120, 0.105218,
		0.977137, -0.143961, 0.156455,
		40.664730, 33.281315, 33.130196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734688, 34.176662, 32.863003>,  <39.980736, 33.382088, 33.020679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734688, 34.176662, 32.863003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362118, 34.168308, 32.717670>,  <39.138577, 34.163296, 32.630470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362118, 34.168308, 32.717670>,  <39.734688, 34.176662, 32.863003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362118, 34.168308, 32.717670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357682, -0.131724, 0.924506,
		-0.067172, 0.991066, 0.115219,
		-0.931424, -0.020889, -0.363335,
		39.082691, 34.162041, 32.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291409, 34.645096, 33.185429>,  <39.734688, 34.176662, 32.863003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291409, 34.645096, 33.185429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033527, 34.363651, 33.065903>,  <38.878799, 34.194786, 32.994186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033527, 34.363651, 33.065903>,  <39.291409, 34.645096, 33.185429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033527, 34.363651, 33.065903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413128, -0.008192, 0.910636,
		-0.643178, 0.710542, -0.285398,
		-0.644707, -0.703607, -0.298814,
		38.840115, 34.152569, 32.976257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558834, 34.841652, 33.279198>,  <39.291409, 34.645096, 33.185429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558834, 34.841652, 33.279198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545033, 34.442097, 33.266342>,  <38.536751, 34.202362, 33.258629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545033, 34.442097, 33.266342>,  <38.558834, 34.841652, 33.279198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545033, 34.442097, 33.266342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416901, -0.014837, 0.908831,
		-0.908297, 0.044760, -0.415925,
		-0.034509, -0.998887, -0.032137,
		38.534679, 34.142429, 33.256702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894093, 34.724655, 33.476048>,  <38.558834, 34.841652, 33.279198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894093, 34.724655, 33.476048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086937, 34.378815, 33.532669>,  <38.202644, 34.171310, 33.566643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086937, 34.378815, 33.532669>,  <37.894093, 34.724655, 33.476048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086937, 34.378815, 33.532669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570403, -0.187119, 0.799767,
		-0.664992, -0.466316, -0.583382,
		0.482106, -0.864601, 0.141556,
		38.231567, 34.119434, 33.575134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427399, 34.275928, 33.479004>,  <37.894093, 34.724655, 33.476048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427399, 34.275928, 33.479004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718540, 34.094711, 33.684914>,  <37.893223, 33.985981, 33.808460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.718540, 34.094711, 33.684914>,  <37.427399, 34.275928, 33.479004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718540, 34.094711, 33.684914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644973, -0.197318, 0.738292,
		-0.232906, -0.869377, -0.435819,
		0.727849, -0.453044, 0.514769,
		37.936893, 33.958801, 33.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154137, 33.757679, 33.722065>,  <37.427399, 34.275928, 33.479004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154137, 33.757679, 33.722065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458691, 33.809326, 33.976192>,  <37.641422, 33.840317, 34.128670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.458691, 33.809326, 33.976192>,  <37.154137, 33.757679, 33.722065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458691, 33.809326, 33.976192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623753, -0.121225, 0.772164,
		0.176719, -0.984191, -0.011759,
		0.761382, 0.129121, 0.635315,
		37.687107, 33.848061, 34.166786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917725, 33.457260, 34.312828>,  <37.154137, 33.757679, 33.722065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917725, 33.457260, 34.312828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219288, 33.678654, 34.454407>,  <37.400227, 33.811489, 34.539356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219288, 33.678654, 34.454407>,  <36.917725, 33.457260, 34.312828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219288, 33.678654, 34.454407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504663, 0.142946, 0.851400,
		0.420639, -0.820502, 0.387090,
		0.753908, 0.553482, 0.353949,
		37.445461, 33.844700, 34.560593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114666, 33.132740, 34.934170>,  <36.917725, 33.457260, 34.312828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114666, 33.132740, 34.934170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.261658, 33.504147, 34.955418>,  <37.349854, 33.726990, 34.968166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.261658, 33.504147, 34.955418>,  <37.114666, 33.132740, 34.934170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261658, 33.504147, 34.955418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442649, 0.124391, 0.888025,
		0.817935, -0.349845, 0.456717,
		0.367483, 0.928512, 0.053115,
		37.371902, 33.782700, 34.971352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248653, 33.282864, 35.736649>,  <37.114666, 33.132740, 34.934170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248653, 33.282864, 35.736649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249588, 33.650578, 35.579212>,  <37.250149, 33.871204, 35.484749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249588, 33.650578, 35.579212>,  <37.248653, 33.282864, 35.736649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249588, 33.650578, 35.579212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451841, 0.352092, 0.819677,
		0.892095, 0.175928, 0.416191,
		0.002334, 0.919282, -0.393591,
		37.250290, 33.926361, 35.461136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496582, 33.762161, 36.282734>,  <37.248653, 33.282864, 35.736649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496582, 33.762161, 36.282734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294338, 33.990047, 36.023571>,  <37.172993, 34.126781, 35.868073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.294338, 33.990047, 36.023571>,  <37.496582, 33.762161, 36.282734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294338, 33.990047, 36.023571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585661, 0.324798, 0.742635,
		0.633531, 0.754936, 0.169441,
		-0.505608, 0.569717, -0.647906,
		37.142654, 34.160961, 35.829201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398804, 34.444695, 36.589169>,  <37.496582, 33.762161, 36.282734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398804, 34.444695, 36.589169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135139, 34.420090, 36.289375>,  <36.976940, 34.405327, 36.109501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135139, 34.420090, 36.289375>,  <37.398804, 34.444695, 36.589169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135139, 34.420090, 36.289375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691031, 0.442673, 0.571417,
		0.296627, 0.894571, -0.334298,
		-0.659158, -0.061513, -0.749485,
		36.937393, 34.401634, 36.064529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974724, 35.002598, 36.775948>,  <37.398804, 34.444695, 36.589169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974724, 35.002598, 36.775948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741276, 34.803261, 36.519497>,  <36.601208, 34.683659, 36.365627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.741276, 34.803261, 36.519497>,  <36.974724, 35.002598, 36.775948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741276, 34.803261, 36.519497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806930, 0.444234, 0.389256,
		0.090826, 0.744521, -0.661392,
		-0.583622, -0.498342, -0.641124,
		36.566189, 34.653759, 36.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.451893, 35.091694, 29.334831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251583, 34.754063, 29.258139>,  <40.131397, 34.551483, 29.212122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251583, 34.754063, 29.258139>,  <40.451893, 35.091694, 29.334831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251583, 34.754063, 29.258139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557466, 0.145052, 0.817430,
		-0.662163, 0.516230, -0.543183,
		-0.500772, -0.844077, -0.191733,
		40.101353, 34.500839, 29.200619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723450, 35.235531, 29.482050>,  <40.451893, 35.091694, 29.334831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723450, 35.235531, 29.482050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750565, 34.837105, 29.504856>,  <39.766834, 34.598049, 29.518539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750565, 34.837105, 29.504856>,  <39.723450, 35.235531, 29.482050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750565, 34.837105, 29.504856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505455, 0.014985, 0.862723,
		-0.860186, -0.087301, -0.502453,
		0.067788, -0.996069, 0.057016,
		39.770901, 34.538284, 29.521961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027962, 35.149456, 29.621786>,  <39.723450, 35.235531, 29.482050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027962, 35.149456, 29.621786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246323, 34.835487, 29.739012>,  <39.377338, 34.647106, 29.809347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246323, 34.835487, 29.739012>,  <39.027962, 35.149456, 29.621786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246323, 34.835487, 29.739012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525276, -0.048120, 0.849570,
		-0.652743, -0.617725, -0.438569,
		0.545904, -0.784921, 0.293066,
		39.410095, 34.600010, 29.826931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545029, 34.731152, 29.801643>,  <39.027962, 35.149456, 29.621786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545029, 34.731152, 29.801643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887466, 34.611362, 29.970127>,  <39.092930, 34.539490, 30.071217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887466, 34.611362, 29.970127>,  <38.545029, 34.731152, 29.801643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887466, 34.611362, 29.970127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449866, -0.030616, 0.892571,
		-0.254409, -0.953612, -0.160935,
		0.856094, -0.299477, 0.421208,
		39.144295, 34.521519, 30.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369152, 34.224556, 30.236588>,  <38.545029, 34.731152, 29.801643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369152, 34.224556, 30.236588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728477, 34.311298, 30.389429>,  <38.944073, 34.363342, 30.481134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728477, 34.311298, 30.389429>,  <38.369152, 34.224556, 30.236588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728477, 34.311298, 30.389429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327590, -0.248935, 0.911436,
		0.292771, -0.943930, -0.152582,
		0.898315, 0.216858, 0.382102,
		38.997971, 34.376354, 30.504061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596405, 33.680332, 30.708944>,  <38.369152, 34.224556, 30.236588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596405, 33.680332, 30.708944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807175, 34.002045, 30.818840>,  <38.933636, 34.195072, 30.884777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807175, 34.002045, 30.818840>,  <38.596405, 33.680332, 30.708944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807175, 34.002045, 30.818840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297605, -0.128189, 0.946044,
		0.796107, -0.580253, 0.171814,
		0.526920, 0.804285, 0.274739,
		38.965252, 34.243328, 30.901262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090424, 33.377224, 31.152317>,  <38.596405, 33.680332, 30.708944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090424, 33.377224, 31.152317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078243, 33.762344, 31.259712>,  <39.070934, 33.993416, 31.324150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078243, 33.762344, 31.259712>,  <39.090424, 33.377224, 31.152317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078243, 33.762344, 31.259712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074377, -0.270050, 0.959969,
		0.996765, 0.009263, 0.079833,
		-0.030452, 0.962802, 0.268488,
		39.069107, 34.051186, 31.340258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640892, 33.469292, 31.628496>,  <39.090424, 33.377224, 31.152317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640892, 33.469292, 31.628496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373783, 33.761700, 31.684629>,  <39.213516, 33.937145, 31.718309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373783, 33.761700, 31.684629>,  <39.640892, 33.469292, 31.628496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373783, 33.761700, 31.684629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008423, -0.195934, 0.980581,
		0.744319, 0.653622, 0.136996,
		-0.667771, 0.731019, 0.140332,
		39.173450, 33.981007, 31.726728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811131, 33.744305, 32.298874>,  <39.640892, 33.469292, 31.628496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811131, 33.744305, 32.298874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449093, 33.906261, 32.246929>,  <39.231869, 34.003437, 32.215763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449093, 33.906261, 32.246929>,  <39.811131, 33.744305, 32.298874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449093, 33.906261, 32.246929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164941, -0.052830, 0.984887,
		0.391912, 0.912837, 0.114600,
		-0.905096, 0.404891, -0.129860,
		39.177563, 34.027729, 32.207970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401897, 34.039261, 32.559265>,  <39.811131, 33.744305, 32.298874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401897, 34.039261, 32.559265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667019, 33.749474, 32.634987>,  <40.826092, 33.575603, 32.680420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667019, 33.749474, 32.634987>,  <40.401897, 34.039261, 32.559265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667019, 33.749474, 32.634987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427807, 0.158887, -0.889796,
		0.614547, 0.670750, 0.415242,
		0.662808, -0.724464, 0.189308,
		40.865860, 33.532135, 32.691780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957245, 34.241104, 32.120262>,  <40.401897, 34.039261, 32.559265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957245, 34.241104, 32.120262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075226, 33.879013, 32.242615>,  <41.146015, 33.661758, 32.316029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075226, 33.879013, 32.242615>,  <40.957245, 34.241104, 32.120262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075226, 33.879013, 32.242615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516258, -0.118406, -0.848208,
		0.804041, 0.408094, 0.432408,
		0.294949, -0.905229, 0.305885,
		41.163712, 33.607445, 32.334381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672234, 34.286816, 32.066303>,  <40.957245, 34.241104, 32.120262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672234, 34.286816, 32.066303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560520, 33.903011, 32.051708>,  <41.493492, 33.672729, 32.042953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560520, 33.903011, 32.051708>,  <41.672234, 34.286816, 32.066303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560520, 33.903011, 32.051708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731397, -0.187960, -0.655537,
		0.622140, -0.209767, 0.754281,
		-0.279285, -0.959515, -0.036486,
		41.476734, 33.615158, 32.040764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191029, 33.879280, 32.161629>,  <41.672234, 34.286816, 32.066303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191029, 33.879280, 32.161629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939388, 33.653023, 31.948355>,  <41.788406, 33.517269, 31.820391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939388, 33.653023, 31.948355>,  <42.191029, 33.879280, 32.161629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939388, 33.653023, 31.948355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687232, -0.084190, -0.721543,
		0.363244, -0.820344, 0.441689,
		-0.629099, -0.565639, -0.533186,
		41.750660, 33.483330, 31.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565380, 33.308792, 31.901068>,  <42.191029, 33.879280, 32.161629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565380, 33.308792, 31.901068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254944, 33.287865, 31.649689>,  <42.068684, 33.275311, 31.498861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254944, 33.287865, 31.649689>,  <42.565380, 33.308792, 31.901068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254944, 33.287865, 31.649689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629796, -0.115291, -0.768157,
		-0.032268, -0.991953, 0.122424,
		-0.776090, -0.052315, -0.628448,
		42.022118, 33.272171, 31.461155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732071, 32.831589, 31.461142>,  <42.565380, 33.308792, 31.901068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732071, 32.831589, 31.461142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452324, 33.030491, 31.255770>,  <42.284473, 33.149834, 31.132545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452324, 33.030491, 31.255770>,  <42.732071, 32.831589, 31.461142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452324, 33.030491, 31.255770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547999, -0.088141, -0.831822,
		-0.458887, -0.863112, -0.210855,
		-0.699371, 0.497261, -0.513431,
		42.242512, 33.179668, 31.101740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688297, 32.525623, 30.828087>,  <42.732071, 32.831589, 31.461142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688297, 32.525623, 30.828087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541203, 32.893581, 30.773586>,  <42.452946, 33.114357, 30.740885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541203, 32.893581, 30.773586>,  <42.688297, 32.525623, 30.828087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541203, 32.893581, 30.773586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437422, 0.041810, -0.898284,
		-0.820630, -0.389930, -0.417757,
		-0.367735, 0.919895, -0.136253,
		42.430882, 33.169548, 30.732710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290054, 32.483406, 30.237799>,  <42.688297, 32.525623, 30.828087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290054, 32.483406, 30.237799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388458, 32.867142, 30.293150>,  <42.447502, 33.097382, 30.326361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388458, 32.867142, 30.293150>,  <42.290054, 32.483406, 30.237799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388458, 32.867142, 30.293150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350798, 0.044966, -0.935371,
		-0.903560, 0.278654, -0.325472,
		0.246010, 0.959338, 0.138380,
		42.462261, 33.154942, 30.334663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167660, 32.849709, 29.685829>,  <42.290054, 32.483406, 30.237799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167660, 32.849709, 29.685829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441322, 33.088776, 29.853029>,  <42.605522, 33.232216, 29.953350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441322, 33.088776, 29.853029>,  <42.167660, 32.849709, 29.685829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441322, 33.088776, 29.853029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457357, 0.094863, -0.884209,
		-0.568113, 0.796115, -0.208445,
		0.684158, 0.597664, 0.418001,
		42.646568, 33.268074, 29.978430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320473, 33.303764, 29.110569>,  <42.167660, 32.849709, 29.685829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320473, 33.303764, 29.110569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613152, 33.378445, 29.372795>,  <42.788757, 33.423252, 29.530130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613152, 33.378445, 29.372795>,  <42.320473, 33.303764, 29.110569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613152, 33.378445, 29.372795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646129, 0.116360, -0.754306,
		-0.217112, 0.975501, -0.035493,
		0.731696, 0.186702, 0.655563,
		42.832661, 33.434456, 29.569464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697010, 33.866421, 28.902382>,  <42.320473, 33.303764, 29.110569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697010, 33.866421, 28.902382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962185, 33.687984, 29.142885>,  <43.121292, 33.580921, 29.287188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962185, 33.687984, 29.142885>,  <42.697010, 33.866421, 28.902382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962185, 33.687984, 29.142885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658433, -0.034847, -0.751832,
		0.356339, 0.894308, 0.270621,
		0.662939, -0.446093, 0.601259,
		43.161068, 33.554157, 29.323263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321556, 34.073917, 28.645464>,  <42.697010, 33.866421, 28.902382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321556, 34.073917, 28.645464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449612, 33.768322, 28.869545>,  <43.526447, 33.584965, 29.003994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449612, 33.768322, 28.869545>,  <43.321556, 34.073917, 28.645464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449612, 33.768322, 28.869545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824222, -0.066929, -0.562297,
		0.467083, 0.641748, 0.608271,
		0.320142, -0.763990, 0.560204,
		43.545654, 33.539124, 29.037607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094425, 34.218060, 28.905563>,  <43.321556, 34.073917, 28.645464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094425, 34.218060, 28.905563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007225, 33.828979, 28.937380>,  <43.954906, 33.595531, 28.956470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007225, 33.828979, 28.937380>,  <44.094425, 34.218060, 28.905563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007225, 33.828979, 28.937380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888900, -0.231542, -0.395278,
		0.402905, -0.015464, 0.915111,
		-0.217999, -0.972702, 0.079543,
		43.941826, 33.537170, 28.961243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661961, 33.900581, 29.204416>,  <44.094425, 34.218060, 28.905563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661961, 33.900581, 29.204416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490532, 33.593437, 29.013956>,  <44.387676, 33.409153, 28.899679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490532, 33.593437, 29.013956>,  <44.661961, 33.900581, 29.204416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490532, 33.593437, 29.013956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811252, -0.095042, -0.576920,
		0.397738, -0.633531, 0.663658,
		-0.428573, -0.767857, -0.476151,
		44.361961, 33.363079, 28.871111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.951363, 27.233128, 27.275724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340031, 27.301458, 27.210386>,  <38.573231, 27.342457, 27.171185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340031, 27.301458, 27.210386>,  <37.951363, 27.233128, 27.275724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340031, 27.301458, 27.210386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054297, 0.511279, 0.857698,
		0.230032, -0.842266, 0.487517,
		0.971667, 0.170828, -0.163343,
		38.631531, 27.352707, 27.161383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307587, 26.961016, 27.813736>,  <37.951363, 27.233128, 27.275724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307587, 26.961016, 27.813736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542164, 27.251131, 27.669491>,  <38.682911, 27.425200, 27.582943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542164, 27.251131, 27.669491>,  <38.307587, 26.961016, 27.813736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542164, 27.251131, 27.669491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073212, 0.490851, 0.868162,
		0.806675, -0.482727, 0.340956,
		0.586444, 0.725287, -0.360615,
		38.718098, 27.468718, 27.561306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875607, 27.080816, 28.318144>,  <38.307587, 26.961016, 27.813736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875607, 27.080816, 28.318144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886257, 27.423847, 28.112677>,  <38.892647, 27.629665, 27.989397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886257, 27.423847, 28.112677>,  <38.875607, 27.080816, 28.318144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886257, 27.423847, 28.112677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187509, 0.500444, 0.845219,
		0.981902, -0.118819, -0.147480,
		0.026623, 0.857576, -0.513667,
		38.894245, 27.681120, 27.958576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482166, 27.480059, 28.591900>,  <38.875607, 27.080816, 28.318144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482166, 27.480059, 28.591900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242611, 27.744589, 28.411245>,  <39.098877, 27.903307, 28.302853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242611, 27.744589, 28.411245>,  <39.482166, 27.480059, 28.591900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242611, 27.744589, 28.411245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048337, 0.533081, 0.844683,
		0.799371, 0.527703, -0.287290,
		-0.598891, 0.661328, -0.451637,
		39.062943, 27.942987, 28.275755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742599, 28.165342, 28.865038>,  <39.482166, 27.480059, 28.591900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742599, 28.165342, 28.865038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378719, 28.247276, 28.720545>,  <39.160393, 28.296436, 28.633848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378719, 28.247276, 28.720545>,  <39.742599, 28.165342, 28.865038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378719, 28.247276, 28.720545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233576, 0.466839, 0.852938,
		0.343351, 0.860292, -0.376838,
		-0.909699, 0.204837, -0.361234,
		39.105808, 28.308727, 28.612175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633041, 28.944658, 28.987167>,  <39.742599, 28.165342, 28.865038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633041, 28.944658, 28.987167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274597, 28.774096, 28.937910>,  <39.059532, 28.671759, 28.908356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274597, 28.774096, 28.937910>,  <39.633041, 28.944658, 28.987167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274597, 28.774096, 28.937910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323602, 0.437820, 0.838806,
		-0.303755, 0.791513, -0.530321,
		-0.896111, -0.426405, -0.123145,
		39.005764, 28.646173, 28.900967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164936, 29.396320, 29.190714>,  <39.633041, 28.944658, 28.987167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164936, 29.396320, 29.190714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970993, 29.047899, 29.222164>,  <38.854626, 28.838846, 29.241034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970993, 29.047899, 29.222164>,  <39.164936, 29.396320, 29.190714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970993, 29.047899, 29.222164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427167, 0.314300, 0.847787,
		-0.763179, 0.377470, -0.524476,
		-0.484857, -0.871052, 0.078625,
		38.825535, 28.786583, 29.245752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302433, 29.599691, 29.182913>,  <39.164936, 29.396320, 29.190714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302433, 29.599691, 29.182913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358795, 29.250851, 29.370352>,  <38.392612, 29.041546, 29.482815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.358795, 29.250851, 29.370352>,  <38.302433, 29.599691, 29.182913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358795, 29.250851, 29.370352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515776, 0.339348, 0.786650,
		-0.845057, -0.352535, -0.401993,
		0.140906, -0.872102, 0.468597,
		38.401066, 28.989220, 29.510931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634644, 29.429232, 29.470562>,  <38.302433, 29.599691, 29.182913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634644, 29.429232, 29.470562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879807, 29.211847, 29.699995>,  <38.026905, 29.081417, 29.837656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.879807, 29.211847, 29.699995>,  <37.634644, 29.429232, 29.470562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879807, 29.211847, 29.699995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441483, 0.366504, 0.819004,
		-0.655318, -0.755198, -0.015297,
		0.612904, -0.543461, 0.573584,
		38.063679, 29.048809, 29.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248016, 29.126226, 29.905188>,  <37.634644, 29.429232, 29.470562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248016, 29.126226, 29.905188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600952, 29.071001, 30.085150>,  <37.812714, 29.037867, 30.193127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.600952, 29.071001, 30.085150>,  <37.248016, 29.126226, 29.905188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600952, 29.071001, 30.085150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390867, 0.317444, 0.863975,
		-0.262102, -0.938173, 0.226129,
		0.882341, -0.138063, 0.449903,
		37.865654, 29.029583, 30.220121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157860, 28.715858, 30.589426>,  <37.248016, 29.126226, 29.905188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157860, 28.715858, 30.589426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507809, 28.901257, 30.645678>,  <37.717777, 29.012495, 30.679428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.507809, 28.901257, 30.645678>,  <37.157860, 28.715858, 30.589426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507809, 28.901257, 30.645678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252890, 0.189480, 0.948759,
		0.413098, -0.865604, 0.282983,
		0.874869, 0.463494, 0.140629,
		37.770271, 29.040304, 30.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402889, 28.452604, 31.210505>,  <37.157860, 28.715858, 30.589426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402889, 28.452604, 31.210505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614880, 28.790474, 31.180435>,  <37.742073, 28.993196, 31.162394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614880, 28.790474, 31.180435>,  <37.402889, 28.452604, 31.210505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614880, 28.790474, 31.180435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270038, 0.252128, 0.929253,
		0.803869, -0.472182, 0.361716,
		0.529975, 0.844675, -0.075171,
		37.773872, 29.043877, 31.157885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757153, 28.588844, 31.747055>,  <37.402889, 28.452604, 31.210505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757153, 28.588844, 31.747055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790260, 28.964212, 31.612883>,  <37.810123, 29.189434, 31.532379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790260, 28.964212, 31.612883>,  <37.757153, 28.588844, 31.747055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790260, 28.964212, 31.612883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103105, 0.342843, 0.933717,
		0.991221, -0.042696, 0.125132,
		0.082767, 0.938422, -0.335431,
		37.815090, 29.245739, 31.512253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269081, 28.989067, 32.193436>,  <37.757153, 28.588844, 31.747055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269081, 28.989067, 32.193436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027802, 29.258028, 32.021847>,  <37.883034, 29.419405, 31.918892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027802, 29.258028, 32.021847>,  <38.269081, 28.989067, 32.193436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027802, 29.258028, 32.021847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092223, 0.475435, 0.874904,
		0.792239, 0.567305, -0.224772,
		-0.603202, 0.672404, -0.428976,
		37.846840, 29.459749, 31.893154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040516, 29.190580, 32.355183>,  <38.269081, 28.989067, 32.193436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040516, 29.190580, 32.355183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368755, 29.041689, 32.528645>,  <39.565701, 28.952354, 32.632721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.368755, 29.041689, 32.528645>,  <39.040516, 29.190580, 32.355183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368755, 29.041689, 32.528645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310698, -0.346304, -0.885178,
		0.479666, 0.861115, -0.168527,
		0.820602, -0.372229, 0.433656,
		39.614937, 28.930019, 32.658741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560402, 29.487093, 32.018383>,  <39.040516, 29.190580, 32.355183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560402, 29.487093, 32.018383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659897, 29.134291, 32.178482>,  <39.719593, 28.922609, 32.274544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.659897, 29.134291, 32.178482>,  <39.560402, 29.487093, 32.018383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659897, 29.134291, 32.178482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279769, -0.330198, -0.901498,
		0.927287, 0.336212, 0.164626,
		0.248735, -0.882004, 0.400250,
		39.734516, 28.869690, 32.298557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005680, 29.132267, 31.513435>,  <39.560402, 29.487093, 32.018383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005680, 29.132267, 31.513435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094852, 28.879625, 31.810455>,  <40.148354, 28.728041, 31.988667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094852, 28.879625, 31.810455>,  <40.005680, 29.132267, 31.513435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094852, 28.879625, 31.810455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465401, -0.600349, -0.650371,
		0.856566, 0.490570, 0.160114,
		0.222928, -0.631603, 0.742550,
		40.161732, 28.690144, 32.033222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746975, 28.979269, 31.708019>,  <40.005680, 29.132267, 31.513435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746975, 28.979269, 31.708019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518028, 28.658768, 31.777744>,  <40.380661, 28.466467, 31.819580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.518028, 28.658768, 31.777744>,  <40.746975, 28.979269, 31.708019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518028, 28.658768, 31.777744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487220, -0.503301, -0.713656,
		0.659551, -0.323547, 0.678461,
		-0.572371, -0.801253, 0.174314,
		40.346317, 28.418392, 31.830038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305660, 28.336437, 31.760042>,  <40.746975, 28.979269, 31.708019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305660, 28.336437, 31.760042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933289, 28.240429, 31.649944>,  <40.709866, 28.182823, 31.583885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.933289, 28.240429, 31.649944>,  <41.305660, 28.336437, 31.760042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933289, 28.240429, 31.649944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363337, -0.532739, -0.764314,
		0.036818, -0.811529, 0.583152,
		-0.930930, -0.240021, -0.275244,
		40.654011, 28.168423, 31.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279243, 27.615423, 31.804113>,  <41.305660, 28.336437, 31.760042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279243, 27.615423, 31.804113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.992847, 27.728914, 31.548971>,  <40.821011, 27.797009, 31.395885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.992847, 27.728914, 31.548971>,  <41.279243, 27.615423, 31.804113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992847, 27.728914, 31.548971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369536, -0.621148, -0.691099,
		-0.592291, -0.730528, 0.339883,
		-0.715985, 0.283732, -0.637857,
		40.778049, 27.814034, 31.357615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078239, 27.057898, 31.464035>,  <41.279243, 27.615423, 31.804113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078239, 27.057898, 31.464035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940453, 27.333189, 31.208633>,  <40.857780, 27.498363, 31.055393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.940453, 27.333189, 31.208633>,  <41.078239, 27.057898, 31.464035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940453, 27.333189, 31.208633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230038, -0.597515, -0.768152,
		-0.910178, -0.411484, 0.047507,
		-0.344468, 0.688227, -0.638502,
		40.837112, 27.539658, 31.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942917, 26.691227, 30.818691>,  <41.078239, 27.057898, 31.464035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942917, 26.691227, 30.818691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869305, 27.055153, 30.669897>,  <40.825138, 27.273508, 30.580620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869305, 27.055153, 30.669897>,  <40.942917, 26.691227, 30.818691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869305, 27.055153, 30.669897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053940, -0.368530, -0.928050,
		-0.981439, -0.190856, 0.018746,
		-0.184033, 0.909813, -0.371985,
		40.814095, 27.328096, 30.558302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495655, 26.617615, 30.226482>,  <40.942917, 26.691227, 30.818691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495655, 26.617615, 30.226482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666508, 26.974909, 30.170361>,  <40.769020, 27.189285, 30.136688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666508, 26.974909, 30.170361>,  <40.495655, 26.617615, 30.226482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666508, 26.974909, 30.170361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033127, -0.170526, -0.984796,
		-0.903581, 0.415993, -0.102427,
		0.427135, 0.893236, -0.140304,
		40.794647, 27.242880, 30.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132889, 26.953745, 29.569397>,  <40.495655, 26.617615, 30.226482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132889, 26.953745, 29.569397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.494305, 27.114389, 29.629158>,  <40.711155, 27.210775, 29.665014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.494305, 27.114389, 29.629158>,  <40.132889, 26.953745, 29.569397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494305, 27.114389, 29.629158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125895, 0.084467, -0.988441,
		-0.409587, 0.911907, 0.025759,
		0.903542, 0.401610, 0.149401,
		40.765366, 27.234873, 29.673979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258869, 27.554855, 29.052217>,  <40.132889, 26.953745, 29.569397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258869, 27.554855, 29.052217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623772, 27.439939, 29.169016>,  <40.842712, 27.370991, 29.239096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623772, 27.439939, 29.169016>,  <40.258869, 27.554855, 29.052217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623772, 27.439939, 29.169016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319368, 0.052436, -0.946179,
		0.256515, 0.956408, 0.139586,
		0.912252, -0.287289, 0.291996,
		40.897446, 27.353752, 29.256615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622665, 27.793877, 28.540829>,  <40.258869, 27.554855, 29.052217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622665, 27.793877, 28.540829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904903, 27.584063, 28.731405>,  <41.074245, 27.458174, 28.845751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.904903, 27.584063, 28.731405>,  <40.622665, 27.793877, 28.540829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904903, 27.584063, 28.731405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586628, 0.055237, -0.807971,
		0.397490, 0.849597, 0.346681,
		0.705599, -0.524533, 0.476441,
		41.116585, 27.426702, 28.874338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340652, 28.137156, 28.469126>,  <40.622665, 27.793877, 28.540829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340652, 28.137156, 28.469126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388241, 27.741617, 28.504972>,  <41.416794, 27.504295, 28.526480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388241, 27.741617, 28.504972>,  <41.340652, 28.137156, 28.469126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388241, 27.741617, 28.504972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565165, -0.006764, -0.824950,
		0.816354, 0.148796, 0.558055,
		0.118975, -0.988845, 0.089616,
		41.423935, 27.444963, 28.531857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078197, 28.031441, 28.470028>,  <41.340652, 28.137156, 28.469126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078197, 28.031441, 28.470028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.898640, 27.698166, 28.340849>,  <41.790905, 27.498201, 28.263342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.898640, 27.698166, 28.340849>,  <42.078197, 28.031441, 28.470028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898640, 27.698166, 28.340849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534859, 0.038990, -0.844041,
		0.715835, -0.551617, 0.428134,
		-0.448895, -0.833186, -0.322947,
		41.763969, 27.448210, 28.243965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775768, 27.763718, 28.614328>,  <42.078197, 28.031441, 28.470028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775768, 27.763718, 28.614328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.172443, 27.805748, 28.644032>,  <43.410450, 27.830965, 28.661854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.172443, 27.805748, 28.644032>,  <42.775768, 27.763718, 28.614328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172443, 27.805748, 28.644032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096450, 0.225114, 0.969547,
		0.085157, -0.968650, 0.233377,
		0.991688, 0.105073, 0.074256,
		43.469952, 27.837271, 28.666307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923618, 27.415215, 29.179897>,  <42.775768, 27.763718, 28.614328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923618, 27.415215, 29.179897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.234978, 27.663748, 29.144016>,  <43.421791, 27.812868, 29.122488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.234978, 27.663748, 29.144016>,  <42.923618, 27.415215, 29.179897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234978, 27.663748, 29.144016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094149, 0.256815, 0.961864,
		0.620674, -0.740265, 0.258401,
		0.778396, 0.621332, -0.089703,
		43.468498, 27.850147, 29.117105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384441, 27.280602, 29.733852>,  <42.923618, 27.415215, 29.179897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384441, 27.280602, 29.733852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.480309, 27.646139, 29.602737>,  <43.537827, 27.865461, 29.524069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.480309, 27.646139, 29.602737>,  <43.384441, 27.280602, 29.733852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480309, 27.646139, 29.602737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299816, 0.251460, 0.920260,
		0.923402, -0.318831, -0.213719,
		0.239666, 0.913846, -0.327789,
		43.552208, 27.920294, 29.504400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800362, 27.394304, 30.158009>,  <43.384441, 27.280602, 29.733852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800362, 27.394304, 30.158009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.736626, 27.766535, 30.026167>,  <43.698383, 27.989874, 29.947062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.736626, 27.766535, 30.026167>,  <43.800362, 27.394304, 30.158009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736626, 27.766535, 30.026167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066246, 0.323040, 0.944064,
		0.984999, 0.172261, 0.010174,
		-0.159338, 0.930576, -0.329605,
		43.688824, 28.045708, 29.927286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078445, 27.830284, 30.758755>,  <43.800362, 27.394304, 30.158009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078445, 27.830284, 30.758755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.878117, 28.091953, 30.532045>,  <43.757919, 28.248955, 30.396019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.878117, 28.091953, 30.532045>,  <44.078445, 27.830284, 30.758755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878117, 28.091953, 30.532045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302966, 0.480899, 0.822769,
		0.810795, 0.583774, -0.042652,
		-0.500822, 0.654175, -0.566774,
		43.727871, 28.288206, 30.362013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332104, 28.517065, 31.008116>,  <44.078445, 27.830284, 30.758755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332104, 28.517065, 31.008116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.974712, 28.525400, 30.828671>,  <43.760277, 28.530401, 30.721003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.974712, 28.525400, 30.828671>,  <44.332104, 28.517065, 31.008116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974712, 28.525400, 30.828671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385840, 0.475570, 0.790545,
		0.229821, 0.879431, -0.416873,
		-0.893482, 0.020838, -0.448615,
		43.706669, 28.531652, 30.694086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071053, 29.154947, 31.058344>,  <44.332104, 28.517065, 31.008116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071053, 29.154947, 31.058344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746979, 28.931988, 30.985775>,  <43.552536, 28.798212, 30.942234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746979, 28.931988, 30.985775>,  <44.071053, 29.154947, 31.058344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746979, 28.931988, 30.985775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454005, 0.400907, 0.795709,
		-0.370792, 0.727036, -0.577868,
		-0.810181, -0.557398, -0.181425,
		43.503925, 28.764769, 30.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488865, 29.633661, 31.225603>,  <44.071053, 29.154947, 31.058344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488865, 29.633661, 31.225603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.344341, 29.261326, 31.247490>,  <43.257626, 29.037924, 31.260622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.344341, 29.261326, 31.247490>,  <43.488865, 29.633661, 31.225603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344341, 29.261326, 31.247490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409420, 0.211095, 0.887589,
		-0.837753, 0.298292, -0.457375,
		-0.361310, -0.930839, 0.054719,
		43.235947, 28.982075, 31.263906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846230, 29.737692, 31.445183>,  <43.488865, 29.633661, 31.225603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846230, 29.737692, 31.445183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.949921, 29.363279, 31.540388>,  <43.012135, 29.138632, 31.597511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.949921, 29.363279, 31.540388>,  <42.846230, 29.737692, 31.445183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949921, 29.363279, 31.540388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206858, 0.186913, 0.960351,
		-0.943405, -0.298182, -0.145172,
		0.259225, -0.936029, 0.238015,
		43.027687, 29.082470, 31.611794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428715, 29.439644, 31.966780>,  <42.846230, 29.737692, 31.445183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428715, 29.439644, 31.966780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.763908, 29.222324, 31.987215>,  <42.965023, 29.091932, 31.999475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.763908, 29.222324, 31.987215>,  <42.428715, 29.439644, 31.966780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763908, 29.222324, 31.987215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008590, 0.080472, 0.996720,
		-0.545627, -0.835674, 0.062767,
		0.837984, -0.543298, 0.051086,
		43.015305, 29.059336, 32.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276405, 29.096889, 32.538517>,  <42.428715, 29.439644, 31.966780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276405, 29.096889, 32.538517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.672882, 29.054880, 32.506222>,  <42.910767, 29.029675, 32.486847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.672882, 29.054880, 32.506222>,  <42.276405, 29.096889, 32.538517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672882, 29.054880, 32.506222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090298, 0.089738, 0.991864,
		-0.096926, -0.990412, 0.098431,
		0.991187, -0.105025, -0.080735,
		42.970238, 29.023373, 32.482002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512859, 28.471975, 33.003887>,  <42.276405, 29.096889, 32.538517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512859, 28.471975, 33.003887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.802391, 28.739021, 32.934196>,  <42.976112, 28.899248, 32.892380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.802391, 28.739021, 32.934196>,  <42.512859, 28.471975, 33.003887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802391, 28.739021, 32.934196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056806, 0.193996, 0.979356,
		0.687634, -0.718787, 0.102496,
		0.723832, 0.667616, -0.174229,
		43.019543, 28.939306, 32.881927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110931, 28.326941, 33.392334>,  <42.512859, 28.471975, 33.003887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110931, 28.326941, 33.392334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128956, 28.717264, 33.306763>,  <43.139771, 28.951458, 33.255421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.128956, 28.717264, 33.306763>,  <43.110931, 28.326941, 33.392334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128956, 28.717264, 33.306763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116957, 0.207524, 0.971213,
		0.992114, -0.068786, -0.104776,
		0.045062, 0.975809, -0.213932,
		43.142475, 29.010006, 33.242584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444851, 28.624868, 33.890549>,  <43.110931, 28.326941, 33.392334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444851, 28.624868, 33.890549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.337349, 28.970684, 33.720680>,  <43.272850, 29.178173, 33.618759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.337349, 28.970684, 33.720680>,  <43.444851, 28.624868, 33.890549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337349, 28.970684, 33.720680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170927, 0.391085, 0.904343,
		0.947922, 0.315632, 0.042668,
		-0.268753, 0.864540, -0.424668,
		43.256721, 29.230045, 33.593281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.230625, 33.379723, 29.076288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949249, 33.237350, 28.830204>,  <44.780422, 33.151928, 28.682552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949249, 33.237350, 28.830204>,  <45.230625, 33.379723, 29.076288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949249, 33.237350, 28.830204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705870, -0.248544, -0.663305,
		0.083183, -0.900855, 0.426076,
		-0.703440, -0.355930, -0.615212,
		44.738216, 33.130569, 28.645641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406574, 32.646042, 28.853739>,  <45.230625, 33.379723, 29.076288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406574, 32.646042, 28.853739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.145721, 32.775173, 28.579367>,  <44.989208, 32.852654, 28.414743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.145721, 32.775173, 28.579367>,  <45.406574, 32.646042, 28.853739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145721, 32.775173, 28.579367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559173, -0.406126, -0.722764,
		-0.511905, -0.854893, 0.084331,
		-0.652134, 0.322831, -0.685931,
		44.950081, 32.872021, 28.373587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257496, 32.062244, 28.466986>,  <45.406574, 32.646042, 28.853739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257496, 32.062244, 28.466986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.136116, 32.362419, 28.232121>,  <45.063290, 32.542522, 28.091202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.136116, 32.362419, 28.232121>,  <45.257496, 32.062244, 28.466986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136116, 32.362419, 28.232121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442385, -0.434824, -0.784362,
		-0.843928, -0.497768, -0.200034,
		-0.303450, 0.750437, -0.587165,
		45.045082, 32.587551, 28.055971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752808, 31.734308, 27.967148>,  <45.257496, 32.062244, 28.466986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752808, 31.734308, 27.967148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873623, 32.078075, 27.802137>,  <44.946110, 32.284336, 27.703131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873623, 32.078075, 27.802137>,  <44.752808, 31.734308, 27.967148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873623, 32.078075, 27.802137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218200, -0.483573, -0.847671,
		-0.927988, 0.166014, -0.333582,
		0.302037, 0.859416, -0.412525,
		44.964233, 32.335899, 27.678379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409725, 31.815884, 27.275465>,  <44.752808, 31.734308, 27.967148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409725, 31.815884, 27.275465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.744198, 32.034771, 27.260780>,  <44.944881, 32.166103, 27.251970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.744198, 32.034771, 27.260780>,  <44.409725, 31.815884, 27.275465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744198, 32.034771, 27.260780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234047, -0.416571, -0.878459,
		-0.496001, 0.725962, -0.476405,
		0.836185, 0.547217, -0.036710,
		44.995052, 32.198936, 27.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490078, 32.073963, 26.627666>,  <44.409725, 31.815884, 27.275465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490078, 32.073963, 26.627666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.865616, 32.140160, 26.748453>,  <45.090939, 32.179878, 26.820925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.865616, 32.140160, 26.748453>,  <44.490078, 32.073963, 26.627666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865616, 32.140160, 26.748453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339122, -0.292250, -0.894196,
		-0.059728, 0.941915, -0.330498,
		0.938844, 0.165488, 0.301969,
		45.147270, 32.189804, 26.839045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785019, 32.517052, 26.128508>,  <44.490078, 32.073963, 26.627666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785019, 32.517052, 26.128508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.094345, 32.345425, 26.315220>,  <45.279942, 32.242447, 26.427248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.094345, 32.345425, 26.315220>,  <44.785019, 32.517052, 26.128508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094345, 32.345425, 26.315220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363078, -0.303860, -0.880820,
		0.519770, 0.850628, -0.079193,
		0.773313, -0.429071, 0.466782,
		45.326340, 32.216705, 26.455254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378262, 32.669418, 25.761362>,  <44.785019, 32.517052, 26.128508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378262, 32.669418, 25.761362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.456608, 32.326832, 25.952404>,  <45.503616, 32.121281, 26.067030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.456608, 32.326832, 25.952404>,  <45.378262, 32.669418, 25.761362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456608, 32.326832, 25.952404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476320, -0.342633, -0.809766,
		0.857178, 0.386102, 0.340839,
		0.195869, -0.856462, 0.477606,
		45.515369, 32.069893, 26.095686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984848, 32.472729, 25.508312>,  <45.378262, 32.669418, 25.761362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984848, 32.472729, 25.508312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.885952, 32.114140, 25.655394>,  <45.826614, 31.898985, 25.743643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.885952, 32.114140, 25.655394>,  <45.984848, 32.472729, 25.508312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885952, 32.114140, 25.655394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343690, -0.435949, -0.831761,
		0.905952, -0.079267, 0.415893,
		-0.247239, -0.896474, 0.367705,
		45.811779, 31.845198, 25.765705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518684, 32.034733, 25.303143>,  <45.984848, 32.472729, 25.508312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518684, 32.034733, 25.303143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.229382, 31.777868, 25.404747>,  <46.055798, 31.623749, 25.465710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.229382, 31.777868, 25.404747>,  <46.518684, 32.034733, 25.303143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229382, 31.777868, 25.404747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256986, -0.591690, -0.764108,
		0.640978, -0.487371, 0.592972,
		-0.723260, -0.642162, 0.254013,
		46.012405, 31.585220, 25.480951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851162, 31.387405, 25.371275>,  <46.518684, 32.034733, 25.303143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851162, 31.387405, 25.371275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.465656, 31.292213, 25.323080>,  <46.234352, 31.235098, 25.294163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.465656, 31.292213, 25.323080>,  <46.851162, 31.387405, 25.371275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465656, 31.292213, 25.323080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227996, -0.500474, -0.835191,
		0.138458, -0.832400, 0.536600,
		-0.963767, -0.237982, -0.120489,
		46.176525, 31.220819, 25.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835915, 30.640812, 25.248701>,  <46.851162, 31.387405, 25.371275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835915, 30.640812, 25.248701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.553093, 30.859589, 25.069399>,  <46.383400, 30.990854, 24.961819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.553093, 30.859589, 25.069399>,  <46.835915, 30.640812, 25.248701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553093, 30.859589, 25.069399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252517, -0.396813, -0.882482,
		-0.660538, -0.737154, 0.142456,
		-0.707053, 0.546940, -0.448254,
		46.340977, 31.023670, 24.934923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447872, 30.096546, 24.821854>,  <46.835915, 30.640812, 25.248701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447872, 30.096546, 24.821854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.370583, 30.471130, 24.704754>,  <46.324207, 30.695881, 24.634493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.370583, 30.471130, 24.704754>,  <46.447872, 30.096546, 24.821854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370583, 30.471130, 24.704754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066767, -0.285132, -0.956160,
		-0.978880, -0.204299, -0.007431,
		-0.193224, 0.936462, -0.292750,
		46.312614, 30.752069, 24.616928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222126, 29.317427, 24.895702>,  <46.447872, 30.096546, 24.821854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222126, 29.317427, 24.895702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.410957, 28.983953, 25.010323>,  <46.524258, 28.783869, 25.079096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.410957, 28.983953, 25.010323>,  <46.222126, 29.317427, 24.895702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410957, 28.983953, 25.010323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058949, -0.294472, -0.953840,
		0.879582, 0.467182, -0.089870,
		0.472082, -0.833683, 0.286552,
		46.552582, 28.733849, 25.096289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637474, 29.141071, 24.280062>,  <46.222126, 29.317427, 24.895702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637474, 29.141071, 24.280062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.449104, 28.856411, 24.071529>,  <46.336082, 28.685616, 23.946409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.449104, 28.856411, 24.071529>,  <46.637474, 29.141071, 24.280062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449104, 28.856411, 24.071529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718816, -0.033038, 0.694415,
		-0.511403, 0.701758, -0.495986,
		-0.470925, -0.711649, -0.521330,
		46.307827, 28.642916, 23.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999195, 29.329199, 24.179350>,  <46.637474, 29.141071, 24.280062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999195, 29.329199, 24.179350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.996391, 28.930109, 24.152529>,  <45.994709, 28.690655, 24.136436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.996391, 28.930109, 24.152529>,  <45.999195, 29.329199, 24.179350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996391, 28.930109, 24.152529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738598, -0.040042, 0.672956,
		-0.674109, 0.054241, -0.736637,
		-0.007005, -0.997725, -0.067054,
		45.994289, 28.630791, 24.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251316, 29.093325, 24.098524>,  <45.999195, 29.329199, 24.179350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251316, 29.093325, 24.098524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453705, 28.796581, 24.274538>,  <45.575138, 28.618534, 24.380146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453705, 28.796581, 24.274538>,  <45.251316, 29.093325, 24.098524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453705, 28.796581, 24.274538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666370, -0.012284, 0.745520,
		-0.547667, -0.670442, -0.500569,
		0.505977, -0.741860, 0.440035,
		45.605499, 28.574022, 24.406549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717560, 28.760210, 24.384121>,  <45.251316, 29.093325, 24.098524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717560, 28.760210, 24.384121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.029938, 28.572294, 24.548765>,  <45.217365, 28.459545, 24.647552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.029938, 28.572294, 24.548765>,  <44.717560, 28.760210, 24.384121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029938, 28.572294, 24.548765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528498, -0.145787, 0.836323,
		-0.332888, -0.870658, -0.362134,
		0.780945, -0.469788, 0.411610,
		45.264221, 28.431358, 24.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500599, 28.024696, 24.625576>,  <44.717560, 28.760210, 24.384121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500599, 28.024696, 24.625576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.791615, 28.173437, 24.856197>,  <44.966225, 28.262682, 24.994570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.791615, 28.173437, 24.856197>,  <44.500599, 28.024696, 24.625576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791615, 28.173437, 24.856197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504335, -0.279851, 0.816903,
		0.465114, -0.885105, -0.016065,
		0.727541, 0.371851, 0.576552,
		45.009876, 28.284992, 25.029163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616745, 27.442785, 25.125288>,  <44.500599, 28.024696, 24.625576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616745, 27.442785, 25.125288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.807476, 27.757519, 25.282017>,  <44.921917, 27.946360, 25.376055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.807476, 27.757519, 25.282017>,  <44.616745, 27.442785, 25.125288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807476, 27.757519, 25.282017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190784, -0.342494, 0.919945,
		0.858041, -0.513411, -0.013196,
		0.476830, 0.786834, 0.391824,
		44.950523, 27.993568, 25.399565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942047, 27.142979, 25.710079>,  <44.616745, 27.442785, 25.125288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942047, 27.142979, 25.710079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.930061, 27.538618, 25.767744>,  <44.922871, 27.776003, 25.802343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.930061, 27.538618, 25.767744>,  <44.942047, 27.142979, 25.710079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.930061, 27.538618, 25.767744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156904, -0.147093, 0.976599,
		0.987159, 0.006645, 0.159601,
		-0.029966, 0.989100, 0.144162,
		44.921070, 27.835348, 25.810993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155315, 27.232162, 26.284151>,  <44.942047, 27.142979, 25.710079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155315, 27.232162, 26.284151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988457, 27.594126, 26.250391>,  <44.888340, 27.811304, 26.230135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988457, 27.594126, 26.250391>,  <45.155315, 27.232162, 26.284151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988457, 27.594126, 26.250391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438603, -0.119111, 0.890752,
		0.795998, 0.408596, 0.446584,
		-0.417151, 0.904910, -0.084399,
		44.863312, 27.865599, 26.225071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429138, 27.687197, 26.843008>,  <45.155315, 27.232162, 26.284151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429138, 27.687197, 26.843008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.088146, 27.852156, 26.714500>,  <44.883553, 27.951130, 26.637396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.088146, 27.852156, 26.714500>,  <45.429138, 27.687197, 26.843008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088146, 27.852156, 26.714500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351731, 0.002171, 0.936099,
		0.386741, 0.911002, 0.143201,
		-0.852477, 0.412396, -0.321267,
		44.832401, 27.975874, 26.618120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309093, 28.192606, 27.298109>,  <45.429138, 27.687197, 26.843008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309093, 28.192606, 27.298109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.953468, 28.114866, 27.132313>,  <44.740093, 28.068222, 27.032835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.953468, 28.114866, 27.132313>,  <45.309093, 28.192606, 27.298109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953468, 28.114866, 27.132313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424608, 0.011643, 0.905302,
		-0.171118, 0.980863, -0.092873,
		-0.889059, -0.194348, -0.414490,
		44.686752, 28.056562, 27.007965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820736, 28.656998, 27.574820>,  <45.309093, 28.192606, 27.298109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820736, 28.656998, 27.574820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.586246, 28.362480, 27.439640>,  <44.445553, 28.185770, 27.358532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.586246, 28.362480, 27.439640>,  <44.820736, 28.656998, 27.574820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586246, 28.362480, 27.439640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506873, 0.007928, 0.861984,
		-0.631996, 0.676613, -0.377857,
		-0.586226, -0.736296, -0.337947,
		44.410378, 28.141592, 27.338257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139099, 28.879816, 27.741865>,  <44.820736, 28.656998, 27.574820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139099, 28.879816, 27.741865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.148876, 28.484764, 27.679911>,  <44.154743, 28.247732, 27.642738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.148876, 28.484764, 27.679911>,  <44.139099, 28.879816, 27.741865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148876, 28.484764, 27.679911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403092, -0.151516, 0.902530,
		-0.914833, 0.040378, -0.401808,
		0.024438, -0.987630, -0.154888,
		44.156208, 28.188475, 27.633444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449886, 28.554762, 27.714008>,  <44.139099, 28.879816, 27.741865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449886, 28.554762, 27.714008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.654301, 28.217020, 27.778395>,  <43.776951, 28.014376, 27.817026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.654301, 28.217020, 27.778395>,  <43.449886, 28.554762, 27.714008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654301, 28.217020, 27.778395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570959, -0.193464, 0.797858,
		-0.642533, -0.499639, -0.580958,
		0.511036, -0.844353, 0.160967,
		43.807613, 27.963715, 27.826685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974556, 28.095411, 27.967754>,  <43.449886, 28.554762, 27.714008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974556, 28.095411, 27.967754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320683, 27.970621, 28.124674>,  <43.528358, 27.895748, 28.218826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.320683, 27.970621, 28.124674>,  <42.974556, 28.095411, 27.967754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320683, 27.970621, 28.124674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431655, -0.066028, 0.899619,
		-0.254756, -0.947793, -0.191801,
		0.865317, -0.311975, 0.392298,
		43.580276, 27.877029, 28.242363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439297, 27.709572, 27.785358>,  <42.974556, 28.095411, 27.967754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439297, 27.709572, 27.785358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.107433, 27.486454, 27.776108>,  <41.908318, 27.352583, 27.770557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.107433, 27.486454, 27.776108>,  <42.439297, 27.709572, 27.785358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107433, 27.486454, 27.776108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070626, -0.063771, -0.995462,
		0.553791, -0.827524, 0.092303,
		-0.829655, -0.557797, -0.023129,
		41.858536, 27.319115, 27.769169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630127, 26.931566, 27.417971>,  <42.439297, 27.709572, 27.785358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630127, 26.931566, 27.417971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251389, 27.055983, 27.385138>,  <42.024147, 27.130632, 27.365438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.251389, 27.055983, 27.385138>,  <42.630127, 26.931566, 27.417971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251389, 27.055983, 27.385138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002266, -0.248704, -0.968577,
		-0.321686, -0.917277, 0.234779,
		-0.946844, 0.311046, -0.082083,
		41.967335, 27.149296, 27.360514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286407, 26.440382, 26.992378>,  <42.630127, 26.931566, 27.417971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286407, 26.440382, 26.992378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.040775, 26.754593, 26.961794>,  <41.893394, 26.943119, 26.943443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.040775, 26.754593, 26.961794>,  <42.286407, 26.440382, 26.992378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040775, 26.754593, 26.961794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038701, -0.066794, -0.997016,
		-0.788291, -0.615211, 0.010616,
		-0.614085, 0.785528, -0.076462,
		41.856548, 26.990252, 26.938856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586632, 26.196848, 26.608162>,  <42.286407, 26.440382, 26.992378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586632, 26.196848, 26.608162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637157, 26.591995, 26.572035>,  <41.667473, 26.829084, 26.550358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637157, 26.591995, 26.572035>,  <41.586632, 26.196848, 26.608162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637157, 26.591995, 26.572035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072727, -0.081582, -0.994010,
		-0.989321, 0.132125, 0.061540,
		0.126313, 0.987870, -0.090319,
		41.675053, 26.888357, 26.544939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155075, 26.433140, 25.935551>,  <41.586632, 26.196848, 26.608162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155075, 26.433140, 25.935551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388439, 26.752918, 25.992847>,  <41.528458, 26.944786, 26.027225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388439, 26.752918, 25.992847>,  <41.155075, 26.433140, 25.935551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388439, 26.752918, 25.992847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087828, 0.113233, -0.989679,
		-0.807415, 0.589969, -0.004153,
		0.583410, 0.799446, 0.143242,
		41.563461, 26.992752, 26.035820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933460, 26.904327, 25.419563>,  <41.155075, 26.433140, 25.935551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933460, 26.904327, 25.419563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.301853, 27.007732, 25.536158>,  <41.522888, 27.069775, 25.606115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.301853, 27.007732, 25.536158>,  <40.933460, 26.904327, 25.419563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301853, 27.007732, 25.536158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288631, 0.049823, -0.956143,
		-0.261696, 0.964723, -0.028728,
		0.920982, 0.258511, 0.291487,
		41.578148, 27.085285, 25.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087254, 27.531094, 25.116287>,  <40.933460, 26.904327, 25.419563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087254, 27.531094, 25.116287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453442, 27.400898, 25.210918>,  <41.673153, 27.322781, 25.267698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453442, 27.400898, 25.210918>,  <41.087254, 27.531094, 25.116287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453442, 27.400898, 25.210918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341843, 0.318955, -0.883975,
		0.212267, 0.890126, 0.403260,
		0.915471, -0.325490, 0.236579,
		41.728085, 27.303251, 25.281893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795109, 28.276320, 25.125690>,  <41.087254, 27.531094, 25.116287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795109, 28.276320, 25.125690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422688, 28.206038, 24.997772>,  <40.199234, 28.163868, 24.921021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422688, 28.206038, 24.997772>,  <40.795109, 28.276320, 25.125690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422688, 28.206038, 24.997772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213032, -0.449794, 0.867354,
		-0.296241, 0.875679, 0.381350,
		-0.931053, -0.175705, -0.319795,
		40.143372, 28.153326, 24.901834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405785, 28.440409, 25.663784>,  <40.795109, 28.276320, 25.125690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405785, 28.440409, 25.663784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167503, 28.208426, 25.441513>,  <40.024532, 28.069235, 25.308149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.167503, 28.208426, 25.441513>,  <40.405785, 28.440409, 25.663784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167503, 28.208426, 25.441513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422193, -0.362450, 0.830893,
		-0.683290, 0.729573, -0.028941,
		-0.595708, -0.579960, -0.555679,
		39.988792, 28.034437, 25.274809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761116, 28.522192, 25.976830>,  <40.405785, 28.440409, 25.663784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761116, 28.522192, 25.976830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709213, 28.189964, 25.760193>,  <39.678070, 27.990627, 25.630211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709213, 28.189964, 25.760193>,  <39.761116, 28.522192, 25.976830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709213, 28.189964, 25.760193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610258, -0.363607, 0.703829,
		-0.781504, 0.421838, -0.459679,
		-0.129759, -0.830568, -0.541590,
		39.670284, 27.940794, 25.597715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039368, 28.358505, 26.136255>,  <39.761116, 28.522192, 25.976830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039368, 28.358505, 26.136255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197678, 28.027121, 25.977755>,  <39.292664, 27.828289, 25.882654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197678, 28.027121, 25.977755>,  <39.039368, 28.358505, 26.136255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197678, 28.027121, 25.977755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710875, -0.549539, 0.438934,
		-0.581396, 0.107968, -0.806425,
		0.395771, -0.828462, -0.396251,
		39.316410, 27.778582, 25.858879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486568, 27.976629, 25.861322>,  <39.039368, 28.358505, 26.136255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486568, 27.976629, 25.861322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766991, 27.693438, 25.895468>,  <38.935246, 27.523523, 25.915955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.766991, 27.693438, 25.895468>,  <38.486568, 27.976629, 25.861322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766991, 27.693438, 25.895468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630323, -0.559239, 0.538465,
		-0.333482, -0.431302, -0.838313,
		0.701058, -0.707977, 0.085364,
		38.977306, 27.481045, 25.921076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244373, 27.331455, 25.657743>,  <38.486568, 27.976629, 25.861322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244373, 27.331455, 25.657743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542786, 27.234816, 25.905960>,  <38.721832, 27.176832, 26.054890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.542786, 27.234816, 25.905960>,  <38.244373, 27.331455, 25.657743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542786, 27.234816, 25.905960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650849, -0.461635, 0.602734,
		0.140843, -0.853536, -0.501638,
		0.746029, -0.241600, 0.620541,
		38.766594, 27.162336, 26.092123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013676, 26.761173, 26.048679>,  <38.244373, 27.331455, 25.657743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013676, 26.761173, 26.048679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331245, 26.824106, 26.283602>,  <38.521786, 26.861866, 26.424555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331245, 26.824106, 26.283602>,  <38.013676, 26.761173, 26.048679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331245, 26.824106, 26.283602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420222, -0.556120, 0.717039,
		0.439428, -0.816074, -0.375402,
		0.793925, 0.157335, 0.587307,
		38.569424, 26.871307, 26.459793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.997612, 32.095184, 23.261744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344524, 32.052349, 23.456211>,  <43.552670, 32.026646, 23.572891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344524, 32.052349, 23.456211>,  <42.997612, 32.095184, 23.261744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344524, 32.052349, 23.456211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480837, 0.072751, 0.873787,
		-0.128946, -0.991584, 0.011600,
		0.867276, -0.107094, 0.486171,
		43.604706, 32.020222, 23.602062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748394, 31.618929, 23.689739>,  <42.997612, 32.095184, 23.261744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748394, 31.618929, 23.689739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.067974, 31.801865, 23.845957>,  <43.259720, 31.911625, 23.939688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.067974, 31.801865, 23.845957>,  <42.748394, 31.618929, 23.689739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067974, 31.801865, 23.845957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494463, 0.129887, 0.859439,
		0.342330, -0.879755, 0.329910,
		0.798947, 0.457340, 0.390542,
		43.307659, 31.939066, 23.963120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841164, 31.304306, 24.455986>,  <42.748394, 31.618929, 23.689739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841164, 31.304306, 24.455986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025303, 31.658524, 24.431038>,  <43.135784, 31.871054, 24.416069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025303, 31.658524, 24.431038>,  <42.841164, 31.304306, 24.455986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025303, 31.658524, 24.431038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449600, 0.293150, 0.843755,
		0.765468, -0.360378, 0.533092,
		0.460346, 0.885546, -0.062371,
		43.163406, 31.924187, 24.412327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940155, 31.428673, 25.175434>,  <42.841164, 31.304306, 24.455986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940155, 31.428673, 25.175434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.970150, 31.784460, 24.995115>,  <42.988148, 31.997932, 24.886923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.970150, 31.784460, 24.995115>,  <42.940155, 31.428673, 25.175434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970150, 31.784460, 24.995115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499164, 0.424838, 0.755214,
		0.863256, 0.168389, 0.475850,
		0.074990, 0.889471, -0.450798,
		42.992645, 32.051300, 24.859877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044502, 31.930288, 25.746065>,  <42.940155, 31.428673, 25.175434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044502, 31.930288, 25.746065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964970, 32.163986, 25.431328>,  <42.917248, 32.304203, 25.242485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.964970, 32.163986, 25.431328>,  <43.044502, 31.930288, 25.746065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964970, 32.163986, 25.431328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437916, 0.665299, 0.604654,
		0.876752, 0.464798, 0.123564,
		-0.198835, 0.584243, -0.786845,
		42.905319, 32.339260, 25.195274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289097, 32.553455, 25.993542>,  <43.044502, 31.930288, 25.746065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289097, 32.553455, 25.993542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.986572, 32.575989, 25.732830>,  <42.805058, 32.589508, 25.576405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.986572, 32.575989, 25.732830>,  <43.289097, 32.553455, 25.993542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986572, 32.575989, 25.732830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491694, 0.608237, 0.623125,
		0.431536, 0.791754, -0.432322,
		-0.756316, 0.056330, -0.651777,
		42.759678, 32.592888, 25.537296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973263, 33.219715, 26.080893>,  <43.289097, 32.553455, 25.993542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973263, 33.219715, 26.080893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.666397, 33.050900, 25.887669>,  <42.482277, 32.949612, 25.771734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.666397, 33.050900, 25.887669>,  <42.973263, 33.219715, 26.080893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666397, 33.050900, 25.887669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640946, 0.534297, 0.551103,
		0.025511, 0.732400, -0.680396,
		-0.767162, -0.422038, -0.483060,
		42.436249, 32.924290, 25.742750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577126, 33.739647, 26.103998>,  <42.973263, 33.219715, 26.080893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577126, 33.739647, 26.103998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.334644, 33.436565, 26.007332>,  <42.189156, 33.254719, 25.949333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.334644, 33.436565, 26.007332>,  <42.577126, 33.739647, 26.103998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334644, 33.436565, 26.007332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759175, 0.460755, 0.459736,
		-0.236995, 0.462161, -0.854541,
		-0.606206, -0.757702, -0.241664,
		42.152782, 33.209255, 25.934832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943825, 34.058456, 25.885424>,  <42.577126, 33.739647, 26.103998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943825, 34.058456, 25.885424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864353, 33.676281, 25.972754>,  <41.816669, 33.446976, 26.025152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.864353, 33.676281, 25.972754>,  <41.943825, 34.058456, 25.885424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864353, 33.676281, 25.972754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745658, 0.291927, 0.598976,
		-0.636019, -0.043792, -0.770430,
		-0.198679, -0.955438, 0.218325,
		41.804749, 33.389648, 26.038250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252426, 33.965466, 25.831417>,  <41.943825, 34.058456, 25.885424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252426, 33.965466, 25.831417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.355110, 33.660141, 26.068554>,  <41.416721, 33.476948, 26.210836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.355110, 33.660141, 26.068554>,  <41.252426, 33.965466, 25.831417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355110, 33.660141, 26.068554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724462, 0.254044, 0.640793,
		-0.639731, -0.593987, -0.487774,
		0.256707, -0.763310, 0.592841,
		41.432121, 33.431149, 26.246407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670712, 33.569500, 25.967850>,  <41.252426, 33.965466, 25.831417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670712, 33.569500, 25.967850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917965, 33.468124, 26.265488>,  <41.066319, 33.407299, 26.444071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917965, 33.468124, 26.265488>,  <40.670712, 33.569500, 25.967850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917965, 33.468124, 26.265488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658055, 0.350934, 0.666190,
		-0.429968, -0.901450, 0.050146,
		0.618135, -0.253442, 0.744095,
		41.103405, 33.392094, 26.488716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216011, 33.292168, 26.470364>,  <40.670712, 33.569500, 25.967850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216011, 33.292168, 26.470364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.554161, 33.366611, 26.670643>,  <40.757050, 33.411278, 26.790812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.554161, 33.366611, 26.670643>,  <40.216011, 33.292168, 26.470364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554161, 33.366611, 26.670643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533285, 0.240076, 0.811154,
		0.030759, -0.952746, 0.302205,
		0.845376, 0.186112, 0.500701,
		40.807774, 33.422447, 26.820852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084152, 32.570492, 26.349077>,  <40.216011, 33.292168, 26.470364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084152, 32.570492, 26.349077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.722862, 32.579647, 26.177652>,  <39.506088, 32.585140, 26.074799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.722862, 32.579647, 26.177652>,  <40.084152, 32.570492, 26.349077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722862, 32.579647, 26.177652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340321, -0.570197, -0.747702,
		-0.261474, -0.821189, 0.507227,
		-0.903224, 0.022885, -0.428559,
		39.451897, 32.586514, 26.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040936, 31.928295, 26.061636>,  <40.084152, 32.570492, 26.349077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040936, 31.928295, 26.061636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771767, 32.143131, 25.858183>,  <39.610264, 32.272034, 25.736111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.771767, 32.143131, 25.858183>,  <40.040936, 31.928295, 26.061636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771767, 32.143131, 25.858183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270320, -0.461501, -0.844952,
		-0.688551, -0.706081, 0.165368,
		-0.672922, 0.537091, -0.508634,
		39.569889, 32.304256, 25.705593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512478, 31.476233, 25.709837>,  <40.040936, 31.928295, 26.061636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512478, 31.476233, 25.709837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520714, 31.824783, 25.513763>,  <39.525658, 32.033913, 25.396120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.520714, 31.824783, 25.513763>,  <39.512478, 31.476233, 25.709837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520714, 31.824783, 25.513763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123250, -0.488761, -0.863668,
		-0.992162, -0.042631, -0.117461,
		0.020592, 0.871376, -0.490184,
		39.526890, 32.086197, 25.366709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089054, 31.400894, 25.117195>,  <39.512478, 31.476233, 25.709837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089054, 31.400894, 25.117195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278366, 31.733892, 25.001986>,  <39.391953, 31.933691, 24.932859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.278366, 31.733892, 25.001986>,  <39.089054, 31.400894, 25.117195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278366, 31.733892, 25.001986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100563, -0.375880, -0.921195,
		-0.875154, 0.407018, -0.261615,
		0.473279, 0.832496, -0.288022,
		39.420349, 31.983641, 24.915579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845661, 31.575850, 24.475605>,  <39.089054, 31.400894, 25.117195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845661, 31.575850, 24.475605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160889, 31.821793, 24.487629>,  <39.350025, 31.969358, 24.494843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.160889, 31.821793, 24.487629>,  <38.845661, 31.575850, 24.475605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160889, 31.821793, 24.487629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145689, -0.138841, -0.979540,
		-0.598104, 0.776320, -0.198994,
		0.788065, 0.614858, 0.030060,
		39.397308, 32.006248, 24.496647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728024, 32.112141, 23.890265>,  <38.845661, 31.575850, 24.475605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728024, 32.112141, 23.890265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120140, 32.084373, 23.964252>,  <39.355408, 32.067715, 24.008646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120140, 32.084373, 23.964252>,  <38.728024, 32.112141, 23.890265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120140, 32.084373, 23.964252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174334, -0.136568, -0.975170,
		0.092955, 0.988196, -0.121774,
		0.980289, -0.069417, 0.184971,
		39.414227, 32.063549, 24.019743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068798, 32.469780, 23.318993>,  <38.728024, 32.112141, 23.890265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068798, 32.469780, 23.318993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350822, 32.230362, 23.471121>,  <39.520035, 32.086712, 23.562397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350822, 32.230362, 23.471121>,  <39.068798, 32.469780, 23.318993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350822, 32.230362, 23.471121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443858, -0.045798, -0.894926,
		0.553067, 0.799782, 0.233377,
		0.705058, -0.598540, 0.380319,
		39.562340, 32.050800, 23.585217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729931, 32.703739, 23.037916>,  <39.068798, 32.469780, 23.318993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729931, 32.703739, 23.037916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.772545, 32.323944, 23.155977>,  <39.798111, 32.096066, 23.226814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.772545, 32.323944, 23.155977>,  <39.729931, 32.703739, 23.037916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772545, 32.323944, 23.155977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327089, -0.246856, -0.912182,
		0.938969, 0.193719, 0.284270,
		0.106533, -0.949492, 0.295153,
		39.804504, 32.039097, 23.244524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328979, 32.429924, 22.741526>,  <39.729931, 32.703739, 23.037916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328979, 32.429924, 22.741526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135254, 32.097557, 22.851080>,  <40.019020, 31.898136, 22.916813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.135254, 32.097557, 22.851080>,  <40.328979, 32.429924, 22.741526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135254, 32.097557, 22.851080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402966, -0.489721, -0.773170,
		0.776570, -0.264089, 0.572011,
		-0.484311, -0.830921, 0.273884,
		39.989960, 31.848280, 22.933245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725574, 32.065319, 22.432249>,  <40.328979, 32.429924, 22.741526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725574, 32.065319, 22.432249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426342, 31.822084, 22.538532>,  <40.246803, 31.676144, 22.602303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426342, 31.822084, 22.538532>,  <40.725574, 32.065319, 22.432249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426342, 31.822084, 22.538532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284019, -0.655265, -0.699972,
		0.599752, -0.448172, 0.662902,
		-0.748084, -0.608087, 0.265707,
		40.201916, 31.639658, 22.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041279, 31.370068, 22.546047>,  <40.725574, 32.065319, 22.432249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041279, 31.370068, 22.546047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653023, 31.342829, 22.453764>,  <40.420071, 31.326487, 22.398394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653023, 31.342829, 22.453764>,  <41.041279, 31.370068, 22.546047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653023, 31.342829, 22.453764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213329, -0.686840, -0.694797,
		-0.111146, -0.723612, 0.681199,
		-0.970638, -0.068095, -0.230707,
		40.361832, 31.322401, 22.384552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957851, 30.754906, 22.480003>,  <41.041279, 31.370068, 22.546047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957851, 30.754906, 22.480003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642220, 30.897676, 22.280018>,  <40.452843, 30.983339, 22.160027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.642220, 30.897676, 22.280018>,  <40.957851, 30.754906, 22.480003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642220, 30.897676, 22.280018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089067, -0.738804, -0.668009,
		-0.607803, -0.571641, 0.551183,
		-0.789078, 0.356925, -0.499961,
		40.405499, 31.004755, 22.130030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543633, 30.175947, 22.325937>,  <40.957851, 30.754906, 22.480003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543633, 30.175947, 22.325937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426449, 30.453869, 22.063206>,  <40.356140, 30.620623, 21.905567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.426449, 30.453869, 22.063206>,  <40.543633, 30.175947, 22.325937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426449, 30.453869, 22.063206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238269, -0.612243, -0.753914,
		-0.925960, -0.377368, 0.013812,
		-0.292959, 0.694803, -0.656828,
		40.338562, 30.662310, 21.866158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212147, 29.882908, 21.949465>,  <40.543633, 30.175947, 22.325937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212147, 29.882908, 21.949465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275700, 30.199039, 21.712774>,  <40.313831, 30.388718, 21.570761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275700, 30.199039, 21.712774>,  <40.212147, 29.882908, 21.949465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275700, 30.199039, 21.712774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058331, -0.605806, -0.793471,
		-0.985573, 0.091552, -0.142352,
		0.158882, 0.790327, -0.591726,
		40.323364, 30.436138, 21.535257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695488, 30.158926, 22.443447>,  <40.212147, 29.882908, 21.949465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695488, 30.158926, 22.443447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929199, 29.838949, 22.388729>,  <40.069427, 29.646963, 22.355898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929199, 29.838949, 22.388729>,  <39.695488, 30.158926, 22.443447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929199, 29.838949, 22.388729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317232, -0.380271, 0.868768,
		-0.746983, -0.464206, -0.475951,
		0.584277, -0.799942, -0.136795,
		40.104481, 29.598967, 22.347691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285793, 29.712168, 22.710016>,  <39.695488, 30.158926, 22.443447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285793, 29.712168, 22.710016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647907, 29.542692, 22.697693>,  <39.865177, 29.441008, 22.690298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.647907, 29.542692, 22.697693>,  <39.285793, 29.712168, 22.710016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647907, 29.542692, 22.697693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216850, -0.523266, 0.824117,
		-0.365290, -0.739379, -0.565581,
		0.905284, -0.423688, -0.030809,
		39.919491, 29.415585, 22.688450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155220, 29.051123, 22.860844>,  <39.285793, 29.712168, 22.710016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155220, 29.051123, 22.860844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537121, 29.114586, 22.961458>,  <39.766262, 29.152664, 23.021828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537121, 29.114586, 22.961458>,  <39.155220, 29.051123, 22.860844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537121, 29.114586, 22.961458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119450, -0.569991, 0.812922,
		0.272352, -0.806187, -0.525249,
		0.954754, 0.158660, 0.251537,
		39.823547, 29.162184, 23.036919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407318, 28.376547, 23.063387>,  <39.155220, 29.051123, 22.860844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407318, 28.376547, 23.063387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688076, 28.618589, 23.213688>,  <39.856529, 28.763815, 23.303869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688076, 28.618589, 23.213688>,  <39.407318, 28.376547, 23.063387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688076, 28.618589, 23.213688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118080, -0.619085, 0.776396,
		0.702427, -0.500578, -0.505983,
		0.701893, 0.605108, 0.375754,
		39.898643, 28.800121, 23.326414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006237, 27.943550, 23.227928>,  <39.407318, 28.376547, 23.063387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006237, 27.943550, 23.227928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.009647, 28.275127, 23.451637>,  <40.011692, 28.474073, 23.585863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.009647, 28.275127, 23.451637>,  <40.006237, 27.943550, 23.227928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009647, 28.275127, 23.451637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067401, -0.558495, 0.826765,
		0.997690, 0.030647, -0.060632,
		0.008525, 0.828941, 0.559271,
		40.012203, 28.523809, 23.619419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559406, 27.870911, 23.786142>,  <40.006237, 27.943550, 23.227928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559406, 27.870911, 23.786142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.313091, 28.151545, 23.929575>,  <40.165302, 28.319925, 24.015635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.313091, 28.151545, 23.929575>,  <40.559406, 27.870911, 23.786142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313091, 28.151545, 23.929575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089824, -0.389625, 0.916583,
		0.782772, 0.596633, 0.176909,
		-0.615792, 0.701585, 0.358580,
		40.128353, 28.362020, 24.037149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884087, 28.094093, 24.364050>,  <40.559406, 27.870911, 23.786142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884087, 28.094093, 24.364050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.493904, 28.173635, 24.401865>,  <40.259792, 28.221361, 24.424553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.493904, 28.173635, 24.401865>,  <40.884087, 28.094093, 24.364050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493904, 28.173635, 24.401865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016328, -0.362836, 0.931710,
		0.219578, 0.910388, 0.350684,
		-0.975458, 0.198857, 0.094535,
		40.201267, 28.233294, 24.430225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474201, 28.097168, 24.774088>,  <40.884087, 28.094093, 24.364050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474201, 28.097168, 24.774088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707623, 27.791203, 24.883177>,  <41.847675, 27.607624, 24.948629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707623, 27.791203, 24.883177>,  <41.474201, 28.097168, 24.774088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707623, 27.791203, 24.883177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680104, 0.276817, -0.678846,
		0.443764, 0.581620, 0.681757,
		0.583552, -0.764913, 0.272720,
		41.882687, 27.561729, 24.964993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181889, 28.328232, 24.914305>,  <41.474201, 28.097168, 24.774088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181889, 28.328232, 24.914305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220852, 27.949928, 24.790337>,  <42.244228, 27.722946, 24.715956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.220852, 27.949928, 24.790337>,  <42.181889, 28.328232, 24.914305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220852, 27.949928, 24.790337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718958, 0.282196, -0.635188,
		0.688194, -0.160951, 0.707449,
		0.097405, -0.945759, -0.309922,
		42.250072, 27.666201, 24.697359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894417, 28.279247, 24.840591>,  <42.181889, 28.328232, 24.914305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894417, 28.279247, 24.840591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761505, 27.963207, 24.634548>,  <42.681759, 27.773584, 24.510923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761505, 27.963207, 24.634548>,  <42.894417, 28.279247, 24.840591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761505, 27.963207, 24.634548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679964, 0.177811, -0.711360,
		0.653635, -0.586625, 0.478155,
		-0.332280, -0.790098, -0.515107,
		42.661819, 27.726177, 24.480017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448204, 27.920847, 24.739180>,  <42.894417, 28.279247, 24.840591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448204, 27.920847, 24.739180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.173653, 27.825510, 24.464348>,  <43.008923, 27.768307, 24.299450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.173653, 27.825510, 24.464348>,  <43.448204, 27.920847, 24.739180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173653, 27.825510, 24.464348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636513, 0.260089, -0.726089,
		0.351759, -0.935707, -0.026811,
		-0.686379, -0.238343, -0.687078,
		42.967739, 27.754007, 24.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780380, 27.519470, 24.283009>,  <43.448204, 27.920847, 24.739180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780380, 27.519470, 24.283009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.464664, 27.686644, 24.103073>,  <43.275234, 27.786949, 23.995111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.464664, 27.686644, 24.103073>,  <43.780380, 27.519470, 24.283009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464664, 27.686644, 24.103073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605115, 0.405108, -0.685364,
		-0.104206, -0.813153, -0.572646,
		-0.789289, 0.417936, -0.449836,
		43.227879, 27.812025, 23.968122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823944, 27.246647, 23.625872>,  <43.780380, 27.519470, 24.283009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823944, 27.246647, 23.625872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.616394, 27.588242, 23.610487>,  <43.491863, 27.793198, 23.601255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.616394, 27.588242, 23.610487>,  <43.823944, 27.246647, 23.625872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616394, 27.588242, 23.610487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508797, 0.272358, -0.816668,
		-0.686947, -0.443317, -0.575824,
		-0.518873, 0.853985, -0.038463,
		43.460732, 27.844437, 23.598948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620377, 27.255037, 22.928762>,  <43.823944, 27.246647, 23.625872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620377, 27.255037, 22.928762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.571636, 27.622278, 23.079620>,  <43.542393, 27.842623, 23.170135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.571636, 27.622278, 23.079620>,  <43.620377, 27.255037, 22.928762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571636, 27.622278, 23.079620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314459, 0.396113, -0.862676,
		-0.941418, 0.013477, -0.336973,
		-0.121853, 0.918103, 0.377145,
		43.535080, 27.897709, 23.192764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376728, 27.639059, 22.353642>,  <43.620377, 27.255037, 22.928762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376728, 27.639059, 22.353642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.514267, 27.916624, 22.606707>,  <43.596790, 28.083162, 22.758545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.514267, 27.916624, 22.606707>,  <43.376728, 27.639059, 22.353642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514267, 27.916624, 22.606707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614871, 0.342840, -0.710207,
		-0.709722, 0.633205, -0.308782,
		0.343843, 0.693911, 0.632661,
		43.617420, 28.124798, 22.796505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520920, 28.199358, 21.953806>,  <43.376728, 27.639059, 22.353642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520920, 28.199358, 21.953806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.689297, 28.326952, 22.293467>,  <43.790321, 28.403509, 22.497263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.689297, 28.326952, 22.293467>,  <43.520920, 28.199358, 21.953806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689297, 28.326952, 22.293467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691227, 0.493384, -0.527994,
		-0.587381, 0.809209, -0.012809,
		0.420938, 0.318987, 0.849152,
		43.815578, 28.422647, 22.548212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.302738, 29.662506, 37.276314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643646, 29.871586, 37.268150>,  <38.848190, 29.997034, 37.263252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.643646, 29.871586, 37.268150>,  <38.302738, 29.662506, 37.276314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643646, 29.871586, 37.268150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049138, 0.041151, -0.997944,
		-0.520782, 0.851525, 0.060756,
		0.852274, 0.522697, -0.020412,
		38.899330, 30.028395, 37.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155048, 30.171162, 36.758015>,  <38.302738, 29.662506, 37.276314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155048, 30.171162, 36.758015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541286, 30.078342, 36.804962>,  <38.773029, 30.022650, 36.833130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541286, 30.078342, 36.804962>,  <38.155048, 30.171162, 36.758015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541286, 30.078342, 36.804962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119806, -0.003610, -0.992791,
		0.230800, 0.972697, 0.024315,
		0.965597, -0.232049, 0.117368,
		38.830967, 30.008728, 36.840172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477829, 30.537720, 36.210258>,  <38.155048, 30.171162, 36.758015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477829, 30.537720, 36.210258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768902, 30.280336, 36.305290>,  <38.943546, 30.125906, 36.362309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768902, 30.280336, 36.305290>,  <38.477829, 30.537720, 36.210258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768902, 30.280336, 36.305290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173751, -0.162148, -0.971349,
		0.663543, 0.748112, -0.006191,
		0.727682, -0.643456, 0.237577,
		38.987206, 30.087299, 36.376564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042049, 30.783932, 35.827160>,  <38.477829, 30.537720, 36.210258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042049, 30.783932, 35.827160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129402, 30.408201, 35.932976>,  <39.181812, 30.182764, 35.996464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.129402, 30.408201, 35.932976>,  <39.042049, 30.783932, 35.827160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129402, 30.408201, 35.932976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404600, -0.159530, -0.900472,
		0.888036, 0.303678, 0.345212,
		0.218382, -0.939324, 0.264536,
		39.194916, 30.126404, 36.012337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771656, 30.699797, 35.593662>,  <39.042049, 30.783932, 35.827160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771656, 30.699797, 35.593662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577690, 30.352318, 35.634106>,  <39.461311, 30.143829, 35.658371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.577690, 30.352318, 35.634106>,  <39.771656, 30.699797, 35.593662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577690, 30.352318, 35.634106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315537, -0.281605, -0.906165,
		0.815657, -0.407506, 0.410660,
		-0.484912, -0.868698, 0.101110,
		39.432217, 30.091709, 35.664440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187397, 30.217798, 35.319912>,  <39.771656, 30.699797, 35.593662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187397, 30.217798, 35.319912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845028, 30.010996, 35.323879>,  <39.639606, 29.886915, 35.326260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845028, 30.010996, 35.323879>,  <40.187397, 30.217798, 35.319912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845028, 30.010996, 35.323879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126783, -0.228408, -0.965275,
		0.501318, -0.824945, 0.261047,
		-0.855924, -0.517007, 0.009915,
		39.588249, 29.855894, 35.326855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398666, 29.567583, 35.070549>,  <40.187397, 30.217798, 35.319912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398666, 29.567583, 35.070549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999283, 29.546394, 35.064030>,  <39.759651, 29.533682, 35.060120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999283, 29.546394, 35.064030>,  <40.398666, 29.567583, 35.070549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999283, 29.546394, 35.064030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036067, -0.397786, -0.916769,
		0.042080, -0.915948, 0.399085,
		-0.998463, -0.052972, -0.016297,
		39.699745, 29.530502, 35.059139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238243, 28.882120, 34.994049>,  <40.398666, 29.567583, 35.070549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238243, 28.882120, 34.994049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.944599, 29.107166, 34.841976>,  <39.768414, 29.242193, 34.750732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.944599, 29.107166, 34.841976>,  <40.238243, 28.882120, 34.994049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944599, 29.107166, 34.841976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103005, -0.461149, -0.881324,
		-0.671169, -0.686153, 0.280583,
		-0.734114, 0.562616, -0.380185,
		39.724365, 29.275951, 34.727921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926136, 28.484991, 34.496048>,  <40.238243, 28.882120, 34.994049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926136, 28.484991, 34.496048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772179, 28.838095, 34.388275>,  <39.679806, 29.049957, 34.323612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.772179, 28.838095, 34.388275>,  <39.926136, 28.484991, 34.496048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772179, 28.838095, 34.388275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012516, -0.296884, -0.954832,
		-0.922876, -0.364136, 0.125317,
		-0.384893, 0.882760, -0.269429,
		39.656712, 29.102922, 34.307446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421482, 28.274881, 34.007027>,  <39.926136, 28.484991, 34.496048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421482, 28.274881, 34.007027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486958, 28.665760, 33.952930>,  <39.526241, 28.900288, 33.920471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.486958, 28.665760, 33.952930>,  <39.421482, 28.274881, 34.007027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486958, 28.665760, 33.952930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119691, -0.116407, -0.985963,
		-0.979225, 0.177574, 0.097908,
		0.163684, 0.977199, -0.135242,
		39.536064, 28.958920, 33.912357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964897, 28.474758, 33.547432>,  <39.421482, 28.274881, 34.007027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964897, 28.474758, 33.547432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238239, 28.766001, 33.525944>,  <39.402245, 28.940746, 33.513050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238239, 28.766001, 33.525944>,  <38.964897, 28.474758, 33.547432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238239, 28.766001, 33.525944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045854, -0.030638, -0.998478,
		-0.728643, 0.684780, 0.012450,
		0.683357, 0.728105, -0.053724,
		39.443245, 28.984432, 33.509827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823677, 28.984894, 33.092243>,  <38.964897, 28.474758, 33.547432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823677, 28.984894, 33.092243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223534, 28.981424, 33.102413>,  <39.463448, 28.979343, 33.108513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223534, 28.981424, 33.102413>,  <38.823677, 28.984894, 33.092243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223534, 28.981424, 33.102413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025691, 0.032686, -0.999135,
		0.007834, 0.999428, 0.032897,
		0.999639, -0.008673, 0.025420,
		39.523426, 28.978823, 33.110039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383343, 29.543896, 32.667889>,  <38.823677, 28.984894, 33.092243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383343, 29.543896, 32.667889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034874, 29.585545, 32.475967>,  <37.825790, 29.610533, 32.360813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034874, 29.585545, 32.475967>,  <38.383343, 29.543896, 32.667889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034874, 29.585545, 32.475967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355101, 0.541251, 0.762201,
		0.339057, 0.834390, -0.434550,
		-0.871174, 0.104121, -0.479807,
		37.773521, 29.616781, 32.332024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169964, 30.287409, 32.864723>,  <38.383343, 29.543896, 32.667889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169964, 30.287409, 32.864723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858284, 30.088875, 32.711620>,  <37.671276, 29.969755, 32.619759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.858284, 30.088875, 32.711620>,  <38.169964, 30.287409, 32.864723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858284, 30.088875, 32.711620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620537, 0.524942, 0.582556,
		-0.088220, 0.691439, -0.717028,
		-0.779200, -0.496335, -0.382753,
		37.624523, 29.939974, 32.596794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679626, 30.764439, 32.563156>,  <38.169964, 30.287409, 32.864723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679626, 30.764439, 32.563156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469261, 30.441879, 32.671333>,  <37.343044, 30.248344, 32.736240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469261, 30.441879, 32.671333>,  <37.679626, 30.764439, 32.563156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469261, 30.441879, 32.671333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638938, 0.584446, 0.500181,
		-0.561405, 0.090254, -0.822605,
		-0.525911, -0.806398, 0.270444,
		37.311489, 30.199961, 32.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100430, 30.982315, 32.659821>,  <37.679626, 30.764439, 32.563156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100430, 30.982315, 32.659821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055061, 30.626867, 32.837582>,  <37.027840, 30.413599, 32.944237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055061, 30.626867, 32.837582>,  <37.100430, 30.982315, 32.659821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055061, 30.626867, 32.837582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708760, 0.385821, 0.590594,
		-0.696273, -0.247992, -0.673576,
		-0.113417, -0.888618, 0.444404,
		37.021038, 30.360281, 32.970901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382790, 30.852629, 32.618748>,  <37.100430, 30.982315, 32.659821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382790, 30.852629, 32.618748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477642, 30.607363, 32.920158>,  <36.534554, 30.460203, 33.101006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477642, 30.607363, 32.920158>,  <36.382790, 30.852629, 32.618748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477642, 30.607363, 32.920158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838778, 0.262095, 0.477239,
		-0.490121, -0.745208, -0.452158,
		0.237134, -0.613165, 0.753522,
		36.548782, 30.423412, 33.146214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814281, 30.401752, 32.737827>,  <36.382790, 30.852629, 32.618748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814281, 30.401752, 32.737827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011791, 30.392607, 33.085545>,  <36.130299, 30.387119, 33.294174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011791, 30.392607, 33.085545>,  <35.814281, 30.401752, 32.737827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011791, 30.392607, 33.085545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869416, 0.007004, 0.494032,
		-0.017396, -0.999714, -0.016440,
		0.493775, -0.022887, 0.869288,
		36.159924, 30.385748, 33.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539040, 29.967659, 33.166664>,  <35.814281, 30.401752, 32.737827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539040, 29.967659, 33.166664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700974, 30.202751, 33.446857>,  <35.798134, 30.343807, 33.614975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.700974, 30.202751, 33.446857>,  <35.539040, 29.967659, 33.166664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700974, 30.202751, 33.446857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914275, 0.248073, 0.320251,
		0.014449, -0.770086, 0.637776,
		0.404836, 0.587730, 0.700486,
		35.822426, 30.379070, 33.657001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139839, 29.851419, 33.619186>,  <35.539040, 29.967659, 33.166664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139839, 29.851419, 33.619186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328434, 30.183010, 33.739521>,  <35.441589, 30.381964, 33.811722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328434, 30.183010, 33.739521>,  <35.139839, 29.851419, 33.619186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328434, 30.183010, 33.739521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876899, 0.404524, 0.259630,
		0.093533, -0.386212, 0.917656,
		0.471486, 0.828975, 0.300833,
		35.469879, 30.431704, 33.829769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801315, 30.047077, 34.240875>,  <35.139839, 29.851419, 33.619186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801315, 30.047077, 34.240875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999805, 30.375942, 34.129295>,  <35.118900, 30.573261, 34.062347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.999805, 30.375942, 34.129295>,  <34.801315, 30.047077, 34.240875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999805, 30.375942, 34.129295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739597, 0.568583, 0.360153,
		0.454709, 0.027592, 0.890213,
		0.496223, 0.822163, -0.278946,
		35.148674, 30.622591, 34.045612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829899, 30.545649, 34.856682>,  <34.801315, 30.047077, 34.240875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829899, 30.545649, 34.856682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850479, 30.748528, 34.512566>,  <34.862827, 30.870255, 34.306095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850479, 30.748528, 34.512566>,  <34.829899, 30.545649, 34.856682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850479, 30.748528, 34.512566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608590, 0.698925, 0.375661,
		0.791814, 0.504236, 0.344639,
		0.051455, 0.507198, -0.860292,
		34.865917, 30.900686, 34.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043022, 31.227741, 34.990665>,  <34.829899, 30.545649, 34.856682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043022, 31.227741, 34.990665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872356, 31.265430, 34.630871>,  <34.769955, 31.288044, 34.414993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.872356, 31.265430, 34.630871>,  <35.043022, 31.227741, 34.990665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872356, 31.265430, 34.630871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525954, 0.783237, 0.331530,
		0.735749, 0.614542, -0.284626,
		-0.426669, 0.094223, -0.899486,
		34.744354, 31.293697, 34.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912582, 31.877827, 35.040722>,  <35.043022, 31.227741, 34.990665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912582, 31.877827, 35.040722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680630, 31.756836, 34.738132>,  <34.541458, 31.684242, 34.556580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680630, 31.756836, 34.738132>,  <34.912582, 31.877827, 35.040722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680630, 31.756836, 34.738132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649745, 0.731868, 0.205429,
		0.491500, 0.610637, -0.620928,
		-0.579880, -0.302477, -0.756471,
		34.506664, 31.666094, 34.511192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559452, 32.493626, 34.885143>,  <34.912582, 31.877827, 35.040722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559452, 32.493626, 34.885143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330227, 32.223499, 34.699436>,  <34.192692, 32.061424, 34.588013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330227, 32.223499, 34.699436>,  <34.559452, 32.493626, 34.885143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330227, 32.223499, 34.699436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766446, 0.642199, 0.011921,
		0.290104, 0.362670, -0.885613,
		-0.573063, -0.675315, -0.464271,
		34.158310, 32.020905, 34.560154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314648, 32.810524, 34.329609>,  <34.559452, 32.493626, 34.885143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314648, 32.810524, 34.329609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066532, 32.506477, 34.407040>,  <33.917664, 32.324051, 34.453499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066532, 32.506477, 34.407040>,  <34.314648, 32.810524, 34.329609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066532, 32.506477, 34.407040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757827, 0.644418, 0.102099,
		-0.202349, -0.083365, -0.975759,
		-0.620285, -0.760116, 0.193573,
		33.880447, 32.278442, 34.465111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824959, 32.968948, 34.892429>,  <34.314648, 32.810524, 34.329609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824959, 32.968948, 34.892429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601673, 32.843678, 34.585102>,  <33.467701, 32.768513, 34.400703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601673, 32.843678, 34.585102>,  <33.824959, 32.968948, 34.892429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601673, 32.843678, 34.585102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087969, -0.943145, 0.320529,
		-0.825022, 0.111334, 0.554025,
		-0.558212, -0.313181, -0.768321,
		33.434208, 32.749722, 34.354607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842720, 33.724934, 34.723133>,  <33.824959, 32.968948, 34.892429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842720, 33.724934, 34.723133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893562, 34.037384, 34.967651>,  <33.924068, 34.224854, 35.114361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893562, 34.037384, 34.967651>,  <33.842720, 33.724934, 34.723133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893562, 34.037384, 34.967651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481944, 0.490020, -0.726368,
		-0.866934, 0.386934, -0.314178,
		0.127103, 0.781129, 0.611296,
		33.931694, 34.271721, 35.151039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602478, 34.470184, 34.571030>,  <33.842720, 33.724934, 34.723133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602478, 34.470184, 34.571030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947773, 34.472549, 34.772938>,  <34.154949, 34.473969, 34.894081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947773, 34.472549, 34.772938>,  <33.602478, 34.470184, 34.571030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947773, 34.472549, 34.772938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465713, 0.376488, -0.800855,
		-0.194779, 0.926403, 0.322242,
		0.863234, 0.005917, 0.504770,
		34.206741, 34.474323, 34.924370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033092, 35.070103, 34.315060>,  <33.602478, 34.470184, 34.571030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033092, 35.070103, 34.315060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300224, 34.806541, 34.453537>,  <34.460503, 34.648403, 34.536625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300224, 34.806541, 34.453537>,  <34.033092, 35.070103, 34.315060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300224, 34.806541, 34.453537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648811, 0.287405, -0.704587,
		0.364758, 0.695157, 0.619442,
		0.667829, -0.658904, 0.346193,
		34.500572, 34.608871, 34.557396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674969, 35.436371, 34.307838>,  <34.033092, 35.070103, 34.315060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674969, 35.436371, 34.307838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755787, 35.045479, 34.281929>,  <34.804279, 34.810944, 34.266384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755787, 35.045479, 34.281929>,  <34.674969, 35.436371, 34.307838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755787, 35.045479, 34.281929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659727, 0.184681, -0.728459,
		0.723835, 0.104451, 0.682021,
		0.202045, -0.977232, -0.064770,
		34.816399, 34.752308, 34.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484005, 35.381123, 34.124386>,  <34.674969, 35.436371, 34.307838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484005, 35.381123, 34.124386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339432, 35.015854, 34.049030>,  <35.252689, 34.796692, 34.003819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339432, 35.015854, 34.049030>,  <35.484005, 35.381123, 34.124386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339432, 35.015854, 34.049030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650060, -0.101942, -0.753014,
		0.668425, -0.394625, 0.630459,
		-0.361428, -0.913170, -0.188390,
		35.231003, 34.741901, 33.992512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969875, 34.985611, 33.705357>,  <35.484005, 35.381123, 34.124386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969875, 34.985611, 33.705357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664707, 34.739590, 33.625690>,  <35.481606, 34.591976, 33.577888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664707, 34.739590, 33.625690>,  <35.969875, 34.985611, 33.705357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664707, 34.739590, 33.625690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456794, -0.294828, -0.839295,
		0.457491, -0.731290, 0.505882,
		-0.762916, -0.615054, -0.199168,
		35.435833, 34.555073, 33.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207470, 34.219841, 33.580502>,  <35.969875, 34.985611, 33.705357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207470, 34.219841, 33.580502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863522, 34.265133, 33.381386>,  <35.657150, 34.292309, 33.261917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863522, 34.265133, 33.381386>,  <36.207470, 34.219841, 33.580502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863522, 34.265133, 33.381386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439661, -0.331316, -0.834822,
		-0.259452, -0.936701, 0.235107,
		-0.859874, 0.113228, -0.497792,
		35.605560, 34.299103, 33.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239475, 33.724354, 33.016045>,  <36.207470, 34.219841, 33.580502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239475, 33.724354, 33.016045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941734, 33.943569, 32.863411>,  <35.763092, 34.075096, 32.771832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941734, 33.943569, 32.863411>,  <36.239475, 33.724354, 33.016045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941734, 33.943569, 32.863411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287959, -0.252140, -0.923853,
		-0.602517, -0.797547, 0.029868,
		-0.744348, 0.548037, -0.381580,
		35.718430, 34.107979, 32.748936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771347, 33.282871, 32.531933>,  <36.239475, 33.724354, 33.016045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771347, 33.282871, 32.531933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735165, 33.664867, 32.418926>,  <35.713455, 33.894066, 32.351124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735165, 33.664867, 32.418926>,  <35.771347, 33.282871, 32.531933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735165, 33.664867, 32.418926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253470, -0.252260, -0.933873,
		-0.963104, -0.156087, -0.219241,
		-0.090459, 0.954988, -0.282516,
		35.708027, 33.951363, 32.334171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558853, 33.245201, 31.850067>,  <35.771347, 33.282871, 32.531933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558853, 33.245201, 31.850067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718307, 33.607685, 31.906469>,  <35.813980, 33.825176, 31.940310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718307, 33.607685, 31.906469>,  <35.558853, 33.245201, 31.850067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718307, 33.607685, 31.906469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468568, -0.069080, -0.880723,
		-0.788375, 0.417156, -0.452157,
		0.398634, 0.906206, 0.141005,
		35.837898, 33.879547, 31.948771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228931, 33.665306, 31.282598>,  <35.558853, 33.245201, 31.850067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228931, 33.665306, 31.282598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556114, 33.846848, 31.424000>,  <35.752422, 33.955772, 31.508841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556114, 33.846848, 31.424000>,  <35.228931, 33.665306, 31.282598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556114, 33.846848, 31.424000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435265, -0.086463, -0.896141,
		-0.376149, 0.886873, -0.268269,
		0.817958, 0.453851, 0.353502,
		35.801502, 33.983002, 31.530050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332169, 34.120140, 30.840271>,  <35.228931, 33.665306, 31.282598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332169, 34.120140, 30.840271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682980, 34.063744, 31.023985>,  <35.893467, 34.029907, 31.134212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682980, 34.063744, 31.023985>,  <35.332169, 34.120140, 30.840271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682980, 34.063744, 31.023985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418133, -0.246810, -0.874214,
		0.236608, 0.958753, -0.157509,
		0.877030, -0.140986, 0.459284,
		35.946087, 34.021446, 31.161770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779228, 34.549400, 30.493748>,  <35.332169, 34.120140, 30.840271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779228, 34.549400, 30.493748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018978, 34.279835, 30.666534>,  <36.162827, 34.118095, 30.770206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018978, 34.279835, 30.666534>,  <35.779228, 34.549400, 30.493748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018978, 34.279835, 30.666534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509411, -0.095135, -0.855248,
		0.617456, 0.732662, 0.286276,
		0.599373, -0.673910, 0.431968,
		36.198792, 34.077663, 30.796125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431011, 34.778824, 30.359749>,  <35.779228, 34.549400, 30.493748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431011, 34.778824, 30.359749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489567, 34.392452, 30.445122>,  <36.524700, 34.160629, 30.496346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489567, 34.392452, 30.445122>,  <36.431011, 34.778824, 30.359749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489567, 34.392452, 30.445122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515680, -0.109606, -0.849741,
		0.844183, 0.234455, 0.482065,
		0.146389, -0.965928, 0.213431,
		36.533485, 34.102673, 30.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127754, 34.666977, 30.209566>,  <36.431011, 34.778824, 30.359749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127754, 34.666977, 30.209566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968601, 34.300026, 30.213799>,  <36.873108, 34.079857, 30.216337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968601, 34.300026, 30.213799>,  <37.127754, 34.666977, 30.209566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968601, 34.300026, 30.213799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433902, -0.198329, -0.878860,
		0.808341, -0.345097, 0.476963,
		-0.397887, -0.917373, 0.010579,
		36.849236, 34.024815, 30.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614323, 34.251564, 29.928305>,  <37.127754, 34.666977, 30.209566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614323, 34.251564, 29.928305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274361, 34.044910, 29.886835>,  <37.070381, 33.920918, 29.861954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274361, 34.044910, 29.886835>,  <37.614323, 34.251564, 29.928305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274361, 34.044910, 29.886835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338319, -0.384177, -0.859039,
		0.403977, -0.765179, 0.501301,
		-0.849907, -0.516632, -0.103676,
		37.019390, 33.889919, 29.855732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825062, 33.585121, 29.724903>,  <37.614323, 34.251564, 29.928305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825062, 33.585121, 29.724903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439892, 33.604004, 29.618668>,  <37.208790, 33.615334, 29.554926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439892, 33.604004, 29.618668>,  <37.825062, 33.585121, 29.724903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439892, 33.604004, 29.618668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207657, -0.498717, -0.841523,
		-0.172177, -0.865479, 0.470427,
		-0.962930, 0.047203, -0.265591,
		37.151012, 33.618164, 29.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614384, 32.913250, 29.552055>,  <37.825062, 33.585121, 29.724903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614384, 32.913250, 29.552055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349602, 33.156261, 29.376457>,  <37.190731, 33.302071, 29.271099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349602, 33.156261, 29.376457>,  <37.614384, 32.913250, 29.552055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349602, 33.156261, 29.376457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116919, -0.494821, -0.861094,
		-0.740366, -0.621334, 0.256519,
		-0.661958, 0.607533, -0.438994,
		37.151016, 33.338520, 29.244759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101528, 32.434456, 29.179243>,  <37.614384, 32.913250, 29.552055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101528, 32.434456, 29.179243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098312, 32.793289, 29.002529>,  <37.096382, 33.008591, 28.896502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098312, 32.793289, 29.002529>,  <37.101528, 32.434456, 29.179243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098312, 32.793289, 29.002529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358502, -0.409842, -0.838753,
		-0.933494, -0.165127, -0.318310,
		-0.008043, 0.897086, -0.441783,
		37.095898, 33.062416, 28.869993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007355, 32.283386, 28.526030>,  <37.101528, 32.434456, 29.179243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007355, 32.283386, 28.526030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135445, 32.661499, 28.501062>,  <37.212299, 32.888367, 28.486082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135445, 32.661499, 28.501062>,  <37.007355, 32.283386, 28.526030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135445, 32.661499, 28.501062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455278, -0.211343, -0.864902,
		-0.830769, 0.248547, -0.498044,
		0.320227, 0.945282, -0.062419,
		37.231514, 32.945084, 28.482336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979729, 32.348709, 27.810808>,  <37.007355, 32.283386, 28.526030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979729, 32.348709, 27.810808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214924, 32.656124, 27.911701>,  <37.356041, 32.840572, 27.972237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214924, 32.656124, 27.911701>,  <36.979729, 32.348709, 27.810808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214924, 32.656124, 27.911701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381521, 0.011457, -0.924289,
		-0.713241, 0.639702, -0.286476,
		0.587987, 0.768538, 0.252231,
		37.391319, 32.886684, 27.987371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996582, 32.758656, 27.289482>,  <36.979729, 32.348709, 27.810808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996582, 32.758656, 27.289482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327721, 32.846470, 27.495964>,  <37.526405, 32.899158, 27.619854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327721, 32.846470, 27.495964>,  <36.996582, 32.758656, 27.289482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327721, 32.846470, 27.495964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553947, -0.174993, -0.813953,
		-0.088361, 0.959782, -0.266480,
		0.827850, 0.219538, 0.516206,
		37.576077, 32.912331, 27.650826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345272, 33.155117, 26.875088>,  <36.996582, 32.758656, 27.289482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345272, 33.155117, 26.875088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641907, 33.077969, 27.132101>,  <37.819889, 33.031681, 27.286308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641907, 33.077969, 27.132101>,  <37.345272, 33.155117, 26.875088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641907, 33.077969, 27.132101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629265, -0.132007, -0.765898,
		0.232538, 0.972304, 0.023472,
		0.741587, -0.192870, 0.642534,
		37.864384, 33.020107, 27.324862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883888, 33.572807, 26.692842>,  <37.345272, 33.155117, 26.875088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883888, 33.572807, 26.692842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041836, 33.263428, 26.891174>,  <38.136604, 33.077801, 27.010174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041836, 33.263428, 26.891174>,  <37.883888, 33.572807, 26.692842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041836, 33.263428, 26.891174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721188, -0.073399, -0.688839,
		0.569178, 0.629590, 0.528822,
		0.394872, -0.773452, 0.495830,
		38.160297, 33.031391, 27.039923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568691, 33.691849, 26.729111>,  <37.883888, 33.572807, 26.692842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568691, 33.691849, 26.729111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544178, 33.296776, 26.786699>,  <38.529469, 33.059731, 26.821253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.544178, 33.296776, 26.786699>,  <38.568691, 33.691849, 26.729111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544178, 33.296776, 26.786699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739384, -0.141820, -0.658178,
		0.670489, 0.066115, 0.738968,
		-0.061286, -0.987682, 0.143973,
		38.525791, 33.000473, 26.829891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233753, 33.486343, 26.698044>,  <38.568691, 33.691849, 26.729111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233753, 33.486343, 26.698044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031487, 33.150642, 26.618082>,  <38.910126, 32.949223, 26.570105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031487, 33.150642, 26.618082>,  <39.233753, 33.486343, 26.698044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031487, 33.150642, 26.618082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662885, -0.229660, -0.712628,
		0.552164, -0.492864, 0.672458,
		-0.505666, -0.839250, -0.199902,
		38.879787, 32.898869, 26.558111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654430, 32.908684, 26.871937>,  <39.233753, 33.486343, 26.698044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654430, 32.908684, 26.871937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384121, 32.798370, 26.598507>,  <39.221935, 32.732182, 26.434448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384121, 32.798370, 26.598507>,  <39.654430, 32.908684, 26.871937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384121, 32.798370, 26.598507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724311, -0.420514, -0.546390,
		-0.136768, -0.864356, 0.483924,
		-0.675773, -0.275782, -0.683576,
		39.181389, 32.715637, 26.393435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262665, 32.730240, 27.295799>,  <39.654430, 32.908684, 26.871937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262665, 32.730240, 27.295799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.460766, 33.077698, 27.301121>,  <40.579628, 33.286175, 27.304314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.460766, 33.077698, 27.301121>,  <40.262665, 32.730240, 27.295799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460766, 33.077698, 27.301121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461296, 0.249965, 0.851307,
		0.736160, -0.427749, 0.524499,
		0.495252, 0.868647, 0.013304,
		40.609341, 33.338291, 27.305113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587322, 32.789940, 27.938412>,  <40.262665, 32.730240, 27.295799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587322, 32.789940, 27.938412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592148, 33.175240, 27.831074>,  <40.595043, 33.406418, 27.766672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592148, 33.175240, 27.831074>,  <40.587322, 32.789940, 27.938412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592148, 33.175240, 27.831074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455884, 0.244146, 0.855899,
		0.889958, 0.112010, 0.442074,
		0.012062, 0.963248, -0.268343,
		40.595768, 33.464214, 27.750570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832104, 33.109459, 28.522018>,  <40.587322, 32.789940, 27.938412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832104, 33.109459, 28.522018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.667419, 33.425385, 28.340164>,  <40.568607, 33.614941, 28.231052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.667419, 33.425385, 28.340164>,  <40.832104, 33.109459, 28.522018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667419, 33.425385, 28.340164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233345, 0.390881, 0.890372,
		0.880934, 0.472662, 0.023369,
		-0.411711, 0.789812, -0.454634,
		40.543907, 33.662327, 28.203773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141117, 33.657803, 28.964598>,  <40.832104, 33.109459, 28.522018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141117, 33.657803, 28.964598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826553, 33.798332, 28.761372>,  <40.637814, 33.882652, 28.639437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826553, 33.798332, 28.761372>,  <41.141117, 33.657803, 28.964598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826553, 33.798332, 28.761372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331328, 0.454259, 0.826965,
		0.521328, 0.818669, -0.240829,
		-0.786409, 0.351327, -0.508066,
		40.590630, 33.903728, 28.608952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065155, 34.420654, 29.079918>,  <41.141117, 33.657803, 28.964598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065155, 34.420654, 29.079918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714256, 34.278873, 28.950424>,  <40.503719, 34.193806, 28.872728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714256, 34.278873, 28.950424>,  <41.065155, 34.420654, 29.079918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714256, 34.278873, 28.950424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468165, 0.482614, 0.740206,
		-0.106129, 0.800904, -0.589313,
		-0.877244, -0.354453, -0.323736,
		40.451084, 34.172539, 28.853304>
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
