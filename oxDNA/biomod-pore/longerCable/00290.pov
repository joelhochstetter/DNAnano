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
	<24.244642, 35.109898, 34.637669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381529, 35.270699, 34.977383>,  <24.463661, 35.367180, 35.181210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381529, 35.270699, 34.977383>,  <24.244642, 35.109898, 34.637669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381529, 35.270699, 34.977383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456372, 0.861197, -0.223751,
		-0.821348, -0.311018, 0.478179,
		0.342216, 0.402004, 0.849283,
		24.484194, 35.391300, 35.232166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716017, 34.758087, 35.104084>,  <24.244642, 35.109898, 34.637669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716017, 34.758087, 35.104084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115032, 34.776917, 35.083302>,  <25.354441, 34.788216, 35.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115032, 34.776917, 35.083302>,  <24.716017, 34.758087, 35.104084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115032, 34.776917, 35.083302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066184, -0.387680, 0.919415,
		0.023137, -0.920591, -0.389841,
		0.997539, 0.047073, -0.051958,
		25.414293, 34.791039, 35.067715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131592, 34.086250, 35.405636>,  <24.716017, 34.758087, 35.104084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131592, 34.086250, 35.405636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359678, 34.413559, 35.434734>,  <25.496531, 34.609943, 35.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359678, 34.413559, 35.434734>,  <25.131592, 34.086250, 35.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359678, 34.413559, 35.434734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316698, -0.300667, 0.899612,
		0.757995, -0.489936, -0.430588,
		0.570216, 0.818268, 0.072742,
		25.530743, 34.659039, 35.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876410, 33.900337, 35.646557>,  <25.131592, 34.086250, 35.405636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876410, 33.900337, 35.646557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807108, 34.279724, 35.752682>,  <25.765526, 34.507355, 35.816357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807108, 34.279724, 35.752682>,  <25.876410, 33.900337, 35.646557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807108, 34.279724, 35.752682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283873, -0.209860, 0.935615,
		0.943079, 0.237415, -0.232885,
		-0.173256, 0.948469, 0.265310,
		25.755131, 34.564266, 35.832275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453226, 34.078770, 36.077595>,  <25.876410, 33.900337, 35.646557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453226, 34.078770, 36.077595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167862, 34.348888, 36.152451>,  <25.996643, 34.510960, 36.197365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167862, 34.348888, 36.152451>,  <26.453226, 34.078770, 36.077595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167862, 34.348888, 36.152451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071849, -0.195162, 0.978136,
		0.697052, 0.711259, 0.090712,
		-0.713412, 0.675294, 0.187141,
		25.953838, 34.551476, 36.208591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656315, 34.667862, 36.543652>,  <26.453226, 34.078770, 36.077595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656315, 34.667862, 36.543652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274250, 34.554527, 36.578018>,  <26.045012, 34.486526, 36.598637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274250, 34.554527, 36.578018>,  <26.656315, 34.667862, 36.543652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274250, 34.554527, 36.578018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135915, -0.161806, 0.977418,
		-0.263041, 0.945271, 0.193061,
		-0.955163, -0.283341, 0.085915,
		25.987701, 34.469524, 36.603794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361668, 34.977951, 37.170414>,  <26.656315, 34.667862, 36.543652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361668, 34.977951, 37.170414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139750, 34.656960, 37.082569>,  <26.006599, 34.464363, 37.029861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139750, 34.656960, 37.082569>,  <26.361668, 34.977951, 37.170414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139750, 34.656960, 37.082569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005094, -0.260676, 0.965413,
		-0.831972, 0.536724, 0.140534,
		-0.554795, -0.802481, -0.219609,
		25.973310, 34.416214, 37.016685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555441, 34.994160, 37.335964>,  <26.361668, 34.977951, 37.170414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555441, 34.994160, 37.335964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773088, 34.661633, 37.381313>,  <25.903677, 34.462116, 37.408524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773088, 34.661633, 37.381313>,  <25.555441, 34.994160, 37.335964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773088, 34.661633, 37.381313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004652, 0.132133, 0.991221,
		-0.838996, -0.539869, 0.068029,
		0.544118, -0.831314, 0.113370,
		25.936323, 34.412239, 37.415325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244766, 34.426472, 37.699623>,  <25.555441, 34.994160, 37.335964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244766, 34.426472, 37.699623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638016, 34.417061, 37.772190>,  <25.873966, 34.411415, 37.815731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638016, 34.417061, 37.772190>,  <25.244766, 34.426472, 37.699623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638016, 34.417061, 37.772190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179402, 0.069948, 0.981286,
		-0.035776, -0.997273, 0.064547,
		0.983125, -0.023527, 0.181415,
		25.932953, 34.410004, 37.826614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278894, 33.897480, 38.249229>,  <25.244766, 34.426472, 37.699623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278894, 33.897480, 38.249229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612883, 34.116047, 38.275307>,  <25.813276, 34.247189, 38.290955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612883, 34.116047, 38.275307>,  <25.278894, 33.897480, 38.249229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612883, 34.116047, 38.275307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053413, -0.037439, 0.997870,
		0.547698, -0.836674, -0.002074,
		0.834970, 0.546420, 0.065194,
		25.863373, 34.279972, 38.294865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652498, 33.613720, 38.641968>,  <25.278894, 33.897480, 38.249229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652498, 33.613720, 38.641968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809574, 33.980591, 38.669022>,  <25.903820, 34.200714, 38.685253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809574, 33.980591, 38.669022>,  <25.652498, 33.613720, 38.641968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809574, 33.980591, 38.669022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148457, -0.135798, 0.979551,
		0.907609, -0.374619, -0.189489,
		0.392691, 0.917180, 0.067636,
		25.927382, 34.255745, 38.689312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955193, 33.624378, 39.193291>,  <25.652498, 33.613720, 38.641968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955193, 33.624378, 39.193291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892580, 34.018711, 39.169159>,  <25.855013, 34.255310, 39.154682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892580, 34.018711, 39.169159>,  <25.955193, 33.624378, 39.193291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892580, 34.018711, 39.169159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054150, 0.069552, 0.996107,
		0.986187, 0.152656, -0.064270,
		-0.156532, 0.985829, -0.060325,
		25.845621, 34.314461, 39.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352962, 34.112751, 39.571815>,  <25.955193, 33.624378, 39.193291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352962, 34.112751, 39.571815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559811, 34.415382, 39.731903>,  <25.683920, 34.596962, 39.827957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559811, 34.415382, 39.731903>,  <25.352962, 34.112751, 39.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559811, 34.415382, 39.731903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562287, 0.052248, -0.825290,
		-0.645306, 0.651815, -0.398394,
		0.517121, 0.756576, 0.400223,
		25.714947, 34.642357, 39.851971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376522, 34.770325, 39.141716>,  <25.352962, 34.112751, 39.571815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376522, 34.770325, 39.141716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711340, 34.735977, 39.357857>,  <25.912231, 34.715370, 39.487541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711340, 34.735977, 39.357857>,  <25.376522, 34.770325, 39.141716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711340, 34.735977, 39.357857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538172, -0.048807, -0.841421,
		0.098624, 0.995110, 0.005358,
		0.837045, -0.085868, 0.540354,
		25.962454, 34.710217, 39.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784286, 35.451206, 39.044338>,  <25.376522, 34.770325, 39.141716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784286, 35.451206, 39.044338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963329, 35.098560, 39.104218>,  <26.070755, 34.886974, 39.140144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963329, 35.098560, 39.104218>,  <25.784286, 35.451206, 39.044338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963329, 35.098560, 39.104218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341292, 0.013693, -0.939858,
		0.826540, 0.471776, 0.307016,
		0.447606, -0.881612, 0.149695,
		26.097610, 34.834076, 39.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419689, 35.429070, 38.789555>,  <25.784286, 35.451206, 39.044338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419689, 35.429070, 38.789555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294876, 35.050373, 38.757759>,  <26.219988, 34.823154, 38.738682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294876, 35.050373, 38.757759>,  <26.419689, 35.429070, 38.789555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294876, 35.050373, 38.757759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248412, -0.000545, -0.968654,
		0.917020, -0.321999, 0.235351,
		-0.312034, -0.946740, -0.079489,
		26.201265, 34.766350, 38.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870396, 35.084682, 38.426014>,  <26.419689, 35.429070, 38.789555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870396, 35.084682, 38.426014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574833, 34.818516, 38.383598>,  <26.397495, 34.658817, 38.358150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574833, 34.818516, 38.383598>,  <26.870396, 35.084682, 38.426014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574833, 34.818516, 38.383598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338666, -0.230706, -0.912184,
		0.582515, -0.709930, 0.395823,
		-0.738906, -0.665412, -0.106040,
		26.353161, 34.618893, 38.351788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150141, 34.347576, 38.144180>,  <26.870396, 35.084682, 38.426014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150141, 34.347576, 38.144180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764771, 34.384827, 38.043667>,  <26.533548, 34.407177, 37.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764771, 34.384827, 38.043667>,  <27.150141, 34.347576, 38.144180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764771, 34.384827, 38.043667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220298, -0.258701, -0.940501,
		-0.152589, -0.961458, 0.228723,
		-0.963424, 0.093123, -0.251282,
		26.475744, 34.412766, 37.968281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946030, 33.724190, 37.830105>,  <27.150141, 34.347576, 38.144180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946030, 33.724190, 37.830105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707872, 33.982861, 37.639393>,  <26.564978, 34.138062, 37.524967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707872, 33.982861, 37.639393>,  <26.946030, 33.724190, 37.830105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707872, 33.982861, 37.639393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164090, -0.483041, -0.860085,
		-0.786499, -0.590324, 0.181487,
		-0.595394, 0.646675, -0.476777,
		26.529253, 34.176865, 37.496361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335127, 33.399548, 37.390827>,  <26.946030, 33.724190, 37.830105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335127, 33.399548, 37.390827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459145, 33.751541, 37.246883>,  <26.533554, 33.962738, 37.160515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459145, 33.751541, 37.246883>,  <26.335127, 33.399548, 37.390827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459145, 33.751541, 37.246883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121506, -0.412085, -0.903007,
		-0.942926, 0.236245, -0.234687,
		0.310042, 0.879985, -0.359861,
		26.552156, 34.015537, 37.138924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846592, 33.167477, 36.944717>,  <26.335127, 33.399548, 37.390827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846592, 33.167477, 36.944717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813381, 33.527744, 37.115318>,  <25.793455, 33.743904, 37.217678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813381, 33.527744, 37.115318>,  <25.846592, 33.167477, 36.944717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813381, 33.527744, 37.115318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341457, 0.376367, -0.861252,
		-0.936223, -0.217139, 0.276291,
		-0.083025, 0.900666, 0.426507,
		25.788473, 33.797943, 37.243271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186544, 33.408192, 36.852234>,  <25.846592, 33.167477, 36.944717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186544, 33.408192, 36.852234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426083, 33.726967, 36.883915>,  <25.569805, 33.918232, 36.902924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426083, 33.726967, 36.883915>,  <25.186544, 33.408192, 36.852234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426083, 33.726967, 36.883915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381582, 0.370882, -0.846665,
		-0.704116, 0.476798, 0.526199,
		0.598846, 0.796938, 0.079207,
		25.605736, 33.966049, 36.907677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725372, 33.949436, 36.633579>,  <25.186544, 33.408192, 36.852234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725372, 33.949436, 36.633579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097492, 34.094353, 36.610657>,  <25.320765, 34.181305, 36.596901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097492, 34.094353, 36.610657>,  <24.725372, 33.949436, 36.633579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097492, 34.094353, 36.610657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272837, 0.579058, -0.768279,
		-0.245158, 0.730366, 0.637545,
		0.930300, 0.362296, -0.057310,
		25.376581, 34.203041, 36.593464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845083, 34.736618, 36.586914>,  <24.725372, 33.949436, 36.633579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845083, 34.736618, 36.586914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236629, 34.795464, 36.643738>,  <25.471558, 34.830769, 36.677834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236629, 34.795464, 36.643738>,  <24.845083, 34.736618, 36.586914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236629, 34.795464, 36.643738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033300, 0.570719, -0.820470,
		-0.201775, 0.807860, 0.553759,
		0.978866, 0.147110, 0.142059,
		25.530289, 34.839596, 36.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022291, 35.451008, 36.490032>,  <24.845083, 34.736618, 36.586914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022291, 35.451008, 36.490032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322762, 35.198658, 36.412334>,  <25.503044, 35.047249, 36.365715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322762, 35.198658, 36.412334>,  <25.022291, 35.451008, 36.490032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322762, 35.198658, 36.412334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040595, 0.337866, -0.940319,
		0.658851, 0.698461, 0.279407,
		0.751178, -0.630872, -0.194249,
		25.548115, 35.009396, 36.354061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548557, 35.833332, 36.073391>,  <25.022291, 35.451008, 36.490032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548557, 35.833332, 36.073391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599243, 35.441536, 36.010735>,  <25.629654, 35.206459, 35.973141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599243, 35.441536, 36.010735>,  <25.548557, 35.833332, 36.073391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599243, 35.441536, 36.010735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023721, 0.160863, -0.986692,
		0.991656, 0.121312, 0.043618,
		0.126714, -0.979493, -0.156643,
		25.637257, 35.147690, 35.963741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138391, 35.799831, 35.601456>,  <25.548557, 35.833332, 36.073391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138391, 35.799831, 35.601456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943951, 35.454296, 35.548550>,  <25.827286, 35.246975, 35.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943951, 35.454296, 35.548550>,  <26.138391, 35.799831, 35.601456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943951, 35.454296, 35.548550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108308, 0.209737, -0.971741,
		0.867166, -0.458037, -0.195514,
		-0.486100, -0.863836, -0.132268,
		25.798120, 35.195145, 35.508869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535187, 35.512653, 35.010727>,  <26.138391, 35.799831, 35.601456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535187, 35.512653, 35.010727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185877, 35.323074, 35.055935>,  <25.976292, 35.209328, 35.083061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185877, 35.323074, 35.055935>,  <26.535187, 35.512653, 35.010727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185877, 35.323074, 35.055935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156749, 0.053652, -0.986180,
		0.461330, -0.878919, -0.121143,
		-0.873272, -0.473943, 0.113019,
		25.923895, 35.180893, 35.089840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300547, 35.539646, 34.848320>,  <26.535187, 35.512653, 35.010727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300547, 35.539646, 34.848320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410097, 35.493538, 35.230251>,  <27.475828, 35.465874, 35.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410097, 35.493538, 35.230251>,  <27.300547, 35.539646, 34.848320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410097, 35.493538, 35.230251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714083, 0.689420, -0.121593,
		-0.644265, 0.715131, 0.271128,
		0.273876, -0.115270, 0.954832,
		27.492260, 35.458958, 35.516701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276512, 36.321228, 35.179886>,  <27.300547, 35.539646, 34.848320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276512, 36.321228, 35.179886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501410, 36.052055, 35.372150>,  <27.636349, 35.890553, 35.487511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501410, 36.052055, 35.372150>,  <27.276512, 36.321228, 35.179886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501410, 36.052055, 35.372150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761100, 0.648399, 0.017485,
		-0.323429, 0.356004, 0.876730,
		0.562246, -0.672935, 0.480665,
		27.670084, 35.850174, 35.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580204, 36.573383, 35.782162>,  <27.276512, 36.321228, 35.179886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580204, 36.573383, 35.782162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808670, 36.276089, 35.642807>,  <27.945749, 36.097713, 35.559196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808670, 36.276089, 35.642807>,  <27.580204, 36.573383, 35.782162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808670, 36.276089, 35.642807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809492, 0.580337, 0.089057,
		0.135990, -0.332881, 0.933112,
		0.571165, -0.743236, -0.348384,
		27.980019, 36.053120, 35.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944548, 36.334751, 36.347603>,  <27.580204, 36.573383, 35.782162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944548, 36.334751, 36.347603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137793, 36.279846, 36.001709>,  <28.253740, 36.246902, 35.794174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137793, 36.279846, 36.001709>,  <27.944548, 36.334751, 36.347603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137793, 36.279846, 36.001709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673627, 0.689177, 0.266949,
		0.559311, -0.711473, 0.425414,
		0.483113, -0.137263, -0.864732,
		28.282726, 36.238667, 35.742290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628681, 36.375420, 36.544662>,  <27.944548, 36.334751, 36.347603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628681, 36.375420, 36.544662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651779, 36.444241, 36.151306>,  <28.665638, 36.485531, 35.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651779, 36.444241, 36.151306>,  <28.628681, 36.375420, 36.544662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651779, 36.444241, 36.151306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654954, 0.736898, 0.167383,
		0.753459, -0.653744, -0.070132,
		0.057745, 0.172049, -0.983394,
		28.669104, 36.495853, 35.856289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321653, 36.321388, 36.435814>,  <28.628681, 36.375420, 36.544662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321653, 36.321388, 36.435814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170380, 36.544460, 36.140255>,  <29.079617, 36.678303, 35.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170380, 36.544460, 36.140255>,  <29.321653, 36.321388, 36.435814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170380, 36.544460, 36.140255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546683, 0.778676, 0.307897,
		0.747071, -0.287502, -0.599356,
		-0.378183, 0.557679, -0.738899,
		29.056925, 36.711765, 35.918587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877676, 36.609814, 36.101650>,  <29.321653, 36.321388, 36.435814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877676, 36.609814, 36.101650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547394, 36.821823, 36.024418>,  <29.349224, 36.949028, 35.978077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547394, 36.821823, 36.024418>,  <29.877676, 36.609814, 36.101650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547394, 36.821823, 36.024418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516253, 0.847980, 0.120051,
		0.227362, -0.000553, -0.973810,
		-0.825705, 0.530027, -0.193084,
		29.299683, 36.980831, 35.966492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069170, 36.936886, 35.448414>,  <29.877676, 36.609814, 36.101650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069170, 36.936886, 35.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692938, 37.023632, 35.343891>,  <29.467199, 37.075680, 35.281178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692938, 37.023632, 35.343891>,  <30.069170, 36.936886, 35.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692938, 37.023632, 35.343891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208463, 0.976201, 0.059795,
		0.268057, 0.001769, -0.963401,
		-0.940579, 0.216862, -0.261308,
		29.410765, 37.088692, 35.265499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974321, 37.326004, 34.742958>,  <30.069170, 36.936886, 35.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974321, 37.326004, 34.742958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715792, 37.418926, 35.033695>,  <29.560675, 37.474678, 35.208138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715792, 37.418926, 35.033695>,  <29.974321, 37.326004, 34.742958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715792, 37.418926, 35.033695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325360, 0.945503, -0.012876,
		-0.690223, 0.228163, -0.686683,
		-0.646323, 0.232306, 0.726843,
		29.521894, 37.488617, 35.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691780, 37.955959, 34.554100>,  <29.974321, 37.326004, 34.742958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691780, 37.955959, 34.554100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655441, 37.915932, 34.950428>,  <29.633638, 37.891914, 35.188225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655441, 37.915932, 34.950428>,  <29.691780, 37.955959, 34.554100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655441, 37.915932, 34.950428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443226, 0.886901, 0.130215,
		-0.891794, 0.450989, -0.036218,
		-0.090848, -0.100072, 0.990824,
		29.628187, 37.885910, 35.247677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627590, 38.562424, 34.983414>,  <29.691780, 37.955959, 34.554100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627590, 38.562424, 34.983414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781349, 38.290775, 35.233543>,  <29.873606, 38.127785, 35.383621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781349, 38.290775, 35.233543>,  <29.627590, 38.562424, 34.983414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781349, 38.290775, 35.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755677, 0.620560, 0.209423,
		-0.530274, 0.392039, 0.751741,
		0.384398, -0.679125, 0.625322,
		29.896669, 38.087036, 35.421139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947433, 39.221771, 35.101486>,  <29.627590, 38.562424, 34.983414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947433, 39.221771, 35.101486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035320, 39.242725, 35.491150>,  <30.088053, 39.255299, 35.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035320, 39.242725, 35.491150>,  <29.947433, 39.221771, 35.101486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035320, 39.242725, 35.491150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, -0.965579, 0.105547,
		0.946154, -0.254779, -0.199701,
		0.219718, 0.052388, 0.974156,
		30.101236, 39.258442, 35.783398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401682, 38.613781, 35.388477>,  <29.947433, 39.221771, 35.101486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401682, 38.613781, 35.388477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210388, 38.762234, 35.706860>,  <30.095612, 38.851307, 35.897888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210388, 38.762234, 35.706860>,  <30.401682, 38.613781, 35.388477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210388, 38.762234, 35.706860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360645, -0.909368, 0.207330,
		0.800766, -0.187906, 0.568740,
		-0.478235, 0.371136, 0.795958,
		30.066917, 38.873573, 35.945648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532467, 38.279732, 35.977909>,  <30.401682, 38.613781, 35.388477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532467, 38.279732, 35.977909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161301, 38.428833, 35.979935>,  <29.938601, 38.518295, 35.981152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161301, 38.428833, 35.979935>,  <30.532467, 38.279732, 35.977909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161301, 38.428833, 35.979935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371398, -0.925544, 0.073701,
		0.032163, 0.066506, 0.997268,
		-0.927916, 0.372754, 0.005068,
		29.882925, 38.540661, 35.981457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091663, 37.754845, 36.404179>,  <30.532467, 38.279732, 35.977909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091663, 37.754845, 36.404179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884802, 37.981815, 36.147873>,  <29.760685, 38.117996, 35.994087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884802, 37.981815, 36.147873>,  <30.091663, 37.754845, 36.404179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884802, 37.981815, 36.147873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499247, -0.808084, -0.312653,
		-0.695200, 0.158211, 0.701189,
		-0.517155, 0.567423, -0.640766,
		29.729656, 38.152042, 35.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313866, 37.784389, 36.487980>,  <30.091663, 37.754845, 36.404179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313866, 37.784389, 36.487980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413948, 37.833248, 36.103798>,  <29.473997, 37.862564, 35.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413948, 37.833248, 36.103798>,  <29.313866, 37.784389, 36.487980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413948, 37.833248, 36.103798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533168, -0.810662, -0.241990,
		-0.808164, 0.572632, -0.137707,
		0.250205, 0.122147, -0.960457,
		29.489010, 37.869892, 35.815662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705334, 37.789757, 36.209190>,  <29.313866, 37.784389, 36.487980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705334, 37.789757, 36.209190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950769, 37.695820, 35.907631>,  <29.098030, 37.639458, 35.726696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950769, 37.695820, 35.907631>,  <28.705334, 37.789757, 36.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950769, 37.695820, 35.907631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515819, -0.842095, -0.157499,
		-0.597864, 0.485514, -0.637836,
		0.613587, -0.234845, -0.753896,
		29.134846, 37.625366, 35.681461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322361, 37.624908, 35.587555>,  <28.705334, 37.789757, 36.209190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322361, 37.624908, 35.587555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679989, 37.446308, 35.573280>,  <28.894566, 37.339149, 35.564716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679989, 37.446308, 35.573280>,  <28.322361, 37.624908, 35.587555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679989, 37.446308, 35.573280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427587, -0.827027, -0.364959,
		0.133442, 0.341558, -0.930339,
		0.894071, -0.446502, -0.035685,
		28.948210, 37.312359, 35.562576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472775, 37.377251, 34.963249>,  <28.322361, 37.624908, 35.587555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472775, 37.377251, 34.963249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665871, 37.147633, 35.227802>,  <28.781729, 37.009861, 35.386536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665871, 37.147633, 35.227802>,  <28.472775, 37.377251, 34.963249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665871, 37.147633, 35.227802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593132, -0.769940, -0.235345,
		0.644327, -0.278678, -0.712167,
		0.482740, -0.574048, 0.661386,
		28.810692, 36.975418, 35.426216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623919, 36.684822, 34.602062>,  <28.472775, 37.377251, 34.963249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623919, 36.684822, 34.602062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662855, 36.597893, 34.990555>,  <28.686216, 36.545734, 35.223652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662855, 36.597893, 34.990555>,  <28.623919, 36.684822, 34.602062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662855, 36.597893, 34.990555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498870, -0.855075, -0.141335,
		0.861193, -0.470762, -0.191649,
		0.097339, -0.217324, 0.971234,
		28.692057, 36.532696, 35.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860893, 36.074474, 34.556633>,  <28.623919, 36.684822, 34.602062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860893, 36.074474, 34.556633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683908, 36.117130, 34.912804>,  <28.577717, 36.142723, 35.126507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683908, 36.117130, 34.912804>,  <28.860893, 36.074474, 34.556633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683908, 36.117130, 34.912804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553008, -0.814093, -0.177298,
		0.705982, -0.570859, 0.419177,
		-0.442461, 0.106639, 0.890424,
		28.551170, 36.149120, 35.179932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992081, 35.444305, 34.933357>,  <28.860893, 36.074474, 34.556633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992081, 35.444305, 34.933357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656097, 35.623032, 35.056534>,  <28.454508, 35.730267, 35.130440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656097, 35.623032, 35.056534>,  <28.992081, 35.444305, 34.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656097, 35.623032, 35.056534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499874, -0.857932, -0.118654,
		0.211178, -0.253597, 0.943977,
		-0.839958, 0.446812, 0.307943,
		28.404110, 35.757076, 35.148918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067469, 34.814114, 34.482872>,  <28.992081, 35.444305, 34.933357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067469, 34.814114, 34.482872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005007, 34.876358, 34.092712>,  <28.967529, 34.913704, 33.858616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005007, 34.876358, 34.092712>,  <29.067469, 34.814114, 34.482872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005007, 34.876358, 34.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942902, 0.317616, -0.100279,
		0.294197, -0.935363, -0.196326,
		-0.156154, 0.155614, -0.975397,
		28.958160, 34.923042, 33.800095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594620, 34.451382, 34.126286>,  <29.067469, 34.814114, 34.482872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594620, 34.451382, 34.126286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457855, 34.771797, 33.929741>,  <29.375797, 34.964046, 33.811813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457855, 34.771797, 33.929741>,  <29.594620, 34.451382, 34.126286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457855, 34.771797, 33.929741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931361, 0.358490, -0.063657,
		0.125156, -0.479398, -0.868628,
		-0.341912, 0.801038, -0.491359,
		29.355282, 35.012108, 33.782333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839048, 34.449123, 33.409248>,  <29.594620, 34.451382, 34.126286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839048, 34.449123, 33.409248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769880, 34.816505, 33.551537>,  <29.728380, 35.036934, 33.636909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769880, 34.816505, 33.551537>,  <29.839048, 34.449123, 33.409248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769880, 34.816505, 33.551537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920889, 0.278873, -0.272386,
		-0.349375, 0.280476, -0.894019,
		-0.172920, 0.918457, 0.355718,
		29.718004, 35.092041, 33.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780102, 33.696426, 33.275517>,  <29.839048, 34.449123, 33.409248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780102, 33.696426, 33.275517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108238, 33.779629, 33.062435>,  <30.305120, 33.829552, 32.934586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108238, 33.779629, 33.062435>,  <29.780102, 33.696426, 33.275517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108238, 33.779629, 33.062435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571786, -0.314853, 0.757581,
		-0.010141, -0.926068, -0.377222,
		0.820340, 0.208007, -0.532705,
		30.354340, 33.842030, 32.902622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292110, 33.144894, 33.240685>,  <29.780102, 33.696426, 33.275517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292110, 33.144894, 33.240685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502846, 33.480530, 33.186462>,  <30.629288, 33.681911, 33.153931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502846, 33.480530, 33.186462>,  <30.292110, 33.144894, 33.240685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502846, 33.480530, 33.186462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741334, -0.375615, 0.556181,
		0.415769, -0.393506, -0.819932,
		0.526840, 0.839086, -0.135550,
		30.660898, 33.732254, 33.145798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891966, 32.955437, 33.023571>,  <30.292110, 33.144894, 33.240685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891966, 32.955437, 33.023571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938267, 33.314644, 33.193352>,  <30.966047, 33.530170, 33.295219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938267, 33.314644, 33.193352>,  <30.891966, 32.955437, 33.023571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938267, 33.314644, 33.193352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755436, -0.357045, 0.549396,
		0.644917, 0.257050, -0.719728,
		0.115753, 0.898022, 0.424449,
		30.972992, 33.584049, 33.320686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614992, 33.008434, 33.183105>,  <30.891966, 32.955437, 33.023571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614992, 33.008434, 33.183105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481739, 33.315250, 33.402439>,  <31.401787, 33.499340, 33.534039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481739, 33.315250, 33.402439>,  <31.614992, 33.008434, 33.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481739, 33.315250, 33.402439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640215, -0.242928, 0.728773,
		0.692204, 0.593832, -0.410143,
		-0.333133, 0.767040, 0.548336,
		31.381800, 33.545361, 33.566940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212585, 33.299229, 33.597656>,  <31.614992, 33.008434, 33.183105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212585, 33.299229, 33.597656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886936, 33.400620, 33.806637>,  <31.691547, 33.461452, 33.932026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886936, 33.400620, 33.806637>,  <32.212585, 33.299229, 33.597656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886936, 33.400620, 33.806637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492287, -0.175933, 0.852468,
		0.307996, 0.951209, 0.018448,
		-0.814121, 0.253475, 0.522454,
		31.642700, 33.476662, 33.963371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204643, 32.651142, 34.090046>,  <32.212585, 33.299229, 33.597656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204643, 32.651142, 34.090046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914625, 32.376820, 34.064800>,  <31.740614, 32.212227, 34.049652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914625, 32.376820, 34.064800>,  <32.204643, 32.651142, 34.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914625, 32.376820, 34.064800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683359, -0.727784, 0.057884,
		-0.085633, -0.001163, 0.996326,
		-0.725043, -0.685805, -0.063117,
		31.697113, 32.171078, 34.045864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116741, 32.167068, 34.753559>,  <32.204643, 32.651142, 34.090046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116741, 32.167068, 34.753559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009026, 31.996145, 34.408329>,  <31.944395, 31.893593, 34.201191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009026, 31.996145, 34.408329>,  <32.116741, 32.167068, 34.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009026, 31.996145, 34.408329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694246, -0.707241, 0.133538,
		-0.667461, -0.563224, 0.487107,
		-0.269291, -0.427304, -0.863072,
		31.928238, 31.867954, 34.149406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556458, 32.648911, 34.412830>,  <32.116741, 32.167068, 34.753559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556458, 32.648911, 34.412830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721651, 32.991135, 34.537708>,  <31.820766, 33.196468, 34.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721651, 32.991135, 34.537708>,  <31.556458, 32.648911, 34.412830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721651, 32.991135, 34.537708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736554, 0.515380, -0.438032,
		-0.535662, -0.049050, 0.843007,
		0.412984, 0.855557, 0.312198,
		31.845547, 33.247803, 34.631367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005585, 33.206059, 34.765205>,  <31.556458, 32.648911, 34.412830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005585, 33.206059, 34.765205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329794, 33.399101, 34.632454>,  <31.524321, 33.514927, 34.552803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329794, 33.399101, 34.632454>,  <31.005585, 33.206059, 34.765205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329794, 33.399101, 34.632454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582378, 0.603748, -0.544357,
		-0.062339, 0.634493, 0.770411,
		0.810525, 0.482605, -0.331877,
		31.572950, 33.543884, 34.532890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878551, 34.053852, 34.676247>,  <31.005585, 33.206059, 34.765205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878551, 34.053852, 34.676247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160503, 33.944942, 34.414249>,  <31.329674, 33.879597, 34.257050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160503, 33.944942, 34.414249>,  <30.878551, 34.053852, 34.676247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160503, 33.944942, 34.414249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479612, 0.497388, -0.722895,
		0.522608, 0.823696, 0.220014,
		0.704878, -0.272270, -0.654993,
		31.371967, 33.863262, 34.217751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857056, 34.568493, 34.183437>,  <30.878551, 34.053852, 34.676247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857056, 34.568493, 34.183437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041803, 34.261616, 34.005409>,  <31.152653, 34.077488, 33.898594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041803, 34.261616, 34.005409>,  <30.857056, 34.568493, 34.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041803, 34.261616, 34.005409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413502, 0.257675, -0.873281,
		0.784661, 0.587379, -0.198225,
		0.461870, -0.767196, -0.445070,
		31.180365, 34.031456, 33.871887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296579, 34.760441, 33.694069>,  <30.857056, 34.568493, 34.183437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296579, 34.760441, 33.694069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193441, 34.395454, 33.566998>,  <31.131559, 34.176464, 33.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193441, 34.395454, 33.566998>,  <31.296579, 34.760441, 33.694069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193441, 34.395454, 33.566998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467061, 0.405543, -0.785741,
		0.845796, -0.054223, -0.530745,
		-0.257845, -0.912466, -0.317681,
		31.116087, 34.121716, 33.471695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367979, 34.811405, 33.034084>,  <31.296579, 34.760441, 33.694069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367979, 34.811405, 33.034084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130856, 34.491875, 33.074966>,  <30.988581, 34.300156, 33.099495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130856, 34.491875, 33.074966>,  <31.367979, 34.811405, 33.034084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130856, 34.491875, 33.074966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660503, 0.409652, -0.629223,
		0.460775, -0.440514, -0.770476,
		-0.592808, -0.798832, 0.102203,
		30.953012, 34.252224, 33.105629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149452, 34.997833, 32.799084>,  <31.367979, 34.811405, 33.034084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149452, 34.997833, 32.799084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974983, 35.332691, 32.667053>,  <31.870302, 35.533604, 32.587833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974983, 35.332691, 32.667053>,  <32.149452, 34.997833, 32.799084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974983, 35.332691, 32.667053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259366, -0.234288, -0.936931,
		-0.861676, -0.494272, -0.114936,
		-0.436170, 0.837141, -0.330077,
		31.844131, 35.583832, 32.568031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636337, 34.933643, 32.172840>,  <32.149452, 34.997833, 32.799084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636337, 34.933643, 32.172840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457119, 35.282230, 32.093037>,  <32.349586, 35.491383, 32.045155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457119, 35.282230, 32.093037>,  <32.636337, 34.933643, 32.172840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457119, 35.282230, 32.093037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893670, -0.442739, 0.073055,
		-0.024667, 0.211030, 0.977168,
		-0.448047, 0.871463, -0.199513,
		32.322704, 35.543671, 32.033184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786964, 34.915741, 32.138615>,  <32.636337, 34.933643, 32.172840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786964, 34.915741, 32.138615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836063, 35.311592, 32.108776>,  <31.865522, 35.549103, 32.090874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836063, 35.311592, 32.108776>,  <31.786964, 34.915741, 32.138615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836063, 35.311592, 32.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247180, -0.103280, -0.963450,
		-0.961163, 0.099824, -0.257295,
		0.122749, 0.989630, -0.074594,
		31.872889, 35.608482, 32.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454655, 35.054337, 31.536152>,  <31.786964, 34.915741, 32.138615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454655, 35.054337, 31.536152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724033, 35.343082, 31.599882>,  <31.885660, 35.516331, 31.638121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724033, 35.343082, 31.599882>,  <31.454655, 35.054337, 31.536152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724033, 35.343082, 31.599882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279461, -0.049073, -0.958902,
		-0.684378, 0.690293, -0.234781,
		0.673445, 0.721864, 0.159325,
		31.926067, 35.559643, 31.647680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254475, 35.564602, 31.145180>,  <31.454655, 35.054337, 31.536152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254475, 35.564602, 31.145180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647369, 35.613056, 31.202507>,  <31.883106, 35.642128, 31.236902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647369, 35.613056, 31.202507>,  <31.254475, 35.564602, 31.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647369, 35.613056, 31.202507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155201, -0.095115, -0.983293,
		-0.105484, 0.988068, -0.112226,
		0.982235, 0.121139, 0.143316,
		31.942039, 35.649399, 31.245502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551834, 36.045883, 30.583178>,  <31.254475, 35.564602, 31.145180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551834, 36.045883, 30.583178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882191, 35.857014, 30.706436>,  <32.080406, 35.743690, 30.780392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882191, 35.857014, 30.706436>,  <31.551834, 36.045883, 30.583178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882191, 35.857014, 30.706436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240281, -0.199668, -0.949946,
		0.510066, 0.858595, -0.051450,
		0.825892, -0.472173, 0.308148,
		32.129959, 35.715363, 30.798880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069210, 36.257137, 30.207634>,  <31.551834, 36.045883, 30.583178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069210, 36.257137, 30.207634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202236, 35.902561, 30.336397>,  <32.282051, 35.689816, 30.413654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202236, 35.902561, 30.336397>,  <32.069210, 36.257137, 30.207634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202236, 35.902561, 30.336397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251022, -0.245820, -0.936248,
		0.909060, 0.392167, 0.140766,
		0.332563, -0.886441, 0.321908,
		32.302006, 35.636627, 30.432970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787979, 36.214687, 29.984777>,  <32.069210, 36.257137, 30.207634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787979, 36.214687, 29.984777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671650, 35.838211, 30.053568>,  <32.601852, 35.612324, 30.094843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671650, 35.838211, 30.053568>,  <32.787979, 36.214687, 29.984777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671650, 35.838211, 30.053568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372915, -0.277037, -0.885542,
		0.881110, -0.193407, 0.431554,
		-0.290826, -0.941193, 0.171975,
		32.584400, 35.555855, 30.105160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231758, 35.757217, 29.515022>,  <32.787979, 36.214687, 29.984777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231758, 35.757217, 29.515022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993855, 35.463577, 29.646088>,  <32.851112, 35.287395, 29.724728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993855, 35.463577, 29.646088>,  <33.231758, 35.757217, 29.515022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993855, 35.463577, 29.646088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077234, -0.457885, -0.885650,
		0.800184, -0.501443, 0.329029,
		-0.594760, -0.734096, 0.327664,
		32.815426, 35.243347, 29.744387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551006, 35.135429, 29.295856>,  <33.231758, 35.757217, 29.515022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551006, 35.135429, 29.295856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156815, 35.089256, 29.345654>,  <32.920300, 35.061554, 29.375532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156815, 35.089256, 29.345654>,  <33.551006, 35.135429, 29.295856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156815, 35.089256, 29.345654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054221, -0.480904, -0.875095,
		0.160880, -0.869142, 0.467664,
		-0.985484, -0.115428, 0.124494,
		32.861168, 35.054626, 29.383001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402023, 34.377312, 29.058434>,  <33.551006, 35.135429, 29.295856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402023, 34.377312, 29.058434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085423, 34.619892, 29.028090>,  <32.895462, 34.765438, 29.009884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085423, 34.619892, 29.028090>,  <33.402023, 34.377312, 29.058434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085423, 34.619892, 29.028090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026870, -0.158531, -0.986988,
		-0.610582, -0.779160, 0.141773,
		-0.791497, 0.606446, -0.075860,
		32.847973, 34.801826, 29.005331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976791, 34.061176, 28.536732>,  <33.402023, 34.377312, 29.058434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976791, 34.061176, 28.536732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844933, 34.437012, 28.573635>,  <32.765820, 34.662514, 28.595778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844933, 34.437012, 28.573635>,  <32.976791, 34.061176, 28.536732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844933, 34.437012, 28.573635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012457, 0.093383, -0.995552,
		-0.944023, -0.329327, -0.019079,
		-0.329643, 0.939587, 0.092258,
		32.746040, 34.718887, 28.601313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354179, 34.157246, 28.103750>,  <32.976791, 34.061176, 28.536732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354179, 34.157246, 28.103750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511242, 34.519455, 28.168060>,  <32.605480, 34.736782, 28.206646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511242, 34.519455, 28.168060>,  <32.354179, 34.157246, 28.103750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511242, 34.519455, 28.168060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090075, 0.211838, -0.973145,
		-0.915263, 0.367630, 0.164745,
		0.392657, 0.905523, 0.160773,
		32.629040, 34.791111, 28.216291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964619, 34.606655, 27.741510>,  <32.354179, 34.157246, 28.103750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964619, 34.606655, 27.741510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283340, 34.839077, 27.807814>,  <32.474575, 34.978531, 27.847595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283340, 34.839077, 27.807814>,  <31.964619, 34.606655, 27.741510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283340, 34.839077, 27.807814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066643, 0.188144, -0.979878,
		-0.600550, 0.791818, 0.111190,
		0.796805, 0.581056, 0.165759,
		32.522381, 35.013393, 27.857542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034771, 35.080093, 27.204535>,  <31.964619, 34.606655, 27.741510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034771, 35.080093, 27.204535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382786, 35.183918, 27.372181>,  <32.591595, 35.246212, 27.472769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382786, 35.183918, 27.372181>,  <32.034771, 35.080093, 27.204535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382786, 35.183918, 27.372181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246044, 0.508082, -0.825418,
		-0.427194, 0.821267, 0.378187,
		0.870039, 0.259563, 0.419118,
		32.643799, 35.261787, 27.497917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117695, 35.810192, 27.187424>,  <32.034771, 35.080093, 27.204535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117695, 35.810192, 27.187424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465050, 35.614307, 27.156237>,  <32.673462, 35.496777, 27.137524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465050, 35.614307, 27.156237>,  <32.117695, 35.810192, 27.187424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465050, 35.614307, 27.156237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192608, 0.477983, -0.856991,
		0.456949, 0.729185, 0.509399,
		0.868389, -0.489716, -0.077967,
		32.725567, 35.467392, 27.132847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687294, 36.331654, 26.971458>,  <32.117695, 35.810192, 27.187424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687294, 36.331654, 26.971458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856564, 35.980724, 26.880913>,  <32.958126, 35.770168, 26.826586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856564, 35.980724, 26.880913>,  <32.687294, 36.331654, 26.971458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856564, 35.980724, 26.880913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258084, 0.356200, -0.898061,
		0.868516, 0.321611, 0.377155,
		0.423169, -0.877319, -0.226363,
		32.983513, 35.717529, 26.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390846, 36.530396, 26.796425>,  <32.687294, 36.331654, 26.971458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390846, 36.530396, 26.796425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308582, 36.180161, 26.621586>,  <33.259224, 35.970020, 26.516682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308582, 36.180161, 26.621586>,  <33.390846, 36.530396, 26.796425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308582, 36.180161, 26.621586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080974, 0.429891, -0.899243,
		0.975268, -0.220330, -0.017511,
		-0.205658, -0.875585, -0.437100,
		33.246883, 35.917484, 26.490456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934036, 36.431431, 26.324755>,  <33.390846, 36.530396, 26.796425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934036, 36.431431, 26.324755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614880, 36.210476, 26.228228>,  <33.423386, 36.077904, 26.170311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614880, 36.210476, 26.228228>,  <33.934036, 36.431431, 26.324755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614880, 36.210476, 26.228228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127427, 0.236721, -0.963185,
		0.589181, -0.799266, -0.118487,
		-0.797890, -0.552392, -0.241320,
		33.375511, 36.044758, 26.155832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180996, 36.086506, 25.815607>,  <33.934036, 36.431431, 26.324755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180996, 36.086506, 25.815607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784367, 36.096313, 25.764736>,  <33.546387, 36.102200, 25.734213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784367, 36.096313, 25.764736>,  <34.180996, 36.086506, 25.815607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784367, 36.096313, 25.764736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123540, 0.473972, -0.871830,
		0.038902, -0.880198, -0.473009,
		-0.991577, 0.024520, -0.127178,
		33.486893, 36.103668, 25.726583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124817, 35.986340, 25.120934>,  <34.180996, 36.086506, 25.815607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124817, 35.986340, 25.120934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755054, 36.103615, 25.218517>,  <33.533195, 36.173981, 25.277067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755054, 36.103615, 25.218517>,  <34.124817, 35.986340, 25.120934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755054, 36.103615, 25.218517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073780, 0.490081, -0.868549,
		-0.374209, -0.820890, -0.431402,
		-0.924405, 0.293190, 0.243959,
		33.477734, 36.191570, 25.291704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810661, 35.951981, 24.482412>,  <34.124817, 35.986340, 25.120934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810661, 35.951981, 24.482412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584873, 36.196182, 24.704641>,  <33.449402, 36.342705, 24.837978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584873, 36.196182, 24.704641>,  <33.810661, 35.951981, 24.482412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584873, 36.196182, 24.704641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059698, 0.641096, -0.765136,
		-0.823295, -0.465060, -0.325431,
		-0.564466, 0.610505, 0.555574,
		33.415535, 36.379333, 24.871313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218258, 36.166695, 24.086250>,  <33.810661, 35.951981, 24.482412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218258, 36.166695, 24.086250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242466, 36.436684, 24.380392>,  <33.256989, 36.598679, 24.556877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242466, 36.436684, 24.380392>,  <33.218258, 36.166695, 24.086250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242466, 36.436684, 24.380392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259620, 0.721992, -0.641347,
		-0.963813, -0.152098, 0.218931,
		0.060519, 0.674977, 0.735353,
		33.260620, 36.639175, 24.600998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739578, 36.586975, 23.944183>,  <33.218258, 36.166695, 24.086250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739578, 36.586975, 23.944183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957211, 36.822651, 24.183123>,  <33.087791, 36.964058, 24.326487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957211, 36.822651, 24.183123>,  <32.739578, 36.586975, 23.944183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957211, 36.822651, 24.183123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315837, 0.803405, -0.504765,
		-0.777316, 0.085970, 0.623208,
		0.544083, 0.589194, 0.597347,
		33.120434, 36.999409, 24.362328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302879, 37.214497, 24.077713>,  <32.739578, 36.586975, 23.944183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302879, 37.214497, 24.077713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682030, 37.317608, 24.152637>,  <32.909519, 37.379475, 24.197592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682030, 37.317608, 24.152637>,  <32.302879, 37.214497, 24.077713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682030, 37.317608, 24.152637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112274, 0.820316, -0.560782,
		-0.298215, 0.510520, 0.806497,
		0.947873, 0.257782, 0.187312,
		32.966393, 37.394943, 24.208832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360535, 37.997723, 24.014004>,  <32.302879, 37.214497, 24.077713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360535, 37.997723, 24.014004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748192, 37.902378, 23.988873>,  <32.980785, 37.845169, 23.973793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748192, 37.902378, 23.988873>,  <32.360535, 37.997723, 24.014004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748192, 37.902378, 23.988873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173933, 0.841847, -0.510921,
		0.174679, 0.484226, 0.857328,
		0.969141, -0.238365, -0.062830,
		33.038933, 37.830868, 23.970024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857498, 38.694550, 24.161955>,  <32.360535, 37.997723, 24.014004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857498, 38.694550, 24.161955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087353, 38.429703, 23.969543>,  <33.225266, 38.270794, 23.854095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087353, 38.429703, 23.969543>,  <32.857498, 38.694550, 24.161955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087353, 38.429703, 23.969543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376896, 0.735824, -0.562595,
		0.726458, 0.141989, 0.672382,
		0.574637, -0.662120, -0.481030,
		33.259743, 38.231068, 23.825233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414120, 39.193008, 23.967319>,  <32.857498, 38.694550, 24.161955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414120, 39.193008, 23.967319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419083, 38.848606, 23.763939>,  <33.422062, 38.641964, 23.641911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419083, 38.848606, 23.763939>,  <33.414120, 39.193008, 23.967319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419083, 38.848606, 23.763939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371126, 0.476135, -0.797220,
		0.928500, -0.178805, 0.325449,
		0.012411, -0.861001, -0.508451,
		33.422806, 38.590305, 23.611404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009552, 39.183323, 23.686432>,  <33.414120, 39.193008, 23.967319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009552, 39.183323, 23.686432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731197, 38.979252, 23.484259>,  <33.564186, 38.856812, 23.362955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731197, 38.979252, 23.484259>,  <34.009552, 39.183323, 23.686432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731197, 38.979252, 23.484259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206405, 0.532016, -0.821192,
		0.687850, -0.675780, -0.264921,
		-0.695887, -0.510176, -0.505432,
		33.522430, 38.826199, 23.332628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281940, 39.124466, 23.094004>,  <34.009552, 39.183323, 23.686432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281940, 39.124466, 23.094004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903175, 39.046371, 22.991831>,  <33.675919, 38.999516, 22.930527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903175, 39.046371, 22.991831>,  <34.281940, 39.124466, 23.094004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903175, 39.046371, 22.991831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094993, 0.589134, -0.802432,
		0.307144, -0.784095, -0.539311,
		-0.946910, -0.195232, -0.255433,
		33.619102, 38.987801, 22.915201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105042, 39.184738, 22.322634>,  <34.281940, 39.124466, 23.094004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105042, 39.184738, 22.322634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724213, 39.212841, 22.441715>,  <33.495716, 39.229702, 22.513165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724213, 39.212841, 22.441715>,  <34.105042, 39.184738, 22.322634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724213, 39.212841, 22.441715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179173, 0.660723, -0.728932,
		-0.247911, -0.747335, -0.616467,
		-0.952070, 0.070256, 0.297703,
		33.438591, 39.233917, 22.531027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690491, 39.076012, 21.696423>,  <34.105042, 39.184738, 22.322634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690491, 39.076012, 21.696423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473053, 39.265594, 21.973515>,  <33.342590, 39.379345, 22.139769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473053, 39.265594, 21.973515>,  <33.690491, 39.076012, 21.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473053, 39.265594, 21.973515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107699, 0.779108, -0.617569,
		-0.832410, -0.410313, -0.372474,
		-0.543594, 0.473955, 0.692728,
		33.309975, 39.407780, 22.181334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088158, 39.509525, 21.369108>,  <33.690491, 39.076012, 21.696423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088158, 39.509525, 21.369108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165150, 39.688526, 21.718437>,  <33.211346, 39.795929, 21.928034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165150, 39.688526, 21.718437>,  <33.088158, 39.509525, 21.369108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165150, 39.688526, 21.718437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044846, 0.885021, -0.463386,
		-0.980275, 0.128359, 0.150283,
		0.192483, 0.447506, 0.873320,
		33.222893, 39.822777, 21.980433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695400, 40.084072, 21.348377>,  <33.088158, 39.509525, 21.369108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695400, 40.084072, 21.348377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977581, 40.172958, 21.617586>,  <33.146889, 40.226292, 21.779112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977581, 40.172958, 21.617586>,  <32.695400, 40.084072, 21.348377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977581, 40.172958, 21.617586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189951, 0.855564, -0.481589,
		-0.682831, 0.467579, 0.561348,
		0.705451, 0.222215, 0.673023,
		33.189217, 40.239624, 21.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609680, 40.742046, 21.444437>,  <32.695400, 40.084072, 21.348377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609680, 40.742046, 21.444437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974712, 40.682236, 21.596670>,  <33.193733, 40.646351, 21.688009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974712, 40.682236, 21.596670>,  <32.609680, 40.742046, 21.444437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974712, 40.682236, 21.596670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320816, 0.838905, -0.439677,
		-0.253528, 0.523337, 0.813537,
		0.912579, -0.149525, 0.380581,
		33.248486, 40.637379, 21.710844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813610, 41.412346, 21.665560>,  <32.609680, 40.742046, 21.444437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813610, 41.412346, 21.665560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162010, 41.218834, 21.631340>,  <33.371048, 41.102726, 21.610807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162010, 41.218834, 21.631340>,  <32.813610, 41.412346, 21.665560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162010, 41.218834, 21.631340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427777, 0.832450, -0.352186,
		0.241596, 0.270158, 0.932012,
		0.870999, -0.483780, -0.085549,
		33.423309, 41.073700, 21.605675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413918, 41.823631, 21.920013>,  <32.813610, 41.412346, 21.665560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413918, 41.823631, 21.920013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577873, 41.553856, 21.674372>,  <33.676247, 41.391991, 21.526987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577873, 41.553856, 21.674372>,  <33.413918, 41.823631, 21.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577873, 41.553856, 21.674372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558311, 0.717916, -0.415794,
		0.721302, -0.172431, 0.670813,
		0.409892, -0.674436, -0.614105,
		33.700840, 41.351524, 21.490141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064026, 41.917973, 21.982521>,  <33.413918, 41.823631, 21.920013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064026, 41.917973, 21.982521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036106, 41.735569, 21.627628>,  <34.019356, 41.626125, 21.414692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036106, 41.735569, 21.627628>,  <34.064026, 41.917973, 21.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036106, 41.735569, 21.627628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635886, 0.664946, -0.391785,
		0.768621, -0.591523, 0.243562,
		-0.069795, -0.456012, -0.887233,
		34.015167, 41.598766, 21.361458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649353, 41.888744, 21.832724>,  <34.064026, 41.917973, 21.982521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649353, 41.888744, 21.832724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441338, 41.866795, 21.491772>,  <34.316528, 41.853626, 21.287201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441338, 41.866795, 21.491772>,  <34.649353, 41.888744, 21.832724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441338, 41.866795, 21.491772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555021, 0.736829, -0.386051,
		0.649240, -0.673849, -0.352725,
		-0.520038, -0.054870, -0.852379,
		34.285328, 41.850334, 21.236057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168175, 41.959576, 21.199291>,  <34.649353, 41.888744, 21.832724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168175, 41.959576, 21.199291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792164, 42.039200, 21.088495>,  <34.566555, 42.086975, 21.022018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792164, 42.039200, 21.088495>,  <35.168175, 41.959576, 21.199291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792164, 42.039200, 21.088495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323235, 0.779181, -0.537025,
		0.108926, -0.594351, -0.796795,
		-0.940029, 0.199056, -0.276988,
		34.510155, 42.098915, 21.005400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262703, 42.192375, 20.553473>,  <35.168175, 41.959576, 21.199291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262703, 42.192375, 20.553473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890759, 42.326595, 20.613825>,  <34.667591, 42.407127, 20.650036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890759, 42.326595, 20.613825>,  <35.262703, 42.192375, 20.553473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890759, 42.326595, 20.613825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179905, 0.772425, -0.609093,
		-0.320926, -0.539227, -0.778615,
		-0.929861, 0.335550, 0.150881,
		34.611801, 42.427261, 20.659090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083237, 42.668484, 19.967031>,  <35.262703, 42.192375, 20.553473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083237, 42.668484, 19.967031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796127, 42.766159, 20.227854>,  <34.623863, 42.824764, 20.384346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796127, 42.766159, 20.227854>,  <35.083237, 42.668484, 19.967031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796127, 42.766159, 20.227854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020939, 0.928491, -0.370765,
		-0.695963, -0.279778, -0.661332,
		-0.717772, 0.244191, 0.652054,
		34.580795, 42.839417, 20.423470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420296, 42.862469, 19.588020>,  <35.083237, 42.668484, 19.967031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420296, 42.862469, 19.588020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440819, 43.048435, 19.941566>,  <34.453133, 43.160015, 20.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440819, 43.048435, 19.941566>,  <34.420296, 42.862469, 19.588020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440819, 43.048435, 19.941566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138643, 0.879777, -0.454721,
		-0.989013, -0.099212, 0.109595,
		0.051305, 0.464919, 0.883866,
		34.456211, 43.187912, 20.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883213, 43.352608, 19.589899>,  <34.420296, 42.862469, 19.588020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883213, 43.352608, 19.589899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118790, 43.489567, 19.882725>,  <34.260136, 43.571743, 20.058420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118790, 43.489567, 19.882725>,  <33.883213, 43.352608, 19.589899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118790, 43.489567, 19.882725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067897, 0.923580, -0.377346,
		-0.805321, 0.172529, 0.567178,
		0.588938, 0.342395, 0.732064,
		34.295471, 43.592285, 20.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758835, 43.929935, 20.108177>,  <33.883213, 43.352608, 19.589899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758835, 43.929935, 20.108177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671013, 44.308979, 20.015364>,  <33.618320, 44.536404, 19.959677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671013, 44.308979, 20.015364>,  <33.758835, 43.929935, 20.108177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671013, 44.308979, 20.015364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068656, -0.222238, -0.972572,
		-0.973180, -0.229468, -0.016265,
		-0.219559, 0.947605, -0.232032,
		33.605145, 44.593262, 19.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294842, 43.911163, 19.556484>,  <33.758835, 43.929935, 20.108177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294842, 43.911163, 19.556484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446671, 44.280659, 19.535967>,  <33.537769, 44.502357, 19.523657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446671, 44.280659, 19.535967>,  <33.294842, 43.911163, 19.556484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446671, 44.280659, 19.535967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016637, -0.062247, -0.997922,
		-0.925012, 0.377930, -0.038996,
		0.379572, 0.923739, -0.051291,
		33.560543, 44.557781, 19.520580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953026, 44.262825, 18.888060>,  <33.294842, 43.911163, 19.556484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953026, 44.262825, 18.888060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297794, 44.439262, 18.988083>,  <33.504654, 44.545124, 19.048098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297794, 44.439262, 18.988083>,  <32.953026, 44.262825, 18.888060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297794, 44.439262, 18.988083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256416, 0.046270, -0.965458,
		-0.437430, 0.896267, -0.073223,
		0.861920, 0.441096, 0.250058,
		33.556370, 44.571590, 19.063101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090530, 44.265217, 18.223164>,  <32.953026, 44.262825, 18.888060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090530, 44.265217, 18.223164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431610, 44.464382, 18.159929>,  <33.636257, 44.583881, 18.121988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431610, 44.464382, 18.159929>,  <33.090530, 44.265217, 18.223164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431610, 44.464382, 18.159929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012661, 0.322220, 0.946580,
		0.522255, -0.805143, 0.281060,
		0.852695, 0.497914, -0.158087,
		33.687420, 44.613758, 18.112503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636913, 44.121979, 18.734018>,  <33.090530, 44.265217, 18.223164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636913, 44.121979, 18.734018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661919, 44.494114, 18.589483>,  <33.676922, 44.717396, 18.502762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661919, 44.494114, 18.589483>,  <33.636913, 44.121979, 18.734018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661919, 44.494114, 18.589483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109975, 0.353422, 0.928977,
		0.991967, -0.097809, -0.080221,
		0.062511, 0.930337, -0.361339,
		33.680672, 44.773216, 18.481081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308830, 44.420944, 18.979082>,  <33.636913, 44.121979, 18.734018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308830, 44.420944, 18.979082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058361, 44.714779, 18.874552>,  <33.908077, 44.891079, 18.811832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058361, 44.714779, 18.874552>,  <34.308830, 44.420944, 18.979082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058361, 44.714779, 18.874552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033929, 0.309181, 0.950398,
		0.778943, 0.603984, -0.168678,
		-0.626177, 0.734582, -0.261327,
		33.870506, 44.935154, 18.796154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578136, 44.673653, 18.229479>,  <34.308830, 44.420944, 18.979082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578136, 44.673653, 18.229479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922276, 44.548355, 18.390314>,  <35.128761, 44.473175, 18.486814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922276, 44.548355, 18.390314>,  <34.578136, 44.673653, 18.229479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922276, 44.548355, 18.390314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058038, -0.723532, -0.687847,
		0.506385, 0.615126, -0.604313,
		0.860352, -0.313242, 0.402086,
		35.180382, 44.454384, 18.510941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968750, 45.267586, 18.584379>,  <34.578136, 44.673653, 18.229479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968750, 45.267586, 18.584379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018658, 45.658630, 18.516603>,  <35.048603, 45.893257, 18.475937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018658, 45.658630, 18.516603>,  <34.968750, 45.267586, 18.584379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018658, 45.658630, 18.516603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889806, -0.034702, 0.455017,
		0.438949, -0.207543, -0.874214,
		0.124773, 0.977610, -0.169440,
		35.056091, 45.951912, 18.465771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484280, 45.222073, 19.171949>,  <34.968750, 45.267586, 18.584379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484280, 45.222073, 19.171949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088348, 45.166985, 19.157673>,  <33.850788, 45.133930, 19.149107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088348, 45.166985, 19.157673>,  <34.484280, 45.222073, 19.171949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088348, 45.166985, 19.157673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034754, -0.009191, 0.999354,
		-0.137962, 0.990428, 0.004311,
		-0.989828, -0.137723, -0.035689,
		33.791401, 45.125668, 19.146967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944965, 45.734417, 19.511070>,  <34.484280, 45.222073, 19.171949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944965, 45.734417, 19.511070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764153, 45.377670, 19.517302>,  <33.655666, 45.163624, 19.521040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764153, 45.377670, 19.517302>,  <33.944965, 45.734417, 19.511070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764153, 45.377670, 19.517302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148287, 0.092355, 0.984623,
		-0.879589, 0.442771, -0.173999,
		-0.452032, -0.891865, 0.015577,
		33.628544, 45.110111, 19.521975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425476, 45.850136, 19.856695>,  <33.944965, 45.734417, 19.511070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425476, 45.850136, 19.856695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477219, 45.453861, 19.873672>,  <33.508263, 45.216095, 19.883858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477219, 45.453861, 19.873672>,  <33.425476, 45.850136, 19.856695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477219, 45.453861, 19.873672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265172, 0.006681, 0.964178,
		-0.955485, -0.135978, -0.261838,
		0.129357, -0.990689, 0.042441,
		33.516026, 45.156654, 19.886404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819275, 45.537804, 20.224537>,  <33.425476, 45.850136, 19.856695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819275, 45.537804, 20.224537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148228, 45.312752, 20.258331>,  <33.345600, 45.177719, 20.278608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148228, 45.312752, 20.258331>,  <32.819275, 45.537804, 20.224537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148228, 45.312752, 20.258331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095340, 0.010115, 0.995393,
		-0.560894, -0.826646, -0.045323,
		0.822379, -0.562632, 0.084486,
		33.394943, 45.143963, 20.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676193, 45.119026, 20.811619>,  <32.819275, 45.537804, 20.224537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676193, 45.119026, 20.811619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073597, 45.090580, 20.776094>,  <33.312038, 45.073513, 20.754780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073597, 45.090580, 20.776094>,  <32.676193, 45.119026, 20.811619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073597, 45.090580, 20.776094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094904, 0.087466, 0.991636,
		-0.062758, -0.993625, 0.093648,
		0.993506, -0.071121, -0.088810,
		33.371651, 45.069244, 20.749451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947544, 44.712502, 21.328539>,  <32.676193, 45.119026, 20.811619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947544, 44.712502, 21.328539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276791, 44.912254, 21.220396>,  <33.474339, 45.032104, 21.155510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276791, 44.912254, 21.220396>,  <32.947544, 44.712502, 21.328539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276791, 44.912254, 21.220396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320024, -0.014641, 0.947296,
		0.469106, -0.866258, -0.171865,
		0.823119, 0.499383, -0.270355,
		33.523727, 45.062069, 21.139290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470303, 44.423534, 21.594315>,  <32.947544, 44.712502, 21.328539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470303, 44.423534, 21.594315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633083, 44.783222, 21.530062>,  <33.730751, 44.999035, 21.491510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633083, 44.783222, 21.530062>,  <33.470303, 44.423534, 21.594315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633083, 44.783222, 21.530062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444239, -0.041171, 0.894962,
		0.798152, -0.435562, -0.416221,
		0.406947, 0.899217, -0.160633,
		33.755169, 45.052986, 21.481873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183277, 44.403591, 21.659515>,  <33.470303, 44.423534, 21.594315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183277, 44.403591, 21.659515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117722, 44.795414, 21.706192>,  <34.078388, 45.030506, 21.734198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117722, 44.795414, 21.706192>,  <34.183277, 44.403591, 21.659515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117722, 44.795414, 21.706192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437991, -0.033738, 0.898346,
		0.883914, 0.198340, -0.423505,
		-0.163890, 0.979552, 0.116692,
		34.068554, 45.089279, 21.741199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820229, 44.672916, 21.870331>,  <34.183277, 44.403591, 21.659515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820229, 44.672916, 21.870331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561272, 44.952038, 21.992943>,  <34.405899, 45.119511, 22.066509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561272, 44.952038, 21.992943>,  <34.820229, 44.672916, 21.870331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561272, 44.952038, 21.992943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437855, 0.011323, 0.898974,
		0.623837, 0.716200, -0.312867,
		-0.647388, 0.697803, 0.306528,
		34.367054, 45.161377, 22.084902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193829, 45.085133, 22.394241>,  <34.820229, 44.672916, 21.870331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193829, 45.085133, 22.394241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815243, 45.204662, 22.443085>,  <34.588093, 45.276379, 22.472391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815243, 45.204662, 22.443085>,  <35.193829, 45.085133, 22.394241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815243, 45.204662, 22.443085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150027, 0.072249, 0.986038,
		0.285831, 0.951569, -0.113213,
		-0.946463, 0.298825, 0.122110,
		34.531303, 45.294312, 22.479717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201275, 45.722637, 22.943314>,  <35.193829, 45.085133, 22.394241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201275, 45.722637, 22.943314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832588, 45.567505, 22.941322>,  <34.611378, 45.474426, 22.940128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832588, 45.567505, 22.941322>,  <35.201275, 45.722637, 22.943314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832588, 45.567505, 22.941322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013869, -0.045782, 0.998855,
		-0.387613, 0.920594, 0.047577,
		-0.921718, -0.387829, -0.004978,
		34.556072, 45.451157, 22.939829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861809, 46.023739, 23.451370>,  <35.201275, 45.722637, 22.943314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861809, 46.023739, 23.451370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618023, 45.707497, 23.427742>,  <34.471752, 45.517750, 23.413565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618023, 45.707497, 23.427742>,  <34.861809, 46.023739, 23.451370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618023, 45.707497, 23.427742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071904, -0.129324, 0.988992,
		-0.789543, 0.598513, 0.135666,
		-0.609469, -0.790606, -0.059071,
		34.435181, 45.470314, 23.410021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321991, 46.161091, 23.869104>,  <34.861809, 46.023739, 23.451370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321991, 46.161091, 23.869104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351433, 45.763367, 23.838316>,  <34.369099, 45.524731, 23.819843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351433, 45.763367, 23.838316>,  <34.321991, 46.161091, 23.869104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351433, 45.763367, 23.838316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023601, -0.078896, 0.996603,
		-0.997009, -0.071533, -0.029273,
		0.073600, -0.994313, -0.076972,
		34.373512, 45.465073, 23.815224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836376, 45.929405, 24.428295>,  <34.321991, 46.161091, 23.869104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836376, 45.929405, 24.428295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040436, 45.600704, 24.326731>,  <34.162872, 45.403484, 24.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040436, 45.600704, 24.326731>,  <33.836376, 45.929405, 24.428295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040436, 45.600704, 24.326731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042676, -0.319034, 0.946782,
		-0.859027, -0.472164, -0.197824,
		0.510149, -0.821753, -0.253909,
		34.193481, 45.354179, 24.250559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391983, 45.362392, 24.658579>,  <33.836376, 45.929405, 24.428295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391983, 45.362392, 24.658579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756172, 45.200142, 24.626303>,  <33.974686, 45.102791, 24.606937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756172, 45.200142, 24.626303>,  <33.391983, 45.362392, 24.658579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756172, 45.200142, 24.626303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104101, -0.413593, 0.904491,
		-0.400250, -0.815116, -0.418791,
		0.910474, -0.405619, -0.080686,
		34.029312, 45.078453, 24.602095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335979, 44.692120, 24.611731>,  <33.391983, 45.362392, 24.658579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335979, 44.692120, 24.611731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696781, 44.763371, 24.769041>,  <33.913261, 44.806122, 24.863428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696781, 44.763371, 24.769041>,  <33.335979, 44.692120, 24.611731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696781, 44.763371, 24.769041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250539, -0.525891, 0.812815,
		0.351605, -0.831691, -0.429726,
		0.902000, 0.178127, 0.393277,
		33.967381, 44.816807, 24.887024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580391, 44.008789, 24.841574>,  <33.335979, 44.692120, 24.611731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580391, 44.008789, 24.841574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755295, 44.298981, 25.054169>,  <33.860237, 44.473095, 25.181726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755295, 44.298981, 25.054169>,  <33.580391, 44.008789, 24.841574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755295, 44.298981, 25.054169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148086, -0.524831, 0.838226,
		0.887060, -0.445227, -0.122053,
		0.437258, 0.725482, 0.531489,
		33.886471, 44.516624, 25.213615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971703, 43.666225, 25.389395>,  <33.580391, 44.008789, 24.841574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971703, 43.666225, 25.389395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973309, 44.042313, 25.525616>,  <33.974274, 44.267963, 25.607347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973309, 44.042313, 25.525616>,  <33.971703, 43.666225, 25.389395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973309, 44.042313, 25.525616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112646, -0.337960, 0.934395,
		0.993627, -0.042117, 0.104554,
		0.004019, 0.940217, 0.340551,
		33.974514, 44.324379, 25.627781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232613, 43.557114, 26.039719>,  <33.971703, 43.666225, 25.389395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232613, 43.557114, 26.039719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096268, 43.932953, 26.052238>,  <34.014462, 44.158455, 26.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096268, 43.932953, 26.052238>,  <34.232613, 43.557114, 26.039719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096268, 43.932953, 26.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262505, -0.127094, 0.956524,
		0.902722, 0.317823, 0.289969,
		-0.340858, 0.939593, 0.031300,
		33.994011, 44.214832, 26.061628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612438, 43.842468, 26.448973>,  <34.232613, 43.557114, 26.039719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612438, 43.842468, 26.448973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267792, 44.045212, 26.459606>,  <34.061005, 44.166859, 26.465986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267792, 44.045212, 26.459606>,  <34.612438, 43.842468, 26.448973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267792, 44.045212, 26.459606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159038, -0.319348, 0.934197,
		0.481995, 0.800694, 0.355766,
		-0.861619, 0.506859, 0.026584,
		34.009308, 44.197269, 26.467581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567158, 44.017727, 27.182514>,  <34.612438, 43.842468, 26.448973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567158, 44.017727, 27.182514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198715, 44.084011, 27.041597>,  <33.977650, 44.123779, 26.957047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198715, 44.084011, 27.041597>,  <34.567158, 44.017727, 27.182514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198715, 44.084011, 27.041597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389107, -0.361941, 0.847109,
		0.012864, 0.917354, 0.397864,
		-0.921103, 0.165709, -0.352293,
		33.922386, 44.133724, 26.935909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243279, 44.521950, 27.603077>,  <34.567158, 44.017727, 27.182514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243279, 44.521950, 27.603077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951500, 44.321587, 27.416748>,  <33.776432, 44.201366, 27.304951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951500, 44.321587, 27.416748>,  <34.243279, 44.521950, 27.603077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951500, 44.321587, 27.416748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366276, -0.289109, 0.884453,
		-0.577707, 0.815784, 0.027418,
		-0.729449, -0.500912, -0.465822,
		33.732666, 44.171314, 27.277000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563961, 44.644558, 27.971266>,  <34.243279, 44.521950, 27.603077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563961, 44.644558, 27.971266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480629, 44.321957, 27.749943>,  <33.430630, 44.128395, 27.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480629, 44.321957, 27.749943>,  <33.563961, 44.644558, 27.971266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480629, 44.321957, 27.749943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384140, -0.452787, 0.804624,
		-0.899463, 0.380175, -0.215481,
		-0.208331, -0.806505, -0.553306,
		33.418129, 44.080006, 27.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011097, 44.408855, 28.359781>,  <33.563961, 44.644558, 27.971266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011097, 44.408855, 28.359781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131893, 44.093033, 28.146088>,  <33.204372, 43.903542, 28.017872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131893, 44.093033, 28.146088>,  <33.011097, 44.408855, 28.359781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131893, 44.093033, 28.146088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147691, -0.592380, 0.792006,
		-0.941801, -0.160277, -0.295503,
		0.301990, -0.789555, -0.534233,
		33.222492, 43.856167, 27.985817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469475, 43.933491, 28.456795>,  <33.011097, 44.408855, 28.359781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469475, 43.933491, 28.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801613, 43.733845, 28.357670>,  <33.000896, 43.614056, 28.298195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801613, 43.733845, 28.357670>,  <32.469475, 43.933491, 28.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801613, 43.733845, 28.357670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214139, -0.696355, 0.685007,
		-0.514466, -0.515724, -0.685094,
		0.830343, -0.499118, -0.247814,
		33.050716, 43.584110, 28.283325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142536, 43.290623, 28.413559>,  <32.469475, 43.933491, 28.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142536, 43.290623, 28.413559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538368, 43.261951, 28.463501>,  <32.775867, 43.244747, 28.493465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538368, 43.261951, 28.463501>,  <32.142536, 43.290623, 28.413559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538368, 43.261951, 28.463501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130668, -0.811217, 0.569958,
		0.060430, -0.580335, -0.812133,
		0.989583, -0.071677, 0.124853,
		32.835243, 43.240448, 28.500957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315716, 42.564816, 28.208702>,  <32.142536, 43.290623, 28.413559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315716, 42.564816, 28.208702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630432, 42.692722, 28.419874>,  <32.819263, 42.769466, 28.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630432, 42.692722, 28.419874>,  <32.315716, 42.564816, 28.208702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630432, 42.692722, 28.419874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078262, -0.900117, 0.428561,
		0.612236, -0.295871, -0.733231,
		0.786792, 0.319764, 0.527928,
		32.866470, 42.788651, 28.578253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815762, 41.942936, 28.276945>,  <32.315716, 42.564816, 28.208702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815762, 41.942936, 28.276945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931808, 42.199894, 28.560680>,  <33.001438, 42.354069, 28.730921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931808, 42.199894, 28.560680>,  <32.815762, 41.942936, 28.276945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931808, 42.199894, 28.560680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230463, -0.766301, 0.599725,
		0.928827, -0.010514, -0.370365,
		0.290116, 0.642396, 0.709338,
		33.018845, 42.392612, 28.773481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477425, 41.680954, 28.517336>,  <32.815762, 41.942936, 28.276945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477425, 41.680954, 28.517336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314331, 41.927757, 28.786573>,  <33.216473, 42.075840, 28.948116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314331, 41.927757, 28.786573>,  <33.477425, 41.680954, 28.517336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314331, 41.927757, 28.786573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111556, -0.697969, 0.707386,
		0.906259, 0.363515, 0.215757,
		-0.407737, 0.617006, 0.673093,
		33.192009, 42.112858, 28.988501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977360, 41.692547, 29.068964>,  <33.477425, 41.680954, 28.517336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977360, 41.692547, 29.068964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616714, 41.793640, 29.209379>,  <33.400330, 41.854294, 29.293629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616714, 41.793640, 29.209379>,  <33.977360, 41.692547, 29.068964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616714, 41.793640, 29.209379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111275, -0.648719, 0.752849,
		0.417992, 0.717838, 0.556769,
		-0.901610, 0.252730, 0.351036,
		33.346230, 41.869461, 29.314690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097412, 41.869476, 29.802361>,  <33.977360, 41.692547, 29.068964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097412, 41.869476, 29.802361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707371, 41.793941, 29.755865>,  <33.473347, 41.748619, 29.727968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707371, 41.793941, 29.755865>,  <34.097412, 41.869476, 29.802361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707371, 41.793941, 29.755865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050538, -0.699650, 0.712696,
		-0.215911, 0.689078, 0.691776,
		-0.975104, -0.188840, -0.116237,
		33.414841, 41.737289, 29.720993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799149, 42.050720, 30.387186>,  <34.097412, 41.869476, 29.802361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799149, 42.050720, 30.387186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559860, 41.780594, 30.214636>,  <33.416286, 41.618519, 30.111105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559860, 41.780594, 30.214636>,  <33.799149, 42.050720, 30.387186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559860, 41.780594, 30.214636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085856, -0.589239, 0.803384,
		-0.796722, 0.443561, 0.410472,
		-0.598216, -0.675315, -0.431377,
		33.380394, 41.577999, 30.085222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523361, 41.728859, 30.929405>,  <33.799149, 42.050720, 30.387186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523361, 41.728859, 30.929405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405064, 41.470188, 30.648169>,  <33.334084, 41.314987, 30.479425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405064, 41.470188, 30.648169>,  <33.523361, 41.728859, 30.929405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405064, 41.470188, 30.648169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090074, -0.713861, 0.694470,
		-0.951010, 0.268718, 0.152874,
		-0.295747, -0.646678, -0.703094,
		33.316341, 41.276184, 30.437241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072762, 41.282127, 31.289450>,  <33.523361, 41.728859, 30.929405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072762, 41.282127, 31.289450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167118, 41.073936, 30.961191>,  <33.223732, 40.949020, 30.764236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167118, 41.073936, 30.961191>,  <33.072762, 41.282127, 31.289450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167118, 41.073936, 30.961191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083168, -0.830566, 0.550674,
		-0.968214, -0.198151, -0.152636,
		0.235891, -0.520476, -0.820646,
		33.237885, 40.917793, 30.714998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626839, 40.616657, 31.264126>,  <33.072762, 41.282127, 31.289450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626839, 40.616657, 31.264126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966915, 40.570396, 31.058680>,  <33.170959, 40.542641, 30.935411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966915, 40.570396, 31.058680>,  <32.626839, 40.616657, 31.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966915, 40.570396, 31.058680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189018, -0.843479, 0.502807,
		-0.491373, -0.524564, -0.695259,
		0.850191, -0.115649, -0.513615,
		33.221973, 40.535702, 30.904594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640686, 39.955242, 31.210005>,  <32.626839, 40.616657, 31.264126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640686, 39.955242, 31.210005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014870, 40.069500, 31.126755>,  <33.239380, 40.138054, 31.076805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014870, 40.069500, 31.126755>,  <32.640686, 39.955242, 31.210005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014870, 40.069500, 31.126755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351591, -0.812014, 0.465850,
		-0.035934, -0.508961, -0.860039,
		0.935464, 0.285642, -0.208125,
		33.295509, 40.155193, 31.064318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067646, 39.366291, 30.985390>,  <32.640686, 39.955242, 31.210005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067646, 39.366291, 30.985390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359142, 39.618530, 31.092178>,  <33.534042, 39.769875, 31.156252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359142, 39.618530, 31.092178>,  <33.067646, 39.366291, 30.985390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359142, 39.618530, 31.092178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504259, -0.757940, 0.413824,
		0.463306, -0.166948, -0.870331,
		0.728745, 0.630599, 0.266973,
		33.577766, 39.807709, 31.172270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694962, 39.039219, 30.904499>,  <33.067646, 39.366291, 30.985390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694962, 39.039219, 30.904499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830433, 39.322269, 31.152550>,  <33.911716, 39.492100, 31.301380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830433, 39.322269, 31.152550>,  <33.694962, 39.039219, 30.904499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830433, 39.322269, 31.152550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461870, -0.699239, 0.545657,
		0.819741, 0.101618, -0.563648,
		0.338676, 0.707629, 0.620129,
		33.932037, 39.534557, 31.338589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132385, 38.731468, 31.184809>,  <33.694962, 39.039219, 30.904499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132385, 38.731468, 31.184809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135334, 39.032986, 31.447636>,  <34.137104, 39.213898, 31.605331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135334, 39.032986, 31.447636>,  <34.132385, 38.731468, 31.184809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135334, 39.032986, 31.447636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458237, -0.586578, 0.667792,
		0.888800, 0.296172, -0.349739,
		0.007368, 0.753796, 0.657067,
		34.137543, 39.259125, 31.644756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833736, 38.745735, 31.437496>,  <34.132385, 38.731468, 31.184809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833736, 38.745735, 31.437496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580933, 38.907661, 31.701828>,  <34.429253, 39.004818, 31.860426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580933, 38.907661, 31.701828>,  <34.833736, 38.745735, 31.437496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580933, 38.907661, 31.701828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296842, -0.661231, 0.688955,
		0.715857, 0.631586, 0.297738,
		-0.632008, 0.404812, 0.660828,
		34.391331, 39.029106, 31.900076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255760, 38.719494, 32.118549>,  <34.833736, 38.745735, 31.437496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255760, 38.719494, 32.118549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868156, 38.692955, 32.213734>,  <34.635593, 38.677032, 32.270844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868156, 38.692955, 32.213734>,  <35.255760, 38.719494, 32.118549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868156, 38.692955, 32.213734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224095, -0.641455, 0.733701,
		0.103965, 0.764287, 0.636441,
		-0.969006, -0.066345, 0.237962,
		34.577454, 38.673050, 32.285122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798462, 39.243374, 32.566780>,  <35.255760, 38.719494, 32.118549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798462, 39.243374, 32.566780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101170, 39.254333, 32.828026>,  <35.282795, 39.260910, 32.984772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101170, 39.254333, 32.828026>,  <34.798462, 39.243374, 32.566780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101170, 39.254333, 32.828026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079629, 0.987816, -0.133714,
		-0.648817, 0.153197, 0.745364,
		0.756767, 0.027403, 0.653110,
		35.328201, 39.262554, 33.023960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612572, 39.797279, 33.119221>,  <34.798462, 39.243374, 32.566780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612572, 39.797279, 33.119221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001858, 39.737083, 33.049706>,  <35.235432, 39.700966, 33.007996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001858, 39.737083, 33.049706>,  <34.612572, 39.797279, 33.119221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001858, 39.737083, 33.049706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110349, 0.968988, -0.221102,
		0.201671, 0.196002, 0.959641,
		0.973217, -0.150486, -0.173788,
		35.293823, 39.691936, 32.997570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847782, 40.474121, 33.233311>,  <34.612572, 39.797279, 33.119221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847782, 40.474121, 33.233311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152458, 40.295074, 33.045921>,  <35.335262, 40.187645, 32.933487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152458, 40.295074, 33.045921>,  <34.847782, 40.474121, 33.233311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152458, 40.295074, 33.045921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335925, 0.891065, -0.305218,
		0.554062, 0.075108, 0.829080,
		0.761689, -0.447619, -0.468474,
		35.380966, 40.160789, 32.905380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369598, 40.977886, 33.376385>,  <34.847782, 40.474121, 33.233311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369598, 40.977886, 33.376385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513985, 40.743523, 33.086166>,  <35.600616, 40.602905, 32.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513985, 40.743523, 33.086166>,  <35.369598, 40.977886, 33.376385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513985, 40.743523, 33.086166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354817, 0.805769, -0.474174,
		0.862444, -0.086276, 0.498745,
		0.360963, -0.585912, -0.725543,
		35.622272, 40.567749, 32.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029156, 41.312008, 33.196117>,  <35.369598, 40.977886, 33.376385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029156, 41.312008, 33.196117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965324, 41.077923, 32.878109>,  <35.927025, 40.937469, 32.687305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965324, 41.077923, 32.878109>,  <36.029156, 41.312008, 33.196117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965324, 41.077923, 32.878109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428378, 0.684513, -0.589860,
		0.889397, -0.434699, 0.141459,
		-0.159581, -0.585217, -0.795019,
		35.917450, 40.902359, 32.639603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690830, 41.199913, 32.861984>,  <36.029156, 41.312008, 33.196117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690830, 41.199913, 32.861984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399372, 41.116058, 32.601177>,  <36.224495, 41.065746, 32.444695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399372, 41.116058, 32.601177>,  <36.690830, 41.199913, 32.861984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399372, 41.116058, 32.601177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405021, 0.635803, -0.657048,
		0.552295, -0.742837, -0.378369,
		-0.728648, -0.209637, -0.652016,
		36.180779, 41.053165, 32.405571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974312, 41.066711, 32.168945>,  <36.690830, 41.199913, 32.861984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974312, 41.066711, 32.168945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597790, 41.166313, 32.077785>,  <36.371876, 41.226074, 32.023090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597790, 41.166313, 32.077785>,  <36.974312, 41.066711, 32.168945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597790, 41.166313, 32.077785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323760, 0.474941, -0.818297,
		-0.095522, -0.844053, -0.527684,
		-0.941305, 0.249009, -0.227903,
		36.315399, 41.241016, 32.009415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050926, 40.962708, 31.393347>,  <36.974312, 41.066711, 32.168945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050926, 40.962708, 31.393347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726372, 41.173500, 31.494499>,  <36.531639, 41.299976, 31.555191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726372, 41.173500, 31.494499>,  <37.050926, 40.962708, 31.393347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726372, 41.173500, 31.494499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100334, 0.551779, -0.827933,
		-0.575839, -0.646398, -0.500579,
		-0.811384, 0.526981, 0.252880,
		36.482956, 41.331593, 31.570364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580975, 40.905033, 30.790874>,  <37.050926, 40.962708, 31.393347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580975, 40.905033, 30.790874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508404, 41.249184, 30.981386>,  <36.464859, 41.455673, 31.095694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508404, 41.249184, 30.981386>,  <36.580975, 40.905033, 30.790874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508404, 41.249184, 30.981386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055081, 0.492447, -0.868598,
		-0.981860, -0.131356, -0.136734,
		-0.181429, 0.860373, 0.476279,
		36.453976, 41.507294, 31.124269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077118, 41.234402, 30.377773>,  <36.580975, 40.905033, 30.790874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077118, 41.234402, 30.377773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250557, 41.528004, 30.586859>,  <36.354618, 41.704166, 30.712311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250557, 41.528004, 30.586859>,  <36.077118, 41.234402, 30.377773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250557, 41.528004, 30.586859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035027, 0.565912, -0.823722,
		-0.900427, 0.375471, 0.219666,
		0.433595, 0.734007, 0.522714,
		36.380634, 41.748207, 30.743673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744114, 41.797760, 30.149368>,  <36.077118, 41.234402, 30.377773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744114, 41.797760, 30.149368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049244, 41.992828, 30.319202>,  <36.232323, 42.109867, 30.421103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049244, 41.992828, 30.319202>,  <35.744114, 41.797760, 30.149368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049244, 41.992828, 30.319202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016976, 0.671521, -0.740791,
		-0.646378, 0.557888, 0.520534,
		0.762828, 0.487668, 0.424586,
		36.278091, 42.139130, 30.446579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527958, 42.487530, 30.139811>,  <35.744114, 41.797760, 30.149368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527958, 42.487530, 30.139811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927212, 42.469883, 30.156662>,  <36.166763, 42.459293, 30.166773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927212, 42.469883, 30.156662>,  <35.527958, 42.487530, 30.139811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927212, 42.469883, 30.156662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060520, 0.629560, -0.774591,
		0.007651, 0.775698, 0.631058,
		0.998138, -0.044118, 0.042129,
		36.226654, 42.456646, 30.169300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757359, 43.186348, 30.178200>,  <35.527958, 42.487530, 30.139811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757359, 43.186348, 30.178200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089176, 43.010925, 30.039909>,  <36.288265, 42.905670, 29.956934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089176, 43.010925, 30.039909>,  <35.757359, 43.186348, 30.178200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089176, 43.010925, 30.039909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057728, 0.683113, -0.728028,
		0.555456, 0.583970, 0.591987,
		0.829540, -0.438561, -0.345728,
		36.338039, 42.879356, 29.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279194, 43.731991, 30.114630>,  <35.757359, 43.186348, 30.178200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279194, 43.731991, 30.114630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394512, 43.430748, 29.878084>,  <36.463703, 43.250000, 29.736156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394512, 43.430748, 29.878084>,  <36.279194, 43.731991, 30.114630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394512, 43.430748, 29.878084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231846, 0.654109, -0.719993,
		0.929050, 0.070465, 0.363181,
		0.288294, -0.753112, -0.591362,
		36.480999, 43.204815, 29.700676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832806, 43.955570, 29.754154>,  <36.279194, 43.731991, 30.114630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832806, 43.955570, 29.754154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709198, 43.647320, 29.531212>,  <36.635033, 43.462372, 29.397446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709198, 43.647320, 29.531212>,  <36.832806, 43.955570, 29.754154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709198, 43.647320, 29.531212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021156, 0.591464, -0.806053,
		0.950820, -0.237295, -0.199078,
		-0.309020, -0.770623, -0.557356,
		36.616493, 43.416134, 29.364006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289997, 43.884159, 29.152401>,  <36.832806, 43.955570, 29.754154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289997, 43.884159, 29.152401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952797, 43.696121, 29.047819>,  <36.750477, 43.583298, 28.985071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952797, 43.696121, 29.047819>,  <37.289997, 43.884159, 29.152401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952797, 43.696121, 29.047819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122507, 0.305495, -0.944280,
		0.523773, -0.828060, -0.199943,
		-0.843003, -0.470095, -0.261453,
		36.699898, 43.555092, 28.969383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364685, 43.791325, 28.449562>,  <37.289997, 43.884159, 29.152401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364685, 43.791325, 28.449562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977818, 43.689735, 28.453033>,  <36.745697, 43.628784, 28.455116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977818, 43.689735, 28.453033>,  <37.364685, 43.791325, 28.449562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977818, 43.689735, 28.453033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115998, 0.410840, -0.904298,
		0.226099, -0.875620, -0.426813,
		-0.967173, -0.253970, 0.008679,
		36.687664, 43.613544, 28.455637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194889, 43.454777, 27.803854>,  <37.364685, 43.791325, 28.449562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194889, 43.454777, 27.803854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846180, 43.599007, 27.936518>,  <36.636955, 43.685543, 28.016117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846180, 43.599007, 27.936518>,  <37.194889, 43.454777, 27.803854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846180, 43.599007, 27.936518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158247, 0.433439, -0.887180,
		-0.463650, -0.825903, -0.320800,
		-0.871772, 0.360575, 0.331661,
		36.584648, 43.707180, 28.036016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721909, 43.350193, 27.299711>,  <37.194889, 43.454777, 27.803854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721909, 43.350193, 27.299711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533173, 43.630772, 27.513382>,  <36.419930, 43.799118, 27.641584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533173, 43.630772, 27.513382>,  <36.721909, 43.350193, 27.299711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533173, 43.630772, 27.513382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256757, 0.470282, -0.844340,
		-0.843470, -0.535547, -0.041797,
		-0.471840, 0.701444, 0.534174,
		36.391621, 43.841206, 27.673634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000862, 43.524662, 26.939178>,  <36.721909, 43.350193, 27.299711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000862, 43.524662, 26.939178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120331, 43.832069, 27.165516>,  <36.192013, 44.016514, 27.301319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120331, 43.832069, 27.165516>,  <36.000862, 43.524662, 26.939178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120331, 43.832069, 27.165516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138086, 0.621467, -0.771175,
		-0.944314, 0.152189, 0.291734,
		0.298668, 0.768516, 0.565845,
		36.209930, 44.062626, 27.335270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350674, 44.068054, 26.897728>,  <36.000862, 43.524662, 26.939178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350674, 44.068054, 26.897728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691174, 44.249153, 27.003853>,  <35.895473, 44.357811, 27.067528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691174, 44.249153, 27.003853>,  <35.350674, 44.068054, 26.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691174, 44.249153, 27.003853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145526, 0.689436, -0.709578,
		-0.504176, 0.565419, 0.652770,
		0.851251, 0.452747, 0.265314,
		35.946548, 44.384975, 27.083447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243336, 44.671635, 26.678988>,  <35.350674, 44.068054, 26.897728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243336, 44.671635, 26.678988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636620, 44.697048, 26.747417>,  <35.872589, 44.712296, 26.788475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636620, 44.697048, 26.747417>,  <35.243336, 44.671635, 26.678988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636620, 44.697048, 26.747417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121311, 0.472772, -0.872795,
		-0.136335, 0.878891, 0.457125,
		0.983207, 0.063538, 0.171075,
		35.931583, 44.716110, 26.798740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405434, 45.362022, 26.572430>,  <35.243336, 44.671635, 26.678988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405434, 45.362022, 26.572430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749588, 45.166256, 26.515564>,  <35.956081, 45.048794, 26.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749588, 45.166256, 26.515564>,  <35.405434, 45.362022, 26.572430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749588, 45.166256, 26.515564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165049, 0.531487, -0.830831,
		0.482183, 0.691369, 0.538061,
		0.860383, -0.489419, -0.142164,
		36.007702, 45.019432, 26.472916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831680, 45.898819, 26.217531>,  <35.405434, 45.362022, 26.572430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831680, 45.898819, 26.217531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028439, 45.554516, 26.165182>,  <36.146492, 45.347935, 26.133772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028439, 45.554516, 26.165182>,  <35.831680, 45.898819, 26.217531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028439, 45.554516, 26.165182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326565, 0.321747, -0.888726,
		0.807089, 0.394423, 0.439360,
		0.491897, -0.860761, -0.130874,
		36.176006, 45.296288, 26.125919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429092, 46.141575, 25.936243>,  <35.831680, 45.898819, 26.217531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429092, 46.141575, 25.936243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413849, 45.749310, 25.859468>,  <36.404701, 45.513950, 25.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413849, 45.749310, 25.859468>,  <36.429092, 46.141575, 25.936243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413849, 45.749310, 25.859468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443656, 0.155505, -0.882603,
		0.895387, -0.118790, 0.429153,
		-0.038109, -0.980667, -0.191939,
		36.402416, 45.455109, 25.801888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092995, 45.982689, 25.652122>,  <36.429092, 46.141575, 25.936243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092995, 45.982689, 25.652122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842163, 45.695332, 25.531668>,  <36.691662, 45.522919, 25.459394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842163, 45.695332, 25.531668>,  <37.092995, 45.982689, 25.652122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842163, 45.695332, 25.531668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338754, 0.096619, -0.935901,
		0.701438, -0.688898, 0.182769,
		-0.627081, -0.718390, -0.301139,
		36.654037, 45.479816, 25.441326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451771, 45.510063, 25.264477>,  <37.092995, 45.982689, 25.652122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451771, 45.510063, 25.264477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086716, 45.420151, 25.127907>,  <36.867683, 45.366203, 25.045965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086716, 45.420151, 25.127907>,  <37.451771, 45.510063, 25.264477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086716, 45.420151, 25.127907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323782, 0.112347, -0.939438,
		0.249527, -0.967911, -0.029751,
		-0.912634, -0.224782, -0.341426,
		36.812927, 45.352715, 25.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514561, 44.916134, 24.796783>,  <37.451771, 45.510063, 25.264477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514561, 44.916134, 24.796783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167088, 45.084877, 24.692913>,  <36.958603, 45.186123, 24.630590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167088, 45.084877, 24.692913>,  <37.514561, 44.916134, 24.796783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167088, 45.084877, 24.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264486, -0.048260, -0.963181,
		-0.418856, -0.905377, -0.069653,
		-0.868681, 0.421856, -0.259674,
		36.906483, 45.211433, 24.615011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223797, 44.609097, 24.200941>,  <37.514561, 44.916134, 24.796783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223797, 44.609097, 24.200941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048294, 44.968536, 24.202499>,  <36.942993, 45.184200, 24.203434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048294, 44.968536, 24.202499>,  <37.223797, 44.609097, 24.200941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048294, 44.968536, 24.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176953, 0.090647, -0.980036,
		-0.881011, -0.429308, -0.198781,
		-0.438756, 0.898598, 0.003894,
		36.916668, 45.238117, 24.203667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800411, 44.652740, 23.575079>,  <37.223797, 44.609097, 24.200941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800411, 44.652740, 23.575079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804794, 45.042427, 23.665215>,  <36.807423, 45.276241, 23.719296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804794, 45.042427, 23.665215>,  <36.800411, 44.652740, 23.575079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804794, 45.042427, 23.665215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005489, 0.225406, -0.974249,
		-0.999925, 0.009440, 0.007817,
		0.010959, 0.974219, 0.225337,
		36.808083, 45.334694, 23.732817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202118, 45.019463, 23.186728>,  <36.800411, 44.652740, 23.575079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202118, 45.019463, 23.186728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450142, 45.318760, 23.281097>,  <36.598957, 45.498337, 23.337719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450142, 45.318760, 23.281097>,  <36.202118, 45.019463, 23.186728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450142, 45.318760, 23.281097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148813, 0.183081, -0.971769,
		-0.770311, 0.637664, 0.002173,
		0.620060, 0.748242, 0.235923,
		36.636162, 45.543232, 23.351873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150414, 45.466557, 22.632177>,  <36.202118, 45.019463, 23.186728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150414, 45.466557, 22.632177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469761, 45.653896, 22.783575>,  <36.661369, 45.766300, 22.874413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469761, 45.653896, 22.783575>,  <36.150414, 45.466557, 22.632177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469761, 45.653896, 22.783575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401249, 0.054914, -0.914322,
		-0.449003, 0.881837, -0.144081,
		0.798371, 0.468346, 0.378493,
		36.709270, 45.794399, 22.897123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109169, 46.113949, 22.416029>,  <36.150414, 45.466557, 22.632177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109169, 46.113949, 22.416029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487530, 46.024025, 22.509602>,  <36.714546, 45.970070, 22.565744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487530, 46.024025, 22.509602>,  <36.109169, 46.113949, 22.416029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487530, 46.024025, 22.509602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260414, 0.096027, -0.960710,
		0.193516, 0.969659, 0.149377,
		0.945905, -0.224812, 0.233930,
		36.771301, 45.956581, 22.579781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584862, 46.663643, 22.208305>,  <36.109169, 46.113949, 22.416029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584862, 46.663643, 22.208305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790478, 46.321518, 22.234234>,  <36.913849, 46.116241, 22.249790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790478, 46.321518, 22.234234>,  <36.584862, 46.663643, 22.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790478, 46.321518, 22.234234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218767, 0.057658, -0.974072,
		0.829399, 0.514893, 0.216753,
		0.514041, -0.855313, 0.064820,
		36.944691, 46.064922, 22.253679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059345, 46.751923, 21.714605>,  <36.584862, 46.663643, 22.208305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059345, 46.751923, 21.714605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101830, 46.355591, 21.748035>,  <37.127319, 46.117794, 21.768093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101830, 46.355591, 21.748035>,  <37.059345, 46.751923, 21.714605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101830, 46.355591, 21.748035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266114, -0.052661, -0.962502,
		0.958072, 0.124472, 0.258079,
		0.106214, -0.990825, 0.083577,
		37.133694, 46.058342, 21.773108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698921, 46.513733, 21.388201>,  <37.059345, 46.751923, 21.714605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698921, 46.513733, 21.388201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454887, 46.197754, 21.363600>,  <37.308468, 46.008167, 21.348839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454887, 46.197754, 21.363600>,  <37.698921, 46.513733, 21.388201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454887, 46.197754, 21.363600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213201, -0.088906, -0.972955,
		0.763112, -0.606699, 0.222658,
		-0.610086, -0.789945, -0.061504,
		37.271862, 45.960770, 21.345148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027584, 46.077129, 20.953644>,  <37.698921, 46.513733, 21.388201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027584, 46.077129, 20.953644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672352, 45.893261, 20.952351>,  <37.459213, 45.782940, 20.951574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672352, 45.893261, 20.952351>,  <38.027584, 46.077129, 20.953644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672352, 45.893261, 20.952351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082497, -0.152462, -0.984860,
		0.452218, -0.874905, 0.173321,
		-0.888084, -0.459670, -0.003231,
		37.405926, 45.755360, 20.951382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965832, 45.353008, 20.618366>,  <38.027584, 46.077129, 20.953644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965832, 45.353008, 20.618366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622841, 45.552109, 20.566240>,  <37.417046, 45.671570, 20.534966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622841, 45.552109, 20.566240>,  <37.965832, 45.353008, 20.618366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622841, 45.552109, 20.566240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018526, -0.223236, -0.974588,
		-0.514190, -0.838100, 0.182198,
		-0.857476, 0.497748, -0.130313,
		37.365597, 45.701431, 20.527147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154888, 44.647118, 20.599884>,  <37.965832, 45.353008, 20.618366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154888, 44.647118, 20.599884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516369, 44.493778, 20.523602>,  <38.733257, 44.401775, 20.477833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516369, 44.493778, 20.523602>,  <38.154888, 44.647118, 20.599884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516369, 44.493778, 20.523602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065678, -0.316016, 0.946478,
		-0.423099, -0.867857, -0.260406,
		0.903700, -0.383351, -0.190705,
		38.787479, 44.378773, 20.466391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184414, 44.002686, 20.890516>,  <38.154888, 44.647118, 20.599884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184414, 44.002686, 20.890516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577457, 44.057701, 20.840620>,  <38.813286, 44.090710, 20.810682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577457, 44.057701, 20.840620>,  <38.184414, 44.002686, 20.890516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577457, 44.057701, 20.840620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171542, -0.415317, 0.893356,
		0.071064, -0.899219, -0.431689,
		0.982610, 0.137538, -0.124740,
		38.872242, 44.098961, 20.803198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474327, 43.470779, 21.063099>,  <38.184414, 44.002686, 20.890516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474327, 43.470779, 21.063099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767796, 43.733810, 21.131601>,  <38.943874, 43.891628, 21.172703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767796, 43.733810, 21.131601>,  <38.474327, 43.470779, 21.063099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767796, 43.733810, 21.131601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100314, -0.354078, 0.929820,
		0.672063, -0.665000, -0.325739,
		0.733667, 0.657574, 0.171254,
		38.987896, 43.931084, 21.182978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876503, 43.137196, 21.549671>,  <38.474327, 43.470779, 21.063099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876503, 43.137196, 21.549671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041008, 43.501743, 21.556238>,  <39.139709, 43.720470, 21.560179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041008, 43.501743, 21.556238>,  <38.876503, 43.137196, 21.549671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041008, 43.501743, 21.556238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200391, -0.107969, 0.973749,
		0.889216, -0.397177, -0.227034,
		0.411263, 0.911369, 0.016417,
		39.164387, 43.775154, 21.561163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543194, 43.099243, 21.793118>,  <38.876503, 43.137196, 21.549671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543194, 43.099243, 21.793118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456558, 43.479843, 21.880518>,  <39.404575, 43.708202, 21.932959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456558, 43.479843, 21.880518>,  <39.543194, 43.099243, 21.793118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456558, 43.479843, 21.880518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054241, -0.211740, 0.975820,
		0.974755, 0.223203, -0.005750,
		-0.216588, 0.951497, 0.218502,
		39.391582, 43.765293, 21.946068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072769, 43.447460, 22.211376>,  <39.543194, 43.099243, 21.793118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072769, 43.447460, 22.211376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769684, 43.695766, 22.291891>,  <39.587833, 43.844749, 22.340200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769684, 43.695766, 22.291891>,  <40.072769, 43.447460, 22.211376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769684, 43.695766, 22.291891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104928, -0.188542, 0.976443,
		0.644093, 0.760988, 0.077726,
		-0.757717, 0.620765, 0.201288,
		39.542370, 43.881996, 22.352278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320740, 43.855572, 22.788652>,  <40.072769, 43.447460, 22.211376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320740, 43.855572, 22.788652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921227, 43.862766, 22.770267>,  <39.681519, 43.867081, 22.759237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921227, 43.862766, 22.770267>,  <40.320740, 43.855572, 22.788652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921227, 43.862766, 22.770267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048211, -0.156276, 0.986536,
		0.010557, 0.987550, 0.156952,
		-0.998781, 0.017982, -0.045961,
		39.621593, 43.868160, 22.756479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151791, 43.835800, 23.458519>,  <40.320740, 43.855572, 22.788652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151791, 43.835800, 23.458519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787178, 43.796463, 23.298796>,  <39.568413, 43.772861, 23.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787178, 43.796463, 23.298796>,  <40.151791, 43.835800, 23.458519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787178, 43.796463, 23.298796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317234, -0.449725, 0.834931,
		-0.261688, 0.887737, 0.378740,
		-0.911527, -0.098342, -0.399308,
		39.513721, 43.766960, 23.179003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636368, 44.216473, 23.867094>,  <40.151791, 43.835800, 23.458519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636368, 44.216473, 23.867094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481354, 43.910198, 23.661751>,  <39.388348, 43.726433, 23.538544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481354, 43.910198, 23.661751>,  <39.636368, 44.216473, 23.867094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481354, 43.910198, 23.661751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555930, -0.250108, 0.792709,
		-0.735365, 0.592592, -0.328745,
		-0.387532, -0.765690, -0.513360,
		39.365093, 43.680492, 23.507744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891964, 44.172882, 23.973631>,  <39.636368, 44.216473, 23.867094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891964, 44.172882, 23.973631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986610, 43.806377, 23.844343>,  <39.043396, 43.586475, 23.766771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986610, 43.806377, 23.844343>,  <38.891964, 44.172882, 23.973631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986610, 43.806377, 23.844343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252879, -0.379277, 0.890057,
		-0.938119, -0.128863, -0.321446,
		0.236612, -0.916266, -0.323220,
		39.057594, 43.531498, 23.747377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363674, 43.693386, 24.163586>,  <38.891964, 44.172882, 23.973631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363674, 43.693386, 24.163586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670708, 43.449009, 24.086063>,  <38.854927, 43.302383, 24.039551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670708, 43.449009, 24.086063>,  <38.363674, 43.693386, 24.163586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670708, 43.449009, 24.086063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230767, -0.545520, 0.805702,
		-0.597964, -0.573720, -0.559718,
		0.767584, -0.610946, -0.193806,
		38.900982, 43.265724, 24.027922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224911, 43.013290, 24.281788>,  <38.363674, 43.693386, 24.163586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224911, 43.013290, 24.281788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619442, 43.025909, 24.346485>,  <38.856159, 43.033482, 24.385303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619442, 43.025909, 24.346485>,  <38.224911, 43.013290, 24.281788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619442, 43.025909, 24.346485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124459, -0.500701, 0.856626,
		0.108012, -0.865045, -0.489929,
		0.986328, 0.031550, 0.161745,
		38.915340, 43.035374, 24.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288670, 42.574406, 24.666952>,  <38.224911, 43.013290, 24.281788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288670, 42.574406, 24.666952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655800, 42.730724, 24.694851>,  <38.876080, 42.824516, 24.711590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655800, 42.730724, 24.694851>,  <38.288670, 42.574406, 24.666952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655800, 42.730724, 24.694851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059469, -0.309074, 0.949177,
		0.392497, -0.867034, -0.306918,
		0.917829, 0.390801, 0.069749,
		38.931149, 42.847965, 24.715776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741398, 41.977406, 24.788538>,  <38.288670, 42.574406, 24.666952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741398, 41.977406, 24.788538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910088, 42.305462, 24.943207>,  <39.011303, 42.502296, 25.036007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910088, 42.305462, 24.943207>,  <38.741398, 41.977406, 24.788538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910088, 42.305462, 24.943207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062417, -0.399179, 0.914746,
		0.904572, -0.409909, -0.117154,
		0.421728, 0.820141, 0.386671,
		39.036606, 42.551506, 25.059208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257465, 41.739006, 25.225252>,  <38.741398, 41.977406, 24.788538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257465, 41.739006, 25.225252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174587, 42.110516, 25.348183>,  <39.124859, 42.333420, 25.421942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174587, 42.110516, 25.348183>,  <39.257465, 41.739006, 25.225252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174587, 42.110516, 25.348183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024231, -0.318919, 0.947472,
		0.977999, 0.188867, 0.088585,
		-0.207198, 0.928773, 0.307326,
		39.112427, 42.389149, 25.440380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380714, 41.633160, 25.894005>,  <39.257465, 41.739006, 25.225252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380714, 41.633160, 25.894005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233971, 42.004898, 25.877359>,  <39.145924, 42.227940, 25.867373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233971, 42.004898, 25.877359>,  <39.380714, 41.633160, 25.894005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233971, 42.004898, 25.877359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178140, -0.026277, 0.983654,
		0.913062, 0.368273, 0.175194,
		-0.366857, 0.929346, -0.041612,
		39.123913, 42.283703, 25.864876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733891, 42.086807, 26.352016>,  <39.380714, 41.633160, 25.894005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733891, 42.086807, 26.352016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366444, 42.230633, 26.286455>,  <39.145977, 42.316929, 26.247118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366444, 42.230633, 26.286455>,  <39.733891, 42.086807, 26.352016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366444, 42.230633, 26.286455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209773, -0.092222, 0.973391,
		0.334881, 0.928552, 0.160143,
		-0.918613, 0.359564, -0.163902,
		39.090858, 42.338501, 26.237286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589645, 42.535419, 26.879791>,  <39.733891, 42.086807, 26.352016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589645, 42.535419, 26.879791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222198, 42.446812, 26.748907>,  <39.001728, 42.393646, 26.670378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222198, 42.446812, 26.748907>,  <39.589645, 42.535419, 26.879791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222198, 42.446812, 26.748907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339676, 0.019623, 0.940338,
		-0.201878, 0.974959, -0.093269,
		-0.918621, -0.221515, -0.327209,
		38.946613, 42.380356, 26.650743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103554, 42.866447, 27.358034>,  <39.589645, 42.535419, 26.879791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103554, 42.866447, 27.358034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876564, 42.592106, 27.175791>,  <38.740372, 42.427502, 27.066444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876564, 42.592106, 27.175791>,  <39.103554, 42.866447, 27.358034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876564, 42.592106, 27.175791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335837, -0.312420, 0.888598,
		-0.751790, 0.657266, -0.053045,
		-0.567473, -0.685853, -0.455609,
		38.706322, 42.386349, 27.039108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461464, 42.966103, 27.528440>,  <39.103554, 42.866447, 27.358034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461464, 42.966103, 27.528440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429649, 42.582050, 27.421238>,  <38.410561, 42.351620, 27.356916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429649, 42.582050, 27.421238>,  <38.461464, 42.966103, 27.528440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429649, 42.582050, 27.421238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242642, -0.242124, 0.939415,
		-0.966850, 0.139747, -0.213710,
		-0.079536, -0.960129, -0.268006,
		38.405788, 42.294010, 27.340836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856762, 42.765827, 27.799370>,  <38.461464, 42.966103, 27.528440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856762, 42.765827, 27.799370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077045, 42.439026, 27.730980>,  <38.209217, 42.242947, 27.689945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077045, 42.439026, 27.730980>,  <37.856762, 42.765827, 27.799370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077045, 42.439026, 27.730980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098355, -0.266925, 0.958685,
		-0.828883, -0.511139, -0.227354,
		0.550707, -0.816999, -0.170977,
		38.242256, 42.193928, 27.679688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469028, 42.149876, 28.028030>,  <37.856762, 42.765827, 27.799370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469028, 42.149876, 28.028030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858906, 42.060944, 28.037397>,  <38.092831, 42.007584, 28.043016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858906, 42.060944, 28.037397>,  <37.469028, 42.149876, 28.028030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858906, 42.060944, 28.037397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092598, -0.306161, 0.947466,
		-0.203481, -0.925654, -0.318999,
		0.974690, -0.222330, 0.023415,
		38.151314, 41.994244, 28.044422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512142, 41.423203, 28.268219>,  <37.469028, 42.149876, 28.028030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512142, 41.423203, 28.268219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872795, 41.574478, 28.352161>,  <38.089188, 41.665241, 28.402527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872795, 41.574478, 28.352161>,  <37.512142, 41.423203, 28.268219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872795, 41.574478, 28.352161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005938, -0.495982, 0.868313,
		0.432466, -0.781651, -0.449438,
		0.901631, 0.378185, 0.209854,
		38.143284, 41.687935, 28.415117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803360, 40.932247, 28.754410>,  <37.512142, 41.423203, 28.268219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803360, 40.932247, 28.754410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086926, 41.214256, 28.762186>,  <38.257065, 41.383461, 28.766851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086926, 41.214256, 28.762186>,  <37.803360, 40.932247, 28.754410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086926, 41.214256, 28.762186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268416, -0.295184, 0.916962,
		0.652220, -0.644831, -0.398501,
		0.708916, 0.705025, 0.019442,
		38.299599, 41.425762, 28.768019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438789, 40.650448, 28.825850>,  <37.803360, 40.932247, 28.754410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438789, 40.650448, 28.825850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439659, 41.006359, 29.008404>,  <38.440182, 41.219906, 29.117937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439659, 41.006359, 29.008404>,  <38.438789, 40.650448, 28.825850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439659, 41.006359, 29.008404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249234, -0.442466, 0.861456,
		0.968441, 0.111875, -0.222725,
		0.002173, 0.889780, 0.456385,
		38.440311, 41.273293, 29.145319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744186, 40.542023, 29.388948>,  <38.438789, 40.650448, 28.825850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744186, 40.542023, 29.388948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663113, 40.926430, 29.464180>,  <38.614468, 41.157074, 29.509319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663113, 40.926430, 29.464180>,  <38.744186, 40.542023, 29.388948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663113, 40.926430, 29.464180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018615, -0.188247, 0.981945,
		0.979068, 0.202522, 0.020265,
		-0.202680, 0.961014, 0.188077,
		38.602310, 41.214733, 29.520603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267403, 40.757252, 29.753313>,  <38.744186, 40.542023, 29.388948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267403, 40.757252, 29.753313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933334, 40.963837, 29.828943>,  <38.732895, 41.087788, 29.874321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933334, 40.963837, 29.828943>,  <39.267403, 40.757252, 29.753313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933334, 40.963837, 29.828943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011061, -0.327940, 0.944634,
		0.549878, 0.791023, 0.268174,
		-0.835172, 0.516467, 0.189077,
		38.682781, 41.118778, 29.885666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421154, 41.185368, 30.384739>,  <39.267403, 40.757252, 29.753313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421154, 41.185368, 30.384739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024799, 41.148365, 30.345583>,  <38.786987, 41.126163, 30.322090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024799, 41.148365, 30.345583>,  <39.421154, 41.185368, 30.384739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024799, 41.148365, 30.345583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093029, -0.055474, 0.994117,
		-0.097396, 0.994165, 0.046363,
		-0.990888, -0.092510, -0.097889,
		38.727531, 41.120613, 30.316216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076233, 41.668606, 30.842119>,  <39.421154, 41.185368, 30.384739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076233, 41.668606, 30.842119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804691, 41.381931, 30.778231>,  <38.641766, 41.209927, 30.739897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804691, 41.381931, 30.778231>,  <39.076233, 41.668606, 30.842119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804691, 41.381931, 30.778231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187845, -0.040778, 0.981352,
		-0.709838, 0.696200, -0.106944,
		-0.678856, -0.716689, -0.159723,
		38.601036, 41.166924, 30.730314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545696, 41.841892, 31.324085>,  <39.076233, 41.668606, 30.842119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545696, 41.841892, 31.324085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527630, 41.453186, 31.231453>,  <38.516788, 41.219963, 31.175875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527630, 41.453186, 31.231453>,  <38.545696, 41.841892, 31.324085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527630, 41.453186, 31.231453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025969, -0.230595, 0.972703,
		-0.998642, 0.049949, -0.014820,
		-0.045168, -0.971767, -0.231578,
		38.514080, 41.161655, 31.161980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343628, 41.418663, 31.967196>,  <38.545696, 41.841892, 31.324085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343628, 41.418663, 31.967196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463707, 41.135162, 31.711838>,  <38.535755, 40.965061, 31.558622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463707, 41.135162, 31.711838>,  <38.343628, 41.418663, 31.967196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463707, 41.135162, 31.711838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267332, -0.579931, 0.769554,
		-0.915651, -0.401679, 0.015381,
		0.300194, -0.708755, -0.638397,
		38.553764, 40.922535, 31.520319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112007, 40.838207, 32.386299>,  <38.343628, 41.418663, 31.967196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112007, 40.838207, 32.386299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393913, 40.721962, 32.127422>,  <38.563057, 40.652214, 31.972097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393913, 40.721962, 32.127422>,  <38.112007, 40.838207, 32.386299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393913, 40.721962, 32.127422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190443, -0.801267, 0.567188,
		-0.683402, -0.522987, -0.509360,
		0.704765, -0.290613, -0.647186,
		38.605343, 40.634777, 31.933266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835037, 40.219074, 32.182533>,  <38.112007, 40.838207, 32.386299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835037, 40.219074, 32.182533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211586, 40.158566, 32.061916>,  <38.437515, 40.122261, 31.989546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211586, 40.158566, 32.061916>,  <37.835037, 40.219074, 32.182533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211586, 40.158566, 32.061916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081120, -0.766109, 0.637571,
		-0.327460, -0.624655, -0.708926,
		0.941376, -0.151271, -0.301543,
		38.493999, 40.113186, 31.971453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999569, 39.519123, 31.900688>,  <37.835037, 40.219074, 32.182533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999569, 39.519123, 31.900688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341667, 39.663021, 32.049896>,  <38.546925, 39.749359, 32.139420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341667, 39.663021, 32.049896>,  <37.999569, 39.519123, 31.900688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341667, 39.663021, 32.049896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031657, -0.754717, 0.655287,
		0.517263, -0.548619, -0.656853,
		0.855241, 0.359749, 0.373019,
		38.598240, 39.770947, 32.161800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436722, 38.967731, 31.887051>,  <37.999569, 39.519123, 31.900688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436722, 38.967731, 31.887051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582436, 39.212612, 32.167767>,  <38.669865, 39.359539, 32.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582436, 39.212612, 32.167767>,  <38.436722, 38.967731, 31.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582436, 39.212612, 32.167767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096337, -0.774297, 0.625446,
		0.926292, -0.160231, -0.341041,
		0.364283, 0.612201, 0.701789,
		38.691719, 39.396271, 32.378304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979042, 38.677795, 32.157234>,  <38.436722, 38.967731, 31.887051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979042, 38.677795, 32.157234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927242, 38.964622, 32.431183>,  <38.896164, 39.136719, 32.595551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927242, 38.964622, 32.431183>,  <38.979042, 38.677795, 32.157234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927242, 38.964622, 32.431183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363182, -0.608388, 0.705665,
		0.922675, 0.340113, -0.181641,
		-0.129497, 0.717068, 0.684868,
		38.888393, 39.179745, 32.636642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503513, 38.653435, 32.635349>,  <38.979042, 38.677795, 32.157234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503513, 38.653435, 32.635349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235531, 38.873497, 32.834740>,  <39.074741, 39.005535, 32.954376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235531, 38.873497, 32.834740>,  <39.503513, 38.653435, 32.635349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235531, 38.873497, 32.834740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152629, -0.555031, 0.817707,
		0.726541, 0.623911, 0.287877,
		-0.669957, 0.550160, 0.498479,
		39.034542, 39.038544, 32.984283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838940, 38.662155, 33.277935>,  <39.503513, 38.653435, 32.635349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838940, 38.662155, 33.277935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462734, 38.770451, 33.360031>,  <39.237011, 38.835430, 33.409290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462734, 38.770451, 33.360031>,  <39.838940, 38.662155, 33.277935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462734, 38.770451, 33.360031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014440, -0.571707, 0.820331,
		0.339436, 0.774500, 0.533791,
		-0.940518, 0.270742, 0.205242,
		39.180580, 38.851673, 33.421604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866249, 38.828560, 33.954681>,  <39.838940, 38.662155, 33.277935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866249, 38.828560, 33.954681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481064, 38.757843, 33.873241>,  <39.249954, 38.715412, 33.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481064, 38.757843, 33.873241>,  <39.866249, 38.828560, 33.954681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481064, 38.757843, 33.873241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037680, -0.659425, 0.750826,
		-0.266997, 0.730687, 0.628338,
		-0.962960, -0.176792, -0.203597,
		39.192177, 38.704803, 33.812160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478523, 39.017895, 34.519623>,  <39.866249, 38.828560, 33.954681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478523, 39.017895, 34.519623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254501, 38.738976, 34.340687>,  <39.120090, 38.571625, 34.233326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254501, 38.738976, 34.340687>,  <39.478523, 39.017895, 34.519623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254501, 38.738976, 34.340687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074313, -0.580079, 0.811164,
		-0.825118, 0.421050, 0.376692,
		-0.560051, -0.697299, -0.447344,
		39.086487, 38.529785, 34.206482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940514, 38.757057, 34.931763>,  <39.478523, 39.017895, 34.519623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940514, 38.757057, 34.931763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000412, 38.464336, 34.665821>,  <39.036350, 38.288704, 34.506256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000412, 38.464336, 34.665821>,  <38.940514, 38.757057, 34.931763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000412, 38.464336, 34.665821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171029, -0.643131, 0.746412,
		-0.973819, -0.225484, 0.028852,
		0.149749, -0.731805, -0.664858,
		39.045338, 38.244793, 34.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459488, 38.201698, 35.067444>,  <38.940514, 38.757057, 34.931763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459488, 38.201698, 35.067444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752792, 38.029152, 34.857204>,  <38.928776, 37.925625, 34.731060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752792, 38.029152, 34.857204>,  <38.459488, 38.201698, 35.067444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752792, 38.029152, 34.857204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193530, -0.608619, 0.769499,
		-0.651827, -0.665961, -0.362792,
		0.733259, -0.431369, -0.525598,
		38.972771, 37.899742, 34.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351471, 37.415989, 35.163502>,  <38.459488, 38.201698, 35.067444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351471, 37.415989, 35.163502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729340, 37.482227, 35.050243>,  <38.956062, 37.521969, 34.982288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729340, 37.482227, 35.050243>,  <38.351471, 37.415989, 35.163502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729340, 37.482227, 35.050243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313037, -0.712987, 0.627421,
		-0.097983, -0.681343, -0.725376,
		0.944673, 0.165593, -0.283146,
		39.012741, 37.531906, 34.965298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576691, 36.828751, 35.296638>,  <38.351471, 37.415989, 35.163502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576691, 36.828751, 35.296638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939907, 36.980007, 35.224548>,  <39.157837, 37.070759, 35.181293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939907, 36.980007, 35.224548>,  <38.576691, 36.828751, 35.296638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939907, 36.980007, 35.224548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404687, -0.680825, 0.610496,
		0.108152, -0.627287, -0.771242,
		0.908037, 0.378138, -0.180223,
		39.212318, 37.093449, 35.170483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099712, 36.226482, 35.197346>,  <38.576691, 36.828751, 35.296638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099712, 36.226482, 35.197346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292198, 36.557827, 35.312057>,  <39.407692, 36.756634, 35.380882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292198, 36.557827, 35.312057>,  <39.099712, 36.226482, 35.197346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292198, 36.557827, 35.312057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463168, -0.518020, 0.719118,
		0.744248, -0.213226, -0.632952,
		0.481217, 0.828366, 0.286776,
		39.436562, 36.806335, 35.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750412, 35.965836, 35.459251>,  <39.099712, 36.226482, 35.197346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750412, 35.965836, 35.459251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821636, 36.339268, 35.583649>,  <39.864368, 36.563328, 35.658287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821636, 36.339268, 35.583649>,  <39.750412, 35.965836, 35.459251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821636, 36.339268, 35.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495073, -0.358119, 0.791614,
		0.850411, 0.013009, -0.525959,
		0.178058, 0.933585, 0.310989,
		39.875053, 36.619343, 35.676945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446171, 35.951313, 35.623138>,  <39.750412, 35.965836, 35.459251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446171, 35.951313, 35.623138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243111, 36.231720, 35.823483>,  <40.121273, 36.399963, 35.943687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243111, 36.231720, 35.823483>,  <40.446171, 35.951313, 35.623138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243111, 36.231720, 35.823483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428127, -0.299228, 0.852742,
		0.747659, 0.647331, -0.148220,
		-0.507655, 0.701018, 0.500860,
		40.090813, 36.442024, 35.973740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845779, 36.214367, 36.163219>,  <40.446171, 35.951313, 35.623138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845779, 36.214367, 36.163219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474041, 36.304882, 36.279907>,  <40.250996, 36.359192, 36.349922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474041, 36.304882, 36.279907>,  <40.845779, 36.214367, 36.163219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474041, 36.304882, 36.279907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169419, -0.440666, 0.881539,
		0.328032, 0.868682, 0.371197,
		-0.929351, 0.226285, 0.291724,
		40.195236, 36.372768, 36.367424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849350, 36.375637, 36.979679>,  <40.845779, 36.214367, 36.163219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849350, 36.375637, 36.979679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474968, 36.279476, 36.876759>,  <40.250340, 36.221779, 36.815006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474968, 36.279476, 36.876759>,  <40.849350, 36.375637, 36.979679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474968, 36.279476, 36.876759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119899, -0.469458, 0.874776,
		-0.331090, 0.849597, 0.410566,
		-0.935951, -0.240404, -0.257298,
		40.194183, 36.207355, 36.799568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480652, 36.564739, 37.531513>,  <40.849350, 36.375637, 36.979679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480652, 36.564739, 37.531513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247150, 36.314148, 37.324917>,  <40.107052, 36.163792, 37.200958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247150, 36.314148, 37.324917>,  <40.480652, 36.564739, 37.531513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247150, 36.314148, 37.324917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306506, -0.419020, 0.854679,
		-0.751857, 0.657226, 0.052584,
		-0.583751, -0.626479, -0.516487,
		40.072025, 36.126205, 37.169971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766701, 36.790989, 37.755146>,  <40.480652, 36.564739, 37.531513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766701, 36.790989, 37.755146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793205, 36.420612, 37.606422>,  <39.809109, 36.198387, 37.517189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793205, 36.420612, 37.606422>,  <39.766701, 36.790989, 37.755146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793205, 36.420612, 37.606422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615512, -0.331214, 0.715152,
		-0.785337, 0.181465, -0.591875,
		0.066262, -0.925942, -0.371809,
		39.813084, 36.142830, 37.494881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377068, 36.449718, 38.301472>,  <39.766701, 36.790989, 37.755146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377068, 36.449718, 38.301472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444698, 36.183838, 38.010380>,  <39.485275, 36.024311, 37.835724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444698, 36.183838, 38.010380>,  <39.377068, 36.449718, 38.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444698, 36.183838, 38.010380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514373, -0.689340, 0.510128,
		-0.840734, 0.288073, -0.458454,
		0.169076, -0.664698, -0.727729,
		39.495422, 35.984428, 37.792061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801514, 35.917236, 38.224274>,  <39.377068, 36.449718, 38.301472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801514, 35.917236, 38.224274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068443, 35.722416, 37.998901>,  <39.228600, 35.605522, 37.863678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068443, 35.722416, 37.998901>,  <38.801514, 35.917236, 38.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068443, 35.722416, 37.998901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267297, -0.862747, 0.429207,
		-0.695146, -0.135817, -0.705922,
		0.667326, -0.487053, -0.563432,
		39.268642, 35.576302, 37.829872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514103, 35.211170, 37.983128>,  <38.801514, 35.917236, 38.224274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514103, 35.211170, 37.983128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910599, 35.189732, 38.031418>,  <39.148495, 35.176868, 38.060390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910599, 35.189732, 38.031418>,  <38.514103, 35.211170, 37.983128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910599, 35.189732, 38.031418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108483, -0.851737, 0.512615,
		0.075349, -0.521220, -0.850089,
		0.991238, -0.053596, 0.120721,
		39.207970, 35.173653, 38.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851292, 34.565674, 37.635330>,  <38.514103, 35.211170, 37.983128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851292, 34.565674, 37.635330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053635, 34.688374, 37.957825>,  <39.175041, 34.761993, 38.151321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053635, 34.688374, 37.957825>,  <38.851292, 34.565674, 37.635330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053635, 34.688374, 37.957825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322867, -0.799372, 0.506717,
		0.799918, -0.516632, -0.305326,
		0.505855, 0.306752, 0.806235,
		39.205391, 34.780399, 38.199696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203682, 33.969086, 37.803314>,  <38.851292, 34.565674, 37.635330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203682, 33.969086, 37.803314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169537, 34.203884, 38.125343>,  <39.149052, 34.344765, 38.318562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169537, 34.203884, 38.125343>,  <39.203682, 33.969086, 37.803314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169537, 34.203884, 38.125343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438990, -0.747525, 0.498492,
		0.894428, -0.310868, 0.321496,
		-0.085361, 0.586999, 0.805075,
		39.143929, 34.379982, 38.366867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392979, 33.440876, 38.239262>,  <39.203682, 33.969086, 37.803314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392979, 33.440876, 38.239262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276775, 33.740208, 38.477795>,  <39.207054, 33.919807, 38.620914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276775, 33.740208, 38.477795>,  <39.392979, 33.440876, 38.239262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276775, 33.740208, 38.477795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126090, -0.647711, 0.751380,
		0.948528, 0.143093, 0.282523,
		-0.290510, 0.748328, 0.596329,
		39.189621, 33.964706, 38.656693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624683, 33.200886, 38.836071>,  <39.392979, 33.440876, 38.239262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624683, 33.200886, 38.836071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357925, 33.478790, 38.943810>,  <39.197868, 33.645535, 39.008453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357925, 33.478790, 38.943810>,  <39.624683, 33.200886, 38.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357925, 33.478790, 38.943810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398309, -0.637873, 0.659142,
		0.629760, 0.332295, 0.702127,
		-0.666898, 0.694764, 0.269351,
		39.157856, 33.687222, 39.024616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608658, 33.148602, 39.497227>,  <39.624683, 33.200886, 38.836071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608658, 33.148602, 39.497227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266521, 33.322552, 39.384605>,  <39.061241, 33.426922, 39.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266521, 33.322552, 39.384605>,  <39.608658, 33.148602, 39.497227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266521, 33.322552, 39.384605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500424, -0.552928, 0.666218,
		0.134042, 0.710741, 0.690565,
		-0.855341, 0.434876, -0.281556,
		39.009918, 33.453014, 39.300137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276321, 33.275875, 40.074593>,  <39.608658, 33.148602, 39.497227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276321, 33.275875, 40.074593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992123, 33.256691, 39.793766>,  <38.821602, 33.245182, 39.625271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992123, 33.256691, 39.793766>,  <39.276321, 33.275875, 40.074593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992123, 33.256691, 39.793766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441633, -0.746346, 0.497923,
		-0.547861, 0.663828, 0.509098,
		-0.710499, -0.047958, -0.702062,
		38.778973, 33.242302, 39.583149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572029, 33.293957, 40.369747>,  <39.276321, 33.275875, 40.074593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572029, 33.293957, 40.369747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531986, 33.122044, 40.010803>,  <38.507961, 33.018894, 39.795437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531986, 33.122044, 40.010803>,  <38.572029, 33.293957, 40.369747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531986, 33.122044, 40.010803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538108, -0.735230, 0.412162,
		-0.836910, 0.524139, -0.157669,
		-0.100107, -0.429785, -0.897365,
		38.501953, 32.993107, 39.741592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823326, 33.435493, 40.372395>,  <38.572029, 33.293957, 40.369747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823326, 33.435493, 40.372395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884510, 33.733959, 40.631577>,  <37.921219, 33.913040, 40.787086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884510, 33.733959, 40.631577>,  <37.823326, 33.435493, 40.372395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884510, 33.733959, 40.631577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981348, -0.191944, -0.010621,
		0.116446, 0.637494, -0.761605,
		0.152956, 0.746163, 0.647955,
		37.930397, 33.957809, 40.825962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224426, 33.106239, 40.022449>,  <37.823326, 33.435493, 40.372395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224426, 33.106239, 40.022449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882957, 33.011841, 39.836742>,  <36.678074, 32.955200, 39.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882957, 33.011841, 39.836742>,  <37.224426, 33.106239, 40.022449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882957, 33.011841, 39.836742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214220, 0.653424, -0.726049,
		0.474709, -0.719266, -0.507256,
		-0.853675, -0.235997, -0.464267,
		36.626854, 32.941040, 39.697464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189522, 32.757866, 39.273594>,  <37.224426, 33.106239, 40.022449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189522, 32.757866, 39.273594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876385, 32.999191, 39.334484>,  <36.688503, 33.143986, 39.371017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876385, 32.999191, 39.334484>,  <37.189522, 32.757866, 39.273594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876385, 32.999191, 39.334484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428830, 0.700396, -0.570570,
		-0.450852, -0.381386, -0.807018,
		-0.782839, 0.603316, 0.152225,
		36.641533, 33.180187, 39.380150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099300, 33.147621, 38.611111>,  <37.189522, 32.757866, 39.273594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099300, 33.147621, 38.611111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891045, 33.331387, 38.898968>,  <36.766090, 33.441647, 39.071682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891045, 33.331387, 38.898968>,  <37.099300, 33.147621, 38.611111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891045, 33.331387, 38.898968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298044, 0.887658, -0.351046,
		-0.800068, 0.031717, -0.599070,
		-0.520635, 0.459410, 0.719640,
		36.734856, 33.469208, 39.114861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746815, 33.280052, 38.998829>,  <37.099300, 33.147621, 38.611111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746815, 33.280052, 38.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081890, 33.335545, 39.210121>,  <38.282936, 33.368839, 39.336899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081890, 33.335545, 39.210121>,  <37.746815, 33.280052, 38.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081890, 33.335545, 39.210121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258543, 0.751227, -0.607300,
		-0.481072, 0.645300, 0.593428,
		0.837690, 0.138728, 0.528232,
		38.333199, 33.377163, 39.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828392, 33.964375, 39.014687>,  <37.746815, 33.280052, 38.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828392, 33.964375, 39.014687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192207, 33.806992, 39.068245>,  <38.410496, 33.712563, 39.100380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192207, 33.806992, 39.068245>,  <37.828392, 33.964375, 39.014687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192207, 33.806992, 39.068245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410105, 0.797333, -0.442803,
		0.067465, 0.457658, 0.886565,
		0.909540, -0.393458, 0.133896,
		38.465069, 33.688953, 39.108414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204990, 34.575783, 39.179691>,  <37.828392, 33.964375, 39.014687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204990, 34.575783, 39.179691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486427, 34.294437, 39.139225>,  <38.655289, 34.125629, 39.114944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486427, 34.294437, 39.139225>,  <38.204990, 34.575783, 39.179691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486427, 34.294437, 39.139225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601170, 0.665081, -0.443014,
		0.378881, 0.250887, 0.890789,
		0.703593, -0.703365, -0.101162,
		38.697506, 34.083427, 39.108875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728577, 34.961418, 39.445885>,  <38.204990, 34.575783, 39.179691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728577, 34.961418, 39.445885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855160, 34.656868, 39.219555>,  <38.931110, 34.474136, 39.083755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855160, 34.656868, 39.219555>,  <38.728577, 34.961418, 39.445885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855160, 34.656868, 39.219555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623169, 0.616577, -0.481138,
		0.715203, -0.200347, 0.669586,
		0.316457, -0.761377, -0.565828,
		38.950096, 34.428455, 39.049805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450577, 34.796650, 39.528309>,  <38.728577, 34.961418, 39.445885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450577, 34.796650, 39.528309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378006, 34.677055, 39.153568>,  <39.334461, 34.605297, 38.928726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378006, 34.677055, 39.153568>,  <39.450577, 34.796650, 39.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378006, 34.677055, 39.153568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509365, 0.786338, -0.349599,
		0.841208, -0.540626, 0.009631,
		-0.181429, -0.298991, -0.936850,
		39.323578, 34.587357, 38.872513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005901, 35.030064, 39.190613>,  <39.450577, 34.796650, 39.528309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005901, 35.030064, 39.190613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779572, 34.931427, 38.875896>,  <39.643772, 34.872246, 38.687069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779572, 34.931427, 38.875896>,  <40.005901, 35.030064, 39.190613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779572, 34.931427, 38.875896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344822, 0.796009, -0.497461,
		0.748959, -0.552778, -0.365372,
		-0.565825, -0.246590, -0.786788,
		39.609825, 34.857449, 38.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302143, 35.295322, 38.701935>,  <40.005901, 35.030064, 39.190613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302143, 35.295322, 38.701935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038418, 35.102180, 38.471401>,  <39.880180, 34.986298, 38.333080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038418, 35.102180, 38.471401>,  <40.302143, 35.295322, 38.701935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038418, 35.102180, 38.471401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293083, 0.540848, -0.788407,
		0.692391, -0.688722, -0.215074,
		-0.659315, -0.482852, -0.576331,
		39.840622, 34.957325, 38.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580917, 35.161629, 38.079945>,  <40.302143, 35.295322, 38.701935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580917, 35.161629, 38.079945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182304, 35.172222, 38.048397>,  <39.943138, 35.178577, 38.029469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182304, 35.172222, 38.048397>,  <40.580917, 35.161629, 38.079945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182304, 35.172222, 38.048397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081434, 0.504736, -0.859424,
		0.017044, -0.862867, -0.505143,
		-0.996533, 0.026488, -0.078869,
		39.883343, 35.180168, 38.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289032, 34.929123, 37.424759>,  <40.580917, 35.161629, 38.079945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289032, 34.929123, 37.424759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000755, 35.172546, 37.557587>,  <39.827789, 35.318600, 37.637283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000755, 35.172546, 37.557587>,  <40.289032, 34.929123, 37.424759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000755, 35.172546, 37.557587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025802, 0.502207, -0.864362,
		-0.692778, -0.614368, -0.377637,
		-0.720689, 0.608555, 0.332066,
		39.784550, 35.355114, 37.657207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813004, 34.893173, 36.916801>,  <40.289032, 34.929123, 37.424759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813004, 34.893173, 36.916801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762806, 35.235741, 37.117119>,  <39.732689, 35.441280, 37.237309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762806, 35.235741, 37.117119>,  <39.813004, 34.893173, 36.916801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762806, 35.235741, 37.117119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083438, 0.512107, -0.854859,
		-0.988580, -0.065490, -0.135722,
		-0.125489, 0.856421, 0.500794,
		39.725159, 35.492668, 37.267357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251427, 35.218609, 36.661751>,  <39.813004, 34.893173, 36.916801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251427, 35.218609, 36.661751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473087, 35.506794, 36.828533>,  <39.606083, 35.679703, 36.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473087, 35.506794, 36.828533>,  <39.251427, 35.218609, 36.661751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473087, 35.506794, 36.828533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081012, 0.451848, -0.888409,
		-0.828464, 0.526093, 0.192027,
		0.554152, 0.720459, 0.416959,
		39.639332, 35.722931, 36.953621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938492, 35.908535, 36.645145>,  <39.251427, 35.218609, 36.661751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938492, 35.908535, 36.645145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334347, 35.965958, 36.644348>,  <39.571861, 36.000412, 36.643867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334347, 35.965958, 36.644348>,  <38.938492, 35.908535, 36.645145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334347, 35.965958, 36.644348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081163, 0.547958, -0.832559,
		-0.118422, 0.824096, 0.553933,
		0.989641, 0.143553, -0.001996,
		39.631241, 36.009022, 36.643749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037300, 36.397614, 36.078964>,  <38.938492, 35.908535, 36.645145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037300, 36.397614, 36.078964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409355, 36.285034, 36.173306>,  <39.632587, 36.217487, 36.229912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409355, 36.285034, 36.173306>,  <39.037300, 36.397614, 36.078964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409355, 36.285034, 36.173306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324550, 0.329624, -0.886575,
		0.171785, 0.901184, 0.397942,
		0.930138, -0.281452, 0.235855,
		39.688396, 36.200600, 36.244061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079605, 36.587238, 36.878983>,  <39.037300, 36.397614, 36.078964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079605, 36.587238, 36.878983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448792, 36.558754, 36.727688>,  <39.670303, 36.541664, 36.636909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448792, 36.558754, 36.727688>,  <39.079605, 36.587238, 36.878983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448792, 36.558754, 36.727688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265938, 0.592429, -0.760463,
		0.278231, 0.802469, 0.527855,
		0.922965, -0.071208, -0.378239,
		39.725681, 36.537392, 36.614216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257668, 37.230515, 36.618660>,  <39.079605, 36.587238, 36.878983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257668, 37.230515, 36.618660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492603, 36.980778, 36.412659>,  <39.633564, 36.830936, 36.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492603, 36.980778, 36.412659>,  <39.257668, 37.230515, 36.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492603, 36.980778, 36.412659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179543, 0.519961, -0.835107,
		0.789174, 0.582958, 0.193299,
		0.587341, -0.624339, -0.515006,
		39.668804, 36.793476, 36.258156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588684, 37.697880, 36.208805>,  <39.257668, 37.230515, 36.618660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588684, 37.697880, 36.208805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636589, 37.335609, 36.046124>,  <39.665333, 37.118248, 35.948517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636589, 37.335609, 36.046124>,  <39.588684, 37.697880, 36.208805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636589, 37.335609, 36.046124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106779, 0.395521, -0.912229,
		0.987044, 0.152674, -0.049341,
		0.119758, -0.905679, -0.406699,
		39.672516, 37.063908, 35.924114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040230, 37.864006, 35.797161>,  <39.588684, 37.697880, 36.208805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040230, 37.864006, 35.797161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870834, 37.525242, 35.668537>,  <39.769196, 37.321983, 35.591362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870834, 37.525242, 35.668537>,  <40.040230, 37.864006, 35.797161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870834, 37.525242, 35.668537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205192, 0.435411, -0.876535,
		0.882358, -0.305220, -0.358170,
		-0.423487, -0.846911, -0.321560,
		39.743790, 37.271168, 35.572071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273136, 37.628334, 35.121796>,  <40.040230, 37.864006, 35.797161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273136, 37.628334, 35.121796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901287, 37.497231, 35.189175>,  <39.678177, 37.418568, 35.229603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901287, 37.497231, 35.189175>,  <40.273136, 37.628334, 35.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901287, 37.497231, 35.189175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296542, 0.393962, -0.869975,
		0.218782, -0.858701, -0.463431,
		-0.929623, -0.327761, 0.168449,
		39.622402, 37.398903, 35.239708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145779, 37.466381, 34.440887>,  <40.273136, 37.628334, 35.121796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145779, 37.466381, 34.440887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786102, 37.501472, 34.612358>,  <39.570297, 37.522526, 34.715240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786102, 37.501472, 34.612358>,  <40.145779, 37.466381, 34.440887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786102, 37.501472, 34.612358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380758, 0.325863, -0.865353,
		-0.215606, -0.941338, -0.259609,
		-0.899187, 0.087728, 0.428680,
		39.516346, 37.527790, 34.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843082, 37.327763, 33.909145>,  <40.145779, 37.466381, 34.440887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843082, 37.327763, 33.909145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544147, 37.478825, 34.127819>,  <39.364784, 37.569462, 34.259022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544147, 37.478825, 34.127819>,  <39.843082, 37.327763, 33.909145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544147, 37.478825, 34.127819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348466, 0.477772, -0.806416,
		-0.565734, -0.793167, -0.225459,
		-0.747340, 0.377652, 0.546683,
		39.319946, 37.592121, 34.291824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141678, 37.292946, 33.531792>,  <39.843082, 37.327763, 33.909145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141678, 37.292946, 33.531792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110146, 37.588940, 33.798988>,  <39.091225, 37.766537, 33.959305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110146, 37.588940, 33.798988>,  <39.141678, 37.292946, 33.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110146, 37.588940, 33.798988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275751, 0.627742, -0.727943,
		-0.957991, -0.241583, 0.154566,
		-0.078831, 0.739985, 0.667988,
		39.086494, 37.810936, 33.999386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103069, 36.592258, 33.204643>,  <39.141678, 37.292946, 33.531792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103069, 36.592258, 33.204643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162655, 36.271458, 32.973263>,  <39.198406, 36.078976, 32.834435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162655, 36.271458, 32.973263>,  <39.103069, 36.592258, 33.204643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162655, 36.271458, 32.973263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694752, -0.331378, 0.638364,
		-0.703654, -0.496973, 0.507828,
		0.148966, -0.802002, -0.578448,
		39.207344, 36.030857, 32.799728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419044, 36.053726, 33.565193>,  <39.103069, 36.592258, 33.204643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419044, 36.053726, 33.565193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501083, 35.939175, 33.190830>,  <39.550304, 35.870445, 32.966213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501083, 35.939175, 33.190830>,  <39.419044, 36.053726, 33.565193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501083, 35.939175, 33.190830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917129, -0.277687, 0.285946,
		-0.341778, -0.916994, 0.205693,
		0.205093, -0.286377, -0.935909,
		39.562611, 35.853260, 32.910057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581707, 35.381950, 33.571033>,  <39.419044, 36.053726, 33.565193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581707, 35.381950, 33.571033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791679, 35.583710, 33.296803>,  <39.917664, 35.704765, 33.132263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791679, 35.583710, 33.296803>,  <39.581707, 35.381950, 33.571033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791679, 35.583710, 33.296803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831323, -0.131030, 0.540123,
		0.182607, -0.853469, -0.488103,
		0.524935, 0.504401, -0.685582,
		39.949162, 35.735031, 33.091129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072201, 35.016766, 33.415016>,  <39.581707, 35.381950, 33.571033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072201, 35.016766, 33.415016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194126, 35.394676, 33.366882>,  <40.267281, 35.621422, 33.338001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194126, 35.394676, 33.366882>,  <40.072201, 35.016766, 33.415016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194126, 35.394676, 33.366882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768013, -0.169112, 0.617703,
		0.563242, -0.280704, -0.777151,
		0.304817, 0.944778, -0.120334,
		40.285572, 35.678108, 33.330784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738152, 35.093540, 33.202286>,  <40.072201, 35.016766, 33.415016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738152, 35.093540, 33.202286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634129, 35.407055, 33.427872>,  <40.571716, 35.595161, 33.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634129, 35.407055, 33.427872>,  <40.738152, 35.093540, 33.202286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634129, 35.407055, 33.427872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656293, -0.284940, 0.698633,
		0.708273, 0.551808, -0.440292,
		-0.260055, 0.783784, 0.563964,
		40.556110, 35.642189, 33.597061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290295, 34.741001, 33.678844>,  <40.738152, 35.093540, 33.202286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290295, 34.741001, 33.678844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530251, 34.548473, 33.934490>,  <41.674225, 34.432957, 34.087879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530251, 34.548473, 33.934490>,  <41.290295, 34.741001, 33.678844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530251, 34.548473, 33.934490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787674, 0.495432, -0.366220,
		-0.140371, 0.723106, 0.676324,
		0.599888, -0.481316, 0.639116,
		41.710217, 34.404079, 34.126225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689495, 35.219894, 34.197895>,  <41.290295, 34.741001, 33.678844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689495, 35.219894, 34.197895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909966, 34.891998, 34.135639>,  <42.042248, 34.695259, 34.098286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909966, 34.891998, 34.135639>,  <41.689495, 35.219894, 34.197895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909966, 34.891998, 34.135639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721680, 0.561979, -0.404175,
		0.418786, 0.110450, 0.901343,
		0.551177, -0.819744, -0.155639,
		42.075317, 34.646076, 34.088947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366478, 35.308998, 34.624180>,  <41.689495, 35.219894, 34.197895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366478, 35.308998, 34.624180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388371, 35.101654, 34.282818>,  <42.401505, 34.977249, 34.077999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388371, 35.101654, 34.282818>,  <42.366478, 35.308998, 34.624180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388371, 35.101654, 34.282818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902017, 0.392210, -0.180379,
		0.428217, -0.759917, 0.489037,
		0.054732, -0.518361, -0.853409,
		42.404789, 34.946144, 34.026794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714287, 34.694183, 34.642693>,  <42.366478, 35.308998, 34.624180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714287, 34.694183, 34.642693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761623, 34.855354, 34.279671>,  <42.790024, 34.952057, 34.061859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761623, 34.855354, 34.279671>,  <42.714287, 34.694183, 34.642693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761623, 34.855354, 34.279671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969234, 0.151782, 0.193770,
		0.215824, -0.902560, -0.372566,
		0.118340, 0.402924, -0.907551,
		42.797127, 34.976231, 34.007404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138489, 34.308784, 34.184593>,  <42.714287, 34.694183, 34.642693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138489, 34.308784, 34.184593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180946, 34.699078, 34.107986>,  <43.206421, 34.933254, 34.062023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180946, 34.699078, 34.107986>,  <43.138489, 34.308784, 34.184593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180946, 34.699078, 34.107986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982035, -0.072644, 0.174155,
		0.156017, -0.206557, -0.965916,
		0.106141, 0.975734, -0.191512,
		43.212788, 34.991798, 34.050533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502388, 34.760094, 33.637131>,  <43.138489, 34.308784, 34.184593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502388, 34.760094, 33.637131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490906, 34.909016, 34.008198>,  <43.484016, 34.998367, 34.230839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490906, 34.909016, 34.008198>,  <43.502388, 34.760094, 33.637131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490906, 34.909016, 34.008198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999236, 0.035296, 0.016757,
		-0.026504, 0.927439, -0.373033,
		-0.028708, 0.372304, 0.927667,
		43.482292, 35.020706, 34.286499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100021, 35.072678, 33.643688>,  <43.502388, 34.760094, 33.637131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100021, 35.072678, 33.643688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995991, 35.052479, 34.029396>,  <43.933571, 35.040359, 34.260818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995991, 35.052479, 34.029396>,  <44.100021, 35.072678, 33.643688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995991, 35.052479, 34.029396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959381, 0.099533, 0.263970,
		-0.109307, 0.993752, 0.022561,
		-0.260076, -0.050498, 0.964267,
		43.917969, 35.037331, 34.318676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323719, 35.697651, 34.180290>,  <44.100021, 35.072678, 33.643688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323719, 35.697651, 34.180290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297966, 35.334755, 34.346554>,  <44.282513, 35.117016, 34.446312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297966, 35.334755, 34.346554>,  <44.323719, 35.697651, 34.180290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297966, 35.334755, 34.346554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997419, -0.071774, -0.002159,
		0.031792, 0.414442, 0.909520,
		-0.064385, -0.907241, 0.415654,
		44.278652, 35.062584, 34.471249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667927, 35.744568, 34.874584>,  <44.323719, 35.697651, 34.180290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667927, 35.744568, 34.874584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707146, 35.371269, 34.736351>,  <44.730679, 35.147289, 34.653412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707146, 35.371269, 34.736351>,  <44.667927, 35.744568, 34.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707146, 35.371269, 34.736351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987547, 0.048306, 0.149728,
		-0.123040, -0.355961, 0.926365,
		0.098047, -0.933251, -0.345584,
		44.736561, 35.091293, 34.632675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022099, 35.293438, 35.343548>,  <44.667927, 35.744568, 34.874584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022099, 35.293438, 35.343548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093525, 35.146111, 34.978592>,  <45.136379, 35.057713, 34.759617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093525, 35.146111, 34.978592>,  <45.022099, 35.293438, 35.343548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093525, 35.146111, 34.978592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949231, -0.179599, 0.258273,
		-0.258991, -0.912187, 0.317551,
		0.178562, -0.368320, -0.912390,
		45.147095, 35.035614, 34.704876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219692, 34.623909, 35.487816>,  <45.022099, 35.293438, 35.343548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219692, 34.623909, 35.487816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351166, 34.802490, 35.154915>,  <45.430050, 34.909637, 34.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351166, 34.802490, 35.154915>,  <45.219692, 34.623909, 35.487816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351166, 34.802490, 35.154915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943358, -0.113009, 0.311935,
		0.045212, -0.887642, -0.458309,
		0.328680, 0.446453, -0.832255,
		45.449768, 34.936424, 34.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630726, 34.195358, 34.917717>,  <45.219692, 34.623909, 35.487816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630726, 34.195358, 34.917717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748940, 34.577393, 34.926476>,  <45.819866, 34.806614, 34.931728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748940, 34.577393, 34.926476>,  <45.630726, 34.195358, 34.917717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748940, 34.577393, 34.926476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935186, -0.293907, 0.197602,
		0.195160, -0.037924, -0.980038,
		0.295534, 0.955081, 0.021893,
		45.837601, 34.863918, 34.933044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170364, 34.340580, 34.334858>,  <45.630726, 34.195358, 34.917717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170364, 34.340580, 34.334858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195221, 34.611771, 34.627838>,  <46.210136, 34.774487, 34.803627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195221, 34.611771, 34.627838>,  <46.170364, 34.340580, 34.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195221, 34.611771, 34.627838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979238, -0.183293, 0.086585,
		0.192955, 0.711861, -0.675294,
		0.062141, 0.677981, 0.732448,
		46.213863, 34.815166, 34.847572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719070, 34.806561, 34.206768>,  <46.170364, 34.340580, 34.334858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719070, 34.806561, 34.206768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655403, 34.780441, 34.600803>,  <46.617203, 34.764771, 34.837227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655403, 34.780441, 34.600803>,  <46.719070, 34.806561, 34.206768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655403, 34.780441, 34.600803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987029, -0.031749, 0.157374,
		0.020999, 0.997360, 0.069509,
		-0.159165, -0.065303, 0.985090,
		46.607655, 34.760849, 34.896332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095921, 35.314457, 34.470715>,  <46.719070, 34.806561, 34.206768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095921, 35.314457, 34.470715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080063, 35.003571, 34.721909>,  <47.070549, 34.817039, 34.872623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080063, 35.003571, 34.721909>,  <47.095921, 35.314457, 34.470715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.080063, 35.003571, 34.721909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997409, 0.006971, 0.071600,
		-0.060026, 0.629192, 0.774929,
		-0.039648, -0.777219, 0.627980,
		47.068169, 34.770405, 34.910301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597523, 35.471199, 34.971817>,  <47.095921, 35.314457, 34.470715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597523, 35.471199, 34.971817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529018, 35.077381, 34.957169>,  <47.487915, 34.841091, 34.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529018, 35.077381, 34.957169>,  <47.597523, 35.471199, 34.971817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.529018, 35.077381, 34.957169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971854, -0.174925, 0.157799,
		-0.161767, -0.008568, 0.986792,
		-0.171263, -0.984545, -0.036624,
		47.477638, 34.782017, 34.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.166092, 37.119747, 24.953482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849396, 37.029064, 24.726591>,  <36.659378, 36.974655, 24.590456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849396, 37.029064, 24.726591>,  <37.166092, 37.119747, 24.953482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849396, 37.029064, 24.726591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428218, -0.456230, 0.780054,
		-0.435629, 0.860499, 0.264138,
		-0.791743, -0.226705, -0.567228,
		36.611874, 36.961052, 24.556423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650307, 37.289471, 25.364225>,  <37.166092, 37.119747, 24.953482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650307, 37.289471, 25.364225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515221, 37.030766, 25.090687>,  <36.434170, 36.875542, 24.926563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515221, 37.030766, 25.090687>,  <36.650307, 37.289471, 25.364225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515221, 37.030766, 25.090687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338691, -0.594364, 0.729397,
		-0.878202, 0.477939, -0.018330,
		-0.337712, -0.646766, -0.683845,
		36.413906, 36.836735, 24.885532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954079, 37.167534, 25.492744>,  <36.650307, 37.289471, 25.364225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954079, 37.167534, 25.492744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069130, 36.850380, 25.277861>,  <36.138161, 36.660088, 25.148930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069130, 36.850380, 25.277861>,  <35.954079, 37.167534, 25.492744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069130, 36.850380, 25.277861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460455, -0.606317, 0.648353,
		-0.839793, 0.060877, -0.539483,
		0.287628, -0.792889, -0.537212,
		36.155418, 36.612514, 25.116697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263210, 36.782944, 25.435825>,  <35.954079, 37.167534, 25.492744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263210, 36.782944, 25.435825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553104, 36.523293, 25.343403>,  <35.727039, 36.367500, 25.287949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553104, 36.523293, 25.343403>,  <35.263210, 36.782944, 25.435825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553104, 36.523293, 25.343403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409907, -0.675729, 0.612673,
		-0.553835, -0.349315, -0.755808,
		0.724737, -0.649130, -0.231056,
		35.770527, 36.328552, 25.274086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905281, 36.113396, 25.300297>,  <35.263210, 36.782944, 25.435825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905281, 36.113396, 25.300297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287956, 36.015015, 25.362583>,  <35.517563, 35.955986, 25.399956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287956, 36.015015, 25.362583>,  <34.905281, 36.113396, 25.300297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287956, 36.015015, 25.362583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287258, -0.711012, 0.641829,
		-0.047142, -0.658764, -0.750872,
		0.956692, -0.245951, 0.155717,
		35.574963, 35.941231, 25.409298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888042, 35.422657, 25.463121>,  <34.905281, 36.113396, 25.300297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888042, 35.422657, 25.463121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223263, 35.560806, 25.632067>,  <35.424397, 35.643696, 25.733435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223263, 35.560806, 25.632067>,  <34.888042, 35.422657, 25.463121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223263, 35.560806, 25.632067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183374, -0.550799, 0.814245,
		0.513854, -0.759829, -0.398265,
		0.838050, 0.345371, 0.422363,
		35.474678, 35.664417, 25.758776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217487, 34.865337, 25.786129>,  <34.888042, 35.422657, 25.463121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217487, 34.865337, 25.786129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380714, 35.181194, 25.969406>,  <35.478649, 35.370708, 26.079372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380714, 35.181194, 25.969406>,  <35.217487, 34.865337, 25.786129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380714, 35.181194, 25.969406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149145, -0.437479, 0.886774,
		0.900687, -0.430201, -0.060750,
		0.408067, 0.789645, 0.458194,
		35.503136, 35.418087, 26.106865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578476, 34.542664, 26.287769>,  <35.217487, 34.865337, 25.786129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578476, 34.542664, 26.287769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500931, 34.919945, 26.395679>,  <35.454403, 35.146317, 26.460424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500931, 34.919945, 26.395679>,  <35.578476, 34.542664, 26.287769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500931, 34.919945, 26.395679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064171, -0.286594, 0.955901,
		0.978929, 0.167998, 0.116085,
		-0.193858, 0.943208, 0.269774,
		35.442772, 35.202908, 26.476612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059048, 34.641148, 26.818546>,  <35.578476, 34.542664, 26.287769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059048, 34.641148, 26.818546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768856, 34.913525, 26.858543>,  <35.594742, 35.076950, 26.882542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768856, 34.913525, 26.858543>,  <36.059048, 34.641148, 26.818546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768856, 34.913525, 26.858543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031025, -0.177492, 0.983633,
		0.687547, 0.710500, 0.149893,
		-0.725476, 0.680945, 0.099991,
		35.551212, 35.117809, 26.888540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177731, 34.942303, 27.443769>,  <36.059048, 34.641148, 26.818546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177731, 34.942303, 27.443769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812141, 35.099464, 27.403215>,  <35.592789, 35.193764, 27.378883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812141, 35.099464, 27.403215>,  <36.177731, 34.942303, 27.443769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812141, 35.099464, 27.403215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106892, 0.007901, 0.994239,
		0.391445, 0.919544, 0.034778,
		-0.913972, 0.392908, -0.101385,
		35.537949, 35.217339, 27.372801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136791, 35.542774, 27.817917>,  <36.177731, 34.942303, 27.443769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136791, 35.542774, 27.817917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768948, 35.390480, 27.779234>,  <35.548241, 35.299103, 27.756023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768948, 35.390480, 27.779234>,  <36.136791, 35.542774, 27.817917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768948, 35.390480, 27.779234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114725, 0.024857, 0.993086,
		-0.375700, 0.924350, -0.066538,
		-0.919613, -0.380736, -0.096707,
		35.493065, 35.276260, 27.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680363, 35.990654, 28.187750>,  <36.136791, 35.542774, 27.817917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680363, 35.990654, 28.187750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488640, 35.640137, 28.168247>,  <35.373608, 35.429825, 28.156546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488640, 35.640137, 28.168247>,  <35.680363, 35.990654, 28.187750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488640, 35.640137, 28.168247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166252, 0.036107, 0.985422,
		-0.861757, 0.480426, -0.162992,
		-0.479307, -0.876292, -0.048756,
		35.344849, 35.377251, 28.153620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147869, 36.028118, 28.645100>,  <35.680363, 35.990654, 28.187750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147869, 36.028118, 28.645100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182060, 35.633778, 28.587420>,  <35.202576, 35.397175, 28.552811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182060, 35.633778, 28.587420>,  <35.147869, 36.028118, 28.645100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182060, 35.633778, 28.587420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266962, -0.162102, 0.949976,
		-0.959909, -0.042705, -0.277040,
		0.085477, -0.985849, -0.144202,
		35.207703, 35.338024, 28.544159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603497, 35.662437, 29.057039>,  <35.147869, 36.028118, 28.645100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603497, 35.662437, 29.057039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870937, 35.371616, 28.994604>,  <35.031403, 35.197124, 28.957144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870937, 35.371616, 28.994604>,  <34.603497, 35.662437, 29.057039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870937, 35.371616, 28.994604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053900, -0.256734, 0.964978,
		-0.741661, -0.636776, -0.210843,
		0.668605, -0.727051, -0.156087,
		35.071518, 35.153500, 28.947779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303474, 34.981987, 29.218306>,  <34.603497, 35.662437, 29.057039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303474, 34.981987, 29.218306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699181, 34.964626, 29.274122>,  <34.936604, 34.954212, 29.307611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699181, 34.964626, 29.274122>,  <34.303474, 34.981987, 29.218306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699181, 34.964626, 29.274122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145278, -0.188966, 0.971178,
		-0.015778, -0.981024, -0.193243,
		0.989265, -0.043397, 0.139540,
		34.995960, 34.951607, 29.315985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377106, 34.389652, 29.541084>,  <34.303474, 34.981987, 29.218306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377106, 34.389652, 29.541084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.696125, 34.618351, 29.618038>,  <34.887539, 34.755569, 29.664211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.696125, 34.618351, 29.618038>,  <34.377106, 34.389652, 29.541084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696125, 34.618351, 29.618038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088376, -0.426213, 0.900296,
		0.596742, -0.701030, -0.390456,
		0.797552, 0.571751, 0.192384,
		34.935390, 34.789875, 29.675753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500935, 34.011581, 30.061750>,  <34.377106, 34.389652, 29.541084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500935, 34.011581, 30.061750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740452, 34.329506, 30.101189>,  <34.884163, 34.520260, 30.124851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.740452, 34.329506, 30.101189>,  <34.500935, 34.011581, 30.061750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740452, 34.329506, 30.101189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151876, -0.233556, 0.960409,
		0.786370, -0.560115, -0.260565,
		0.598796, 0.794810, 0.098594,
		34.920090, 34.567947, 30.130766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968811, 33.729939, 30.556856>,  <34.500935, 34.011581, 30.061750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968811, 33.729939, 30.556856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990486, 34.129177, 30.568678>,  <35.003490, 34.368721, 30.575771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990486, 34.129177, 30.568678>,  <34.968811, 33.729939, 30.556856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990486, 34.129177, 30.568678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217688, -0.040694, 0.975170,
		0.974513, -0.046411, -0.219478,
		0.054191, 0.998093, 0.029554,
		35.006744, 34.428604, 30.577543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638313, 33.941139, 30.829145>,  <34.968811, 33.729939, 30.556856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638313, 33.941139, 30.829145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438320, 34.285530, 30.866510>,  <35.318325, 34.492165, 30.888929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438320, 34.285530, 30.866510>,  <35.638313, 33.941139, 30.829145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438320, 34.285530, 30.866510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327802, 0.088309, 0.940610,
		0.801597, 0.500914, -0.326385,
		-0.499987, 0.860980, 0.093412,
		35.288322, 34.543823, 30.894535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080364, 34.512020, 31.106728>,  <35.638313, 33.941139, 30.829145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080364, 34.512020, 31.106728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707123, 34.617786, 31.204220>,  <35.483177, 34.681248, 31.262714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707123, 34.617786, 31.204220>,  <36.080364, 34.512020, 31.106728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707123, 34.617786, 31.204220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225534, -0.097608, 0.969333,
		0.280101, 0.959455, 0.031442,
		-0.933101, 0.264420, 0.243730,
		35.427193, 34.697113, 31.277338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140568, 35.062256, 31.643387>,  <36.080364, 34.512020, 31.106728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140568, 35.062256, 31.643387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778709, 34.907040, 31.713856>,  <35.561592, 34.813911, 31.756138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778709, 34.907040, 31.713856>,  <36.140568, 35.062256, 31.643387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778709, 34.907040, 31.713856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157251, 0.080276, 0.984291,
		-0.396085, 0.918140, -0.011602,
		-0.904648, -0.388039, 0.176175,
		35.507317, 34.790627, 31.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887520, 35.497967, 32.192047>,  <36.140568, 35.062256, 31.643387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887520, 35.497967, 32.192047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717381, 35.136318, 32.175865>,  <35.615295, 34.919327, 32.166157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.717381, 35.136318, 32.175865>,  <35.887520, 35.497967, 32.192047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717381, 35.136318, 32.175865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064897, -0.075056, 0.995065,
		-0.902698, 0.420628, 0.090601,
		-0.425353, -0.904123, -0.040455,
		35.589775, 34.865082, 32.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625126, 35.258385, 32.196461>,  <35.887520, 35.497967, 32.192047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625126, 35.258385, 32.196461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859116, 35.540443, 32.356747>,  <36.999508, 35.709679, 32.452919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859116, 35.540443, 32.356747>,  <36.625126, 35.258385, 32.196461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859116, 35.540443, 32.356747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220683, 0.337036, -0.915263,
		-0.780452, 0.623834, 0.041542,
		0.584973, 0.705151, 0.400710,
		37.034607, 35.751987, 32.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440769, 35.917332, 31.984005>,  <36.625126, 35.258385, 32.196461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440769, 35.917332, 31.984005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828369, 35.946449, 32.078445>,  <37.060928, 35.963921, 32.135109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828369, 35.946449, 32.078445>,  <36.440769, 35.917332, 31.984005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828369, 35.946449, 32.078445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169403, 0.499862, -0.849377,
		-0.179850, 0.863041, 0.472033,
		0.968998, 0.072797, 0.236101,
		37.119068, 35.968288, 32.149277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678490, 36.609985, 31.891777>,  <36.440769, 35.917332, 31.984005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678490, 36.609985, 31.891777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035404, 36.429970, 31.906153>,  <37.249554, 36.321960, 31.914778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035404, 36.429970, 31.906153>,  <36.678490, 36.609985, 31.891777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035404, 36.429970, 31.906153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315944, 0.565583, -0.761771,
		0.322498, 0.691074, 0.646848,
		0.892286, -0.450037, 0.035941,
		37.303089, 36.294960, 31.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187572, 37.152683, 31.926823>,  <36.678490, 36.609985, 31.891777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187572, 37.152683, 31.926823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351116, 36.817482, 31.782276>,  <37.449242, 36.616360, 31.695547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351116, 36.817482, 31.782276>,  <37.187572, 37.152683, 31.926823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351116, 36.817482, 31.782276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264585, 0.487818, -0.831883,
		0.873402, 0.244509, 0.421171,
		0.408857, -0.838003, -0.361367,
		37.473774, 36.566082, 31.673866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812313, 37.493465, 31.674936>,  <37.187572, 37.152683, 31.926823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812313, 37.493465, 31.674936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814552, 37.126205, 31.516457>,  <37.815895, 36.905849, 31.421370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814552, 37.126205, 31.516457>,  <37.812313, 37.493465, 31.674936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814552, 37.126205, 31.516457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492550, 0.347340, -0.797966,
		0.870266, -0.190678, 0.454179,
		0.005600, -0.918148, -0.396197,
		37.816231, 36.850761, 31.397598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429897, 37.360733, 31.390438>,  <37.812313, 37.493465, 31.674936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429897, 37.360733, 31.390438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189087, 37.120823, 31.179600>,  <38.044601, 36.976875, 31.053097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189087, 37.120823, 31.179600>,  <38.429897, 37.360733, 31.390438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189087, 37.120823, 31.179600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276573, 0.462624, -0.842310,
		0.749046, -0.652874, -0.112630,
		-0.602027, -0.599779, -0.527094,
		38.008480, 36.940887, 31.021471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698086, 37.353523, 30.809019>,  <38.429897, 37.360733, 31.390438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698086, 37.353523, 30.809019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349911, 37.206982, 30.677490>,  <38.141006, 37.119057, 30.598574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349911, 37.206982, 30.677490>,  <38.698086, 37.353523, 30.809019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349911, 37.206982, 30.677490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163730, 0.414486, -0.895206,
		0.464255, -0.833058, -0.300801,
		-0.870437, -0.366354, -0.328824,
		38.088779, 37.097076, 30.578844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792160, 37.116676, 30.197292>,  <38.698086, 37.353523, 30.809019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792160, 37.116676, 30.197292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395069, 37.164505, 30.202822>,  <38.156815, 37.193203, 30.206139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395069, 37.164505, 30.202822>,  <38.792160, 37.116676, 30.197292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395069, 37.164505, 30.202822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017229, 0.254805, -0.966839,
		-0.119129, -0.959571, -0.255013,
		-0.992729, 0.119572, 0.013823,
		38.097252, 37.200378, 30.206968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533310, 36.735676, 29.640093>,  <38.792160, 37.116676, 30.197292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533310, 36.735676, 29.640093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254833, 37.009090, 29.727812>,  <38.087746, 37.173141, 29.780443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254833, 37.009090, 29.727812>,  <38.533310, 36.735676, 29.640093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254833, 37.009090, 29.727812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049468, 0.259079, -0.964588,
		-0.716150, -0.682386, -0.146555,
		-0.696191, 0.683540, 0.219296,
		38.045975, 37.214153, 29.793600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045658, 36.643147, 29.165451>,  <38.533310, 36.735676, 29.640093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045658, 36.643147, 29.165451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978878, 37.012955, 29.302500>,  <37.938808, 37.234840, 29.384729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978878, 37.012955, 29.302500>,  <38.045658, 36.643147, 29.165451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978878, 37.012955, 29.302500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132305, 0.323347, -0.936986,
		-0.977048, -0.201761, 0.068335,
		-0.166952, 0.924521, 0.342620,
		37.928791, 37.290310, 29.405285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517223, 36.991093, 28.833534>,  <38.045658, 36.643147, 29.165451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517223, 36.991093, 28.833534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739605, 37.286179, 28.986734>,  <37.873035, 37.463230, 29.078655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739605, 37.286179, 28.986734>,  <37.517223, 36.991093, 28.833534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739605, 37.286179, 28.986734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086561, 0.406886, -0.909369,
		-0.826692, 0.538722, 0.162353,
		0.555956, 0.737715, 0.383002,
		37.906391, 37.507492, 29.101635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370880, 37.539516, 28.346977>,  <37.517223, 36.991093, 28.833534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370880, 37.539516, 28.346977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669834, 37.689285, 28.566511>,  <37.849209, 37.779148, 28.698231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669834, 37.689285, 28.566511>,  <37.370880, 37.539516, 28.346977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669834, 37.689285, 28.566511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231961, 0.627036, -0.743653,
		-0.622579, 0.683106, 0.381788,
		0.747389, 0.374423, 0.548833,
		37.894051, 37.801613, 28.731161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302616, 38.320423, 28.290598>,  <37.370880, 37.539516, 28.346977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302616, 38.320423, 28.290598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.682281, 38.223858, 28.371393>,  <37.910080, 38.165916, 28.419870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.682281, 38.223858, 28.371393>,  <37.302616, 38.320423, 28.290598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682281, 38.223858, 28.371393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303283, 0.529629, -0.792157,
		0.084262, 0.813149, 0.575924,
		0.949168, -0.241417, 0.201986,
		37.967033, 38.151432, 28.431990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693913, 38.937569, 28.214149>,  <37.302616, 38.320423, 28.290598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693913, 38.937569, 28.214149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965866, 38.646687, 28.176338>,  <38.129036, 38.472157, 28.153652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965866, 38.646687, 28.176338>,  <37.693913, 38.937569, 28.214149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965866, 38.646687, 28.176338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328909, 0.417605, -0.847009,
		0.655424, 0.544774, 0.523106,
		0.679881, -0.727205, -0.094528,
		38.169830, 38.428524, 28.147980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265312, 39.254555, 27.914438>,  <37.693913, 38.937569, 28.214149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265312, 39.254555, 27.914438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350441, 38.872314, 27.832918>,  <38.401520, 38.642971, 27.784006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350441, 38.872314, 27.832918>,  <38.265312, 39.254555, 27.914438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350441, 38.872314, 27.832918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346571, 0.268843, -0.898673,
		0.913562, 0.120628, 0.388399,
		0.212823, -0.955601, -0.203799,
		38.414288, 38.585636, 27.771778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924408, 39.304024, 27.590185>,  <38.265312, 39.254555, 27.914438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924408, 39.304024, 27.590185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796886, 38.940098, 27.483900>,  <38.720371, 38.721745, 27.420130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796886, 38.940098, 27.483900>,  <38.924408, 39.304024, 27.590185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796886, 38.940098, 27.483900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329291, 0.156558, -0.931159,
		0.888779, -0.384357, 0.249682,
		-0.318808, -0.909813, -0.265711,
		38.701244, 38.667152, 27.404186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493866, 38.914860, 27.205427>,  <38.924408, 39.304024, 27.590185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493866, 38.914860, 27.205427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167458, 38.725338, 27.072994>,  <38.971611, 38.611626, 26.993534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.167458, 38.725338, 27.072994>,  <39.493866, 38.914860, 27.205427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167458, 38.725338, 27.072994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330217, 0.087982, -0.939796,
		0.474411, -0.876223, 0.084664,
		-0.816022, -0.473807, -0.331083,
		38.922649, 38.583195, 26.973669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732811, 38.389355, 26.767424>,  <39.493866, 38.914860, 27.205427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732811, 38.389355, 26.767424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348202, 38.438660, 26.669224>,  <39.117435, 38.468243, 26.610304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348202, 38.438660, 26.669224>,  <39.732811, 38.389355, 26.767424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348202, 38.438660, 26.669224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257221, 0.090221, -0.962132,
		-0.096448, -0.988264, -0.118457,
		-0.961528, 0.123265, -0.245500,
		39.059742, 38.475639, 26.595573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.364117, 37.665028, 25.876017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.115993, 37.963135, 25.973820>,  <38.967117, 38.141998, 26.032501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.115993, 37.963135, 25.973820>,  <39.364117, 37.665028, 25.876017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115993, 37.963135, 25.973820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082215, 0.248233, -0.965205,
		-0.780034, -0.618831, -0.092709,
		-0.620312, 0.745271, 0.244507,
		38.929901, 38.186714, 26.047173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729443, 37.565819, 25.506580>,  <39.364117, 37.665028, 25.876017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729443, 37.565819, 25.506580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794941, 37.949974, 25.596775>,  <38.834240, 38.180466, 25.650892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794941, 37.949974, 25.596775>,  <38.729443, 37.565819, 25.506580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794941, 37.949974, 25.596775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239815, 0.260468, -0.935224,
		-0.956910, 0.099059, 0.272964,
		0.163741, 0.960387, 0.225489,
		38.844063, 38.238091, 25.664421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169304, 37.851200, 25.189011>,  <38.729443, 37.565819, 25.506580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169304, 37.851200, 25.189011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437782, 38.144276, 25.234022>,  <38.598869, 38.320122, 25.261028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437782, 38.144276, 25.234022>,  <38.169304, 37.851200, 25.189011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437782, 38.144276, 25.234022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241699, 0.359814, -0.901175,
		-0.700773, 0.577664, 0.418595,
		0.671193, 0.732692, 0.112527,
		38.639141, 38.364082, 25.267780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798668, 38.471241, 25.113155>,  <38.169304, 37.851200, 25.189011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798668, 38.471241, 25.113155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181366, 38.560711, 25.038742>,  <38.410984, 38.614391, 24.994093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181366, 38.560711, 25.038742>,  <37.798668, 38.471241, 25.113155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181366, 38.560711, 25.038742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270568, 0.449090, -0.851535,
		-0.106920, 0.865036, 0.490184,
		0.956745, 0.223674, -0.186034,
		38.468391, 38.627811, 24.982931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682438, 39.113586, 24.827198>,  <37.798668, 38.471241, 25.113155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682438, 39.113586, 24.827198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055733, 39.013885, 24.723705>,  <38.279709, 38.954067, 24.661610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055733, 39.013885, 24.723705>,  <37.682438, 39.113586, 24.827198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055733, 39.013885, 24.723705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014436, 0.693581, -0.720234,
		0.358967, 0.675885, 0.643678,
		0.933239, -0.249248, -0.258730,
		38.335705, 38.939110, 24.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021358, 39.751698, 24.691978>,  <37.682438, 39.113586, 24.827198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021358, 39.751698, 24.691978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273880, 39.496868, 24.515076>,  <38.425392, 39.343971, 24.408934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273880, 39.496868, 24.515076>,  <38.021358, 39.751698, 24.691978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273880, 39.496868, 24.515076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162482, 0.666255, -0.727808,
		0.758325, 0.387608, 0.524122,
		0.631303, -0.637075, -0.442258,
		38.463272, 39.305744, 24.382399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523952, 40.166897, 24.435574>,  <38.021358, 39.751698, 24.691978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523952, 40.166897, 24.435574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569035, 39.821854, 24.238308>,  <38.596085, 39.614830, 24.119947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569035, 39.821854, 24.238308>,  <38.523952, 40.166897, 24.435574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569035, 39.821854, 24.238308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130049, 0.479253, -0.867988,
		0.985082, 0.161959, -0.058168,
		0.112701, -0.862604, -0.493166,
		38.602844, 39.563072, 24.090359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947788, 40.337292, 23.910412>,  <38.523952, 40.166897, 24.435574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947788, 40.337292, 23.910412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744572, 40.016068, 23.785837>,  <38.622643, 39.823334, 23.711092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744572, 40.016068, 23.785837>,  <38.947788, 40.337292, 23.910412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744572, 40.016068, 23.785837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169462, 0.447700, -0.877979,
		0.844497, -0.393274, -0.363538,
		-0.508042, -0.803057, -0.311436,
		38.592159, 39.775150, 23.692406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311081, 40.074932, 23.363153>,  <38.947788, 40.337292, 23.910412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311081, 40.074932, 23.363153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926506, 39.966663, 23.343630>,  <38.695763, 39.901703, 23.331915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926506, 39.966663, 23.343630>,  <39.311081, 40.074932, 23.363153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926506, 39.966663, 23.343630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054763, 0.362315, -0.930445,
		0.269523, -0.891890, -0.363165,
		-0.961436, -0.270665, -0.048809,
		38.638077, 39.885464, 23.328987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209427, 39.857861, 22.729681>,  <39.311081, 40.074932, 23.363153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209427, 39.857861, 22.729681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828388, 39.897549, 22.844719>,  <38.599766, 39.921364, 22.913742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828388, 39.897549, 22.844719>,  <39.209427, 39.857861, 22.729681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828388, 39.897549, 22.844719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239260, 0.339543, -0.909651,
		-0.187909, -0.935342, -0.299708,
		-0.952599, 0.099223, 0.287593,
		38.542610, 39.927315, 22.930996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724216, 39.533485, 22.182291>,  <39.209427, 39.857861, 22.729681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724216, 39.533485, 22.182291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528442, 39.816853, 22.385704>,  <38.410976, 39.986874, 22.507751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528442, 39.816853, 22.385704>,  <38.724216, 39.533485, 22.182291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528442, 39.816853, 22.385704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235385, 0.454184, -0.859250,
		-0.839671, -0.540248, -0.055544,
		-0.489435, 0.708414, 0.508531,
		38.381611, 40.029377, 22.538263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220123, 39.716450, 21.695959>,  <38.724216, 39.533485, 22.182291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220123, 39.716450, 21.695959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230843, 40.019390, 21.956944>,  <38.237274, 40.201153, 22.113535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230843, 40.019390, 21.956944>,  <38.220123, 39.716450, 21.695959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230843, 40.019390, 21.956944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015885, 0.652937, -0.757245,
		-0.999515, 0.009925, 0.029526,
		0.026794, 0.757347, 0.652463,
		38.238880, 40.246593, 22.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825268, 40.145504, 21.491535>,  <38.220123, 39.716450, 21.695959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825268, 40.145504, 21.491535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030308, 40.395756, 21.726765>,  <38.153332, 40.545906, 21.867903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030308, 40.395756, 21.726765>,  <37.825268, 40.145504, 21.491535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030308, 40.395756, 21.726765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101314, 0.724186, -0.682122,
		-0.852630, 0.290075, 0.434602,
		0.512600, 0.625629, 0.588073,
		38.184086, 40.583443, 21.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500118, 40.800713, 21.357283>,  <37.825268, 40.145504, 21.491535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500118, 40.800713, 21.357283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.852547, 40.880657, 21.528753>,  <38.064003, 40.928623, 21.631636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.852547, 40.880657, 21.528753>,  <37.500118, 40.800713, 21.357283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852547, 40.880657, 21.528753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202477, 0.659703, -0.723737,
		-0.427450, 0.724462, 0.540778,
		0.881073, 0.199865, 0.428677,
		38.116867, 40.940617, 21.657356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472324, 41.477306, 21.469345>,  <37.500118, 40.800713, 21.357283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472324, 41.477306, 21.469345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858620, 41.373581, 21.465122>,  <38.090397, 41.311348, 21.462589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858620, 41.373581, 21.465122>,  <37.472324, 41.477306, 21.469345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858620, 41.373581, 21.465122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182089, 0.706002, -0.684401,
		0.184924, 0.659029, 0.729030,
		0.965736, -0.259311, -0.010555,
		38.148342, 41.295788, 21.461956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749077, 42.091537, 21.466242>,  <37.472324, 41.477306, 21.469345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749077, 42.091537, 21.466242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028122, 41.842838, 21.323824>,  <38.195549, 41.693619, 21.238373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028122, 41.842838, 21.323824>,  <37.749077, 42.091537, 21.466242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028122, 41.842838, 21.323824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175887, 0.630341, -0.756131,
		0.694554, 0.464861, 0.549090,
		0.697610, -0.621751, -0.356043,
		38.237404, 41.656315, 21.217010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305813, 42.473503, 21.298336>,  <37.749077, 42.091537, 21.466242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305813, 42.473503, 21.298336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371166, 42.130512, 21.103182>,  <38.410378, 41.924717, 20.986090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371166, 42.130512, 21.103182>,  <38.305813, 42.473503, 21.298336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371166, 42.130512, 21.103182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275358, 0.514513, -0.812068,
		0.947355, -0.001662, 0.320179,
		0.163387, -0.857481, -0.487884,
		38.420181, 41.873268, 20.956816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981438, 42.512028, 21.104273>,  <38.305813, 42.473503, 21.298336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981438, 42.512028, 21.104273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761330, 42.281204, 20.862873>,  <38.629265, 42.142712, 20.718033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761330, 42.281204, 20.862873>,  <38.981438, 42.512028, 21.104273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761330, 42.281204, 20.862873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276336, 0.556182, -0.783773,
		0.787938, -0.598052, -0.146587,
		-0.550266, -0.577057, -0.603500,
		38.596249, 42.108086, 20.681824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329510, 42.628998, 20.469809>,  <38.981438, 42.512028, 21.104273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329510, 42.628998, 20.469809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.996788, 42.445049, 20.345470>,  <38.797157, 42.334679, 20.270868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.996788, 42.445049, 20.345470>,  <39.329510, 42.628998, 20.469809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996788, 42.445049, 20.345470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109604, 0.412904, -0.904156,
		0.544148, -0.786146, -0.293049,
		-0.831800, -0.459875, -0.310845,
		38.747250, 42.307087, 20.252216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439774, 42.278072, 19.793219>,  <39.329510, 42.628998, 20.469809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439774, 42.278072, 19.793219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042225, 42.317192, 19.813847>,  <38.803696, 42.340664, 19.826223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.042225, 42.317192, 19.813847>,  <39.439774, 42.278072, 19.793219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042225, 42.317192, 19.813847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001230, 0.476211, -0.879330,
		-0.110555, -0.873876, -0.473412,
		-0.993869, 0.097797, 0.051572,
		38.744064, 42.346531, 19.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187016, 42.129543, 19.035406>,  <39.439774, 42.278072, 19.793219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187016, 42.129543, 19.035406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896717, 42.316608, 19.237234>,  <38.722538, 42.428848, 19.358330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896717, 42.316608, 19.237234>,  <39.187016, 42.129543, 19.035406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896717, 42.316608, 19.237234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167669, 0.591067, -0.789003,
		-0.667223, -0.657213, -0.350549,
		-0.725741, 0.467665, 0.504568,
		38.678993, 42.456909, 19.388605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634789, 42.150425, 18.563219>,  <39.187016, 42.129543, 19.035406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634789, 42.150425, 18.563219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556541, 42.439865, 18.827986>,  <38.509594, 42.613529, 18.986845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556541, 42.439865, 18.827986>,  <38.634789, 42.150425, 18.563219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556541, 42.439865, 18.827986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121541, 0.651863, -0.748533,
		-0.973120, -0.226873, -0.039566,
		-0.195614, 0.723604, 0.661916,
		38.497856, 42.656948, 19.026560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006580, 42.493958, 18.363375>,  <38.634789, 42.150425, 18.563219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006580, 42.493958, 18.363375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236614, 42.736752, 18.582775>,  <38.374634, 42.882427, 18.714415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236614, 42.736752, 18.582775>,  <38.006580, 42.493958, 18.363375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236614, 42.736752, 18.582775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139319, 0.588002, -0.796771,
		-0.806145, 0.534625, 0.253585,
		0.575083, 0.606984, 0.548499,
		38.409138, 42.918846, 18.747324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324272, 42.138783, 18.184469>,  <38.006580, 42.493958, 18.363375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324272, 42.138783, 18.184469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953205, 42.275013, 18.123213>,  <36.730564, 42.356750, 18.086460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.953205, 42.275013, 18.123213>,  <37.324272, 42.138783, 18.184469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953205, 42.275013, 18.123213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336548, -0.584845, 0.738032,
		0.161790, 0.736184, 0.657159,
		-0.927663, 0.340572, -0.153139,
		36.674908, 42.377186, 18.077271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121075, 42.223873, 18.873285>,  <37.324272, 42.138783, 18.184469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121075, 42.223873, 18.873285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804722, 42.164558, 18.635792>,  <36.614910, 42.128971, 18.493296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804722, 42.164558, 18.635792>,  <37.121075, 42.223873, 18.873285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804722, 42.164558, 18.635792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414337, -0.584251, 0.697836,
		-0.450370, 0.797911, 0.400631,
		-0.790880, -0.148288, -0.593733,
		36.567459, 42.120071, 18.457672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576828, 42.395897, 19.268244>,  <37.121075, 42.223873, 18.873285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576828, 42.395897, 19.268244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451633, 42.152920, 18.976204>,  <36.376518, 42.007133, 18.800980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451633, 42.152920, 18.976204>,  <36.576828, 42.395897, 19.268244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451633, 42.152920, 18.976204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357439, -0.636868, 0.683108,
		-0.879930, 0.474771, -0.017794,
		-0.312987, -0.607447, -0.730101,
		36.357738, 41.970684, 18.757174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912476, 42.157978, 19.441711>,  <36.576828, 42.395897, 19.268244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912476, 42.157978, 19.441711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978962, 41.859356, 19.184021>,  <36.018852, 41.680183, 19.029408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978962, 41.859356, 19.184021>,  <35.912476, 42.157978, 19.441711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978962, 41.859356, 19.184021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377712, -0.651686, 0.657753,
		-0.910883, 0.134004, -0.390302,
		0.166213, -0.746558, -0.644225,
		36.028824, 41.635387, 18.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366814, 41.749947, 19.515450>,  <35.912476, 42.157978, 19.441711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366814, 41.749947, 19.515450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626301, 41.511417, 19.326321>,  <35.781994, 41.368298, 19.212843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626301, 41.511417, 19.326321>,  <35.366814, 41.749947, 19.515450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626301, 41.511417, 19.326321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212018, -0.738310, 0.640270,
		-0.730879, -0.315126, -0.605402,
		0.648740, -0.596317, -0.472804,
		35.820915, 41.332520, 19.184473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040054, 41.093658, 19.488335>,  <35.366814, 41.749947, 19.515450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040054, 41.093658, 19.488335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421410, 40.996674, 19.416481>,  <35.650223, 40.938484, 19.373369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421410, 40.996674, 19.416481>,  <35.040054, 41.093658, 19.488335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421410, 40.996674, 19.416481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081025, -0.779139, 0.621592,
		-0.290670, -0.578063, -0.762466,
		0.953387, -0.242457, -0.179635,
		35.707424, 40.923935, 19.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080990, 40.391968, 19.420958>,  <35.040054, 41.093658, 19.488335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080990, 40.391968, 19.420958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457684, 40.496563, 19.505590>,  <35.683701, 40.559319, 19.556370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457684, 40.496563, 19.505590>,  <35.080990, 40.391968, 19.420958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457684, 40.496563, 19.505590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017420, -0.666085, 0.745672,
		0.335916, -0.698537, -0.631828,
		0.941731, 0.261489, 0.211580,
		35.740204, 40.575008, 19.569065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410824, 39.752869, 19.433416>,  <35.080990, 40.391968, 19.420958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410824, 39.752869, 19.433416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644951, 39.993317, 19.651064>,  <35.785427, 40.137585, 19.781652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644951, 39.993317, 19.651064>,  <35.410824, 39.752869, 19.433416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644951, 39.993317, 19.651064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154209, -0.576300, 0.802557,
		0.796006, -0.553657, -0.244619,
		0.585315, 0.601118, 0.544117,
		35.820545, 40.173653, 19.814299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900135, 39.251923, 19.766911>,  <35.410824, 39.752869, 19.433416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900135, 39.251923, 19.766911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880913, 39.607952, 19.948225>,  <35.869381, 39.821568, 20.057013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880913, 39.607952, 19.948225>,  <35.900135, 39.251923, 19.766911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880913, 39.607952, 19.948225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120838, -0.455657, 0.881916,
		0.991508, -0.012394, 0.129450,
		-0.048055, 0.890069, 0.453285,
		35.866497, 39.874973, 20.084211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429363, 39.190331, 20.226105>,  <35.900135, 39.251923, 19.766911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429363, 39.190331, 20.226105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199535, 39.480263, 20.378153>,  <36.061638, 39.654221, 20.469381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199535, 39.480263, 20.378153>,  <36.429363, 39.190331, 20.226105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199535, 39.480263, 20.378153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192074, -0.332053, 0.923498,
		0.795601, 0.603622, 0.051566,
		-0.574566, 0.724832, 0.380122,
		36.027164, 39.697712, 20.492189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778603, 39.547585, 20.739969>,  <36.429363, 39.190331, 20.226105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778603, 39.547585, 20.739969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386795, 39.583000, 20.812300>,  <36.151711, 39.604252, 20.855698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386795, 39.583000, 20.812300>,  <36.778603, 39.547585, 20.739969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386795, 39.583000, 20.812300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126421, -0.428530, 0.894639,
		0.156704, 0.899179, 0.408560,
		-0.979521, 0.088543, 0.180828,
		36.092937, 39.609562, 20.866549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668850, 39.990356, 21.334648>,  <36.778603, 39.547585, 20.739969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668850, 39.990356, 21.334648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347744, 39.756691, 21.286770>,  <36.155079, 39.616493, 21.258043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347744, 39.756691, 21.286770>,  <36.668850, 39.990356, 21.334648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347744, 39.756691, 21.286770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082587, -0.307718, 0.947887,
		-0.590551, 0.751043, 0.295268,
		-0.802763, -0.584161, -0.119697,
		36.106915, 39.581444, 21.250860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255726, 40.032780, 21.955673>,  <36.668850, 39.990356, 21.334648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255726, 40.032780, 21.955673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117271, 39.685585, 21.813242>,  <36.034199, 39.477268, 21.727783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117271, 39.685585, 21.813242>,  <36.255726, 40.032780, 21.955673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117271, 39.685585, 21.813242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151457, -0.426259, 0.891832,
		-0.925878, 0.254765, 0.279007,
		-0.346137, -0.867985, -0.356078,
		36.013432, 39.425190, 21.706419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045349, 39.659569, 22.590250>,  <36.255726, 40.032780, 21.955673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045349, 39.659569, 22.590250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064110, 39.372807, 22.312014>,  <36.075367, 39.200748, 22.145071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.064110, 39.372807, 22.312014>,  <36.045349, 39.659569, 22.590250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064110, 39.372807, 22.312014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200132, -0.675493, 0.709687,
		-0.978646, -0.172499, 0.111791,
		0.046906, -0.716905, -0.695591,
		36.078182, 39.157734, 22.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590591, 39.045574, 22.798861>,  <36.045349, 39.659569, 22.590250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590591, 39.045574, 22.798861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859303, 38.921463, 22.529804>,  <36.020531, 38.846996, 22.368370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859303, 38.921463, 22.529804>,  <35.590591, 39.045574, 22.798861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859303, 38.921463, 22.529804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299139, -0.717081, 0.629532,
		-0.677666, -0.624118, -0.388903,
		0.671777, -0.310276, -0.672640,
		36.060837, 38.828381, 22.328012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505474, 38.204098, 22.876436>,  <35.590591, 39.045574, 22.798861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505474, 38.204098, 22.876436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846268, 38.319000, 22.701347>,  <36.050743, 38.387943, 22.596294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846268, 38.319000, 22.701347>,  <35.505474, 38.204098, 22.876436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846268, 38.319000, 22.701347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489812, -0.732638, 0.472573,
		-0.184940, -0.617028, -0.764901,
		0.851987, 0.287261, -0.437722,
		36.101864, 38.405178, 22.570030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792767, 37.695496, 22.495426>,  <35.505474, 38.204098, 22.876436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792767, 37.695496, 22.495426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127102, 37.908600, 22.548414>,  <36.327702, 38.036461, 22.580208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127102, 37.908600, 22.548414>,  <35.792767, 37.695496, 22.495426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127102, 37.908600, 22.548414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395207, -0.751415, 0.528382,
		0.381039, -0.389288, -0.838609,
		0.835835, 0.532758, 0.132469,
		36.377853, 38.068428, 22.588156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397022, 37.191082, 22.298695>,  <35.792767, 37.695496, 22.495426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397022, 37.191082, 22.298695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487381, 37.481781, 22.558174>,  <36.541595, 37.656200, 22.713861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.487381, 37.481781, 22.558174>,  <36.397022, 37.191082, 22.298695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487381, 37.481781, 22.558174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272298, -0.686472, 0.674248,
		0.935321, 0.024331, -0.352961,
		0.225893, 0.726749, 0.648697,
		36.555149, 37.699806, 22.752783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933048, 36.919601, 22.648964>,  <36.397022, 37.191082, 22.298695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933048, 36.919601, 22.648964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809147, 37.213364, 22.890528>,  <36.734806, 37.389622, 23.035465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809147, 37.213364, 22.890528>,  <36.933048, 36.919601, 22.648964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809147, 37.213364, 22.890528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101718, -0.605906, 0.789007,
		0.945360, 0.305826, 0.112979,
		-0.309754, 0.734404, 0.603907,
		36.716221, 37.433685, 23.071699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432251, 36.913952, 23.155182>,  <36.933048, 36.919601, 22.648964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432251, 36.913952, 23.155182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.136181, 37.122971, 23.324457>,  <36.958538, 37.248383, 23.426022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.136181, 37.122971, 23.324457>,  <37.432251, 36.913952, 23.155182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136181, 37.122971, 23.324457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155333, -0.479453, 0.863711,
		0.654230, 0.705030, 0.273708,
		-0.740172, 0.522550, 0.423187,
		36.914131, 37.279736, 23.451414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646137, 37.163967, 23.885576>,  <37.432251, 36.913952, 23.155182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646137, 37.163967, 23.885576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246235, 37.171368, 23.890522>,  <37.006294, 37.175808, 23.893490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246235, 37.171368, 23.890522>,  <37.646137, 37.163967, 23.885576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246235, 37.171368, 23.890522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002929, -0.441365, 0.897323,
		0.022058, 0.897137, 0.441201,
		-0.999753, 0.018501, 0.012364,
		36.946308, 37.176918, 23.894232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.934673, 38.175228, 29.356468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612537, 38.052166, 29.153778>,  <38.419254, 37.978329, 29.032164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612537, 38.052166, 29.153778>,  <38.934673, 38.175228, 29.356468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612537, 38.052166, 29.153778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431560, -0.281768, 0.856950,
		-0.406423, 0.908821, 0.094149,
		-0.805343, -0.307653, -0.506728,
		38.370934, 37.959869, 29.001760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363750, 38.545677, 29.637646>,  <38.934673, 38.175228, 29.356468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363750, 38.545677, 29.637646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241833, 38.209408, 29.458595>,  <38.168682, 38.007645, 29.351166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.241833, 38.209408, 29.458595>,  <38.363750, 38.545677, 29.637646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241833, 38.209408, 29.458595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527430, -0.242353, 0.814299,
		-0.793042, 0.484286, -0.369528,
		-0.304797, -0.840673, -0.447624,
		38.150394, 37.957207, 29.324308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731926, 38.500069, 29.876379>,  <38.363750, 38.545677, 29.637646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731926, 38.500069, 29.876379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.789547, 38.127586, 29.742447>,  <37.824120, 37.904099, 29.662086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.789547, 38.127586, 29.742447>,  <37.731926, 38.500069, 29.876379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789547, 38.127586, 29.742447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341277, -0.364352, 0.866474,
		-0.928859, -0.010549, -0.370284,
		0.144054, -0.931201, -0.334832,
		37.832764, 37.848225, 29.641996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194798, 38.108818, 30.090397>,  <37.731926, 38.500069, 29.876379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194798, 38.108818, 30.090397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465725, 37.828426, 30.001078>,  <37.628281, 37.660191, 29.947487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465725, 37.828426, 30.001078>,  <37.194798, 38.108818, 30.090397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465725, 37.828426, 30.001078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293990, -0.536133, 0.791284,
		-0.674392, -0.470307, -0.569216,
		0.677322, -0.700979, -0.223299,
		37.668922, 37.618134, 29.934088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845856, 37.494843, 30.217916>,  <37.194798, 38.108818, 30.090397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845856, 37.494843, 30.217916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234390, 37.404976, 30.186838>,  <37.467510, 37.351055, 30.168192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234390, 37.404976, 30.186838>,  <36.845856, 37.494843, 30.217916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234390, 37.404976, 30.186838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151185, -0.836039, 0.527429,
		-0.183452, -0.500563, -0.846039,
		0.971333, -0.224667, -0.077696,
		37.525791, 37.337574, 30.163530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851711, 36.855202, 30.341087>,  <36.845856, 37.494843, 30.217916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851711, 36.855202, 30.341087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243134, 36.909935, 30.402676>,  <37.477985, 36.942776, 30.439629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243134, 36.909935, 30.402676>,  <36.851711, 36.855202, 30.341087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243134, 36.909935, 30.402676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008401, -0.773383, 0.633883,
		0.205813, -0.618996, -0.757948,
		0.978556, 0.136829, 0.153972,
		37.536701, 36.950985, 30.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189922, 36.174023, 30.386320>,  <36.851711, 36.855202, 30.341087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189922, 36.174023, 30.386320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441620, 36.420597, 30.575661>,  <37.592640, 36.568542, 30.689266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.441620, 36.420597, 30.575661>,  <37.189922, 36.174023, 30.386320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441620, 36.420597, 30.575661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147134, -0.692510, 0.706244,
		0.763153, -0.374754, -0.526457,
		0.629245, 0.616432, 0.473352,
		37.630394, 36.605526, 30.717667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538506, 35.698071, 30.838499>,  <37.189922, 36.174023, 30.386320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538506, 35.698071, 30.838499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640549, 36.052902, 30.992386>,  <37.701775, 36.265800, 31.084719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.640549, 36.052902, 30.992386>,  <37.538506, 35.698071, 30.838499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640549, 36.052902, 30.992386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099019, -0.419760, 0.902217,
		0.961828, -0.192071, -0.194923,
		0.255111, 0.887079, 0.384719,
		37.717083, 36.319027, 31.107801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086159, 35.511364, 31.287399>,  <37.538506, 35.698071, 30.838499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086159, 35.511364, 31.287399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898277, 35.847313, 31.396208>,  <37.785549, 36.048882, 31.461493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.898277, 35.847313, 31.396208>,  <38.086159, 35.511364, 31.287399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898277, 35.847313, 31.396208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124562, -0.368094, 0.921407,
		0.873991, 0.398907, 0.277511,
		-0.469706, 0.839869, 0.272023,
		37.757366, 36.099274, 31.477814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360760, 35.577496, 31.955465>,  <38.086159, 35.511364, 31.287399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360760, 35.577496, 31.955465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044918, 35.821556, 31.929441>,  <37.855412, 35.967991, 31.913828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044918, 35.821556, 31.929441>,  <38.360760, 35.577496, 31.955465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044918, 35.821556, 31.929441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215183, -0.176051, 0.960574,
		0.574643, 0.772476, 0.270306,
		-0.789608, 0.610153, -0.065058,
		37.808037, 36.004601, 31.909924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364704, 35.901058, 32.590622>,  <38.360760, 35.577496, 31.955465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364704, 35.901058, 32.590622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993938, 35.905731, 32.440586>,  <37.771481, 35.908535, 32.350563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993938, 35.905731, 32.440586>,  <38.364704, 35.901058, 32.590622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993938, 35.905731, 32.440586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366462, -0.243479, 0.898011,
		-0.080835, 0.969836, 0.229966,
		-0.926915, 0.011683, -0.375089,
		37.715862, 35.909237, 32.328060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013821, 36.265064, 33.090916>,  <38.364704, 35.901058, 32.590622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013821, 36.265064, 33.090916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704319, 36.092087, 32.905750>,  <37.518616, 35.988300, 32.794651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704319, 36.092087, 32.905750>,  <38.013821, 36.265064, 33.090916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704319, 36.092087, 32.905750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372103, -0.281134, 0.884592,
		-0.512680, 0.856711, 0.056615,
		-0.773756, -0.432446, -0.462917,
		37.472191, 35.962353, 32.766876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646152, 36.641403, 33.532928>,  <38.013821, 36.265064, 33.090916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646152, 36.641403, 33.532928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491379, 36.779671, 33.190983>,  <37.398514, 36.862633, 32.985817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491379, 36.779671, 33.190983>,  <37.646152, 36.641403, 33.532928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491379, 36.779671, 33.190983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014032, 0.929177, 0.369370,
		0.922000, 0.130926, -0.364382,
		-0.386936, 0.345672, -0.854864,
		37.375298, 36.883373, 32.934525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877083, 37.229202, 33.602539>,  <37.646152, 36.641403, 33.532928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877083, 37.229202, 33.602539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601368, 37.268246, 33.315384>,  <37.435940, 37.291672, 33.143093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601368, 37.268246, 33.315384>,  <37.877083, 37.229202, 33.602539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601368, 37.268246, 33.315384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164919, 0.943729, 0.286667,
		0.705470, 0.315988, -0.634400,
		-0.689285, 0.097610, -0.717885,
		37.394581, 37.297527, 33.100018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352013, 37.803425, 33.535179>,  <37.877083, 37.229202, 33.602539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352013, 37.803425, 33.535179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616520, 38.019787, 33.743080>,  <38.775227, 38.149605, 33.867821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616520, 38.019787, 33.743080>,  <38.352013, 37.803425, 33.535179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616520, 38.019787, 33.743080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051255, 0.723827, -0.688075,
		-0.748392, 0.428365, 0.506371,
		0.661273, 0.540905, 0.519751,
		38.814903, 38.182056, 33.899006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986599, 38.423859, 33.520607>,  <38.352013, 37.803425, 33.535179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986599, 38.423859, 33.520607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369282, 38.486645, 33.618649>,  <38.598892, 38.524315, 33.677471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.369282, 38.486645, 33.618649>,  <37.986599, 38.423859, 33.520607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369282, 38.486645, 33.618649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063035, 0.710387, -0.700983,
		-0.284145, 0.686085, 0.669738,
		0.956707, 0.156964, 0.245100,
		38.656296, 38.533733, 33.692177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978714, 39.037857, 33.752350>,  <37.986599, 38.423859, 33.520607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978714, 39.037857, 33.752350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 38.977139, 33.598316>,  <38.561314, 38.940708, 33.505898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.342838, 38.977139, 33.598316>,  <37.978714, 39.037857, 33.752350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342838, 38.977139, 33.598316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112365, 0.804768, -0.582857,
		0.398376, 0.573852, 0.715535,
		0.910314, -0.151795, -0.385081,
		38.615932, 38.931599, 33.482792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262608, 39.761757, 33.679497>,  <37.978714, 39.037857, 33.752350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262608, 39.761757, 33.679497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499207, 39.520626, 33.465309>,  <38.641167, 39.375946, 33.336796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.499207, 39.520626, 33.465309>,  <38.262608, 39.761757, 33.679497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499207, 39.520626, 33.465309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134425, 0.728535, -0.671689,
		0.795023, 0.325321, 0.511962,
		0.591497, -0.602829, -0.535471,
		38.676655, 39.339779, 33.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800625, 40.152431, 33.507183>,  <38.262608, 39.761757, 33.679497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800625, 40.152431, 33.507183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828888, 39.848122, 33.249119>,  <38.845844, 39.665535, 33.094280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.828888, 39.848122, 33.249119>,  <38.800625, 40.152431, 33.507183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828888, 39.848122, 33.249119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034847, 0.644501, -0.763809,
		0.996892, 0.076449, 0.019027,
		0.070656, -0.760772, -0.645162,
		38.850086, 39.619888, 33.055569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349102, 40.130585, 33.154510>,  <38.800625, 40.152431, 33.507183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349102, 40.130585, 33.154510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136169, 39.903183, 32.903618>,  <39.008408, 39.766743, 32.753082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.136169, 39.903183, 32.903618>,  <39.349102, 40.130585, 33.154510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136169, 39.903183, 32.903618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191609, 0.640792, -0.743419,
		0.824564, -0.515931, -0.232185,
		-0.532335, -0.568508, -0.627230,
		38.976467, 39.732632, 32.715450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758198, 40.173660, 32.496098>,  <39.349102, 40.130585, 33.154510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758198, 40.173660, 32.496098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387043, 40.056118, 32.404301>,  <39.164349, 39.985592, 32.349224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387043, 40.056118, 32.404301>,  <39.758198, 40.173660, 32.496098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387043, 40.056118, 32.404301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036939, 0.540026, -0.840837,
		0.371019, -0.788682, -0.490230,
		-0.927890, -0.293858, -0.229493,
		39.108677, 39.967960, 32.335453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773808, 40.318584, 31.827953>,  <39.758198, 40.173660, 32.496098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773808, 40.318584, 31.827953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383484, 40.236130, 31.857086>,  <39.149288, 40.186657, 31.874567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383484, 40.236130, 31.857086>,  <39.773808, 40.318584, 31.827953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383484, 40.236130, 31.857086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169710, 0.504199, -0.846748,
		0.137821, -0.838625, -0.526985,
		-0.975809, -0.206134, 0.072833,
		39.090740, 40.174290, 31.878937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471306, 40.049793, 31.138004>,  <39.773808, 40.318584, 31.827953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471306, 40.049793, 31.138004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167469, 40.204727, 31.347000>,  <38.985168, 40.297688, 31.472399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167469, 40.204727, 31.347000>,  <39.471306, 40.049793, 31.138004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167469, 40.204727, 31.347000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251733, 0.565644, -0.785288,
		-0.599714, -0.728024, -0.332152,
		-0.759588, 0.387335, 0.522492,
		38.939594, 40.320927, 31.503748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860798, 39.936443, 30.740324>,  <39.471306, 40.049793, 31.138004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860798, 39.936443, 30.740324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766357, 40.246811, 30.974318>,  <38.709694, 40.433033, 31.114714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766357, 40.246811, 30.974318>,  <38.860798, 39.936443, 30.740324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766357, 40.246811, 30.974318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446755, 0.447931, -0.774447,
		-0.862940, -0.444192, 0.240888,
		-0.236102, 0.775920, 0.584982,
		38.695526, 40.479588, 31.149813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186176, 40.002087, 30.684074>,  <38.860798, 39.936443, 30.740324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186176, 40.002087, 30.684074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281353, 40.363506, 30.826611>,  <38.338459, 40.580360, 30.912132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.281353, 40.363506, 30.826611>,  <38.186176, 40.002087, 30.684074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281353, 40.363506, 30.826611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371353, 0.423634, -0.826215,
		-0.897486, 0.064260, 0.436336,
		0.237940, 0.903551, 0.356342,
		38.352734, 40.634571, 30.933514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616196, 40.417877, 30.519016>,  <38.186176, 40.002087, 30.684074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616196, 40.417877, 30.519016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925694, 40.662262, 30.586010>,  <38.111393, 40.808891, 30.626205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.925694, 40.662262, 30.586010>,  <37.616196, 40.417877, 30.519016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925694, 40.662262, 30.586010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204256, 0.490857, -0.846959,
		-0.599666, 0.621120, 0.504589,
		0.773744, 0.610958, 0.167483,
		38.157818, 40.845551, 30.636255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355534, 41.071095, 30.348799>,  <37.616196, 40.417877, 30.519016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355534, 41.071095, 30.348799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755371, 41.082378, 30.350718>,  <37.995274, 41.089149, 30.351870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755371, 41.082378, 30.350718>,  <37.355534, 41.071095, 30.348799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755371, 41.082378, 30.350718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011605, 0.552808, -0.833228,
		-0.026161, 0.832831, 0.552909,
		0.999590, 0.028214, 0.004797,
		38.055248, 41.090843, 30.352156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671021, 41.806679, 30.218290>,  <37.355534, 41.071095, 30.348799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671021, 41.806679, 30.218290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964806, 41.560909, 30.103022>,  <38.141079, 41.413448, 30.033861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.964806, 41.560909, 30.103022>,  <37.671021, 41.806679, 30.218290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964806, 41.560909, 30.103022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031082, 0.393726, -0.918702,
		0.677934, 0.683712, 0.270081,
		0.734466, -0.614424, -0.288171,
		38.185146, 41.376583, 30.016571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486370, 42.557819, 30.272470>,  <37.671021, 41.806679, 30.218290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486370, 42.557819, 30.272470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.086582, 42.546440, 30.266237>,  <36.846710, 42.539612, 30.262497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.086582, 42.546440, 30.266237>,  <37.486370, 42.557819, 30.272470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086582, 42.546440, 30.266237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003563, -0.381292, 0.924448,
		-0.032236, 0.924017, 0.380990,
		-0.999474, -0.028443, -0.015584,
		36.786739, 42.537907, 30.261562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310898, 42.656822, 30.998800>,  <37.486370, 42.557819, 30.272470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310898, 42.656822, 30.998800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969154, 42.530140, 30.833990>,  <36.764107, 42.454132, 30.735104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.969154, 42.530140, 30.833990>,  <37.310898, 42.656822, 30.998800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969154, 42.530140, 30.833990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308886, -0.328122, 0.892707,
		-0.417921, 0.889962, 0.182508,
		-0.854360, -0.316707, -0.412026,
		36.712845, 42.435127, 30.710382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694874, 42.702503, 31.480839>,  <37.310898, 42.656822, 30.998800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694874, 42.702503, 31.480839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566799, 42.405132, 31.245962>,  <36.489956, 42.226711, 31.105036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566799, 42.405132, 31.245962>,  <36.694874, 42.702503, 31.480839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566799, 42.405132, 31.245962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574329, -0.340605, 0.744403,
		-0.753410, 0.575590, -0.317915,
		-0.320187, -0.743428, -0.587193,
		36.470741, 42.182102, 31.069805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008564, 42.604355, 31.618792>,  <36.694874, 42.702503, 31.480839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008564, 42.604355, 31.618792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147163, 42.256554, 31.477991>,  <36.230324, 42.047874, 31.393511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.147163, 42.256554, 31.477991>,  <36.008564, 42.604355, 31.618792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147163, 42.256554, 31.477991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566193, -0.493042, 0.660556,
		-0.747906, -0.029581, -0.663145,
		0.346498, -0.869502, -0.352000,
		36.251114, 41.995705, 31.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524208, 42.147728, 31.880861>,  <36.008564, 42.604355, 31.618792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524208, 42.147728, 31.880861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808895, 41.886261, 31.777964>,  <35.979710, 41.729382, 31.716225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808895, 41.886261, 31.777964>,  <35.524208, 42.147728, 31.880861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808895, 41.886261, 31.777964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328378, -0.633323, 0.700764,
		-0.620975, -0.414284, -0.665402,
		0.711729, -0.653660, -0.257236,
		36.022411, 41.690163, 31.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081825, 41.516315, 31.775928>,  <35.524208, 42.147728, 31.880861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081825, 41.516315, 31.775928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464905, 41.418365, 31.836395>,  <35.694752, 41.359596, 31.872675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464905, 41.418365, 31.836395>,  <35.081825, 41.516315, 31.775928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464905, 41.418365, 31.836395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287727, -0.805311, 0.518350,
		-0.005192, -0.539918, -0.841701,
		0.957698, -0.244872, 0.151168,
		35.752213, 41.344902, 31.881746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277145, 40.825649, 31.474613>,  <35.081825, 41.516315, 31.775928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277145, 40.825649, 31.474613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527424, 40.905590, 31.776226>,  <35.677589, 40.953556, 31.957195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527424, 40.905590, 31.776226>,  <35.277145, 40.825649, 31.474613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527424, 40.905590, 31.776226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318926, -0.816608, 0.481079,
		0.711895, -0.541489, -0.447208,
		0.625693, 0.199851, 0.754035,
		35.715130, 40.965546, 32.002438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384758, 40.121349, 31.731802>,  <35.277145, 40.825649, 31.474613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384758, 40.121349, 31.731802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587299, 40.343658, 31.995537>,  <35.708824, 40.477043, 32.153778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.587299, 40.343658, 31.995537>,  <35.384758, 40.121349, 31.731802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587299, 40.343658, 31.995537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154978, -0.693499, 0.703591,
		0.848288, -0.458445, -0.265019,
		0.506349, 0.555776, 0.659336,
		35.739204, 40.510391, 32.193336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015930, 39.740921, 31.957827>,  <35.384758, 40.121349, 31.731802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015930, 39.740921, 31.957827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909782, 40.011032, 32.233093>,  <35.846092, 40.173100, 32.398254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.909782, 40.011032, 32.233093>,  <36.015930, 39.740921, 31.957827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909782, 40.011032, 32.233093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000658, -0.713884, 0.700264,
		0.964146, 0.185378, 0.189890,
		-0.265373, 0.675281, 0.688166,
		35.830170, 40.213615, 32.439545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508438, 39.725689, 32.465061>,  <36.015930, 39.740921, 31.957827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508438, 39.725689, 32.465061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.171673, 39.859768, 32.634209>,  <35.969612, 39.940216, 32.735699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.171673, 39.859768, 32.634209>,  <36.508438, 39.725689, 32.465061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171673, 39.859768, 32.634209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019680, -0.802217, 0.596709,
		0.539251, 0.494056, 0.681995,
		-0.841915, 0.335197, 0.422873,
		35.919098, 39.960327, 32.761070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640034, 39.607445, 33.121555>,  <36.508438, 39.725689, 32.465061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640034, 39.607445, 33.121555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243858, 39.628368, 33.070484>,  <36.006153, 39.640923, 33.039841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.243858, 39.628368, 33.070484>,  <36.640034, 39.607445, 33.121555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243858, 39.628368, 33.070484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114312, -0.829274, 0.547027,
		-0.077265, 0.556390, 0.827321,
		-0.990436, 0.052306, -0.127676,
		35.946728, 39.644062, 33.032181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367245, 39.496964, 33.796047>,  <36.640034, 39.607445, 33.121555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367245, 39.496964, 33.796047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059433, 39.411140, 33.555450>,  <35.874744, 39.359646, 33.411095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059433, 39.411140, 33.555450>,  <36.367245, 39.496964, 33.796047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059433, 39.411140, 33.555450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109100, -0.883855, 0.454861,
		-0.629223, 0.415651, 0.656744,
		-0.769529, -0.214558, -0.601489,
		35.828575, 39.346771, 33.375004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.942257, 45.152069, 27.566900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647846, 44.932877, 27.407917>,  <36.471199, 44.801361, 27.312527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647846, 44.932877, 27.407917>,  <36.942257, 45.152069, 27.566900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647846, 44.932877, 27.407917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187319, -0.399336, 0.897464,
		-0.650516, 0.735012, 0.191275,
		-0.736030, -0.547986, -0.397457,
		36.427036, 44.768482, 27.288679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400639, 45.131226, 28.066616>,  <36.942257, 45.152069, 27.566900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400639, 45.131226, 28.066616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350384, 44.799877, 27.848249>,  <36.320232, 44.601070, 27.717230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350384, 44.799877, 27.848249>,  <36.400639, 45.131226, 28.066616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350384, 44.799877, 27.848249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066636, -0.541986, 0.837741,
		-0.989836, 0.141629, 0.012895,
		-0.125637, -0.828367, -0.545915,
		36.312695, 44.551369, 27.684475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983376, 44.757549, 28.516937>,  <36.400639, 45.131226, 28.066616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983376, 44.757549, 28.516937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128277, 44.497185, 28.250076>,  <36.215218, 44.340965, 28.089960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128277, 44.497185, 28.250076>,  <35.983376, 44.757549, 28.516937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128277, 44.497185, 28.250076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024907, -0.722270, 0.691163,
		-0.931748, -0.233757, -0.277854,
		0.362250, -0.650910, -0.667151,
		36.236954, 44.301910, 28.049931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518692, 44.229179, 28.592539>,  <35.983376, 44.757549, 28.516937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518692, 44.229179, 28.592539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848640, 44.086922, 28.416761>,  <36.046608, 44.001568, 28.311295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848640, 44.086922, 28.416761>,  <35.518692, 44.229179, 28.592539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848640, 44.086922, 28.416761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062056, -0.829591, 0.554912,
		-0.561910, -0.430458, -0.706373,
		0.824867, -0.355645, -0.439443,
		36.096100, 43.980228, 28.284929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400974, 43.510834, 28.554138>,  <35.518692, 44.229179, 28.592539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400974, 43.510834, 28.554138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797844, 43.548161, 28.520945>,  <36.035965, 43.570557, 28.501028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797844, 43.548161, 28.520945>,  <35.400974, 43.510834, 28.554138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797844, 43.548161, 28.520945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123743, -0.645233, 0.753898,
		0.016807, -0.758266, -0.651729,
		0.992172, 0.093317, -0.082986,
		36.095497, 43.576157, 28.496048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786091, 42.845455, 28.441399>,  <35.400974, 43.510834, 28.554138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786091, 42.845455, 28.441399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050495, 43.076225, 28.633324>,  <36.209137, 43.214687, 28.748478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050495, 43.076225, 28.633324>,  <35.786091, 42.845455, 28.441399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050495, 43.076225, 28.633324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224529, -0.762201, 0.607154,
		0.715997, -0.293604, -0.633360,
		0.661011, 0.576928, 0.479811,
		36.248798, 43.249302, 28.777267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346874, 42.409874, 28.603132>,  <35.786091, 42.845455, 28.441399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346874, 42.409874, 28.603132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398312, 42.717091, 28.854073>,  <36.429176, 42.901421, 29.004637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398312, 42.717091, 28.854073>,  <36.346874, 42.409874, 28.603132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398312, 42.717091, 28.854073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321141, -0.630769, 0.706399,
		0.938260, 0.110628, -0.327766,
		0.128597, 0.768045, 0.627352,
		36.436890, 42.947502, 29.042278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889191, 42.236256, 28.954769>,  <36.346874, 42.409874, 28.603132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889191, 42.236256, 28.954769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781116, 42.532459, 29.200909>,  <36.716274, 42.710182, 29.348593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781116, 42.532459, 29.200909>,  <36.889191, 42.236256, 28.954769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781116, 42.532459, 29.200909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204282, -0.580477, 0.788236,
		0.940888, 0.338672, 0.005563,
		-0.270183, 0.740505, 0.615348,
		36.700062, 42.754612, 29.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386482, 42.273270, 29.607735>,  <36.889191, 42.236256, 28.954769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386482, 42.273270, 29.607735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051701, 42.470715, 29.702267>,  <36.850830, 42.589180, 29.758986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051701, 42.470715, 29.702267>,  <37.386482, 42.273270, 29.607735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051701, 42.470715, 29.702267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006506, -0.440775, 0.897594,
		0.547232, 0.749709, 0.372121,
		-0.836956, 0.493613, 0.236329,
		36.800613, 42.618797, 29.773165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122925, 42.328625, 29.847260>,  <37.386482, 42.273270, 29.607735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122925, 42.328625, 29.847260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255081, 41.963112, 29.752737>,  <38.334373, 41.743805, 29.696024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255081, 41.963112, 29.752737>,  <38.122925, 42.328625, 29.847260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255081, 41.963112, 29.752737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121734, 0.289527, -0.949397,
		0.935962, 0.284902, 0.206894,
		0.330386, -0.913786, -0.236304,
		38.354198, 41.688976, 29.681847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706501, 42.515423, 29.503649>,  <38.122925, 42.328625, 29.847260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706501, 42.515423, 29.503649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635021, 42.135506, 29.400915>,  <38.592133, 41.907555, 29.339275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635021, 42.135506, 29.400915>,  <38.706501, 42.515423, 29.503649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635021, 42.135506, 29.400915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095760, 0.243006, -0.965287,
		0.979233, -0.197086, 0.047529,
		-0.178695, -0.949792, -0.256832,
		38.581413, 41.850567, 29.323866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990105, 42.500607, 28.823496>,  <38.706501, 42.515423, 29.503649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990105, 42.500607, 28.823496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777813, 42.161831, 28.810738>,  <38.650436, 41.958565, 28.803083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777813, 42.161831, 28.810738>,  <38.990105, 42.500607, 28.823496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777813, 42.161831, 28.810738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133247, -0.046215, -0.990005,
		0.837002, -0.529674, 0.137380,
		-0.530729, -0.846941, -0.031896,
		38.618595, 41.907749, 28.801168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418900, 41.933655, 28.481028>,  <38.990105, 42.500607, 28.823496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418900, 41.933655, 28.481028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026638, 41.856819, 28.465988>,  <38.791279, 41.810719, 28.456964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026638, 41.856819, 28.465988>,  <39.418900, 41.933655, 28.481028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026638, 41.856819, 28.465988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017412, 0.105720, -0.994244,
		0.194958, -0.975667, -0.100331,
		-0.980657, -0.192088, -0.037599,
		38.732441, 41.799194, 28.454708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288017, 41.338791, 28.018801>,  <39.418900, 41.933655, 28.481028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288017, 41.338791, 28.018801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951893, 41.555294, 28.006712>,  <38.750217, 41.685196, 27.999458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951893, 41.555294, 28.006712>,  <39.288017, 41.338791, 28.018801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951893, 41.555294, 28.006712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044943, 0.014004, -0.998891,
		-0.540235, -0.840740, -0.036093,
		-0.840313, 0.541258, -0.030220,
		38.699799, 41.717670, 27.997646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062290, 41.232578, 27.363525>,  <39.288017, 41.338791, 28.018801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062290, 41.232578, 27.363525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791668, 41.503983, 27.477995>,  <38.629295, 41.666824, 27.546677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791668, 41.503983, 27.477995>,  <39.062290, 41.232578, 27.363525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791668, 41.503983, 27.477995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194940, 0.209727, -0.958130,
		-0.710117, -0.704018, -0.009624,
		-0.676560, 0.678508, 0.286172,
		38.588699, 41.707535, 27.563847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328888, 41.035240, 27.013573>,  <39.062290, 41.232578, 27.363525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328888, 41.035240, 27.013573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383057, 41.416134, 27.123053>,  <38.415558, 41.644669, 27.188742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383057, 41.416134, 27.123053>,  <38.328888, 41.035240, 27.013573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383057, 41.416134, 27.123053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199885, 0.296823, -0.933778,
		-0.970416, 0.071744, 0.230533,
		0.135420, 0.952234, 0.273701,
		38.423683, 41.701805, 27.205162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829117, 41.506054, 26.708153>,  <38.328888, 41.035240, 27.013573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829117, 41.506054, 26.708153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128605, 41.762100, 26.777061>,  <38.308296, 41.915726, 26.818407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128605, 41.762100, 26.777061>,  <37.829117, 41.506054, 26.708153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128605, 41.762100, 26.777061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131426, 0.398062, -0.907895,
		-0.649728, 0.657118, 0.382164,
		0.748719, 0.640111, 0.172270,
		38.353222, 41.954132, 26.828743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787285, 41.966507, 26.185675>,  <37.829117, 41.506054, 26.708153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787285, 41.966507, 26.185675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152485, 42.064415, 26.316225>,  <38.371605, 42.123161, 26.394556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152485, 42.064415, 26.316225>,  <37.787285, 41.966507, 26.185675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152485, 42.064415, 26.316225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181027, 0.473869, -0.861787,
		-0.365603, 0.845892, 0.388331,
		0.912997, 0.244774, 0.326377,
		38.426384, 42.137848, 26.414139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897285, 42.753918, 26.020182>,  <37.787285, 41.966507, 26.185675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897285, 42.753918, 26.020182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260757, 42.600639, 26.086466>,  <38.478840, 42.508671, 26.126236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260757, 42.600639, 26.086466>,  <37.897285, 42.753918, 26.020182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260757, 42.600639, 26.086466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362842, 0.528529, -0.767466,
		0.206510, 0.757507, 0.619304,
		0.908680, -0.383198, 0.165709,
		38.533363, 42.485680, 26.136179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359764, 43.335083, 25.945074>,  <37.897285, 42.753918, 26.020182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359764, 43.335083, 25.945074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606503, 43.022949, 25.903944>,  <38.754547, 42.835667, 25.879267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606503, 43.022949, 25.903944>,  <38.359764, 43.335083, 25.945074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606503, 43.022949, 25.903944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423965, 0.439487, -0.791900,
		0.663140, 0.444886, 0.601932,
		0.616846, -0.780338, -0.102825,
		38.791557, 42.788849, 25.873096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911949, 43.653526, 25.790838>,  <38.359764, 43.335083, 25.945074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911949, 43.653526, 25.790838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990829, 43.272484, 25.698183>,  <39.038158, 43.043858, 25.642590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990829, 43.272484, 25.698183>,  <38.911949, 43.653526, 25.790838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990829, 43.272484, 25.698183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407119, 0.294514, -0.864589,
		0.891834, 0.076189, 0.445901,
		0.197197, -0.952605, -0.231640,
		39.049988, 42.986702, 25.628691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524174, 43.709797, 25.428675>,  <38.911949, 43.653526, 25.790838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524174, 43.709797, 25.428675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395554, 43.346199, 25.322592>,  <39.318382, 43.128040, 25.258942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395554, 43.346199, 25.322592>,  <39.524174, 43.709797, 25.428675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395554, 43.346199, 25.322592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320437, 0.159097, -0.933814,
		0.891025, -0.385250, 0.240118,
		-0.321550, -0.908994, -0.265208,
		39.299088, 43.073502, 25.243029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026684, 43.437004, 24.976257>,  <39.524174, 43.709797, 25.428675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026684, 43.437004, 24.976257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671192, 43.276947, 24.886776>,  <39.457897, 43.180912, 24.833086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671192, 43.276947, 24.886776>,  <40.026684, 43.437004, 24.976257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671192, 43.276947, 24.886776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197808, 0.105498, -0.974547,
		0.413554, -0.910362, -0.014609,
		-0.888732, -0.400138, -0.223706,
		39.404572, 43.156906, 24.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.742851, 38.023148, 22.669155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986595, 38.271152, 22.866848>,  <33.132843, 38.419956, 22.985464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986595, 38.271152, 22.866848>,  <32.742851, 38.023148, 22.669155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986595, 38.271152, 22.866848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233023, -0.735837, 0.635802,
		0.757878, -0.272266, -0.592868,
		0.609361, 0.620012, 0.494231,
		33.169403, 38.457157, 23.015118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347897, 37.619904, 22.707737>,  <32.742851, 38.023148, 22.669155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347897, 37.619904, 22.707737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388725, 37.916958, 22.972486>,  <33.413223, 38.095188, 23.131336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388725, 37.916958, 22.972486>,  <33.347897, 37.619904, 22.707737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388725, 37.916958, 22.972486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111984, -0.652541, 0.749433,
		0.988454, -0.150615, 0.016558,
		0.102072, 0.742634, 0.661873,
		33.419346, 38.139748, 23.171049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956833, 37.434170, 23.077454>,  <33.347897, 37.619904, 22.707737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956833, 37.434170, 23.077454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746658, 37.670815, 23.322048>,  <33.620552, 37.812801, 23.468805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746658, 37.670815, 23.322048>,  <33.956833, 37.434170, 23.077454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746658, 37.670815, 23.322048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007219, -0.715565, 0.698509,
		0.850803, 0.371436, 0.371712,
		-0.525435, 0.591610, 0.611486,
		33.589027, 37.848297, 23.505493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245533, 37.380032, 23.781235>,  <33.956833, 37.434170, 23.077454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245533, 37.380032, 23.781235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871357, 37.514328, 23.825483>,  <33.646851, 37.594906, 23.852034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871357, 37.514328, 23.825483>,  <34.245533, 37.380032, 23.781235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871357, 37.514328, 23.825483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120748, -0.597601, 0.792649,
		0.332231, 0.728116, 0.599558,
		-0.935437, 0.335738, 0.110623,
		33.590725, 37.615051, 23.858669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252480, 37.433422, 24.469603>,  <34.245533, 37.380032, 23.781235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252480, 37.433422, 24.469603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.865051, 37.441536, 24.370440>,  <33.632595, 37.446404, 24.310942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.865051, 37.441536, 24.370440>,  <34.252480, 37.433422, 24.469603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865051, 37.441536, 24.370440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230015, -0.452388, 0.861648,
		-0.094668, 0.891590, 0.442837,
		-0.968572, 0.020289, -0.247906,
		33.574478, 37.447624, 24.296068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929729, 37.588638, 25.193922>,  <34.252480, 37.433422, 24.469603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929729, 37.588638, 25.193922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657097, 37.424202, 24.951780>,  <33.493519, 37.325539, 24.806496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657097, 37.424202, 24.951780>,  <33.929729, 37.588638, 25.193922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657097, 37.424202, 24.951780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321030, -0.575420, 0.752217,
		-0.657563, 0.707033, 0.260222,
		-0.681579, -0.411091, -0.605354,
		33.452621, 37.300873, 24.770174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267948, 37.531738, 25.533760>,  <33.929729, 37.588638, 25.193922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267948, 37.531738, 25.533760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237705, 37.254253, 25.247250>,  <33.219559, 37.087765, 25.075342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237705, 37.254253, 25.247250>,  <33.267948, 37.531738, 25.533760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237705, 37.254253, 25.247250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148736, -0.702451, 0.696017,
		-0.985983, 0.159157, -0.050072,
		-0.075603, -0.693708, -0.716277,
		33.215023, 37.046143, 25.032366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785439, 37.124489, 25.702944>,  <33.267948, 37.531738, 25.533760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785439, 37.124489, 25.702944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931862, 36.887436, 25.415949>,  <33.019714, 36.745205, 25.243752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931862, 36.887436, 25.415949>,  <32.785439, 37.124489, 25.702944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931862, 36.887436, 25.415949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134683, -0.796622, 0.589283,
		-0.920796, -0.119076, -0.371424,
		0.366054, -0.592634, -0.717488,
		33.041679, 36.709644, 25.200703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290703, 36.616013, 25.566463>,  <32.785439, 37.124489, 25.702944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290703, 36.616013, 25.566463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652863, 36.468700, 25.481970>,  <32.870159, 36.380314, 25.431274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652863, 36.468700, 25.481970>,  <32.290703, 36.616013, 25.566463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652863, 36.468700, 25.481970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092253, -0.656310, 0.748830,
		-0.414411, -0.658506, -0.628199,
		0.905402, -0.368277, -0.211233,
		32.924484, 36.358219, 25.418600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202675, 35.878479, 25.545462>,  <32.290703, 36.616013, 25.566463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202675, 35.878479, 25.545462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.588486, 35.963947, 25.607462>,  <32.819973, 36.015228, 25.644663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.588486, 35.963947, 25.607462>,  <32.202675, 35.878479, 25.545462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588486, 35.963947, 25.607462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031363, -0.675798, 0.736419,
		0.262098, -0.705438, -0.658530,
		0.964532, 0.213668, 0.155001,
		32.877846, 36.028049, 25.653963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526936, 35.217510, 25.592262>,  <32.202675, 35.878479, 25.545462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526936, 35.217510, 25.592262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.792774, 35.472366, 25.748398>,  <32.952278, 35.625278, 25.842079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.792774, 35.472366, 25.748398>,  <32.526936, 35.217510, 25.592262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792774, 35.472366, 25.748398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164376, -0.634273, 0.755433,
		0.728894, -0.437899, -0.526268,
		0.664601, 0.637136, 0.390338,
		32.992153, 35.663506, 25.865499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964760, 34.767834, 25.977524>,  <32.526936, 35.217510, 25.592262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964760, 34.767834, 25.977524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071060, 35.117378, 26.140366>,  <33.134842, 35.327106, 26.238071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071060, 35.117378, 26.140366>,  <32.964760, 34.767834, 25.977524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071060, 35.117378, 26.140366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081025, -0.441044, 0.893821,
		0.960630, -0.204551, -0.188015,
		0.265755, 0.873864, 0.407106,
		33.150787, 35.379536, 26.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476131, 34.627655, 26.395121>,  <32.964760, 34.767834, 25.977524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476131, 34.627655, 26.395121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.320309, 34.966843, 26.538900>,  <33.226814, 35.170353, 26.625168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.320309, 34.966843, 26.538900>,  <33.476131, 34.627655, 26.395121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320309, 34.966843, 26.538900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092898, -0.352112, 0.931336,
		0.916307, 0.396198, 0.058392,
		-0.389554, 0.847965, 0.359448,
		33.203442, 35.221233, 26.646734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882072, 34.897541, 26.961237>,  <33.476131, 34.627655, 26.395121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882072, 34.897541, 26.961237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543255, 35.095341, 27.039196>,  <33.339962, 35.214020, 27.085972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543255, 35.095341, 27.039196>,  <33.882072, 34.897541, 26.961237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543255, 35.095341, 27.039196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110390, -0.195019, 0.974567,
		0.519930, 0.847018, 0.110602,
		-0.847046, 0.494497, 0.194899,
		33.289143, 35.243690, 27.097666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299103, 35.426819, 27.208960>,  <33.882072, 34.897541, 26.961237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299103, 35.426819, 27.208960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691177, 35.365795, 27.259489>,  <34.926422, 35.329182, 27.289806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691177, 35.365795, 27.259489>,  <34.299103, 35.426819, 27.208960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691177, 35.365795, 27.259489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175530, 0.373574, -0.910841,
		0.091770, 0.914968, 0.392952,
		0.980187, -0.152562, 0.126322,
		34.985233, 35.320026, 27.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678596, 36.075527, 27.034853>,  <34.299103, 35.426819, 27.208960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678596, 36.075527, 27.034853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955841, 35.788288, 27.009773>,  <35.122189, 35.615944, 26.994726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955841, 35.788288, 27.009773>,  <34.678596, 36.075527, 27.034853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955841, 35.788288, 27.009773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254180, 0.324875, -0.910960,
		0.674529, 0.615459, 0.407701,
		0.693111, -0.718099, -0.062700,
		35.163773, 35.572857, 26.990963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445824, 36.378891, 26.975225>,  <34.678596, 36.075527, 27.034853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445824, 36.378891, 26.975225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413700, 36.019787, 26.801981>,  <35.394424, 35.804325, 26.698034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413700, 36.019787, 26.801981>,  <35.445824, 36.378891, 26.975225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413700, 36.019787, 26.801981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435810, 0.359156, -0.825273,
		0.896448, -0.255032, 0.362407,
		-0.080310, -0.897756, -0.433111,
		35.389606, 35.750462, 26.672049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071217, 36.410603, 26.645510>,  <35.445824, 36.378891, 26.975225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071217, 36.410603, 26.645510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873524, 36.106178, 26.477448>,  <35.754910, 35.923523, 26.376610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873524, 36.106178, 26.477448>,  <36.071217, 36.410603, 26.645510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873524, 36.106178, 26.477448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562313, 0.088718, -0.822151,
		0.662981, -0.642588, 0.384106,
		-0.494227, -0.761058, -0.420154,
		35.725254, 35.877861, 26.351400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581440, 36.099438, 26.285652>,  <36.071217, 36.410603, 26.645510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581440, 36.099438, 26.285652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232357, 35.990273, 26.123713>,  <36.022907, 35.924774, 26.026548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232357, 35.990273, 26.123713>,  <36.581440, 36.099438, 26.285652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232357, 35.990273, 26.123713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392682, 0.100424, -0.914175,
		0.290146, -0.956783, 0.019527,
		-0.872706, -0.272913, -0.404849,
		35.970547, 35.908398, 26.002258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810535, 35.673412, 25.654320>,  <36.581440, 36.099438, 26.285652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810535, 35.673412, 25.654320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432266, 35.785095, 25.587687>,  <36.205307, 35.852104, 25.547707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.432266, 35.785095, 25.587687>,  <36.810535, 35.673412, 25.654320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432266, 35.785095, 25.587687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272545, 0.401403, -0.874411,
		-0.177275, -0.872307, -0.455692,
		-0.945671, 0.279208, -0.166584,
		36.148563, 35.868858, 25.537712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680687, 35.414165, 25.075945>,  <36.810535, 35.673412, 25.654320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680687, 35.414165, 25.075945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412312, 35.706402, 25.126667>,  <36.251286, 35.881744, 25.157101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.412312, 35.706402, 25.126667>,  <36.680687, 35.414165, 25.075945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412312, 35.706402, 25.126667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341543, 0.456273, -0.821683,
		-0.658172, -0.507989, -0.555659,
		-0.670938, 0.730590, 0.126806,
		36.211029, 35.925579, 25.164709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477226, 35.601883, 24.413265>,  <36.680687, 35.414165, 25.075945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477226, 35.601883, 24.413265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369835, 35.909653, 24.645098>,  <36.305401, 36.094315, 24.784197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369835, 35.909653, 24.645098>,  <36.477226, 35.601883, 24.413265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369835, 35.909653, 24.645098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097668, 0.620311, -0.778251,
		-0.958321, -0.152338, -0.241689,
		-0.268480, 0.769420, 0.579579,
		36.289291, 36.140480, 24.818972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159489, 35.999744, 23.941746>,  <36.477226, 35.601883, 24.413265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159489, 35.999744, 23.941746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197147, 36.260014, 24.243145>,  <36.219742, 36.416176, 24.423985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197147, 36.260014, 24.243145>,  <36.159489, 35.999744, 23.941746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197147, 36.260014, 24.243145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104988, 0.746151, -0.657447,
		-0.990007, 0.141003, 0.001933,
		0.094145, 0.650674, 0.753499,
		36.225391, 36.455215, 24.469194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750122, 36.612370, 23.700211>,  <36.159489, 35.999744, 23.941746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750122, 36.612370, 23.700211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039715, 36.697742, 23.962599>,  <36.213470, 36.748966, 24.120031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.039715, 36.697742, 23.962599>,  <35.750122, 36.612370, 23.700211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039715, 36.697742, 23.962599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351753, 0.703788, -0.617213,
		-0.593400, 0.677590, 0.434452,
		0.723980, 0.213434, 0.655972,
		36.256908, 36.761772, 24.159389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648327, 37.202286, 23.858210>,  <35.750122, 36.612370, 23.700211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648327, 37.202286, 23.858210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046089, 37.191345, 23.899031>,  <36.284744, 37.184780, 23.923523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046089, 37.191345, 23.899031>,  <35.648327, 37.202286, 23.858210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046089, 37.191345, 23.899031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096526, 0.627928, -0.772263,
		-0.042963, 0.777791, 0.627053,
		0.994403, -0.027349, 0.102055,
		36.344410, 37.183140, 23.929647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854355, 37.880402, 23.840027>,  <35.648327, 37.202286, 23.858210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854355, 37.880402, 23.840027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181934, 37.673225, 23.741180>,  <36.378483, 37.548920, 23.681873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181934, 37.673225, 23.741180>,  <35.854355, 37.880402, 23.840027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181934, 37.673225, 23.741180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160392, 0.620033, -0.768006,
		0.551000, 0.589321, 0.590847,
		0.818946, -0.517939, -0.247116,
		36.427620, 37.517845, 23.667046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504623, 38.393749, 23.876873>,  <35.854355, 37.880402, 23.840027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504623, 38.393749, 23.876873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603363, 38.099937, 23.624041>,  <36.662609, 37.923649, 23.472342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603363, 38.099937, 23.624041>,  <36.504623, 38.393749, 23.876873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603363, 38.099937, 23.624041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149161, 0.673297, -0.724170,
		0.957505, 0.084481, 0.275768,
		0.246852, -0.734530, -0.632083,
		36.677418, 37.879578, 23.434416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136543, 38.573193, 23.531635>,  <36.504623, 38.393749, 23.876873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136543, 38.573193, 23.531635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961479, 38.322468, 23.273779>,  <36.856441, 38.172031, 23.119066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961479, 38.322468, 23.273779>,  <37.136543, 38.573193, 23.531635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961479, 38.322468, 23.273779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008211, 0.714133, -0.699962,
		0.899105, -0.311635, -0.307398,
		-0.437656, -0.626815, -0.644640,
		36.830181, 38.134422, 23.080387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784683, 38.775082, 23.473660>,  <37.136543, 38.573193, 23.531635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784683, 38.775082, 23.473660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056126, 39.064281, 23.525454>,  <38.218990, 39.237801, 23.556530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056126, 39.064281, 23.525454>,  <37.784683, 38.775082, 23.473660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056126, 39.064281, 23.525454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379649, -0.496173, 0.780819,
		0.628780, -0.480709, -0.611191,
		0.678603, 0.723002, 0.129483,
		38.259708, 39.281181, 23.564299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434956, 38.426857, 23.494705>,  <37.784683, 38.775082, 23.473660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434956, 38.426857, 23.494705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478645, 38.781952, 23.673590>,  <38.504860, 38.995007, 23.780920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478645, 38.781952, 23.673590>,  <38.434956, 38.426857, 23.494705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478645, 38.781952, 23.673590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507035, -0.436731, 0.743089,
		0.854977, 0.145588, -0.497815,
		0.109226, 0.887733, 0.447213,
		38.511414, 39.048271, 23.807755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089222, 38.303867, 23.848040>,  <38.434956, 38.426857, 23.494705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089222, 38.303867, 23.848040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913448, 38.632408, 23.993519>,  <38.807983, 38.829533, 24.080807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913448, 38.632408, 23.993519>,  <39.089222, 38.303867, 23.848040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913448, 38.632408, 23.993519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309520, -0.241637, 0.919679,
		0.843264, 0.516711, -0.148042,
		-0.439436, 0.821353, 0.363696,
		38.781616, 38.878815, 24.102627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564823, 38.722378, 24.332596>,  <39.089222, 38.303867, 23.848040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564823, 38.722378, 24.332596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180042, 38.785545, 24.421783>,  <38.949173, 38.823448, 24.475296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180042, 38.785545, 24.421783>,  <39.564823, 38.722378, 24.332596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180042, 38.785545, 24.421783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185988, -0.219341, 0.957757,
		0.200155, 0.962783, 0.181623,
		-0.961949, 0.157921, 0.222968,
		38.891457, 38.832920, 24.488674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674702, 39.122940, 24.861454>,  <39.564823, 38.722378, 24.332596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674702, 39.122940, 24.861454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303596, 38.982384, 24.911692>,  <39.080933, 38.898048, 24.941833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303596, 38.982384, 24.911692>,  <39.674702, 39.122940, 24.861454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303596, 38.982384, 24.911692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203302, -0.193740, 0.959757,
		-0.312916, 0.915964, 0.251184,
		-0.927767, -0.351389, 0.125592,
		39.025265, 38.876968, 24.949369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290176, 39.471588, 25.479832>,  <39.674702, 39.122940, 24.861454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290176, 39.471588, 25.479832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086014, 39.131027, 25.431501>,  <38.963516, 38.926689, 25.402504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.086014, 39.131027, 25.431501>,  <39.290176, 39.471588, 25.479832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086014, 39.131027, 25.431501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029698, -0.157872, 0.987013,
		-0.859419, 0.500192, 0.105864,
		-0.510409, -0.851401, -0.120823,
		38.932892, 38.875607, 25.395254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943409, 39.510616, 25.975975>,  <39.290176, 39.471588, 25.479832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943409, 39.510616, 25.975975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919071, 39.126858, 25.865803>,  <38.904469, 38.896603, 25.799700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919071, 39.126858, 25.865803>,  <38.943409, 39.510616, 25.975975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919071, 39.126858, 25.865803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035845, -0.273665, 0.961157,
		-0.997503, 0.068358, -0.017737,
		-0.060848, -0.959393, -0.275432,
		38.900818, 38.839039, 25.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279976, 39.292419, 26.194321>,  <38.943409, 39.510616, 25.975975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279976, 39.292419, 26.194321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510029, 38.967514, 26.155453>,  <38.648060, 38.772572, 26.132132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510029, 38.967514, 26.155453>,  <38.279976, 39.292419, 26.194321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510029, 38.967514, 26.155453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308928, -0.325639, 0.893601,
		-0.757485, -0.483923, -0.438218,
		0.575135, -0.812267, -0.097169,
		38.682568, 38.723835, 26.126303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821777, 38.718410, 26.349649>,  <38.279976, 39.292419, 26.194321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821777, 38.718410, 26.349649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199276, 38.604984, 26.417677>,  <38.425777, 38.536926, 26.458492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199276, 38.604984, 26.417677>,  <37.821777, 38.718410, 26.349649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199276, 38.604984, 26.417677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264545, -0.338971, 0.902837,
		-0.198366, -0.897045, -0.394920,
		0.943752, -0.283566, 0.170068,
		38.482403, 38.519913, 26.468697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774307, 38.074070, 26.701420>,  <37.821777, 38.718410, 26.349649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774307, 38.074070, 26.701420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136959, 38.223110, 26.780613>,  <38.354549, 38.312534, 26.828129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136959, 38.223110, 26.780613>,  <37.774307, 38.074070, 26.701420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136959, 38.223110, 26.780613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102904, -0.259795, 0.960165,
		0.409192, -0.890885, -0.197196,
		0.906627, 0.372599, 0.197981,
		38.408947, 38.334888, 26.840008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168106, 37.514397, 27.091209>,  <37.774307, 38.074070, 26.701420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168106, 37.514397, 27.091209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343216, 37.862465, 27.181684>,  <38.448280, 38.071304, 27.235970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343216, 37.862465, 27.181684>,  <38.168106, 37.514397, 27.091209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343216, 37.862465, 27.181684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015108, -0.258661, 0.965850,
		0.898959, -0.419405, -0.126381,
		0.437772, 0.870169, 0.226189,
		38.474548, 38.123516, 27.249540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730469, 37.370644, 27.558794>,  <38.168106, 37.514397, 27.091209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730469, 37.370644, 27.558794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628819, 37.753784, 27.612375>,  <38.567829, 37.983669, 27.644524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628819, 37.753784, 27.612375>,  <38.730469, 37.370644, 27.558794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628819, 37.753784, 27.612375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203298, -0.188309, 0.960838,
		0.945563, 0.216944, 0.242583,
		-0.254128, 0.957850, 0.133953,
		38.552582, 38.041138, 27.652561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068523, 37.467194, 28.131975>,  <38.730469, 37.370644, 27.558794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068523, 37.467194, 28.131975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809334, 37.771664, 28.142872>,  <38.653820, 37.954346, 28.149410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809334, 37.771664, 28.142872>,  <39.068523, 37.467194, 28.131975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809334, 37.771664, 28.142872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222627, -0.223480, 0.948944,
		0.728401, 0.608825, 0.314267,
		-0.647973, 0.761176, 0.027242,
		38.614941, 38.000015, 28.151045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201717, 37.895187, 28.753859>,  <39.068523, 37.467194, 28.131975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201717, 37.895187, 28.753859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819916, 37.964695, 28.656927>,  <38.590836, 38.006401, 28.598768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.819916, 37.964695, 28.656927>,  <39.201717, 37.895187, 28.753859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819916, 37.964695, 28.656927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285523, -0.298255, 0.910780,
		0.085990, 0.938536, 0.334301,
		-0.954506, 0.173769, -0.242327,
		38.533566, 38.016827, 28.584229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.151600, 42.945549, 24.257486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752651, 42.960052, 24.282600>,  <39.513283, 42.968754, 24.297668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752651, 42.960052, 24.282600>,  <40.151600, 42.945549, 24.257486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752651, 42.960052, 24.282600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064555, -0.049835, -0.996669,
		-0.032995, -0.998100, 0.052044,
		-0.997369, 0.036245, 0.062788,
		39.453442, 42.970928, 24.301437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907047, 42.532463, 23.681805>,  <40.151600, 42.945549, 24.257486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907047, 42.532463, 23.681805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578205, 42.734276, 23.787325>,  <39.380901, 42.855362, 23.850637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578205, 42.734276, 23.787325>,  <39.907047, 42.532463, 23.681805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578205, 42.734276, 23.787325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010383, 0.476558, -0.879082,
		-0.569241, -0.719959, -0.397019,
		-0.822105, 0.504532, 0.263800,
		39.331573, 42.885635, 23.866465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385429, 42.350224, 23.176771>,  <39.907047, 42.532463, 23.681805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385429, 42.350224, 23.176771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289715, 42.696243, 23.353151>,  <39.232288, 42.903854, 23.458979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289715, 42.696243, 23.353151>,  <39.385429, 42.350224, 23.176771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289715, 42.696243, 23.353151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031049, 0.447093, -0.893948,
		-0.970453, -0.227598, -0.080123,
		-0.239283, 0.865048, 0.440950,
		39.217930, 42.955757, 23.485435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881561, 42.757683, 22.808817>,  <39.385429, 42.350224, 23.176771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881561, 42.757683, 22.808817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007923, 43.061882, 23.035746>,  <39.083740, 43.244400, 23.171902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007923, 43.061882, 23.035746>,  <38.881561, 42.757683, 22.808817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007923, 43.061882, 23.035746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045593, 0.609415, -0.791539,
		-0.947696, 0.224182, 0.227188,
		0.315900, 0.760497, 0.567319,
		39.102692, 43.290031, 23.205942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420979, 43.395405, 22.700148>,  <38.881561, 42.757683, 22.808817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420979, 43.395405, 22.700148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777622, 43.526005, 22.825642>,  <38.991608, 43.604366, 22.900938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.777622, 43.526005, 22.825642>,  <38.420979, 43.395405, 22.700148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777622, 43.526005, 22.825642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067815, 0.588769, -0.805451,
		-0.447697, 0.739424, 0.502811,
		0.891610, 0.326500, 0.313734,
		39.045105, 43.623955, 22.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314949, 44.021381, 22.724751>,  <38.420979, 43.395405, 22.700148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314949, 44.021381, 22.724751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713387, 43.986610, 22.731066>,  <38.952450, 43.965748, 22.734854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.713387, 43.986610, 22.731066>,  <38.314949, 44.021381, 22.724751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713387, 43.986610, 22.731066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051262, 0.423122, -0.904621,
		0.071956, 0.901893, 0.425923,
		0.996090, -0.086927, 0.015787,
		39.012215, 43.960533, 22.735802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555382, 44.661819, 22.487225>,  <38.314949, 44.021381, 22.724751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555382, 44.661819, 22.487225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849037, 44.395489, 22.433983>,  <39.025230, 44.235691, 22.402039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849037, 44.395489, 22.433983>,  <38.555382, 44.661819, 22.487225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849037, 44.395489, 22.433983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075520, 0.274883, -0.958507,
		0.674786, 0.693626, 0.252086,
		0.734140, -0.665824, -0.133105,
		39.069279, 44.195740, 22.394051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866318, 44.967899, 21.969934>,  <38.555382, 44.661819, 22.487225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866318, 44.967899, 21.969934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033337, 44.604778, 21.985701>,  <39.133549, 44.386906, 21.995161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033337, 44.604778, 21.985701>,  <38.866318, 44.967899, 21.969934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033337, 44.604778, 21.985701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237197, 0.067020, -0.969147,
		0.877148, 0.414017, 0.243312,
		0.417551, -0.907798, 0.039417,
		39.158604, 44.332439, 21.997526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505276, 44.995995, 21.665310>,  <38.866318, 44.967899, 21.969934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505276, 44.995995, 21.665310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.418873, 44.606731, 21.633528>,  <39.367031, 44.373173, 21.614458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.418873, 44.606731, 21.633528>,  <39.505276, 44.995995, 21.665310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418873, 44.606731, 21.633528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004693, 0.082408, -0.996588,
		0.976382, -0.214893, -0.022368,
		-0.216003, -0.973155, -0.079453,
		39.354073, 44.314785, 21.609692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031193, 44.687233, 21.296076>,  <39.505276, 44.995995, 21.665310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031193, 44.687233, 21.296076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.695988, 44.471931, 21.260260>,  <39.494865, 44.342751, 21.238770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.695988, 44.471931, 21.260260>,  <40.031193, 44.687233, 21.296076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695988, 44.471931, 21.260260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084024, 0.034846, -0.995854,
		0.539143, -0.842062, 0.016025,
		-0.838012, -0.538254, -0.089540,
		39.444584, 44.310455, 21.233398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143967, 44.298019, 20.613123>,  <40.031193, 44.687233, 21.296076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143967, 44.298019, 20.613123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751579, 44.253841, 20.676998>,  <39.516148, 44.227337, 20.715322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751579, 44.253841, 20.676998>,  <40.143967, 44.298019, 20.613123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751579, 44.253841, 20.676998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152664, -0.069411, -0.985838,
		0.119962, -0.991456, 0.051230,
		-0.980971, -0.110442, 0.159686,
		39.457287, 44.220711, 20.724903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945621, 43.745987, 20.189831>,  <40.143967, 44.298019, 20.613123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945621, 43.745987, 20.189831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611187, 43.947178, 20.277435>,  <39.410526, 44.067894, 20.329998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.611187, 43.947178, 20.277435>,  <39.945621, 43.745987, 20.189831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611187, 43.947178, 20.277435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227128, 0.046027, -0.972777,
		-0.499368, -0.863072, 0.075758,
		-0.836089, 0.502980, 0.219012,
		39.360359, 44.098072, 20.343140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421268, 43.456451, 19.824846>,  <39.945621, 43.745987, 20.189831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421268, 43.456451, 19.824846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306858, 43.832954, 19.896658>,  <39.238213, 44.058857, 19.939745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306858, 43.832954, 19.896658>,  <39.421268, 43.456451, 19.824846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306858, 43.832954, 19.896658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261633, 0.103527, -0.959599,
		-0.921813, -0.321439, 0.216652,
		-0.286023, 0.941254, 0.179531,
		39.221050, 44.115330, 19.950518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886131, 43.813583, 19.501831>,  <39.421268, 43.456451, 19.824846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886131, 43.813583, 19.501831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.686985, 43.535286, 19.294725>,  <38.567497, 43.368309, 19.170462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.686985, 43.535286, 19.294725>,  <38.886131, 43.813583, 19.501831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686985, 43.535286, 19.294725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337103, -0.394821, 0.854680,
		-0.799058, 0.600053, -0.037969,
		-0.497863, -0.695739, -0.517765,
		38.537624, 43.326565, 19.139397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233402, 43.622036, 19.859762>,  <38.886131, 43.813583, 19.501831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233402, 43.622036, 19.859762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338951, 43.323662, 19.615154>,  <38.402279, 43.144638, 19.468390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338951, 43.323662, 19.615154>,  <38.233402, 43.622036, 19.859762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338951, 43.323662, 19.615154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110297, -0.653167, 0.749138,
		-0.958230, -0.130228, -0.254627,
		0.263873, -0.745931, -0.611521,
		38.418114, 43.099884, 19.431698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746899, 43.101898, 20.034840>,  <38.233402, 43.622036, 19.859762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746899, 43.101898, 20.034840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047146, 42.923027, 19.840271>,  <38.227295, 42.815704, 19.723530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047146, 42.923027, 19.840271>,  <37.746899, 43.101898, 20.034840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047146, 42.923027, 19.840271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034172, -0.708922, 0.704459,
		-0.659851, -0.545402, -0.516850,
		0.750619, -0.447176, -0.486420,
		38.272331, 42.788876, 19.694344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529022, 42.468544, 20.105759>,  <37.746899, 43.101898, 20.034840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529022, 42.468544, 20.105759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907230, 42.438461, 19.979059>,  <38.134155, 42.420410, 19.903040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907230, 42.438461, 19.979059>,  <37.529022, 42.468544, 20.105759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907230, 42.438461, 19.979059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124477, -0.815507, 0.565203,
		-0.300819, -0.573840, -0.761719,
		0.945523, -0.075207, -0.316750,
		38.190887, 42.415897, 19.884033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519115, 41.707981, 19.932224>,  <37.529022, 42.468544, 20.105759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519115, 41.707981, 19.932224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879780, 41.867805, 19.998398>,  <38.096176, 41.963699, 20.038101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.879780, 41.867805, 19.998398>,  <37.519115, 41.707981, 19.932224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879780, 41.867805, 19.998398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243556, -0.785293, 0.569206,
		0.357343, -0.472937, -0.805380,
		0.901658, 0.399557, 0.165432,
		38.150276, 41.987671, 20.048027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098553, 41.209465, 19.910555>,  <37.519115, 41.707981, 19.932224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098553, 41.209465, 19.910555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257870, 41.490444, 20.146500>,  <38.353458, 41.659031, 20.288067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257870, 41.490444, 20.146500>,  <38.098553, 41.209465, 19.910555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257870, 41.490444, 20.146500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241564, -0.700694, 0.671323,
		0.884879, -0.124893, -0.448766,
		0.398291, 0.702445, 0.589860,
		38.377357, 41.701180, 20.323458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488613, 40.835476, 20.324913>,  <38.098553, 41.209465, 19.910555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488613, 40.835476, 20.324913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515381, 41.176205, 20.532728>,  <38.531441, 41.380642, 20.657417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515381, 41.176205, 20.532728>,  <38.488613, 40.835476, 20.324913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515381, 41.176205, 20.532728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187361, -0.522173, 0.832004,
		0.980009, 0.041661, -0.194543,
		0.066923, 0.851821, 0.519540,
		38.535458, 41.431751, 20.688591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158817, 40.859688, 20.729864>,  <38.488613, 40.835476, 20.324913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158817, 40.859688, 20.729864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888355, 41.107952, 20.888655>,  <38.726078, 41.256912, 20.983929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888355, 41.107952, 20.888655>,  <39.158817, 40.859688, 20.729864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888355, 41.107952, 20.888655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090842, -0.464471, 0.880917,
		0.731134, 0.631702, 0.257675,
		-0.676159, 0.620660, 0.396976,
		38.685509, 41.294151, 21.007748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421951, 40.915466, 21.486626>,  <39.158817, 40.859688, 20.729864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421951, 40.915466, 21.486626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049816, 41.062149, 21.487125>,  <38.826534, 41.150158, 21.487425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049816, 41.062149, 21.487125>,  <39.421951, 40.915466, 21.486626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049816, 41.062149, 21.487125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140499, -0.359582, 0.922475,
		0.338731, 0.858035, 0.386054,
		-0.930334, 0.366711, 0.001249,
		38.770718, 41.172161, 21.487499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297649, 41.135075, 22.183912>,  <39.421951, 40.915466, 21.486626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297649, 41.135075, 22.183912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934368, 41.082962, 22.024818>,  <38.716400, 41.051693, 21.929361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.934368, 41.082962, 22.024818>,  <39.297649, 41.135075, 22.183912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934368, 41.082962, 22.024818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308573, -0.433584, 0.846633,
		-0.282753, 0.891645, 0.353581,
		-0.908203, -0.130283, -0.397735,
		38.661907, 41.043877, 21.905499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800671, 41.428471, 22.703653>,  <39.297649, 41.135075, 22.183912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800671, 41.428471, 22.703653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615589, 41.181522, 22.449173>,  <38.504539, 41.033352, 22.296484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615589, 41.181522, 22.449173>,  <38.800671, 41.428471, 22.703653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615589, 41.181522, 22.449173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465737, -0.441343, 0.767011,
		-0.754315, 0.651204, -0.083320,
		-0.462708, -0.617373, -0.636201,
		38.476776, 40.996311, 22.258312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135765, 41.277096, 22.949566>,  <38.800671, 41.428471, 22.703653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135765, 41.277096, 22.949566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179176, 40.961090, 22.708204>,  <38.205223, 40.771484, 22.563387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179176, 40.961090, 22.708204>,  <38.135765, 41.277096, 22.949566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179176, 40.961090, 22.708204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260180, -0.608405, 0.749767,
		-0.959441, 0.075621, -0.271577,
		0.108530, -0.790016, -0.603404,
		38.211735, 40.724087, 22.527184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551044, 40.772961, 23.135092>,  <38.135765, 41.277096, 22.949566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551044, 40.772961, 23.135092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818752, 40.543125, 22.946659>,  <37.979378, 40.405224, 22.833599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818752, 40.543125, 22.946659>,  <37.551044, 40.772961, 23.135092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818752, 40.543125, 22.946659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030972, -0.655037, 0.754962,
		-0.742371, -0.490685, -0.456194,
		0.669273, -0.574592, -0.471082,
		38.019535, 40.370747, 22.805334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258160, 40.150589, 23.084053>,  <37.551044, 40.772961, 23.135092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258160, 40.150589, 23.084053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.657059, 40.123070, 23.095121>,  <37.896397, 40.106560, 23.101763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.657059, 40.123070, 23.095121>,  <37.258160, 40.150589, 23.084053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657059, 40.123070, 23.095121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058706, -0.504477, 0.861427,
		-0.045304, -0.860680, -0.507127,
		0.997247, -0.068798, 0.027672,
		37.956234, 40.102428, 23.103422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408176, 39.340183, 23.220806>,  <37.258160, 40.150589, 23.084053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408176, 39.340183, 23.220806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 39.493443, 23.262484>,  <37.995560, 39.585400, 23.287489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 39.493443, 23.262484>,  <37.408176, 39.340183, 23.220806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775291, 39.493443, 23.262484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111089, -0.499704, 0.859043,
		0.381208, -0.776847, -0.501187,
		0.917791, 0.383151, 0.104192,
		38.050629, 39.608387, 23.293741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409019, 38.758919, 22.679720>,  <37.408176, 39.340183, 23.220806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409019, 38.758919, 22.679720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080059, 38.535118, 22.638500>,  <36.882683, 38.400837, 22.613770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080059, 38.535118, 22.638500>,  <37.409019, 38.758919, 22.679720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080059, 38.535118, 22.638500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239706, 0.505045, -0.829139,
		0.515963, -0.657172, -0.549462,
		-0.822389, -0.559514, -0.103056,
		36.833340, 38.367268, 22.607586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263798, 38.694946, 21.983721>,  <37.409019, 38.758919, 22.679720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263798, 38.694946, 21.983721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908401, 38.612041, 22.147493>,  <36.695164, 38.562298, 22.245756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908401, 38.612041, 22.147493>,  <37.263798, 38.694946, 21.983721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908401, 38.612041, 22.147493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457456, 0.329280, -0.826020,
		0.036385, -0.921204, -0.387375,
		-0.888488, -0.207262, 0.409429,
		36.641853, 38.549862, 22.270323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865170, 38.367191, 21.421848>,  <37.263798, 38.694946, 21.983721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865170, 38.367191, 21.421848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615501, 38.516956, 21.696140>,  <36.465702, 38.606815, 21.860716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615501, 38.516956, 21.696140>,  <36.865170, 38.367191, 21.421848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615501, 38.516956, 21.696140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581211, 0.364023, -0.727792,
		-0.522117, -0.852820, -0.009599,
		-0.624169, 0.374413, 0.685731,
		36.428249, 38.629280, 21.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148495, 38.197075, 21.268063>,  <36.865170, 38.367191, 21.421848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148495, 38.197075, 21.268063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096466, 38.498386, 21.525946>,  <36.065250, 38.679173, 21.680676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096466, 38.498386, 21.525946>,  <36.148495, 38.197075, 21.268063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096466, 38.498386, 21.525946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596831, 0.459752, -0.657587,
		-0.791754, -0.470312, 0.389784,
		-0.130067, 0.753283, 0.644707,
		36.057446, 38.724373, 21.719358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377419, 38.458626, 21.228806>,  <36.148495, 38.197075, 21.268063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377419, 38.458626, 21.228806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573982, 38.777031, 21.370163>,  <35.691921, 38.968075, 21.454977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.573982, 38.777031, 21.370163>,  <35.377419, 38.458626, 21.228806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573982, 38.777031, 21.370163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382231, 0.561716, -0.733740,
		-0.782570, 0.225489, 0.580292,
		0.491410, 0.796008, 0.353393,
		35.721405, 39.015835, 21.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927895, 39.006077, 21.030529>,  <35.377419, 38.458626, 21.228806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927895, 39.006077, 21.030529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287773, 39.168995, 21.093344>,  <35.503700, 39.266747, 21.131033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287773, 39.168995, 21.093344>,  <34.927895, 39.006077, 21.030529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287773, 39.168995, 21.093344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170114, 0.658448, -0.733149,
		-0.402007, 0.632897, 0.661689,
		0.899696, 0.407293, 0.157036,
		35.557682, 39.291183, 21.140455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821526, 39.729065, 21.049959>,  <34.927895, 39.006077, 21.030529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821526, 39.729065, 21.049959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212791, 39.680813, 20.982254>,  <35.447552, 39.651859, 20.941631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.212791, 39.680813, 20.982254>,  <34.821526, 39.729065, 21.049959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212791, 39.680813, 20.982254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069870, 0.576117, -0.814375,
		0.195756, 0.808416, 0.555106,
		0.978160, -0.120634, -0.169263,
		35.506241, 39.644623, 20.931475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419556, 40.268517, 21.458706>,  <34.821526, 39.729065, 21.049959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419556, 40.268517, 21.458706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123856, 40.531815, 21.515596>,  <33.946438, 40.689793, 21.549730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123856, 40.531815, 21.515596>,  <34.419556, 40.268517, 21.458706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123856, 40.531815, 21.515596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384137, -0.585630, 0.713776,
		0.553131, 0.473022, 0.685781,
		-0.739246, 0.658246, 0.142225,
		33.902081, 40.729290, 21.558264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399544, 40.328415, 22.156380>,  <34.419556, 40.268517, 21.458706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399544, 40.328415, 22.156380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037880, 40.464897, 22.053558>,  <33.820881, 40.546787, 21.991865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037880, 40.464897, 22.053558>,  <34.399544, 40.328415, 22.156380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037880, 40.464897, 22.053558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427194, -0.722615, 0.543445,
		-0.000325, 0.601173, 0.799119,
		-0.904160, 0.341202, -0.257052,
		33.766632, 40.567257, 21.976442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020550, 40.509541, 22.814701>,  <34.399544, 40.328415, 22.156380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020550, 40.509541, 22.814701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776134, 40.420822, 22.510744>,  <33.629486, 40.367592, 22.328369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776134, 40.420822, 22.510744>,  <34.020550, 40.509541, 22.814701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776134, 40.420822, 22.510744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421656, -0.721233, 0.549572,
		-0.669954, 0.656223, 0.347178,
		-0.611038, -0.221798, -0.759893,
		33.592823, 40.354282, 22.282776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314690, 40.372833, 23.107321>,  <34.020550, 40.509541, 22.814701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314690, 40.372833, 23.107321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286091, 40.207310, 22.744301>,  <33.268932, 40.107994, 22.526489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.286091, 40.207310, 22.744301>,  <33.314690, 40.372833, 23.107321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286091, 40.207310, 22.744301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573000, -0.727720, 0.376953,
		-0.816431, 0.546978, -0.185084,
		-0.071495, -0.413809, -0.907552,
		33.264641, 40.083168, 22.472034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669598, 39.927574, 23.142065>,  <33.314690, 40.372833, 23.107321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669598, 39.927574, 23.142065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.880363, 39.777470, 22.837030>,  <33.006821, 39.687405, 22.654009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.880363, 39.777470, 22.837030>,  <32.669598, 39.927574, 23.142065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880363, 39.777470, 22.837030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126077, -0.921831, 0.366513,
		-0.840516, -0.096975, -0.533037,
		0.526913, -0.375264, -0.762588,
		33.038437, 39.664890, 22.608253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290302, 39.325024, 23.057295>,  <32.669598, 39.927574, 23.142065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290302, 39.325024, 23.057295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655090, 39.317753, 22.893356>,  <32.873962, 39.313389, 22.794992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.655090, 39.317753, 22.893356>,  <32.290302, 39.325024, 23.057295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655090, 39.317753, 22.893356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188363, -0.868932, 0.457686,
		-0.364450, -0.494598, -0.789018,
		0.911974, -0.018182, -0.409846,
		32.928684, 39.312298, 22.770403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339581, 38.759029, 22.713150>,  <32.290302, 39.325024, 23.057295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339581, 38.759029, 22.713150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719776, 38.848637, 22.799307>,  <32.947891, 38.902401, 22.851002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719776, 38.848637, 22.799307>,  <32.339581, 38.759029, 22.713150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719776, 38.848637, 22.799307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058364, -0.809437, 0.584299,
		0.305240, -0.542796, -0.782433,
		0.950485, 0.224017, 0.215393,
		33.004921, 38.915840, 22.863924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.233116, 45.865810, 20.798025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580582, 45.693451, 20.700243>,  <36.789059, 45.590034, 20.641573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580582, 45.693451, 20.700243>,  <36.233116, 45.865810, 20.798025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580582, 45.693451, 20.700243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263217, -0.016609, 0.964594,
		-0.419701, -0.902248, 0.098992,
		0.868659, -0.430897, -0.244457,
		36.841179, 45.564182, 20.626905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236469, 45.202682, 21.025438>,  <36.233116, 45.865810, 20.798025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236469, 45.202682, 21.025438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604401, 45.358883, 21.010340>,  <36.825161, 45.452602, 21.001282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604401, 45.358883, 21.010340>,  <36.236469, 45.202682, 21.025438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604401, 45.358883, 21.010340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128433, -0.208821, 0.969484,
		0.370699, -0.896608, -0.242232,
		0.919830, 0.390497, -0.037744,
		36.880348, 45.476032, 20.999016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628632, 44.841110, 21.439377>,  <36.236469, 45.202682, 21.025438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628632, 44.841110, 21.439377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858192, 45.168636, 21.434185>,  <36.995930, 45.365154, 21.431070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.858192, 45.168636, 21.434185>,  <36.628632, 44.841110, 21.439377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858192, 45.168636, 21.434185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001233, 0.014987, 0.999887,
		0.818920, -0.573857, 0.007592,
		0.573906, 0.818818, -0.012981,
		37.030365, 45.414280, 21.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175873, 44.747398, 21.914083>,  <36.628632, 44.841110, 21.439377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175873, 44.747398, 21.914083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166538, 45.146313, 21.886143>,  <37.160938, 45.385662, 21.869379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166538, 45.146313, 21.886143>,  <37.175873, 44.747398, 21.914083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166538, 45.146313, 21.886143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107649, 0.071970, 0.991580,
		0.993915, 0.015619, -0.109036,
		-0.023335, 0.997284, -0.069851,
		37.159538, 45.445499, 21.865187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782646, 45.086555, 22.361294>,  <37.175873, 44.747398, 21.914083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782646, 45.086555, 22.361294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495693, 45.359447, 22.304831>,  <37.323521, 45.523182, 22.270952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.495693, 45.359447, 22.304831>,  <37.782646, 45.086555, 22.361294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495693, 45.359447, 22.304831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037618, 0.240252, 0.969981,
		0.695665, 0.690536, -0.198017,
		-0.717381, 0.682231, -0.141159,
		37.280479, 45.564117, 22.262484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011108, 45.571125, 22.839312>,  <37.782646, 45.086555, 22.361294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011108, 45.571125, 22.839312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625820, 45.643440, 22.759798>,  <37.394646, 45.686829, 22.712090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.625820, 45.643440, 22.759798>,  <38.011108, 45.571125, 22.839312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625820, 45.643440, 22.759798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157989, 0.217348, 0.963223,
		0.217348, 0.959205, -0.180791,
		-0.963223, 0.180791, -0.198784,
		37.336853, 45.697678, 22.700163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892895, 46.113468, 23.200603>,  <38.011108, 45.571125, 22.839312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892895, 46.113468, 23.200603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527500, 45.962776, 23.139124>,  <37.308266, 45.872360, 23.102236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527500, 45.962776, 23.139124>,  <37.892895, 46.113468, 23.200603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527500, 45.962776, 23.139124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216913, 0.131315, 0.967319,
		-0.344234, 0.916969, -0.201671,
		-0.913483, -0.376729, -0.153699,
		37.253456, 45.849758, 23.093014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409992, 46.533257, 23.624647>,  <37.892895, 46.113468, 23.200603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409992, 46.533257, 23.624647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.196335, 46.205681, 23.540707>,  <37.068142, 46.009136, 23.490341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.196335, 46.205681, 23.540707>,  <37.409992, 46.533257, 23.624647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196335, 46.205681, 23.540707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336114, -0.022049, 0.941563,
		-0.775706, 0.573463, -0.263478,
		-0.534142, -0.818935, -0.209853,
		37.036091, 45.959999, 23.477751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801121, 46.583771, 23.974970>,  <37.409992, 46.533257, 23.624647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801121, 46.583771, 23.974970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802448, 46.192909, 23.889967>,  <36.803246, 45.958393, 23.838966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802448, 46.192909, 23.889967>,  <36.801121, 46.583771, 23.974970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802448, 46.192909, 23.889967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326399, -0.201927, 0.923412,
		-0.945226, 0.066297, -0.319612,
		0.003319, -0.977154, -0.212506,
		36.803444, 45.899761, 23.826216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145565, 46.307209, 24.290718>,  <36.801121, 46.583771, 23.974970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145565, 46.307209, 24.290718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373600, 45.982243, 24.241749>,  <36.510422, 45.787262, 24.212368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373600, 45.982243, 24.241749>,  <36.145565, 46.307209, 24.290718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373600, 45.982243, 24.241749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385451, -0.396063, 0.833404,
		-0.725555, -0.427924, -0.538935,
		0.570086, -0.812413, -0.122422,
		36.544624, 45.738518, 24.205023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732468, 45.693737, 24.308428>,  <36.145565, 46.307209, 24.290718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732468, 45.693737, 24.308428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098637, 45.566196, 24.406681>,  <36.318336, 45.489674, 24.465633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.098637, 45.566196, 24.406681>,  <35.732468, 45.693737, 24.308428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098637, 45.566196, 24.406681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361114, -0.381105, 0.851091,
		-0.177754, -0.867811, -0.464013,
		0.915424, -0.318847, 0.245635,
		36.373264, 45.470543, 24.480371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605038, 45.195911, 24.748274>,  <35.732468, 45.693737, 24.308428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605038, 45.195911, 24.748274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995014, 45.250904, 24.818224>,  <36.229000, 45.283897, 24.860195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995014, 45.250904, 24.818224>,  <35.605038, 45.195911, 24.748274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995014, 45.250904, 24.818224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158233, -0.123941, 0.979592,
		0.156348, -0.982720, -0.099082,
		0.974945, 0.137479, 0.174877,
		36.287498, 45.292149, 24.870687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234776, 44.624722, 24.541567>,  <35.605038, 45.195911, 24.748274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234776, 44.624722, 24.541567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.855881, 44.751362, 24.561607>,  <34.628544, 44.827347, 24.573631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.855881, 44.751362, 24.561607>,  <35.234776, 44.624722, 24.541567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855881, 44.751362, 24.561607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054996, -0.006542, -0.998465,
		-0.315786, -0.948536, 0.023609,
		-0.947235, 0.316600, 0.050099,
		34.571709, 44.846340, 24.576637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823315, 44.252750, 23.978342>,  <35.234776, 44.624722, 24.541567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823315, 44.252750, 23.978342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.613041, 44.584896, 24.052269>,  <34.486877, 44.784184, 24.096624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.613041, 44.584896, 24.052269>,  <34.823315, 44.252750, 23.978342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613041, 44.584896, 24.052269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240968, 0.063008, -0.968486,
		-0.815839, -0.553650, 0.166968,
		-0.525681, 0.830362, 0.184816,
		34.455338, 44.834003, 24.107714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279575, 44.161015, 23.608738>,  <34.823315, 44.252750, 23.978342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279575, 44.161015, 23.608738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.302341, 44.554661, 23.676003>,  <34.316002, 44.790848, 23.716362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.302341, 44.554661, 23.676003>,  <34.279575, 44.161015, 23.608738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302341, 44.554661, 23.676003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087261, 0.172693, -0.981103,
		-0.994559, 0.041161, 0.095703,
		0.056911, 0.984115, 0.168161,
		34.319416, 44.849895, 23.726450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841187, 44.326599, 23.150808>,  <34.279575, 44.161015, 23.608738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841187, 44.326599, 23.150808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.029198, 44.672707, 23.220535>,  <34.142002, 44.880371, 23.262371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.029198, 44.672707, 23.220535>,  <33.841187, 44.326599, 23.150808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029198, 44.672707, 23.220535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220387, 0.306285, -0.926077,
		-0.854696, 0.396863, 0.334655,
		0.470026, 0.865268, 0.174317,
		34.170204, 44.932285, 23.272831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433304, 44.765007, 22.889656>,  <33.841187, 44.326599, 23.150808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433304, 44.765007, 22.889656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.763222, 44.988377, 22.925159>,  <33.961170, 45.122398, 22.946461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.763222, 44.988377, 22.925159>,  <33.433304, 44.765007, 22.889656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763222, 44.988377, 22.925159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191316, 0.423326, -0.885547,
		-0.532086, 0.713411, 0.455992,
		0.824792, 0.558426, 0.088759,
		34.010658, 45.155903, 22.951788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317734, 45.533192, 22.783813>,  <33.433304, 44.765007, 22.889656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317734, 45.533192, 22.783813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698799, 45.461674, 22.685455>,  <33.927437, 45.418762, 22.626440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698799, 45.461674, 22.685455>,  <33.317734, 45.533192, 22.783813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698799, 45.461674, 22.685455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152042, 0.420208, -0.894600,
		0.263279, 0.889639, 0.373132,
		0.952663, -0.178798, -0.245894,
		33.984596, 45.408035, 22.611687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531670, 46.081318, 22.402401>,  <33.317734, 45.533192, 22.783813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531670, 46.081318, 22.402401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.784603, 45.786274, 22.307667>,  <33.936363, 45.609249, 22.250826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.784603, 45.786274, 22.307667>,  <33.531670, 46.081318, 22.402401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784603, 45.786274, 22.307667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007674, 0.311662, -0.950162,
		0.774661, 0.598999, 0.202734,
		0.632331, -0.737609, -0.236835,
		33.974300, 45.564991, 22.236616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839760, 46.388721, 21.834473>,  <33.531670, 46.081318, 22.402401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839760, 46.388721, 21.834473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925797, 45.998569, 21.814987>,  <33.977417, 45.764481, 21.803297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925797, 45.998569, 21.814987>,  <33.839760, 46.388721, 21.834473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925797, 45.998569, 21.814987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076004, 0.033010, -0.996561,
		0.973632, 0.218056, -0.067032,
		0.215093, -0.975378, -0.048713,
		33.990326, 45.705956, 21.800373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334068, 46.205551, 21.275398>,  <33.839760, 46.388721, 21.834473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334068, 46.205551, 21.275398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.166233, 45.850204, 21.349966>,  <34.065533, 45.636997, 21.394707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.166233, 45.850204, 21.349966>,  <34.334068, 46.205551, 21.275398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166233, 45.850204, 21.349966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110579, -0.153820, -0.981892,
		0.900956, -0.432600, -0.033694,
		-0.419583, -0.888368, 0.186421,
		34.040359, 45.583694, 21.405891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546783, 45.780994, 20.748299>,  <34.334068, 46.205551, 21.275398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546783, 45.780994, 20.748299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230976, 45.573711, 20.879822>,  <34.041492, 45.449341, 20.958736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230976, 45.573711, 20.879822>,  <34.546783, 45.780994, 20.748299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230976, 45.573711, 20.879822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141655, -0.367423, -0.919203,
		0.597154, -0.772306, 0.216681,
		-0.789520, -0.518211, 0.328809,
		33.994122, 45.418247, 20.978464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654545, 45.153984, 20.405731>,  <34.546783, 45.780994, 20.748299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654545, 45.153984, 20.405731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265202, 45.125282, 20.492840>,  <34.031597, 45.108063, 20.545105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265202, 45.125282, 20.492840>,  <34.654545, 45.153984, 20.405731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265202, 45.125282, 20.492840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146216, -0.537354, -0.830585,
		0.176615, -0.840299, 0.512547,
		-0.973359, -0.071751, 0.217770,
		33.973194, 45.103756, 20.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421001, 44.405903, 20.406769>,  <34.654545, 45.153984, 20.405731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421001, 44.405903, 20.406769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111401, 44.650288, 20.340258>,  <33.925640, 44.796917, 20.300350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111401, 44.650288, 20.340258>,  <34.421001, 44.405903, 20.406769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111401, 44.650288, 20.340258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121651, -0.401200, -0.907876,
		-0.621387, -0.682471, 0.384853,
		-0.774003, 0.610960, -0.166277,
		33.879200, 44.833576, 20.290375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070473, 44.227715, 20.542446>,  <34.421001, 44.405903, 20.406769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070473, 44.227715, 20.542446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.130974, 43.902519, 20.767363>,  <35.167274, 43.707401, 20.902313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.130974, 43.902519, 20.767363>,  <35.070473, 44.227715, 20.542446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130974, 43.902519, 20.767363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809399, -0.224678, -0.542579,
		0.567445, 0.537187, 0.624048,
		0.151257, -0.812988, 0.562291,
		35.176350, 43.658623, 20.936050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937908, 44.038425, 21.151293>,  <35.070473, 44.227715, 20.542446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937908, 44.038425, 21.151293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738686, 43.936584, 20.819723>,  <34.619152, 43.875481, 20.620781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738686, 43.936584, 20.819723>,  <34.937908, 44.038425, 21.151293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738686, 43.936584, 20.819723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087898, -0.936177, 0.340362,
		-0.862676, 0.242382, 0.443893,
		-0.498060, -0.254605, -0.828922,
		34.589268, 43.860203, 20.571047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288788, 43.714367, 21.362589>,  <34.937908, 44.038425, 21.151293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288788, 43.714367, 21.362589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327766, 43.557247, 20.996811>,  <34.351154, 43.462975, 20.777344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.327766, 43.557247, 20.996811>,  <34.288788, 43.714367, 21.362589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327766, 43.557247, 20.996811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204460, -0.907123, 0.367864,
		-0.974012, 0.151120, -0.168709,
		0.097448, -0.392798, -0.914447,
		34.357002, 43.439407, 20.722477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719620, 43.318890, 21.233957>,  <34.288788, 43.714367, 21.362589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719620, 43.318890, 21.233957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975002, 43.146610, 20.978811>,  <34.128231, 43.043243, 20.825724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975002, 43.146610, 20.978811>,  <33.719620, 43.318890, 21.233957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975002, 43.146610, 20.978811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218003, -0.896022, 0.386807,
		-0.738136, -0.107904, -0.665967,
		0.638459, -0.430699, -0.637863,
		34.166538, 43.017399, 20.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338295, 42.750874, 20.812368>,  <33.719620, 43.318890, 21.233957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338295, 42.750874, 20.812368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.726707, 42.660114, 20.782393>,  <33.959755, 42.605659, 20.764406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.726707, 42.660114, 20.782393>,  <33.338295, 42.750874, 20.812368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726707, 42.660114, 20.782393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199254, -0.941956, 0.270214,
		-0.131904, -0.247453, -0.959879,
		0.971030, -0.226903, -0.074942,
		34.018017, 42.592045, 20.759911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302315, 42.237461, 20.379528>,  <33.338295, 42.750874, 20.812368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302315, 42.237461, 20.379528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649872, 42.200733, 20.574095>,  <33.858406, 42.178696, 20.690834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649872, 42.200733, 20.574095>,  <33.302315, 42.237461, 20.379528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649872, 42.200733, 20.574095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174803, -0.976251, 0.127973,
		0.463114, -0.196221, -0.864305,
		0.868890, -0.091817, 0.486416,
		33.910538, 42.173187, 20.720020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675789, 41.633331, 20.124050>,  <33.302315, 42.237461, 20.379528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675789, 41.633331, 20.124050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835732, 41.715054, 20.481457>,  <33.931698, 41.764088, 20.695900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835732, 41.715054, 20.481457>,  <33.675789, 41.633331, 20.124050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835732, 41.715054, 20.481457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133520, -0.951458, 0.277310,
		0.906799, -0.230187, -0.353169,
		0.399859, 0.204309, 0.893516,
		33.955688, 41.776348, 20.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977684, 40.947479, 20.255468>,  <33.675789, 41.633331, 20.124050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977684, 40.947479, 20.255468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983074, 41.154987, 20.597393>,  <33.986309, 41.279491, 20.802547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983074, 41.154987, 20.597393>,  <33.977684, 40.947479, 20.255468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983074, 41.154987, 20.597393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423529, -0.771450, 0.474855,
		0.905782, -0.368436, 0.209318,
		0.013475, 0.518767, 0.854809,
		33.987118, 41.310619, 20.853836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312416, 40.549000, 20.723116>,  <33.977684, 40.947479, 20.255468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312416, 40.549000, 20.723116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.122948, 40.795372, 20.974916>,  <34.009266, 40.943195, 21.125998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.122948, 40.795372, 20.974916>,  <34.312416, 40.549000, 20.723116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122948, 40.795372, 20.974916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331717, -0.786901, 0.520337,
		0.815846, 0.037650, 0.577043,
		-0.473666, 0.615929, 0.629501,
		33.980846, 40.980152, 21.163767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067482, 40.459412, 20.939678>,  <34.312416, 40.549000, 20.723116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067482, 40.459412, 20.939678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376144, 40.234856, 20.820086>,  <35.561340, 40.100124, 20.748331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376144, 40.234856, 20.820086>,  <35.067482, 40.459412, 20.939678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376144, 40.234856, 20.820086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093989, 0.565552, -0.819339,
		0.629055, 0.604149, 0.489177,
		0.771658, -0.561387, -0.298981,
		35.607643, 40.066441, 20.730391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703552, 40.825947, 20.838762>,  <35.067482, 40.459412, 20.939678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703552, 40.825947, 20.838762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.783474, 40.525803, 20.586720>,  <35.831429, 40.345715, 20.435493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.783474, 40.525803, 20.586720>,  <35.703552, 40.825947, 20.838762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783474, 40.525803, 20.586720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234849, 0.661005, -0.712684,
		0.951274, -0.005580, 0.308296,
		0.199809, -0.750361, -0.630107,
		35.843418, 40.300694, 20.397688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381779, 41.078812, 20.559725>,  <35.703552, 40.825947, 20.838762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381779, 41.078812, 20.559725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.196003, 40.810043, 20.328964>,  <36.084538, 40.648781, 20.190508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.196003, 40.810043, 20.328964>,  <36.381779, 41.078812, 20.559725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196003, 40.810043, 20.328964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242566, 0.529996, -0.812568,
		0.851738, -0.517326, -0.083166,
		-0.464440, -0.671921, -0.576903,
		36.056671, 40.608467, 20.155893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779221, 41.156502, 19.980419>,  <36.381779, 41.078812, 20.559725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779221, 41.156502, 19.980419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450130, 40.962112, 19.862465>,  <36.252678, 40.845478, 19.791693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450130, 40.962112, 19.862465>,  <36.779221, 41.156502, 19.980419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450130, 40.962112, 19.862465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067957, 0.430956, -0.899810,
		0.564364, -0.760336, -0.321533,
		-0.822725, -0.485970, -0.294886,
		36.203312, 40.816322, 19.773998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006554, 40.662327, 19.250818>,  <36.779221, 41.156502, 19.980419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006554, 40.662327, 19.250818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617729, 40.751030, 19.281586>,  <36.384434, 40.804253, 19.300047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617729, 40.751030, 19.281586>,  <37.006554, 40.662327, 19.250818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617729, 40.751030, 19.281586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040449, 0.481084, -0.875741,
		-0.231204, -0.848165, -0.476614,
		-0.972064, 0.221753, 0.076921,
		36.326111, 40.817554, 19.304663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769073, 40.627907, 18.639853>,  <37.006554, 40.662327, 19.250818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769073, 40.627907, 18.639853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481174, 40.831810, 18.828369>,  <36.308437, 40.954151, 18.941479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.481174, 40.831810, 18.828369>,  <36.769073, 40.627907, 18.639853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481174, 40.831810, 18.828369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095941, 0.599315, -0.794743,
		-0.687578, -0.617228, -0.382447,
		-0.719744, 0.509756, 0.471293,
		36.265251, 40.984737, 18.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290627, 40.808430, 18.042067>,  <36.769073, 40.627907, 18.639853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290627, 40.808430, 18.042067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216446, 41.076008, 18.329988>,  <36.171940, 41.236553, 18.502743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.216446, 41.076008, 18.329988>,  <36.290627, 40.808430, 18.042067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216446, 41.076008, 18.329988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045358, 0.737559, -0.673757,
		-0.981607, -0.092298, -0.167122,
		-0.185449, 0.668945, 0.719806,
		36.160812, 41.276691, 18.545931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801598, 41.309200, 17.783451>,  <36.290627, 40.808430, 18.042067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801598, 41.309200, 17.783451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.983154, 41.509304, 18.078403>,  <36.092087, 41.629364, 18.255375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.983154, 41.509304, 18.078403>,  <35.801598, 41.309200, 17.783451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983154, 41.509304, 18.078403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158404, 0.769052, -0.619248,
		-0.876865, 0.397874, 0.269822,
		0.453890, 0.500256, 0.737379,
		36.119320, 41.659382, 18.299618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492310, 42.009594, 17.759920>,  <35.801598, 41.309200, 17.783451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492310, 42.009594, 17.759920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.847626, 42.015255, 17.943542>,  <36.060818, 42.018654, 18.053717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.847626, 42.015255, 17.943542>,  <35.492310, 42.009594, 17.759920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847626, 42.015255, 17.943542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280978, 0.773898, -0.567568,
		-0.363298, 0.633152, 0.683471,
		0.888294, 0.014155, 0.459058,
		36.114113, 42.019501, 18.081261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.541626, 33.966476, 32.144596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856003, 34.212772, 32.167053>,  <35.044628, 34.360550, 32.180527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856003, 34.212772, 32.167053>,  <34.541626, 33.966476, 32.144596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856003, 34.212772, 32.167053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314253, 0.476009, -0.821377,
		-0.532480, 0.627915, 0.567616,
		0.785946, 0.615742, 0.056141,
		35.091785, 34.397495, 32.183895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256531, 34.637039, 31.862503>,  <34.541626, 33.966476, 32.144596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256531, 34.637039, 31.862503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655624, 34.655613, 31.842999>,  <34.895081, 34.666756, 31.831297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.655624, 34.655613, 31.842999>,  <34.256531, 34.637039, 31.862503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655624, 34.655613, 31.842999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067284, 0.660150, -0.748114,
		-0.002550, 0.749697, 0.661777,
		0.997731, 0.046435, -0.048759,
		34.954945, 34.669544, 31.828371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234482, 35.135590, 31.423014>,  <34.256531, 34.637039, 31.862503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234482, 35.135590, 31.423014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611809, 35.005810, 31.395031>,  <34.838203, 34.927944, 31.378242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611809, 35.005810, 31.395031>,  <34.234482, 35.135590, 31.423014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611809, 35.005810, 31.395031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003866, 0.200015, -0.979785,
		0.331881, 0.924515, 0.187423,
		0.943313, -0.324447, -0.069955,
		34.894802, 34.908474, 31.374044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546066, 35.542786, 30.959642>,  <34.234482, 35.135590, 31.423014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546066, 35.542786, 30.959642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787590, 35.223972, 30.954704>,  <34.932503, 35.032684, 30.951742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787590, 35.223972, 30.954704>,  <34.546066, 35.542786, 30.959642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787590, 35.223972, 30.954704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219766, 0.181332, -0.958552,
		0.766237, 0.576069, 0.284651,
		0.603809, -0.797034, -0.012343,
		34.968731, 34.984863, 30.951002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200451, 35.787991, 30.626184>,  <34.546066, 35.542786, 30.959642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200451, 35.787991, 30.626184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141224, 35.394871, 30.582037>,  <35.105690, 35.159000, 30.555550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141224, 35.394871, 30.582037>,  <35.200451, 35.787991, 30.626184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141224, 35.394871, 30.582037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031913, 0.106791, -0.993769,
		0.988463, -0.150663, 0.015552,
		-0.148063, -0.982800, -0.110367,
		35.096806, 35.100029, 30.548927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675007, 35.647369, 30.210060>,  <35.200451, 35.787991, 30.626184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675007, 35.647369, 30.210060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452305, 35.315144, 30.204613>,  <35.318684, 35.115807, 30.201345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.452305, 35.315144, 30.204613>,  <35.675007, 35.647369, 30.210060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452305, 35.315144, 30.204613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123368, -0.066466, -0.990133,
		0.821464, -0.552942, 0.139470,
		-0.556757, -0.830564, -0.013616,
		35.285278, 35.065975, 30.200527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150909, 35.223526, 29.798058>,  <35.675007, 35.647369, 30.210060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150909, 35.223526, 29.798058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785370, 35.063999, 29.767532>,  <35.566048, 34.968281, 29.749216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785370, 35.063999, 29.767532>,  <36.150909, 35.223526, 29.798058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785370, 35.063999, 29.767532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151666, -0.160911, -0.975246,
		0.376669, -0.902801, 0.207535,
		-0.913848, -0.398821, -0.076314,
		35.511215, 34.944351, 29.744638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202808, 34.571663, 29.369774>,  <36.150909, 35.223526, 29.798058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202808, 34.571663, 29.369774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823116, 34.696938, 29.357897>,  <35.595303, 34.772102, 29.350771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823116, 34.696938, 29.357897>,  <36.202808, 34.571663, 29.369774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823116, 34.696938, 29.357897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002643, -0.086441, -0.996253,
		-0.314578, -0.945750, 0.081224,
		-0.949228, 0.313184, -0.029692,
		35.538349, 34.790894, 29.348989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003956, 34.155674, 28.796583>,  <36.202808, 34.571663, 29.369774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003956, 34.155674, 28.796583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746460, 34.459156, 28.836523>,  <35.591961, 34.641243, 28.860487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746460, 34.459156, 28.836523>,  <36.003956, 34.155674, 28.796583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746460, 34.459156, 28.836523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119891, 0.028878, -0.992367,
		-0.755794, -0.650798, 0.072372,
		-0.643740, 0.758702, 0.099851,
		35.553337, 34.686768, 28.866478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405281, 34.075584, 28.302919>,  <36.003956, 34.155674, 28.796583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405281, 34.075584, 28.302919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339657, 34.463634, 28.374399>,  <35.300282, 34.696465, 28.417288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339657, 34.463634, 28.374399>,  <35.405281, 34.075584, 28.302919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339657, 34.463634, 28.374399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157763, 0.153020, -0.975549,
		-0.973753, -0.188242, 0.127946,
		-0.164061, 0.970129, 0.178702,
		35.290440, 34.754673, 28.428009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841621, 34.208672, 27.907646>,  <35.405281, 34.075584, 28.302919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841621, 34.208672, 27.907646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004238, 34.566036, 27.984102>,  <35.101807, 34.780457, 28.029976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004238, 34.566036, 27.984102>,  <34.841621, 34.208672, 27.907646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004238, 34.566036, 27.984102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109965, 0.255534, -0.960526,
		-0.906991, 0.369475, 0.202129,
		0.406541, 0.893415, 0.191138,
		35.126202, 34.834061, 28.041443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392292, 34.650162, 27.626080>,  <34.841621, 34.208672, 27.907646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392292, 34.650162, 27.626080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737247, 34.849133, 27.663712>,  <34.944221, 34.968517, 27.686291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737247, 34.849133, 27.663712>,  <34.392292, 34.650162, 27.626080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737247, 34.849133, 27.663712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067047, 0.296426, -0.952699,
		-0.501788, 0.815289, 0.288986,
		0.862388, 0.497429, 0.094081,
		34.995964, 34.998360, 27.691936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827465, 34.972935, 27.771194>,  <34.392292, 34.650162, 27.626080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827465, 34.972935, 27.771194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474899, 35.127972, 27.663204>,  <33.263359, 35.220993, 27.598410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474899, 35.127972, 27.663204>,  <33.827465, 34.972935, 27.771194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474899, 35.127972, 27.663204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306703, -0.034936, 0.951164,
		0.359228, 0.921170, 0.149668,
		-0.881413, 0.387588, -0.269975,
		33.210476, 35.244247, 27.582212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713730, 35.544086, 28.169521>,  <33.827465, 34.972935, 27.771194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713730, 35.544086, 28.169521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353058, 35.406586, 28.064594>,  <33.136654, 35.324085, 28.001638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353058, 35.406586, 28.064594>,  <33.713730, 35.544086, 28.169521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353058, 35.406586, 28.064594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260339, -0.052799, 0.964072,
		-0.345251, 0.937575, -0.041884,
		-0.901679, -0.343751, -0.262317,
		33.082554, 35.303459, 27.985899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191921, 35.941978, 28.479382>,  <33.713730, 35.544086, 28.169521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191921, 35.941978, 28.479382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027210, 35.584938, 28.405956>,  <32.928383, 35.370712, 28.361902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027210, 35.584938, 28.405956>,  <33.191921, 35.941978, 28.479382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027210, 35.584938, 28.405956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281270, -0.067106, 0.957280,
		-0.866791, 0.445817, -0.223430,
		-0.411778, -0.892605, -0.183562,
		32.903675, 35.317158, 28.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444683, 35.987034, 28.624540>,  <33.191921, 35.941978, 28.479382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444683, 35.987034, 28.624540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526764, 35.596287, 28.600449>,  <32.576012, 35.361839, 28.585995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526764, 35.596287, 28.600449>,  <32.444683, 35.987034, 28.624540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526764, 35.596287, 28.600449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318578, -0.124853, 0.939638,
		-0.925419, -0.173628, -0.336828,
		0.205202, -0.976865, -0.060227,
		32.588326, 35.303226, 28.582380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823490, 35.609493, 28.894630>,  <32.444683, 35.987034, 28.624540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823490, 35.609493, 28.894630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152065, 35.383232, 28.923683>,  <32.349209, 35.247475, 28.941114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152065, 35.383232, 28.923683>,  <31.823490, 35.609493, 28.894630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152065, 35.383232, 28.923683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097552, -0.013889, 0.995134,
		-0.561894, -0.824525, -0.066590,
		0.821437, -0.565656, 0.072630,
		32.398495, 35.213535, 28.945473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631472, 35.016354, 29.253092>,  <31.823490, 35.609493, 28.894630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631472, 35.016354, 29.253092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026321, 35.055088, 29.304020>,  <32.263229, 35.078331, 29.334578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026321, 35.055088, 29.304020>,  <31.631472, 35.016354, 29.253092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026321, 35.055088, 29.304020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116657, -0.108800, 0.987195,
		0.109452, -0.989335, -0.096102,
		0.987123, 0.096839, 0.127321,
		32.322460, 35.084141, 29.342216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813353, 34.496334, 29.702997>,  <31.631472, 35.016354, 29.253092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813353, 34.496334, 29.702997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083118, 34.789783, 29.736364>,  <32.244976, 34.965855, 29.756386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083118, 34.789783, 29.736364>,  <31.813353, 34.496334, 29.702997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083118, 34.789783, 29.736364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100588, -0.020638, 0.994714,
		0.731470, -0.679239, 0.059875,
		0.674413, 0.733626, 0.083419,
		32.285442, 35.009872, 29.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184231, 34.340397, 30.332973>,  <31.813353, 34.496334, 29.702997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184231, 34.340397, 30.332973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304474, 34.715015, 30.260845>,  <32.376617, 34.939785, 30.217567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304474, 34.715015, 30.260845>,  <32.184231, 34.340397, 30.332973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304474, 34.715015, 30.260845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089145, 0.215829, 0.972353,
		0.949574, -0.276218, 0.148368,
		0.300604, 0.936547, -0.180322,
		32.394653, 34.995979, 30.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801304, 34.499374, 30.848915>,  <32.184231, 34.340397, 30.332973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801304, 34.499374, 30.848915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627335, 34.832375, 30.711636>,  <32.522953, 35.032173, 30.629269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627335, 34.832375, 30.711636>,  <32.801304, 34.499374, 30.848915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627335, 34.832375, 30.711636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062640, 0.352239, 0.933812,
		0.898287, 0.427633, -0.101049,
		-0.434922, 0.832501, -0.343198,
		32.496857, 35.082127, 30.608677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067490, 34.994175, 31.336124>,  <32.801304, 34.499374, 30.848915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067490, 34.994175, 31.336124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793373, 35.234135, 31.170956>,  <32.628902, 35.378109, 31.071854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793373, 35.234135, 31.170956>,  <33.067490, 34.994175, 31.336124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793373, 35.234135, 31.170956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101388, 0.482883, 0.869796,
		0.721180, 0.637926, -0.270091,
		-0.685288, 0.599895, -0.412924,
		32.587788, 35.414104, 31.047079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195724, 35.784344, 31.585892>,  <33.067490, 34.994175, 31.336124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195724, 35.784344, 31.585892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814007, 35.733322, 31.477783>,  <32.584976, 35.702709, 31.412918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814007, 35.733322, 31.477783>,  <33.195724, 35.784344, 31.585892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814007, 35.733322, 31.477783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295781, 0.532573, 0.793019,
		0.042783, 0.836717, -0.545962,
		-0.954297, -0.127557, -0.270270,
		32.527718, 35.695053, 31.396702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807781, 36.473068, 31.873499>,  <33.195724, 35.784344, 31.585892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807781, 36.473068, 31.873499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519157, 36.206554, 31.798214>,  <32.345985, 36.046646, 31.753042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519157, 36.206554, 31.798214>,  <32.807781, 36.473068, 31.873499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519157, 36.206554, 31.798214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483054, 0.289718, 0.826270,
		-0.496001, 0.687117, -0.530898,
		-0.721555, -0.666284, -0.188214,
		32.302692, 36.006668, 31.741749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142971, 36.861805, 31.935431>,  <32.807781, 36.473068, 31.873499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142971, 36.861805, 31.935431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058392, 36.475113, 31.993013>,  <32.007645, 36.243099, 32.027561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058392, 36.475113, 31.993013>,  <32.142971, 36.861805, 31.935431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058392, 36.475113, 31.993013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449623, 0.226986, 0.863896,
		-0.867830, 0.117945, -0.482660,
		-0.211449, -0.966730, 0.143955,
		31.994957, 36.185093, 32.036201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361931, 37.512745, 32.240623>,  <32.142971, 36.861805, 31.935431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361931, 37.512745, 32.240623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342690, 37.592400, 32.632141>,  <32.331142, 37.640190, 32.867050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342690, 37.592400, 32.632141>,  <32.361931, 37.512745, 32.240623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342690, 37.592400, 32.632141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933901, -0.338605, 0.114788,
		0.354281, 0.919616, -0.169681,
		-0.048106, 0.199132, 0.978791,
		32.328259, 37.652138, 32.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010998, 37.847374, 32.394253>,  <32.361931, 37.512745, 32.240623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010998, 37.847374, 32.394253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862881, 37.655827, 32.712643>,  <32.774010, 37.540897, 32.903675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862881, 37.655827, 32.712643>,  <33.010998, 37.847374, 32.394253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862881, 37.655827, 32.712643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883402, -0.446466, 0.142368,
		0.287199, 0.755880, 0.588355,
		-0.370294, -0.478867, 0.795971,
		32.751793, 37.512165, 32.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470295, 38.284782, 32.086304>,  <33.010998, 37.847374, 32.394253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470295, 38.284782, 32.086304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745560, 38.378414, 32.361008>,  <33.910717, 38.434593, 32.525829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745560, 38.378414, 32.361008>,  <33.470295, 38.284782, 32.086304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745560, 38.378414, 32.361008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136946, 0.887610, -0.439766,
		-0.712519, 0.396678, 0.578759,
		0.688158, 0.234083, 0.686763,
		33.952007, 38.448639, 32.567036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296017, 38.890358, 32.485901>,  <33.470295, 38.284782, 32.086304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296017, 38.890358, 32.485901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694187, 38.855034, 32.471298>,  <33.933090, 38.833839, 32.462536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694187, 38.855034, 32.471298>,  <33.296017, 38.890358, 32.485901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694187, 38.855034, 32.471298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068320, 0.924799, -0.374272,
		0.066818, 0.370065, 0.926600,
		0.995423, -0.088314, -0.036510,
		33.992813, 38.828541, 32.460346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565014, 39.471077, 32.769642>,  <33.296017, 38.890358, 32.485901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565014, 39.471077, 32.769642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806667, 39.337753, 32.480110>,  <33.951660, 39.257759, 32.306389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806667, 39.337753, 32.480110>,  <33.565014, 39.471077, 32.769642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806667, 39.337753, 32.480110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017749, 0.913729, -0.405937,
		0.796687, 0.232392, 0.557928,
		0.604131, -0.333307, -0.723832,
		33.987907, 39.237762, 32.262962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018166, 40.058681, 32.636234>,  <33.565014, 39.471077, 32.769642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018166, 40.058681, 32.636234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042271, 39.824551, 32.312813>,  <34.056732, 39.684074, 32.118759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042271, 39.824551, 32.312813>,  <34.018166, 40.058681, 32.636234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042271, 39.824551, 32.312813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004543, 0.809860, -0.586605,
		0.998172, 0.039024, 0.046147,
		0.060264, -0.585324, -0.808557,
		34.060349, 39.648952, 32.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409527, 40.406490, 32.180882>,  <34.018166, 40.058681, 32.636234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409527, 40.406490, 32.180882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227139, 40.150639, 31.933348>,  <34.117706, 39.997128, 31.784826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227139, 40.150639, 31.933348>,  <34.409527, 40.406490, 32.180882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227139, 40.150639, 31.933348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116340, 0.732198, -0.671082,
		0.882358, -0.233998, -0.408275,
		-0.455970, -0.639633, -0.618838,
		34.090347, 39.958748, 31.747696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510094, 40.617424, 31.478828>,  <34.409527, 40.406490, 32.180882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510094, 40.617424, 31.478828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218182, 40.361931, 31.381302>,  <34.043034, 40.208633, 31.322786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218182, 40.361931, 31.381302>,  <34.510094, 40.617424, 31.478828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218182, 40.361931, 31.381302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263707, 0.591999, -0.761575,
		0.630784, -0.491482, -0.600464,
		-0.729774, -0.638735, -0.243816,
		33.999249, 40.170311, 31.308157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476234, 40.657200, 30.685839>,  <34.510094, 40.617424, 31.478828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476234, 40.657200, 30.685839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131760, 40.486160, 30.795752>,  <33.925076, 40.383537, 30.861700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131760, 40.486160, 30.795752>,  <34.476234, 40.657200, 30.685839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131760, 40.486160, 30.795752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486854, 0.538643, -0.687631,
		0.146024, -0.725961, -0.672055,
		-0.861191, -0.427603, 0.274782,
		33.873402, 40.357880, 30.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186169, 40.350979, 30.081816>,  <34.476234, 40.657200, 30.685839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186169, 40.350979, 30.081816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875523, 40.393860, 30.330132>,  <33.689137, 40.419590, 30.479122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875523, 40.393860, 30.330132>,  <34.186169, 40.350979, 30.081816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875523, 40.393860, 30.330132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474704, 0.548249, -0.688534,
		-0.414163, -0.829416, -0.374885,
		-0.776612, 0.107206, 0.620791,
		33.642540, 40.426022, 30.516369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503819, 40.151333, 29.719023>,  <34.186169, 40.350979, 30.081816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503819, 40.151333, 29.719023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420074, 40.392479, 30.026978>,  <33.369827, 40.537167, 30.211750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420074, 40.392479, 30.026978>,  <33.503819, 40.151333, 29.719023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420074, 40.392479, 30.026978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372321, 0.678882, -0.632848,
		-0.904183, -0.419136, 0.082330,
		-0.209357, 0.602864, 0.769886,
		33.357265, 40.573338, 30.257944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815010, 40.409954, 29.614637>,  <33.503819, 40.151333, 29.719023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815010, 40.409954, 29.614637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990421, 40.665966, 29.867002>,  <33.095669, 40.819572, 30.018421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.990421, 40.665966, 29.867002>,  <32.815010, 40.409954, 29.614637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990421, 40.665966, 29.867002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437355, 0.765264, -0.472326,
		-0.785118, -0.068803, 0.615512,
		0.438532, 0.640029, 0.630914,
		33.121983, 40.857975, 30.056276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315296, 40.910873, 29.602657>,  <32.815010, 40.409954, 29.614637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315296, 40.910873, 29.602657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644543, 41.095837, 29.734509>,  <32.842091, 41.206814, 29.813620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644543, 41.095837, 29.734509>,  <32.315296, 40.910873, 29.602657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644543, 41.095837, 29.734509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249172, 0.815696, -0.522066,
		-0.510286, 0.347586, 0.786633,
		0.823117, 0.462410, 0.329630,
		32.891479, 41.234558, 29.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122540, 41.583118, 29.763191>,  <32.315296, 40.910873, 29.602657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122540, 41.583118, 29.763191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518166, 41.628441, 29.725437>,  <32.755543, 41.655636, 29.702785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518166, 41.628441, 29.725437>,  <32.122540, 41.583118, 29.763191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518166, 41.628441, 29.725437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141434, 0.910088, -0.389533,
		0.041760, 0.398623, 0.916163,
		0.989066, 0.113310, -0.094384,
		32.814884, 41.662434, 29.697123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290237, 42.240032, 29.958185>,  <32.122540, 41.583118, 29.763191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290237, 42.240032, 29.958185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628155, 42.153584, 29.762386>,  <32.830906, 42.101715, 29.644907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.628155, 42.153584, 29.762386>,  <32.290237, 42.240032, 29.958185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628155, 42.153584, 29.762386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092276, 0.842254, -0.531124,
		0.527070, 0.493861, 0.691591,
		0.844797, -0.216122, -0.489498,
		32.881596, 42.088745, 29.615538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615398, 42.872269, 29.916809>,  <32.290237, 42.240032, 29.958185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615398, 42.872269, 29.916809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786007, 42.645226, 29.635126>,  <32.888371, 42.508999, 29.466116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.786007, 42.645226, 29.635126>,  <32.615398, 42.872269, 29.916809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786007, 42.645226, 29.635126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045941, 0.791167, -0.609872,
		0.903310, 0.227772, 0.363526,
		0.426522, -0.567604, -0.704205,
		32.913963, 42.474945, 29.423864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294735, 43.202065, 29.743727>,  <32.615398, 42.872269, 29.916809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294735, 43.202065, 29.743727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213291, 42.942013, 29.450914>,  <33.164425, 42.785980, 29.275227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213291, 42.942013, 29.450914>,  <33.294735, 43.202065, 29.743727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213291, 42.942013, 29.450914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226159, 0.696241, -0.681249,
		0.952573, -0.304265, 0.005271,
		-0.203610, -0.650131, -0.732033,
		33.152206, 42.746975, 29.231304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910374, 43.209713, 29.300453>,  <33.294735, 43.202065, 29.743727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910374, 43.209713, 29.300453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600121, 43.087132, 29.079735>,  <33.413967, 43.013584, 28.947304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600121, 43.087132, 29.079735>,  <33.910374, 43.209713, 29.300453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600121, 43.087132, 29.079735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268078, 0.631514, -0.727547,
		0.571423, -0.712235, -0.407672,
		-0.775635, -0.306449, -0.551796,
		33.367432, 42.995197, 28.914196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149975, 43.183109, 28.619047>,  <33.910374, 43.209713, 29.300453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149975, 43.183109, 28.619047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752571, 43.190239, 28.574104>,  <33.514130, 43.194515, 28.547138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752571, 43.190239, 28.574104>,  <34.149975, 43.183109, 28.619047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752571, 43.190239, 28.574104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097559, 0.641500, -0.760894,
		0.058514, -0.766916, -0.639074,
		-0.993508, 0.017824, -0.112356,
		33.454517, 43.195587, 28.540398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000614, 42.864086, 27.920849>,  <34.149975, 43.183109, 28.619047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000614, 42.864086, 27.920849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685814, 43.083923, 28.032972>,  <33.496933, 43.215828, 28.100246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685814, 43.083923, 28.032972>,  <34.000614, 42.864086, 27.920849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685814, 43.083923, 28.032972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001514, 0.452626, -0.891699,
		-0.616950, -0.702193, -0.355385,
		-0.787001, 0.549596, 0.280310,
		33.449715, 43.248802, 28.117065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566605, 42.854359, 27.282900>,  <34.000614, 42.864086, 27.920849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566605, 42.854359, 27.282900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490662, 43.174881, 27.509830>,  <33.445095, 43.367195, 27.645988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490662, 43.174881, 27.509830>,  <33.566605, 42.854359, 27.282900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490662, 43.174881, 27.509830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104978, 0.557956, -0.823204,
		-0.976184, -0.215846, -0.021811,
		-0.189855, 0.801309, 0.567326,
		33.433704, 43.415272, 27.680029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975666, 43.049320, 26.936209>,  <33.566605, 42.854359, 27.282900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975666, 43.049320, 26.936209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103302, 43.370098, 27.138226>,  <33.179882, 43.562565, 27.259436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103302, 43.370098, 27.138226>,  <32.975666, 43.049320, 26.936209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103302, 43.370098, 27.138226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001197, 0.533241, -0.845963,
		-0.947724, 0.269332, 0.171111,
		0.319089, 0.801944, 0.505043,
		33.199028, 43.610680, 27.289738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596973, 43.646732, 26.745090>,  <32.975666, 43.049320, 26.936209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596973, 43.646732, 26.745090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948864, 43.784534, 26.876171>,  <33.160000, 43.867214, 26.954821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948864, 43.784534, 26.876171>,  <32.596973, 43.646732, 26.745090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948864, 43.784534, 26.876171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087413, 0.560285, -0.823675,
		-0.467368, 0.753258, 0.462785,
		0.879731, 0.344506, 0.327704,
		33.212784, 43.887886, 26.974482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675873, 44.356209, 26.535089>,  <32.596973, 43.646732, 26.745090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675873, 44.356209, 26.535089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052917, 44.253693, 26.620687>,  <33.279144, 44.192184, 26.672047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052917, 44.253693, 26.620687>,  <32.675873, 44.356209, 26.535089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052917, 44.253693, 26.620687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317230, 0.487566, -0.813415,
		0.104132, 0.834623, 0.540889,
		0.942614, -0.256288, 0.213996,
		33.335701, 44.176807, 26.684887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982731, 44.963886, 26.377983>,  <32.675873, 44.356209, 26.535089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982731, 44.963886, 26.377983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279633, 44.697018, 26.403111>,  <33.457775, 44.536896, 26.418188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279633, 44.697018, 26.403111>,  <32.982731, 44.963886, 26.377983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279633, 44.697018, 26.403111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406635, 0.373912, -0.833569,
		0.532641, 0.644265, 0.548832,
		0.742254, -0.667167, 0.062820,
		33.502308, 44.496868, 26.421957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386040, 45.340927, 26.153494>,  <32.982731, 44.963886, 26.377983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386040, 45.340927, 26.153494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600166, 45.004486, 26.122561>,  <33.728642, 44.802620, 26.104000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600166, 45.004486, 26.122561>,  <33.386040, 45.340927, 26.153494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600166, 45.004486, 26.122561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313767, 0.283025, -0.906337,
		0.784212, 0.460911, 0.415419,
		0.535315, -0.841105, -0.077333,
		33.760761, 44.752155, 26.099361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988647, 45.564156, 25.963734>,  <33.386040, 45.340927, 26.153494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988647, 45.564156, 25.963734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954746, 45.177719, 25.866175>,  <33.934406, 44.945858, 25.807638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954746, 45.177719, 25.866175>,  <33.988647, 45.564156, 25.963734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954746, 45.177719, 25.866175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277986, 0.212136, -0.936868,
		0.956839, -0.147201, 0.250581,
		-0.084750, -0.966090, -0.243899,
		33.929321, 44.887894, 25.793005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576702, 45.493092, 25.677050>,  <33.988647, 45.564156, 25.963734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576702, 45.493092, 25.677050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394974, 45.168953, 25.529034>,  <34.285934, 44.974472, 25.440224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394974, 45.168953, 25.529034>,  <34.576702, 45.493092, 25.677050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394974, 45.168953, 25.529034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462678, 0.140323, -0.875351,
		0.761261, -0.568904, 0.311176,
		-0.454325, -0.810344, -0.370041,
		34.258675, 44.925850, 25.418022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153248, 45.082851, 25.305325>,  <34.576702, 45.493092, 25.677050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153248, 45.082851, 25.305325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787933, 44.977032, 25.181435>,  <34.568745, 44.913540, 25.107101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787933, 44.977032, 25.181435>,  <35.153248, 45.082851, 25.305325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787933, 44.977032, 25.181435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235662, 0.277028, -0.931514,
		0.332234, -0.923726, -0.190660,
		-0.913283, -0.264549, -0.309726,
		34.513947, 44.897667, 25.088518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760773, 44.592785, 25.107288>,  <35.153248, 45.082851, 25.305325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760773, 44.592785, 25.107288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034050, 44.867924, 25.205364>,  <36.198017, 45.033005, 25.264210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034050, 44.867924, 25.205364>,  <35.760773, 44.592785, 25.107288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034050, 44.867924, 25.205364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103711, -0.240966, 0.964976,
		0.722834, -0.684696, -0.093290,
		0.683195, 0.687843, 0.245189,
		36.239010, 45.074276, 25.278921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415092, 44.278465, 25.327547>,  <35.760773, 44.592785, 25.107288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415092, 44.278465, 25.327547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400578, 44.640392, 25.497250>,  <36.391869, 44.857548, 25.599072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400578, 44.640392, 25.497250>,  <36.415092, 44.278465, 25.327547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400578, 44.640392, 25.497250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128922, -0.425227, 0.895858,
		0.990991, -0.022191, 0.132079,
		-0.036284, 0.904815, 0.424257,
		36.389694, 44.911839, 25.624527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759823, 44.156044, 25.925051>,  <36.415092, 44.278465, 25.327547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759823, 44.156044, 25.925051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628410, 44.526756, 25.997877>,  <36.549564, 44.749184, 26.041573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628410, 44.526756, 25.997877>,  <36.759823, 44.156044, 25.925051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628410, 44.526756, 25.997877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163526, -0.245668, 0.955461,
		0.930229, 0.284127, 0.232263,
		-0.328532, 0.926779, 0.182065,
		36.529850, 44.804790, 26.052496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123234, 44.374249, 26.404676>,  <36.759823, 44.156044, 25.925051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123234, 44.374249, 26.404676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770653, 44.562092, 26.424675>,  <36.559105, 44.674797, 26.436674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770653, 44.562092, 26.424675>,  <37.123234, 44.374249, 26.404676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770653, 44.562092, 26.424675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039035, -0.177950, 0.983265,
		0.470650, 0.864754, 0.175187,
		-0.881456, 0.469612, 0.049996,
		36.506214, 44.702976, 26.439674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204758, 44.795895, 26.986700>,  <37.123234, 44.374249, 26.404676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204758, 44.795895, 26.986700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808720, 44.764400, 26.940189>,  <36.571098, 44.745502, 26.912283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808720, 44.764400, 26.940189>,  <37.204758, 44.795895, 26.986700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808720, 44.764400, 26.940189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097528, -0.210193, 0.972783,
		-0.101032, 0.974485, 0.200432,
		-0.990091, -0.078735, -0.116276,
		36.511692, 44.740780, 26.905306>
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
