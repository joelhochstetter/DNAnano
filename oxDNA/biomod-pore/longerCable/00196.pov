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
	<24.388535, 34.759224, 35.544598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356453, 34.852673, 35.156990>,  <24.337204, 34.908741, 34.924427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356453, 34.852673, 35.156990>,  <24.388535, 34.759224, 35.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356453, 34.852673, 35.156990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592024, 0.770939, 0.234864,
		0.801920, 0.592517, 0.076477,
		-0.080202, 0.233618, -0.969015,
		24.332392, 34.922756, 34.866287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524555, 35.460190, 35.553112>,  <24.388535, 34.759224, 35.544598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524555, 35.460190, 35.553112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774017, 35.479675, 35.241039>,  <24.923695, 35.491367, 35.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774017, 35.479675, 35.241039>,  <24.524555, 35.460190, 35.553112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774017, 35.479675, 35.241039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044902, 0.998641, 0.026457,
		0.780408, 0.018531, 0.624996,
		0.623657, 0.048711, -0.780179,
		24.961115, 35.494289, 35.006985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021223, 35.807644, 35.862389>,  <24.524555, 35.460190, 35.553112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021223, 35.807644, 35.862389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979553, 35.858913, 35.467884>,  <24.954552, 35.889675, 35.231182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979553, 35.858913, 35.467884>,  <25.021223, 35.807644, 35.862389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979553, 35.858913, 35.467884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040671, 0.990282, 0.132995,
		0.993727, 0.053966, -0.097947,
		-0.104173, 0.128177, -0.986265,
		24.948301, 35.897366, 35.172005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645769, 36.237068, 35.532543>,  <25.021223, 35.807644, 35.862389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645769, 36.237068, 35.532543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269882, 36.265743, 35.398804>,  <25.044350, 36.282948, 35.318558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269882, 36.265743, 35.398804>,  <25.645769, 36.237068, 35.532543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269882, 36.265743, 35.398804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005128, 0.974711, 0.223409,
		0.341915, 0.211656, -0.915585,
		-0.939717, 0.071692, -0.334353,
		24.987967, 36.287251, 35.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451065, 36.291130, 35.550804>,  <25.645769, 36.237068, 35.532543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451065, 36.291130, 35.550804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782906, 36.466892, 35.413002>,  <26.982010, 36.572350, 35.330322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782906, 36.466892, 35.413002>,  <26.451065, 36.291130, 35.550804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782906, 36.466892, 35.413002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093476, 0.498994, 0.861549,
		0.550480, -0.746943, 0.372890,
		0.829599, 0.439410, -0.344508,
		27.031786, 36.598713, 35.309650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029371, 36.258560, 36.011154>,  <26.451065, 36.291130, 35.550804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029371, 36.258560, 36.011154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073757, 36.597378, 35.803230>,  <27.100388, 36.800667, 35.678474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073757, 36.597378, 35.803230>,  <27.029371, 36.258560, 36.011154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073757, 36.597378, 35.803230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042907, 0.526635, 0.849008,
		0.992898, -0.071905, 0.094781,
		0.110962, 0.847045, -0.519810,
		27.107046, 36.851490, 35.647289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467916, 36.674164, 36.406437>,  <27.029371, 36.258560, 36.011154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467916, 36.674164, 36.406437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247633, 36.895157, 36.156162>,  <27.115463, 37.027752, 36.005997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247633, 36.895157, 36.156162>,  <27.467916, 36.674164, 36.406437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247633, 36.895157, 36.156162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085433, 0.708355, 0.700667,
		0.830314, 0.439317, -0.342897,
		-0.550708, 0.552480, -0.625689,
		27.082420, 37.060902, 35.968456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760998, 37.284935, 36.465466>,  <27.467916, 36.674164, 36.406437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760998, 37.284935, 36.465466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373692, 37.296394, 36.366154>,  <27.141308, 37.303272, 36.306568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373692, 37.296394, 36.366154>,  <27.760998, 37.284935, 36.465466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373692, 37.296394, 36.366154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206660, 0.466896, 0.859825,
		0.140556, 0.883848, -0.446158,
		-0.968264, 0.028651, -0.248281,
		27.083212, 37.304989, 36.291668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633873, 37.951561, 36.474571>,  <27.760998, 37.284935, 36.465466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633873, 37.951561, 36.474571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284874, 37.760689, 36.516621>,  <27.075474, 37.646168, 36.541851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284874, 37.760689, 36.516621>,  <27.633873, 37.951561, 36.474571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284874, 37.760689, 36.516621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147946, 0.463033, 0.873906,
		-0.465681, 0.746929, -0.474592,
		-0.872498, -0.477176, 0.105120,
		27.023125, 37.617535, 36.548157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109262, 38.466892, 36.747417>,  <27.633873, 37.951561, 36.474571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109262, 38.466892, 36.747417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960772, 38.100796, 36.810047>,  <26.871677, 37.881138, 36.847626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960772, 38.100796, 36.810047>,  <27.109262, 38.466892, 36.747417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960772, 38.100796, 36.810047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172252, 0.233581, 0.956958,
		-0.912425, 0.328278, -0.244364,
		-0.371227, -0.915245, 0.156578,
		26.849403, 37.826221, 36.857021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478445, 38.569874, 37.035923>,  <27.109262, 38.466892, 36.747417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478445, 38.569874, 37.035923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612724, 38.202877, 37.121258>,  <26.693293, 37.982677, 37.172459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612724, 38.202877, 37.121258>,  <26.478445, 38.569874, 37.035923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612724, 38.202877, 37.121258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064053, 0.248186, 0.966592,
		-0.939789, -0.310819, 0.142083,
		0.335698, -0.917494, 0.213334,
		26.713434, 37.927628, 37.185257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249357, 38.672314, 37.666260>,  <26.478445, 38.569874, 37.035923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249357, 38.672314, 37.666260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498611, 38.359818, 37.651443>,  <26.648163, 38.172321, 37.642551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498611, 38.359818, 37.651443>,  <26.249357, 38.672314, 37.666260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498611, 38.359818, 37.651443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183925, 0.100340, 0.977805,
		-0.760182, -0.616116, 0.206215,
		0.623133, -0.781238, -0.037043,
		26.685551, 38.125446, 37.640331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131834, 38.497391, 38.364494>,  <26.249357, 38.672314, 37.666260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131834, 38.497391, 38.364494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309187, 38.206150, 38.573601>,  <26.415598, 38.031406, 38.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309187, 38.206150, 38.573601>,  <26.131834, 38.497391, 38.364494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309187, 38.206150, 38.573601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184333, -0.496694, -0.848125,
		0.877173, 0.472407, -0.086012,
		0.443382, -0.728098, 0.522767,
		26.442202, 37.987720, 38.730431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956463, 38.406002, 38.190804>,  <26.131834, 38.497391, 38.364494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956463, 38.406002, 38.190804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763870, 38.082478, 38.325859>,  <26.648315, 37.888363, 38.406891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763870, 38.082478, 38.325859>,  <26.956463, 38.406002, 38.190804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763870, 38.082478, 38.325859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290249, -0.510633, -0.809327,
		0.827003, -0.291676, 0.480616,
		-0.481480, -0.808813, 0.337636,
		26.619427, 37.839832, 38.427151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397327, 37.615482, 38.314564>,  <26.956463, 38.406002, 38.190804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397327, 37.615482, 38.314564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004543, 37.606701, 38.239441>,  <26.768873, 37.601433, 38.194366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004543, 37.606701, 38.239441>,  <27.397327, 37.615482, 38.314564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004543, 37.606701, 38.239441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175521, -0.475247, -0.862168,
		-0.070325, -0.879579, 0.470527,
		-0.981961, -0.021956, -0.187806,
		26.709955, 37.600113, 38.183098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185333, 37.103848, 38.063953>,  <27.397327, 37.615482, 38.314564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185333, 37.103848, 38.063953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908438, 37.322491, 37.875477>,  <26.742300, 37.453678, 37.762390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908438, 37.322491, 37.875477>,  <27.185333, 37.103848, 38.063953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908438, 37.322491, 37.875477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275161, -0.403678, -0.872543,
		-0.667152, -0.733661, 0.129035,
		-0.692239, 0.546613, -0.471189,
		26.700766, 37.486473, 37.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923378, 36.682686, 37.432854>,  <27.185333, 37.103848, 38.063953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923378, 36.682686, 37.432854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843697, 37.067898, 37.360310>,  <26.795887, 37.299026, 37.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843697, 37.067898, 37.360310>,  <26.923378, 36.682686, 37.432854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843697, 37.067898, 37.360310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003386, -0.185744, -0.982592,
		-0.979952, -0.195124, 0.040262,
		-0.199206, 0.963030, -0.181359,
		26.783936, 37.356808, 37.305901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325977, 36.672626, 37.011372>,  <26.923378, 36.682686, 37.432854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325977, 36.672626, 37.011372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501234, 37.030769, 36.979443>,  <26.606388, 37.245655, 36.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501234, 37.030769, 36.979443>,  <26.325977, 36.672626, 37.011372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501234, 37.030769, 36.979443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118476, -0.030508, -0.992488,
		-0.891065, 0.444306, 0.092712,
		0.438140, 0.895355, -0.079824,
		26.632675, 37.299377, 36.955494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849138, 37.056538, 36.643147>,  <26.325977, 36.672626, 37.011372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849138, 37.056538, 36.643147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210392, 37.222454, 36.598793>,  <26.427145, 37.322006, 36.572182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210392, 37.222454, 36.598793>,  <25.849138, 37.056538, 36.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210392, 37.222454, 36.598793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002678, -0.263701, -0.964601,
		-0.429351, 0.870867, -0.239268,
		0.903134, 0.414793, -0.110887,
		26.481333, 37.346893, 36.565525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843935, 37.262138, 35.994568>,  <25.849138, 37.056538, 36.643147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843935, 37.262138, 35.994568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236012, 37.272930, 36.073055>,  <26.471256, 37.279404, 36.120148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236012, 37.272930, 36.073055>,  <25.843935, 37.262138, 35.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236012, 37.272930, 36.073055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179799, -0.536737, -0.824370,
		0.083075, 0.843318, -0.530955,
		0.980189, 0.026980, 0.196217,
		26.530067, 37.281025, 36.131920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121210, 37.527584, 35.448704>,  <25.843935, 37.262138, 35.994568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121210, 37.527584, 35.448704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393234, 37.300125, 35.633812>,  <26.556448, 37.163651, 35.744877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393234, 37.300125, 35.633812>,  <26.121210, 37.527584, 35.448704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393234, 37.300125, 35.633812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129483, -0.528127, -0.839235,
		0.721633, 0.630650, -0.285527,
		0.680058, -0.568649, 0.462773,
		26.597252, 37.129532, 35.772644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727135, 37.453159, 35.103634>,  <26.121210, 37.527584, 35.448704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727135, 37.453159, 35.103634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715342, 37.111340, 35.311050>,  <26.708265, 36.906250, 35.435501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715342, 37.111340, 35.311050>,  <26.727135, 37.453159, 35.103634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715342, 37.111340, 35.311050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243513, -0.509274, -0.825434,
		0.969450, 0.101936, 0.223107,
		-0.029481, -0.854546, 0.518539,
		26.706497, 36.854977, 35.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377501, 37.105701, 35.162220>,  <26.727135, 37.453159, 35.103634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377501, 37.105701, 35.162220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070681, 36.850075, 35.184967>,  <26.886589, 36.696701, 35.198616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070681, 36.850075, 35.184967>,  <27.377501, 37.105701, 35.162220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070681, 36.850075, 35.184967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316224, -0.453695, -0.833165,
		0.558247, -0.621094, 0.550094,
		-0.767048, -0.639064, 0.056869,
		26.840567, 36.658356, 35.202026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680393, 37.046066, 34.460396>,  <27.377501, 37.105701, 35.162220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680393, 37.046066, 34.460396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483921, 37.333466, 34.263420>,  <27.366037, 37.505905, 34.145233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483921, 37.333466, 34.263420>,  <27.680393, 37.046066, 34.460396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483921, 37.333466, 34.263420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563916, 0.693172, 0.448901,
		0.663882, -0.057204, -0.745646,
		-0.491182, 0.718499, -0.492442,
		27.336567, 37.549015, 34.115688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122332, 37.514278, 34.067787>,  <27.680393, 37.046066, 34.460396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122332, 37.514278, 34.067787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791128, 37.667389, 34.231682>,  <27.592405, 37.759254, 34.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791128, 37.667389, 34.231682>,  <28.122332, 37.514278, 34.067787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791128, 37.667389, 34.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547023, 0.711948, 0.440335,
		-0.123160, 0.588736, -0.798888,
		-0.828008, 0.382778, 0.409736,
		27.542727, 37.782223, 34.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972296, 38.267872, 33.778244>,  <28.122332, 37.514278, 34.067787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972296, 38.267872, 33.778244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032066, 38.514553, 33.469090>,  <28.067928, 38.662563, 33.283596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032066, 38.514553, 33.469090>,  <27.972296, 38.267872, 33.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032066, 38.514553, 33.469090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322003, -0.708698, -0.627743,
		-0.934872, 0.342672, 0.092683,
		0.149426, 0.616703, -0.772883,
		28.076895, 38.699566, 33.237225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419394, 38.384300, 33.165909>,  <27.972296, 38.267872, 33.778244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419394, 38.384300, 33.165909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783915, 38.393658, 33.001480>,  <28.002628, 38.399273, 32.902824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783915, 38.393658, 33.001480>,  <27.419394, 38.384300, 33.165909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783915, 38.393658, 33.001480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202955, -0.843145, -0.497911,
		-0.358236, 0.537177, -0.763615,
		0.911305, 0.023390, -0.411068,
		28.057306, 38.400673, 32.878159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375494, 38.350761, 32.482006>,  <27.419394, 38.384300, 33.165909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375494, 38.350761, 32.482006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724859, 38.177944, 32.571880>,  <27.934479, 38.074253, 32.625805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724859, 38.177944, 32.571880>,  <27.375494, 38.350761, 32.482006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724859, 38.177944, 32.571880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203059, -0.742480, -0.638350,
		0.442621, 0.511920, -0.736223,
		0.873415, -0.432044, 0.224687,
		27.986883, 38.048332, 32.639286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497297, 37.948483, 31.898382>,  <27.375494, 38.350761, 32.482006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497297, 37.948483, 31.898382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807241, 37.826355, 32.119785>,  <27.993208, 37.753078, 32.252628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807241, 37.826355, 32.119785>,  <27.497297, 37.948483, 31.898382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807241, 37.826355, 32.119785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058026, -0.906279, -0.418679,
		0.629465, 0.292299, -0.719955,
		0.774859, -0.305320, 0.553510,
		28.039700, 37.734760, 32.285839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073458, 37.816307, 31.505323>,  <27.497297, 37.948483, 31.898382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073458, 37.816307, 31.505323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091047, 37.584965, 31.831163>,  <28.101601, 37.446159, 32.026669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091047, 37.584965, 31.831163>,  <28.073458, 37.816307, 31.505323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091047, 37.584965, 31.831163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068042, -0.815227, -0.575131,
		0.996713, -0.030136, -0.075201,
		0.043974, -0.578357, 0.814598,
		28.104239, 37.411457, 32.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668447, 37.257290, 31.530771>,  <28.073458, 37.816307, 31.505323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668447, 37.257290, 31.530771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368032, 37.130783, 31.762604>,  <28.187784, 37.054878, 31.901703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368032, 37.130783, 31.762604>,  <28.668447, 37.257290, 31.530771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368032, 37.130783, 31.762604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023554, -0.890085, -0.455186,
		0.659839, -0.328210, 0.675937,
		-0.751038, -0.316270, 0.579582,
		28.142721, 37.035900, 31.936478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897444, 36.670090, 31.686737>,  <28.668447, 37.257290, 31.530771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897444, 36.670090, 31.686737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501871, 36.661942, 31.745518>,  <28.264526, 36.657051, 31.780787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501871, 36.661942, 31.745518>,  <28.897444, 36.670090, 31.686737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501871, 36.661942, 31.745518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036194, -0.927469, -0.372145,
		0.143875, -0.373346, 0.916468,
		-0.988934, -0.020372, 0.146952,
		28.205191, 36.655830, 31.789604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711378, 36.115612, 32.163898>,  <28.897444, 36.670090, 31.686737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711378, 36.115612, 32.163898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393173, 36.191765, 31.933798>,  <28.202250, 36.237457, 31.795738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393173, 36.191765, 31.933798>,  <28.711378, 36.115612, 32.163898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393173, 36.191765, 31.933798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041890, -0.964367, -0.261231,
		-0.604487, -0.183716, 0.775141,
		-0.795513, 0.190382, -0.575251,
		28.154520, 36.248878, 31.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167408, 35.680119, 32.280163>,  <28.711378, 36.115612, 32.163898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167408, 35.680119, 32.280163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193514, 35.785137, 31.895081>,  <28.209177, 35.848148, 31.664030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193514, 35.785137, 31.895081>,  <28.167408, 35.680119, 32.280163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193514, 35.785137, 31.895081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075000, -0.963327, -0.257633,
		-0.995045, -0.055390, -0.082561,
		0.065263, 0.262549, -0.962709,
		28.213093, 35.863903, 31.606268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807898, 35.159027, 31.892212>,  <28.167408, 35.680119, 32.280163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807898, 35.159027, 31.892212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033861, 35.345127, 31.619619>,  <28.169439, 35.456787, 31.456064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033861, 35.345127, 31.619619>,  <27.807898, 35.159027, 31.892212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033861, 35.345127, 31.619619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100153, -0.858439, -0.503043,
		-0.819052, 0.215921, -0.531537,
		0.564910, 0.465253, -0.681481,
		28.203335, 35.484703, 31.415174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410034, 35.284554, 31.201902>,  <27.807898, 35.159027, 31.892212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410034, 35.284554, 31.201902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803213, 35.214420, 31.224072>,  <28.039120, 35.172340, 31.237373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803213, 35.214420, 31.224072>,  <27.410034, 35.284554, 31.201902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803213, 35.214420, 31.224072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130629, -0.877933, -0.460619,
		0.129418, 0.445525, -0.885866,
		0.982948, -0.175332, 0.055422,
		28.098097, 35.161819, 31.240698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270824, 36.118252, 30.913929>,  <27.410034, 35.284554, 31.201902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270824, 36.118252, 30.913929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475180, 36.023521, 31.244482>,  <27.597794, 35.966682, 31.442814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475180, 36.023521, 31.244482>,  <27.270824, 36.118252, 30.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475180, 36.023521, 31.244482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020695, 0.964415, 0.263584,
		-0.859398, -0.117560, 0.497609,
		0.510889, -0.236821, 0.826383,
		27.628447, 35.952477, 31.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938471, 36.569363, 31.411455>,  <27.270824, 36.118252, 30.913929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938471, 36.569363, 31.411455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298277, 36.463665, 31.550623>,  <27.514160, 36.400246, 31.634123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298277, 36.463665, 31.550623>,  <26.938471, 36.569363, 31.411455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298277, 36.463665, 31.550623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099932, 0.899688, 0.424942,
		-0.425307, -0.347474, 0.835689,
		0.899515, -0.264243, 0.347920,
		27.568132, 36.384392, 31.654999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943140, 36.889122, 32.040634>,  <26.938471, 36.569363, 31.411455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943140, 36.889122, 32.040634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323736, 36.782894, 31.978487>,  <27.552094, 36.719158, 31.941198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323736, 36.782894, 31.978487>,  <26.943140, 36.889122, 32.040634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323736, 36.782894, 31.978487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300836, 0.697074, 0.650834,
		-0.064538, -0.666003, 0.743152,
		0.951490, -0.265571, -0.155370,
		27.609182, 36.703224, 31.931875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222330, 36.818989, 32.747929>,  <26.943140, 36.889122, 32.040634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222330, 36.818989, 32.747929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531282, 36.852676, 32.496109>,  <27.716654, 36.872890, 32.345016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531282, 36.852676, 32.496109>,  <27.222330, 36.818989, 32.747929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531282, 36.852676, 32.496109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414509, 0.684170, 0.600078,
		0.481261, -0.724444, 0.493528,
		0.772379, 0.084222, -0.629553,
		27.762997, 36.877945, 32.307243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859913, 36.701397, 33.132004>,  <27.222330, 36.818989, 32.747929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859913, 36.701397, 33.132004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944460, 36.925571, 32.811695>,  <27.995188, 37.060074, 32.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944460, 36.925571, 32.811695>,  <27.859913, 36.701397, 33.132004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944460, 36.925571, 32.811695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489294, 0.648564, 0.583058,
		0.846118, -0.515053, -0.137132,
		0.211367, 0.560433, -0.800774,
		28.007870, 37.093700, 32.571465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644264, 36.930801, 33.146217>,  <27.859913, 36.701397, 33.132004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644264, 36.930801, 33.146217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425333, 37.187244, 32.931030>,  <28.293974, 37.341110, 32.801918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425333, 37.187244, 32.931030>,  <28.644264, 36.930801, 33.146217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425333, 37.187244, 32.931030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507418, 0.765382, 0.395875,
		0.665552, -0.056303, -0.744225,
		-0.547328, 0.641109, -0.537970,
		28.261135, 37.379578, 32.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113543, 37.403313, 32.814339>,  <28.644264, 36.930801, 33.146217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113543, 37.403313, 32.814339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772308, 37.611782, 32.804344>,  <28.567568, 37.736862, 32.798347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772308, 37.611782, 32.804344>,  <29.113543, 37.403313, 32.814339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772308, 37.611782, 32.804344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482135, 0.805681, 0.344129,
		0.199479, 0.281526, -0.938590,
		-0.853085, 0.521173, -0.024983,
		28.516382, 37.768135, 32.796848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081207, 38.129543, 32.442760>,  <29.113543, 37.403313, 32.814339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081207, 38.129543, 32.442760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830841, 38.128109, 32.754715>,  <28.680622, 38.127247, 32.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830841, 38.128109, 32.754715>,  <29.081207, 38.129543, 32.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830841, 38.128109, 32.754715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600365, 0.636052, 0.484767,
		-0.497786, 0.771637, -0.395961,
		-0.625916, -0.003590, 0.779882,
		28.643066, 38.127033, 32.988678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951138, 38.750500, 32.512409>,  <29.081207, 38.129543, 32.442760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951138, 38.750500, 32.512409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876120, 38.579250, 32.866028>,  <28.831108, 38.476501, 33.078197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876120, 38.579250, 32.866028>,  <28.951138, 38.750500, 32.512409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876120, 38.579250, 32.866028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657089, 0.614298, 0.436890,
		-0.730111, 0.662832, 0.166108,
		-0.187545, -0.428125, 0.884045,
		28.819857, 38.450813, 33.131241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017145, 39.279453, 32.891068>,  <28.951138, 38.750500, 32.512409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017145, 39.279453, 32.891068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053385, 38.963806, 33.134079>,  <29.075129, 38.774418, 33.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053385, 38.963806, 33.134079>,  <29.017145, 39.279453, 32.891068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053385, 38.963806, 33.134079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747577, 0.456929, 0.482021,
		-0.657967, 0.410502, 0.631322,
		0.090599, -0.789116, 0.607526,
		29.080564, 38.727070, 33.316338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926432, 39.438107, 33.705868>,  <29.017145, 39.279453, 32.891068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926432, 39.438107, 33.705868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160469, 39.130913, 33.601658>,  <29.300892, 38.946598, 33.539131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160469, 39.130913, 33.601658>,  <28.926432, 39.438107, 33.705868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160469, 39.130913, 33.601658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716964, 0.339726, 0.608728,
		-0.378986, -0.542947, 0.749386,
		0.585092, -0.767982, -0.260522,
		29.335997, 38.900517, 33.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621487, 39.855900, 33.686974>,  <28.926432, 39.438107, 33.705868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621487, 39.855900, 33.686974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588213, 40.103310, 33.999512>,  <29.568249, 40.251755, 34.187035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588213, 40.103310, 33.999512>,  <29.621487, 39.855900, 33.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588213, 40.103310, 33.999512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312331, -0.728377, 0.609849,
		0.946324, 0.294770, -0.132595,
		-0.083186, 0.618528, 0.781347,
		29.563257, 40.288868, 34.233917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180256, 39.750927, 34.178307>,  <29.621487, 39.855900, 33.686974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180256, 39.750927, 34.178307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875677, 39.911964, 34.381527>,  <29.692930, 40.008587, 34.503460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875677, 39.911964, 34.381527>,  <30.180256, 39.750927, 34.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875677, 39.911964, 34.381527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244534, -0.547442, 0.800319,
		0.600333, 0.733636, 0.318400,
		-0.761449, 0.402598, 0.508046,
		29.647243, 40.032745, 34.533939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836321, 40.064499, 34.304417>,  <30.180256, 39.750927, 34.178307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836321, 40.064499, 34.304417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804804, 39.769119, 34.572292>,  <30.785894, 39.591892, 34.733017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804804, 39.769119, 34.572292>,  <30.836321, 40.064499, 34.304417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804804, 39.769119, 34.572292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836872, 0.316041, 0.446948,
		-0.541698, 0.595663, 0.593084,
		-0.078791, -0.738447, 0.669693,
		30.781166, 39.547585, 34.773201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011518, 40.370770, 34.921402>,  <30.836321, 40.064499, 34.304417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011518, 40.370770, 34.921402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103132, 39.981415, 34.918205>,  <31.158100, 39.747803, 34.916286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103132, 39.981415, 34.918205>,  <31.011518, 40.370770, 34.921402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103132, 39.981415, 34.918205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966093, 0.226296, 0.124315,
		-0.119198, -0.036192, 0.992211,
		0.229033, -0.973386, -0.007990,
		31.171843, 39.689400, 34.915810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292416, 39.893036, 35.508816>,  <31.011518, 40.370770, 34.921402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292416, 39.893036, 35.508816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437218, 39.759491, 35.160679>,  <31.524099, 39.679363, 34.951797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437218, 39.759491, 35.160679>,  <31.292416, 39.893036, 35.508816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437218, 39.759491, 35.160679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912409, 0.318156, 0.257462,
		0.190947, -0.887307, 0.419793,
		0.362007, -0.333861, -0.870337,
		31.545820, 39.659332, 34.899578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790815, 39.811424, 36.062153>,  <31.292416, 39.893036, 35.508816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790815, 39.811424, 36.062153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091305, 39.549976, 36.098907>,  <31.271599, 39.393108, 36.120960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091305, 39.549976, 36.098907>,  <30.790815, 39.811424, 36.062153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091305, 39.549976, 36.098907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423674, 0.584249, 0.692209,
		-0.506129, -0.481071, 0.715824,
		0.751221, -0.653623, 0.091888,
		31.316671, 39.353889, 36.126472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888132, 39.737885, 36.766220>,  <30.790815, 39.811424, 36.062153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888132, 39.737885, 36.766220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230217, 39.641975, 36.582428>,  <31.435469, 39.584431, 36.472153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230217, 39.641975, 36.582428>,  <30.888132, 39.737885, 36.766220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230217, 39.641975, 36.582428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493287, 0.648535, 0.579715,
		0.158992, -0.722436, 0.672910,
		0.855213, -0.239769, -0.459480,
		31.486780, 39.570045, 36.444584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404463, 39.429081, 37.156864>,  <30.888132, 39.737885, 36.766220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404463, 39.429081, 37.156864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578333, 39.620762, 36.851860>,  <31.682655, 39.735771, 36.668858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578333, 39.620762, 36.851860>,  <31.404463, 39.429081, 37.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578333, 39.620762, 36.851860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431966, 0.631995, 0.643419,
		0.790230, -0.609058, 0.067716,
		0.434675, 0.479198, -0.762513,
		31.708736, 39.764523, 36.623108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120354, 39.527786, 37.454956>,  <31.404463, 39.429081, 37.156864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120354, 39.527786, 37.454956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059231, 39.775478, 37.146877>,  <32.022556, 39.924095, 36.962032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059231, 39.775478, 37.146877>,  <32.120354, 39.527786, 37.454956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059231, 39.775478, 37.146877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431296, 0.742997, 0.511800,
		0.889176, -0.253978, -0.380606,
		-0.152803, 0.619234, -0.770195,
		32.013390, 39.961250, 36.915817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771137, 39.853470, 37.267094>,  <32.120354, 39.527786, 37.454956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771137, 39.853470, 37.267094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471519, 40.092163, 37.151958>,  <32.291748, 40.235378, 37.082878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471519, 40.092163, 37.151958>,  <32.771137, 39.853470, 37.267094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471519, 40.092163, 37.151958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397230, 0.752209, 0.525729,
		0.530233, 0.279454, -0.800474,
		-0.749041, 0.596731, -0.287838,
		32.246807, 40.271183, 37.065605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042866, 40.502998, 36.868549>,  <32.771137, 39.853470, 37.267094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042866, 40.502998, 36.868549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693832, 40.536976, 37.060955>,  <32.484413, 40.557362, 37.176399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693832, 40.536976, 37.060955>,  <33.042866, 40.502998, 36.868549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693832, 40.536976, 37.060955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365655, 0.766525, 0.527955,
		-0.323864, 0.636572, -0.699920,
		-0.872587, 0.084943, 0.481016,
		32.432056, 40.562458, 37.205261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928349, 41.269337, 36.880779>,  <33.042866, 40.502998, 36.868549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928349, 41.269337, 36.880779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741837, 41.067406, 37.171360>,  <32.629929, 40.946247, 37.345707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741837, 41.067406, 37.171360>,  <32.928349, 41.269337, 36.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741837, 41.067406, 37.171360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328727, 0.663504, 0.672087,
		-0.821290, 0.552186, -0.143431,
		-0.466284, -0.504829, 0.726448,
		32.601952, 40.915958, 37.389294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362114, 41.756989, 37.322273>,  <32.928349, 41.269337, 36.880779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362114, 41.756989, 37.322273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569908, 41.468708, 37.505894>,  <32.694584, 41.295738, 37.616066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569908, 41.468708, 37.505894>,  <32.362114, 41.756989, 37.322273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569908, 41.468708, 37.505894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532855, 0.693204, 0.485318,
		-0.667985, -0.007507, 0.744137,
		0.519482, -0.720703, 0.459049,
		32.725754, 41.252499, 37.643608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183998, 41.740845, 37.975754>,  <32.362114, 41.756989, 37.322273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183998, 41.740845, 37.975754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555164, 41.618351, 37.890720>,  <32.777863, 41.544853, 37.839703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555164, 41.618351, 37.890720>,  <32.183998, 41.740845, 37.975754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555164, 41.618351, 37.890720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367578, 0.656610, 0.658597,
		-0.062102, -0.689263, 0.721844,
		0.927917, -0.306234, -0.212581,
		32.833538, 41.526482, 37.826946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620569, 41.144066, 37.940788>,  <32.183998, 41.740845, 37.975754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620569, 41.144066, 37.940788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914255, 41.161552, 37.669785>,  <32.090466, 41.172043, 37.507183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914255, 41.161552, 37.669785>,  <31.620569, 41.144066, 37.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914255, 41.161552, 37.669785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436639, -0.733752, -0.520534,
		-0.519877, 0.678010, -0.519644,
		0.734217, 0.043717, -0.677506,
		32.134521, 41.174667, 37.466534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325865, 41.153469, 37.291344>,  <31.620569, 41.144066, 37.940788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325865, 41.153469, 37.291344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706812, 41.069073, 37.203274>,  <31.935381, 41.018436, 37.150433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706812, 41.069073, 37.203274>,  <31.325865, 41.153469, 37.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706812, 41.069073, 37.203274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302879, -0.738392, -0.602529,
		-0.035448, 0.640516, -0.767126,
		0.952370, -0.210988, -0.220173,
		31.992523, 41.005775, 37.137222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531490, 41.183609, 36.534958>,  <31.325865, 41.153469, 37.291344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531490, 41.183609, 36.534958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759575, 40.904598, 36.708542>,  <31.896425, 40.737194, 36.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759575, 40.904598, 36.708542>,  <31.531490, 41.183609, 36.534958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759575, 40.904598, 36.708542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115907, -0.591278, -0.798095,
		0.813281, 0.404783, -0.418001,
		0.570210, -0.697525, 0.433958,
		31.930637, 40.695339, 36.838730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756804, 40.830101, 35.949398>,  <31.531490, 41.183609, 36.534958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756804, 40.830101, 35.949398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850199, 40.569996, 36.238575>,  <31.906235, 40.413933, 36.412079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850199, 40.569996, 36.238575>,  <31.756804, 40.830101, 35.949398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850199, 40.569996, 36.238575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020710, -0.746646, -0.664900,
		0.972139, 0.140273, -0.187799,
		0.233486, -0.650264, 0.722938,
		31.920244, 40.374916, 36.455456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284405, 40.328232, 35.639690>,  <31.756804, 40.830101, 35.949398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284405, 40.328232, 35.639690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093903, 40.170921, 35.954273>,  <31.979601, 40.076534, 36.143021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093903, 40.170921, 35.954273>,  <32.284405, 40.328232, 35.639690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093903, 40.170921, 35.954273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106451, -0.862036, -0.495542,
		0.872838, -0.319724, 0.368686,
		-0.476258, -0.393281, 0.786454,
		31.951025, 40.052937, 36.190208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670811, 39.748260, 35.688339>,  <32.284405, 40.328232, 35.639690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670811, 39.748260, 35.688339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315804, 39.693264, 35.864254>,  <32.102798, 39.660267, 35.969803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315804, 39.693264, 35.864254>,  <32.670811, 39.748260, 35.688339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315804, 39.693264, 35.864254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157477, -0.806461, -0.569931,
		0.433032, -0.575079, 0.694095,
		-0.887516, -0.137494, 0.439785,
		32.049549, 39.652016, 35.996189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828094, 39.757664, 34.909695>,  <32.670811, 39.748260, 35.688339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828094, 39.757664, 34.909695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904984, 39.960938, 34.573887>,  <32.951115, 40.082901, 34.372402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904984, 39.960938, 34.573887>,  <32.828094, 39.757664, 34.909695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904984, 39.960938, 34.573887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651859, -0.573360, -0.496325,
		-0.733574, 0.642653, 0.221057,
		0.192220, 0.508189, -0.839521,
		32.962650, 40.113396, 34.322029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260372, 39.594475, 34.565617>,  <32.828094, 39.757664, 34.909695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260372, 39.594475, 34.565617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551689, 39.687798, 34.307884>,  <32.726479, 39.743790, 34.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551689, 39.687798, 34.307884>,  <32.260372, 39.594475, 34.565617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551689, 39.687798, 34.307884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413788, -0.599772, -0.684875,
		-0.546235, 0.765404, -0.340270,
		0.728290, 0.233303, -0.644331,
		32.770176, 39.757790, 34.114586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962690, 39.868946, 33.933163>,  <32.260372, 39.594475, 34.565617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962690, 39.868946, 33.933163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323372, 39.744125, 33.813465>,  <32.539780, 39.669231, 33.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323372, 39.744125, 33.813465>,  <31.962690, 39.868946, 33.933163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323372, 39.744125, 33.813465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418364, -0.455130, -0.786021,
		0.109085, 0.833953, -0.540946,
		0.901705, -0.312056, -0.299248,
		32.593884, 39.650509, 33.723690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895609, 39.742493, 33.167202>,  <31.962690, 39.868946, 33.933163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895609, 39.742493, 33.167202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254982, 39.586609, 33.248146>,  <32.470604, 39.493080, 33.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254982, 39.586609, 33.248146>,  <31.895609, 39.742493, 33.167202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254982, 39.586609, 33.248146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117104, -0.656793, -0.744922,
		0.423211, 0.645564, -0.635720,
		0.898431, -0.389705, 0.202364,
		32.524513, 39.469696, 33.308857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217232, 39.746784, 32.575329>,  <31.895609, 39.742493, 33.167202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217232, 39.746784, 32.575329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394707, 39.471947, 32.805477>,  <32.501190, 39.307045, 32.943565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394707, 39.471947, 32.805477>,  <32.217232, 39.746784, 32.575329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394707, 39.471947, 32.805477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167064, -0.694180, -0.700146,
		0.880473, 0.214522, -0.422786,
		0.443686, -0.687092, 0.575368,
		32.527813, 39.265820, 32.978088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723202, 39.377594, 32.111488>,  <32.217232, 39.746784, 32.575329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723202, 39.377594, 32.111488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639561, 39.148781, 32.428741>,  <32.589375, 39.011494, 32.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639561, 39.148781, 32.428741>,  <32.723202, 39.377594, 32.111488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639561, 39.148781, 32.428741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211191, -0.765505, -0.607783,
		0.954816, -0.294593, 0.039263,
		-0.209105, -0.572029, 0.793132,
		32.576828, 38.977173, 32.666679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232723, 38.954453, 32.027058>,  <32.723202, 39.377594, 32.111488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232723, 38.954453, 32.027058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944050, 38.806671, 32.261211>,  <32.770847, 38.718002, 32.401703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944050, 38.806671, 32.261211>,  <33.232723, 38.954453, 32.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944050, 38.806671, 32.261211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079871, -0.795572, -0.600571,
		0.687600, -0.480178, 0.544643,
		-0.721684, -0.369452, 0.585387,
		32.727543, 38.695835, 32.436829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296524, 38.197403, 32.108150>,  <33.232723, 38.954453, 32.027058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296524, 38.197403, 32.108150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909611, 38.242641, 32.198990>,  <32.677464, 38.269783, 32.253494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909611, 38.242641, 32.198990>,  <33.296524, 38.197403, 32.108150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909611, 38.242641, 32.198990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232719, -0.751968, -0.616755,
		0.101020, -0.649426, 0.753685,
		-0.967283, 0.113092, 0.227097,
		32.619427, 38.276569, 32.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071331, 37.583843, 32.128349>,  <33.296524, 38.197403, 32.108150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071331, 37.583843, 32.128349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744881, 37.811073, 32.085972>,  <32.549011, 37.947411, 32.060547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744881, 37.811073, 32.085972>,  <33.071331, 37.583843, 32.128349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744881, 37.811073, 32.085972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356676, -0.639438, -0.681103,
		-0.454660, -0.518081, 0.724483,
		-0.816129, 0.568076, -0.105940,
		32.500042, 37.981495, 32.054188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704491, 37.067440, 31.914160>,  <33.071331, 37.583843, 32.128349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704491, 37.067440, 31.914160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507061, 37.402508, 31.820616>,  <32.388603, 37.603550, 31.764488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507061, 37.402508, 31.820616>,  <32.704491, 37.067440, 31.914160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507061, 37.402508, 31.820616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554495, -0.510254, -0.657401,
		-0.670015, -0.194800, 0.716333,
		-0.493573, 0.837672, -0.233862,
		32.358990, 37.653809, 31.750458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020214, 36.890133, 31.918591>,  <32.704491, 37.067440, 31.914160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020214, 36.890133, 31.918591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062550, 37.232124, 31.715488>,  <32.087952, 37.437317, 31.593628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062550, 37.232124, 31.715488>,  <32.020214, 36.890133, 31.918591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062550, 37.232124, 31.715488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445073, -0.415887, -0.793063,
		-0.889217, 0.309928, 0.336507,
		0.105843, 0.854975, -0.507754,
		32.094303, 37.488617, 31.563162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387924, 37.018635, 31.606541>,  <32.020214, 36.890133, 31.918591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387924, 37.018635, 31.606541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640320, 37.242756, 31.391909>,  <31.791758, 37.377228, 31.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640320, 37.242756, 31.391909>,  <31.387924, 37.018635, 31.606541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640320, 37.242756, 31.391909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488652, -0.250160, -0.835846,
		-0.602555, 0.789610, 0.115943,
		0.630989, 0.560299, -0.536580,
		31.829617, 37.410847, 31.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924126, 37.412498, 31.165192>,  <31.387924, 37.018635, 31.606541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924126, 37.412498, 31.165192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288849, 37.389133, 31.002615>,  <31.507683, 37.375114, 30.905069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288849, 37.389133, 31.002615>,  <30.924126, 37.412498, 31.165192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288849, 37.389133, 31.002615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407289, -0.254453, -0.877137,
		-0.052188, 0.965320, -0.255801,
		0.911807, -0.058409, -0.406444,
		31.562391, 37.371613, 30.880682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874598, 37.744297, 30.562515>,  <30.924126, 37.412498, 31.165192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874598, 37.744297, 30.562515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188511, 37.500359, 30.518328>,  <31.376858, 37.353996, 30.491816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188511, 37.500359, 30.518328>,  <30.874598, 37.744297, 30.562515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188511, 37.500359, 30.518328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330909, -0.261594, -0.906680,
		0.524039, 0.748101, -0.407098,
		0.784782, -0.609848, -0.110468,
		31.423944, 37.317406, 30.485188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070343, 37.821152, 29.876600>,  <30.874598, 37.744297, 30.562515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070343, 37.821152, 29.876600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258533, 37.477001, 29.954981>,  <31.371449, 37.270512, 30.002008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258533, 37.477001, 29.954981>,  <31.070343, 37.821152, 29.876600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258533, 37.477001, 29.954981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134105, -0.289198, -0.947829,
		0.872162, 0.419654, -0.251442,
		0.470477, -0.860381, 0.195950,
		31.399677, 37.218887, 30.013765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409084, 37.704262, 29.336710>,  <31.070343, 37.821152, 29.876600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409084, 37.704262, 29.336710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374439, 37.341469, 29.501577>,  <31.353651, 37.123795, 29.600498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374439, 37.341469, 29.501577>,  <31.409084, 37.704262, 29.336710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374439, 37.341469, 29.501577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331402, -0.363931, -0.870475,
		0.939506, -0.211989, -0.269054,
		-0.086614, -0.906981, 0.412169,
		31.348455, 37.069374, 29.625229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779133, 37.181797, 28.923120>,  <31.409084, 37.704262, 29.336710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779133, 37.181797, 28.923120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522779, 36.969051, 29.144531>,  <31.368967, 36.841404, 29.277378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522779, 36.969051, 29.144531>,  <31.779133, 37.181797, 28.923120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522779, 36.969051, 29.144531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348325, -0.441084, -0.827112,
		0.684061, -0.722890, 0.097423,
		-0.640883, -0.531860, 0.553528,
		31.330515, 36.809494, 29.310589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809492, 36.536625, 28.604937>,  <31.779133, 37.181797, 28.923120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809492, 36.536625, 28.604937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466713, 36.565796, 28.809023>,  <31.261045, 36.583298, 28.931475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466713, 36.565796, 28.809023>,  <31.809492, 36.536625, 28.604937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466713, 36.565796, 28.809023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511422, -0.243112, -0.824223,
		0.063929, -0.967253, 0.245633,
		-0.856948, 0.072931, 0.510216,
		31.209629, 36.587677, 28.962088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496799, 35.873127, 28.480637>,  <31.809492, 36.536625, 28.604937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496799, 35.873127, 28.480637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229721, 36.149456, 28.591595>,  <31.069473, 36.315254, 28.658169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229721, 36.149456, 28.591595>,  <31.496799, 35.873127, 28.480637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229721, 36.149456, 28.591595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620395, -0.310419, -0.720243,
		-0.411451, -0.652998, 0.635848,
		-0.667696, 0.690822, 0.277394,
		31.029413, 36.356701, 28.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943035, 35.516712, 28.388165>,  <31.496799, 35.873127, 28.480637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943035, 35.516712, 28.388165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817972, 35.896622, 28.393497>,  <30.742935, 36.124569, 28.396696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817972, 35.896622, 28.393497>,  <30.943035, 35.516712, 28.388165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817972, 35.896622, 28.393497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657021, -0.206108, -0.725150,
		-0.685981, -0.235481, 0.688462,
		-0.312656, 0.949773, 0.013330,
		30.724174, 36.181553, 28.397497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330612, 35.404858, 28.159979>,  <30.943035, 35.516712, 28.388165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330612, 35.404858, 28.159979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393293, 35.793640, 28.089849>,  <30.430902, 36.026909, 28.047771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393293, 35.793640, 28.089849>,  <30.330612, 35.404858, 28.159979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393293, 35.793640, 28.089849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495276, -0.076248, -0.865383,
		-0.854486, 0.222442, 0.469440,
		0.156703, 0.971960, -0.175323,
		30.440304, 36.085228, 28.037252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632370, 35.657898, 28.071323>,  <30.330612, 35.404858, 28.159979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632370, 35.657898, 28.071323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864403, 35.955933, 27.939655>,  <30.003622, 36.134754, 27.860655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864403, 35.955933, 27.939655>,  <29.632370, 35.657898, 28.071323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864403, 35.955933, 27.939655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632950, 0.157942, -0.757911,
		-0.512719, 0.647999, 0.563221,
		0.580081, 0.745086, -0.329171,
		30.038427, 36.179459, 27.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228474, 36.236076, 27.955118>,  <29.632370, 35.657898, 28.071323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228474, 36.236076, 27.955118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535746, 36.287651, 27.704271>,  <29.720108, 36.318596, 27.553762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535746, 36.287651, 27.704271>,  <29.228474, 36.236076, 27.955118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535746, 36.287651, 27.704271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634500, 0.284110, -0.718812,
		0.085491, 0.950083, 0.300055,
		0.768180, 0.128933, -0.627117,
		29.766199, 36.326332, 27.516136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952606, 36.798916, 27.446156>,  <29.228474, 36.236076, 27.955118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952606, 36.798916, 27.446156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269213, 36.612946, 27.287487>,  <29.459177, 36.501362, 27.192286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269213, 36.612946, 27.287487>,  <28.952606, 36.798916, 27.446156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269213, 36.612946, 27.287487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475888, -0.061638, -0.877343,
		0.383452, 0.883200, -0.270041,
		0.791514, -0.464929, -0.396669,
		29.506666, 36.473469, 27.168486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028641, 37.104336, 26.756557>,  <28.952606, 36.798916, 27.446156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028641, 37.104336, 26.756557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235359, 36.763260, 26.725983>,  <29.359390, 36.558617, 26.707638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235359, 36.763260, 26.725983>,  <29.028641, 37.104336, 26.756557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235359, 36.763260, 26.725983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245991, -0.062381, -0.967262,
		0.820005, 0.518683, -0.241992,
		0.516798, -0.852688, -0.076439,
		29.390398, 36.507454, 26.703051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438833, 37.130173, 26.234070>,  <29.028641, 37.104336, 26.756557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438833, 37.130173, 26.234070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441813, 36.730190, 26.236549>,  <29.443600, 36.490200, 26.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441813, 36.730190, 26.236549>,  <29.438833, 37.130173, 26.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441813, 36.730190, 26.236549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107079, -0.006963, -0.994226,
		0.994223, 0.006741, -0.107126,
		0.007448, -0.999953, 0.006201,
		29.444048, 36.430202, 26.238409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807556, 36.934093, 25.614437>,  <29.438833, 37.130173, 26.234070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807556, 36.934093, 25.614437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572485, 36.622284, 25.701139>,  <29.431442, 36.435200, 25.753160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572485, 36.622284, 25.701139>,  <29.807556, 36.934093, 25.614437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572485, 36.622284, 25.701139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237985, -0.089510, -0.967135,
		0.773303, -0.619949, -0.132911,
		-0.587677, -0.779520, 0.216757,
		29.396181, 36.388428, 25.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081959, 36.269478, 25.140617>,  <29.807556, 36.934093, 25.614437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081959, 36.269478, 25.140617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702215, 36.191177, 25.238924>,  <29.474369, 36.144199, 25.297907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702215, 36.191177, 25.238924>,  <30.081959, 36.269478, 25.140617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702215, 36.191177, 25.238924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138059, -0.442756, -0.885950,
		0.282236, -0.875014, 0.393310,
		-0.949359, -0.195747, 0.245766,
		29.417408, 36.132454, 25.312654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994488, 35.554176, 24.804600>,  <30.081959, 36.269478, 25.140617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994488, 35.554176, 24.804600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628054, 35.676620, 24.908201>,  <29.408194, 35.750088, 24.970362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628054, 35.676620, 24.908201>,  <29.994488, 35.554176, 24.804600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628054, 35.676620, 24.908201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366312, -0.376150, -0.851074,
		-0.163100, -0.874533, 0.456718,
		-0.916086, 0.306111, 0.259002,
		29.353228, 35.768456, 24.985901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571312, 35.060593, 24.580690>,  <29.994488, 35.554176, 24.804600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571312, 35.060593, 24.580690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327368, 35.376469, 24.607414>,  <29.181002, 35.565994, 24.623449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327368, 35.376469, 24.607414>,  <29.571312, 35.060593, 24.580690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327368, 35.376469, 24.607414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416638, -0.247765, -0.874657,
		-0.674152, -0.561256, 0.480116,
		-0.609863, 0.789686, 0.066809,
		29.144409, 35.613373, 24.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891659, 34.804596, 24.439810>,  <29.571312, 35.060593, 24.580690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891659, 34.804596, 24.439810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895868, 35.198521, 24.370483>,  <28.898394, 35.434875, 24.328888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895868, 35.198521, 24.370483>,  <28.891659, 34.804596, 24.439810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895868, 35.198521, 24.370483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393162, -0.155291, -0.906261,
		-0.919409, 0.077676, 0.385556,
		0.010522, 0.984810, -0.173315,
		28.899025, 35.493965, 24.318489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187862, 34.961258, 24.132389>,  <28.891659, 34.804596, 24.439810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187862, 34.961258, 24.132389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433325, 35.259090, 24.027300>,  <28.580603, 35.437790, 23.964247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433325, 35.259090, 24.027300>,  <28.187862, 34.961258, 24.132389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433325, 35.259090, 24.027300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343459, -0.047882, -0.937946,
		-0.710957, 0.665812, 0.226350,
		0.613658, 0.744581, -0.262721,
		28.617422, 35.482464, 23.948484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922081, 35.268684, 23.638060>,  <28.187862, 34.961258, 24.132389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922081, 35.268684, 23.638060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292084, 35.415695, 23.599514>,  <28.514086, 35.503902, 23.576387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292084, 35.415695, 23.599514>,  <27.922081, 35.268684, 23.638060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292084, 35.415695, 23.599514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101282, -0.005931, -0.994840,
		-0.366200, 0.929995, 0.031737,
		0.925008, 0.367524, -0.096364,
		28.569586, 35.525951, 23.570604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879427, 35.637951, 23.047939>,  <27.922081, 35.268684, 23.638060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879427, 35.637951, 23.047939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268118, 35.556564, 23.095852>,  <28.501333, 35.507732, 23.124599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268118, 35.556564, 23.095852>,  <27.879427, 35.637951, 23.047939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268118, 35.556564, 23.095852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093244, -0.135374, -0.986397,
		0.216910, 0.969679, -0.112575,
		0.971728, -0.203463, 0.119780,
		28.559637, 35.495525, 23.131786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135324, 36.071114, 22.553347>,  <27.879427, 35.637951, 23.047939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135324, 36.071114, 22.553347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423256, 35.804527, 22.630981>,  <28.596016, 35.644577, 22.677563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423256, 35.804527, 22.630981>,  <28.135324, 36.071114, 22.553347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423256, 35.804527, 22.630981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182957, -0.087559, -0.979214,
		0.669605, 0.740377, 0.058907,
		0.719830, -0.666465, 0.194087,
		28.639204, 35.604588, 22.689207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631207, 36.223629, 22.145981>,  <28.135324, 36.071114, 22.553347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631207, 36.223629, 22.145981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718525, 35.846840, 22.247982>,  <28.770916, 35.620766, 22.309183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718525, 35.846840, 22.247982>,  <28.631207, 36.223629, 22.145981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718525, 35.846840, 22.247982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062318, -0.247314, -0.966929,
		0.973891, 0.226969, 0.004714,
		0.218297, -0.941977, 0.255001,
		28.784014, 35.564247, 22.324482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272829, 36.095581, 21.770958>,  <28.631207, 36.223629, 22.145981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272829, 36.095581, 21.770958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096157, 35.747204, 21.857101>,  <28.990154, 35.538177, 21.908787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096157, 35.747204, 21.857101>,  <29.272829, 36.095581, 21.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096157, 35.747204, 21.857101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128253, -0.298867, -0.945637,
		0.887959, -0.390048, 0.243704,
		-0.441678, -0.870943, 0.215357,
		28.963654, 35.485920, 21.921709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745060, 35.586956, 21.433615>,  <29.272829, 36.095581, 21.770958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745060, 35.586956, 21.433615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385769, 35.424385, 21.500547>,  <29.170195, 35.326843, 21.540707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385769, 35.424385, 21.500547>,  <29.745060, 35.586956, 21.433615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385769, 35.424385, 21.500547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044286, -0.295085, -0.954444,
		0.437290, -0.864720, 0.247055,
		-0.898229, -0.406428, 0.167332,
		29.116301, 35.302456, 21.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754547, 35.018009, 21.038298>,  <29.745060, 35.586956, 21.433615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754547, 35.018009, 21.038298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365492, 35.096943, 21.087339>,  <29.132059, 35.144302, 21.116764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365492, 35.096943, 21.087339>,  <29.754547, 35.018009, 21.038298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365492, 35.096943, 21.087339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196695, -0.418650, -0.886591,
		-0.123628, -0.886448, 0.446010,
		-0.972639, 0.197336, 0.122603,
		29.073700, 35.156143, 21.124121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444801, 34.397099, 20.745346>,  <29.754547, 35.018009, 21.038298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444801, 34.397099, 20.745346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178921, 34.694336, 20.776312>,  <29.019392, 34.872677, 20.794891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178921, 34.694336, 20.776312>,  <29.444801, 34.397099, 20.745346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178921, 34.694336, 20.776312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320222, -0.189745, -0.928146,
		-0.675006, -0.641728, 0.364077,
		-0.664699, 0.743090, 0.077416,
		28.979511, 34.917263, 20.799538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874533, 34.121578, 20.434875>,  <29.444801, 34.397099, 20.745346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874533, 34.121578, 20.434875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845116, 34.520409, 20.443186>,  <28.827465, 34.759708, 20.448172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845116, 34.520409, 20.443186>,  <28.874533, 34.121578, 20.434875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845116, 34.520409, 20.443186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422966, -0.012318, -0.906062,
		-0.903157, -0.075419, 0.422635,
		-0.073541, 0.997076, 0.020774,
		28.823053, 34.819530, 20.449419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147522, 34.300018, 20.346262>,  <28.874533, 34.121578, 20.434875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147522, 34.300018, 20.346262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384077, 34.583191, 20.191809>,  <28.526011, 34.753094, 20.099136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384077, 34.583191, 20.191809>,  <28.147522, 34.300018, 20.346262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384077, 34.583191, 20.191809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423565, -0.134763, -0.895785,
		-0.686189, 0.693308, 0.220157,
		0.591386, 0.707929, -0.386134,
		28.561493, 34.795570, 20.075968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611498, 34.761475, 19.990997>,  <28.147522, 34.300018, 20.346262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611498, 34.761475, 19.990997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957298, 34.852882, 19.811926>,  <28.164778, 34.907726, 19.704483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957298, 34.852882, 19.811926>,  <27.611498, 34.761475, 19.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957298, 34.852882, 19.811926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414347, -0.180178, -0.892106,
		-0.284524, 0.956721, -0.061079,
		0.864501, 0.228517, -0.447680,
		28.216648, 34.921436, 19.677622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421309, 35.420559, 19.485001>,  <27.611498, 34.761475, 19.990997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421309, 35.420559, 19.485001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701883, 35.160072, 19.369137>,  <27.870228, 35.003780, 19.299620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701883, 35.160072, 19.369137>,  <27.421309, 35.420559, 19.485001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701883, 35.160072, 19.369137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372450, 0.011587, -0.927980,
		0.607671, 0.758804, -0.234418,
		0.701439, -0.651216, -0.289658,
		27.912315, 34.964706, 19.282240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905079, 35.650642, 19.006372>,  <27.421309, 35.420559, 19.485001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905079, 35.650642, 19.006372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836926, 35.261539, 18.943481>,  <27.796034, 35.028080, 18.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.836926, 35.261539, 18.943481>,  <27.905079, 35.650642, 19.006372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836926, 35.261539, 18.943481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110496, 0.177416, -0.977914,
		0.979163, -0.149249, -0.137714,
		-0.170385, -0.972753, -0.157228,
		27.785810, 34.969715, 18.896313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246569, 35.368755, 18.487486>,  <27.905079, 35.650642, 19.006372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246569, 35.368755, 18.487486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933977, 35.119560, 18.473753>,  <27.746422, 34.970043, 18.465513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933977, 35.119560, 18.473753>,  <28.246569, 35.368755, 18.487486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933977, 35.119560, 18.473753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028512, 0.090628, -0.995477,
		0.623278, -0.776966, -0.088586,
		-0.781480, -0.622985, -0.034333,
		27.699533, 34.932663, 18.463453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125387, 35.236759, 17.788261>,  <28.246569, 35.368755, 18.487486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125387, 35.236759, 17.788261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810310, 35.023357, 17.911499>,  <27.621265, 34.895317, 17.985441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810310, 35.023357, 17.911499>,  <28.125387, 35.236759, 17.788261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810310, 35.023357, 17.911499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297881, -0.107932, -0.948482,
		0.539269, -0.838885, -0.073903,
		-0.787690, -0.533501, 0.308092,
		27.574003, 34.863308, 18.003927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919580, 35.915947, 17.592348>,  <28.125387, 35.236759, 17.788261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919580, 35.915947, 17.592348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945745, 35.708336, 17.251448>,  <27.961445, 35.583767, 17.046907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945745, 35.708336, 17.251448>,  <27.919580, 35.915947, 17.592348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945745, 35.708336, 17.251448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978070, -0.135897, 0.157831,
		-0.197737, -0.843884, 0.498759,
		0.065411, -0.519030, -0.852249,
		27.965368, 35.552628, 16.995773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266624, 36.208595, 18.051559>,  <27.919580, 35.915947, 17.592348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266624, 36.208595, 18.051559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502666, 36.065712, 17.761959>,  <28.644291, 35.979980, 17.588198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502666, 36.065712, 17.761959>,  <28.266624, 36.208595, 18.051559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502666, 36.065712, 17.761959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699943, 0.673263, 0.238320,
		0.402314, -0.647394, 0.647321,
		0.590104, -0.357208, -0.724003,
		28.679697, 35.958549, 17.544758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877926, 35.811481, 18.237482>,  <28.266624, 36.208595, 18.051559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877926, 35.811481, 18.237482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940611, 36.046200, 17.919710>,  <28.978222, 36.187031, 17.729048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940611, 36.046200, 17.919710>,  <28.877926, 35.811481, 18.237482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940611, 36.046200, 17.919710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742920, 0.459975, 0.486305,
		0.650777, -0.666406, -0.363857,
		0.156712, 0.586793, -0.794428,
		28.987625, 36.222237, 17.681381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540144, 35.692341, 18.089794>,  <28.877926, 35.811481, 18.237482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540144, 35.692341, 18.089794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453480, 36.050091, 17.933252>,  <29.401482, 36.264740, 17.839327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453480, 36.050091, 17.933252>,  <29.540144, 35.692341, 18.089794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453480, 36.050091, 17.933252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842436, 0.373854, 0.387988,
		0.493316, -0.245631, -0.834449,
		-0.216661, 0.894370, -0.391356,
		29.388481, 36.318401, 17.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092381, 36.055241, 17.778683>,  <29.540144, 35.692341, 18.089794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092381, 36.055241, 17.778683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868816, 36.360870, 17.907564>,  <29.734678, 36.544247, 17.984894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868816, 36.360870, 17.907564>,  <30.092381, 36.055241, 17.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868816, 36.360870, 17.907564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805832, 0.408810, 0.428380,
		0.195593, 0.499068, -0.844200,
		-0.558908, 0.764072, 0.322205,
		29.701143, 36.590092, 18.004225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359020, 36.772751, 17.755592>,  <30.092381, 36.055241, 17.778683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359020, 36.772751, 17.755592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102404, 36.746140, 18.061272>,  <29.948433, 36.730171, 18.244678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102404, 36.746140, 18.061272>,  <30.359020, 36.772751, 17.755592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102404, 36.746140, 18.061272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679059, 0.414121, 0.606122,
		-0.356795, 0.907787, -0.220499,
		-0.641543, -0.066529, 0.764197,
		29.909941, 36.726181, 18.290531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400440, 37.358284, 18.053637>,  <30.359020, 36.772751, 17.755592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400440, 37.358284, 18.053637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282747, 37.109509, 18.343912>,  <30.212132, 36.960243, 18.518078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282747, 37.109509, 18.343912>,  <30.400440, 37.358284, 18.053637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282747, 37.109509, 18.343912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673672, 0.403633, 0.619069,
		-0.677933, 0.671026, 0.300219,
		-0.294233, -0.621937, 0.725687,
		30.194477, 36.922928, 18.561619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245497, 37.741264, 18.750521>,  <30.400440, 37.358284, 18.053637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245497, 37.741264, 18.750521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326035, 37.355911, 18.821344>,  <30.374357, 37.124699, 18.863838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326035, 37.355911, 18.821344>,  <30.245497, 37.741264, 18.750521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326035, 37.355911, 18.821344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721621, 0.268124, 0.638258,
		-0.662361, -0.000740, 0.749184,
		0.201347, -0.963384, 0.177061,
		30.386438, 37.066895, 18.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272726, 37.628048, 19.493576>,  <30.245497, 37.741264, 18.750521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272726, 37.628048, 19.493576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451466, 37.286911, 19.385511>,  <30.558708, 37.082230, 19.320673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451466, 37.286911, 19.385511>,  <30.272726, 37.628048, 19.493576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451466, 37.286911, 19.385511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596540, 0.059006, 0.800412,
		-0.666685, -0.518822, 0.535121,
		0.446847, -0.852843, -0.270160,
		30.585520, 37.031059, 19.304464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312202, 37.175934, 20.119925>,  <30.272726, 37.628048, 19.493576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312202, 37.175934, 20.119925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589460, 37.085274, 19.846230>,  <30.755816, 37.030880, 19.682013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589460, 37.085274, 19.846230>,  <30.312202, 37.175934, 20.119925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589460, 37.085274, 19.846230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705278, 0.017323, 0.708719,
		-0.148776, -0.973823, 0.171856,
		0.693144, -0.226646, -0.684239,
		30.797403, 37.017281, 19.640957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712803, 36.693222, 20.396751>,  <30.312202, 37.175934, 20.119925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712803, 36.693222, 20.396751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944246, 36.822254, 20.097109>,  <31.083113, 36.899673, 19.917324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944246, 36.822254, 20.097109>,  <30.712803, 36.693222, 20.396751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944246, 36.822254, 20.097109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749685, 0.151388, 0.644247,
		0.321225, -0.934358, -0.154237,
		0.578608, 0.322577, -0.749104,
		31.117828, 36.919029, 19.872377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297930, 36.318707, 20.541361>,  <30.712803, 36.693222, 20.396751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297930, 36.318707, 20.541361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415209, 36.618484, 20.303917>,  <31.485577, 36.798351, 20.161451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415209, 36.618484, 20.303917>,  <31.297930, 36.318707, 20.541361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415209, 36.618484, 20.303917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754843, 0.199578, 0.624805,
		0.586727, -0.631271, -0.507196,
		0.293195, 0.749443, -0.593608,
		31.503168, 36.843319, 20.125834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910732, 36.322353, 20.756697>,  <31.297930, 36.318707, 20.541361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910732, 36.322353, 20.756697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880154, 36.657352, 20.540270>,  <31.861807, 36.858353, 20.410414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880154, 36.657352, 20.540270>,  <31.910732, 36.322353, 20.756697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880154, 36.657352, 20.540270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684235, 0.438776, 0.582494,
		0.725244, -0.325687, -0.606588,
		-0.076446, 0.837499, -0.541065,
		31.857220, 36.908604, 20.377951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541183, 36.474861, 20.607885>,  <31.910732, 36.322353, 20.756697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541183, 36.474861, 20.607885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324577, 36.811077, 20.614292>,  <32.194614, 37.012806, 20.618137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324577, 36.811077, 20.614292>,  <32.541183, 36.474861, 20.607885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324577, 36.811077, 20.614292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617516, 0.384762, 0.686026,
		0.570467, 0.381387, -0.727401,
		-0.541518, 0.840536, 0.016019,
		32.162121, 37.063236, 20.619099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083595, 36.938297, 20.722515>,  <32.541183, 36.474861, 20.607885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083595, 36.938297, 20.722515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745502, 37.133739, 20.809103>,  <32.542648, 37.251003, 20.861055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745502, 37.133739, 20.809103>,  <33.083595, 36.938297, 20.722515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745502, 37.133739, 20.809103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458421, 0.454716, 0.763599,
		0.274664, 0.744649, -0.608324,
		-0.845228, 0.488602, 0.216468,
		32.491936, 37.280319, 20.874044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277481, 37.594303, 20.723154>,  <33.083595, 36.938297, 20.722515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277481, 37.594303, 20.723154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931114, 37.585411, 20.923031>,  <32.723293, 37.580078, 21.042957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931114, 37.585411, 20.923031>,  <33.277481, 37.594303, 20.723154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931114, 37.585411, 20.923031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409898, 0.540998, 0.734374,
		-0.286657, 0.840730, -0.459349,
		-0.865917, -0.022227, 0.499694,
		32.671341, 37.578743, 21.072939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090103, 38.338482, 20.968727>,  <33.277481, 37.594303, 20.723154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090103, 38.338482, 20.968727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902779, 38.084709, 21.214712>,  <32.790382, 37.932446, 21.362303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902779, 38.084709, 21.214712>,  <33.090103, 38.338482, 20.968727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902779, 38.084709, 21.214712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384699, 0.480160, 0.788323,
		-0.795419, 0.605756, 0.019201,
		-0.468312, -0.634434, 0.614962,
		32.762283, 37.894379, 21.399200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818558, 38.697544, 21.573933>,  <33.090103, 38.338482, 20.968727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818558, 38.697544, 21.573933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812443, 38.316708, 21.696102>,  <32.808773, 38.088203, 21.769403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812443, 38.316708, 21.696102>,  <32.818558, 38.697544, 21.573933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812443, 38.316708, 21.696102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180492, 0.297811, 0.937407,
		-0.983458, 0.069461, 0.167292,
		-0.015291, -0.952094, 0.305422,
		32.807854, 38.031078, 21.787729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542282, 38.784313, 22.227938>,  <32.818558, 38.697544, 21.573933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542282, 38.784313, 22.227938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726486, 38.429539, 22.242256>,  <32.837009, 38.216675, 22.250847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726486, 38.429539, 22.242256>,  <32.542282, 38.784313, 22.227938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726486, 38.429539, 22.242256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103522, 0.093716, 0.990202,
		-0.881599, -0.452288, 0.134974,
		0.460506, -0.886934, 0.035798,
		32.864639, 38.163460, 22.252996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283958, 38.603397, 22.824295>,  <32.542282, 38.784313, 22.227938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283958, 38.603397, 22.824295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582855, 38.345821, 22.758619>,  <32.762196, 38.191277, 22.719213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582855, 38.345821, 22.758619>,  <32.283958, 38.603397, 22.824295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582855, 38.345821, 22.758619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195848, -0.022703, 0.980371,
		-0.635033, -0.764735, 0.109150,
		0.747246, -0.643945, -0.164189,
		32.807030, 38.152637, 22.709362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149906, 38.119297, 23.281433>,  <32.283958, 38.603397, 22.824295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149906, 38.119297, 23.281433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540462, 38.123653, 23.195145>,  <32.774796, 38.126266, 23.143372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540462, 38.123653, 23.195145>,  <32.149906, 38.119297, 23.281433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540462, 38.123653, 23.195145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213961, 0.088081, 0.972863,
		0.029590, -0.996054, 0.083673,
		0.976394, 0.010885, -0.215723,
		32.833382, 38.126919, 23.130428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396145, 37.571045, 23.709579>,  <32.149906, 38.119297, 23.281433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396145, 37.571045, 23.709579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696129, 37.822975, 23.628710>,  <32.876118, 37.974133, 23.580187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696129, 37.822975, 23.628710>,  <32.396145, 37.571045, 23.709579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696129, 37.822975, 23.628710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294799, -0.044628, 0.954516,
		0.592159, -0.775451, -0.219142,
		0.749960, 0.629828, -0.202175,
		32.921116, 38.011925, 23.568058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801685, 37.471466, 24.227186>,  <32.396145, 37.571045, 23.709579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801685, 37.471466, 24.227186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987335, 37.793552, 24.079561>,  <33.098724, 37.986805, 23.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987335, 37.793552, 24.079561>,  <32.801685, 37.471466, 24.227186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987335, 37.793552, 24.079561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392930, 0.186256, 0.900508,
		0.793848, -0.562964, -0.229949,
		0.464124, 0.805220, -0.369065,
		33.126572, 38.035118, 23.968842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500492, 37.522526, 24.438803>,  <32.801685, 37.471466, 24.227186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500492, 37.522526, 24.438803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438316, 37.907738, 24.350790>,  <33.401012, 38.138866, 24.297981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438316, 37.907738, 24.350790>,  <33.500492, 37.522526, 24.438803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438316, 37.907738, 24.350790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270832, 0.255750, 0.928031,
		0.949995, 0.084659, -0.300572,
		-0.155437, 0.963029, -0.220033,
		33.391685, 38.196648, 24.284781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049934, 37.923759, 24.676641>,  <33.500492, 37.522526, 24.438803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049934, 37.923759, 24.676641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745953, 38.179356, 24.629040>,  <33.563564, 38.332714, 24.600479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745953, 38.179356, 24.629040>,  <34.049934, 37.923759, 24.676641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745953, 38.179356, 24.629040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189545, 0.393000, 0.899791,
		0.621726, 0.661243, -0.419779,
		-0.759954, 0.638990, -0.119003,
		33.517967, 38.371052, 24.593340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264782, 38.527836, 24.906153>,  <34.049934, 37.923759, 24.676641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264782, 38.527836, 24.906153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878223, 38.630665, 24.905571>,  <33.646290, 38.692360, 24.905222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878223, 38.630665, 24.905571>,  <34.264782, 38.527836, 24.906153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878223, 38.630665, 24.905571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150243, 0.569384, 0.808226,
		0.208597, 0.780845, -0.588871,
		-0.966392, 0.257068, -0.001455,
		33.588306, 38.707787, 24.905134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201118, 39.278713, 25.090145>,  <34.264782, 38.527836, 24.906153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201118, 39.278713, 25.090145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836308, 39.124592, 25.146362>,  <33.617420, 39.032120, 25.180092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836308, 39.124592, 25.146362>,  <34.201118, 39.278713, 25.090145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836308, 39.124592, 25.146362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023774, 0.391764, 0.919759,
		-0.409446, 0.835501, -0.366458,
		-0.912024, -0.385304, 0.140543,
		33.562698, 39.008999, 25.188526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741837, 39.793819, 25.213047>,  <34.201118, 39.278713, 25.090145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741837, 39.793819, 25.213047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590569, 39.471573, 25.395460>,  <33.499805, 39.278225, 25.504908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590569, 39.471573, 25.395460>,  <33.741837, 39.793819, 25.213047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590569, 39.471573, 25.395460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001253, 0.493061, 0.869994,
		-0.925734, 0.328437, -0.187472,
		-0.378173, -0.805618, 0.456032,
		33.477116, 39.229889, 25.532270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321014, 40.028278, 25.624178>,  <33.741837, 39.793819, 25.213047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321014, 40.028278, 25.624178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342602, 39.663048, 25.785858>,  <33.355553, 39.443909, 25.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342602, 39.663048, 25.785858>,  <33.321014, 40.028278, 25.624178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342602, 39.663048, 25.785858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100058, 0.397808, 0.911996,
		-0.993517, -0.089663, -0.069892,
		0.053969, -0.913077, 0.404200,
		33.358791, 39.389126, 25.907118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849510, 39.964073, 26.125940>,  <33.321014, 40.028278, 25.624178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849510, 39.964073, 26.125940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075207, 39.645672, 26.213583>,  <33.210625, 39.454632, 26.266169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075207, 39.645672, 26.213583>,  <32.849510, 39.964073, 26.125940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075207, 39.645672, 26.213583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028522, 0.284023, 0.958393,
		-0.825118, -0.534514, 0.182961,
		0.564240, -0.796005, 0.219107,
		33.244480, 39.406872, 26.279316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613194, 39.657814, 26.787685>,  <32.849510, 39.964073, 26.125940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613194, 39.657814, 26.787685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993023, 39.535873, 26.758385>,  <33.220921, 39.462708, 26.740805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993023, 39.535873, 26.758385>,  <32.613194, 39.657814, 26.787685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993023, 39.535873, 26.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126214, 0.157804, 0.979371,
		-0.287008, -0.939234, 0.188324,
		0.949577, -0.304856, -0.073253,
		33.277897, 39.444416, 26.736408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768257, 39.052956, 27.297668>,  <32.613194, 39.657814, 26.787685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768257, 39.052956, 27.297668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112476, 39.249367, 27.243502>,  <33.319008, 39.367214, 27.211002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112476, 39.249367, 27.243502>,  <32.768257, 39.052956, 27.297668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112476, 39.249367, 27.243502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033487, 0.319822, 0.946886,
		0.508261, -0.810310, 0.291666,
		0.860552, 0.491032, -0.135417,
		33.370644, 39.396675, 27.202877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052433, 38.978973, 27.809078>,  <32.768257, 39.052956, 27.297668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052433, 38.978973, 27.809078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281582, 39.285610, 27.693039>,  <33.419071, 39.469593, 27.623415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281582, 39.285610, 27.693039>,  <33.052433, 38.978973, 27.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281582, 39.285610, 27.693039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021595, 0.339693, 0.940289,
		0.819362, -0.544927, 0.178046,
		0.572870, 0.766592, -0.290099,
		33.453442, 39.515587, 27.606009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707653, 38.987514, 28.241545>,  <33.052433, 38.978973, 27.809078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707653, 38.987514, 28.241545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664783, 39.361679, 28.106770>,  <33.639061, 39.586178, 28.025906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664783, 39.361679, 28.106770>,  <33.707653, 38.987514, 28.241545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664783, 39.361679, 28.106770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152407, 0.350339, 0.924140,
		0.982490, 0.047690, -0.180109,
		-0.107171, 0.935408, -0.336936,
		33.632633, 39.642303, 28.005690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369999, 39.238274, 28.464725>,  <33.707653, 38.987514, 28.241545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369999, 39.238274, 28.464725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137405, 39.549938, 28.371096>,  <33.997849, 39.736935, 28.314917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137405, 39.549938, 28.371096>,  <34.369999, 39.238274, 28.464725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137405, 39.549938, 28.371096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282881, 0.463401, 0.839784,
		0.762797, 0.422102, -0.489868,
		-0.581480, 0.779160, -0.234077,
		33.962963, 39.783688, 28.300873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771118, 39.834442, 28.645294>,  <34.369999, 39.238274, 28.464725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771118, 39.834442, 28.645294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388180, 39.948586, 28.627113>,  <34.158417, 40.017071, 28.616205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388180, 39.948586, 28.627113>,  <34.771118, 39.834442, 28.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388180, 39.948586, 28.627113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127292, 0.557689, 0.820231,
		0.259408, 0.779457, -0.570224,
		-0.957342, 0.285359, -0.045450,
		34.100979, 40.034195, 28.613478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812477, 40.628536, 28.781149>,  <34.771118, 39.834442, 28.645294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812477, 40.628536, 28.781149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437077, 40.501534, 28.835426>,  <34.211838, 40.425331, 28.867992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437077, 40.501534, 28.835426>,  <34.812477, 40.628536, 28.781149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437077, 40.501534, 28.835426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075779, 0.572807, 0.816180,
		-0.336864, 0.755701, -0.561639,
		-0.938499, -0.317502, 0.135692,
		34.155525, 40.406284, 28.876133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441921, 41.174446, 29.038774>,  <34.812477, 40.628536, 28.781149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441921, 41.174446, 29.038774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191479, 40.877018, 29.132660>,  <34.041214, 40.698563, 29.188992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191479, 40.877018, 29.132660>,  <34.441921, 41.174446, 29.038774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191479, 40.877018, 29.132660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029061, 0.323058, 0.945933,
		-0.779194, 0.585435, -0.223878,
		-0.626108, -0.743572, 0.234712,
		34.003647, 40.653946, 29.203074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022629, 41.519585, 29.525772>,  <34.441921, 41.174446, 29.038774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022629, 41.519585, 29.525772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018806, 41.122524, 29.574013>,  <34.016514, 40.884289, 29.602957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018806, 41.122524, 29.574013>,  <34.022629, 41.519585, 29.525772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018806, 41.122524, 29.574013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033939, 0.120858, 0.992090,
		-0.999378, 0.005390, -0.034845,
		-0.009559, -0.992655, 0.120600,
		34.015938, 40.824726, 29.610193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439102, 41.393867, 30.022352>,  <34.022629, 41.519585, 29.525772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439102, 41.393867, 30.022352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666309, 41.065414, 30.044641>,  <33.802631, 40.868343, 30.058016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666309, 41.065414, 30.044641>,  <33.439102, 41.393867, 30.022352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666309, 41.065414, 30.044641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190459, -0.065277, 0.979522,
		-0.800677, -0.566997, -0.193470,
		0.568016, -0.821129, 0.055724,
		33.836716, 40.819077, 30.061359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098927, 40.969479, 30.458712>,  <33.439102, 41.393867, 30.022352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098927, 40.969479, 30.458712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476128, 40.838562, 30.434641>,  <33.702450, 40.760010, 30.420198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476128, 40.838562, 30.434641>,  <33.098927, 40.969479, 30.458712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476128, 40.838562, 30.434641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065083, 0.004043, 0.997872,
		-0.326357, -0.944913, 0.025114,
		0.943004, -0.327296, -0.060178,
		33.759029, 40.740372, 30.416588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126633, 40.523804, 30.927605>,  <33.098927, 40.969479, 30.458712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126633, 40.523804, 30.927605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512497, 40.609909, 30.866823>,  <33.744015, 40.661572, 30.830355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512497, 40.609909, 30.866823>,  <33.126633, 40.523804, 30.927605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512497, 40.609909, 30.866823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071498, 0.341200, 0.937268,
		0.253606, -0.915011, 0.313751,
		0.964662, 0.215264, -0.151952,
		33.801895, 40.674488, 30.821238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570370, 40.048477, 31.407732>,  <33.126633, 40.523804, 30.927605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570370, 40.048477, 31.407732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792198, 40.367737, 31.313572>,  <33.925293, 40.559292, 31.257076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792198, 40.367737, 31.313572>,  <33.570370, 40.048477, 31.407732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792198, 40.367737, 31.313572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129002, 0.197008, 0.971878,
		0.822078, -0.569341, 0.006292,
		0.554569, 0.798147, -0.235402,
		33.958569, 40.607182, 31.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019444, 40.033360, 31.781649>,  <33.570370, 40.048477, 31.407732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019444, 40.033360, 31.781649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020790, 40.423306, 31.692547>,  <34.021599, 40.657272, 31.639086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020790, 40.423306, 31.692547>,  <34.019444, 40.033360, 31.781649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020790, 40.423306, 31.692547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035840, 0.222496, 0.974274,
		0.999352, -0.011263, -0.034190,
		0.003366, 0.974869, -0.222756,
		34.021801, 40.715767, 31.625721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575111, 40.296284, 32.292667>,  <34.019444, 40.033360, 31.781649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575111, 40.296284, 32.292667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311905, 40.569313, 32.165478>,  <34.153980, 40.733131, 32.089165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311905, 40.569313, 32.165478>,  <34.575111, 40.296284, 32.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311905, 40.569313, 32.165478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130842, 0.312206, 0.940961,
		0.741548, 0.660773, -0.116128,
		-0.658017, 0.682574, -0.317973,
		34.114498, 40.774086, 32.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284164, 40.301407, 32.395992>,  <34.575111, 40.296284, 32.292667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284164, 40.301407, 32.395992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527821, 39.984890, 32.417160>,  <35.674015, 39.794979, 32.429863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527821, 39.984890, 32.417160>,  <35.284164, 40.301407, 32.395992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527821, 39.984890, 32.417160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015668, -0.078726, -0.996773,
		0.792909, 0.606344, -0.060353,
		0.609139, -0.791296, 0.052923,
		35.710564, 39.747501, 32.433037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838444, 40.403763, 31.938549>,  <35.284164, 40.301407, 32.395992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838444, 40.403763, 31.938549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880810, 40.010490, 31.998056>,  <35.906231, 39.774525, 32.033760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880810, 40.010490, 31.998056>,  <35.838444, 40.403763, 31.938549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880810, 40.010490, 31.998056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056951, -0.143367, -0.988029,
		0.992743, 0.113120, 0.040809,
		0.105915, -0.983183, 0.148769,
		35.912586, 39.715534, 32.042686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548374, 40.103649, 31.672619>,  <35.838444, 40.403763, 31.938549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548374, 40.103649, 31.672619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287586, 39.800373, 31.675987>,  <36.131111, 39.618408, 31.678009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287586, 39.800373, 31.675987>,  <36.548374, 40.103649, 31.672619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287586, 39.800373, 31.675987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126794, -0.119968, -0.984648,
		0.747565, -0.640897, 0.174351,
		-0.651974, -0.758195, 0.008422,
		36.091995, 39.572914, 31.678514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842606, 39.607841, 31.318836>,  <36.548374, 40.103649, 31.672619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842606, 39.607841, 31.318836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462646, 39.482822, 31.319479>,  <36.234669, 39.407810, 31.319864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462646, 39.482822, 31.319479>,  <36.842606, 39.607841, 31.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462646, 39.482822, 31.319479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066330, -0.206602, -0.976174,
		0.305437, -0.927161, 0.216983,
		-0.949899, -0.312552, 0.001605,
		36.177677, 39.389057, 31.319960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913441, 38.978848, 30.972168>,  <36.842606, 39.607841, 31.318836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913441, 38.978848, 30.972168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526917, 39.078915, 30.947947>,  <36.295002, 39.138954, 30.933414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526917, 39.078915, 30.947947>,  <36.913441, 38.978848, 30.972168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526917, 39.078915, 30.947947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025352, -0.326613, -0.944818,
		-0.256138, -0.911450, 0.321951,
		-0.966307, 0.250166, -0.060551,
		36.237026, 39.153965, 30.929781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715405, 38.370846, 30.750122>,  <36.913441, 38.978848, 30.972168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715405, 38.370846, 30.750122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450092, 38.652828, 30.649647>,  <36.290905, 38.822018, 30.589361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450092, 38.652828, 30.649647>,  <36.715405, 38.370846, 30.750122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450092, 38.652828, 30.649647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020137, -0.318715, -0.947637,
		-0.748103, -0.633603, 0.197201,
		-0.663277, 0.704959, -0.251190,
		36.251110, 38.864315, 30.574289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170071, 38.039116, 30.490841>,  <36.715405, 38.370846, 30.750122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170071, 38.039116, 30.490841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116779, 38.400452, 30.327757>,  <36.084805, 38.617252, 30.229906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116779, 38.400452, 30.327757>,  <36.170071, 38.039116, 30.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116779, 38.400452, 30.327757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146643, -0.424817, -0.893323,
		-0.980177, -0.059225, 0.189065,
		-0.133225, 0.903340, -0.407711,
		36.076813, 38.671455, 30.205444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611477, 37.968811, 30.069698>,  <36.170071, 38.039116, 30.490841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611477, 37.968811, 30.069698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809982, 38.286144, 29.928648>,  <35.929085, 38.476543, 29.844019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809982, 38.286144, 29.928648>,  <35.611477, 37.968811, 30.069698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809982, 38.286144, 29.928648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092133, -0.451999, -0.887248,
		-0.863271, 0.407818, -0.297402,
		0.496261, 0.793335, -0.352624,
		35.958862, 38.524143, 29.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365086, 38.039528, 29.351372>,  <35.611477, 37.968811, 30.069698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365086, 38.039528, 29.351372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699360, 38.258762, 29.365421>,  <35.899925, 38.390305, 29.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699360, 38.258762, 29.365421>,  <35.365086, 38.039528, 29.351372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699360, 38.258762, 29.365421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209920, -0.259661, -0.942608,
		-0.507514, 0.795093, -0.332049,
		0.835681, 0.548090, 0.035124,
		35.950066, 38.423191, 29.375959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246696, 38.472931, 28.836414>,  <35.365086, 38.039528, 29.351372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246696, 38.472931, 28.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644104, 38.473057, 28.881884>,  <35.882549, 38.473133, 28.909164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644104, 38.473057, 28.881884>,  <35.246696, 38.472931, 28.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644104, 38.473057, 28.881884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108700, -0.295146, -0.949249,
		0.033255, 0.955452, -0.293267,
		0.993518, 0.000311, 0.113673,
		35.942158, 38.473148, 28.915985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478561, 38.885578, 28.361801>,  <35.246696, 38.472931, 28.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478561, 38.885578, 28.361801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763176, 38.627163, 28.472326>,  <35.933945, 38.472115, 28.538641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763176, 38.627163, 28.472326>,  <35.478561, 38.885578, 28.361801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763176, 38.627163, 28.472326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146717, -0.247975, -0.957592,
		0.687163, 0.721900, -0.081657,
		0.711535, -0.646041, 0.276314,
		35.976635, 38.433350, 28.555220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965912, 38.968159, 27.847025>,  <35.478561, 38.885578, 28.361801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965912, 38.968159, 27.847025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048637, 38.618454, 28.022707>,  <36.098274, 38.408630, 28.128117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048637, 38.618454, 28.022707>,  <35.965912, 38.968159, 27.847025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048637, 38.618454, 28.022707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199814, -0.401706, -0.893704,
		0.957759, 0.272591, 0.091610,
		0.206815, -0.874258, 0.439205,
		36.110683, 38.356178, 28.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678429, 38.685177, 27.542599>,  <35.965912, 38.968159, 27.847025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678429, 38.685177, 27.542599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482185, 38.368713, 27.688675>,  <36.364437, 38.178833, 27.776321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482185, 38.368713, 27.688675>,  <36.678429, 38.685177, 27.542599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482185, 38.368713, 27.688675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125974, -0.479091, -0.868678,
		0.862225, -0.380178, 0.334713,
		-0.490610, -0.791161, 0.365192,
		36.335003, 38.131367, 27.798233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118793, 38.159111, 27.336868>,  <36.678429, 38.685177, 27.542599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118793, 38.159111, 27.336868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757973, 38.011261, 27.426023>,  <36.541481, 37.922550, 27.479517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757973, 38.011261, 27.426023>,  <37.118793, 38.159111, 27.336868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757973, 38.011261, 27.426023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044013, -0.434927, -0.899390,
		0.429379, -0.821106, 0.376058,
		-0.902051, -0.369627, 0.222888,
		36.487358, 37.900372, 27.492889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087959, 37.501652, 27.064734>,  <37.118793, 38.159111, 27.336868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087959, 37.501652, 27.064734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701962, 37.603909, 27.088181>,  <36.470364, 37.665264, 27.102249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701962, 37.603909, 27.088181>,  <37.087959, 37.501652, 27.064734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701962, 37.603909, 27.088181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169564, -0.437586, -0.883044,
		-0.200093, -0.862071, 0.465615,
		-0.964992, 0.255642, 0.058619,
		36.412464, 37.680603, 27.105766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747936, 36.903637, 26.883640>,  <37.087959, 37.501652, 27.064734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747936, 36.903637, 26.883640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490154, 37.200020, 26.808104>,  <36.335484, 37.377850, 26.762781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490154, 37.200020, 26.808104>,  <36.747936, 36.903637, 26.883640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490154, 37.200020, 26.808104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326524, -0.489995, -0.808261,
		-0.691415, -0.459230, 0.557721,
		-0.644459, 0.740954, -0.188840,
		36.296818, 37.422306, 26.751451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137978, 36.542904, 26.663126>,  <36.747936, 36.903637, 26.883640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137978, 36.542904, 26.663126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080116, 36.925610, 26.562193>,  <36.045399, 37.155235, 26.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080116, 36.925610, 26.562193>,  <36.137978, 36.542904, 26.663126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080116, 36.925610, 26.562193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397802, -0.289732, -0.870523,
		-0.905996, -0.025546, 0.422514,
		-0.144654, 0.956767, -0.252333,
		36.036720, 37.212639, 26.486492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399719, 36.698860, 26.508596>,  <36.137978, 36.542904, 26.663126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399719, 36.698860, 26.508596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622009, 36.970802, 26.317196>,  <35.755383, 37.133968, 26.202356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622009, 36.970802, 26.317196>,  <35.399719, 36.698860, 26.508596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622009, 36.970802, 26.317196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386629, -0.298191, -0.872697,
		-0.735995, 0.669981, 0.097140,
		0.555724, 0.679858, -0.478501,
		35.788727, 37.174759, 26.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970406, 36.889717, 25.966429>,  <35.399719, 36.698860, 26.508596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970406, 36.889717, 25.966429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302307, 37.076702, 25.844454>,  <35.501450, 37.188892, 25.771269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302307, 37.076702, 25.844454>,  <34.970406, 36.889717, 25.966429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302307, 37.076702, 25.844454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358967, 0.028607, -0.932912,
		-0.427379, 0.883549, 0.191541,
		0.829753, 0.467464, -0.304939,
		35.551231, 37.216942, 25.752972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721886, 37.372322, 25.535149>,  <34.970406, 36.889717, 25.966429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721886, 37.372322, 25.535149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105812, 37.352737, 25.424618>,  <35.336166, 37.340988, 25.358299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105812, 37.352737, 25.424618>,  <34.721886, 37.372322, 25.535149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105812, 37.352737, 25.424618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277247, -0.012990, -0.960711,
		0.043449, 0.998716, -0.026042,
		0.959816, -0.048962, -0.276327,
		35.393757, 37.338047, 25.341721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761925, 37.780552, 24.979004>,  <34.721886, 37.372322, 25.535149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761925, 37.780552, 24.979004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090340, 37.560772, 24.917036>,  <35.287388, 37.428905, 24.879856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090340, 37.560772, 24.917036>,  <34.761925, 37.780552, 24.979004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090340, 37.560772, 24.917036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213456, -0.043788, -0.975971,
		0.529460, 0.834381, -0.153234,
		0.821041, -0.549446, -0.154920,
		35.336651, 37.395939, 24.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879986, 37.899757, 24.261124>,  <34.761925, 37.780552, 24.979004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879986, 37.899757, 24.261124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066273, 37.574551, 24.400900>,  <35.178047, 37.379425, 24.484766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066273, 37.574551, 24.400900>,  <34.879986, 37.899757, 24.261124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066273, 37.574551, 24.400900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112648, -0.446130, -0.887850,
		0.877733, 0.374125, -0.299356,
		0.465719, -0.813018, 0.349439,
		35.205990, 37.330647, 24.505732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404648, 37.808521, 23.764296>,  <34.879986, 37.899757, 24.261124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404648, 37.808521, 23.764296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321629, 37.465214, 23.952038>,  <35.271816, 37.259228, 24.064684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321629, 37.465214, 23.952038>,  <35.404648, 37.808521, 23.764296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321629, 37.465214, 23.952038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146242, -0.447190, -0.882403,
		0.967231, -0.251782, -0.032701,
		-0.207550, -0.858270, 0.469357,
		35.259365, 37.207733, 24.092844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852543, 37.309357, 23.444962>,  <35.404648, 37.808521, 23.764296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852543, 37.309357, 23.444962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569901, 37.087353, 23.620537>,  <35.400314, 36.954151, 23.725882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569901, 37.087353, 23.620537>,  <35.852543, 37.309357, 23.444962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569901, 37.087353, 23.620537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138408, -0.499925, -0.854937,
		0.693937, -0.664858, 0.276433,
		-0.706608, -0.555012, 0.438938,
		35.357918, 36.920849, 23.752218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951866, 36.674587, 23.164808>,  <35.852543, 37.309357, 23.444962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951866, 36.674587, 23.164808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586956, 36.654327, 23.327379>,  <35.368008, 36.642170, 23.424921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586956, 36.654327, 23.327379>,  <35.951866, 36.674587, 23.164808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586956, 36.654327, 23.327379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280110, -0.646805, -0.709353,
		0.298809, -0.760972, 0.575878,
		-0.912278, -0.050653, 0.406427,
		35.313274, 36.639133, 23.449306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780415, 36.022507, 23.181242>,  <35.951866, 36.674587, 23.164808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780415, 36.022507, 23.181242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414570, 36.183983, 23.190407>,  <35.195065, 36.280869, 23.195906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414570, 36.183983, 23.190407>,  <35.780415, 36.022507, 23.181242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414570, 36.183983, 23.190407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298595, -0.636129, -0.711464,
		-0.272632, -0.657555, 0.702349,
		-0.914611, 0.403686, 0.022914,
		35.140186, 36.305088, 23.197281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257404, 35.428093, 23.225628>,  <35.780415, 36.022507, 23.181242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257404, 35.428093, 23.225628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036419, 35.726871, 23.077654>,  <34.903828, 35.906139, 22.988871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036419, 35.726871, 23.077654>,  <35.257404, 35.428093, 23.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036419, 35.726871, 23.077654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456718, -0.642528, -0.615278,
		-0.697273, -0.170965, 0.696119,
		-0.552467, 0.746946, -0.369935,
		34.870678, 35.950954, 22.966673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612064, 35.152588, 23.289274>,  <35.257404, 35.428093, 23.225628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612064, 35.152588, 23.289274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567333, 35.451366, 23.027107>,  <34.540497, 35.630634, 22.869808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567333, 35.451366, 23.027107>,  <34.612064, 35.152588, 23.289274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567333, 35.451366, 23.027107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616431, -0.569459, -0.543811,
		-0.779428, 0.343206, 0.524119,
		-0.111825, 0.746945, -0.655415,
		34.533787, 35.675449, 22.830482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872288, 35.286068, 23.236193>,  <34.612064, 35.152588, 23.289274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872288, 35.286068, 23.236193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026524, 35.431534, 22.896999>,  <34.119064, 35.518814, 22.693483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026524, 35.431534, 22.896999>,  <33.872288, 35.286068, 23.236193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026524, 35.431534, 22.896999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723521, -0.451154, -0.522473,
		-0.572573, 0.814992, 0.089157,
		0.385588, 0.363661, -0.847982,
		34.142200, 35.540630, 22.642605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267437, 35.398968, 22.746321>,  <33.872288, 35.286068, 23.236193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267437, 35.398968, 22.746321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579754, 35.377510, 22.497330>,  <33.767143, 35.364635, 22.347935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579754, 35.377510, 22.497330>,  <33.267437, 35.398968, 22.746321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579754, 35.377510, 22.497330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551509, -0.527341, -0.646335,
		-0.293588, 0.847958, -0.441330,
		0.780797, -0.053641, -0.622478,
		33.813992, 35.361416, 22.310587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050571, 35.482040, 22.104757>,  <33.267437, 35.398968, 22.746321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050571, 35.482040, 22.104757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400978, 35.301098, 22.037859>,  <33.611221, 35.192532, 21.997721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400978, 35.301098, 22.037859>,  <33.050571, 35.482040, 22.104757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400978, 35.301098, 22.037859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433752, -0.587354, -0.683282,
		0.210857, 0.671107, -0.710743,
		0.876013, -0.452361, -0.167246,
		33.663780, 35.165390, 21.987684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068214, 35.419270, 21.293604>,  <33.050571, 35.482040, 22.104757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068214, 35.419270, 21.293604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339592, 35.170925, 21.450701>,  <33.502419, 35.021919, 21.544958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339592, 35.170925, 21.450701>,  <33.068214, 35.419270, 21.293604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339592, 35.170925, 21.450701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211636, -0.677104, -0.704798,
		0.703508, 0.395049, -0.590774,
		0.678445, -0.620860, 0.392741,
		33.543125, 34.984669, 21.568523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480637, 35.205517, 20.707993>,  <33.068214, 35.419270, 21.293604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480637, 35.205517, 20.707993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522827, 34.931957, 20.996758>,  <33.548141, 34.767822, 21.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522827, 34.931957, 20.996758>,  <33.480637, 35.205517, 20.707993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522827, 34.931957, 20.996758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078700, -0.729427, -0.679517,
		0.991303, 0.014857, -0.130759,
		0.105475, -0.683897, 0.721914,
		33.554470, 34.726788, 21.213331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005020, 34.657772, 20.461422>,  <33.480637, 35.205517, 20.707993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005020, 34.657772, 20.461422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783600, 34.471539, 20.737629>,  <33.650749, 34.359798, 20.903353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783600, 34.471539, 20.737629>,  <34.005020, 34.657772, 20.461422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783600, 34.471539, 20.737629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124138, -0.773748, -0.621212,
		0.823512, -0.429591, 0.370512,
		-0.553550, -0.465581, 0.690519,
		33.617535, 34.331863, 20.944784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235470, 33.984779, 20.463490>,  <34.005020, 34.657772, 20.461422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235470, 33.984779, 20.463490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873909, 33.976383, 20.634378>,  <33.656971, 33.971344, 20.736912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873909, 33.976383, 20.634378>,  <34.235470, 33.984779, 20.463490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873909, 33.976383, 20.634378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178396, -0.889275, -0.421146,
		0.388761, -0.456890, 0.800073,
		-0.903903, -0.020995, 0.427223,
		33.602737, 33.970085, 20.762545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261791, 33.229511, 20.515720>,  <34.235470, 33.984779, 20.463490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261791, 33.229511, 20.515720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903580, 33.386665, 20.599306>,  <33.688652, 33.480957, 20.649458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903580, 33.386665, 20.599306>,  <34.261791, 33.229511, 20.515720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903580, 33.386665, 20.599306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443823, -0.754399, -0.483636,
		-0.032371, -0.525854, 0.849959,
		-0.895530, 0.392887, 0.208966,
		33.634922, 33.504532, 20.661995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907120, 32.797142, 20.845003>,  <34.261791, 33.229511, 20.515720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907120, 32.797142, 20.845003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656506, 33.042057, 20.652105>,  <33.506138, 33.189007, 20.536367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656506, 33.042057, 20.652105>,  <33.907120, 32.797142, 20.845003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656506, 33.042057, 20.652105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346320, -0.773010, -0.531524,
		-0.698225, -0.166006, 0.696364,
		-0.626533, 0.612289, -0.482244,
		33.468544, 33.225742, 20.507433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341221, 32.408241, 20.808239>,  <33.907120, 32.797142, 20.845003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341221, 32.408241, 20.808239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305950, 32.683598, 20.520254>,  <33.284790, 32.848812, 20.347464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305950, 32.683598, 20.520254>,  <33.341221, 32.408241, 20.808239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305950, 32.683598, 20.520254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360967, -0.695735, -0.621012,
		-0.928401, 0.205125, 0.309831,
		-0.088175, 0.688387, -0.719964,
		33.279499, 32.890114, 20.304264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859764, 31.913195, 20.412266>,  <33.341221, 32.408241, 20.808239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859764, 31.913195, 20.412266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845592, 31.522003, 20.494534>,  <32.837090, 31.287289, 20.543894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845592, 31.522003, 20.494534>,  <32.859764, 31.913195, 20.412266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845592, 31.522003, 20.494534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271396, 0.188649, 0.943799,
		-0.961816, 0.089254, 0.258736,
		-0.035427, -0.977980, 0.205669,
		32.834965, 31.228609, 20.556234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593647, 31.876169, 21.030779>,  <32.859764, 31.913195, 20.412266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593647, 31.876169, 21.030779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797050, 31.535675, 20.978916>,  <32.919094, 31.331379, 20.947798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797050, 31.535675, 20.978916>,  <32.593647, 31.876169, 21.030779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797050, 31.535675, 20.978916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391407, 0.094393, 0.915364,
		-0.766953, -0.516223, 0.381180,
		0.508512, -0.851237, -0.129658,
		32.949604, 31.280304, 20.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419624, 31.475782, 21.588127>,  <32.593647, 31.876169, 21.030779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419624, 31.475782, 21.588127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774830, 31.341293, 21.462656>,  <32.987953, 31.260601, 21.387373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774830, 31.341293, 21.462656>,  <32.419624, 31.475782, 21.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774830, 31.341293, 21.462656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356971, 0.074070, 0.931174,
		-0.289847, -0.938866, 0.185796,
		0.888009, -0.336222, -0.313678,
		33.041233, 31.240427, 21.368553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693634, 31.026329, 22.085686>,  <32.419624, 31.475782, 21.588127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693634, 31.026329, 22.085686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024113, 31.144722, 21.893936>,  <33.222401, 31.215757, 21.778887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024113, 31.144722, 21.893936>,  <32.693634, 31.026329, 22.085686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024113, 31.144722, 21.893936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443195, 0.183861, 0.877367,
		0.347826, -0.937330, 0.020726,
		0.826193, 0.295986, -0.479372,
		33.271973, 31.233517, 21.750124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187450, 30.833122, 22.564682>,  <32.693634, 31.026329, 22.085686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187450, 30.833122, 22.564682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391289, 31.078762, 22.323620>,  <33.513592, 31.226145, 22.178982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391289, 31.078762, 22.323620>,  <33.187450, 30.833122, 22.564682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391289, 31.078762, 22.323620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587302, 0.263613, 0.765235,
		0.628797, -0.743903, -0.226324,
		0.509599, 0.614098, -0.602655,
		33.544170, 31.262991, 22.142824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898167, 30.717541, 22.680319>,  <33.187450, 30.833122, 22.564682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898167, 30.717541, 22.680319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861496, 31.086582, 22.530441>,  <33.839493, 31.308008, 22.440514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861496, 31.086582, 22.530441>,  <33.898167, 30.717541, 22.680319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861496, 31.086582, 22.530441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571550, 0.356877, 0.738897,
		0.815430, -0.146420, -0.560031,
		-0.091673, 0.922605, -0.374695,
		33.833996, 31.363363, 22.418034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577122, 30.980738, 22.791531>,  <33.898167, 30.717541, 22.680319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577122, 30.980738, 22.791531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349194, 31.300304, 22.714544>,  <34.212437, 31.492044, 22.668352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349194, 31.300304, 22.714544>,  <34.577122, 30.980738, 22.791531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349194, 31.300304, 22.714544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600734, 0.564777, 0.565814,
		0.560737, 0.206790, -0.801756,
		-0.569818, 0.798915, -0.192465,
		34.178249, 31.539978, 22.656805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097416, 31.463310, 22.876896>,  <34.577122, 30.980738, 22.791531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097416, 31.463310, 22.876896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750786, 31.661331, 22.902082>,  <34.542809, 31.780144, 22.917194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750786, 31.661331, 22.902082>,  <35.097416, 31.463310, 22.876896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750786, 31.661331, 22.902082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396657, 0.606713, 0.688885,
		0.302832, 0.621949, -0.722130,
		-0.866577, 0.495054, 0.062969,
		34.490814, 31.809847, 22.920973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152683, 32.252617, 22.775721>,  <35.097416, 31.463310, 22.876896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152683, 32.252617, 22.775721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813835, 32.212116, 22.984386>,  <34.610527, 32.187817, 23.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813835, 32.212116, 22.984386>,  <35.152683, 32.252617, 22.775721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813835, 32.212116, 22.984386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326913, 0.674633, 0.661815,
		-0.418942, 0.731176, -0.538395,
		-0.847122, -0.101253, 0.521663,
		34.559700, 32.181740, 23.140884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043549, 32.983349, 23.125719>,  <35.152683, 32.252617, 22.775721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043549, 32.983349, 23.125719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842773, 32.704903, 23.331045>,  <34.722309, 32.537834, 23.454241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842773, 32.704903, 23.331045>,  <35.043549, 32.983349, 23.125719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842773, 32.704903, 23.331045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240523, 0.457737, 0.855935,
		-0.830790, 0.553087, -0.062323,
		-0.501934, -0.696112, 0.513313,
		34.692192, 32.496071, 23.485039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526402, 33.351425, 23.520552>,  <35.043549, 32.983349, 23.125719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526402, 33.351425, 23.520552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580265, 33.005775, 23.714520>,  <34.612583, 32.798386, 23.830900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580265, 33.005775, 23.714520>,  <34.526402, 33.351425, 23.520552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580265, 33.005775, 23.714520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048349, 0.494526, 0.867817,
		-0.989711, -0.093417, 0.108374,
		0.134663, -0.864128, 0.484921,
		34.620663, 32.746536, 23.859995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015919, 33.216560, 24.027596>,  <34.526402, 33.351425, 23.520552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015919, 33.216560, 24.027596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320393, 32.989906, 24.153788>,  <34.503078, 32.853916, 24.229504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320393, 32.989906, 24.153788>,  <34.015919, 33.216560, 24.027596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320393, 32.989906, 24.153788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074998, 0.406277, 0.910667,
		-0.644186, -0.716845, 0.266755,
		0.761183, -0.566632, 0.315480,
		34.548748, 32.819916, 24.248432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789108, 32.892876, 24.733664>,  <34.015919, 33.216560, 24.027596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789108, 32.892876, 24.733664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186039, 32.857754, 24.698837>,  <34.424198, 32.836681, 24.677942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186039, 32.857754, 24.698837>,  <33.789108, 32.892876, 24.733664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186039, 32.857754, 24.698837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105873, 0.239532, 0.965099,
		-0.063890, -0.966909, 0.246990,
		0.992325, -0.087810, -0.087066,
		34.483738, 32.831409, 24.672718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000401, 32.584679, 25.360699>,  <33.789108, 32.892876, 24.733664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000401, 32.584679, 25.360699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332378, 32.759983, 25.222649>,  <34.531567, 32.865166, 25.139818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332378, 32.759983, 25.222649>,  <34.000401, 32.584679, 25.360699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332378, 32.759983, 25.222649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107950, 0.480810, 0.870154,
		0.547300, -0.759437, 0.351735,
		0.829945, 0.438266, -0.345128,
		34.581364, 32.891460, 25.119110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390892, 32.564667, 25.928379>,  <34.000401, 32.584679, 25.360699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390892, 32.564667, 25.928379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557144, 32.841862, 25.692743>,  <34.656895, 33.008179, 25.551361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557144, 32.841862, 25.692743>,  <34.390892, 32.564667, 25.928379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557144, 32.841862, 25.692743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289701, 0.513087, 0.807970,
		0.862165, -0.506474, 0.012495,
		0.415627, 0.692983, -0.589091,
		34.681831, 33.049755, 25.516016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110394, 32.765892, 26.274893>,  <34.390892, 32.564667, 25.928379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110394, 32.765892, 26.274893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005016, 33.055801, 26.020239>,  <34.941788, 33.229748, 25.867447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005016, 33.055801, 26.020239>,  <35.110394, 32.765892, 26.274893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005016, 33.055801, 26.020239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510498, 0.664710, 0.545484,
		0.818528, -0.181295, -0.545109,
		-0.263445, 0.724771, -0.636634,
		34.925983, 33.273232, 25.829248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654156, 33.167133, 26.261845>,  <35.110394, 32.765892, 26.274893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654156, 33.167133, 26.261845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382259, 33.421715, 26.116032>,  <35.219124, 33.574463, 26.028543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382259, 33.421715, 26.116032>,  <35.654156, 33.167133, 26.261845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382259, 33.421715, 26.116032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349358, 0.717955, 0.602072,
		0.644907, 0.281899, -0.710371,
		-0.679738, 0.636454, -0.364531,
		35.178337, 33.612652, 26.006672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993614, 33.838181, 26.062002>,  <35.654156, 33.167133, 26.261845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993614, 33.838181, 26.062002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608315, 33.913689, 26.138443>,  <35.377136, 33.958992, 26.184307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608315, 33.913689, 26.138443>,  <35.993614, 33.838181, 26.062002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608315, 33.913689, 26.138443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261093, 0.825134, 0.500984,
		-0.063113, 0.532467, -0.844095,
		-0.963248, 0.188768, 0.191100,
		35.319340, 33.970318, 26.195772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960827, 34.512974, 25.877922>,  <35.993614, 33.838181, 26.062002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960827, 34.512974, 25.877922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664196, 34.416630, 26.128376>,  <35.486217, 34.358822, 26.278648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664196, 34.416630, 26.128376>,  <35.960827, 34.512974, 25.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664196, 34.416630, 26.128376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233956, 0.781879, 0.577867,
		-0.628750, 0.575022, -0.523473,
		-0.741578, -0.240864, 0.626136,
		35.441723, 34.344372, 26.316217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616932, 35.127728, 25.945803>,  <35.960827, 34.512974, 25.877922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616932, 35.127728, 25.945803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566036, 34.892120, 26.265018>,  <35.535500, 34.750755, 26.456549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566036, 34.892120, 26.265018>,  <35.616932, 35.127728, 25.945803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566036, 34.892120, 26.265018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254539, 0.758245, 0.600228,
		-0.958656, 0.279503, 0.053451,
		-0.127236, -0.589018, 0.798041,
		35.527866, 34.715416, 26.504431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575649, 35.566139, 26.361712>,  <35.616932, 35.127728, 25.945803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575649, 35.566139, 26.361712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584053, 35.286762, 26.647854>,  <35.589096, 35.119137, 26.819540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584053, 35.286762, 26.647854>,  <35.575649, 35.566139, 26.361712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584053, 35.286762, 26.647854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384290, 0.666191, 0.639149,
		-0.922974, 0.261474, 0.282403,
		0.021013, -0.698442, 0.715358,
		35.590359, 35.077229, 26.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244843, 35.973549, 26.990601>,  <35.575649, 35.566139, 26.361712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244843, 35.973549, 26.990601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457558, 35.660660, 27.120417>,  <35.585186, 35.472927, 27.198307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457558, 35.660660, 27.120417>,  <35.244843, 35.973549, 26.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457558, 35.660660, 27.120417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447611, 0.584933, 0.676386,
		-0.718922, -0.214424, 0.661191,
		0.531786, -0.782225, 0.324542,
		35.617092, 35.425991, 27.217779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115860, 36.009998, 27.648645>,  <35.244843, 35.973549, 26.990601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115860, 36.009998, 27.648645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449627, 35.790016, 27.634266>,  <35.649887, 35.658028, 27.625639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449627, 35.790016, 27.634266>,  <35.115860, 36.009998, 27.648645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449627, 35.790016, 27.634266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272409, 0.354850, 0.894357,
		-0.479103, -0.756060, 0.445907,
		0.834418, -0.549958, -0.035948,
		35.699951, 35.625031, 27.623482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173344, 35.625771, 28.305729>,  <35.115860, 36.009998, 27.648645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173344, 35.625771, 28.305729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529724, 35.667820, 28.129021>,  <35.743553, 35.693050, 28.022997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529724, 35.667820, 28.129021>,  <35.173344, 35.625771, 28.305729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529724, 35.667820, 28.129021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353802, 0.449151, 0.820419,
		0.284665, -0.887250, 0.362979,
		0.890949, 0.105122, -0.441768,
		35.797009, 35.699356, 27.996490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676559, 35.368877, 28.799641>,  <35.173344, 35.625771, 28.305729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676559, 35.368877, 28.799641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873829, 35.585300, 28.527161>,  <35.992191, 35.715153, 28.363672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873829, 35.585300, 28.527161>,  <35.676559, 35.368877, 28.799641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873829, 35.585300, 28.527161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536797, 0.426925, 0.727726,
		0.684563, -0.724563, -0.079890,
		0.493176, 0.541059, -0.681200,
		36.021782, 35.747620, 28.322802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381359, 35.284286, 28.968864>,  <35.676559, 35.368877, 28.799641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381359, 35.284286, 28.968864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 35.620850, 28.753107>,  <36.360172, 35.822788, 28.623653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368118, 35.620850, 28.753107>,  <36.381359, 35.284286, 28.968864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368118, 35.620850, 28.753107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572854, 0.458215, 0.679615,
		0.818988, -0.286493, -0.497172,
		-0.033106, 0.841404, -0.539391,
		36.358185, 35.873272, 28.591290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106632, 35.498447, 28.815586>,  <36.381359, 35.284286, 28.968864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106632, 35.498447, 28.815586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836040, 35.789532, 28.860874>,  <36.673687, 35.964184, 28.888046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836040, 35.789532, 28.860874>,  <37.106632, 35.498447, 28.815586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836040, 35.789532, 28.860874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481113, 0.320273, 0.816061,
		0.557594, 0.606517, -0.566768,
		-0.676475, 0.727710, 0.113221,
		36.633099, 36.007843, 28.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553547, 36.100883, 28.899803>,  <37.106632, 35.498447, 28.815586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553547, 36.100883, 28.899803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199596, 36.162334, 29.075710>,  <36.987225, 36.199203, 29.181255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199596, 36.162334, 29.075710>,  <37.553547, 36.100883, 28.899803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199596, 36.162334, 29.075710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462021, 0.168967, 0.870624,
		0.059443, 0.973576, -0.220492,
		-0.884875, 0.153624, 0.439769,
		36.934135, 36.208420, 29.207642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680458, 36.641300, 29.288754>,  <37.553547, 36.100883, 28.899803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680458, 36.641300, 29.288754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338219, 36.505733, 29.445261>,  <37.132877, 36.424393, 29.539165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338219, 36.505733, 29.445261>,  <37.680458, 36.641300, 29.288754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338219, 36.505733, 29.445261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312033, 0.265431, 0.912240,
		-0.413031, 0.902596, -0.121347,
		-0.855594, -0.338920, 0.391271,
		37.081539, 36.404057, 29.562643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411228, 37.219997, 29.661064>,  <37.680458, 36.641300, 29.288754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411228, 37.219997, 29.661064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272461, 36.874931, 29.808281>,  <37.189201, 36.667892, 29.896612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272461, 36.874931, 29.808281>,  <37.411228, 37.219997, 29.661064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272461, 36.874931, 29.808281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472546, 0.178199, 0.863102,
		-0.810154, 0.473341, 0.345829,
		-0.346915, -0.862666, 0.368044,
		37.168385, 36.616131, 29.918694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160896, 37.381092, 30.332563>,  <37.411228, 37.219997, 29.661064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160896, 37.381092, 30.332563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178726, 36.981739, 30.346727>,  <37.189426, 36.742126, 30.355227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178726, 36.981739, 30.346727>,  <37.160896, 37.381092, 30.332563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178726, 36.981739, 30.346727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419579, 0.050878, 0.906292,
		-0.906624, -0.025542, 0.421166,
		0.044577, -0.998378, 0.035410,
		37.192101, 36.682224, 30.357351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889198, 37.163940, 30.969271>,  <37.160896, 37.381092, 30.332563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889198, 37.163940, 30.969271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141853, 36.868301, 30.875662>,  <37.293446, 36.690918, 30.819496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141853, 36.868301, 30.875662>,  <36.889198, 37.163940, 30.969271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141853, 36.868301, 30.875662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333155, -0.013796, 0.942771,
		-0.700029, -0.673457, 0.237520,
		0.631639, -0.739098, -0.234023,
		37.331345, 36.646572, 30.805454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961536, 36.772903, 31.591866>,  <36.889198, 37.163940, 30.969271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961536, 36.772903, 31.591866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264561, 36.649776, 31.361616>,  <37.446377, 36.575901, 31.223467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264561, 36.649776, 31.361616>,  <36.961536, 36.772903, 31.591866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264561, 36.649776, 31.361616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602666, -0.008959, 0.797943,
		-0.250779, -0.951403, 0.178725,
		0.757564, -0.307818, -0.575625,
		37.491829, 36.557430, 31.188929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213322, 36.047680, 31.839926>,  <36.961536, 36.772903, 31.591866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213322, 36.047680, 31.839926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496220, 36.256779, 31.649540>,  <37.665958, 36.382236, 31.535309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496220, 36.256779, 31.649540>,  <37.213322, 36.047680, 31.839926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496220, 36.256779, 31.649540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631985, -0.165740, 0.757050,
		0.316860, -0.836221, -0.447587,
		0.707245, 0.522747, -0.475963,
		37.708393, 36.413601, 31.506752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787548, 35.734863, 32.155582>,  <37.213322, 36.047680, 31.839926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787548, 35.734863, 32.155582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937801, 36.060741, 31.978870>,  <38.027954, 36.256268, 31.872843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937801, 36.060741, 31.978870>,  <37.787548, 35.734863, 32.155582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937801, 36.060741, 31.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755281, 0.007146, 0.655362,
		0.537078, -0.579844, -0.612641,
		0.375629, 0.814696, -0.441783,
		38.050491, 36.305149, 31.846334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546474, 35.571323, 32.050671>,  <37.787548, 35.734863, 32.155582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546474, 35.571323, 32.050671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468643, 35.963360, 32.066471>,  <38.421944, 36.198582, 32.075951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468643, 35.963360, 32.066471>,  <38.546474, 35.571323, 32.050671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468643, 35.963360, 32.066471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632848, 0.094671, 0.768467,
		0.749428, 0.174524, -0.638670,
		-0.194579, 0.980091, 0.039498,
		38.410271, 36.257389, 32.078320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171963, 35.846889, 32.287415>,  <38.546474, 35.571323, 32.050671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171963, 35.846889, 32.287415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916687, 36.152996, 32.321091>,  <38.763523, 36.336658, 32.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916687, 36.152996, 32.321091>,  <39.171963, 35.846889, 32.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916687, 36.152996, 32.321091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499794, 0.328644, 0.801374,
		0.585594, 0.553505, -0.592210,
		-0.638190, 0.765262, 0.084186,
		38.725231, 36.382576, 32.346348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578632, 36.510799, 32.304310>,  <39.171963, 35.846889, 32.287415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578632, 36.510799, 32.304310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222137, 36.571655, 32.475216>,  <39.008240, 36.608170, 32.577759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222137, 36.571655, 32.475216>,  <39.578632, 36.510799, 32.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222137, 36.571655, 32.475216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453089, 0.340763, 0.823766,
		-0.020272, 0.927758, -0.372631,
		-0.891235, 0.152136, 0.427265,
		38.954765, 36.617294, 32.603394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638885, 37.128307, 32.495193>,  <39.578632, 36.510799, 32.304310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638885, 37.128307, 32.495193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334206, 36.999599, 32.720146>,  <39.151398, 36.922375, 32.855118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334206, 36.999599, 32.720146>,  <39.638885, 37.128307, 32.495193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334206, 36.999599, 32.720146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459556, 0.343569, 0.819005,
		-0.456744, 0.882286, -0.113829,
		-0.761704, -0.321765, 0.562382,
		39.105694, 36.903069, 32.888863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511360, 37.636742, 33.053234>,  <39.638885, 37.128307, 32.495193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511360, 37.636742, 33.053234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380085, 37.282104, 33.183620>,  <39.301319, 37.069324, 33.261852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380085, 37.282104, 33.183620>,  <39.511360, 37.636742, 33.053234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380085, 37.282104, 33.183620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344086, 0.209173, 0.915342,
		-0.879716, 0.412562, 0.236415,
		-0.328184, -0.886588, 0.325970,
		39.281631, 37.016129, 33.281410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958393, 37.639034, 33.637848>,  <39.511360, 37.636742, 33.053234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958393, 37.639034, 33.637848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168873, 37.298988, 33.645931>,  <39.295162, 37.094959, 33.650784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168873, 37.298988, 33.645931>,  <38.958393, 37.639034, 33.637848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168873, 37.298988, 33.645931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318676, 0.219178, 0.922175,
		-0.788389, -0.478810, 0.386244,
		0.526202, -0.850119, 0.020212,
		39.326733, 37.043953, 33.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849361, 37.270927, 34.324795>,  <38.958393, 37.639034, 33.637848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849361, 37.270927, 34.324795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173618, 37.084980, 34.182381>,  <39.368172, 36.973412, 34.096931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173618, 37.084980, 34.182381>,  <38.849361, 37.270927, 34.324795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173618, 37.084980, 34.182381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408480, 0.013305, 0.912670,
		-0.419534, -0.885280, 0.200675,
		0.810639, -0.464868, -0.356037,
		39.416809, 36.945518, 34.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980511, 36.770706, 34.760525>,  <38.849361, 37.270927, 34.324795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980511, 36.770706, 34.760525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339806, 36.825001, 34.593319>,  <39.555382, 36.857578, 34.492996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339806, 36.825001, 34.593319>,  <38.980511, 36.770706, 34.760525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339806, 36.825001, 34.593319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429218, -0.066355, 0.900760,
		0.094529, -0.988520, -0.117863,
		0.898241, 0.135737, -0.418019,
		39.609280, 36.865723, 34.467915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425373, 36.192215, 35.025265>,  <38.980511, 36.770706, 34.760525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425373, 36.192215, 35.025265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657658, 36.495747, 34.907314>,  <39.797028, 36.677868, 34.836544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657658, 36.495747, 34.907314>,  <39.425373, 36.192215, 35.025265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657658, 36.495747, 34.907314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464153, -0.011037, 0.885686,
		0.668832, -0.651193, -0.358624,
		0.580711, 0.758832, -0.294871,
		39.831871, 36.723396, 34.818851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113499, 36.012939, 35.253704>,  <39.425373, 36.192215, 35.025265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113499, 36.012939, 35.253704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126583, 36.406590, 35.183929>,  <40.134434, 36.642780, 35.142063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126583, 36.406590, 35.183929>,  <40.113499, 36.012939, 35.253704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126583, 36.406590, 35.183929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493217, 0.135906, 0.859224,
		0.869291, -0.114145, -0.480941,
		0.032713, 0.984124, -0.174441,
		40.136398, 36.701828, 35.131596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749748, 36.237186, 35.234810>,  <40.113499, 36.012939, 35.253704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749748, 36.237186, 35.234810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569424, 36.585781, 35.312046>,  <40.461231, 36.794937, 35.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569424, 36.585781, 35.312046>,  <40.749748, 36.237186, 35.234810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569424, 36.585781, 35.312046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673861, 0.190407, 0.713902,
		0.585390, 0.451949, -0.673098,
		-0.450810, 0.871486, 0.193089,
		40.434181, 36.847225, 35.369972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225330, 36.516609, 35.576920>,  <40.749748, 36.237186, 35.234810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225330, 36.516609, 35.576920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916462, 36.752346, 35.671932>,  <40.731140, 36.893787, 35.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916462, 36.752346, 35.671932>,  <41.225330, 36.516609, 35.576920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916462, 36.752346, 35.671932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440270, 0.226689, 0.868778,
		0.458165, 0.775424, -0.434514,
		-0.772171, 0.589347, 0.237535,
		40.684811, 36.929150, 35.743195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496826, 37.154400, 35.702312>,  <41.225330, 36.516609, 35.576920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496826, 37.154400, 35.702312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144474, 37.145130, 35.891418>,  <40.933064, 37.139568, 36.004883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144474, 37.145130, 35.891418>,  <41.496826, 37.154400, 35.702312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144474, 37.145130, 35.891418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466962, 0.120747, 0.875994,
		-0.077387, 0.992413, -0.095542,
		-0.880884, -0.023176, 0.472764,
		40.880207, 37.138176, 36.033249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456848, 37.778255, 36.202965>,  <41.496826, 37.154400, 35.702312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456848, 37.778255, 36.202965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229553, 37.473618, 36.327595>,  <41.093178, 37.290833, 36.402374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229553, 37.473618, 36.327595>,  <41.456848, 37.778255, 36.202965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229553, 37.473618, 36.327595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307153, 0.154968, 0.938958,
		-0.763392, 0.629249, 0.145869,
		-0.568233, -0.761597, 0.311577,
		41.059082, 37.245140, 36.421066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984425, 37.968910, 36.688503>,  <41.456848, 37.778255, 36.202965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984425, 37.968910, 36.688503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042519, 37.580391, 36.763851>,  <41.077374, 37.347279, 36.809059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042519, 37.580391, 36.763851>,  <40.984425, 37.968910, 36.688503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042519, 37.580391, 36.763851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336471, 0.227523, 0.913795,
		-0.930428, -0.069331, 0.359858,
		0.145231, -0.971302, 0.188366,
		41.086086, 37.289001, 36.820362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915211, 38.010769, 37.372326>,  <40.984425, 37.968910, 36.688503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915211, 38.010769, 37.372326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083652, 37.653332, 37.310154>,  <41.184719, 37.438869, 37.272850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083652, 37.653332, 37.310154>,  <40.915211, 38.010769, 37.372326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083652, 37.653332, 37.310154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313976, -0.017149, 0.949276,
		-0.850933, -0.448549, 0.273345,
		0.421109, -0.893594, -0.155426,
		41.209984, 37.385254, 37.263527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518745, 37.473282, 37.715321>,  <40.915211, 38.010769, 37.372326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518745, 37.473282, 37.715321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725380, 37.170250, 37.555717>,  <40.849361, 36.988430, 37.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725380, 37.170250, 37.555717>,  <40.518745, 37.473282, 37.715321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725380, 37.170250, 37.555717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748106, 0.172659, 0.640723,
		-0.416509, -0.629489, 0.655945,
		0.516583, -0.757583, -0.399011,
		40.880356, 36.942974, 37.436012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567715, 36.896530, 38.181046>,  <40.518745, 37.473282, 37.715321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567715, 36.896530, 38.181046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888260, 36.900158, 37.941799>,  <41.080585, 36.902336, 37.798252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888260, 36.900158, 37.941799>,  <40.567715, 36.896530, 38.181046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888260, 36.900158, 37.941799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597900, -0.042964, 0.800419,
		-0.018428, -0.999035, -0.039860,
		0.801359, 0.009082, -0.598115,
		41.128666, 36.902882, 37.762363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904587, 36.382065, 38.375610>,  <40.567715, 36.896530, 38.181046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904587, 36.382065, 38.375610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186897, 36.612446, 38.210609>,  <41.356285, 36.750675, 38.111610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186897, 36.612446, 38.210609>,  <40.904587, 36.382065, 38.375610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186897, 36.612446, 38.210609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547689, -0.074273, 0.833379,
		0.449347, -0.814103, -0.367863,
		0.705779, 0.575951, -0.412501,
		41.398632, 36.785233, 38.086861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443501, 36.078468, 38.580795>,  <40.904587, 36.382065, 38.375610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443501, 36.078468, 38.580795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554836, 36.457268, 38.516636>,  <41.621639, 36.684547, 38.478142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554836, 36.457268, 38.516636>,  <41.443501, 36.078468, 38.580795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554836, 36.457268, 38.516636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548417, -0.019595, 0.835975,
		0.788522, -0.320650, -0.524802,
		0.278339, 0.946995, -0.160399,
		41.638336, 36.741367, 38.468517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223972, 36.086994, 38.537506>,  <41.443501, 36.078468, 38.580795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223972, 36.086994, 38.537506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113068, 36.458351, 38.636467>,  <42.046524, 36.681168, 38.695843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113068, 36.458351, 38.636467>,  <42.223972, 36.086994, 38.537506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113068, 36.458351, 38.636467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691553, 0.014075, 0.722188,
		0.666994, 0.371329, -0.645937,
		-0.277261, 0.928395, 0.247406,
		42.029888, 36.736870, 38.710690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887997, 36.508137, 38.569019>,  <42.223972, 36.086994, 38.537506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887997, 36.508137, 38.569019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620808, 36.713211, 38.784786>,  <42.460495, 36.836254, 38.914246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620808, 36.713211, 38.784786>,  <42.887997, 36.508137, 38.569019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620808, 36.713211, 38.784786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616748, -0.024260, 0.786787,
		0.416457, 0.858236, -0.299991,
		-0.667971, 0.512681, 0.539419,
		42.420418, 36.867016, 38.946613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255699, 37.052635, 38.733704>,  <42.887997, 36.508137, 38.569019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255699, 37.052635, 38.733704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967072, 37.014622, 39.008018>,  <42.793896, 36.991814, 39.172607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967072, 37.014622, 39.008018>,  <43.255699, 37.052635, 38.733704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967072, 37.014622, 39.008018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657537, 0.216035, 0.721785,
		-0.216751, 0.971749, -0.093393,
		-0.721570, -0.095038, 0.685787,
		42.750599, 36.986111, 39.213753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237419, 37.612564, 39.111633>,  <43.255699, 37.052635, 38.733704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237419, 37.612564, 39.111633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049541, 37.356354, 39.354652>,  <42.936813, 37.202625, 39.500462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049541, 37.356354, 39.354652>,  <43.237419, 37.612564, 39.111633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049541, 37.356354, 39.354652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571484, 0.303933, 0.762254,
		-0.672897, 0.705230, 0.223295,
		-0.469697, -0.640528, 0.607543,
		42.908634, 37.164196, 39.536915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184048, 37.927383, 39.889221>,  <43.237419, 37.612564, 39.111633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184048, 37.927383, 39.889221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224251, 37.529526, 39.898899>,  <43.248375, 37.290813, 39.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224251, 37.529526, 39.898899>,  <43.184048, 37.927383, 39.889221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224251, 37.529526, 39.898899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594603, 0.079550, 0.800074,
		-0.797712, -0.066027, 0.599413,
		0.100509, -0.994642, 0.024198,
		43.254402, 37.231133, 39.906158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079414, 37.600342, 40.633568>,  <43.184048, 37.927383, 39.889221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079414, 37.600342, 40.633568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342335, 37.436153, 40.380756>,  <43.500088, 37.337639, 40.229069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342335, 37.436153, 40.380756>,  <43.079414, 37.600342, 40.633568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342335, 37.436153, 40.380756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715347, 0.075946, 0.694630,
		-0.237129, -0.908704, 0.343552,
		0.657304, -0.410475, -0.632030,
		43.539524, 37.313011, 40.191147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383480, 37.096466, 41.037674>,  <43.079414, 37.600342, 40.633568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383480, 37.096466, 41.037674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634583, 37.165020, 40.733952>,  <43.785244, 37.206150, 40.551720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634583, 37.165020, 40.733952>,  <43.383480, 37.096466, 41.037674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634583, 37.165020, 40.733952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777845, -0.101036, 0.620281,
		0.029587, -0.980010, -0.196734,
		0.627759, 0.171380, -0.759307,
		43.822910, 37.216434, 40.506161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874603, 36.635246, 41.129608>,  <43.383480, 37.096466, 41.037674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874603, 36.635246, 41.129608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037060, 36.922497, 40.903568>,  <44.134533, 37.094849, 40.767944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037060, 36.922497, 40.903568>,  <43.874603, 36.635246, 41.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037060, 36.922497, 40.903568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894334, -0.185375, 0.407189,
		0.187659, -0.670766, -0.717536,
		0.406141, 0.718129, -0.565101,
		44.158901, 37.137936, 40.734039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343197, 36.288513, 40.664585>,  <43.874603, 36.635246, 41.129608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343197, 36.288513, 40.664585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407967, 36.664158, 40.785816>,  <44.446831, 36.889545, 40.858555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407967, 36.664158, 40.785816>,  <44.343197, 36.288513, 40.664585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407967, 36.664158, 40.785816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845311, -0.290468, 0.448416,
		0.509145, 0.183582, -0.840874,
		0.161926, 0.939109, 0.303074,
		44.456543, 36.945892, 40.876740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566128, 36.112518, 40.488552>,  <44.343197, 36.288513, 40.664585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566128, 36.112518, 40.488552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566750, 35.739410, 40.632740>,  <43.567123, 35.515545, 40.719254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566750, 35.739410, 40.632740>,  <43.566128, 36.112518, 40.488552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566750, 35.739410, 40.632740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500527, 0.311344, 0.807798,
		-0.865719, -0.181684, -0.466391,
		0.001556, -0.932768, 0.360474,
		43.567215, 35.459579, 40.740883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953987, 36.117043, 39.922398>,  <43.566128, 36.112518, 40.488552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953987, 36.117043, 39.922398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918995, 36.497906, 40.039520>,  <42.897999, 36.726425, 40.109795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918995, 36.497906, 40.039520>,  <42.953987, 36.117043, 39.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918995, 36.497906, 40.039520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718526, 0.143278, -0.680582,
		-0.689976, -0.269930, 0.671618,
		-0.087481, 0.952160, 0.292811,
		42.892750, 36.783554, 40.127365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237293, 36.286480, 40.195900>,  <42.953987, 36.117043, 39.922398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237293, 36.286480, 40.195900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447945, 36.585110, 40.033279>,  <42.574333, 36.764290, 39.935707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447945, 36.585110, 40.033279>,  <42.237293, 36.286480, 40.195900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447945, 36.585110, 40.033279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712208, 0.126367, -0.690500,
		-0.464138, 0.653186, 0.598267,
		0.526626, 0.746578, -0.406553,
		42.605934, 36.809082, 39.911312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767708, 36.690048, 40.034092>,  <42.237293, 36.286480, 40.195900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767708, 36.690048, 40.034092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081032, 36.775021, 39.800407>,  <42.269028, 36.826004, 39.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081032, 36.775021, 39.800407>,  <41.767708, 36.690048, 40.034092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081032, 36.775021, 39.800407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608889, 0.072885, -0.789900,
		-0.125216, 0.974455, 0.186436,
		0.783311, 0.212426, -0.584208,
		42.316025, 36.838749, 39.625145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465736, 37.295933, 39.716209>,  <41.767708, 36.690048, 40.034092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465736, 37.295933, 39.716209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765343, 37.179157, 39.478302>,  <41.945107, 37.109093, 39.335556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765343, 37.179157, 39.478302>,  <41.465736, 37.295933, 39.716209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765343, 37.179157, 39.478302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489154, 0.361825, -0.793607,
		0.446886, 0.885356, 0.128209,
		0.749014, -0.291938, -0.594769,
		41.990047, 37.091576, 39.299870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299648, 37.752392, 39.158005>,  <41.465736, 37.295933, 39.716209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299648, 37.752392, 39.158005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545891, 37.472836, 39.012360>,  <41.693638, 37.305103, 38.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545891, 37.472836, 39.012360>,  <41.299648, 37.752392, 39.158005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545891, 37.472836, 39.012360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393952, 0.127235, -0.910282,
		0.682515, 0.703820, -0.197003,
		0.615609, -0.698891, -0.364111,
		41.730572, 37.263168, 38.903126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675007, 38.016117, 38.534626>,  <41.299648, 37.752392, 39.158005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675007, 38.016117, 38.534626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676701, 37.616810, 38.511150>,  <41.677719, 37.377224, 38.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676701, 37.616810, 38.511150>,  <41.675007, 38.016117, 38.534626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676701, 37.616810, 38.511150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172068, 0.057085, -0.983430,
		0.985076, 0.014267, -0.171528,
		0.004239, -0.998267, -0.058688,
		41.677971, 37.317329, 38.493546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142517, 37.832817, 37.995285>,  <41.675007, 38.016117, 38.534626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142517, 37.832817, 37.995285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845810, 37.566116, 38.024200>,  <41.667786, 37.406094, 38.041550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845810, 37.566116, 38.024200>,  <42.142517, 37.832817, 37.995285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845810, 37.566116, 38.024200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206246, 0.124215, -0.970584,
		0.638161, -0.734854, -0.229654,
		-0.741764, -0.666754, 0.072292,
		41.623280, 37.366089, 38.045887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205757, 37.511616, 37.338020>,  <42.142517, 37.832817, 37.995285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205757, 37.511616, 37.338020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970596, 37.306435, 37.588219>,  <41.829498, 37.183327, 37.738338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970596, 37.306435, 37.588219>,  <42.205757, 37.511616, 37.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970596, 37.306435, 37.588219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357718, -0.528674, -0.769767,
		0.725542, -0.676299, 0.127314,
		-0.587901, -0.512956, 0.625499,
		41.794228, 37.152550, 37.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225033, 36.814709, 37.127689>,  <42.205757, 37.511616, 37.338020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225033, 36.814709, 37.127689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883709, 36.829311, 37.335739>,  <41.678917, 36.838074, 37.460571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883709, 36.829311, 37.335739>,  <42.225033, 36.814709, 37.127689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883709, 36.829311, 37.335739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502703, -0.322402, -0.802089,
		0.138408, -0.945899, 0.293461,
		-0.853307, 0.036508, 0.520129,
		41.627716, 36.840263, 37.491779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794525, 36.240276, 37.013412>,  <42.225033, 36.814709, 37.127689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794525, 36.240276, 37.013412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547932, 36.539574, 37.111454>,  <41.399975, 36.719151, 37.170280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547932, 36.539574, 37.111454>,  <41.794525, 36.240276, 37.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547932, 36.539574, 37.111454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599379, -0.244113, -0.762334,
		-0.510578, -0.616879, 0.598974,
		-0.616486, 0.748244, 0.245106,
		41.362988, 36.764046, 37.184986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019447, 36.031666, 37.057243>,  <41.794525, 36.240276, 37.013412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019447, 36.031666, 37.057243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025101, 36.422916, 36.974224>,  <41.028492, 36.657665, 36.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025101, 36.422916, 36.974224>,  <41.019447, 36.031666, 37.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025101, 36.422916, 36.974224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478862, -0.175598, -0.860149,
		-0.877776, 0.111544, 0.465904,
		0.014133, 0.978122, -0.207550,
		41.029339, 36.716354, 36.911961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476227, 36.175018, 36.896484>,  <41.019447, 36.031666, 37.057243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476227, 36.175018, 36.896484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627525, 36.509529, 36.737701>,  <40.718304, 36.710236, 36.642433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627525, 36.509529, 36.737701>,  <40.476227, 36.175018, 36.896484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627525, 36.509529, 36.737701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482160, -0.188075, -0.855657,
		-0.790223, 0.515044, 0.332081,
		0.378245, 0.836276, -0.396955,
		40.740997, 36.760410, 36.618614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117645, 36.815571, 37.034721>,  <40.476227, 36.175018, 36.896484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117645, 36.815571, 37.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406319, 37.017521, 36.845291>,  <40.579521, 37.138691, 36.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406319, 37.017521, 36.845291>,  <40.117645, 36.815571, 37.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406319, 37.017521, 36.845291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577442, 0.061784, -0.814091,
		-0.381755, 0.860978, 0.336125,
		0.721682, 0.504876, -0.473578,
		40.622822, 37.168983, 36.703217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761517, 37.255421, 36.687351>,  <40.117645, 36.815571, 37.034721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761517, 37.255421, 36.687351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102440, 37.204803, 36.484352>,  <40.306995, 37.174435, 36.362553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102440, 37.204803, 36.484352>,  <39.761517, 37.255421, 36.687351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102440, 37.204803, 36.484352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483786, 0.178058, -0.856882,
		0.198798, 0.975849, 0.090540,
		0.852309, -0.126544, -0.507499,
		40.358131, 37.166840, 36.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725540, 37.769840, 36.071491>,  <39.761517, 37.255421, 36.687351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725540, 37.769840, 36.071491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007137, 37.510044, 35.956558>,  <40.176098, 37.354168, 35.887600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007137, 37.510044, 35.956558>,  <39.725540, 37.769840, 36.071491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007137, 37.510044, 35.956558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324486, 0.065728, -0.943604,
		0.631743, 0.757528, -0.164477,
		0.703995, -0.649486, -0.287330,
		40.218334, 37.315197, 35.870358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056366, 38.078430, 35.467224>,  <39.725540, 37.769840, 36.071491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056366, 38.078430, 35.467224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148983, 37.693172, 35.412468>,  <40.204552, 37.462017, 35.379612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148983, 37.693172, 35.412468>,  <40.056366, 38.078430, 35.467224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148983, 37.693172, 35.412468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389209, 0.037252, -0.920396,
		0.891575, 0.266388, -0.366240,
		0.231539, -0.963146, -0.136894,
		40.218445, 37.404228, 35.371399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189507, 37.990635, 34.740341>,  <40.056366, 38.078430, 35.467224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189507, 37.990635, 34.740341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173817, 37.612152, 34.868809>,  <40.164402, 37.385063, 34.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173817, 37.612152, 34.868809>,  <40.189507, 37.990635, 34.740341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173817, 37.612152, 34.868809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336092, -0.290193, -0.896008,
		0.941012, -0.143084, -0.306632,
		-0.039222, -0.946211, 0.321164,
		40.162048, 37.328289, 34.965157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536282, 37.608658, 34.278614>,  <40.189507, 37.990635, 34.740341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536282, 37.608658, 34.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329159, 37.324146, 34.468754>,  <40.204884, 37.153439, 34.582840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329159, 37.324146, 34.468754>,  <40.536282, 37.608658, 34.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329159, 37.324146, 34.468754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428921, -0.264915, -0.863624,
		0.740205, -0.651079, -0.167907,
		-0.517807, -0.711278, 0.475353,
		40.173817, 37.110764, 34.611359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721619, 37.026676, 33.885681>,  <40.536282, 37.608658, 34.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721619, 37.026676, 33.885681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370728, 36.977558, 34.071323>,  <40.160194, 36.948086, 34.182709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370728, 36.977558, 34.071323>,  <40.721619, 37.026676, 33.885681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370728, 36.977558, 34.071323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427234, -0.241227, -0.871367,
		0.218952, -0.962669, 0.159150,
		-0.877229, -0.122793, 0.464102,
		40.107559, 36.940720, 34.210552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510239, 36.336021, 33.660706>,  <40.721619, 37.026676, 33.885681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510239, 36.336021, 33.660706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187180, 36.535755, 33.786160>,  <39.993343, 36.655598, 33.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187180, 36.535755, 33.786160>,  <40.510239, 36.336021, 33.660706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187180, 36.535755, 33.786160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480828, -0.249801, -0.840479,
		-0.341334, -0.829616, 0.441846,
		-0.807648, 0.499336, 0.313637,
		39.944885, 36.685555, 33.880249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007023, 35.901196, 33.634861>,  <40.510239, 36.336021, 33.660706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007023, 35.901196, 33.634861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810440, 36.249447, 33.626175>,  <39.692490, 36.458397, 33.620964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810440, 36.249447, 33.626175>,  <40.007023, 35.901196, 33.634861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810440, 36.249447, 33.626175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508951, -0.307351, -0.804055,
		-0.706710, -0.384106, 0.594158,
		-0.491457, 0.870630, -0.021717,
		39.663002, 36.510635, 33.619659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836803, 35.614464, 33.010956>,  <40.007023, 35.901196, 33.634861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836803, 35.614464, 33.010956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904419, 35.408520, 32.674778>,  <39.944988, 35.284954, 32.473072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904419, 35.408520, 32.674778>,  <39.836803, 35.614464, 33.010956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904419, 35.408520, 32.674778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752611, 0.618017, -0.227227,
		0.636400, -0.594120, 0.491953,
		0.169035, -0.514856, -0.840447,
		39.955128, 35.254063, 32.422646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541191, 35.584888, 32.967724>,  <39.836803, 35.614464, 33.010956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541191, 35.584888, 32.967724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423412, 35.535110, 32.588711>,  <40.352745, 35.505241, 32.361301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423412, 35.535110, 32.588711>,  <40.541191, 35.584888, 32.967724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423412, 35.535110, 32.588711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845073, 0.429087, -0.318962,
		0.446268, -0.894649, -0.021171,
		-0.294443, -0.124451, -0.947531,
		40.335079, 35.497776, 32.304451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996441, 35.164570, 32.629559>,  <40.541191, 35.584888, 32.967724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996441, 35.164570, 32.629559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834656, 35.405537, 32.354313>,  <40.737583, 35.550117, 32.189167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834656, 35.405537, 32.354313>,  <40.996441, 35.164570, 32.629559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834656, 35.405537, 32.354313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883731, 0.451131, -0.124500,
		0.235429, -0.658464, -0.714842,
		-0.404466, 0.602417, -0.688114,
		40.713318, 35.586262, 32.147877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353050, 35.156342, 31.922537>,  <40.996441, 35.164570, 32.629559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353050, 35.156342, 31.922537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197353, 35.518593, 31.989847>,  <41.103935, 35.735943, 32.030235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197353, 35.518593, 31.989847>,  <41.353050, 35.156342, 31.922537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197353, 35.518593, 31.989847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903270, 0.411078, -0.122954,
		-0.180526, 0.104140, -0.978042,
		-0.389247, 0.905632, 0.168277,
		41.080578, 35.790283, 32.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741344, 35.501736, 31.435587>,  <41.353050, 35.156342, 31.922537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741344, 35.501736, 31.435587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589767, 35.703659, 31.745831>,  <41.498821, 35.824814, 31.931976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589767, 35.703659, 31.745831>,  <41.741344, 35.501736, 31.435587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589767, 35.703659, 31.745831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849139, 0.522881, 0.074556,
		-0.367916, 0.686854, -0.626793,
		-0.378947, 0.504804, 0.775611,
		41.476082, 35.855099, 31.978514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378010, 35.296886, 31.292429>,  <41.741344, 35.501736, 31.435587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378010, 35.296886, 31.292429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260010, 34.918915, 31.235733>,  <42.189209, 34.692131, 31.201715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260010, 34.918915, 31.235733>,  <42.378010, 35.296886, 31.292429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260010, 34.918915, 31.235733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646531, 0.088176, 0.757775,
		-0.703543, 0.315183, -0.636936,
		-0.295000, -0.944926, -0.141741,
		42.171509, 34.635437, 31.193211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566216, 35.459427, 31.978453>,  <42.378010, 35.296886, 31.292429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566216, 35.459427, 31.978453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560120, 35.605003, 32.350971>,  <42.556461, 35.692348, 32.574482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560120, 35.605003, 32.350971>,  <42.566216, 35.459427, 31.978453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560120, 35.605003, 32.350971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970020, -0.220554, 0.102068,
		0.242548, 0.904931, -0.349671,
		-0.015243, 0.363944, 0.931296,
		42.555546, 35.714188, 32.630360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252888, 35.248932, 32.213116>,  <42.566216, 35.459427, 31.978453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252888, 35.248932, 32.213116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186874, 35.519260, 32.500458>,  <43.147266, 35.681458, 32.672863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186874, 35.519260, 32.500458>,  <43.252888, 35.248932, 32.213116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186874, 35.519260, 32.500458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954210, -0.074836, 0.289626,
		0.249493, 0.733259, -0.632522,
		-0.165035, 0.675819, 0.718354,
		43.137363, 35.722008, 32.715965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850075, 35.762135, 32.139648>,  <43.252888, 35.248932, 32.213116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850075, 35.762135, 32.139648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695568, 35.759075, 32.508591>,  <43.602863, 35.757240, 32.729958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695568, 35.759075, 32.508591>,  <43.850075, 35.762135, 32.139648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695568, 35.759075, 32.508591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918367, -0.096464, 0.383792,
		0.086038, 0.995307, 0.044286,
		-0.386263, -0.007650, 0.922357,
		43.579689, 35.756779, 32.785297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168667, 36.227016, 32.567799>,  <43.850075, 35.762135, 32.139648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168667, 36.227016, 32.567799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001335, 35.915287, 32.754414>,  <43.900936, 35.728249, 32.866383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001335, 35.915287, 32.754414>,  <44.168667, 36.227016, 32.567799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001335, 35.915287, 32.754414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906298, -0.324099, 0.271264,
		-0.060199, 0.536297, 0.841880,
		-0.418331, -0.779323, 0.466534,
		43.875835, 35.681492, 32.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501682, 36.271252, 33.257668>,  <44.168667, 36.227016, 32.567799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501682, 36.271252, 33.257668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368397, 35.914764, 33.134575>,  <44.288425, 35.700871, 33.060719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368397, 35.914764, 33.134575>,  <44.501682, 36.271252, 33.257668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368397, 35.914764, 33.134575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872850, -0.414991, 0.256740,
		-0.356517, -0.183055, 0.916180,
		-0.333209, -0.891220, -0.307732,
		44.268433, 35.647400, 33.042255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486450, 35.759140, 33.827801>,  <44.501682, 36.271252, 33.257668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486450, 35.759140, 33.827801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552605, 35.655289, 33.447224>,  <44.592297, 35.592976, 33.218880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552605, 35.655289, 33.447224>,  <44.486450, 35.759140, 33.827801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552605, 35.655289, 33.447224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885737, -0.385164, 0.259072,
		-0.433724, -0.885573, 0.166262,
		0.165389, -0.259631, -0.951440,
		44.602222, 35.577400, 33.161793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634800, 34.957859, 33.751793>,  <44.486450, 35.759140, 33.827801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634800, 34.957859, 33.751793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786560, 35.177849, 33.454182>,  <44.877617, 35.309841, 33.275616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786560, 35.177849, 33.454182>,  <44.634800, 34.957859, 33.751793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786560, 35.177849, 33.454182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904068, -0.391380, 0.171709,
		-0.196764, -0.737802, -0.645703,
		0.379402, 0.549973, -0.744032,
		44.900379, 35.342842, 33.230972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072720, 34.464268, 33.282524>,  <44.634800, 34.957859, 33.751793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072720, 34.464268, 33.282524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177280, 34.849331, 33.310665>,  <45.240017, 35.080368, 33.327549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177280, 34.849331, 33.310665>,  <45.072720, 34.464268, 33.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177280, 34.849331, 33.310665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836040, -0.262241, 0.481940,
		0.482396, -0.067160, -0.873375,
		0.261402, 0.962663, 0.070355,
		45.255699, 35.138130, 33.331772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823223, 34.723694, 33.066971>,  <45.072720, 34.464268, 33.282524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823223, 34.723694, 33.066971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676582, 34.962318, 33.352551>,  <45.588596, 35.105492, 33.523899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676582, 34.962318, 33.352551>,  <45.823223, 34.723694, 33.066971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676582, 34.962318, 33.352551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756858, -0.255059, 0.601757,
		0.541082, 0.760962, -0.358005,
		-0.366602, 0.596558, 0.713948,
		45.566601, 35.141285, 33.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.183887, 35.420803, 33.236668>,  <45.823223, 34.723694, 33.066971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.183887, 35.420803, 33.236668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017357, 35.210640, 33.533482>,  <45.917439, 35.084541, 33.711571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017357, 35.210640, 33.533482>,  <46.183887, 35.420803, 33.236668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017357, 35.210640, 33.533482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904624, -0.157459, 0.396059,
		-0.091252, 0.836154, 0.540851,
		-0.416328, -0.525408, 0.742036,
		45.892460, 35.053017, 33.756092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302864, 35.784504, 33.787964>,  <46.183887, 35.420803, 33.236668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302864, 35.784504, 33.787964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267101, 35.394924, 33.871326>,  <46.245644, 35.161179, 33.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.267101, 35.394924, 33.871326>,  <46.302864, 35.784504, 33.787964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267101, 35.394924, 33.871326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830050, 0.042789, 0.556046,
		-0.550476, 0.222702, 0.804599,
		-0.089405, -0.973947, 0.208408,
		46.240280, 35.102741, 33.933849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299679, 35.624584, 34.654079>,  <46.302864, 35.784504, 33.787964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299679, 35.624584, 34.654079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434650, 35.329475, 34.420212>,  <46.515633, 35.152412, 34.279892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434650, 35.329475, 34.420212>,  <46.299679, 35.624584, 34.654079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434650, 35.329475, 34.420212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856462, -0.017140, 0.515925,
		-0.390655, -0.674836, 0.626088,
		0.337433, -0.737769, -0.584667,
		46.535881, 35.108143, 34.244812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527344, 35.125118, 35.063911>,  <46.299679, 35.624584, 34.654079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527344, 35.125118, 35.063911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719028, 35.083607, 34.715294>,  <46.834038, 35.058701, 34.506123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719028, 35.083607, 34.715294>,  <46.527344, 35.125118, 35.063911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719028, 35.083607, 34.715294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859912, -0.143381, 0.489891,
		-0.175804, -0.984211, 0.020533,
		0.479212, -0.103781, -0.871542,
		46.862793, 35.052471, 34.453831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.007500, 34.536934, 35.105274>,  <46.527344, 35.125118, 35.063911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.007500, 34.536934, 35.105274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109501, 34.836338, 34.860424>,  <47.170704, 35.015980, 34.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109501, 34.836338, 34.860424>,  <47.007500, 34.536934, 35.105274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109501, 34.836338, 34.860424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893394, 0.059783, 0.445279,
		0.369892, -0.660421, -0.653471,
		0.255006, 0.748512, -0.612129,
		47.186001, 35.060890, 34.676785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675640, 34.347427, 34.851139>,  <47.007500, 34.536934, 35.105274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675640, 34.347427, 34.851139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613632, 34.742329, 34.836735>,  <47.576427, 34.979271, 34.828094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613632, 34.742329, 34.836735>,  <47.675640, 34.347427, 34.851139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613632, 34.742329, 34.836735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859004, 0.152701, 0.488666,
		0.487936, 0.044822, -0.871728,
		-0.155017, 0.987255, -0.036006,
		47.567127, 35.038506, 34.825932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.936426, 32.846779, 27.863314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.842182, 33.205090, 27.712543>,  <30.785635, 33.420074, 27.622082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.842182, 33.205090, 27.712543>,  <30.936426, 32.846779, 27.863314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842182, 33.205090, 27.712543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489331, 0.444440, 0.750353,
		0.839668, -0.007648, -0.543046,
		-0.235612, 0.895776, -0.376924,
		30.771498, 33.473824, 27.599466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580265, 33.311943, 27.592297>,  <30.936426, 32.846779, 27.863314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580265, 33.311943, 27.592297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272423, 33.538372, 27.710464>,  <31.087717, 33.674229, 27.781366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272423, 33.538372, 27.710464>,  <31.580265, 33.311943, 27.592297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272423, 33.538372, 27.710464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610358, 0.516292, 0.600754,
		0.187546, 0.642655, -0.742847,
		-0.769603, 0.566072, 0.295421,
		31.041542, 33.708195, 27.799091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823524, 33.968418, 27.528849>,  <31.580265, 33.311943, 27.592297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823524, 33.968418, 27.528849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525940, 33.997051, 27.794600>,  <31.347389, 34.014229, 27.954050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525940, 33.997051, 27.794600>,  <31.823524, 33.968418, 27.528849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525940, 33.997051, 27.794600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606036, 0.491115, 0.625721,
		-0.281496, 0.868149, -0.408752,
		-0.743963, 0.071580, 0.664376,
		31.302752, 34.018524, 27.993912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077034, 34.540913, 27.928549>,  <31.823524, 33.968418, 27.528849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077034, 34.540913, 27.928549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763624, 34.415943, 28.143391>,  <31.575579, 34.340961, 28.272295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763624, 34.415943, 28.143391>,  <32.077034, 34.540913, 27.928549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763624, 34.415943, 28.143391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384911, 0.434527, 0.814266,
		-0.487783, 0.844735, -0.220207,
		-0.783525, -0.312425, 0.537103,
		31.528566, 34.322216, 28.304522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699102, 35.110844, 28.293701>,  <32.077034, 34.540913, 27.928549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699102, 35.110844, 28.293701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628185, 34.774998, 28.499075>,  <31.585636, 34.573490, 28.622299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.628185, 34.774998, 28.499075>,  <31.699102, 35.110844, 28.293701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628185, 34.774998, 28.499075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461899, 0.389684, 0.796741,
		-0.869032, 0.378410, 0.318730,
		-0.177291, -0.839614, 0.513435,
		31.574999, 34.523113, 28.653105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374840, 35.344784, 28.942650>,  <31.699102, 35.110844, 28.293701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374840, 35.344784, 28.942650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513597, 34.973507, 28.996485>,  <31.596853, 34.750740, 29.028786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513597, 34.973507, 28.996485>,  <31.374840, 35.344784, 28.942650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513597, 34.973507, 28.996485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310522, 0.249068, 0.917355,
		-0.885008, -0.276434, 0.374626,
		0.346895, -0.928197, 0.134589,
		31.617666, 34.695049, 29.036861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140331, 35.054905, 29.642710>,  <31.374840, 35.344784, 28.942650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140331, 35.054905, 29.642710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.477770, 34.880112, 29.517879>,  <31.680233, 34.775234, 29.442982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.477770, 34.880112, 29.517879>,  <31.140331, 35.054905, 29.642710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477770, 34.880112, 29.517879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377961, 0.070380, 0.923143,
		-0.381435, -0.896712, 0.224535,
		0.843596, -0.436984, -0.312076,
		31.730848, 34.749016, 29.424257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355247, 34.669865, 30.264338>,  <31.140331, 35.054905, 29.642710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355247, 34.669865, 30.264338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679203, 34.683704, 30.030111>,  <31.873575, 34.692009, 29.889576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679203, 34.683704, 30.030111>,  <31.355247, 34.669865, 30.264338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679203, 34.683704, 30.030111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582675, 0.067616, 0.809888,
		0.067616, -0.997111, 0.034600,
		-0.809888, -0.034600, 0.585563,
		31.922169, 34.694084, 29.854443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827845, 34.342175, 30.677206>,  <31.355247, 34.669865, 30.264338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827845, 34.342175, 30.677206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034657, 34.531601, 30.391993>,  <32.158745, 34.645256, 30.220865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034657, 34.531601, 30.391993>,  <31.827845, 34.342175, 30.677206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034657, 34.531601, 30.391993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703457, 0.239515, 0.669164,
		0.487675, -0.847566, -0.209297,
		0.517031, 0.473567, -0.713032,
		32.189766, 34.673672, 30.178083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557838, 34.097118, 30.707342>,  <31.827845, 34.342175, 30.677206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557838, 34.097118, 30.707342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544537, 34.460705, 30.541128>,  <32.536556, 34.678856, 30.441401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.544537, 34.460705, 30.541128>,  <32.557838, 34.097118, 30.707342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544537, 34.460705, 30.541128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747889, 0.298430, 0.592960,
		0.662991, -0.291055, -0.689732,
		-0.033252, 0.908970, -0.415533,
		32.534561, 34.733395, 30.416468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285351, 34.166634, 30.407835>,  <32.557838, 34.097118, 30.707342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285351, 34.166634, 30.407835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116291, 34.520271, 30.487589>,  <33.014854, 34.732452, 30.535442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116291, 34.520271, 30.487589>,  <33.285351, 34.166634, 30.407835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116291, 34.520271, 30.487589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688976, 0.170499, 0.704445,
		0.588797, 0.435104, -0.681177,
		-0.422646, 0.884090, 0.199387,
		32.989498, 34.785500, 30.547405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758224, 34.553940, 30.804781>,  <33.285351, 34.166634, 30.407835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758224, 34.553940, 30.804781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455456, 34.806580, 30.871889>,  <33.273796, 34.958164, 30.912153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455456, 34.806580, 30.871889>,  <33.758224, 34.553940, 30.804781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455456, 34.806580, 30.871889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469520, 0.347029, 0.811863,
		0.454555, 0.693287, -0.559224,
		-0.756922, 0.631604, 0.167768,
		33.228378, 34.996059, 30.922220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047104, 35.162476, 30.968134>,  <33.758224, 34.553940, 30.804781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047104, 35.162476, 30.968134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675964, 35.225586, 31.103315>,  <33.453281, 35.263451, 31.184423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675964, 35.225586, 31.103315>,  <34.047104, 35.162476, 30.968134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675964, 35.225586, 31.103315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372028, 0.455773, 0.808620,
		-0.026450, 0.876001, -0.481583,
		-0.927844, 0.157775, 0.337952,
		33.397610, 35.272919, 31.204700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978897, 35.839077, 31.238422>,  <34.047104, 35.162476, 30.968134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978897, 35.839077, 31.238422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689011, 35.652790, 31.441559>,  <33.515079, 35.541019, 31.563440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689011, 35.652790, 31.441559>,  <33.978897, 35.839077, 31.238422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689011, 35.652790, 31.441559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276727, 0.478253, 0.833484,
		-0.631041, 0.744571, -0.217721,
		-0.724713, -0.465713, 0.507840,
		33.471596, 35.513077, 31.593910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694077, 36.380646, 31.688429>,  <33.978897, 35.839077, 31.238422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694077, 36.380646, 31.688429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601002, 36.020138, 31.834620>,  <33.545155, 35.803833, 31.922335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601002, 36.020138, 31.834620>,  <33.694077, 36.380646, 31.688429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601002, 36.020138, 31.834620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265197, 0.302753, 0.915430,
		-0.935696, 0.309935, 0.168566,
		-0.232689, -0.901267, 0.365478,
		33.531197, 35.749760, 31.944263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587250, 36.543816, 32.302052>,  <33.694077, 36.380646, 31.688429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587250, 36.543816, 32.302052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643139, 36.147739, 32.303150>,  <33.676670, 35.910095, 32.303810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643139, 36.147739, 32.303150>,  <33.587250, 36.543816, 32.302052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643139, 36.147739, 32.303150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394602, 0.058224, 0.917006,
		-0.908167, -0.127041, 0.398865,
		0.139721, -0.990187, 0.002746,
		33.685055, 35.850685, 32.303974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285000, 36.316940, 32.968975>,  <33.587250, 36.543816, 32.302052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285000, 36.316940, 32.968975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544971, 36.041332, 32.840694>,  <33.700954, 35.875969, 32.763725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544971, 36.041332, 32.840694>,  <33.285000, 36.316940, 32.968975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544971, 36.041332, 32.840694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463387, 0.024798, 0.885809,
		-0.602387, -0.724318, 0.335399,
		0.649925, -0.689020, -0.320702,
		33.739948, 35.834625, 32.744484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600967, 35.768387, 33.598934>,  <33.285000, 36.316940, 32.968975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600967, 35.768387, 33.598934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.869865, 35.737858, 33.304379>,  <34.031204, 35.719540, 33.127647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.869865, 35.737858, 33.304379>,  <33.600967, 35.768387, 33.598934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869865, 35.737858, 33.304379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731253, -0.086826, 0.676558,
		-0.115574, -0.993296, -0.002557,
		0.672244, -0.076322, -0.736385,
		34.071537, 35.714962, 33.083462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064293, 35.236214, 33.864891>,  <33.600967, 35.768387, 33.598934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064293, 35.236214, 33.864891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238094, 35.468330, 33.589367>,  <34.342377, 35.607601, 33.424053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238094, 35.468330, 33.589367>,  <34.064293, 35.236214, 33.864891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238094, 35.468330, 33.589367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860687, -0.042184, 0.507384,
		0.265376, -0.813313, -0.517781,
		0.434504, 0.580295, -0.688813,
		34.368446, 35.642418, 33.382725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718174, 34.885456, 33.717903>,  <34.064293, 35.236214, 33.864891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718174, 34.885456, 33.717903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762154, 35.259956, 33.584435>,  <34.788540, 35.484657, 33.504353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.762154, 35.259956, 33.584435>,  <34.718174, 34.885456, 33.717903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762154, 35.259956, 33.584435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856270, 0.081241, 0.510100,
		0.504692, -0.341800, -0.792754,
		0.109948, 0.936255, -0.333675,
		34.795139, 35.540833, 33.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419815, 34.911854, 33.710262>,  <34.718174, 34.885456, 33.717903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419815, 34.911854, 33.710262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296585, 35.291935, 33.691475>,  <35.222649, 35.519985, 33.680202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.296585, 35.291935, 33.691475>,  <35.419815, 34.911854, 33.710262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296585, 35.291935, 33.691475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780095, 0.280563, 0.559228,
		0.544556, 0.135647, -0.827682,
		-0.308075, 0.950202, -0.046965,
		35.204163, 35.576996, 33.677387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167194, 35.117596, 33.541611>,  <35.419815, 34.911854, 33.710262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167194, 35.117596, 33.541611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562840, 35.170300, 33.515377>,  <36.800224, 35.201923, 33.499638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562840, 35.170300, 33.515377>,  <36.167194, 35.117596, 33.541611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562840, 35.170300, 33.515377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018664, -0.554301, -0.832107,
		-0.145993, 0.821821, -0.550723,
		0.989110, 0.131760, -0.065586,
		36.859573, 35.209827, 33.495701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319874, 35.443073, 32.866070>,  <36.167194, 35.117596, 33.541611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319874, 35.443073, 32.866070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655773, 35.256130, 32.976635>,  <36.857311, 35.143963, 33.042973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655773, 35.256130, 32.976635>,  <36.319874, 35.443073, 32.866070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655773, 35.256130, 32.976635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036059, -0.555942, -0.830439,
		0.541784, 0.687389, -0.483701,
		0.839744, -0.467360, 0.276414,
		36.907696, 35.115921, 33.059559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812675, 35.457806, 32.331795>,  <36.319874, 35.443073, 32.866070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812675, 35.457806, 32.331795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908844, 35.137360, 32.551037>,  <36.966545, 34.945091, 32.682583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908844, 35.137360, 32.551037>,  <36.812675, 35.457806, 32.331795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908844, 35.137360, 32.551037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145844, -0.528440, -0.836350,
		0.959650, 0.281013, -0.010210,
		0.240421, -0.801114, 0.548101,
		36.980968, 34.897026, 32.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245159, 35.151356, 31.886488>,  <36.812675, 35.457806, 32.331795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245159, 35.151356, 31.886488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163414, 34.852879, 32.139923>,  <37.114368, 34.673794, 32.291985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163414, 34.852879, 32.139923>,  <37.245159, 35.151356, 31.886488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163414, 34.852879, 32.139923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005382, -0.646381, -0.762996,
		0.978881, -0.159336, 0.128078,
		-0.204359, -0.746193, 0.633588,
		37.102108, 34.629021, 32.329998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628334, 34.613270, 31.571001>,  <37.245159, 35.151356, 31.886488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628334, 34.613270, 31.571001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375847, 34.424789, 31.817425>,  <37.224354, 34.311699, 31.965279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375847, 34.424789, 31.817425>,  <37.628334, 34.613270, 31.571001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375847, 34.424789, 31.817425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175784, -0.686712, -0.705356,
		0.755421, -0.553528, 0.350637,
		-0.631221, -0.471204, 0.616057,
		37.186481, 34.283428, 32.002243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796856, 33.879509, 31.512707>,  <37.628334, 34.613270, 31.571001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796856, 33.879509, 31.512707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428555, 33.882431, 31.668741>,  <37.207573, 33.884186, 31.762362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428555, 33.882431, 31.668741>,  <37.796856, 33.879509, 31.512707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428555, 33.882431, 31.668741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254218, -0.769675, -0.585639,
		0.295963, -0.638394, 0.710535,
		-0.920749, 0.007303, 0.390087,
		37.152328, 33.884621, 31.785767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615074, 33.128933, 31.643465>,  <37.796856, 33.879509, 31.512707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615074, 33.128933, 31.643465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278687, 33.342846, 31.610558>,  <37.076855, 33.471195, 31.590813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278687, 33.342846, 31.610558>,  <37.615074, 33.128933, 31.643465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278687, 33.342846, 31.610558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404291, -0.722118, -0.561332,
		-0.359600, -0.438805, 0.823491,
		-0.840973, 0.534785, -0.082268,
		37.026394, 33.503281, 31.585876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028900, 32.594986, 31.730637>,  <37.615074, 33.128933, 31.643465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028900, 32.594986, 31.730637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894474, 32.918774, 31.538046>,  <36.813820, 33.113045, 31.422491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894474, 32.918774, 31.538046>,  <37.028900, 32.594986, 31.730637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894474, 32.918774, 31.538046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519337, -0.585736, -0.622256,
		-0.785716, 0.040931, 0.617232,
		-0.336065, 0.809468, -0.481479,
		36.793655, 33.161613, 31.393602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335594, 32.349442, 31.568747>,  <37.028900, 32.594986, 31.730637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335594, 32.349442, 31.568747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398453, 32.665615, 31.331930>,  <36.436169, 32.855320, 31.189840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.398453, 32.665615, 31.331930>,  <36.335594, 32.349442, 31.568747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398453, 32.665615, 31.331930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588077, -0.406720, -0.699102,
		-0.793392, 0.458026, 0.400925,
		0.157143, 0.790437, -0.592043,
		36.445595, 32.902748, 31.154318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619656, 32.669384, 31.299994>,  <36.335594, 32.349442, 31.568747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619656, 32.669384, 31.299994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901432, 32.772869, 31.035620>,  <36.070499, 32.834961, 30.876995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901432, 32.772869, 31.035620>,  <35.619656, 32.669384, 31.299994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901432, 32.772869, 31.035620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594471, -0.293690, -0.748565,
		-0.387771, 0.920225, -0.053091,
		0.704441, 0.258711, -0.660932,
		36.112762, 32.850483, 30.837339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300217, 33.195644, 30.884323>,  <35.619656, 32.669384, 31.299994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300217, 33.195644, 30.884323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610336, 33.044350, 30.681995>,  <35.796410, 32.953571, 30.560598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610336, 33.044350, 30.681995>,  <35.300217, 33.195644, 30.884323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610336, 33.044350, 30.681995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607621, -0.228107, -0.760765,
		0.172368, 0.897165, -0.406675,
		0.775298, -0.378235, -0.505818,
		35.842926, 32.930878, 30.530251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286972, 33.519539, 30.272114>,  <35.300217, 33.195644, 30.884323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286972, 33.519539, 30.272114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492188, 33.185062, 30.194571>,  <35.615314, 32.984379, 30.148045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492188, 33.185062, 30.194571>,  <35.286972, 33.519539, 30.272114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492188, 33.185062, 30.194571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559669, -0.154630, -0.814162,
		0.650817, 0.526191, -0.547320,
		0.513037, -0.836189, -0.193857,
		35.646099, 32.934204, 30.136414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385242, 33.429272, 29.550518>,  <35.286972, 33.519539, 30.272114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385242, 33.429272, 29.550518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426723, 33.057266, 29.691551>,  <35.451614, 32.834061, 29.776171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426723, 33.057266, 29.691551>,  <35.385242, 33.429272, 29.550518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426723, 33.057266, 29.691551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594539, -0.342153, -0.727636,
		0.797351, -0.134163, -0.588415,
		0.103707, -0.930017, 0.352581,
		35.457836, 32.778259, 29.797325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507473, 32.976730, 28.951775>,  <35.385242, 33.429272, 29.550518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507473, 32.976730, 28.951775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 32.705059, 29.217936>,  <35.309227, 32.542057, 29.377632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.383568, 32.705059, 29.217936>,  <35.507473, 32.976730, 28.951775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383568, 32.705059, 29.217936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676611, -0.334221, -0.656120,
		0.668017, -0.653458, -0.356014,
		-0.309759, -0.679183, 0.665403,
		35.290642, 32.501305, 29.417557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555363, 32.332561, 28.599813>,  <35.507473, 32.976730, 28.951775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555363, 32.332561, 28.599813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300797, 32.269981, 28.901941>,  <35.148056, 32.232433, 29.083218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300797, 32.269981, 28.901941>,  <35.555363, 32.332561, 28.599813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300797, 32.269981, 28.901941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717686, -0.238756, -0.654158,
		0.282679, -0.958394, 0.039665,
		-0.636411, -0.156449, 0.755318,
		35.109875, 32.223045, 29.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282391, 31.755365, 28.387800>,  <35.555363, 32.332561, 28.599813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282391, 31.755365, 28.387800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029579, 31.929960, 28.643930>,  <34.877892, 32.034718, 28.797609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029579, 31.929960, 28.643930>,  <35.282391, 31.755365, 28.387800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029579, 31.929960, 28.643930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766893, -0.233481, -0.597797,
		-0.111426, -0.868888, 0.482305,
		-0.632027, 0.436487, 0.640328,
		34.839970, 32.060905, 28.836029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733421, 31.294441, 28.565819>,  <35.282391, 31.755365, 28.387800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733421, 31.294441, 28.565819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563274, 31.644066, 28.659697>,  <34.461185, 31.853840, 28.716022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563274, 31.644066, 28.659697>,  <34.733421, 31.294441, 28.565819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563274, 31.644066, 28.659697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814890, -0.257083, -0.519484,
		-0.393726, -0.412218, 0.821618,
		-0.425364, 0.874063, 0.234692,
		34.435665, 31.906284, 28.730104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008976, 31.120590, 28.833006>,  <34.733421, 31.294441, 28.565819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008976, 31.120590, 28.833006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025639, 31.498074, 28.701748>,  <34.035637, 31.724564, 28.622993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025639, 31.498074, 28.701748>,  <34.008976, 31.120590, 28.833006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025639, 31.498074, 28.701748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663010, -0.219590, -0.715680,
		-0.747451, 0.247374, 0.616541,
		0.041655, 0.943709, -0.328144,
		34.038136, 31.781187, 28.603304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360039, 31.294504, 28.589483>,  <34.008976, 31.120590, 28.833006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360039, 31.294504, 28.589483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571690, 31.579134, 28.404577>,  <33.698681, 31.749912, 28.293634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571690, 31.579134, 28.404577>,  <33.360039, 31.294504, 28.589483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571690, 31.579134, 28.404577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596284, -0.075784, -0.799189,
		-0.603714, 0.698512, 0.384201,
		0.529126, 0.711574, -0.462263,
		33.730427, 31.792606, 28.265898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.395439, 32.171444, 28.676504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291634, 31.852556, 28.894527>,  <32.229351, 31.661222, 29.025341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291634, 31.852556, 28.894527>,  <32.395439, 32.171444, 28.676504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291634, 31.852556, 28.894527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390281, 0.602828, 0.695902,
		-0.883366, -0.032131, -0.467582,
		-0.259511, -0.797224, 0.545058,
		32.213779, 31.613390, 29.058044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417477, 32.631699, 27.975054>,  <32.395439, 32.171444, 28.676504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417477, 32.631699, 27.975054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738075, 32.468525, 27.800156>,  <32.930435, 32.370621, 27.695217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738075, 32.468525, 27.800156>,  <32.417477, 32.631699, 27.975054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738075, 32.468525, 27.800156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543683, -0.192633, -0.816885,
		0.249008, 0.892458, -0.376183,
		0.801501, -0.407936, -0.437247,
		32.978527, 32.346146, 27.668982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360138, 32.880966, 27.368479>,  <32.417477, 32.631699, 27.975054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360138, 32.880966, 27.368479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.612068, 32.572430, 27.331936>,  <32.763226, 32.387306, 27.310011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.612068, 32.572430, 27.331936>,  <32.360138, 32.880966, 27.368479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612068, 32.572430, 27.331936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525355, -0.336399, -0.781561,
		0.572122, 0.540242, -0.617103,
		0.629825, -0.771346, -0.091358,
		32.801014, 32.341026, 27.304529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538567, 32.853714, 26.643616>,  <32.360138, 32.880966, 27.368479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538567, 32.853714, 26.643616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624516, 32.486610, 26.777205>,  <32.676086, 32.266346, 26.857359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624516, 32.486610, 26.777205>,  <32.538567, 32.853714, 26.643616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624516, 32.486610, 26.777205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470759, -0.396943, -0.787923,
		0.855695, 0.012086, -0.517340,
		0.214877, -0.917764, 0.333973,
		32.688980, 32.211281, 26.877396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885185, 32.473343, 26.050383>,  <32.538567, 32.853714, 26.643616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885185, 32.473343, 26.050383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709076, 32.237080, 26.320875>,  <32.603413, 32.095322, 26.483171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709076, 32.237080, 26.320875>,  <32.885185, 32.473343, 26.050383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709076, 32.237080, 26.320875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586990, -0.380565, -0.714572,
		0.679415, -0.711546, -0.179157,
		-0.440270, -0.590655, 0.676232,
		32.576996, 32.059883, 26.523745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877918, 31.832222, 25.702799>,  <32.885185, 32.473343, 26.050383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877918, 31.832222, 25.702799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591923, 31.799252, 25.980501>,  <32.420326, 31.779469, 26.147123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591923, 31.799252, 25.980501>,  <32.877918, 31.832222, 25.702799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591923, 31.799252, 25.980501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642232, -0.314966, -0.698809,
		0.276269, -0.945517, 0.172261,
		-0.714992, -0.082428, 0.694256,
		32.377426, 31.774523, 26.188778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599083, 31.304211, 25.432459>,  <32.877918, 31.832222, 25.702799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599083, 31.304211, 25.432459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328865, 31.452930, 25.687145>,  <32.166733, 31.542162, 25.839956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328865, 31.452930, 25.687145>,  <32.599083, 31.304211, 25.432459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328865, 31.452930, 25.687145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733128, -0.430659, -0.526361,
		0.078506, -0.822374, 0.563505,
		-0.675544, 0.371799, 0.636715,
		32.126202, 31.564470, 25.878160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223488, 30.677156, 25.650206>,  <32.599083, 31.304211, 25.432459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223488, 30.677156, 25.650206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020359, 31.018326, 25.698601>,  <31.898483, 31.223028, 25.727638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.020359, 31.018326, 25.698601>,  <32.223488, 30.677156, 25.650206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020359, 31.018326, 25.698601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652912, -0.289445, -0.699949,
		-0.561985, -0.434441, 0.703871,
		-0.507819, 0.852926, 0.120988,
		31.868013, 31.274204, 25.734898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603941, 30.478779, 25.392962>,  <32.223488, 30.677156, 25.650206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603941, 30.478779, 25.392962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545910, 30.871843, 25.439150>,  <31.511091, 31.107681, 25.466864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.545910, 30.871843, 25.439150>,  <31.603941, 30.478779, 25.392962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545910, 30.871843, 25.439150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660680, -0.009339, -0.750610,
		-0.736515, -0.185187, 0.650578,
		-0.145079, 0.982659, 0.115471,
		31.502386, 31.166641, 25.473791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874372, 30.663639, 25.618711>,  <31.603941, 30.478779, 25.392962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874372, 30.663639, 25.618711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059883, 30.948387, 25.407751>,  <31.171190, 31.119236, 25.281174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059883, 30.948387, 25.407751>,  <30.874372, 30.663639, 25.618711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059883, 30.948387, 25.407751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595786, -0.189987, -0.780348,
		-0.655705, 0.676127, 0.336010,
		0.463777, 0.711869, -0.527402,
		31.199017, 31.161947, 25.249531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364929, 30.702522, 25.135563>,  <30.874372, 30.663639, 25.618711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364929, 30.702522, 25.135563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672283, 30.914410, 24.991903>,  <30.856695, 31.041542, 24.905708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672283, 30.914410, 24.991903>,  <30.364929, 30.702522, 25.135563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672283, 30.914410, 24.991903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375616, -0.081091, -0.923221,
		-0.518169, 0.844289, 0.136661,
		0.768384, 0.529717, -0.359147,
		30.902798, 31.073324, 24.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120615, 31.262999, 24.617195>,  <30.364929, 30.702522, 25.135563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120615, 31.262999, 24.617195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504524, 31.207098, 24.519785>,  <30.734869, 31.173557, 24.461338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504524, 31.207098, 24.519785>,  <30.120615, 31.262999, 24.617195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504524, 31.207098, 24.519785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243228, 0.019478, -0.969774,
		0.140272, 0.989995, -0.015298,
		0.959773, -0.139753, -0.243527,
		30.792456, 31.165173, 24.446728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276781, 31.702280, 24.006723>,  <30.120615, 31.262999, 24.617195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276781, 31.702280, 24.006723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554512, 31.414448, 24.011011>,  <30.721149, 31.241749, 24.013584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554512, 31.414448, 24.011011>,  <30.276781, 31.702280, 24.006723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554512, 31.414448, 24.011011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073380, -0.085605, -0.993623,
		0.715910, 0.689112, -0.112241,
		0.694326, -0.719581, 0.010718,
		30.762810, 31.198574, 24.014227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570887, 31.772785, 23.451393>,  <30.276781, 31.702280, 24.006723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570887, 31.772785, 23.451393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683540, 31.396852, 23.528751>,  <30.751133, 31.171293, 23.575167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683540, 31.396852, 23.528751>,  <30.570887, 31.772785, 23.451393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683540, 31.396852, 23.528751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159436, -0.152915, -0.975294,
		0.946184, 0.305508, 0.106777,
		0.281633, -0.939831, 0.193394,
		30.768030, 31.114902, 23.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242134, 31.648930, 23.206593>,  <30.570887, 31.772785, 23.451393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242134, 31.648930, 23.206593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055933, 31.295135, 23.219185>,  <30.944212, 31.082859, 23.226740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055933, 31.295135, 23.219185>,  <31.242134, 31.648930, 23.206593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055933, 31.295135, 23.219185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010877, -0.041285, -0.999088,
		0.884979, -0.464736, 0.028839,
		-0.465503, -0.884486, 0.031481,
		30.916283, 31.029789, 23.228630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569405, 31.452511, 22.669455>,  <31.242134, 31.648930, 23.206593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569405, 31.452511, 22.669455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280010, 31.187918, 22.748455>,  <31.106373, 31.029161, 22.795855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280010, 31.187918, 22.748455>,  <31.569405, 31.452511, 22.669455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280010, 31.187918, 22.748455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006591, -0.279459, -0.960135,
		0.690308, -0.695946, 0.197825,
		-0.723486, -0.661485, 0.197500,
		31.062965, 30.989471, 22.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757536, 30.842657, 22.387558>,  <31.569405, 31.452511, 22.669455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757536, 30.842657, 22.387558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361429, 30.791746, 22.410089>,  <31.123766, 30.761200, 22.423609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.361429, 30.791746, 22.410089>,  <31.757536, 30.842657, 22.387558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361429, 30.791746, 22.410089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026894, -0.572060, -0.819771,
		0.136563, -0.810276, 0.569915,
		-0.990266, -0.127277, 0.056331,
		31.064350, 30.753563, 22.426989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629812, 30.072260, 22.323824>,  <31.757536, 30.842657, 22.387558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629812, 30.072260, 22.323824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295055, 30.269718, 22.229227>,  <31.094202, 30.388193, 22.172468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295055, 30.269718, 22.229227>,  <31.629812, 30.072260, 22.323824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295055, 30.269718, 22.229227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043450, -0.490602, -0.870300,
		-0.545647, -0.718068, 0.432028,
		-0.836888, 0.493648, -0.236495,
		31.043987, 30.417812, 22.158279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259228, 29.616644, 21.939238>,  <31.629812, 30.072260, 22.323824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259228, 29.616644, 21.939238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028322, 29.938522, 21.883766>,  <30.889778, 30.131649, 21.850483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.028322, 29.938522, 21.883766>,  <31.259228, 29.616644, 21.939238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028322, 29.938522, 21.883766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286032, -0.358345, -0.888693,
		-0.764820, -0.473346, 0.437029,
		-0.577266, 0.804694, -0.138677,
		30.855143, 30.179930, 21.842163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624144, 29.381037, 21.702583>,  <31.259228, 29.616644, 21.939238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624144, 29.381037, 21.702583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650427, 29.747517, 21.544466>,  <30.666197, 29.967405, 21.449596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650427, 29.747517, 21.544466>,  <30.624144, 29.381037, 21.702583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650427, 29.747517, 21.544466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177544, -0.379094, -0.908166,
		-0.981917, 0.129854, 0.137758,
		0.065706, 0.916202, -0.395294,
		30.670139, 30.022377, 21.425879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044149, 29.539902, 21.370243>,  <30.624144, 29.381037, 21.702583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044149, 29.539902, 21.370243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.270620, 29.823393, 21.201887>,  <30.406502, 29.993488, 21.100874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.270620, 29.823393, 21.201887>,  <30.044149, 29.539902, 21.370243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270620, 29.823393, 21.201887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480451, -0.131162, -0.867158,
		-0.669785, 0.693181, 0.266249,
		0.566176, 0.708729, -0.420890,
		30.440474, 30.036011, 21.075621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636108, 29.970329, 21.103218>,  <30.044149, 29.539902, 21.370243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636108, 29.970329, 21.103218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977848, 30.047411, 20.910158>,  <30.182892, 30.093660, 20.794321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977848, 30.047411, 20.910158>,  <29.636108, 29.970329, 21.103218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977848, 30.047411, 20.910158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490328, -0.008904, -0.871492,
		-0.172239, 0.981216, 0.086881,
		0.854349, 0.192706, -0.482652,
		30.234152, 30.105223, 20.765362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547401, 30.503790, 20.435373>,  <29.636108, 29.970329, 21.103218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547401, 30.503790, 20.435373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871521, 30.273960, 20.389271>,  <30.065992, 30.136063, 20.361609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871521, 30.273960, 20.389271>,  <29.547401, 30.503790, 20.435373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871521, 30.273960, 20.389271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275726, -0.200256, -0.940145,
		0.517102, 0.793576, -0.320692,
		0.810297, -0.574574, -0.115256,
		30.114611, 30.101587, 20.354694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848372, 30.864067, 20.241516>,  <29.547401, 30.503790, 20.435373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848372, 30.864067, 20.241516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576326, 31.134861, 20.128990>,  <28.413099, 31.297337, 20.061476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.576326, 31.134861, 20.128990>,  <28.848372, 30.864067, 20.241516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576326, 31.134861, 20.128990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408732, 0.668712, 0.621098,
		0.608591, 0.307436, -0.731506,
		-0.680114, 0.676984, -0.281313,
		28.372292, 31.337955, 20.044596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234062, 31.553822, 19.968544>,  <28.848372, 30.864067, 20.241516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234062, 31.553822, 19.968544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864216, 31.633533, 20.098391>,  <28.642309, 31.681360, 20.176298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864216, 31.633533, 20.098391>,  <29.234062, 31.553822, 19.968544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864216, 31.633533, 20.098391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330000, 0.844714, 0.421377,
		-0.190237, 0.496735, -0.846797,
		-0.924614, 0.199281, 0.324618,
		28.586832, 31.693317, 20.195776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232136, 32.317810, 20.025846>,  <29.234062, 31.553822, 19.968544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232136, 32.317810, 20.025846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919525, 32.196556, 20.243958>,  <28.731958, 32.123802, 20.374825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.919525, 32.196556, 20.243958>,  <29.232136, 32.317810, 20.025846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919525, 32.196556, 20.243958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096280, 0.804942, 0.585490,
		-0.616400, 0.510075, -0.599896,
		-0.781525, -0.303138, 0.545276,
		28.685068, 32.105614, 20.407541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151789, 32.843884, 20.489319>,  <29.232136, 32.317810, 20.025846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151789, 32.843884, 20.489319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887846, 32.590488, 20.650951>,  <28.729481, 32.438450, 20.747931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887846, 32.590488, 20.650951>,  <29.151789, 32.843884, 20.489319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887846, 32.590488, 20.650951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022308, 0.554055, 0.832181,
		-0.751059, 0.540108, -0.379730,
		-0.659858, -0.633487, 0.404080,
		28.689888, 32.400444, 20.772175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645483, 33.268085, 20.780079>,  <29.151789, 32.843884, 20.489319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645483, 33.268085, 20.780079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681019, 32.904854, 20.943787>,  <28.702341, 32.686916, 21.042011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681019, 32.904854, 20.943787>,  <28.645483, 33.268085, 20.780079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681019, 32.904854, 20.943787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077943, 0.415973, 0.906031,
		-0.992991, -0.048594, 0.107734,
		0.088842, -0.908078, 0.409270,
		28.707672, 32.632431, 21.066568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188711, 33.378521, 21.231037>,  <28.645483, 33.268085, 20.780079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188711, 33.378521, 21.231037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422173, 33.078335, 21.355070>,  <28.562250, 32.898224, 21.429489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422173, 33.078335, 21.355070>,  <28.188711, 33.378521, 21.231037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422173, 33.078335, 21.355070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112104, 0.452687, 0.884594,
		-0.804228, -0.481534, 0.348342,
		0.583653, -0.750466, 0.310081,
		28.597269, 32.853195, 21.448095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033945, 33.292530, 21.848471>,  <28.188711, 33.378521, 21.231037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033945, 33.292530, 21.848471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362354, 33.065147, 21.869577>,  <28.559399, 32.928719, 21.882240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.362354, 33.065147, 21.869577>,  <28.033945, 33.292530, 21.848471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362354, 33.065147, 21.869577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181142, 0.347040, 0.920191,
		-0.541397, -0.745938, 0.387898,
		0.821022, -0.568453, 0.052766,
		28.608662, 32.894611, 21.885406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136557, 33.147335, 22.513334>,  <28.033945, 33.292530, 21.848471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136557, 33.147335, 22.513334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499205, 33.019321, 22.403336>,  <28.716793, 32.942513, 22.337336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.499205, 33.019321, 22.403336>,  <28.136557, 33.147335, 22.513334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499205, 33.019321, 22.403336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339848, 0.167551, 0.925435,
		-0.250091, -0.932474, 0.260666,
		0.906619, -0.320030, -0.274996,
		28.771191, 32.923313, 22.320837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318874, 32.648060, 22.964045>,  <28.136557, 33.147335, 22.513334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318874, 32.648060, 22.964045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661745, 32.800125, 22.825062>,  <28.867468, 32.891365, 22.741673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661745, 32.800125, 22.825062>,  <28.318874, 32.648060, 22.964045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661745, 32.800125, 22.825062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353310, 0.056822, 0.933779,
		0.374731, -0.923172, -0.085609,
		0.857175, 0.380163, -0.347459,
		28.918898, 32.914173, 22.720823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797911, 32.320484, 23.304867>,  <28.318874, 32.648060, 22.964045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797911, 32.320484, 23.304867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010958, 32.632896, 23.174448>,  <29.138786, 32.820343, 23.096197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010958, 32.632896, 23.174448>,  <28.797911, 32.320484, 23.304867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010958, 32.632896, 23.174448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407692, 0.100835, 0.907534,
		0.741692, -0.616295, -0.264715,
		0.532616, 0.781034, -0.326048,
		29.170742, 32.867207, 23.076633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586140, 32.180943, 23.396463>,  <28.797911, 32.320484, 23.304867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586140, 32.180943, 23.396463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511145, 32.573826, 23.400785>,  <29.466148, 32.809555, 23.403379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.511145, 32.573826, 23.400785>,  <29.586140, 32.180943, 23.396463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511145, 32.573826, 23.400785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511968, 0.088326, 0.854452,
		0.838295, 0.165729, -0.519418,
		-0.187485, 0.982208, 0.010805,
		29.454899, 32.868488, 23.404026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220743, 32.487270, 23.662579>,  <29.586140, 32.180943, 23.396463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220743, 32.487270, 23.662579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932192, 32.756172, 23.729137>,  <29.759062, 32.917515, 23.769072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932192, 32.756172, 23.729137>,  <30.220743, 32.487270, 23.662579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932192, 32.756172, 23.729137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469533, 0.298140, 0.831054,
		0.509072, 0.677631, -0.530718,
		-0.721377, 0.672256, 0.166396,
		29.715778, 32.957848, 23.779057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513613, 33.067230, 23.859474>,  <30.220743, 32.487270, 23.662579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513613, 33.067230, 23.859474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148046, 33.154896, 23.996134>,  <29.928707, 33.207497, 24.078131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148046, 33.154896, 23.996134>,  <30.513613, 33.067230, 23.859474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148046, 33.154896, 23.996134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405793, 0.512872, 0.756501,
		-0.009426, 0.830018, -0.557657,
		-0.913916, 0.219162, 0.341650,
		29.873871, 33.220646, 24.098629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729727, 33.687115, 24.248060>,  <30.513613, 33.067230, 23.859474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729727, 33.687115, 24.248060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356070, 33.598850, 24.360264>,  <30.131876, 33.545891, 24.427586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356070, 33.598850, 24.360264>,  <30.729727, 33.687115, 24.248060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356070, 33.598850, 24.360264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151326, 0.466936, 0.871247,
		-0.323229, 0.856318, -0.402793,
		-0.934143, -0.220659, 0.280510,
		30.075827, 33.532654, 24.444416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510336, 34.210613, 24.652117>,  <30.729727, 33.687115, 24.248060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510336, 34.210613, 24.652117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255363, 33.922485, 24.761534>,  <30.102381, 33.749611, 24.827185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255363, 33.922485, 24.761534>,  <30.510336, 34.210613, 24.652117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255363, 33.922485, 24.761534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211522, 0.177786, 0.961067,
		-0.740905, 0.670474, 0.039037,
		-0.637431, -0.720317, 0.273543,
		30.064135, 33.706390, 24.843597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027451, 34.462456, 25.099060>,  <30.510336, 34.210613, 24.652117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027451, 34.462456, 25.099060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019815, 34.068520, 25.168034>,  <30.015234, 33.832157, 25.209417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019815, 34.068520, 25.168034>,  <30.027451, 34.462456, 25.099060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019815, 34.068520, 25.168034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165837, 0.166956, 0.971918,
		-0.985968, 0.047149, 0.160135,
		-0.019089, -0.984836, 0.172433,
		30.014090, 33.773067, 25.219763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682777, 34.384457, 25.689957>,  <30.027451, 34.462456, 25.099060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682777, 34.384457, 25.689957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890835, 34.043442, 25.669422>,  <30.015669, 33.838833, 25.657101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890835, 34.043442, 25.669422>,  <29.682777, 34.384457, 25.689957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890835, 34.043442, 25.669422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148864, 0.031307, 0.988362,
		-0.841006, -0.521732, 0.143196,
		0.520143, -0.852535, -0.051338,
		30.046877, 33.787682, 25.654020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346605, 34.042164, 26.204643>,  <29.682777, 34.384457, 25.689957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346605, 34.042164, 26.204643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676331, 33.820484, 26.158382>,  <29.874165, 33.687477, 26.130627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.676331, 33.820484, 26.158382>,  <29.346605, 34.042164, 26.204643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676331, 33.820484, 26.158382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183521, 0.068324, 0.980639,
		-0.535566, -0.829576, 0.158027,
		0.824311, -0.554198, -0.115652,
		29.923624, 33.654224, 26.123686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306330, 33.649181, 26.775959>,  <29.346605, 34.042164, 26.204643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306330, 33.649181, 26.775959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685108, 33.621437, 26.650431>,  <29.912374, 33.604790, 26.575113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685108, 33.621437, 26.650431>,  <29.306330, 33.649181, 26.775959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685108, 33.621437, 26.650431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317270, 0.045797, 0.947229,
		-0.051326, -0.996540, 0.065372,
		0.946945, -0.069358, -0.313821,
		29.969193, 33.600632, 26.556284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709951, 33.020760, 27.032232>,  <29.306330, 33.649181, 26.775959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709951, 33.020760, 27.032232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007465, 33.266872, 26.927757>,  <30.185974, 33.414539, 26.865072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007465, 33.266872, 26.927757>,  <29.709951, 33.020760, 27.032232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007465, 33.266872, 26.927757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378269, -0.065289, 0.923390,
		0.551089, -0.785602, -0.281302,
		0.743783, 0.615278, -0.261189,
		30.230600, 33.451454, 26.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416059, 32.678635, 27.268311>,  <29.709951, 33.020760, 27.032232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416059, 32.678635, 27.268311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467621, 33.071705, 27.215040>,  <30.498558, 33.307549, 27.183079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467621, 33.071705, 27.215040>,  <30.416059, 32.678635, 27.268311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467621, 33.071705, 27.215040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498623, 0.051854, 0.865267,
		0.857180, -0.177941, -0.483300,
		0.128905, 0.982674, -0.133174,
		30.506292, 33.366508, 27.175089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.665344, 31.541937, 30.125570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597679, 31.922401, 30.022282>,  <35.557079, 32.150681, 29.960308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597679, 31.922401, 30.022282>,  <35.665344, 31.541937, 30.125570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597679, 31.922401, 30.022282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849969, 0.273420, 0.450326,
		0.498935, -0.143301, -0.854710,
		-0.169162, 0.951161, -0.258220,
		35.546932, 32.207748, 29.944815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324219, 31.867931, 29.870741>,  <35.665344, 31.541937, 30.125570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324219, 31.867931, 29.870741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120014, 32.195259, 29.976362>,  <35.997490, 32.391655, 30.039736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.120014, 32.195259, 29.976362>,  <36.324219, 31.867931, 29.870741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120014, 32.195259, 29.976362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793818, 0.330496, 0.510515,
		0.330496, 0.470237, -0.818321,
		-0.510515, 0.818321, 0.264055,
		35.966858, 32.440754, 30.055578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791122, 32.532661, 29.767151>,  <36.324219, 31.867931, 29.870741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791122, 32.532661, 29.767151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496742, 32.644104, 30.013971>,  <36.320114, 32.710972, 30.162064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496742, 32.644104, 30.013971>,  <36.791122, 32.532661, 29.767151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496742, 32.644104, 30.013971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671080, 0.420815, 0.610382,
		-0.089608, 0.863303, -0.496668,
		-0.735950, 0.278608, 0.617053,
		36.275959, 32.727688, 30.199087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013954, 33.182991, 29.976154>,  <36.791122, 32.532661, 29.767151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013954, 33.182991, 29.976154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735435, 33.090706, 30.248018>,  <36.568325, 33.035336, 30.411137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735435, 33.090706, 30.248018>,  <37.013954, 33.182991, 29.976154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735435, 33.090706, 30.248018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495653, 0.530330, 0.687807,
		-0.519128, 0.815796, -0.254916,
		-0.696300, -0.230710, 0.679661,
		36.526546, 33.021492, 30.451916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670982, 33.868656, 30.275675>,  <37.013954, 33.182991, 29.976154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670982, 33.868656, 30.275675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619236, 33.573704, 30.540861>,  <36.588188, 33.396732, 30.699974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.619236, 33.573704, 30.540861>,  <36.670982, 33.868656, 30.275675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619236, 33.573704, 30.540861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352122, 0.590849, 0.725884,
		-0.926970, 0.327352, 0.183212,
		-0.129369, -0.737386, 0.662968,
		36.580425, 33.352489, 30.739752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334339, 34.261257, 30.823458>,  <36.670982, 33.868656, 30.275675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334339, 34.261257, 30.823458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.500664, 33.929981, 30.973766>,  <36.600456, 33.731216, 31.063951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.500664, 33.929981, 30.973766>,  <36.334339, 34.261257, 30.823458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500664, 33.929981, 30.973766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263137, 0.505072, 0.821986,
		-0.870553, -0.242909, 0.427941,
		0.415809, -0.828189, 0.375774,
		36.625408, 33.681526, 31.086498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966007, 34.271362, 31.422295>,  <36.334339, 34.261257, 30.823458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966007, 34.271362, 31.422295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.296318, 34.047546, 31.450592>,  <36.494503, 33.913258, 31.467571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.296318, 34.047546, 31.450592>,  <35.966007, 34.271362, 31.422295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296318, 34.047546, 31.450592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289881, 0.528678, 0.797790,
		-0.483798, -0.638290, 0.598770,
		0.825778, -0.559541, 0.070745,
		36.544052, 33.879684, 31.471815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916752, 33.938934, 32.079197>,  <35.966007, 34.271362, 31.422295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916752, 33.938934, 32.079197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310177, 33.921909, 32.009007>,  <36.546234, 33.911694, 31.966894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310177, 33.921909, 32.009007>,  <35.916752, 33.938934, 32.079197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310177, 33.921909, 32.009007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170166, 0.543457, 0.822008,
		0.060376, -0.838357, 0.541767,
		0.983564, -0.042561, -0.175472,
		36.605247, 33.909142, 31.956366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146912, 33.910576, 32.734692>,  <35.916752, 33.938934, 32.079197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146912, 33.910576, 32.734692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463985, 33.989407, 32.503933>,  <36.654228, 34.036705, 32.365479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463985, 33.989407, 32.503933>,  <36.146912, 33.910576, 32.734692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463985, 33.989407, 32.503933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383583, 0.574275, 0.723237,
		0.473830, -0.794588, 0.379625,
		0.792685, 0.197074, -0.576900,
		36.701790, 34.048527, 32.330864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665169, 33.775326, 33.189186>,  <36.146912, 33.910576, 32.734692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665169, 33.775326, 33.189186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798534, 34.023201, 32.904984>,  <36.878555, 34.171925, 32.734463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798534, 34.023201, 32.904984>,  <36.665169, 33.775326, 33.189186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798534, 34.023201, 32.904984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434275, 0.567967, 0.699156,
		0.836804, -0.541664, -0.079747,
		0.333414, 0.619688, -0.710508,
		36.898560, 34.209106, 32.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303478, 33.888729, 33.426605>,  <36.665169, 33.775326, 33.189186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303478, 33.888729, 33.426605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199734, 34.201015, 33.199196>,  <37.137489, 34.388386, 33.062752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199734, 34.201015, 33.199196>,  <37.303478, 33.888729, 33.426605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199734, 34.201015, 33.199196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392787, 0.623051, 0.676406,
		0.882299, -0.047876, -0.468249,
		-0.259360, 0.780714, -0.568523,
		37.121925, 34.435230, 33.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880253, 34.300301, 33.575119>,  <37.303478, 33.888729, 33.426605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880253, 34.300301, 33.575119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598640, 34.532852, 33.411980>,  <37.429672, 34.672382, 33.314095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598640, 34.532852, 33.411980>,  <37.880253, 34.300301, 33.575119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598640, 34.532852, 33.411980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224653, 0.727127, 0.648704,
		0.673702, 0.365082, -0.642527,
		-0.704029, 0.581379, -0.407851,
		37.387432, 34.707264, 33.289623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186672, 35.019424, 33.353489>,  <37.880253, 34.300301, 33.575119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186672, 35.019424, 33.353489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 35.073551, 33.422012>,  <37.562107, 35.106026, 33.463127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 35.073551, 33.422012>,  <38.186672, 35.019424, 33.353489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796318, 35.073551, 33.422012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208003, 0.814549, 0.541520,
		-0.066264, 0.564092, -0.823049,
		-0.975881, 0.135314, 0.171308,
		37.503555, 35.114143, 33.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269012, 35.703266, 33.162975>,  <38.186672, 35.019424, 33.353489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269012, 35.703266, 33.162975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965919, 35.684525, 33.423325>,  <37.784061, 35.673279, 33.579536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965919, 35.684525, 33.423325>,  <38.269012, 35.703266, 33.162975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965919, 35.684525, 33.423325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176849, 0.945349, 0.273933,
		-0.628141, 0.322676, -0.708039,
		-0.757736, -0.046852, 0.650878,
		37.738598, 35.670467, 33.618587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656265, 35.964729, 33.675022>,  <38.269012, 35.703266, 33.162975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656265, 35.964729, 33.675022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832172, 36.308830, 33.571808>,  <38.937717, 36.515289, 33.509880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832172, 36.308830, 33.571808>,  <38.656265, 35.964729, 33.675022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832172, 36.308830, 33.571808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727626, 0.172847, -0.663841,
		-0.526468, 0.479685, 0.701950,
		0.439764, 0.860248, -0.258033,
		38.964100, 36.566906, 33.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119968, 36.481171, 33.701557>,  <38.656265, 35.964729, 33.675022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119968, 36.481171, 33.701557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421726, 36.591503, 33.463295>,  <38.602779, 36.657703, 33.320335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.421726, 36.591503, 33.463295>,  <38.119968, 36.481171, 33.701557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421726, 36.591503, 33.463295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643373, 0.130643, -0.754323,
		-0.130247, 0.952286, 0.276019,
		0.754392, 0.275831, -0.595659,
		38.648045, 36.674252, 33.284595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921879, 37.005608, 33.285637>,  <38.119968, 36.481171, 33.701557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921879, 37.005608, 33.285637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224766, 36.862801, 33.066853>,  <38.406498, 36.777115, 32.935581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224766, 36.862801, 33.066853>,  <37.921879, 37.005608, 33.285637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224766, 36.862801, 33.066853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547743, 0.109085, -0.829505,
		0.355815, 0.927705, -0.112954,
		0.757215, -0.357020, -0.546958,
		38.451931, 36.755695, 32.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784222, 37.240566, 32.677299>,  <37.921879, 37.005608, 33.285637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784222, 37.240566, 32.677299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077560, 36.987289, 32.578281>,  <38.253563, 36.835323, 32.518871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077560, 36.987289, 32.578281>,  <37.784222, 37.240566, 32.677299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077560, 36.987289, 32.578281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447311, -0.175177, -0.877055,
		0.511978, 0.753912, -0.411698,
		0.733343, -0.633190, -0.247547,
		38.297562, 36.797333, 32.504017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103432, 37.505264, 31.987585>,  <37.784222, 37.240566, 32.677299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103432, 37.505264, 31.987585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200916, 37.118816, 32.021584>,  <38.259407, 36.886948, 32.041985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.200916, 37.118816, 32.021584>,  <38.103432, 37.505264, 31.987585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200916, 37.118816, 32.021584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318984, -0.162613, -0.933706,
		0.915890, 0.200442, -0.347806,
		0.243711, -0.966116, 0.084998,
		38.274029, 36.828983, 32.047081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629078, 37.344692, 31.422066>,  <38.103432, 37.505264, 31.987585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629078, 37.344692, 31.422066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464100, 37.007141, 31.559336>,  <38.365112, 36.804611, 31.641699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.464100, 37.007141, 31.559336>,  <38.629078, 37.344692, 31.422066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464100, 37.007141, 31.559336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217604, -0.274545, -0.936629,
		0.884613, -0.460981, -0.070397,
		-0.412441, -0.843873, 0.343177,
		38.340366, 36.753979, 31.662289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719086, 36.832355, 30.864382>,  <38.629078, 37.344692, 31.422066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719086, 36.832355, 30.864382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388405, 36.723251, 31.061226>,  <38.189999, 36.657791, 31.179333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.388405, 36.723251, 31.061226>,  <38.719086, 36.832355, 30.864382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388405, 36.723251, 31.061226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456944, -0.184849, -0.870077,
		0.328287, -0.944158, 0.028179,
		-0.826698, -0.272759, 0.492110,
		38.140396, 36.641422, 31.208858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532387, 36.101948, 30.561300>,  <38.719086, 36.832355, 30.864382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532387, 36.101948, 30.561300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 36.267544, 30.737177>,  <38.022278, 36.366901, 30.842703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213570, 36.267544, 30.737177>,  <38.532387, 36.101948, 30.561300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213570, 36.267544, 30.737177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561184, -0.238717, -0.792519,
		-0.223126, -0.878427, 0.422589,
		-0.797049, 0.413982, 0.439695,
		37.974457, 36.391739, 30.869085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995590, 35.628998, 30.431656>,  <38.532387, 36.101948, 30.561300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995590, 35.628998, 30.431656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761414, 35.922581, 30.569393>,  <37.620907, 36.098728, 30.652035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761414, 35.922581, 30.569393>,  <37.995590, 35.628998, 30.431656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761414, 35.922581, 30.569393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705899, -0.252597, -0.661740,
		-0.398709, -0.630478, 0.665979,
		-0.585437, 0.733956, 0.344341,
		37.585781, 36.142769, 30.672695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342396, 35.335976, 30.520220>,  <37.995590, 35.628998, 30.431656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342396, 35.335976, 30.520220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270172, 35.727135, 30.478054>,  <37.226837, 35.961830, 30.452755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270172, 35.727135, 30.478054>,  <37.342396, 35.335976, 30.520220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270172, 35.727135, 30.478054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736754, -0.205472, -0.644185,
		-0.651608, -0.038646, 0.757571,
		-0.180555, 0.977900, -0.105415,
		37.216007, 36.020504, 30.446430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645344, 35.401558, 30.230751>,  <37.342396, 35.335976, 30.520220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645344, 35.401558, 30.230751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793842, 35.764511, 30.151928>,  <36.882942, 35.982281, 30.104633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.793842, 35.764511, 30.151928>,  <36.645344, 35.401558, 30.230751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793842, 35.764511, 30.151928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576797, 0.059051, -0.814750,
		-0.727653, 0.416140, 0.545298,
		0.371250, 0.907381, -0.197060,
		36.905216, 36.036724, 30.092810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049568, 35.859112, 30.150496>,  <36.645344, 35.401558, 30.230751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049568, 35.859112, 30.150496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368217, 36.014725, 29.965437>,  <36.559406, 36.108093, 29.854401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368217, 36.014725, 29.965437>,  <36.049568, 35.859112, 30.150496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368217, 36.014725, 29.965437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526508, 0.070577, -0.847236,
		-0.296950, 0.918517, 0.261052,
		0.796624, 0.389033, -0.462648,
		36.607204, 36.131435, 29.826643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754803, 36.390236, 29.770922>,  <36.049568, 35.859112, 30.150496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754803, 36.390236, 29.770922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107849, 36.339897, 29.589746>,  <36.319675, 36.309696, 29.481041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107849, 36.339897, 29.589746>,  <35.754803, 36.390236, 29.770922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107849, 36.339897, 29.589746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465075, -0.093332, -0.880338,
		0.068511, 0.987650, -0.140904,
		0.882616, -0.125844, -0.452937,
		36.372635, 36.302143, 29.453865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837746, 36.918991, 29.300722>,  <35.754803, 36.390236, 29.770922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837746, 36.918991, 29.300722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067791, 36.614159, 29.181749>,  <36.205818, 36.431259, 29.110365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.067791, 36.614159, 29.181749>,  <35.837746, 36.918991, 29.300722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067791, 36.614159, 29.181749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475313, -0.015370, -0.879683,
		0.665821, 0.647295, -0.371069,
		0.575117, -0.762085, -0.297434,
		36.240326, 36.385532, 29.092520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276157, 37.228249, 28.816044>,  <35.837746, 36.918991, 29.300722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276157, 37.228249, 28.816044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222168, 37.560043, 28.599253>,  <36.189774, 37.759121, 28.469179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222168, 37.560043, 28.599253>,  <36.276157, 37.228249, 28.816044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222168, 37.560043, 28.599253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098629, 0.555512, 0.825638,
		0.985928, 0.057984, -0.156791,
		-0.134973, 0.829484, -0.541976,
		36.181675, 37.808887, 28.436661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947323, 37.685551, 28.887384>,  <36.276157, 37.228249, 28.816044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947323, 37.685551, 28.887384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640831, 37.915981, 28.773520>,  <36.456936, 38.054241, 28.705200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640831, 37.915981, 28.773520>,  <36.947323, 37.685551, 28.887384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640831, 37.915981, 28.773520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113796, 0.557657, 0.822235,
		0.632415, 0.597623, -0.492846,
		-0.766225, 0.576078, -0.284663,
		36.410965, 38.088806, 28.688120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206364, 38.323013, 29.053694>,  <36.947323, 37.685551, 28.887384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206364, 38.323013, 29.053694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810448, 38.366055, 29.016294>,  <36.572899, 38.391880, 28.993855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810448, 38.366055, 29.016294>,  <37.206364, 38.323013, 29.053694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810448, 38.366055, 29.016294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032319, 0.469431, 0.882377,
		0.138841, 0.876387, -0.461159,
		-0.989787, 0.107606, -0.093500,
		36.513512, 38.398335, 28.988245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038013, 39.089603, 29.123013>,  <37.206364, 38.323013, 29.053694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038013, 39.089603, 29.123013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719601, 38.873020, 29.231201>,  <36.528553, 38.743069, 29.296114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.719601, 38.873020, 29.231201>,  <37.038013, 39.089603, 29.123013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719601, 38.873020, 29.231201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161684, 0.620870, 0.767058,
		-0.583259, 0.566872, -0.581777,
		-0.796032, -0.541458, 0.270474,
		36.480793, 38.710583, 29.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516575, 39.615246, 29.389936>,  <37.038013, 39.089603, 29.123013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516575, 39.615246, 29.389936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369930, 39.268845, 29.525955>,  <36.281944, 39.061005, 29.607567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369930, 39.268845, 29.525955>,  <36.516575, 39.615246, 29.389936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369930, 39.268845, 29.525955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395467, 0.475882, 0.785584,
		-0.842143, 0.153523, -0.516939,
		-0.366607, -0.866006, 0.340048,
		36.259949, 39.009045, 29.627970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849384, 39.831715, 29.625261>,  <36.516575, 39.615246, 29.389936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849384, 39.831715, 29.625261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.914093, 39.488403, 29.820066>,  <35.952919, 39.282417, 29.936949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.914093, 39.488403, 29.820066>,  <35.849384, 39.831715, 29.625261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914093, 39.488403, 29.820066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270162, 0.436139, 0.858368,
		-0.949127, -0.270434, -0.161319,
		0.161774, -0.858282, 0.487012,
		35.962624, 39.230919, 29.966169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327019, 39.673904, 30.131363>,  <35.849384, 39.831715, 29.625261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327019, 39.673904, 30.131363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.606953, 39.431011, 30.281830>,  <35.774914, 39.285275, 30.372110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.606953, 39.431011, 30.281830>,  <35.327019, 39.673904, 30.131363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606953, 39.431011, 30.281830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209472, 0.328999, 0.920805,
		-0.682902, -0.723206, 0.103046,
		0.699834, -0.607234, 0.376165,
		35.816902, 39.248840, 30.394680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025341, 39.414898, 30.725330>,  <35.327019, 39.673904, 30.131363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025341, 39.414898, 30.725330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.416241, 39.348557, 30.778210>,  <35.650780, 39.308750, 30.809937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.416241, 39.348557, 30.778210>,  <35.025341, 39.414898, 30.725330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416241, 39.348557, 30.778210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117710, 0.094377, 0.988553,
		-0.176436, -0.981623, 0.072706,
		0.977249, -0.165858, 0.132199,
		35.709415, 39.298801, 30.817869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959969, 38.967705, 31.269175>,  <35.025341, 39.414898, 30.725330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959969, 38.967705, 31.269175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339432, 39.093132, 31.285755>,  <35.567112, 39.168388, 31.295704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339432, 39.093132, 31.285755>,  <34.959969, 38.967705, 31.269175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339432, 39.093132, 31.285755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044968, 0.003981, 0.998981,
		0.313084, -0.949557, 0.017877,
		0.948660, 0.313568, 0.041453,
		35.624031, 39.187202, 31.298191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227837, 38.570095, 31.827185>,  <34.959969, 38.967705, 31.269175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227837, 38.570095, 31.827185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514565, 38.843884, 31.774027>,  <35.686604, 39.008156, 31.742132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514565, 38.843884, 31.774027>,  <35.227837, 38.570095, 31.827185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514565, 38.843884, 31.774027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035206, 0.154823, 0.987315,
		0.696365, -0.712409, 0.086884,
		0.716824, 0.684473, -0.132895,
		35.729610, 39.049225, 31.734159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770927, 38.377701, 32.189556>,  <35.227837, 38.570095, 31.827185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770927, 38.377701, 32.189556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785461, 38.775703, 32.152370>,  <35.794182, 39.014503, 32.130058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785461, 38.775703, 32.152370>,  <35.770927, 38.377701, 32.189556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785461, 38.775703, 32.152370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184846, 0.084729, 0.979108,
		0.982095, -0.052762, -0.180845,
		0.036337, 0.995006, -0.092965,
		35.796364, 39.074203, 32.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334099, 38.573376, 32.502281>,  <35.770927, 38.377701, 32.189556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334099, 38.573376, 32.502281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.137840, 38.921860, 32.495770>,  <36.020084, 39.130951, 32.491863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.137840, 38.921860, 32.495770>,  <36.334099, 38.573376, 32.502281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137840, 38.921860, 32.495770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283393, 0.177211, 0.942489,
		0.823986, 0.457818, -0.333842,
		-0.490648, 0.871206, -0.016277,
		35.990646, 39.183220, 32.490887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.327324, 36.572063, 24.732679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013500, 36.813473, 24.789576>,  <35.825207, 36.958317, 24.823713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013500, 36.813473, 24.789576>,  <36.327324, 36.572063, 24.732679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013500, 36.813473, 24.789576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319846, 0.197382, 0.926682,
		0.531199, 0.772528, -0.347892,
		-0.784555, 0.603524, 0.142241,
		35.778133, 36.994530, 24.832249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612446, 37.166443, 24.989872>,  <36.327324, 36.572063, 24.732679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612446, 37.166443, 24.989872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229115, 37.188164, 25.102060>,  <35.999115, 37.201199, 25.169373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229115, 37.188164, 25.102060>,  <36.612446, 37.166443, 24.989872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229115, 37.188164, 25.102060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283315, 0.054581, 0.957473,
		0.036688, 0.997032, -0.067692,
		-0.958325, 0.054306, 0.280471,
		35.941616, 37.204456, 25.186201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609329, 37.785088, 25.277231>,  <36.612446, 37.166443, 24.989872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609329, 37.785088, 25.277231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283230, 37.600143, 25.416710>,  <36.087570, 37.489178, 25.500397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283230, 37.600143, 25.416710>,  <36.609329, 37.785088, 25.277231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283230, 37.600143, 25.416710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181801, 0.367348, 0.912142,
		-0.549834, 0.807017, -0.215422,
		-0.815249, -0.462363, 0.348697,
		36.038654, 37.461433, 25.521318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381405, 38.255005, 25.779184>,  <36.609329, 37.785088, 25.277231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381405, 38.255005, 25.779184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207371, 37.911076, 25.886074>,  <36.102951, 37.704720, 25.950207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207371, 37.911076, 25.886074>,  <36.381405, 38.255005, 25.779184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207371, 37.911076, 25.886074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014724, 0.303541, 0.952705,
		-0.900269, 0.410573, -0.144726,
		-0.435085, -0.859821, 0.267223,
		36.076843, 37.653130, 25.966242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058231, 38.498180, 26.284531>,  <36.381405, 38.255005, 25.779184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058231, 38.498180, 26.284531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013199, 38.102329, 26.320223>,  <35.986179, 37.864819, 26.341639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013199, 38.102329, 26.320223>,  <36.058231, 38.498180, 26.284531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013199, 38.102329, 26.320223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067324, 0.097191, 0.992986,
		-0.991359, 0.105783, -0.077567,
		-0.112580, -0.989628, 0.089229,
		35.979424, 37.805439, 26.346992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513783, 38.440907, 26.748913>,  <36.058231, 38.498180, 26.284531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513783, 38.440907, 26.748913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731209, 38.105198, 26.743910>,  <35.861664, 37.903770, 26.740908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731209, 38.105198, 26.743910>,  <35.513783, 38.440907, 26.748913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731209, 38.105198, 26.743910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045765, 0.014757, 0.998843,
		-0.838120, -0.543506, 0.046431,
		0.543562, -0.839276, -0.012505,
		35.894276, 37.853416, 26.740158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193020, 37.964550, 27.252447>,  <35.513783, 38.440907, 26.748913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193020, 37.964550, 27.252447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577644, 37.856808, 27.231075>,  <35.808418, 37.792164, 27.218252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577644, 37.856808, 27.231075>,  <35.193020, 37.964550, 27.252447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577644, 37.856808, 27.231075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, 0.076821, 0.994086,
		-0.263655, -0.959973, 0.094543,
		0.961558, -0.269353, -0.053431,
		35.866112, 37.776001, 27.215046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237625, 37.601059, 27.799280>,  <35.193020, 37.964550, 27.252447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237625, 37.601059, 27.799280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624302, 37.633060, 27.702040>,  <35.856308, 37.652260, 27.643696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624302, 37.633060, 27.702040>,  <35.237625, 37.601059, 27.799280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624302, 37.633060, 27.702040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235451, 0.094298, 0.967301,
		0.100295, -0.992325, 0.072324,
		0.966698, 0.079987, -0.243102,
		35.914310, 37.657059, 27.629108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606510, 37.166725, 28.276777>,  <35.237625, 37.601059, 27.799280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606510, 37.166725, 28.276777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830635, 37.465485, 28.133562>,  <35.965111, 37.644741, 28.047632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830635, 37.465485, 28.133562>,  <35.606510, 37.166725, 28.276777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830635, 37.465485, 28.133562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065517, 0.390945, 0.918079,
		0.825687, -0.537867, 0.170116,
		0.560311, 0.746901, -0.358038,
		35.998730, 37.689556, 28.026152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173321, 36.872723, 27.847012>,  <35.606510, 37.166725, 28.276777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173321, 36.872723, 27.847012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268902, 36.566555, 28.086023>,  <36.326252, 36.382854, 28.229429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268902, 36.566555, 28.086023>,  <36.173321, 36.872723, 27.847012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268902, 36.566555, 28.086023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090266, -0.630199, -0.771169,
		0.966826, 0.130338, -0.219680,
		0.238954, -0.765415, 0.597528,
		36.340588, 36.336929, 28.265282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651443, 36.452309, 27.433964>,  <36.173321, 36.872723, 27.847012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651443, 36.452309, 27.433964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489147, 36.233753, 27.727039>,  <36.391769, 36.102619, 27.902885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489147, 36.233753, 27.727039>,  <36.651443, 36.452309, 27.433964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489147, 36.233753, 27.727039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229901, -0.714852, -0.660403,
		0.884604, -0.436395, 0.164425,
		-0.405736, -0.546393, 0.732689,
		36.367428, 36.069836, 27.946846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895802, 35.711071, 27.387178>,  <36.651443, 36.452309, 27.433964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895802, 35.711071, 27.387178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568981, 35.691143, 27.616943>,  <36.372890, 35.679188, 27.754803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568981, 35.691143, 27.616943>,  <36.895802, 35.711071, 27.387178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568981, 35.691143, 27.616943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317785, -0.792367, -0.520736,
		0.481087, -0.608007, 0.631572,
		-0.817048, -0.049815, 0.574413,
		36.323868, 35.676197, 27.789267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805042, 34.980751, 27.438042>,  <36.895802, 35.711071, 27.387178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805042, 34.980751, 27.438042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458019, 35.151035, 27.540894>,  <36.249805, 35.253208, 27.602604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458019, 35.151035, 27.540894>,  <36.805042, 34.980751, 27.438042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458019, 35.151035, 27.540894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496926, -0.720871, -0.483125,
		-0.020315, -0.546912, 0.836943,
		-0.867555, 0.425714, 0.257131,
		36.197754, 35.278751, 27.618032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329205, 34.400494, 27.654818>,  <36.805042, 34.980751, 27.438042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329205, 34.400494, 27.654818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120014, 34.714203, 27.521301>,  <35.994499, 34.902428, 27.441191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120014, 34.714203, 27.521301>,  <36.329205, 34.400494, 27.654818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120014, 34.714203, 27.521301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546826, -0.609114, -0.574423,
		-0.653821, -0.117881, 0.747410,
		-0.522972, 0.784273, -0.333791,
		35.963123, 34.949486, 27.421164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728374, 34.121666, 27.721754>,  <36.329205, 34.400494, 27.654818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728374, 34.121666, 27.721754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679619, 34.425106, 27.465731>,  <35.650368, 34.607170, 27.312117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679619, 34.425106, 27.465731>,  <35.728374, 34.121666, 27.721754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679619, 34.425106, 27.465731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496905, -0.604871, -0.622267,
		-0.859203, 0.242201, 0.450676,
		-0.121887, 0.758597, -0.640058,
		35.643051, 34.652683, 27.273714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003353, 34.221107, 27.553802>,  <35.728374, 34.121666, 27.721754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003353, 34.221107, 27.553802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219543, 34.330719, 27.235607>,  <35.349258, 34.396484, 27.044691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219543, 34.330719, 27.235607>,  <35.003353, 34.221107, 27.553802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219543, 34.330719, 27.235607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540313, -0.611707, -0.577820,
		-0.644943, 0.742108, -0.182549,
		0.540471, 0.274028, -0.795487,
		35.381683, 34.412926, 26.996962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450932, 34.067417, 27.139267>,  <35.003353, 34.221107, 27.553802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450932, 34.067417, 27.139267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747734, 34.168930, 26.891066>,  <34.925816, 34.229836, 26.742146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747734, 34.168930, 26.891066>,  <34.450932, 34.067417, 27.139267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747734, 34.168930, 26.891066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375171, -0.609876, -0.698067,
		-0.555586, 0.750764, -0.357321,
		0.742005, 0.253780, -0.620503,
		34.970337, 34.245064, 26.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135460, 34.236420, 26.488033>,  <34.450932, 34.067417, 27.139267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135460, 34.236420, 26.488033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510765, 34.188648, 26.358177>,  <34.735950, 34.159985, 26.280264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510765, 34.188648, 26.358177>,  <34.135460, 34.236420, 26.488033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510765, 34.188648, 26.358177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328254, -0.603430, -0.726720,
		-0.109107, 0.788422, -0.605381,
		0.938267, -0.119428, -0.324641,
		34.792244, 34.152821, 26.260784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065178, 34.228912, 25.771618>,  <34.135460, 34.236420, 26.488033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065178, 34.228912, 25.771618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423950, 34.064632, 25.837139>,  <34.639214, 33.966064, 25.876451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423950, 34.064632, 25.837139>,  <34.065178, 34.228912, 25.771618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423950, 34.064632, 25.837139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072839, -0.502639, -0.861422,
		0.436122, 0.760708, -0.480750,
		0.896935, -0.410703, 0.163803,
		34.693031, 33.941422, 25.886280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523575, 34.300484, 25.096016>,  <34.065178, 34.228912, 25.771618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523575, 34.300484, 25.096016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646267, 33.993080, 25.320629>,  <34.719883, 33.808640, 25.455397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646267, 33.993080, 25.320629>,  <34.523575, 34.300484, 25.096016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646267, 33.993080, 25.320629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224241, -0.631710, -0.742064,
		0.925005, 0.101692, -0.366092,
		0.306726, -0.768506, 0.561532,
		34.738285, 33.762527, 25.489088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034637, 33.949665, 24.752705>,  <34.523575, 34.300484, 25.096016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034637, 33.949665, 24.752705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943939, 33.662495, 25.015966>,  <34.889523, 33.490192, 25.173923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943939, 33.662495, 25.015966>,  <35.034637, 33.949665, 24.752705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943939, 33.662495, 25.015966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118331, -0.691056, -0.713049,
		0.966739, -0.083799, 0.241646,
		-0.226744, -0.717927, 0.658155,
		34.875916, 33.447117, 25.213413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649670, 33.493858, 24.695690>,  <35.034637, 33.949665, 24.752705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649670, 33.493858, 24.695690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327778, 33.296577, 24.827847>,  <35.134644, 33.178207, 24.907141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327778, 33.296577, 24.827847>,  <35.649670, 33.493858, 24.695690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327778, 33.296577, 24.827847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002989, -0.553179, -0.833057,
		0.593633, -0.671374, 0.443685,
		-0.804730, -0.493204, 0.330392,
		35.086357, 33.148617, 24.926964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809120, 32.770939, 24.678909>,  <35.649670, 33.493858, 24.695690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809120, 32.770939, 24.678909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412113, 32.815823, 24.659679>,  <35.173908, 32.842754, 24.648142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412113, 32.815823, 24.659679>,  <35.809120, 32.770939, 24.678909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412113, 32.815823, 24.659679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031148, -0.613577, -0.789021,
		-0.118033, -0.781622, 0.612483,
		-0.992521, 0.112209, -0.048076,
		35.114357, 32.849483, 24.645256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.291168, 35.807934, 25.855312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.635176, 35.903175, 25.674793>,  <28.841581, 35.960320, 25.566481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.635176, 35.903175, 25.674793>,  <28.291168, 35.807934, 25.855312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635176, 35.903175, 25.674793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483574, -0.098044, 0.869795,
		0.162856, -0.966278, -0.199462,
		0.860020, 0.238106, -0.451300,
		28.893181, 35.974606, 25.539404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716131, 35.333847, 26.041527>,  <28.291168, 35.807934, 25.855312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716131, 35.333847, 26.041527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943661, 35.650024, 25.950628>,  <29.080177, 35.839729, 25.896090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.943661, 35.650024, 25.950628>,  <28.716131, 35.333847, 26.041527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943661, 35.650024, 25.950628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439216, -0.058340, 0.896485,
		0.695364, -0.609750, -0.380361,
		0.568822, 0.790444, -0.227244,
		29.114307, 35.887157, 25.882456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329798, 35.180981, 26.316803>,  <28.716131, 35.333847, 26.041527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329798, 35.180981, 26.316803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.362690, 35.578285, 26.284132>,  <29.382425, 35.816669, 26.264530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.362690, 35.578285, 26.284132>,  <29.329798, 35.180981, 26.316803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362690, 35.578285, 26.284132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498495, 0.029974, 0.866374,
		0.862984, -0.111959, -0.492671,
		0.082231, 0.993261, -0.081678,
		29.387360, 35.876263, 26.259628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035048, 35.413219, 26.478441>,  <29.329798, 35.180981, 26.316803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035048, 35.413219, 26.478441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823959, 35.744324, 26.554670>,  <29.697306, 35.942986, 26.600407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823959, 35.744324, 26.554670>,  <30.035048, 35.413219, 26.478441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823959, 35.744324, 26.554670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502634, 0.123455, 0.855639,
		0.684739, 0.547327, -0.481212,
		-0.527722, 0.827763, 0.190571,
		29.665642, 35.992653, 26.611841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601784, 35.800728, 26.599684>,  <30.035048, 35.413219, 26.478441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601784, 35.800728, 26.599684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.289753, 36.002666, 26.747524>,  <30.102533, 36.123829, 26.836229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.289753, 36.002666, 26.747524>,  <30.601784, 35.800728, 26.599684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289753, 36.002666, 26.747524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555694, 0.287544, 0.780078,
		0.287544, 0.813909, -0.504848,
		-0.780078, 0.504848, 0.369603,
		30.055729, 36.154121, 26.858406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747561, 36.504742, 26.676260>,  <30.601784, 35.800728, 26.599684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747561, 36.504742, 26.676260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447123, 36.470886, 26.938158>,  <30.266859, 36.450573, 27.095297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.447123, 36.470886, 26.938158>,  <30.747561, 36.504742, 26.676260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447123, 36.470886, 26.938158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632660, 0.191138, 0.750471,
		-0.188668, 0.977907, -0.090013,
		-0.751096, -0.084643, 0.654745,
		30.221794, 36.445492, 27.134581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809963, 37.038731, 27.162027>,  <30.747561, 36.504742, 26.676260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809963, 37.038731, 27.162027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.579102, 36.787544, 27.370852>,  <30.440584, 36.636833, 27.496147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.579102, 36.787544, 27.370852>,  <30.809963, 37.038731, 27.162027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579102, 36.787544, 27.370852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518451, 0.212166, 0.828369,
		-0.630951, 0.748761, 0.203117,
		-0.577156, -0.627967, 0.522062,
		30.405954, 36.599155, 27.527470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613668, 37.338409, 27.800037>,  <30.809963, 37.038731, 27.162027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613668, 37.338409, 27.800037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.544735, 36.949730, 27.864662>,  <30.503374, 36.716522, 27.903437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.544735, 36.949730, 27.864662>,  <30.613668, 37.338409, 27.800037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544735, 36.949730, 27.864662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275145, 0.110002, 0.955089,
		-0.945831, 0.209048, 0.248401,
		-0.172335, -0.971699, 0.161561,
		30.493034, 36.658218, 27.913130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314455, 37.372219, 28.433924>,  <30.613668, 37.338409, 27.800037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314455, 37.372219, 28.433924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.437660, 36.991703, 28.428539>,  <30.511583, 36.763393, 28.425308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.437660, 36.991703, 28.428539>,  <30.314455, 37.372219, 28.433924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437660, 36.991703, 28.428539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254344, 0.068702, 0.964670,
		-0.916753, -0.300555, 0.263116,
		0.308013, -0.951287, -0.013461,
		30.530064, 36.706318, 28.424501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083046, 37.128345, 29.021601>,  <30.314455, 37.372219, 28.433924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083046, 37.128345, 29.021601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385994, 36.887714, 28.920015>,  <30.567762, 36.743336, 28.859064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.385994, 36.887714, 28.920015>,  <30.083046, 37.128345, 29.021601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385994, 36.887714, 28.920015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346727, 0.040922, 0.937073,
		-0.553329, -0.797766, 0.239576,
		0.757369, -0.601577, -0.253963,
		30.613205, 36.707241, 28.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098843, 36.595131, 29.567308>,  <30.083046, 37.128345, 29.021601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098843, 36.595131, 29.567308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.445850, 36.611973, 29.369061>,  <30.654055, 36.622078, 29.250113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.445850, 36.611973, 29.369061>,  <30.098843, 36.595131, 29.567308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445850, 36.611973, 29.369061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496333, -0.007870, 0.868097,
		0.032651, -0.999082, -0.027725,
		0.867518, 0.042105, -0.495620,
		30.706106, 36.624603, 29.220375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497938, 36.251602, 30.088573>,  <30.098843, 36.595131, 29.567308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497938, 36.251602, 30.088573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.750158, 36.419849, 29.827658>,  <30.901491, 36.520798, 29.671108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.750158, 36.419849, 29.827658>,  <30.497938, 36.251602, 30.088573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750158, 36.419849, 29.827658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634070, 0.205520, 0.745464,
		0.447617, -0.883651, -0.137113,
		0.630551, 0.420622, -0.652290,
		30.939323, 36.546036, 29.631971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202827, 35.927517, 30.248976>,  <30.497938, 36.251602, 30.088573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202827, 35.927517, 30.248976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208735, 36.292698, 30.085855>,  <31.212278, 36.511806, 29.987984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208735, 36.292698, 30.085855>,  <31.202827, 35.927517, 30.248976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208735, 36.292698, 30.085855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528780, 0.339016, 0.778113,
		0.848630, -0.227127, -0.477745,
		0.014767, 0.912952, -0.407799,
		31.213165, 36.566582, 29.963516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922411, 36.068493, 30.270031>,  <31.202827, 35.927517, 30.248976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922411, 36.068493, 30.270031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738295, 36.419159, 30.214060>,  <31.627825, 36.629559, 30.180477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738295, 36.419159, 30.214060>,  <31.922411, 36.068493, 30.270031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738295, 36.419159, 30.214060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545742, 0.403742, 0.734274,
		0.700211, 0.261616, -0.664275,
		-0.460293, 0.876670, -0.139930,
		31.600206, 36.682159, 30.172081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584229, 35.846050, 29.771791>,  <31.922411, 36.068493, 30.270031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584229, 35.846050, 29.771791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.565117, 35.499619, 29.970837>,  <32.553650, 35.291759, 30.090263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.565117, 35.499619, 29.970837>,  <32.584229, 35.846050, 29.771791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565117, 35.499619, 29.970837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473889, -0.418890, -0.774571,
		0.879287, -0.272825, -0.390411,
		-0.047783, -0.866082, 0.497614,
		32.550781, 35.239796, 30.120121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730400, 35.340393, 29.275421>,  <32.584229, 35.846050, 29.771791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730400, 35.340393, 29.275421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547043, 35.143509, 29.571423>,  <32.437031, 35.025379, 29.749023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.547043, 35.143509, 29.571423>,  <32.730400, 35.340393, 29.275421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547043, 35.143509, 29.571423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390610, -0.636328, -0.665214,
		0.798312, -0.593980, 0.099423,
		-0.458390, -0.492213, 0.740003,
		32.409527, 34.995846, 29.793423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899979, 34.724148, 29.036211>,  <32.730400, 35.340393, 29.275421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899979, 34.724148, 29.036211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.599567, 34.700565, 29.299265>,  <32.419319, 34.686417, 29.457096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.599567, 34.700565, 29.299265>,  <32.899979, 34.724148, 29.036211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599567, 34.700565, 29.299265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486171, -0.624549, -0.611209,
		0.446761, -0.778757, 0.440390,
		-0.751028, -0.058960, 0.657633,
		32.374260, 34.682877, 29.496555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760185, 33.988617, 29.152605>,  <32.899979, 34.724148, 29.036211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760185, 33.988617, 29.152605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.434921, 34.202332, 29.244961>,  <32.239761, 34.330559, 29.300373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.434921, 34.202332, 29.244961>,  <32.760185, 33.988617, 29.152605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434921, 34.202332, 29.244961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549729, -0.574677, -0.606254,
		-0.191225, -0.619909, 0.761017,
		-0.813161, 0.534284, 0.230889,
		32.190971, 34.362617, 29.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158791, 33.526890, 29.229479>,  <32.760185, 33.988617, 29.152605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158791, 33.526890, 29.229479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.006634, 33.889744, 29.157467>,  <31.915339, 34.107456, 29.114260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.006634, 33.889744, 29.157467>,  <32.158791, 33.526890, 29.229479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006634, 33.889744, 29.157467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650310, -0.400776, -0.645350,
		-0.657570, -0.128411, 0.742370,
		-0.380394, 0.907132, -0.180031,
		31.892515, 34.161884, 29.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430441, 33.409729, 29.288889>,  <32.158791, 33.526890, 29.229479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430441, 33.409729, 29.288889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.472803, 33.757492, 29.095844>,  <31.498220, 33.966148, 28.980017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.472803, 33.757492, 29.095844>,  <31.430441, 33.409729, 29.288889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472803, 33.757492, 29.095844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731553, -0.260610, -0.630010,
		-0.673509, 0.419777, 0.608418,
		0.105903, 0.869408, -0.482612,
		31.504574, 34.018314, 28.951061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732761, 33.818153, 29.148191>,  <31.430441, 33.409729, 29.288889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732761, 33.818153, 29.148191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.985283, 33.963245, 28.873999>,  <31.136795, 34.050301, 28.709482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.985283, 33.963245, 28.873999>,  <30.732761, 33.818153, 29.148191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985283, 33.963245, 28.873999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695648, -0.125867, -0.707270,
		-0.342824, 0.923357, 0.172869,
		0.631304, 0.362725, -0.685482,
		31.174675, 34.072063, 28.668354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348860, 34.284878, 28.806444>,  <30.732761, 33.818153, 29.148191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348860, 34.284878, 28.806444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616241, 34.179176, 28.528355>,  <30.776670, 34.115757, 28.361500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616241, 34.179176, 28.528355>,  <30.348860, 34.284878, 28.806444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616241, 34.179176, 28.528355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738311, -0.122888, -0.663171,
		0.089810, 0.956592, -0.277246,
		0.668455, -0.264253, -0.695226,
		30.816778, 34.099899, 28.319786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122889, 34.538952, 28.148924>,  <30.348860, 34.284878, 28.806444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122889, 34.538952, 28.148924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.397663, 34.269363, 28.040197>,  <30.562529, 34.107613, 27.974960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.397663, 34.269363, 28.040197>,  <30.122889, 34.538952, 28.148924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397663, 34.269363, 28.040197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483871, -0.145116, -0.863024,
		0.542205, 0.724368, -0.425799,
		0.686937, -0.673967, -0.271818,
		30.603745, 34.067173, 27.958652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122795, 34.606224, 27.468185>,  <30.122889, 34.538952, 28.148924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122795, 34.606224, 27.468185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345909, 34.275803, 27.500446>,  <30.479778, 34.077549, 27.519802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345909, 34.275803, 27.500446>,  <30.122795, 34.606224, 27.468185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345909, 34.275803, 27.500446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273145, -0.274456, -0.921990,
		0.783751, 0.492245, -0.378721,
		0.557787, -0.826056, 0.080651,
		30.513245, 34.027985, 27.524641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761068, 34.660534, 27.049259>,  <30.122795, 34.606224, 27.468185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761068, 34.660534, 27.049259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679247, 34.270973, 27.088596>,  <30.630154, 34.037235, 27.112198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.679247, 34.270973, 27.088596>,  <30.761068, 34.660534, 27.049259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679247, 34.270973, 27.088596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016217, -0.097081, -0.995144,
		0.978721, -0.205154, 0.004064,
		-0.204553, -0.973903, 0.098342,
		30.617882, 33.978802, 27.118099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083582, 34.368725, 26.463907>,  <30.761068, 34.660534, 27.049259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083582, 34.368725, 26.463907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.825485, 34.097988, 26.605640>,  <30.670628, 33.935547, 26.690681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.825485, 34.097988, 26.605640>,  <31.083582, 34.368725, 26.463907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825485, 34.097988, 26.605640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178561, -0.317347, -0.931347,
		0.742820, -0.664213, 0.083908,
		-0.645240, -0.676840, 0.354334,
		30.631912, 33.894936, 26.711941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264835, 33.598492, 26.253569>,  <31.083582, 34.368725, 26.463907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264835, 33.598492, 26.253569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871252, 33.621025, 26.321280>,  <30.635101, 33.634544, 26.361906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.871252, 33.621025, 26.321280>,  <31.264835, 33.598492, 26.253569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871252, 33.621025, 26.321280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178397, -0.318204, -0.931086,
		0.001418, -0.946347, 0.323148,
		-0.983958, 0.056329, 0.169276,
		30.576065, 33.637924, 26.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028500, 33.000095, 25.912346>,  <31.264835, 33.598492, 26.253569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028500, 33.000095, 25.912346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.694622, 33.210564, 25.977379>,  <30.494295, 33.336845, 26.016399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.694622, 33.210564, 25.977379>,  <31.028500, 33.000095, 25.912346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694622, 33.210564, 25.977379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340223, -0.260527, -0.903534,
		-0.433054, -0.809489, 0.396475,
		-0.834693, 0.526169, 0.162584,
		30.444214, 33.368416, 26.026154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065918, 32.295525, 25.959879>,  <31.028500, 33.000095, 25.912346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065918, 32.295525, 25.959879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.340666, 32.015938, 25.880224>,  <31.505514, 31.848186, 25.832432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.340666, 32.015938, 25.880224>,  <31.065918, 32.295525, 25.959879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340666, 32.015938, 25.880224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382859, 0.115089, 0.916610,
		-0.617762, -0.705832, 0.346657,
		0.686869, -0.698968, -0.199137,
		31.546726, 31.806248, 25.820484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107330, 31.963572, 26.558043>,  <31.065918, 32.295525, 25.959879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107330, 31.963572, 26.558043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437067, 31.866817, 26.353317>,  <31.634909, 31.808765, 26.230482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.437067, 31.866817, 26.353317>,  <31.107330, 31.963572, 26.558043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437067, 31.866817, 26.353317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485887, -0.161588, 0.858955,
		-0.290470, -0.956756, -0.015676,
		0.824343, -0.241884, -0.511812,
		31.684370, 31.794252, 26.199774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460093, 31.596418, 27.072165>,  <31.107330, 31.963572, 26.558043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460093, 31.596418, 27.072165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738571, 31.649004, 26.789881>,  <31.905659, 31.680555, 26.620510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.738571, 31.649004, 26.789881>,  <31.460093, 31.596418, 27.072165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738571, 31.649004, 26.789881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700095, 0.092957, 0.707973,
		0.158673, -0.986953, -0.027320,
		0.696197, 0.131463, -0.705711,
		31.947430, 31.688442, 26.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114273, 31.213860, 27.367140>,  <31.460093, 31.596418, 27.072165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114273, 31.213860, 27.367140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.259579, 31.470713, 27.097116>,  <32.346760, 31.624825, 26.935102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.259579, 31.470713, 27.097116>,  <32.114273, 31.213860, 27.367140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259579, 31.470713, 27.097116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768444, 0.203196, 0.606800,
		0.526816, -0.739172, -0.419631,
		0.363262, 0.642135, -0.675058,
		32.368557, 31.663353, 26.894598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780609, 31.011744, 27.235483>,  <32.114273, 31.213860, 27.367140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780609, 31.011744, 27.235483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745602, 31.403231, 27.161242>,  <32.724598, 31.638123, 27.116695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745602, 31.403231, 27.161242>,  <32.780609, 31.011744, 27.235483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745602, 31.403231, 27.161242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718948, 0.191023, 0.668300,
		0.689533, -0.074955, -0.720365,
		-0.087514, 0.978720, -0.185605,
		32.719349, 31.696846, 27.105560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453545, 31.140274, 27.214111>,  <32.780609, 31.011744, 27.235483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453545, 31.140274, 27.214111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.273609, 31.495401, 27.252945>,  <33.165649, 31.708479, 27.276245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.273609, 31.495401, 27.252945>,  <33.453545, 31.140274, 27.214111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273609, 31.495401, 27.252945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679417, 0.269622, 0.682420,
		0.579690, 0.372936, -0.724485,
		-0.449836, 0.887819, 0.097082,
		33.138657, 31.761747, 27.282070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877777, 31.656488, 27.043604>,  <33.453545, 31.140274, 27.214111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877777, 31.656488, 27.043604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605988, 31.854723, 27.260014>,  <33.442913, 31.973663, 27.389860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605988, 31.854723, 27.260014>,  <33.877777, 31.656488, 27.043604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605988, 31.854723, 27.260014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720720, 0.312773, 0.618656,
		0.137379, 0.810290, -0.569700,
		-0.679477, 0.495584, 0.541024,
		33.402145, 32.003399, 27.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224300, 32.264709, 27.190561>,  <33.877777, 31.656488, 27.043604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224300, 32.264709, 27.190561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.944096, 32.174324, 27.461330>,  <33.775974, 32.120090, 27.623791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.944096, 32.174324, 27.461330>,  <34.224300, 32.264709, 27.190561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944096, 32.174324, 27.461330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622612, 0.270051, 0.734457,
		-0.348766, 0.935955, -0.048484,
		-0.700511, -0.225967, 0.676922,
		33.733944, 32.106533, 27.664408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329628, 32.702114, 27.766134>,  <34.224300, 32.264709, 27.190561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329628, 32.702114, 27.766134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085651, 32.441547, 27.946636>,  <33.939266, 32.285206, 28.054937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.085651, 32.441547, 27.946636>,  <34.329628, 32.702114, 27.766134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085651, 32.441547, 27.946636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311163, 0.326832, 0.892389,
		-0.728802, 0.684716, 0.003350,
		-0.609938, -0.651417, 0.451254,
		33.902672, 32.246120, 28.082012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052349, 33.065186, 28.380709>,  <34.329628, 32.702114, 27.766134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052349, 33.065186, 28.380709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044807, 32.667465, 28.422693>,  <34.040283, 32.428833, 28.447884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.044807, 32.667465, 28.422693>,  <34.052349, 33.065186, 28.380709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044807, 32.667465, 28.422693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447883, 0.085457, 0.889999,
		-0.893893, 0.063790, 0.443718,
		-0.018854, -0.994298, 0.104960,
		34.039150, 32.369175, 28.454182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861599, 33.007545, 29.013964>,  <34.052349, 33.065186, 28.380709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861599, 33.007545, 29.013964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057465, 32.668690, 28.931423>,  <34.174984, 32.465378, 28.881899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.057465, 32.668690, 28.931423>,  <33.861599, 33.007545, 29.013964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057465, 32.668690, 28.931423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453546, 0.045351, 0.890078,
		-0.744662, -0.529431, 0.406423,
		0.489667, -0.847139, -0.206350,
		34.204365, 32.414547, 28.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984646, 32.613468, 29.717304>,  <33.861599, 33.007545, 29.013964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984646, 32.613468, 29.717304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238674, 32.443272, 29.459421>,  <34.391090, 32.341152, 29.304691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238674, 32.443272, 29.459421>,  <33.984646, 32.613468, 29.717304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238674, 32.443272, 29.459421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706710, -0.016905, 0.707301,
		-0.311849, -0.904805, 0.289962,
		0.635068, -0.425490, -0.644707,
		34.429195, 32.315624, 29.266008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232555, 31.948980, 30.069473>,  <33.984646, 32.613468, 29.717304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232555, 31.948980, 30.069473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509602, 32.034122, 29.793798>,  <34.675827, 32.085209, 29.628393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509602, 32.034122, 29.793798>,  <34.232555, 31.948980, 30.069473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509602, 32.034122, 29.793798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693207, 0.067684, 0.717554,
		0.199381, -0.974737, -0.100673,
		0.692612, 0.212854, -0.689189,
		34.717384, 32.097980, 29.587042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818314, 31.595337, 30.212856>,  <34.232555, 31.948980, 30.069473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818314, 31.595337, 30.212856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946568, 31.900583, 29.988413>,  <35.023521, 32.083733, 29.853746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.946568, 31.900583, 29.988413>,  <34.818314, 31.595337, 30.212856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946568, 31.900583, 29.988413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705193, 0.203170, 0.679282,
		0.632373, -0.613494, -0.473001,
		0.320635, 0.763117, -0.561111,
		35.042759, 32.129517, 29.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.482323, 31.967163, 24.608807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216190, 32.238338, 24.483759>,  <35.056511, 32.401043, 24.408730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.216190, 32.238338, 24.483759>,  <35.482323, 31.967163, 24.608807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216190, 32.238338, 24.483759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453920, -0.699817, -0.551555,
		-0.592697, -0.225063, 0.773341,
		-0.665332, 0.677940, -0.312618,
		35.016590, 32.441719, 24.389973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757694, 31.626566, 24.492874>,  <35.482323, 31.967163, 24.608807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757694, 31.626566, 24.492874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711040, 31.970375, 24.293829>,  <34.683048, 32.176662, 24.174402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711040, 31.970375, 24.293829>,  <34.757694, 31.626566, 24.492874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711040, 31.970375, 24.293829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515887, -0.480567, -0.709165,
		-0.848679, 0.173999, 0.499467,
		-0.116633, 0.859523, -0.497611,
		34.676052, 32.228233, 24.144547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021927, 31.662619, 24.275936>,  <34.757694, 31.626566, 24.492874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021927, 31.662619, 24.275936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213547, 31.911137, 24.027903>,  <34.328518, 32.060246, 23.879082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213547, 31.911137, 24.027903>,  <34.021927, 31.662619, 24.275936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213547, 31.911137, 24.027903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448262, -0.434209, -0.781360,
		-0.754702, 0.652269, 0.070496,
		0.479047, 0.621295, -0.620086,
		34.357262, 32.097527, 23.841877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473660, 32.002155, 23.842356>,  <34.021927, 31.662619, 24.275936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473660, 32.002155, 23.842356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822655, 32.037445, 23.650114>,  <34.032051, 32.058620, 23.534769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822655, 32.037445, 23.650114>,  <33.473660, 32.002155, 23.842356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822655, 32.037445, 23.650114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466869, -0.139770, -0.873211,
		-0.144214, 0.986246, -0.080758,
		0.872488, 0.088226, -0.480604,
		34.084400, 32.063911, 23.505932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361217, 32.439293, 23.143753>,  <33.473660, 32.002155, 23.842356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361217, 32.439293, 23.143753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698524, 32.237267, 23.070198>,  <33.900909, 32.116051, 23.026064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698524, 32.237267, 23.070198>,  <33.361217, 32.439293, 23.143753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698524, 32.237267, 23.070198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301981, -0.162160, -0.939421,
		0.444646, 0.847713, -0.289263,
		0.843266, -0.505061, -0.183889,
		33.951504, 32.085747, 23.015032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671715, 32.733639, 22.556890>,  <33.361217, 32.439293, 23.143753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671715, 32.733639, 22.556890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787586, 32.352558, 22.593660>,  <33.857109, 32.123909, 22.615723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787586, 32.352558, 22.593660>,  <33.671715, 32.733639, 22.556890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787586, 32.352558, 22.593660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337303, -0.191498, -0.921713,
		0.895719, 0.235995, -0.376822,
		0.289680, -0.952699, 0.091927,
		33.874489, 32.066750, 22.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678490, 32.502121, 21.862925>,  <33.671715, 32.733639, 22.556890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678490, 32.502121, 21.862925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772312, 32.152020, 22.032120>,  <33.828606, 31.941959, 22.133636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772312, 32.152020, 22.032120>,  <33.678490, 32.502121, 21.862925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772312, 32.152020, 22.032120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195967, -0.468768, -0.861309,
		0.952144, 0.119137, -0.281474,
		0.234560, -0.875250, 0.422988,
		33.842682, 31.889444, 22.159016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106609, 32.155258, 21.402594>,  <33.678490, 32.502121, 21.862925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106609, 32.155258, 21.402594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923435, 31.878605, 21.625998>,  <33.813530, 31.712612, 21.760040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.923435, 31.878605, 21.625998>,  <34.106609, 32.155258, 21.402594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923435, 31.878605, 21.625998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211597, -0.525401, -0.824124,
		0.863435, -0.495577, 0.094253,
		-0.457937, -0.691634, 0.558512,
		33.786053, 31.671114, 21.793550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416985, 31.466085, 21.228611>,  <34.106609, 32.155258, 21.402594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416985, 31.466085, 21.228611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044064, 31.403273, 21.358936>,  <33.820312, 31.365585, 21.437132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044064, 31.403273, 21.358936>,  <34.416985, 31.466085, 21.228611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044064, 31.403273, 21.358936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236889, -0.415610, -0.878152,
		0.273310, -0.895885, 0.350275,
		-0.932301, -0.157031, 0.325816,
		33.764374, 31.356163, 21.456680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208672, 30.871866, 20.879921>,  <34.416985, 31.466085, 21.228611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208672, 30.871866, 20.879921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847858, 30.963629, 21.026182>,  <33.631371, 31.018686, 21.113939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847858, 30.963629, 21.026182>,  <34.208672, 30.871866, 20.879921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847858, 30.963629, 21.026182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427564, -0.358428, -0.829891,
		-0.059320, -0.904933, 0.421400,
		-0.902037, 0.229405, 0.365654,
		33.577248, 31.032450, 21.135878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762096, 30.297720, 20.789007>,  <34.208672, 30.871866, 20.879921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762096, 30.297720, 20.789007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497494, 30.591078, 20.851675>,  <33.338734, 30.767094, 20.889277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497494, 30.591078, 20.851675>,  <33.762096, 30.297720, 20.789007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497494, 30.591078, 20.851675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615270, -0.411288, -0.672521,
		-0.428791, -0.541265, 0.723305,
		-0.661499, 0.733399, 0.156667,
		33.299042, 30.811096, 20.898676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112576, 30.006256, 20.974257>,  <33.762096, 30.297720, 20.789007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112576, 30.006256, 20.974257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035583, 30.365887, 20.816973>,  <32.989388, 30.581665, 20.722603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035583, 30.365887, 20.816973>,  <33.112576, 30.006256, 20.974257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035583, 30.365887, 20.816973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712245, -0.403635, -0.574269,
		-0.675025, 0.169526, 0.718055,
		-0.192479, 0.899077, -0.393207,
		32.977840, 30.635611, 20.699011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342083, 30.213577, 21.019833>,  <33.112576, 30.006256, 20.974257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342083, 30.213577, 21.019833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.518436, 30.373463, 20.698374>,  <32.624249, 30.469395, 20.505499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.518436, 30.373463, 20.698374>,  <32.342083, 30.213577, 21.019833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518436, 30.373463, 20.698374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719083, -0.378549, -0.582769,
		-0.537162, 0.834822, 0.120534,
		0.440881, 0.399715, -0.803649,
		32.650700, 30.493378, 20.457279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963427, 30.795277, 20.705688>,  <32.342083, 30.213577, 21.019833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963427, 30.795277, 20.705688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171593, 30.574598, 20.444983>,  <32.296494, 30.442190, 20.288559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171593, 30.574598, 20.444983>,  <31.963427, 30.795277, 20.705688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171593, 30.574598, 20.444983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853770, -0.350087, -0.385377,
		-0.015563, 0.757013, -0.653214,
		0.520418, -0.551697, -0.651764,
		32.327717, 30.409090, 20.249453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372807, 30.594542, 20.245869>,  <31.963427, 30.795277, 20.705688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372807, 30.594542, 20.245869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.035585, 30.439142, 20.394640>,  <30.833254, 30.345901, 20.483904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.035585, 30.439142, 20.394640>,  <31.372807, 30.594542, 20.245869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035585, 30.439142, 20.394640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376287, 0.068044, 0.924001,
		-0.384282, 0.918933, 0.088823,
		-0.843051, -0.388500, 0.371930,
		30.782669, 30.322592, 20.506220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238050, 31.029673, 20.724239>,  <31.372807, 30.594542, 20.245869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238050, 31.029673, 20.724239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.980108, 30.737053, 20.812780>,  <30.825342, 30.561481, 20.865906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.980108, 30.737053, 20.812780>,  <31.238050, 31.029673, 20.724239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980108, 30.737053, 20.812780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146905, 0.165580, 0.975193,
		-0.750052, 0.661378, 0.000692,
		-0.644857, -0.731548, 0.221354,
		30.786652, 30.517590, 20.879187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679001, 31.287079, 21.094801>,  <31.238050, 31.029673, 20.724239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679001, 31.287079, 21.094801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710403, 30.900358, 21.192066>,  <30.729244, 30.668325, 21.250425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710403, 30.900358, 21.192066>,  <30.679001, 31.287079, 21.094801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710403, 30.900358, 21.192066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058108, 0.247938, 0.967032,
		-0.995219, -0.061786, 0.075643,
		0.078504, -0.966804, 0.243162,
		30.733955, 30.610317, 21.265015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197433, 31.170176, 21.463575>,  <30.679001, 31.287079, 21.094801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197433, 31.170176, 21.463575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.437983, 30.876884, 21.590527>,  <30.582312, 30.700911, 21.666698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.437983, 30.876884, 21.590527>,  <30.197433, 31.170176, 21.463575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437983, 30.876884, 21.590527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182018, 0.261061, 0.948007,
		-0.777959, -0.627874, 0.023534,
		0.601372, -0.733227, 0.317379,
		30.618395, 30.656916, 21.685740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930149, 31.072302, 22.083717>,  <30.197433, 31.170176, 21.463575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930149, 31.072302, 22.083717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.275785, 30.871113, 22.076090>,  <30.483168, 30.750399, 22.071512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.275785, 30.871113, 22.076090>,  <29.930149, 31.072302, 22.083717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275785, 30.871113, 22.076090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001209, -0.035813, 0.999358,
		-0.503332, -0.863560, -0.030337,
		0.864092, -0.502972, -0.019070,
		30.535013, 30.720221, 22.070370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818560, 30.614561, 22.567091>,  <29.930149, 31.072302, 22.083717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818560, 30.614561, 22.567091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.215151, 30.626558, 22.516375>,  <30.453106, 30.633757, 22.485945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.215151, 30.626558, 22.516375>,  <29.818560, 30.614561, 22.567091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215151, 30.626558, 22.516375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123937, 0.083011, 0.988812,
		0.040180, -0.996097, 0.078586,
		0.991476, 0.029991, -0.126789,
		30.512594, 30.635557, 22.478338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080765, 30.095776, 22.980917>,  <29.818560, 30.614561, 22.567091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080765, 30.095776, 22.980917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376070, 30.359934, 22.926012>,  <30.553253, 30.518429, 22.893070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.376070, 30.359934, 22.926012>,  <30.080765, 30.095776, 22.980917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376070, 30.359934, 22.926012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175156, 0.008815, 0.984501,
		0.651372, -0.750865, -0.109165,
		0.738265, 0.660397, -0.137260,
		30.597549, 30.558052, 22.884834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541155, 29.843662, 23.406988>,  <30.080765, 30.095776, 22.980917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541155, 29.843662, 23.406988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678936, 30.217741, 23.374109>,  <30.761604, 30.442188, 23.354382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.678936, 30.217741, 23.374109>,  <30.541155, 29.843662, 23.406988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678936, 30.217741, 23.374109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206039, 0.010114, 0.978491,
		0.915915, -0.353980, -0.189204,
		0.344453, 0.935198, -0.082197,
		30.782272, 30.498301, 23.349449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044832, 29.940201, 23.906519>,  <30.541155, 29.843662, 23.406988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044832, 29.940201, 23.906519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994095, 30.320339, 23.792849>,  <30.963654, 30.548422, 23.724646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.994095, 30.320339, 23.792849>,  <31.044832, 29.940201, 23.906519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994095, 30.320339, 23.792849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326110, 0.310519, 0.892877,
		0.936783, 0.020582, -0.349304,
		-0.126842, 0.950344, -0.284177,
		30.956041, 30.605442, 23.707596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692036, 30.277069, 23.980597>,  <31.044832, 29.940201, 23.906519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692036, 30.277069, 23.980597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395769, 30.544989, 24.001680>,  <31.218008, 30.705740, 24.014330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395769, 30.544989, 24.001680>,  <31.692036, 30.277069, 23.980597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395769, 30.544989, 24.001680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314545, 0.276362, 0.908122,
		0.593694, 0.689196, -0.415375,
		-0.740668, 0.669801, 0.052709,
		31.173569, 30.745930, 24.017492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001240, 30.935207, 24.132006>,  <31.692036, 30.277069, 23.980597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001240, 30.935207, 24.132006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620417, 30.987749, 24.242514>,  <31.391922, 31.019274, 24.308819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620417, 30.987749, 24.242514>,  <32.001240, 30.935207, 24.132006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620417, 30.987749, 24.242514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303140, 0.283975, 0.909651,
		0.041032, 0.949792, -0.310180,
		-0.952062, 0.131353, 0.276268,
		31.334799, 31.027155, 24.325394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001919, 31.610376, 24.406984>,  <32.001240, 30.935207, 24.132006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001919, 31.610376, 24.406984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662971, 31.464577, 24.561441>,  <31.459602, 31.377098, 24.654116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662971, 31.464577, 24.561441>,  <32.001919, 31.610376, 24.406984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662971, 31.464577, 24.561441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222992, 0.415697, 0.881743,
		-0.481911, 0.833269, -0.270970,
		-0.847370, -0.364497, 0.386142,
		31.408760, 31.355228, 24.677284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643742, 32.224274, 24.715021>,  <32.001919, 31.610376, 24.406984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643742, 32.224274, 24.715021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516479, 31.885723, 24.885868>,  <31.440123, 31.682592, 24.988377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.516479, 31.885723, 24.885868>,  <31.643742, 32.224274, 24.715021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516479, 31.885723, 24.885868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327875, 0.324492, 0.887245,
		-0.889537, 0.422320, 0.174267,
		-0.318153, -0.846375, 0.427116,
		31.421034, 31.631811, 25.014004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271061, 32.482265, 25.307123>,  <31.643742, 32.224274, 24.715021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271061, 32.482265, 25.307123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371124, 32.098560, 25.359632>,  <31.431162, 31.868338, 25.391138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371124, 32.098560, 25.359632>,  <31.271061, 32.482265, 25.307123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371124, 32.098560, 25.359632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436160, 0.232699, 0.869262,
		-0.864399, -0.160196, 0.476604,
		0.250157, -0.959265, 0.131274,
		31.446171, 31.810781, 25.399015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580540, 32.615593, 25.511267>,  <31.271061, 32.482265, 25.307123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580540, 32.615593, 25.511267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.395323, 32.961765, 25.587816>,  <30.284193, 33.169468, 25.633745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.395323, 32.961765, 25.587816>,  <30.580540, 32.615593, 25.511267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395323, 32.961765, 25.587816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577057, -0.130472, -0.806215,
		-0.672753, -0.483745, 0.559816,
		-0.463043, 0.865429, 0.191373,
		30.256411, 33.221394, 25.645227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982672, 32.438347, 25.381903>,  <30.580540, 32.615593, 25.511267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982672, 32.438347, 25.381903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.981623, 32.837654, 25.358368>,  <29.980993, 33.077236, 25.344246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.981623, 32.837654, 25.358368>,  <29.982672, 32.438347, 25.381903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981623, 32.837654, 25.358368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460500, -0.053435, -0.886050,
		-0.887656, 0.024772, 0.459841,
		-0.002622, 0.998264, -0.058839,
		29.980837, 33.137135, 25.340715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439762, 32.599510, 25.044111>,  <29.982672, 32.438347, 25.381903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439762, 32.599510, 25.044111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621914, 32.953289, 25.003349>,  <29.731205, 33.165558, 24.978893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621914, 32.953289, 25.003349>,  <29.439762, 32.599510, 25.044111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621914, 32.953289, 25.003349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405420, 0.104102, -0.908184,
		-0.792632, 0.454880, 0.405978,
		0.455378, 0.884447, -0.101903,
		29.758528, 33.218624, 24.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875631, 33.102623, 24.847692>,  <29.439762, 32.599510, 25.044111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875631, 33.102623, 24.847692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240446, 33.205444, 24.719873>,  <29.459335, 33.267136, 24.643183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240446, 33.205444, 24.719873>,  <28.875631, 33.102623, 24.847692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240446, 33.205444, 24.719873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322382, -0.032234, -0.946061,
		-0.253488, 0.965859, 0.053471,
		0.912038, 0.257054, -0.319546,
		29.514057, 33.282562, 24.624010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732048, 33.652859, 24.461380>,  <28.875631, 33.102623, 24.847692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732048, 33.652859, 24.461380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073950, 33.475250, 24.353870>,  <29.279091, 33.368683, 24.289364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073950, 33.475250, 24.353870>,  <28.732048, 33.652859, 24.461380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073950, 33.475250, 24.353870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368681, -0.154911, -0.916557,
		0.365336, 0.882522, -0.296114,
		0.854753, -0.444023, -0.268775,
		29.330376, 33.342045, 24.273237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787773, 33.895771, 23.887646>,  <28.732048, 33.652859, 24.461380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787773, 33.895771, 23.887646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.044964, 33.589481, 23.881435>,  <29.199278, 33.405708, 23.877708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.044964, 33.589481, 23.881435>,  <28.787773, 33.895771, 23.887646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044964, 33.589481, 23.881435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221825, -0.166784, -0.960717,
		0.733057, 0.621165, -0.277096,
		0.642978, -0.765727, -0.015528,
		29.237858, 33.359764, 23.876778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261349, 34.137608, 23.324852>,  <28.787773, 33.895771, 23.887646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261349, 34.137608, 23.324852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.315176, 33.744576, 23.376110>,  <29.347471, 33.508755, 23.406864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.315176, 33.744576, 23.376110>,  <29.261349, 34.137608, 23.324852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315176, 33.744576, 23.376110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180917, -0.151508, -0.971758,
		0.974249, 0.107583, -0.198154,
		0.134567, -0.982584, 0.128143,
		29.355547, 33.449799, 23.414553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557730, 34.688259, 22.896770>,  <29.261349, 34.137608, 23.324852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557730, 34.688259, 22.896770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284439, 34.973896, 22.835743>,  <29.120464, 35.145279, 22.799126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284439, 34.973896, 22.835743>,  <29.557730, 34.688259, 22.896770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284439, 34.973896, 22.835743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166941, 0.356157, 0.919393,
		0.710868, 0.602683, -0.362547,
		-0.683226, 0.714090, -0.152568,
		29.079472, 35.188122, 22.789972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849449, 35.172848, 23.264864>,  <29.557730, 34.688259, 22.896770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849449, 35.172848, 23.264864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469635, 35.289501, 23.218679>,  <29.241747, 35.359493, 23.190969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.469635, 35.289501, 23.218679>,  <29.849449, 35.172848, 23.264864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469635, 35.289501, 23.218679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035758, 0.466358, 0.883873,
		0.311615, 0.835140, -0.453252,
		-0.949535, 0.291636, -0.115462,
		29.184774, 35.376991, 23.184040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870029, 35.871933, 23.531382>,  <29.849449, 35.172848, 23.264864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870029, 35.871933, 23.531382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478119, 35.791939, 23.528847>,  <29.242971, 35.743942, 23.527327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478119, 35.791939, 23.528847>,  <29.870029, 35.871933, 23.531382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478119, 35.791939, 23.528847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075336, 0.339380, 0.937628,
		-0.185361, 0.919145, -0.347583,
		-0.979778, -0.199985, -0.006337,
		29.184185, 35.731945, 23.526945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482693, 36.475101, 23.838501>,  <29.870029, 35.871933, 23.531382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482693, 36.475101, 23.838501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220701, 36.173096, 23.850817>,  <29.063505, 35.991890, 23.858206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220701, 36.173096, 23.850817>,  <29.482693, 36.475101, 23.838501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220701, 36.173096, 23.850817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099980, 0.126979, 0.986853,
		-0.749002, 0.643292, -0.158656,
		-0.654981, -0.755018, 0.030791,
		29.024206, 35.946590, 23.860054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856276, 36.764759, 24.130268>,  <29.482693, 36.475101, 23.838501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856276, 36.764759, 24.130268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869038, 36.369556, 24.190697>,  <28.876694, 36.132435, 24.226954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.869038, 36.369556, 24.190697>,  <28.856276, 36.764759, 24.130268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869038, 36.369556, 24.190697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032494, 0.152092, 0.987832,
		-0.998963, -0.026606, 0.036957,
		0.031903, -0.988008, 0.151070,
		28.878609, 36.073154, 24.236017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295095, 36.589508, 24.621225>,  <28.856276, 36.764759, 24.130268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295095, 36.589508, 24.621225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.579830, 36.308590, 24.618023>,  <28.750671, 36.140038, 24.616102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.579830, 36.308590, 24.618023>,  <28.295095, 36.589508, 24.621225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579830, 36.308590, 24.618023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185064, 0.176560, 0.966736,
		-0.677523, -0.689641, 0.255652,
		0.711838, -0.702298, -0.008004,
		28.793383, 36.097900, 24.615622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116831, 36.278255, 25.272612>,  <28.295095, 36.589508, 24.621225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116831, 36.278255, 25.272612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.482883, 36.137753, 25.193460>,  <28.702515, 36.053452, 25.145969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.482883, 36.137753, 25.193460>,  <28.116831, 36.278255, 25.272612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482883, 36.137753, 25.193460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206780, -0.012401, 0.978309,
		-0.346093, -0.936197, 0.061285,
		0.915129, -0.351258, -0.197879,
		28.757421, 36.032375, 25.134096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.814915, 33.789494, 19.450703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944664, 33.522659, 19.718966>,  <33.022514, 33.362560, 19.879923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.944664, 33.522659, 19.718966>,  <32.814915, 33.789494, 19.450703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944664, 33.522659, 19.718966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064897, 0.723015, 0.687778,
		-0.943700, -0.179574, 0.277819,
		0.324374, -0.667085, 0.670656,
		33.041977, 33.322533, 19.920162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440285, 33.876934, 20.053082>,  <32.814915, 33.789494, 19.450703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440285, 33.876934, 20.053082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764393, 33.684490, 20.186945>,  <32.958858, 33.569023, 20.267263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764393, 33.684490, 20.186945>,  <32.440285, 33.876934, 20.053082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764393, 33.684490, 20.186945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110431, 0.686148, 0.719031,
		-0.575556, -0.545654, 0.609095,
		0.810272, -0.481106, 0.334659,
		33.007473, 33.540157, 20.287342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406429, 33.903427, 20.779165>,  <32.440285, 33.876934, 20.053082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406429, 33.903427, 20.779165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.789429, 33.797321, 20.733862>,  <33.019230, 33.733658, 20.706680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.789429, 33.797321, 20.733862>,  <32.406429, 33.903427, 20.779165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789429, 33.797321, 20.733862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258056, 0.612457, 0.747197,
		-0.128835, -0.744670, 0.654880,
		0.957502, -0.265261, -0.113260,
		33.076679, 33.717743, 20.699884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521038, 33.807247, 21.418825>,  <32.406429, 33.903427, 20.779165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521038, 33.807247, 21.418825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870213, 33.841251, 21.226675>,  <33.079716, 33.861656, 21.111385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870213, 33.841251, 21.226675>,  <32.521038, 33.807247, 21.418825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870213, 33.841251, 21.226675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321999, 0.639318, 0.698276,
		0.366477, -0.764228, 0.530707,
		0.872933, 0.085015, -0.480376,
		33.132092, 33.866756, 21.082561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030514, 33.694584, 21.929710>,  <32.521038, 33.807247, 21.418825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030514, 33.694584, 21.929710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.196007, 33.893089, 21.624411>,  <33.295303, 34.012192, 21.441231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.196007, 33.893089, 21.624411>,  <33.030514, 33.694584, 21.929710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196007, 33.893089, 21.624411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449424, 0.617761, 0.645283,
		0.791737, -0.609994, 0.032552,
		0.413729, 0.496265, -0.763250,
		33.320126, 34.041969, 21.395435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817398, 33.646923, 22.009701>,  <33.030514, 33.694584, 21.929710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817398, 33.646923, 22.009701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.734142, 33.968460, 21.786806>,  <33.684189, 34.161381, 21.653069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.734142, 33.968460, 21.786806>,  <33.817398, 33.646923, 22.009701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734142, 33.968460, 21.786806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481219, 0.580152, 0.657155,
		0.851531, -0.131372, -0.507578,
		-0.208140, 0.803844, -0.557236,
		33.671700, 34.209614, 21.619635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333279, 34.040443, 22.109379>,  <33.817398, 33.646923, 22.009701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333279, 34.040443, 22.109379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094418, 34.315948, 21.944935>,  <33.951099, 34.481251, 21.846270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094418, 34.315948, 21.944935>,  <34.333279, 34.040443, 22.109379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094418, 34.315948, 21.944935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438107, 0.709383, 0.552121,
		0.671915, 0.149592, -0.725364,
		-0.597154, 0.688765, -0.411108,
		33.915272, 34.522579, 21.821602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805550, 34.575344, 21.865353>,  <34.333279, 34.040443, 22.109379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805550, 34.575344, 21.865353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.453667, 34.764172, 21.888191>,  <34.242535, 34.877468, 21.901896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.453667, 34.764172, 21.888191>,  <34.805550, 34.575344, 21.865353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453667, 34.764172, 21.888191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444624, 0.774045, 0.450737,
		0.168583, 0.421905, -0.890829,
		-0.879710, 0.472070, 0.057098,
		34.189754, 34.905792, 21.905321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772678, 35.317921, 21.456877>,  <34.805550, 34.575344, 21.865353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772678, 35.317921, 21.456877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498035, 35.314259, 21.747667>,  <34.333252, 35.312061, 21.922142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498035, 35.314259, 21.747667>,  <34.772678, 35.317921, 21.456877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498035, 35.314259, 21.747667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363907, 0.861317, 0.354548,
		-0.629402, 0.507986, -0.588051,
		-0.686604, -0.009157, 0.726974,
		34.292053, 35.311512, 21.965759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659336, 35.977207, 21.539917>,  <34.772678, 35.317921, 21.456877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659336, 35.977207, 21.539917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.504597, 35.840961, 21.882689>,  <34.411755, 35.759216, 22.088352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.504597, 35.840961, 21.882689>,  <34.659336, 35.977207, 21.539917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504597, 35.840961, 21.882689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390342, 0.781435, 0.486818,
		-0.835452, 0.522822, -0.169342,
		-0.386849, -0.340612, 0.856931,
		34.388542, 35.738777, 22.139769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561039, 36.652626, 21.900496>,  <34.659336, 35.977207, 21.539917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561039, 36.652626, 21.900496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543716, 36.357044, 22.169441>,  <34.533321, 36.179695, 22.330809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543716, 36.357044, 22.169441>,  <34.561039, 36.652626, 21.900496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543716, 36.357044, 22.169441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421925, 0.596508, 0.682757,
		-0.905596, 0.313257, 0.285947,
		-0.043309, -0.738951, 0.672366,
		34.530724, 36.135361, 22.371151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199150, 36.905369, 22.415312>,  <34.561039, 36.652626, 21.900496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199150, 36.905369, 22.415312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.424583, 36.626091, 22.591896>,  <34.559845, 36.458523, 22.697847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.424583, 36.626091, 22.591896>,  <34.199150, 36.905369, 22.415312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424583, 36.626091, 22.591896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237489, 0.648809, 0.722942,
		-0.791182, -0.302599, 0.531475,
		0.563587, -0.698198, 0.441462,
		34.593658, 36.416630, 22.724335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391384, 37.027084, 22.433720>,  <34.199150, 36.905369, 22.415312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391384, 37.027084, 22.433720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240967, 37.392303, 22.370564>,  <33.150719, 37.611435, 22.332670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240967, 37.392303, 22.370564>,  <33.391384, 37.027084, 22.433720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240967, 37.392303, 22.370564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409687, -0.316669, -0.855498,
		-0.831114, -0.257016, 0.493146,
		-0.376041, 0.913052, -0.157892,
		33.128155, 37.666218, 22.323196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698891, 36.850845, 22.272556>,  <33.391384, 37.027084, 22.433720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698891, 36.850845, 22.272556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.730591, 37.219013, 22.119432>,  <32.749611, 37.439915, 22.027557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.730591, 37.219013, 22.119432>,  <32.698891, 36.850845, 22.272556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730591, 37.219013, 22.119432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565251, -0.274823, -0.777794,
		-0.821103, 0.278024, 0.498490,
		0.079249, 0.920421, -0.382811,
		32.754364, 37.495140, 22.004589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971210, 37.070862, 22.145309>,  <32.698891, 36.850845, 22.272556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971210, 37.070862, 22.145309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206905, 37.301056, 21.918463>,  <32.348324, 37.439171, 21.782354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.206905, 37.301056, 21.918463>,  <31.971210, 37.070862, 22.145309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206905, 37.301056, 21.918463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556363, -0.219982, -0.801292,
		-0.585885, 0.787672, 0.190556,
		0.589236, 0.575483, -0.567115,
		32.383675, 37.473701, 21.748327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543766, 37.614708, 21.751776>,  <31.971210, 37.070862, 22.145309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543766, 37.614708, 21.751776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.883333, 37.592678, 21.541515>,  <32.087074, 37.579460, 21.415359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.883333, 37.592678, 21.541515>,  <31.543766, 37.614708, 21.751776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883333, 37.592678, 21.541515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528486, -0.076022, -0.845531,
		0.006607, 0.995584, -0.093643,
		0.848916, -0.055076, -0.525650,
		32.138008, 37.576157, 21.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432812, 37.949799, 21.128019>,  <31.543766, 37.614708, 21.751776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432812, 37.949799, 21.128019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.754688, 37.728859, 21.040949>,  <31.947813, 37.596294, 20.988707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.754688, 37.728859, 21.040949>,  <31.432812, 37.949799, 21.128019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754688, 37.728859, 21.040949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420304, -0.271058, -0.865951,
		0.419307, 0.788312, -0.450274,
		0.804690, -0.552351, -0.217674,
		31.996096, 37.563152, 20.975647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676521, 38.225822, 20.564693>,  <31.432812, 37.949799, 21.128019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676521, 38.225822, 20.564693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817497, 37.851734, 20.578236>,  <31.902082, 37.627281, 20.586361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817497, 37.851734, 20.578236>,  <31.676521, 38.225822, 20.564693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817497, 37.851734, 20.578236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417616, -0.189547, -0.888633,
		0.837486, 0.299052, -0.457367,
		0.352440, -0.935222, 0.033854,
		31.923229, 37.571167, 20.588392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852751, 38.108727, 19.890032>,  <31.676521, 38.225822, 20.564693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852751, 38.108727, 19.890032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845240, 37.733242, 20.027714>,  <31.840733, 37.507954, 20.110323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.845240, 37.733242, 20.027714>,  <31.852751, 38.108727, 19.890032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845240, 37.733242, 20.027714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524963, -0.283736, -0.802438,
		0.850918, -0.195765, -0.487458,
		-0.018780, -0.938706, 0.344206,
		31.839605, 37.451630, 20.130976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840315, 37.827995, 19.250881>,  <31.852751, 38.108727, 19.890032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840315, 37.827995, 19.250881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746483, 37.543427, 19.515863>,  <31.690184, 37.372684, 19.674852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746483, 37.543427, 19.515863>,  <31.840315, 37.827995, 19.250881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746483, 37.543427, 19.515863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519444, -0.484287, -0.704020,
		0.821675, -0.509258, -0.255941,
		-0.234579, -0.711423, 0.662458,
		31.676109, 37.329998, 19.714602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918707, 37.234703, 18.885904>,  <31.840315, 37.827995, 19.250881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918707, 37.234703, 18.885904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669353, 37.169922, 19.191889>,  <31.519741, 37.131054, 19.375481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669353, 37.169922, 19.191889>,  <31.918707, 37.234703, 18.885904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669353, 37.169922, 19.191889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641353, -0.453725, -0.618708,
		0.447282, -0.876303, 0.178977,
		-0.623382, -0.161950, 0.764962,
		31.482338, 37.121338, 19.421377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708170, 36.550159, 18.778887>,  <31.918707, 37.234703, 18.885904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708170, 36.550159, 18.778887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.438948, 36.700050, 19.033941>,  <31.277414, 36.789986, 19.186974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.438948, 36.700050, 19.033941>,  <31.708170, 36.550159, 18.778887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438948, 36.700050, 19.033941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725649, -0.501210, -0.471404,
		0.142941, -0.779979, 0.609262,
		-0.673054, 0.374727, 0.637635,
		31.237032, 36.812469, 19.225231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247042, 35.970425, 18.899368>,  <31.708170, 36.550159, 18.778887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247042, 35.970425, 18.899368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.056078, 36.310352, 18.988705>,  <30.941500, 36.514309, 19.042307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.056078, 36.310352, 18.988705>,  <31.247042, 35.970425, 18.899368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056078, 36.310352, 18.988705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790784, -0.304733, -0.530847,
		-0.383067, -0.430044, 0.817509,
		-0.477409, 0.849823, 0.223339,
		30.912855, 36.565300, 19.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582369, 35.851299, 19.188219>,  <31.247042, 35.970425, 18.899368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582369, 35.851299, 19.188219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511951, 36.234333, 19.096966>,  <30.469702, 36.464153, 19.042213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511951, 36.234333, 19.096966>,  <30.582369, 35.851299, 19.188219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511951, 36.234333, 19.096966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932102, -0.236677, -0.274170,
		-0.316534, 0.164378, 0.934230,
		-0.176044, 0.957582, -0.228134,
		30.459139, 36.521606, 19.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840445, 36.030136, 19.443888>,  <30.582369, 35.851299, 19.188219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840445, 36.030136, 19.443888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913944, 36.315456, 19.173349>,  <29.958044, 36.486649, 19.011026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.913944, 36.315456, 19.173349>,  <29.840445, 36.030136, 19.443888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913944, 36.315456, 19.173349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873382, -0.197249, -0.445306,
		-0.451044, 0.672533, 0.586736,
		0.183749, 0.713297, -0.676346,
		29.969069, 36.529446, 18.970446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207869, 35.650394, 19.225914>,  <29.840445, 36.030136, 19.443888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207869, 35.650394, 19.225914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909725, 35.418297, 19.357220>,  <28.730839, 35.279037, 19.436003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909725, 35.418297, 19.357220>,  <29.207869, 35.650394, 19.225914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909725, 35.418297, 19.357220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133810, 0.352166, 0.926323,
		-0.653099, 0.734366, -0.184847,
		-0.745357, -0.580246, 0.328265,
		28.686119, 35.244225, 19.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040192, 35.926121, 19.812990>,  <29.207869, 35.650394, 19.225914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040192, 35.926121, 19.812990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867020, 35.570763, 19.874077>,  <28.763117, 35.357548, 19.910728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867020, 35.570763, 19.874077>,  <29.040192, 35.926121, 19.812990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867020, 35.570763, 19.874077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305691, 0.014684, 0.952018,
		-0.848011, 0.458843, 0.265218,
		-0.432932, -0.888396, 0.152716,
		28.737141, 35.304245, 19.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816206, 36.092049, 20.442337>,  <29.040192, 35.926121, 19.812990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816206, 36.092049, 20.442337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775408, 35.694199, 20.449537>,  <28.750929, 35.455490, 20.453857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.775408, 35.694199, 20.449537>,  <28.816206, 36.092049, 20.442337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775408, 35.694199, 20.449537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074402, 0.025672, 0.996898,
		-0.991999, 0.100338, -0.076620,
		-0.101994, -0.994622, 0.018002,
		28.744810, 35.395813, 20.454937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139912, 35.901474, 20.846630>,  <28.816206, 36.092049, 20.442337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139912, 35.901474, 20.846630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399082, 35.596798, 20.848568>,  <28.554585, 35.413994, 20.849731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399082, 35.596798, 20.848568>,  <28.139912, 35.901474, 20.846630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399082, 35.596798, 20.848568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086656, -0.067389, 0.993957,
		-0.756758, -0.644430, -0.109668,
		0.647926, -0.761688, 0.004847,
		28.593460, 35.368290, 20.850021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820442, 35.359764, 21.277178>,  <28.139912, 35.901474, 20.846630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820442, 35.359764, 21.277178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209581, 35.272289, 21.246880>,  <28.443066, 35.219803, 21.228701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.209581, 35.272289, 21.246880>,  <27.820442, 35.359764, 21.277178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209581, 35.272289, 21.246880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035760, -0.181318, 0.982774,
		-0.228662, -0.958800, -0.168575,
		0.972849, -0.218695, -0.075747,
		28.501436, 35.206680, 21.224155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953932, 34.692131, 21.656134>,  <27.820442, 35.359764, 21.277178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953932, 34.692131, 21.656134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293894, 34.900970, 21.627655>,  <28.497871, 35.026276, 21.610569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293894, 34.900970, 21.627655>,  <27.953932, 34.692131, 21.656134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293894, 34.900970, 21.627655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137985, -0.090122, 0.986326,
		0.508547, -0.848108, -0.148637,
		0.849906, 0.522103, -0.071195,
		28.548866, 35.057602, 21.606297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449755, 34.266373, 22.168079>,  <27.953932, 34.692131, 21.656134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449755, 34.266373, 22.168079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598955, 34.631435, 22.101227>,  <28.688475, 34.850471, 22.061115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598955, 34.631435, 22.101227>,  <28.449755, 34.266373, 22.168079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598955, 34.631435, 22.101227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177782, 0.106492, 0.978291,
		0.910639, -0.394616, -0.122532,
		0.373000, 0.912654, -0.167131,
		28.710855, 34.905231, 22.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064060, 34.317383, 22.538033>,  <28.449755, 34.266373, 22.168079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064060, 34.317383, 22.538033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007479, 34.708702, 22.477482>,  <28.973530, 34.943493, 22.441151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.007479, 34.708702, 22.477482>,  <29.064060, 34.317383, 22.538033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007479, 34.708702, 22.477482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142795, 0.171480, 0.974784,
		0.979592, 0.116271, -0.163953,
		-0.141454, 0.978302, -0.151378,
		28.965042, 35.002193, 22.432068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697809, 33.959820, 22.700005>,  <29.064060, 34.317383, 22.538033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697809, 33.959820, 22.700005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539639, 33.616756, 22.831491>,  <29.444736, 33.410919, 22.910383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539639, 33.616756, 22.831491>,  <29.697809, 33.959820, 22.700005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539639, 33.616756, 22.831491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128285, -0.302810, -0.944378,
		0.909495, -0.415601, 0.009714,
		-0.395425, -0.857661, 0.328719,
		29.421011, 33.359459, 22.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858768, 33.589378, 22.176847>,  <29.697809, 33.959820, 22.700005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858768, 33.589378, 22.176847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596338, 33.349396, 22.359982>,  <29.438881, 33.205406, 22.469862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596338, 33.349396, 22.359982>,  <29.858768, 33.589378, 22.176847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596338, 33.349396, 22.359982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163881, -0.478920, -0.862426,
		0.736687, -0.640847, 0.215886,
		-0.656075, -0.599959, 0.457837,
		29.399515, 33.169407, 22.497334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958118, 32.927025, 21.949596>,  <29.858768, 33.589378, 22.176847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958118, 32.927025, 21.949596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577240, 32.907078, 22.070148>,  <29.348713, 32.895111, 22.142481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577240, 32.907078, 22.070148>,  <29.958118, 32.927025, 21.949596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577240, 32.907078, 22.070148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241203, -0.482677, -0.841929,
		0.187455, -0.874377, 0.447577,
		-0.952199, -0.049867, 0.301382,
		29.291580, 32.892117, 22.160563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741096, 32.303074, 21.897470>,  <29.958118, 32.927025, 21.949596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741096, 32.303074, 21.897470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391943, 32.496231, 21.869501>,  <29.182451, 32.612125, 21.852720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391943, 32.496231, 21.869501>,  <29.741096, 32.303074, 21.897470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391943, 32.496231, 21.869501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289584, -0.628047, -0.722286,
		-0.392700, -0.610224, 0.688050,
		-0.872884, 0.482890, -0.069923,
		29.130077, 32.641098, 21.848524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284414, 31.819317, 21.843061>,  <29.741096, 32.303074, 21.897470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284414, 31.819317, 21.843061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100605, 32.146633, 21.704939>,  <28.990320, 32.343021, 21.622065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100605, 32.146633, 21.704939>,  <29.284414, 31.819317, 21.843061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100605, 32.146633, 21.704939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489985, -0.557835, -0.669877,
		-0.740779, -0.138629, 0.657289,
		-0.459523, 0.818292, -0.345307,
		28.962748, 32.392120, 21.601347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712681, 31.535980, 21.651667>,  <29.284414, 31.819317, 21.843061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712681, 31.535980, 21.651667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686514, 31.887192, 21.462019>,  <28.670813, 32.097919, 21.348230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.686514, 31.887192, 21.462019>,  <28.712681, 31.535980, 21.651667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686514, 31.887192, 21.462019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476803, -0.444890, -0.758111,
		-0.876572, 0.176465, 0.447751,
		-0.065419, 0.878028, -0.474117,
		28.666887, 32.150600, 21.319784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034420, 31.599445, 21.454836>,  <28.712681, 31.535980, 21.651667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034420, 31.599445, 21.454836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195938, 31.875137, 21.214199>,  <28.292849, 32.040554, 21.069817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195938, 31.875137, 21.214199>,  <28.034420, 31.599445, 21.454836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195938, 31.875137, 21.214199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383418, -0.469551, -0.795306,
		-0.830627, 0.551801, 0.074661,
		0.403793, 0.689229, -0.601593,
		28.317076, 32.081905, 21.033722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565048, 31.744694, 21.071255>,  <28.034420, 31.599445, 21.454836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565048, 31.744694, 21.071255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898146, 31.843191, 20.872900>,  <28.098003, 31.902290, 20.753887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.898146, 31.843191, 20.872900>,  <27.565048, 31.744694, 21.071255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898146, 31.843191, 20.872900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326710, -0.504540, -0.799187,
		-0.446990, 0.827528, -0.339701,
		0.832743, 0.246245, -0.495886,
		28.147968, 31.917065, 20.724134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341251, 31.987585, 20.453384>,  <27.565048, 31.744694, 21.071255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341251, 31.987585, 20.453384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.721569, 31.877941, 20.395622>,  <27.949760, 31.812155, 20.360966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.721569, 31.877941, 20.395622>,  <27.341251, 31.987585, 20.453384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721569, 31.877941, 20.395622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280535, -0.563876, -0.776752,
		0.131491, 0.779042, -0.613028,
		0.950794, -0.274112, -0.144404,
		28.006807, 31.795708, 20.352301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.195900, 36.607853, 34.297501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387959, 36.396908, 34.017117>,  <35.503193, 36.270340, 33.848885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387959, 36.396908, 34.017117>,  <35.195900, 36.607853, 34.297501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387959, 36.396908, 34.017117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826042, -0.002959, -0.563600,
		0.295148, 0.849635, -0.437045,
		0.480148, -0.527364, -0.700961,
		35.532001, 36.238697, 33.806828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958755, 36.891045, 33.584747>,  <35.195900, 36.607853, 34.297501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958755, 36.891045, 33.584747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051079, 36.501846, 33.586365>,  <35.106472, 36.268330, 33.587334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051079, 36.501846, 33.586365>,  <34.958755, 36.891045, 33.584747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051079, 36.501846, 33.586365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692294, -0.167138, -0.701993,
		0.683709, 0.159224, -0.712172,
		0.230805, -0.972992, 0.004044,
		35.120319, 36.209949, 33.587578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830605, 36.663651, 32.922054>,  <34.958755, 36.891045, 33.584747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830605, 36.663651, 32.922054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869198, 36.301311, 33.087044>,  <34.892353, 36.083908, 33.186035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869198, 36.301311, 33.087044>,  <34.830605, 36.663651, 32.922054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869198, 36.301311, 33.087044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715311, -0.351263, -0.604107,
		0.692114, -0.236761, -0.681852,
		0.096481, -0.905847, 0.412471,
		34.898144, 36.029556, 33.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924355, 36.243443, 32.345047>,  <34.830605, 36.663651, 32.922054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924355, 36.243443, 32.345047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775276, 36.044411, 32.658356>,  <34.685829, 35.924992, 32.846340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775276, 36.044411, 32.658356>,  <34.924355, 36.243443, 32.345047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775276, 36.044411, 32.658356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667934, -0.442113, -0.598665,
		0.644178, -0.746293, -0.167576,
		-0.372692, -0.497577, 0.783274,
		34.663467, 35.895138, 32.893337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892338, 35.475994, 32.117603>,  <34.924355, 36.243443, 32.345047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892338, 35.475994, 32.117603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654469, 35.523506, 32.435661>,  <34.511745, 35.552013, 32.626495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654469, 35.523506, 32.435661>,  <34.892338, 35.475994, 32.117603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654469, 35.523506, 32.435661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796467, -0.221819, -0.562526,
		0.109563, -0.967827, 0.226511,
		-0.594672, 0.118776, 0.795146,
		34.476067, 35.559139, 32.674206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492157, 34.858253, 32.196808>,  <34.892338, 35.475994, 32.117603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492157, 34.858253, 32.196808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288849, 35.162159, 32.359001>,  <34.166862, 35.344501, 32.456318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288849, 35.162159, 32.359001>,  <34.492157, 34.858253, 32.196808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288849, 35.162159, 32.359001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779688, -0.206016, -0.591307,
		-0.365718, -0.616695, 0.697092,
		-0.508268, 0.759766, 0.405486,
		34.136368, 35.390087, 32.480648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948109, 34.606434, 32.386589>,  <34.492157, 34.858253, 32.196808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948109, 34.606434, 32.386589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843555, 34.991779, 32.362556>,  <33.780823, 35.222988, 32.348137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843555, 34.991779, 32.362556>,  <33.948109, 34.606434, 32.386589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843555, 34.991779, 32.362556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779858, -0.247453, -0.574968,
		-0.568771, -0.103429, 0.815967,
		-0.261382, 0.963364, -0.060084,
		33.765141, 35.280788, 32.344532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195583, 34.591057, 32.467361>,  <33.948109, 34.606434, 32.386589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195583, 34.591057, 32.467361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275505, 34.953323, 32.317772>,  <33.323460, 35.170681, 32.228020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275505, 34.953323, 32.317772>,  <33.195583, 34.591057, 32.467361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275505, 34.953323, 32.317772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767100, -0.092878, -0.634769,
		-0.609620, 0.413703, 0.676176,
		0.199804, 0.905662, -0.373972,
		33.335445, 35.225021, 32.205582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591087, 34.899288, 32.257557>,  <33.195583, 34.591057, 32.467361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591087, 34.899288, 32.257557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876476, 35.086102, 32.048618>,  <33.047710, 35.198189, 31.923256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.876476, 35.086102, 32.048618>,  <32.591087, 34.899288, 32.257557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876476, 35.086102, 32.048618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622220, 0.079517, -0.778794,
		-0.322186, 0.880658, 0.347329,
		0.713470, 0.467031, -0.522344,
		33.090519, 35.226212, 31.891914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239990, 35.291847, 31.781658>,  <32.591087, 34.899288, 32.257557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239990, 35.291847, 31.781658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600861, 35.268681, 31.610670>,  <32.817383, 35.254780, 31.508078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600861, 35.268681, 31.610670>,  <32.239990, 35.291847, 31.781658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600861, 35.268681, 31.610670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426679, 0.026025, -0.904029,
		0.063479, 0.997982, -0.001230,
		0.902173, -0.057912, -0.427470,
		32.871513, 35.251308, 31.482430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139507, 35.611347, 31.178226>,  <32.239990, 35.291847, 31.781658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139507, 35.611347, 31.178226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498085, 35.443447, 31.121380>,  <32.713230, 35.342705, 31.087273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498085, 35.443447, 31.121380>,  <32.139507, 35.611347, 31.178226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498085, 35.443447, 31.121380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221786, -0.147306, -0.963905,
		0.383668, 0.895605, -0.225148,
		0.896443, -0.419754, -0.142116,
		32.767017, 35.317520, 31.078745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568642, 35.978630, 30.688696>,  <32.139507, 35.611347, 31.178226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568642, 35.978630, 30.688696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664658, 35.592072, 30.651913>,  <32.722267, 35.360134, 30.629843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664658, 35.592072, 30.651913>,  <32.568642, 35.978630, 30.688696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664658, 35.592072, 30.651913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384815, -0.007758, -0.922961,
		0.891235, 0.256930, -0.373747,
		0.240035, -0.966399, -0.091957,
		32.736668, 35.302151, 30.624325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538452, 36.603775, 30.220766>,  <32.568642, 35.978630, 30.688696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538452, 36.603775, 30.220766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208473, 36.818245, 30.292301>,  <32.010487, 36.946926, 30.335222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208473, 36.818245, 30.292301>,  <32.538452, 36.603775, 30.220766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208473, 36.818245, 30.292301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501885, 0.549368, 0.668062,
		0.259948, 0.640872, -0.722296,
		-0.824948, 0.536170, 0.178837,
		31.960989, 36.979095, 30.345953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730865, 37.353344, 30.346754>,  <32.538452, 36.603775, 30.220766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730865, 37.353344, 30.346754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357872, 37.376076, 30.489441>,  <32.134075, 37.389713, 30.575052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357872, 37.376076, 30.489441>,  <32.730865, 37.353344, 30.346754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357872, 37.376076, 30.489441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306769, 0.645969, 0.699011,
		-0.190707, 0.761245, -0.619787,
		-0.932483, 0.056825, 0.356717,
		32.078129, 37.393124, 30.596457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512516, 38.078354, 30.405354>,  <32.730865, 37.353344, 30.346754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512516, 38.078354, 30.405354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333401, 37.837536, 30.669785>,  <32.225933, 37.693043, 30.828444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333401, 37.837536, 30.669785>,  <32.512516, 38.078354, 30.405354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333401, 37.837536, 30.669785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425017, 0.507160, 0.749766,
		-0.786667, 0.616706, 0.028780,
		-0.447789, -0.602048, 0.661077,
		32.199062, 37.656921, 30.868107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276058, 38.597000, 30.965683>,  <32.512516, 38.078354, 30.405354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276058, 38.597000, 30.965683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209461, 38.250164, 31.153486>,  <32.169502, 38.042065, 31.266169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.209461, 38.250164, 31.153486>,  <32.276058, 38.597000, 30.965683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209461, 38.250164, 31.153486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033970, 0.470828, 0.881571,
		-0.985457, 0.162727, -0.048936,
		-0.166496, -0.867087, 0.469509,
		32.159512, 37.990036, 31.294338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739468, 38.725826, 31.404423>,  <32.276058, 38.597000, 30.965683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739468, 38.725826, 31.404423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925171, 38.393578, 31.527405>,  <32.036594, 38.194229, 31.601194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925171, 38.393578, 31.527405>,  <31.739468, 38.725826, 31.404423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925171, 38.393578, 31.527405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136449, 0.410066, 0.901791,
		-0.875125, -0.376714, 0.303714,
		0.464260, -0.830622, 0.307457,
		32.064449, 38.144390, 31.619642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358030, 38.591328, 31.977861>,  <31.739468, 38.725826, 31.404423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358030, 38.591328, 31.977861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717312, 38.421780, 32.024445>,  <31.932880, 38.320049, 32.052395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717312, 38.421780, 32.024445>,  <31.358030, 38.591328, 31.977861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717312, 38.421780, 32.024445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113088, 0.478835, 0.870591,
		-0.424780, -0.768799, 0.478027,
		0.898205, -0.423869, 0.116458,
		31.986773, 38.294621, 32.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425417, 38.413647, 32.652111>,  <31.358030, 38.591328, 31.977861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425417, 38.413647, 32.652111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805754, 38.377693, 32.533577>,  <32.033955, 38.356121, 32.462456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805754, 38.377693, 32.533577>,  <31.425417, 38.413647, 32.652111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805754, 38.377693, 32.533577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309030, 0.336964, 0.889357,
		0.019918, -0.937217, 0.348177,
		0.950844, -0.089883, -0.296339,
		32.091007, 38.350727, 32.444675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779671, 38.206833, 33.210037>,  <31.425417, 38.413647, 32.652111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779671, 38.206833, 33.210037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056976, 38.354683, 32.962566>,  <32.223358, 38.443394, 32.814083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056976, 38.354683, 32.962566>,  <31.779671, 38.206833, 33.210037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056976, 38.354683, 32.962566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, 0.576722, 0.737747,
		0.629495, -0.728540, 0.270123,
		0.693263, 0.369625, -0.618679,
		32.264954, 38.465569, 32.776962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329628, 38.173084, 33.664867>,  <31.779671, 38.206833, 33.210037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329628, 38.173084, 33.664867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391216, 38.425251, 33.360535>,  <32.428169, 38.576550, 33.177933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391216, 38.425251, 33.360535>,  <32.329628, 38.173084, 33.664867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391216, 38.425251, 33.360535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261147, 0.716673, 0.646670,
		0.952941, -0.298255, -0.054288,
		0.153966, 0.630416, -0.760836,
		32.437405, 38.614376, 33.132282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017323, 38.387619, 33.803703>,  <32.329628, 38.173084, 33.664867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017323, 38.387619, 33.803703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863445, 38.650543, 33.544491>,  <32.771118, 38.808300, 33.388962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.863445, 38.650543, 33.544491>,  <33.017323, 38.387619, 33.803703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863445, 38.650543, 33.544491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384524, 0.752364, 0.534874,
		0.839139, -0.043424, -0.542181,
		-0.384691, 0.657315, -0.648035,
		32.748039, 38.847736, 33.350079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583103, 38.820679, 33.688560>,  <33.017323, 38.387619, 33.803703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583103, 38.820679, 33.688560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266674, 39.029953, 33.561764>,  <33.076817, 39.155518, 33.485687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266674, 39.029953, 33.561764>,  <33.583103, 38.820679, 33.688560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266674, 39.029953, 33.561764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362960, 0.818561, 0.445217,
		0.492403, 0.237146, -0.837437,
		-0.791075, 0.523182, -0.316988,
		33.029350, 39.186909, 33.466667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889378, 39.447281, 33.387150>,  <33.583103, 38.820679, 33.688560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889378, 39.447281, 33.387150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503788, 39.510323, 33.472862>,  <33.272434, 39.548145, 33.524292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503788, 39.510323, 33.472862>,  <33.889378, 39.447281, 33.387150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503788, 39.510323, 33.472862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228231, 0.903817, 0.361973,
		-0.136626, 0.397839, -0.907225,
		-0.963973, 0.157602, 0.214284,
		33.214596, 39.557602, 33.537148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727787, 40.139744, 33.240471>,  <33.889378, 39.447281, 33.387150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727787, 40.139744, 33.240471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431522, 40.033813, 33.487465>,  <33.253765, 39.970253, 33.635662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431522, 40.033813, 33.487465>,  <33.727787, 40.139744, 33.240471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431522, 40.033813, 33.487465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085181, 0.874613, 0.477280,
		-0.666455, 0.406101, -0.625235,
		-0.740663, -0.264828, 0.617482,
		33.209324, 39.954365, 33.672710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365314, 40.781677, 33.350067>,  <33.727787, 40.139744, 33.240471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365314, 40.781677, 33.350067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274384, 40.520741, 33.639278>,  <33.219826, 40.364178, 33.812805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274384, 40.520741, 33.639278>,  <33.365314, 40.781677, 33.350067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274384, 40.520741, 33.639278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087554, 0.725772, 0.682341,
		-0.969874, 0.218421, -0.107875,
		-0.227330, -0.652340, 0.723031,
		33.206184, 40.325039, 33.856186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038834, 40.771099, 32.667160>,  <33.365314, 40.781677, 33.350067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038834, 40.771099, 32.667160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274036, 41.094006, 32.646862>,  <33.415157, 41.287750, 32.634682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274036, 41.094006, 32.646862>,  <33.038834, 40.771099, 32.667160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274036, 41.094006, 32.646862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302471, -0.277638, -0.911827,
		-0.750174, 0.520809, -0.407427,
		0.588005, 0.807264, -0.050747,
		33.450439, 41.336185, 32.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033165, 41.274242, 32.039963>,  <33.038834, 40.771099, 32.667160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033165, 41.274242, 32.039963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410469, 41.285831, 32.172279>,  <33.636852, 41.292786, 32.251667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410469, 41.285831, 32.172279>,  <33.033165, 41.274242, 32.039963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410469, 41.285831, 32.172279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332056, -0.084012, -0.939511,
		0.000569, 0.996043, -0.088866,
		0.943260, 0.028974, 0.330790,
		33.693447, 41.294525, 32.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475273, 41.759804, 31.583534>,  <33.033165, 41.274242, 32.039963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475273, 41.759804, 31.583534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674801, 41.459900, 31.757448>,  <33.794518, 41.279957, 31.861795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.674801, 41.459900, 31.757448>,  <33.475273, 41.759804, 31.583534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674801, 41.459900, 31.757448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460865, -0.195395, -0.865693,
		0.734018, 0.632201, 0.248072,
		0.498820, -0.749762, 0.434783,
		33.824448, 41.234970, 31.887882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135033, 41.886322, 31.182495>,  <33.475273, 41.759804, 31.583534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135033, 41.886322, 31.182495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122868, 41.521034, 31.345028>,  <34.115570, 41.301861, 31.442549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.122868, 41.521034, 31.345028>,  <34.135033, 41.886322, 31.182495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122868, 41.521034, 31.345028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430751, -0.378808, -0.819120,
		0.901958, 0.150121, 0.404889,
		-0.030408, -0.913219, 0.406334,
		34.113747, 41.247070, 31.466928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777828, 41.591827, 30.932575>,  <34.135033, 41.886322, 31.182495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777828, 41.591827, 30.932575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506622, 41.316467, 31.035658>,  <34.343899, 41.151253, 31.097507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506622, 41.316467, 31.035658>,  <34.777828, 41.591827, 30.932575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506622, 41.316467, 31.035658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201419, -0.511170, -0.835545,
		0.706918, -0.514602, 0.485234,
		-0.678010, -0.688397, 0.257705,
		34.303219, 41.109947, 31.112968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016033, 40.988003, 30.641195>,  <34.777828, 41.591827, 30.932575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016033, 40.988003, 30.641195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639759, 40.873249, 30.713640>,  <34.413994, 40.804398, 30.757107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639759, 40.873249, 30.713640>,  <35.016033, 40.988003, 30.641195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639759, 40.873249, 30.713640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066228, -0.368285, -0.927351,
		0.332747, -0.884343, 0.327441,
		-0.940688, -0.286888, 0.181114,
		34.357552, 40.787182, 30.767975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015438, 40.314480, 30.327900>,  <35.016033, 40.988003, 30.641195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015438, 40.314480, 30.327900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636612, 40.436562, 30.367729>,  <34.409317, 40.509811, 30.391626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636612, 40.436562, 30.367729>,  <35.015438, 40.314480, 30.327900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636612, 40.436562, 30.367729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213635, -0.367634, -0.905100,
		-0.239629, -0.878464, 0.413376,
		-0.947068, 0.305199, 0.099575,
		34.352493, 40.528122, 30.397602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562832, 39.733540, 30.125780>,  <35.015438, 40.314480, 30.327900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562832, 39.733540, 30.125780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351967, 40.072521, 30.100719>,  <34.225449, 40.275909, 30.085684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351967, 40.072521, 30.100719>,  <34.562832, 39.733540, 30.125780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351967, 40.072521, 30.100719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275892, -0.240418, -0.930636,
		-0.803734, -0.473307, 0.360545,
		-0.527158, 0.847455, -0.062651,
		34.193821, 40.326759, 30.081924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863533, 39.549660, 29.965191>,  <34.562832, 39.733540, 30.125780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863533, 39.549660, 29.965191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901711, 39.925591, 29.833975>,  <33.924618, 40.151150, 29.755245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901711, 39.925591, 29.833975>,  <33.863533, 39.549660, 29.965191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901711, 39.925591, 29.833975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234217, -0.299092, -0.925033,
		-0.967488, 0.165118, 0.191579,
		0.095440, 0.939830, -0.328042,
		33.930344, 40.207539, 29.735563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253689, 39.639977, 29.503433>,  <33.863533, 39.549660, 29.965191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253689, 39.639977, 29.503433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491943, 39.946884, 29.408335>,  <33.634895, 40.131027, 29.351276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.491943, 39.946884, 29.408335>,  <33.253689, 39.639977, 29.503433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491943, 39.946884, 29.408335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162127, -0.175050, -0.971119,
		-0.786725, 0.616975, 0.020129,
		0.595632, 0.767268, -0.237745,
		33.670631, 40.177063, 29.337011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936398, 39.994778, 28.952154>,  <33.253689, 39.639977, 29.503433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936398, 39.994778, 28.952154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319592, 40.106258, 28.925049>,  <33.549507, 40.173149, 28.908785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319592, 40.106258, 28.925049>,  <32.936398, 39.994778, 28.952154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319592, 40.106258, 28.925049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031174, -0.133690, -0.990533,
		-0.285125, 0.951026, -0.119384,
		0.957983, 0.278704, -0.067765,
		33.606987, 40.189869, 28.904718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920891, 40.495670, 28.436684>,  <32.936398, 39.994778, 28.952154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920891, 40.495670, 28.436684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291973, 40.352684, 28.479717>,  <33.514622, 40.266891, 28.505537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291973, 40.352684, 28.479717>,  <32.920891, 40.495670, 28.436684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291973, 40.352684, 28.479717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018284, -0.244341, -0.969517,
		0.372857, 0.901396, -0.220141,
		0.927709, -0.357467, 0.107585,
		33.570286, 40.245445, 28.511993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245777, 40.795132, 27.861485>,  <32.920891, 40.495670, 28.436684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245777, 40.795132, 27.861485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449718, 40.479801, 27.999229>,  <33.572083, 40.290604, 28.081877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449718, 40.479801, 27.999229>,  <33.245777, 40.795132, 27.861485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449718, 40.479801, 27.999229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086309, -0.351406, -0.932236,
		0.855921, 0.505025, -0.111125,
		0.509853, -0.788329, 0.344364,
		33.602673, 40.243301, 28.102539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702202, 40.707779, 27.302122>,  <33.245777, 40.795132, 27.861485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702202, 40.707779, 27.302122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707489, 40.385098, 27.538446>,  <33.710663, 40.191490, 27.680241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707489, 40.385098, 27.538446>,  <33.702202, 40.707779, 27.302122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707489, 40.385098, 27.538446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144654, -0.583104, -0.799416,
		0.989394, 0.096032, 0.108984,
		0.013220, -0.806702, 0.590811,
		33.711456, 40.143085, 27.715689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342064, 40.363926, 27.169014>,  <33.702202, 40.707779, 27.302122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342064, 40.363926, 27.169014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060154, 40.110962, 27.297607>,  <33.891006, 39.959183, 27.374763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060154, 40.110962, 27.297607>,  <34.342064, 40.363926, 27.169014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060154, 40.110962, 27.297607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124328, -0.556247, -0.821664,
		0.698448, -0.539122, 0.470657,
		-0.704779, -0.632406, 0.321481,
		33.848721, 39.921242, 27.394053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452492, 39.805542, 26.725010>,  <34.342064, 40.363926, 27.169014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452492, 39.805542, 26.725010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099537, 39.713741, 26.889309>,  <33.887764, 39.658661, 26.987888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099537, 39.713741, 26.889309>,  <34.452492, 39.805542, 26.725010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099537, 39.713741, 26.889309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179643, -0.642509, -0.744923,
		0.434872, -0.731102, 0.525715,
		-0.882392, -0.229505, 0.410746,
		33.834820, 39.644890, 27.012533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532787, 39.129257, 26.725714>,  <34.452492, 39.805542, 26.725010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532787, 39.129257, 26.725714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143913, 39.222935, 26.727093>,  <33.910591, 39.279140, 26.727921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143913, 39.222935, 26.727093>,  <34.532787, 39.129257, 26.725714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143913, 39.222935, 26.727093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173743, -0.711205, -0.681176,
		-0.157077, -0.662827, 0.732112,
		-0.972183, 0.234197, 0.003448,
		33.852257, 39.293194, 26.728127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188332, 38.527142, 26.548649>,  <34.532787, 39.129257, 26.725714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188332, 38.527142, 26.548649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890007, 38.786221, 26.486359>,  <33.711014, 38.941669, 26.448984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890007, 38.786221, 26.486359>,  <34.188332, 38.527142, 26.548649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890007, 38.786221, 26.486359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380314, -0.605918, -0.698731,
		-0.546924, -0.461898, 0.698230,
		-0.745812, 0.647699, -0.155725,
		33.666264, 38.980530, 26.439640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411259, 38.255207, 26.465044>,  <34.188332, 38.527142, 26.548649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411259, 38.255207, 26.465044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419006, 38.612068, 26.284517>,  <33.423656, 38.826183, 26.176201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419006, 38.612068, 26.284517>,  <33.411259, 38.255207, 26.465044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419006, 38.612068, 26.284517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340223, -0.418580, -0.842044,
		-0.940145, 0.169862, 0.295421,
		0.019374, 0.892153, -0.451317,
		33.424820, 38.879715, 26.149122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855759, 38.244499, 26.108124>,  <33.411259, 38.255207, 26.465044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855759, 38.244499, 26.108124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047241, 38.543823, 25.924438>,  <33.162132, 38.723415, 25.814226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047241, 38.543823, 25.924438>,  <32.855759, 38.244499, 26.108124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047241, 38.543823, 25.924438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265023, -0.375481, -0.888131,
		-0.837021, 0.546856, 0.018574,
		0.478705, 0.748307, -0.459215,
		33.190853, 38.768314, 25.786674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385227, 38.501484, 25.487919>,  <32.855759, 38.244499, 26.108124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385227, 38.501484, 25.487919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742233, 38.660660, 25.403015>,  <32.956436, 38.756165, 25.352074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742233, 38.660660, 25.403015>,  <32.385227, 38.501484, 25.487919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742233, 38.660660, 25.403015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106355, -0.271658, -0.956499,
		-0.438289, 0.876269, -0.200137,
		0.892520, 0.397938, -0.212260,
		33.009991, 38.780041, 25.339336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279049, 38.889641, 24.954107>,  <32.385227, 38.501484, 25.487919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279049, 38.889641, 24.954107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674339, 38.829147, 24.944794>,  <32.911514, 38.792850, 24.939205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674339, 38.829147, 24.944794>,  <32.279049, 38.889641, 24.954107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674339, 38.829147, 24.944794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053554, -0.199305, -0.978473,
		0.143342, 0.968196, -0.205057,
		0.988223, -0.151238, -0.023282,
		32.970806, 38.783775, 24.937809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533527, 39.211979, 24.338850>,  <32.279049, 38.889641, 24.954107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533527, 39.211979, 24.338850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836559, 38.963764, 24.419849>,  <33.018379, 38.814835, 24.468449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836559, 38.963764, 24.419849>,  <32.533527, 39.211979, 24.338850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836559, 38.963764, 24.419849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134226, -0.155498, -0.978674,
		0.638796, 0.768602, -0.034509,
		0.757577, -0.620541, 0.202498,
		33.063831, 38.777603, 24.480598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101578, 39.468090, 23.968859>,  <32.533527, 39.211979, 24.338850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101578, 39.468090, 23.968859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169224, 39.083420, 24.055191>,  <33.209812, 38.852619, 24.106991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.169224, 39.083420, 24.055191>,  <33.101578, 39.468090, 23.968859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169224, 39.083420, 24.055191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346012, -0.147116, -0.926624,
		0.922862, 0.231389, 0.307871,
		0.169118, -0.961674, 0.215832,
		33.219959, 38.794918, 24.119940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663189, 39.228622, 23.575148>,  <33.101578, 39.468090, 23.968859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663189, 39.228622, 23.575148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518139, 38.870586, 23.678925>,  <33.431110, 38.655766, 23.741190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518139, 38.870586, 23.678925>,  <33.663189, 39.228622, 23.575148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518139, 38.870586, 23.678925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056795, -0.256648, -0.964835,
		0.930204, -0.364606, 0.042230,
		-0.362623, -0.895094, 0.259443,
		33.409351, 38.602058, 23.756758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067711, 38.729942, 23.232470>,  <33.663189, 39.228622, 23.575148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067711, 38.729942, 23.232470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723381, 38.553543, 23.334061>,  <33.516785, 38.447704, 23.395016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723381, 38.553543, 23.334061>,  <34.067711, 38.729942, 23.232470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723381, 38.553543, 23.334061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003970, -0.504868, -0.863187,
		0.508894, -0.742041, 0.436352,
		-0.860820, -0.441003, 0.253978,
		33.465134, 38.421242, 23.410254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093239, 38.156239, 22.859583>,  <34.067711, 38.729942, 23.232470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093239, 38.156239, 22.859583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701519, 38.139828, 22.938866>,  <33.466488, 38.129982, 22.986435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701519, 38.139828, 22.938866>,  <34.093239, 38.156239, 22.859583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701519, 38.139828, 22.938866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157264, -0.462250, -0.872693,
		0.127427, -0.885800, 0.446230,
		-0.979301, -0.041029, 0.198208,
		33.407730, 38.127518, 22.998327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917919, 37.506100, 22.714191>,  <34.093239, 38.156239, 22.859583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917919, 37.506100, 22.714191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568256, 37.699951, 22.701645>,  <33.358459, 37.816261, 22.694117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568256, 37.699951, 22.701645>,  <33.917919, 37.506100, 22.714191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568256, 37.699951, 22.701645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205670, -0.427942, -0.880094,
		-0.439940, -0.762890, 0.473762,
		-0.874158, 0.484627, -0.031366,
		33.306011, 37.845341, 22.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094189, 37.055283, 23.187660>,  <33.917919, 37.506100, 22.714191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094189, 37.055283, 23.187660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408348, 36.808136, 23.202585>,  <34.596844, 36.659847, 23.211540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408348, 36.808136, 23.202585>,  <34.094189, 37.055283, 23.187660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408348, 36.808136, 23.202585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173575, 0.277693, 0.944859,
		-0.594159, -0.735612, 0.325346,
		0.785396, -0.617868, 0.037310,
		34.643967, 36.622776, 23.213778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026215, 36.440182, 23.708992>,  <34.094189, 37.055283, 23.187660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026215, 36.440182, 23.708992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414204, 36.519093, 23.652098>,  <34.646996, 36.566441, 23.617962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414204, 36.519093, 23.652098>,  <34.026215, 36.440182, 23.708992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414204, 36.519093, 23.652098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095071, 0.230726, 0.968363,
		0.223829, -0.952815, 0.205047,
		0.969980, 0.197254, -0.142228,
		34.705196, 36.578278, 23.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324249, 36.275890, 24.370090>,  <34.026215, 36.440182, 23.708992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324249, 36.275890, 24.370090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619381, 36.473713, 24.186344>,  <34.796459, 36.592407, 24.076096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619381, 36.473713, 24.186344>,  <34.324249, 36.275890, 24.370090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619381, 36.473713, 24.186344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414614, 0.204965, 0.886614,
		0.532634, -0.844633, -0.053820,
		0.737832, 0.494555, -0.459368,
		34.840733, 36.622078, 24.048534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893856, 36.144695, 24.741922>,  <34.324249, 36.275890, 24.370090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893856, 36.144695, 24.741922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024582, 36.462917, 24.537848>,  <35.103016, 36.653851, 24.415401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024582, 36.462917, 24.537848>,  <34.893856, 36.144695, 24.741922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024582, 36.462917, 24.537848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592583, 0.248042, 0.766368,
		0.736234, -0.552787, -0.390367,
		0.326811, 0.795551, -0.510189,
		35.122623, 36.701584, 24.384790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683491, 36.185253, 24.796566>,  <34.893856, 36.144695, 24.741922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683491, 36.185253, 24.796566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515560, 36.543743, 24.739256>,  <35.414803, 36.758839, 24.704870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.515560, 36.543743, 24.739256>,  <35.683491, 36.185253, 24.796566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515560, 36.543743, 24.739256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641938, 0.404811, 0.651186,
		0.641608, 0.181412, -0.745271,
		-0.419826, 0.896224, -0.143275,
		35.389614, 36.812611, 24.696274>
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
