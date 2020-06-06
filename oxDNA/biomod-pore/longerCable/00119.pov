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
	<24.667850, 35.143009, 34.937603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392897, 34.862041, 34.863731>,  <24.227924, 34.693459, 34.819408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392897, 34.862041, 34.863731>,  <24.667850, 35.143009, 34.937603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392897, 34.862041, 34.863731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532999, -0.660590, 0.528709,
		-0.493372, 0.264994, 0.828470,
		-0.687383, -0.702424, -0.184675,
		24.186682, 34.651314, 34.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419756, 34.809284, 35.652397>,  <24.667850, 35.143009, 34.937603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419756, 34.809284, 35.652397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414410, 34.589733, 35.318077>,  <24.411201, 34.458004, 35.117485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414410, 34.589733, 35.318077>,  <24.419756, 34.809284, 35.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414410, 34.589733, 35.318077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758547, -0.550170, 0.349170,
		-0.651481, -0.629325, 0.423701,
		-0.013366, -0.548875, -0.835798,
		24.410400, 34.425072, 35.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801981, 34.864422, 36.258266>,  <24.419756, 34.809284, 35.652397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801981, 34.864422, 36.258266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970329, 34.667049, 35.953796>,  <25.071339, 34.548626, 35.771114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970329, 34.667049, 35.953796>,  <24.801981, 34.864422, 36.258266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970329, 34.667049, 35.953796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688254, 0.720308, -0.086384,
		0.590908, -0.487528, 0.642763,
		0.420873, -0.493429, -0.761179,
		25.096592, 34.519020, 35.725441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464003, 34.641418, 36.596966>,  <24.801981, 34.864422, 36.258266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464003, 34.641418, 36.596966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506212, 34.714401, 36.205952>,  <25.531538, 34.758190, 35.971344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506212, 34.714401, 36.205952>,  <25.464003, 34.641418, 36.596966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506212, 34.714401, 36.205952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609192, 0.765104, 0.208567,
		0.785971, -0.617515, -0.030416,
		0.105522, 0.182457, -0.977535,
		25.537868, 34.769138, 35.912693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239649, 34.742496, 36.525688>,  <25.464003, 34.641418, 36.596966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239649, 34.742496, 36.525688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029257, 34.927673, 36.240303>,  <25.903021, 35.038780, 36.069073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029257, 34.927673, 36.240303>,  <26.239649, 34.742496, 36.525688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029257, 34.927673, 36.240303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631573, 0.774438, 0.036893,
		0.569613, -0.431200, -0.699720,
		-0.525981, 0.462939, -0.713464,
		25.871462, 35.066555, 36.026264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589613, 35.258411, 36.129257>,  <26.239649, 34.742496, 36.525688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589613, 35.258411, 36.129257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433340, 35.435463, 35.806408>,  <26.339577, 35.541695, 35.612698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433340, 35.435463, 35.806408>,  <26.589613, 35.258411, 36.129257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433340, 35.435463, 35.806408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120505, 0.844670, 0.521546,
		0.912604, 0.301021, -0.276659,
		-0.390682, 0.442627, -0.807124,
		26.316135, 35.568253, 35.564270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881882, 35.975735, 36.004417>,  <26.589613, 35.258411, 36.129257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881882, 35.975735, 36.004417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495874, 35.963776, 35.900227>,  <26.264271, 35.956600, 35.837711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495874, 35.963776, 35.900227>,  <26.881882, 35.975735, 36.004417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495874, 35.963776, 35.900227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191929, 0.757381, 0.624129,
		0.178616, 0.652288, -0.736625,
		-0.965018, -0.029901, -0.260473,
		26.206369, 35.954807, 35.822086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692324, 36.543835, 35.579147>,  <26.881882, 35.975735, 36.004417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692324, 36.543835, 35.579147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394375, 36.410698, 35.810452>,  <26.215605, 36.330818, 35.949234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394375, 36.410698, 35.810452>,  <26.692324, 36.543835, 35.579147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394375, 36.410698, 35.810452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083557, 0.906398, 0.414078,
		-0.661953, 0.260118, -0.702963,
		-0.744873, -0.332838, 0.578258,
		26.170914, 36.310848, 35.983929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137489, 37.105946, 35.609318>,  <26.692324, 36.543835, 35.579147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137489, 37.105946, 35.609318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122469, 36.881836, 35.940300>,  <26.113457, 36.747368, 36.138889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122469, 36.881836, 35.940300>,  <26.137489, 37.105946, 35.609318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122469, 36.881836, 35.940300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044907, 0.826254, 0.561505,
		-0.998285, 0.058243, -0.005866,
		-0.037551, -0.560279, 0.827453,
		26.111204, 36.713753, 36.188538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629217, 37.429596, 35.968292>,  <26.137489, 37.105946, 35.609318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629217, 37.429596, 35.968292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785778, 37.177708, 36.236698>,  <25.879715, 37.026573, 36.397739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785778, 37.177708, 36.236698>,  <25.629217, 37.429596, 35.968292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785778, 37.177708, 36.236698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028364, 0.737095, 0.675194,
		-0.919782, -0.245241, 0.306363,
		0.391404, -0.629720, 0.671011,
		25.903200, 36.988792, 36.438000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257061, 37.548000, 36.619625>,  <25.629217, 37.429596, 35.968292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257061, 37.548000, 36.619625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618971, 37.402481, 36.708206>,  <25.836117, 37.315170, 36.761353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618971, 37.402481, 36.708206>,  <25.257061, 37.548000, 36.619625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618971, 37.402481, 36.708206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129637, 0.730535, 0.670458,
		-0.405686, -0.577903, 0.708129,
		0.904772, -0.363795, 0.221450,
		25.890402, 37.293343, 36.774643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324450, 37.505451, 37.314152>,  <25.257061, 37.548000, 36.619625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324450, 37.505451, 37.314152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687763, 37.549618, 37.152744>,  <25.905750, 37.576118, 37.055901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687763, 37.549618, 37.152744>,  <25.324450, 37.505451, 37.314152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687763, 37.549618, 37.152744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139655, 0.829186, 0.541246,
		0.394360, -0.547958, 0.737714,
		0.908282, 0.110420, -0.403523,
		25.960247, 37.582745, 37.031689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765907, 37.791466, 37.842484>,  <25.324450, 37.505451, 37.314152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765907, 37.791466, 37.842484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898048, 37.912567, 37.484890>,  <25.977333, 37.985229, 37.270332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898048, 37.912567, 37.484890>,  <25.765907, 37.791466, 37.842484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898048, 37.912567, 37.484890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176245, 0.910713, 0.373549,
		0.927256, -0.280963, 0.247500,
		0.330355, 0.302755, -0.893983,
		25.997154, 38.003395, 37.216694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246519, 38.267803, 37.899200>,  <25.765907, 37.791466, 37.842484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246519, 38.267803, 37.899200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137974, 38.341751, 37.521378>,  <26.072847, 38.386120, 37.294685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137974, 38.341751, 37.521378>,  <26.246519, 38.267803, 37.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137974, 38.341751, 37.521378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080360, 0.982306, 0.169169,
		0.959117, -0.029998, -0.281416,
		-0.271362, 0.184867, -0.944556,
		26.056564, 38.397213, 37.238010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645956, 37.981583, 37.294804>,  <26.246519, 38.267803, 37.899200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645956, 37.981583, 37.294804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411873, 37.696045, 37.448666>,  <26.271423, 37.524723, 37.540981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411873, 37.696045, 37.448666>,  <26.645956, 37.981583, 37.294804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411873, 37.696045, 37.448666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182085, -0.577932, -0.795512,
		0.790174, -0.395503, 0.468192,
		-0.585210, -0.713843, 0.384652,
		26.236309, 37.481892, 37.564060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009399, 37.300541, 37.158138>,  <26.645956, 37.981583, 37.294804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009399, 37.300541, 37.158138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626770, 37.228321, 37.249680>,  <26.397192, 37.184990, 37.304604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626770, 37.228321, 37.249680>,  <27.009399, 37.300541, 37.158138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626770, 37.228321, 37.249680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046518, -0.680478, -0.731290,
		0.287758, -0.710178, 0.642528,
		-0.956573, -0.180545, 0.228849,
		26.339798, 37.174156, 37.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894262, 36.552120, 37.135136>,  <27.009399, 37.300541, 37.158138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894262, 36.552120, 37.135136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560747, 36.762939, 37.069382>,  <26.360638, 36.889431, 37.029930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560747, 36.762939, 37.069382>,  <26.894262, 36.552120, 37.135136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560747, 36.762939, 37.069382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324768, -0.709019, -0.625953,
		-0.446455, -0.468526, 0.762339,
		-0.833789, 0.527044, -0.164383,
		26.310610, 36.921051, 37.020065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371023, 36.159664, 37.245167>,  <26.894262, 36.552120, 37.135136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371023, 36.159664, 37.245167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194601, 36.422726, 37.000885>,  <26.088747, 36.580563, 36.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194601, 36.422726, 37.000885>,  <26.371023, 36.159664, 37.245167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194601, 36.422726, 37.000885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239109, -0.741977, -0.626336,
		-0.865042, -0.130223, 0.484504,
		-0.441054, 0.657656, -0.610704,
		26.062284, 36.620022, 36.817673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613131, 35.940758, 37.171619>,  <26.371023, 36.159664, 37.245167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613131, 35.940758, 37.171619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742167, 36.148209, 36.854897>,  <25.819588, 36.272678, 36.664864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742167, 36.148209, 36.854897>,  <25.613131, 35.940758, 37.171619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742167, 36.148209, 36.854897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229017, -0.768909, -0.596934,
		-0.918416, 0.373902, -0.129266,
		0.322589, 0.518629, -0.791808,
		25.838943, 36.303799, 36.617355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178785, 35.806816, 36.680855>,  <25.613131, 35.940758, 37.171619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178785, 35.806816, 36.680855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497826, 35.927963, 36.472198>,  <25.689249, 36.000652, 36.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497826, 35.927963, 36.472198>,  <25.178785, 35.806816, 36.680855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497826, 35.927963, 36.472198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204680, -0.677597, -0.706377,
		-0.567399, 0.670175, -0.478460,
		0.797599, 0.302867, -0.521639,
		25.737106, 36.018822, 36.315708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010954, 36.049206, 35.909611>,  <25.178785, 35.806816, 36.680855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010954, 36.049206, 35.909611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382904, 35.911602, 35.961746>,  <25.606073, 35.829041, 35.993027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382904, 35.911602, 35.961746>,  <25.010954, 36.049206, 35.909611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382904, 35.911602, 35.961746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104585, -0.586897, -0.802879,
		0.352698, 0.732944, -0.581719,
		0.929874, -0.344013, 0.130343,
		25.661867, 35.808399, 36.000851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352898, 36.243240, 35.205467>,  <25.010954, 36.049206, 35.909611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352898, 36.243240, 35.205467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493120, 35.938103, 35.422787>,  <25.577253, 35.755020, 35.553181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493120, 35.938103, 35.422787>,  <25.352898, 36.243240, 35.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493120, 35.938103, 35.422787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083584, -0.552318, -0.829433,
		0.932805, 0.336174, -0.129857,
		0.350556, -0.762845, 0.543303,
		25.598288, 35.709248, 35.585777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105206, 35.936653, 34.966213>,  <25.352898, 36.243240, 35.205467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105206, 35.936653, 34.966213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852150, 35.661205, 35.107956>,  <25.700317, 35.495937, 35.193001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852150, 35.661205, 35.107956>,  <26.105206, 35.936653, 34.966213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852150, 35.661205, 35.107956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188770, -0.580877, -0.791800,
		0.751089, -0.434031, 0.497476,
		-0.632639, -0.688621, 0.354358,
		25.662359, 35.454620, 35.214264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854191, 35.946262, 34.729137>,  <26.105206, 35.936653, 34.966213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854191, 35.946262, 34.729137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232309, 35.994633, 34.850330>,  <27.459181, 36.023655, 34.923046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232309, 35.994633, 34.850330>,  <26.854191, 35.946262, 34.729137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232309, 35.994633, 34.850330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324158, 0.244001, 0.913994,
		0.036595, -0.962207, 0.269850,
		0.945295, 0.120922, 0.302978,
		27.515898, 36.030910, 34.941223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185579, 35.411259, 35.223038>,  <26.854191, 35.946262, 34.729137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185579, 35.411259, 35.223038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362450, 35.765251, 35.281387>,  <27.468573, 35.977646, 35.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362450, 35.765251, 35.281387>,  <27.185579, 35.411259, 35.223038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362450, 35.765251, 35.281387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330320, 0.009468, 0.943822,
		0.833887, -0.465522, 0.296515,
		0.442177, 0.884986, 0.145876,
		27.495102, 36.030746, 35.325150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428471, 34.586208, 35.308300>,  <27.185579, 35.411259, 35.223038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428471, 34.586208, 35.308300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630695, 34.488697, 34.977245>,  <27.752031, 34.430191, 34.778614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630695, 34.488697, 34.977245>,  <27.428471, 34.586208, 35.308300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630695, 34.488697, 34.977245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804519, 0.479743, 0.350136,
		0.311695, -0.842863, 0.438665,
		0.505564, -0.243779, -0.827633,
		27.782364, 34.415562, 34.728954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160975, 34.701900, 35.414284>,  <27.428471, 34.586208, 35.308300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160975, 34.701900, 35.414284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144032, 34.686916, 35.014923>,  <28.133865, 34.677925, 34.775307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144032, 34.686916, 35.014923>,  <28.160975, 34.701900, 35.414284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144032, 34.686916, 35.014923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733196, 0.677663, -0.056535,
		0.678697, -0.734417, -0.001238,
		-0.042359, -0.037463, -0.998400,
		28.131325, 34.675678, 34.715405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885689, 34.430607, 35.244915>,  <28.160975, 34.701900, 35.414284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885689, 34.430607, 35.244915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636967, 34.639782, 35.011715>,  <28.487734, 34.765289, 34.871796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636967, 34.639782, 35.011715>,  <28.885689, 34.430607, 35.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636967, 34.639782, 35.011715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679751, 0.730083, -0.070122,
		0.388971, -0.439899, -0.809438,
		-0.621804, 0.522941, -0.583003,
		28.450426, 34.796665, 34.836815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149366, 34.529922, 34.639889>,  <28.885689, 34.430607, 35.244915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149366, 34.529922, 34.639889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884779, 34.829716, 34.650745>,  <28.726027, 35.009590, 34.657261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884779, 34.829716, 34.650745>,  <29.149366, 34.529922, 34.639889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884779, 34.829716, 34.650745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640409, 0.583301, -0.499637,
		-0.390301, -0.313111, -0.865810,
		-0.661469, 0.749481, 0.027144,
		28.686338, 35.054562, 34.658890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858118, 34.393089, 34.549374>,  <29.149366, 34.529922, 34.639889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858118, 34.393089, 34.549374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913834, 34.324768, 34.159210>,  <29.947264, 34.283775, 33.925114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913834, 34.324768, 34.159210>,  <29.858118, 34.393089, 34.549374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913834, 34.324768, 34.159210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480398, -0.849682, 0.217390,
		-0.865919, -0.498865, -0.036297,
		0.139289, -0.170805, -0.975410,
		29.955620, 34.273525, 33.866589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616928, 33.752632, 34.212719>,  <29.858118, 34.393089, 34.549374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616928, 33.752632, 34.212719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958406, 33.908646, 34.074688>,  <30.163294, 34.002254, 33.991867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958406, 33.908646, 34.074688>,  <29.616928, 33.752632, 34.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958406, 33.908646, 34.074688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507758, -0.770601, 0.385169,
		-0.115692, -0.504035, -0.855900,
		0.853696, 0.390029, -0.345080,
		30.214516, 34.025654, 33.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937435, 33.117916, 33.828167>,  <29.616928, 33.752632, 34.212719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937435, 33.117916, 33.828167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204403, 33.384972, 33.960114>,  <30.364584, 33.545204, 34.039284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204403, 33.384972, 33.960114>,  <29.937435, 33.117916, 33.828167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204403, 33.384972, 33.960114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570538, -0.743115, 0.349667,
		0.478581, -0.045171, -0.876881,
		0.667418, 0.667638, 0.329869,
		30.404629, 33.585262, 34.059074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702448, 32.901447, 33.805813>,  <29.937435, 33.117916, 33.828167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702448, 32.901447, 33.805813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696383, 33.174843, 34.097733>,  <30.692743, 33.338882, 34.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696383, 33.174843, 34.097733>,  <30.702448, 32.901447, 33.805813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696383, 33.174843, 34.097733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554566, -0.601586, 0.574935,
		0.832001, 0.413441, -0.369920,
		-0.015163, 0.683492, 0.729801,
		30.691833, 33.379890, 34.316673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381935, 32.810482, 34.162807>,  <30.702448, 32.901447, 33.805813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381935, 32.810482, 34.162807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179516, 33.027340, 34.431137>,  <31.058065, 33.157455, 34.592133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179516, 33.027340, 34.431137>,  <31.381935, 32.810482, 34.162807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179516, 33.027340, 34.431137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459351, -0.488876, 0.741618,
		0.730010, 0.683435, -0.001639,
		-0.506046, 0.542141, 0.670821,
		31.027702, 33.189983, 34.632381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835835, 33.003956, 34.743324>,  <31.381935, 32.810482, 34.162807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835835, 33.003956, 34.743324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458019, 32.981457, 34.872742>,  <31.231329, 32.967957, 34.950394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458019, 32.981457, 34.872742>,  <31.835835, 33.003956, 34.743324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458019, 32.981457, 34.872742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321195, -0.363428, 0.874502,
		0.068392, 0.929923, 0.361340,
		-0.944540, -0.056252, 0.323543,
		31.174658, 32.964581, 34.969803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916475, 32.233498, 34.886902>,  <31.835835, 33.003956, 34.743324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916475, 32.233498, 34.886902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775766, 32.344524, 35.244495>,  <31.691341, 32.411140, 35.459053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775766, 32.344524, 35.244495>,  <31.916475, 32.233498, 34.886902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775766, 32.344524, 35.244495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525041, 0.732153, -0.433917,
		-0.774977, -0.622020, -0.111817,
		-0.351772, 0.277567, 0.893987,
		31.670235, 32.427795, 35.512691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205280, 32.170052, 34.853249>,  <31.916475, 32.233498, 34.886902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205280, 32.170052, 34.853249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275263, 32.415180, 35.161491>,  <31.317253, 32.562256, 35.346439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275263, 32.415180, 35.161491>,  <31.205280, 32.170052, 34.853249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275263, 32.415180, 35.161491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646591, 0.661764, -0.379458,
		-0.742502, -0.431882, 0.512025,
		0.174959, 0.612819, 0.770612,
		31.327751, 32.599026, 35.392673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618799, 32.476498, 35.135609>,  <31.205280, 32.170052, 34.853249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618799, 32.476498, 35.135609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897821, 32.744541, 35.237091>,  <31.065235, 32.905369, 35.297981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897821, 32.744541, 35.237091>,  <30.618799, 32.476498, 35.135609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897821, 32.744541, 35.237091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544627, 0.725941, -0.419989,
		-0.465615, 0.154791, 0.871345,
		0.697556, 0.670111, 0.253706,
		31.107088, 32.945576, 35.313202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331909, 32.996346, 35.648182>,  <30.618799, 32.476498, 35.135609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331909, 32.996346, 35.648182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649755, 33.135746, 35.449333>,  <30.840464, 33.219387, 35.330025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649755, 33.135746, 35.449333>,  <30.331909, 32.996346, 35.648182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649755, 33.135746, 35.449333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580736, 0.675061, -0.455015,
		0.177016, 0.650260, 0.738801,
		0.794614, 0.348504, -0.497126,
		30.888140, 33.240295, 35.300194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332422, 33.841469, 35.463093>,  <30.331909, 32.996346, 35.648182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332422, 33.841469, 35.463093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551535, 33.639862, 35.195988>,  <30.683002, 33.518898, 35.035725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551535, 33.639862, 35.195988>,  <30.332422, 33.841469, 35.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551535, 33.639862, 35.195988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416599, 0.527845, -0.740152,
		0.725522, 0.683630, 0.079171,
		0.547780, -0.504014, -0.667762,
		30.715868, 33.488659, 34.995659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686171, 34.333958, 35.191521>,  <30.332422, 33.841469, 35.463093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686171, 34.333958, 35.191521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694923, 34.037552, 34.923069>,  <30.700176, 33.859707, 34.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694923, 34.037552, 34.923069>,  <30.686171, 34.333958, 35.191521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694923, 34.037552, 34.923069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276894, 0.640541, -0.716267,
		0.960651, 0.201507, -0.191165,
		0.021884, -0.741015, -0.671132,
		30.701488, 33.815247, 34.721729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214502, 34.505875, 34.620419>,  <30.686171, 34.333958, 35.191521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214502, 34.505875, 34.620419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935871, 34.264671, 34.464901>,  <30.768692, 34.119949, 34.371590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935871, 34.264671, 34.464901>,  <31.214502, 34.505875, 34.620419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935871, 34.264671, 34.464901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245181, 0.709324, -0.660867,
		0.674288, -0.365022, -0.641946,
		-0.696579, -0.603008, -0.388792,
		30.726898, 34.083767, 34.348263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429960, 34.288052, 33.884010>,  <31.214502, 34.505875, 34.620419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429960, 34.288052, 33.884010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041025, 34.336998, 33.963600>,  <30.807665, 34.366364, 34.011353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041025, 34.336998, 33.963600>,  <31.429960, 34.288052, 33.884010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041025, 34.336998, 33.963600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065744, 0.674025, -0.735777,
		-0.224147, -0.728504, -0.647333,
		-0.972335, 0.122364, 0.198975,
		30.749325, 34.373707, 34.023293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866161, 33.712536, 34.079586>,  <31.429960, 34.288052, 33.884010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866161, 33.712536, 34.079586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016693, 34.001854, 33.847992>,  <32.107014, 34.175446, 33.709034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016693, 34.001854, 33.847992>,  <31.866161, 33.712536, 34.079586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016693, 34.001854, 33.847992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689857, -0.635906, -0.346006,
		-0.618443, -0.269203, -0.738280,
		0.376331, 0.723293, -0.578984,
		32.129593, 34.218842, 33.674297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930651, 33.901493, 34.771748>,  <31.866161, 33.712536, 34.079586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930651, 33.901493, 34.771748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633453, 33.677113, 34.917782>,  <31.455135, 33.542484, 35.005402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633453, 33.677113, 34.917782>,  <31.930651, 33.901493, 34.771748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633453, 33.677113, 34.917782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653634, -0.490830, 0.576063,
		-0.143949, 0.666645, 0.731343,
		-0.742995, -0.560954, 0.365087,
		31.410555, 33.508827, 35.027309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099541, 33.802441, 35.436146>,  <31.930651, 33.901493, 34.771748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099541, 33.802441, 35.436146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808708, 33.536179, 35.368900>,  <31.634209, 33.376423, 35.328552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808708, 33.536179, 35.368900>,  <32.099541, 33.802441, 35.436146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808708, 33.536179, 35.368900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498220, -0.680043, 0.537883,
		-0.472371, 0.307323, 0.826086,
		-0.727078, -0.665653, -0.168118,
		31.590586, 33.336483, 35.318466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031185, 33.485336, 36.123474>,  <32.099541, 33.802441, 35.436146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031185, 33.485336, 36.123474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897116, 33.274479, 35.811119>,  <31.816673, 33.147964, 35.623707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897116, 33.274479, 35.811119>,  <32.031185, 33.485336, 36.123474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897116, 33.274479, 35.811119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603963, -0.756345, 0.251340,
		-0.723109, -0.387381, 0.571883,
		-0.335176, -0.527142, -0.780883,
		31.796562, 33.116337, 35.576855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509850, 34.188614, 36.354725>,  <32.031185, 33.485336, 36.123474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509850, 34.188614, 36.354725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207062, 34.229820, 36.096615>,  <32.025387, 34.254543, 35.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207062, 34.229820, 36.096615>,  <32.509850, 34.188614, 36.354725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207062, 34.229820, 36.096615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631979, 0.366454, -0.682872,
		0.166115, -0.924715, -0.342501,
		-0.756973, 0.103018, -0.645274,
		31.979969, 34.260727, 35.903034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134041, 34.153236, 35.986942>,  <32.509850, 34.188614, 36.354725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134041, 34.153236, 35.986942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440948, 33.948006, 36.140854>,  <33.625092, 33.824867, 36.233200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440948, 33.948006, 36.140854>,  <33.134041, 34.153236, 35.986942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440948, 33.948006, 36.140854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525579, -0.159233, 0.835710,
		-0.367517, -0.843442, -0.391838,
		0.767267, -0.513080, 0.384774,
		33.671127, 33.794083, 36.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842991, 33.550461, 36.308502>,  <33.134041, 34.153236, 35.986942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842991, 33.550461, 36.308502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175426, 33.652836, 36.506001>,  <33.374889, 33.714260, 36.624500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175426, 33.652836, 36.506001>,  <32.842991, 33.550461, 36.308502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175426, 33.652836, 36.506001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529214, 0.091054, 0.843588,
		0.170949, -0.962395, 0.211120,
		0.831089, 0.255939, 0.493748,
		33.424755, 33.729618, 36.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814636, 33.173492, 36.861809>,  <32.842991, 33.550461, 36.308502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814636, 33.173492, 36.861809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072781, 33.460220, 36.967396>,  <33.227665, 33.632259, 37.030746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072781, 33.460220, 36.967396>,  <32.814636, 33.173492, 36.861809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072781, 33.460220, 36.967396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351059, -0.028590, 0.935917,
		0.678433, -0.696669, 0.233196,
		0.645357, 0.716823, 0.263968,
		33.266388, 33.675266, 37.046585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359505, 32.887020, 37.374405>,  <32.814636, 33.173492, 36.861809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359505, 32.887020, 37.374405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302547, 33.277878, 37.437542>,  <33.268372, 33.512394, 37.475422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302547, 33.277878, 37.437542>,  <33.359505, 32.887020, 37.374405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302547, 33.277878, 37.437542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247586, -0.189559, 0.950141,
		0.958344, 0.096219, 0.268920,
		-0.142398, 0.977144, 0.157841,
		33.259827, 33.571022, 37.484894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729992, 32.978653, 38.011150>,  <33.359505, 32.887020, 37.374405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729992, 32.978653, 38.011150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511967, 33.311954, 37.974094>,  <33.381149, 33.511936, 37.951862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511967, 33.311954, 37.974094>,  <33.729992, 32.978653, 38.011150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511967, 33.311954, 37.974094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248783, -0.055235, 0.966983,
		0.800630, 0.550118, 0.237408,
		-0.545068, 0.833258, -0.092637,
		33.348446, 33.561932, 37.946304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828880, 33.381180, 38.706600>,  <33.729992, 32.978653, 38.011150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828880, 33.381180, 38.706600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510998, 33.516403, 38.504944>,  <33.320267, 33.597538, 38.383949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510998, 33.516403, 38.504944>,  <33.828880, 33.381180, 38.706600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510998, 33.516403, 38.504944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531316, 0.014185, 0.847055,
		0.293506, 0.941018, 0.168343,
		-0.794706, 0.338059, -0.504141,
		33.272587, 33.617821, 38.353703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491646, 33.945553, 39.118237>,  <33.828880, 33.381180, 38.706600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491646, 33.945553, 39.118237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223942, 33.769070, 38.879093>,  <33.063320, 33.663181, 38.735607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223942, 33.769070, 38.879093>,  <33.491646, 33.945553, 39.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223942, 33.769070, 38.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629401, -0.091005, 0.771734,
		-0.394900, 0.892781, -0.216789,
		-0.669260, -0.441204, -0.597855,
		33.023163, 33.636707, 38.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163132, 34.084763, 39.766010>,  <33.491646, 33.945553, 39.118237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163132, 34.084763, 39.766010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205658, 34.371124, 39.489986>,  <33.231174, 34.542942, 39.324371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205658, 34.371124, 39.489986>,  <33.163132, 34.084763, 39.766010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205658, 34.371124, 39.489986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847173, -0.298114, -0.439801,
		-0.520571, 0.631355, 0.574801,
		0.106315, 0.715904, -0.690057,
		33.237553, 34.585896, 39.282970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610535, 34.581581, 39.713470>,  <33.163132, 34.084763, 39.766010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610535, 34.581581, 39.713470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782742, 34.555496, 39.353382>,  <32.886066, 34.539845, 39.137329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782742, 34.555496, 39.353382>,  <32.610535, 34.581581, 39.713470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782742, 34.555496, 39.353382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802179, -0.484820, -0.348508,
		-0.413720, 0.872179, -0.261034,
		0.430516, -0.065212, -0.900224,
		32.911896, 34.535934, 39.083313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429291, 33.817245, 39.824680>,  <32.610535, 34.581581, 39.713470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429291, 33.817245, 39.824680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263134, 34.064434, 39.557678>,  <32.163441, 34.212746, 39.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263134, 34.064434, 39.557678>,  <32.429291, 33.817245, 39.824680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263134, 34.064434, 39.557678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574073, -0.391130, -0.719345,
		-0.705615, -0.682006, -0.192288,
		-0.415388, 0.617968, -0.667509,
		32.138519, 34.249825, 39.357426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287689, 33.417625, 39.063770>,  <32.429291, 33.817245, 39.824680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287689, 33.417625, 39.063770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318558, 33.815563, 39.037426>,  <32.337078, 34.054325, 39.021622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318558, 33.815563, 39.037426>,  <32.287689, 33.417625, 39.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318558, 33.815563, 39.037426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569123, -0.098188, -0.816369,
		-0.818623, 0.025517, -0.573764,
		0.077168, 0.994841, -0.065856,
		32.341709, 34.114014, 39.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079163, 33.552605, 38.391602>,  <32.287689, 33.417625, 39.063770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079163, 33.552605, 38.391602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322266, 33.846752, 38.511509>,  <32.468128, 34.023243, 38.583454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322266, 33.846752, 38.511509>,  <32.079163, 33.552605, 38.391602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322266, 33.846752, 38.511509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679039, -0.285510, -0.676306,
		-0.411749, 0.614584, -0.672867,
		0.607757, 0.735371, 0.299768,
		32.504593, 34.067364, 38.601440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269829, 34.045029, 37.800282>,  <32.079163, 33.552605, 38.391602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269829, 34.045029, 37.800282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579075, 34.002151, 38.050335>,  <32.764622, 33.976425, 38.200367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579075, 34.002151, 38.050335>,  <32.269829, 34.045029, 37.800282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579075, 34.002151, 38.050335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633788, 0.168570, -0.754915,
		-0.024461, 0.979844, 0.198260,
		0.773120, -0.107189, 0.625137,
		32.811012, 33.969994, 38.237877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782818, 34.753063, 37.788944>,  <32.269829, 34.045029, 37.800282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782818, 34.753063, 37.788944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952217, 34.392998, 37.829639>,  <33.053856, 34.176960, 37.854057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952217, 34.392998, 37.829639>,  <32.782818, 34.753063, 37.788944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952217, 34.392998, 37.829639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422513, 0.096928, -0.901159,
		0.801329, 0.424630, 0.421380,
		0.423503, -0.900164, 0.101740,
		33.079269, 34.122948, 37.860161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312038, 34.803543, 37.342472>,  <32.782818, 34.753063, 37.788944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312038, 34.803543, 37.342472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324287, 34.418961, 37.451775>,  <33.331638, 34.188213, 37.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324287, 34.418961, 37.451775>,  <33.312038, 34.803543, 37.342472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324287, 34.418961, 37.451775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572973, -0.207123, -0.792970,
		0.819002, 0.180857, 0.544543,
		0.030627, -0.961453, 0.273260,
		33.333477, 34.130524, 37.533752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005733, 34.671181, 37.156616>,  <33.312038, 34.803543, 37.342472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005733, 34.671181, 37.156616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788704, 34.335709, 37.137741>,  <33.658485, 34.134426, 37.126415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788704, 34.335709, 37.137741>,  <34.005733, 34.671181, 37.156616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788704, 34.335709, 37.137741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467740, -0.254981, -0.846288,
		0.697737, -0.481241, 0.530631,
		-0.542570, -0.838685, -0.047186,
		33.625935, 34.084103, 37.123585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511848, 34.075787, 37.212200>,  <34.005733, 34.671181, 37.156616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511848, 34.075787, 37.212200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169437, 34.001831, 37.019104>,  <33.963993, 33.957458, 36.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169437, 34.001831, 37.019104>,  <34.511848, 34.075787, 37.212200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169437, 34.001831, 37.019104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515672, -0.370686, -0.772447,
		-0.036124, -0.910168, 0.412660,
		-0.856024, -0.184893, -0.482739,
		33.912632, 33.946362, 36.874283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535927, 33.420780, 36.914619>,  <34.511848, 34.075787, 37.212200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535927, 33.420780, 36.914619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276279, 33.630322, 36.693996>,  <34.120491, 33.756046, 36.561623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276279, 33.630322, 36.693996>,  <34.535927, 33.420780, 36.914619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276279, 33.630322, 36.693996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548378, -0.180252, -0.816572,
		-0.527188, -0.832516, -0.170267,
		-0.649118, 0.523857, -0.551560,
		34.081543, 33.787479, 36.528530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474403, 32.926590, 36.362442>,  <34.535927, 33.420780, 36.914619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474403, 32.926590, 36.362442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412170, 33.312626, 36.278152>,  <34.374832, 33.544247, 36.227577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412170, 33.312626, 36.278152>,  <34.474403, 32.926590, 36.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412170, 33.312626, 36.278152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486022, -0.110929, -0.866878,
		-0.859987, -0.237285, -0.451795,
		-0.155580, 0.965086, -0.210723,
		34.365498, 33.602150, 36.214935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107590, 33.015450, 35.714310>,  <34.474403, 32.926590, 36.362442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107590, 33.015450, 35.714310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329330, 33.343998, 35.768040>,  <34.462376, 33.541126, 35.800278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329330, 33.343998, 35.768040>,  <34.107590, 33.015450, 35.714310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329330, 33.343998, 35.768040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443308, -0.154804, -0.882900,
		-0.704392, 0.548989, -0.449936,
		0.554355, 0.821369, 0.134329,
		34.495636, 33.590408, 35.808338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088058, 33.407970, 35.087772>,  <34.107590, 33.015450, 35.714310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088058, 33.407970, 35.087772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418320, 33.547558, 35.265095>,  <34.616474, 33.631310, 35.371490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418320, 33.547558, 35.265095>,  <34.088058, 33.407970, 35.087772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418320, 33.547558, 35.265095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516284, -0.150501, -0.843090,
		-0.227491, 0.924972, -0.304427,
		0.825651, 0.348966, 0.443310,
		34.666016, 33.652248, 35.398087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359722, 33.801407, 34.604836>,  <34.088058, 33.407970, 35.087772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359722, 33.801407, 34.604836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648632, 33.696960, 34.861004>,  <34.821976, 33.634293, 35.014706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648632, 33.696960, 34.861004>,  <34.359722, 33.801407, 34.604836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648632, 33.696960, 34.861004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621838, -0.160129, -0.766601,
		0.302720, 0.951934, 0.046714,
		0.722273, -0.261114, 0.640423,
		34.865314, 33.618626, 35.053131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903988, 34.267673, 34.442703>,  <34.359722, 33.801407, 34.604836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903988, 34.267673, 34.442703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040211, 33.937649, 34.623058>,  <35.121944, 33.739635, 34.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040211, 33.937649, 34.623058>,  <34.903988, 34.267673, 34.442703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040211, 33.937649, 34.623058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672109, -0.121721, -0.730379,
		0.657487, 0.551783, 0.513075,
		0.340559, -0.825057, 0.450888,
		35.142380, 33.690132, 34.758324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643700, 34.299503, 34.294849>,  <34.903988, 34.267673, 34.442703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643700, 34.299503, 34.294849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601852, 33.911140, 34.381016>,  <35.576744, 33.678123, 34.432716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601852, 33.911140, 34.381016>,  <35.643700, 34.299503, 34.294849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601852, 33.911140, 34.381016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566006, -0.236228, -0.789831,
		0.817736, 0.039293, 0.574251,
		-0.104619, -0.970903, 0.215412,
		35.570465, 33.619869, 34.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314972, 33.961323, 34.209488>,  <35.643700, 34.299503, 34.294849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314972, 33.961323, 34.209488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072906, 33.643505, 34.189552>,  <35.927666, 33.452816, 34.177589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072906, 33.643505, 34.189552>,  <36.314972, 33.961323, 34.209488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072906, 33.643505, 34.189552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316231, -0.182458, -0.930971,
		0.730600, -0.579150, 0.361675,
		-0.605163, -0.794540, -0.049841,
		35.891357, 33.405144, 34.174599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660366, 33.331985, 34.013161>,  <36.314972, 33.961323, 34.209488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660366, 33.331985, 34.013161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277767, 33.283169, 33.907166>,  <36.048206, 33.253880, 33.843571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277767, 33.283169, 33.907166>,  <36.660366, 33.331985, 34.013161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277767, 33.283169, 33.907166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283391, -0.172971, -0.943277,
		0.069289, -0.977336, 0.200033,
		-0.956498, -0.122046, -0.264983,
		35.990818, 33.246555, 33.827671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697067, 32.770634, 33.660896>,  <36.660366, 33.331985, 34.013161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697067, 32.770634, 33.660896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360420, 32.962349, 33.561333>,  <36.158432, 33.077377, 33.501595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360420, 32.962349, 33.561333>,  <36.697067, 32.770634, 33.660896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360420, 32.962349, 33.561333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060693, -0.374028, -0.925429,
		-0.536648, -0.793967, 0.285700,
		-0.841620, 0.479290, -0.248910,
		36.107933, 33.106136, 33.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587040, 32.537876, 33.015213>,  <36.697067, 32.770634, 33.660896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587040, 32.537876, 33.015213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294926, 32.811131, 33.016132>,  <36.119656, 32.975082, 33.016685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294926, 32.811131, 33.016132>,  <36.587040, 32.537876, 33.015213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294926, 32.811131, 33.016132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065774, 0.073665, -0.995112,
		-0.679970, -0.726563, -0.098729,
		-0.730284, 0.683140, 0.002301,
		36.075840, 33.016071, 33.016823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331104, 32.505852, 32.248573>,  <36.587040, 32.537876, 33.015213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331104, 32.505852, 32.248573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207458, 32.843403, 32.423992>,  <36.133270, 33.045933, 32.529243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207458, 32.843403, 32.423992>,  <36.331104, 32.505852, 32.248573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207458, 32.843403, 32.423992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082412, 0.435627, -0.896347,
		-0.947448, -0.313213, -0.065112,
		-0.309112, 0.843876, 0.438547,
		36.114723, 33.096565, 32.555557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919415, 32.768536, 31.701124>,  <36.331104, 32.505852, 32.248573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919415, 32.768536, 31.701124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995728, 33.074055, 31.947771>,  <36.041515, 33.257366, 32.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995728, 33.074055, 31.947771>,  <35.919415, 32.768536, 31.701124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995728, 33.074055, 31.947771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213247, 0.645401, -0.733473,
		-0.958190, 0.008442, 0.286009,
		0.190782, 0.763797, 0.616617,
		36.052963, 33.303192, 32.132755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327400, 33.270405, 31.655409>,  <35.919415, 32.768536, 31.701124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327400, 33.270405, 31.655409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651138, 33.467384, 31.783445>,  <35.845379, 33.585571, 31.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651138, 33.467384, 31.783445>,  <35.327400, 33.270405, 31.655409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651138, 33.467384, 31.783445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073610, 0.625741, -0.776550,
		-0.582705, 0.604934, 0.542688,
		0.809343, 0.492447, 0.320093,
		35.893940, 33.615120, 31.879473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113998, 33.917068, 31.579098>,  <35.327400, 33.270405, 31.655409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113998, 33.917068, 31.579098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512665, 33.922451, 31.611263>,  <35.751865, 33.925682, 31.630562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512665, 33.922451, 31.611263>,  <35.113998, 33.917068, 31.579098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512665, 33.922451, 31.611263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055490, 0.610649, -0.789955,
		-0.059735, 0.791787, 0.607869,
		0.996671, 0.013458, 0.080413,
		35.811665, 33.926487, 31.635387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308140, 34.543835, 31.463327>,  <35.113998, 33.917068, 31.579098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308140, 34.543835, 31.463327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647182, 34.346634, 31.384827>,  <35.850609, 34.228313, 31.337727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647182, 34.346634, 31.384827>,  <35.308140, 34.543835, 31.463327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647182, 34.346634, 31.384827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166076, 0.597740, -0.784300,
		0.503972, 0.632182, 0.588522,
		0.847603, -0.493005, -0.196254,
		35.901463, 34.198734, 31.325951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941238, 35.059937, 31.467649>,  <35.308140, 34.543835, 31.463327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941238, 35.059937, 31.467649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961948, 34.729340, 31.243423>,  <35.974373, 34.530983, 31.108889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961948, 34.729340, 31.243423>,  <35.941238, 35.059937, 31.467649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961948, 34.729340, 31.243423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275307, 0.551378, -0.787521,
		0.959961, -0.113555, 0.256085,
		0.051772, -0.826491, -0.560564,
		35.977482, 34.481392, 31.075254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348572, 35.391247, 30.979351>,  <35.941238, 35.059937, 31.467649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348572, 35.391247, 30.979351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 35.026669, 30.833345>,  <36.227077, 34.807922, 30.745743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 35.026669, 30.833345>,  <36.348572, 35.391247, 30.979351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272636, 35.026669, 30.833345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392295, 0.270393, -0.879200,
		0.900037, -0.310096, 0.306225,
		-0.189836, -0.911443, -0.365013,
		36.215687, 34.753235, 30.723841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841801, 35.204605, 30.460133>,  <36.348572, 35.391247, 30.979351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841801, 35.204605, 30.460133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532768, 34.969284, 30.364614>,  <36.347351, 34.828091, 30.307304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532768, 34.969284, 30.364614>,  <36.841801, 35.204605, 30.460133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532768, 34.969284, 30.364614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072823, 0.455727, -0.887136,
		0.630729, -0.667992, -0.394927,
		-0.772579, -0.588302, -0.238795,
		36.300995, 34.792793, 30.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069572, 34.897457, 29.765749>,  <36.841801, 35.204605, 30.460133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069572, 34.897457, 29.765749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671413, 34.895710, 29.804031>,  <36.432518, 34.894661, 29.827002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671413, 34.895710, 29.804031>,  <37.069572, 34.897457, 29.765749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671413, 34.895710, 29.804031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091141, 0.351073, -0.931902,
		-0.029531, -0.936338, -0.349856,
		-0.995400, -0.004366, 0.095706,
		36.372795, 34.894402, 29.832743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866573, 34.625416, 29.227949>,  <37.069572, 34.897457, 29.765749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866573, 34.625416, 29.227949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541336, 34.819950, 29.355923>,  <36.346195, 34.936672, 29.432707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541336, 34.819950, 29.355923>,  <36.866573, 34.625416, 29.227949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541336, 34.819950, 29.355923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090919, 0.436747, -0.894978,
		-0.574994, -0.756786, -0.310897,
		-0.813090, 0.486340, 0.319933,
		36.297409, 34.965851, 29.451902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370892, 34.536625, 28.661493>,  <36.866573, 34.625416, 29.227949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370892, 34.536625, 28.661493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212593, 34.841347, 28.866640>,  <36.117615, 35.024181, 28.989729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212593, 34.841347, 28.866640>,  <36.370892, 34.536625, 28.661493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212593, 34.841347, 28.866640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116505, 0.512301, -0.850867,
		-0.910940, -0.396478, -0.113987,
		-0.395746, 0.761809, 0.512867,
		36.093868, 35.069889, 29.020500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742092, 34.820919, 28.315182>,  <36.370892, 34.536625, 28.661493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742092, 34.820919, 28.315182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844490, 35.133671, 28.542557>,  <35.905930, 35.321323, 28.678982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844490, 35.133671, 28.542557>,  <35.742092, 34.820919, 28.315182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844490, 35.133671, 28.542557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216224, 0.619449, -0.754672,
		-0.942185, 0.070285, 0.327640,
		0.255999, 0.781884, 0.568438,
		35.921291, 35.368237, 28.713089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249134, 35.306316, 28.166260>,  <35.742092, 34.820919, 28.315182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249134, 35.306316, 28.166260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545544, 35.517826, 28.331802>,  <35.723389, 35.644733, 28.431128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545544, 35.517826, 28.331802>,  <35.249134, 35.306316, 28.166260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545544, 35.517826, 28.331802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017298, 0.601099, -0.798987,
		-0.671253, 0.599229, 0.436283,
		0.741026, 0.528776, 0.413855,
		35.767853, 35.676460, 28.455959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985435, 35.981556, 28.145172>,  <35.249134, 35.306316, 28.166260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985435, 35.981556, 28.145172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384460, 35.987846, 28.172354>,  <35.623875, 35.991619, 28.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384460, 35.987846, 28.172354>,  <34.985435, 35.981556, 28.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384460, 35.987846, 28.172354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048289, 0.547322, -0.835527,
		-0.050333, 0.836774, 0.545230,
		0.997564, 0.015726, 0.067956,
		35.683731, 35.992565, 28.192741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153896, 36.604427, 27.892132>,  <34.985435, 35.981556, 28.145172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153896, 36.604427, 27.892132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501728, 36.408653, 27.865965>,  <35.710426, 36.291187, 27.850266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501728, 36.408653, 27.865965>,  <35.153896, 36.604427, 27.892132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501728, 36.408653, 27.865965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144379, 0.378707, -0.914185,
		0.472207, 0.785516, 0.399982,
		0.869583, -0.489434, -0.065416,
		35.762604, 36.261822, 27.846340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490746, 36.997131, 27.388399>,  <35.153896, 36.604427, 27.892132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490746, 36.997131, 27.388399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713844, 36.666454, 27.418034>,  <35.847706, 36.468048, 27.435814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713844, 36.666454, 27.418034>,  <35.490746, 36.997131, 27.388399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713844, 36.666454, 27.418034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401336, 0.190483, -0.895905,
		0.726529, 0.529424, 0.438024,
		0.557750, -0.826696, 0.074085,
		35.881168, 36.418446, 27.440260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269615, 37.256229, 27.341742>,  <35.490746, 36.997131, 27.388399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269615, 37.256229, 27.341742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269123, 36.868496, 27.243448>,  <36.268829, 36.635857, 27.184473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269123, 36.868496, 27.243448>,  <36.269615, 37.256229, 27.341742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269123, 36.868496, 27.243448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267910, 0.236431, -0.933983,
		0.963443, -0.066985, 0.259404,
		-0.001232, -0.969337, -0.245734,
		36.268753, 36.577694, 27.169727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952450, 37.139912, 27.070578>,  <36.269615, 37.256229, 27.341742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952450, 37.139912, 27.070578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683594, 36.878136, 26.932045>,  <36.522282, 36.721069, 26.848925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683594, 36.878136, 26.932045>,  <36.952450, 37.139912, 27.070578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683594, 36.878136, 26.932045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206340, 0.283660, -0.936462,
		0.711096, -0.700892, -0.055621,
		-0.672136, -0.654437, -0.346331,
		36.481953, 36.681805, 26.828146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399754, 36.810856, 26.559111>,  <36.952450, 37.139912, 27.070578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399754, 36.810856, 26.559111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017151, 36.726215, 26.478786>,  <36.787590, 36.675430, 26.430592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017151, 36.726215, 26.478786>,  <37.399754, 36.810856, 26.559111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017151, 36.726215, 26.478786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156065, 0.210397, -0.965079,
		0.246463, -0.954441, -0.168222,
		-0.956504, -0.211602, -0.200809,
		36.730198, 36.662735, 26.418543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346172, 36.232677, 26.019854>,  <37.399754, 36.810856, 26.559111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346172, 36.232677, 26.019854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003429, 36.438816, 26.025782>,  <36.797783, 36.562500, 26.029339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003429, 36.438816, 26.025782>,  <37.346172, 36.232677, 26.019854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003429, 36.438816, 26.025782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115048, 0.219147, -0.968885,
		-0.502561, -0.828487, -0.247067,
		-0.856853, 0.515349, 0.014819,
		36.746372, 36.593422, 26.030228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090084, 36.036781, 25.357794>,  <37.346172, 36.232677, 26.019854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090084, 36.036781, 25.357794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890556, 36.365723, 25.467279>,  <36.770840, 36.563087, 25.532970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890556, 36.365723, 25.467279>,  <37.090084, 36.036781, 25.357794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890556, 36.365723, 25.467279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014877, 0.323886, -0.945979,
		-0.866578, -0.467802, -0.173795,
		-0.498821, 0.822350, 0.273713,
		36.740910, 36.612427, 25.549393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493504, 36.077740, 24.832397>,  <37.090084, 36.036781, 25.357794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493504, 36.077740, 24.832397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577053, 36.429096, 25.004353>,  <36.627182, 36.639908, 25.107527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577053, 36.429096, 25.004353>,  <36.493504, 36.077740, 24.832397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577053, 36.429096, 25.004353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078304, 0.423153, -0.902669,
		-0.974803, 0.222204, 0.019604,
		0.208872, 0.878389, 0.429890,
		36.639713, 36.692612, 25.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051010, 36.426739, 24.511843>,  <36.493504, 36.077740, 24.832397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051010, 36.426739, 24.511843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352364, 36.664680, 24.623953>,  <36.533176, 36.807446, 24.691219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352364, 36.664680, 24.623953>,  <36.051010, 36.426739, 24.511843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352364, 36.664680, 24.623953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060414, 0.487036, -0.871290,
		-0.654799, 0.639484, 0.402864,
		0.753385, 0.594858, 0.280277,
		36.578381, 36.843140, 24.708036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859360, 37.022720, 24.189402>,  <36.051010, 36.426739, 24.511843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859360, 37.022720, 24.189402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224754, 37.102535, 24.331236>,  <36.443989, 37.150425, 24.416336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224754, 37.102535, 24.331236>,  <35.859360, 37.022720, 24.189402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224754, 37.102535, 24.331236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206111, 0.524460, -0.826112,
		-0.350808, 0.827724, 0.437958,
		0.913483, 0.199538, 0.354588,
		36.498798, 37.162395, 24.437613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937462, 37.786850, 24.193274>,  <35.859360, 37.022720, 24.189402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937462, 37.786850, 24.193274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295666, 37.613811, 24.151482>,  <36.510590, 37.509987, 24.126408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295666, 37.613811, 24.151482>,  <35.937462, 37.786850, 24.193274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295666, 37.613811, 24.151482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254031, 0.689643, -0.678130,
		0.365410, 0.580734, 0.727478,
		0.895513, -0.432597, -0.104478,
		36.564320, 37.484032, 24.120138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349648, 38.330776, 24.291210>,  <35.937462, 37.786850, 24.193274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349648, 38.330776, 24.291210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582653, 38.086678, 24.076441>,  <36.722454, 37.940220, 23.947580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582653, 38.086678, 24.076441>,  <36.349648, 38.330776, 24.291210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582653, 38.086678, 24.076441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233899, 0.758471, -0.608287,
		0.778441, 0.228749, 0.584554,
		0.582512, -0.610242, -0.536921,
		36.757408, 37.903606, 23.915365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869125, 38.686012, 24.071133>,  <36.349648, 38.330776, 24.291210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869125, 38.686012, 24.071133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881931, 38.378098, 23.816135>,  <36.889614, 38.193348, 23.663137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881931, 38.378098, 23.816135>,  <36.869125, 38.686012, 24.071133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881931, 38.378098, 23.816135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182940, 0.631560, -0.753436,
		0.982603, -0.092502, 0.161045,
		0.032015, -0.769789, -0.637495,
		36.891537, 38.147160, 23.624887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454762, 38.816563, 23.730286>,  <36.869125, 38.686012, 24.071133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454762, 38.816563, 23.730286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296219, 38.553806, 23.473724>,  <37.201092, 38.396152, 23.319788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296219, 38.553806, 23.473724>,  <37.454762, 38.816563, 23.730286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296219, 38.553806, 23.473724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387271, 0.513801, -0.765526,
		0.832420, -0.551818, 0.050745,
		-0.396357, -0.656891, -0.641401,
		37.177311, 38.356739, 23.281303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988400, 38.696373, 23.163315>,  <37.454762, 38.816563, 23.730286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988400, 38.696373, 23.163315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632542, 38.588741, 23.015728>,  <37.419029, 38.524162, 22.927176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632542, 38.588741, 23.015728>,  <37.988400, 38.696373, 23.163315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632542, 38.588741, 23.015728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157889, 0.576898, -0.801411,
		0.428496, -0.771224, -0.470748,
		-0.889642, -0.269076, -0.368966,
		37.365650, 38.508018, 22.905039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166725, 38.444305, 22.546236>,  <37.988400, 38.696373, 23.163315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166725, 38.444305, 22.546236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786709, 38.568779, 22.536585>,  <37.558697, 38.643463, 22.530794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786709, 38.568779, 22.536585>,  <38.166725, 38.444305, 22.546236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786709, 38.568779, 22.536585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201059, 0.551044, -0.809892,
		-0.238730, -0.774284, -0.586082,
		-0.950044, 0.311182, -0.024126,
		37.501694, 38.662132, 22.529346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029865, 38.405354, 21.923775>,  <38.166725, 38.444305, 22.546236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029865, 38.405354, 21.923775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755299, 38.668335, 22.048088>,  <37.590557, 38.826122, 22.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755299, 38.668335, 22.048088>,  <38.029865, 38.405354, 21.923775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755299, 38.668335, 22.048088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160638, 0.553894, -0.816943,
		-0.709243, -0.510841, -0.485815,
		-0.686418, 0.657452, 0.310785,
		37.549374, 38.865570, 22.141323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630016, 38.578083, 21.323616>,  <38.029865, 38.405354, 21.923775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630016, 38.578083, 21.323616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552685, 38.886597, 21.566185>,  <37.506287, 39.071705, 21.711725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552685, 38.886597, 21.566185>,  <37.630016, 38.578083, 21.323616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552685, 38.886597, 21.566185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009727, 0.616545, -0.787260,
		-0.981086, -0.158099, -0.111695,
		-0.193330, 0.771283, 0.606421,
		37.494686, 39.117981, 21.748112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435741, 39.026012, 20.939980>,  <37.630016, 38.578083, 21.323616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435741, 39.026012, 20.939980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437305, 39.274063, 21.253775>,  <37.438244, 39.422894, 21.442053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437305, 39.274063, 21.253775>,  <37.435741, 39.026012, 20.939980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437305, 39.274063, 21.253775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082488, 0.782022, -0.617768,
		-0.996584, -0.062293, 0.054214,
		0.003914, 0.620130, 0.784489,
		37.438480, 39.460102, 21.489122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860420, 39.484688, 20.770670>,  <37.435741, 39.026012, 20.939980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860420, 39.484688, 20.770670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133789, 39.642059, 21.016647>,  <37.297810, 39.736481, 21.164234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133789, 39.642059, 21.016647>,  <36.860420, 39.484688, 20.770670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133789, 39.642059, 21.016647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001390, 0.841655, -0.540014,
		-0.730024, 0.369912, 0.574657,
		0.683420, 0.393424, 0.614942,
		37.338814, 39.760086, 21.201130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639988, 40.101673, 21.221075>,  <36.860420, 39.484688, 20.770670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639988, 40.101673, 21.221075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022614, 40.105488, 21.104525>,  <37.252190, 40.107777, 21.034594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022614, 40.105488, 21.104525>,  <36.639988, 40.101673, 21.221075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022614, 40.105488, 21.104525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162108, 0.848093, -0.504439,
		0.242305, 0.529762, 0.812798,
		0.956561, 0.009533, -0.291376,
		37.309582, 40.108349, 21.017113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982735, 40.737850, 21.327555>,  <36.639988, 40.101673, 21.221075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982735, 40.737850, 21.327555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175663, 40.586182, 21.011684>,  <37.291420, 40.495182, 20.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175663, 40.586182, 21.011684>,  <36.982735, 40.737850, 21.327555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175663, 40.586182, 21.011684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110847, 0.867802, -0.484388,
		0.868951, 0.321166, 0.376533,
		0.482326, -0.379172, -0.789678,
		37.320362, 40.472431, 20.774780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679195, 41.107128, 21.105717>,  <36.982735, 40.737850, 21.327555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679195, 41.107128, 21.105717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497791, 40.942368, 20.789574>,  <37.388950, 40.843510, 20.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497791, 40.942368, 20.789574>,  <37.679195, 41.107128, 21.105717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497791, 40.942368, 20.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034867, 0.877918, -0.477539,
		0.890572, -0.244124, -0.383777,
		-0.453503, -0.411902, -0.790361,
		37.361740, 40.818798, 20.552465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134640, 41.345104, 20.607166>,  <37.679195, 41.107128, 21.105717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134640, 41.345104, 20.607166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775288, 41.253956, 20.456976>,  <37.559677, 41.199265, 20.366863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775288, 41.253956, 20.456976>,  <38.134640, 41.345104, 20.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775288, 41.253956, 20.456976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012135, 0.841675, -0.539848,
		0.439044, -0.489546, -0.753382,
		-0.898383, -0.227875, -0.375473,
		37.505772, 41.185593, 20.344334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049881, 41.429432, 19.883179>,  <38.134640, 41.345104, 20.607166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049881, 41.429432, 19.883179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676258, 41.466446, 20.021154>,  <37.452084, 41.488655, 20.103939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676258, 41.466446, 20.021154>,  <38.049881, 41.429432, 19.883179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676258, 41.466446, 20.021154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143805, 0.786640, -0.600431,
		-0.326902, -0.610439, -0.721457,
		-0.934053, 0.092533, 0.344938,
		37.396042, 41.494205, 20.124636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845432, 41.735275, 19.928457>,  <38.049881, 41.429432, 19.883179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845432, 41.735275, 19.928457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613796, 41.612705, 19.626261>,  <38.474815, 41.539165, 19.444942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613796, 41.612705, 19.626261>,  <38.845432, 41.735275, 19.928457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613796, 41.612705, 19.626261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314310, 0.771130, -0.553685,
		0.752240, -0.558091, -0.350242,
		-0.579089, -0.306420, -0.755489,
		38.440071, 41.520779, 19.399614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884010, 41.016083, 20.291794>,  <38.845432, 41.735275, 19.928457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884010, 41.016083, 20.291794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743740, 41.126575, 20.649727>,  <38.659576, 41.192871, 20.864487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743740, 41.126575, 20.649727>,  <38.884010, 41.016083, 20.291794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743740, 41.126575, 20.649727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830298, -0.350253, 0.433506,
		0.433165, 0.894997, -0.106527,
		-0.350675, 0.276229, 0.894832,
		38.638538, 41.209446, 20.918177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361462, 41.531448, 20.749205>,  <38.884010, 41.016083, 20.291794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361462, 41.531448, 20.749205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133884, 41.290348, 20.972986>,  <38.997337, 41.145687, 21.107256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133884, 41.290348, 20.972986>,  <39.361462, 41.531448, 20.749205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133884, 41.290348, 20.972986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821025, -0.455287, 0.344428,
		0.047108, 0.655289, 0.753908,
		-0.568945, -0.602753, 0.559456,
		38.963200, 41.109524, 21.140823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802540, 41.142467, 20.977079>,  <39.361462, 41.531448, 20.749205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802540, 41.142467, 20.977079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496239, 41.007786, 21.196259>,  <39.312458, 40.926975, 21.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496239, 41.007786, 21.196259>,  <39.802540, 41.142467, 20.977079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496239, 41.007786, 21.196259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631813, -0.552990, 0.543152,
		0.120128, 0.762123, 0.636190,
		-0.765755, -0.336706, 0.547949,
		39.266514, 40.906773, 21.360643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195343, 40.796921, 21.497253>,  <39.802540, 41.142467, 20.977079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195343, 40.796921, 21.497253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808136, 40.762436, 21.591496>,  <39.575813, 40.741745, 21.648041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808136, 40.762436, 21.591496>,  <40.195343, 40.796921, 21.497253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808136, 40.762436, 21.591496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234744, -0.642620, 0.729338,
		0.088529, 0.761320, 0.642304,
		-0.968017, -0.086210, 0.235606,
		39.517731, 40.736572, 21.662178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116268, 41.002308, 22.100838>,  <40.195343, 40.796921, 21.497253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116268, 41.002308, 22.100838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842117, 40.713352, 22.064163>,  <39.677628, 40.539978, 22.042158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842117, 40.713352, 22.064163>,  <40.116268, 41.002308, 22.100838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842117, 40.713352, 22.064163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455242, -0.523345, 0.720323,
		-0.568338, 0.451955, 0.687552,
		-0.685381, -0.722390, -0.091688,
		39.636501, 40.496635, 22.036657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906712, 40.922035, 22.725309>,  <40.116268, 41.002308, 22.100838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906712, 40.922035, 22.725309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761974, 40.590302, 22.555008>,  <39.675133, 40.391262, 22.452827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761974, 40.590302, 22.555008>,  <39.906712, 40.922035, 22.725309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761974, 40.590302, 22.555008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101217, -0.488954, 0.866417,
		-0.926726, 0.270417, 0.260870,
		-0.361847, -0.829336, -0.425756,
		39.653419, 40.341499, 22.427280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284164, 40.813679, 23.151176>,  <39.906712, 40.922035, 22.725309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284164, 40.813679, 23.151176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378708, 40.480129, 22.951662>,  <39.435432, 40.279999, 22.831953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378708, 40.480129, 22.951662>,  <39.284164, 40.813679, 23.151176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378708, 40.480129, 22.951662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200770, -0.460340, 0.864742,
		-0.950698, -0.304530, 0.058612,
		0.236358, -0.833876, -0.498785,
		39.449615, 40.229965, 22.802027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892742, 40.293156, 23.443712>,  <39.284164, 40.813679, 23.151176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892742, 40.293156, 23.443712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207176, 40.109245, 23.278460>,  <39.395836, 39.998898, 23.179308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207176, 40.109245, 23.278460>,  <38.892742, 40.293156, 23.443712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207176, 40.109245, 23.278460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039881, -0.629247, 0.776181,
		-0.616824, -0.626624, -0.476309,
		0.786090, -0.459772, -0.413125,
		39.443001, 39.971313, 23.154520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759624, 39.604553, 23.484121>,  <38.892742, 40.293156, 23.443712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759624, 39.604553, 23.484121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153191, 39.601620, 23.412718>,  <39.389328, 39.599861, 23.369877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153191, 39.601620, 23.412718>,  <38.759624, 39.604553, 23.484121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153191, 39.601620, 23.412718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115658, -0.735383, 0.667708,
		-0.136169, -0.677611, -0.722704,
		0.983911, -0.007335, -0.178507,
		39.448364, 39.599419, 23.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908924, 38.926170, 23.507612>,  <38.759624, 39.604553, 23.484121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908924, 38.926170, 23.507612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260342, 39.111336, 23.554735>,  <39.471191, 39.222435, 23.583008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260342, 39.111336, 23.554735>,  <38.908924, 38.926170, 23.507612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260342, 39.111336, 23.554735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232481, -0.629822, 0.741133,
		0.417278, -0.623727, -0.660942,
		0.878540, 0.462915, 0.117806,
		39.523903, 39.250210, 23.590076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458023, 38.426582, 23.637581>,  <38.908924, 38.926170, 23.507612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458023, 38.426582, 23.637581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626369, 38.769524, 23.756113>,  <39.727379, 38.975288, 23.827232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626369, 38.769524, 23.756113>,  <39.458023, 38.426582, 23.637581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626369, 38.769524, 23.756113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397313, -0.467896, 0.789440,
		0.815482, -0.214513, -0.537561,
		0.420868, 0.857354, 0.296332,
		39.752628, 39.026730, 23.845013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107445, 38.243141, 23.878155>,  <39.458023, 38.426582, 23.637581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107445, 38.243141, 23.878155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012794, 38.588558, 24.056278>,  <39.956005, 38.795811, 24.163153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012794, 38.588558, 24.056278>,  <40.107445, 38.243141, 23.878155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012794, 38.588558, 24.056278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350051, -0.351775, 0.868170,
		0.906352, 0.361311, -0.219046,
		-0.236624, 0.863544, 0.445309,
		39.941807, 38.847622, 24.189871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650288, 38.311592, 24.361494>,  <40.107445, 38.243141, 23.878155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650288, 38.311592, 24.361494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370308, 38.573357, 24.475912>,  <40.202320, 38.730415, 24.544563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370308, 38.573357, 24.475912>,  <40.650288, 38.311592, 24.361494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370308, 38.573357, 24.475912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168879, -0.237504, 0.956594,
		0.693940, 0.717873, 0.055724,
		-0.699948, 0.654409, 0.286047,
		40.160324, 38.769680, 24.561726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962433, 38.669281, 24.836485>,  <40.650288, 38.311592, 24.361494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962433, 38.669281, 24.836485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574528, 38.715469, 24.922493>,  <40.341785, 38.743183, 24.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574528, 38.715469, 24.922493>,  <40.962433, 38.669281, 24.836485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574528, 38.715469, 24.922493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200376, -0.126315, 0.971542,
		0.139343, 0.985247, 0.099358,
		-0.969759, 0.115468, 0.215021,
		40.283600, 38.750111, 24.987000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928978, 39.109039, 25.412283>,  <40.962433, 38.669281, 24.836485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928978, 39.109039, 25.412283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585392, 38.905159, 25.392780>,  <40.379238, 38.782829, 25.381079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585392, 38.905159, 25.392780>,  <40.928978, 39.109039, 25.412283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585392, 38.905159, 25.392780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121621, -0.295598, 0.947539,
		-0.497376, 0.807976, 0.315900,
		-0.858968, -0.509703, -0.048757,
		40.327702, 38.752247, 25.378153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692814, 39.204659, 26.110491>,  <40.928978, 39.109039, 25.412283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692814, 39.204659, 26.110491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463482, 38.937485, 25.920691>,  <40.325882, 38.777180, 25.806810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463482, 38.937485, 25.920691>,  <40.692814, 39.204659, 26.110491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463482, 38.937485, 25.920691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327942, -0.343641, 0.879980,
		-0.750828, 0.660131, -0.022023,
		-0.573334, -0.667935, -0.474500,
		40.291481, 38.737103, 25.778341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014824, 39.287659, 26.244936>,  <40.692814, 39.204659, 26.110491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014824, 39.287659, 26.244936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039932, 38.910866, 26.113035>,  <40.054996, 38.684792, 26.033895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039932, 38.910866, 26.113035>,  <40.014824, 39.287659, 26.244936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039932, 38.910866, 26.113035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472978, -0.319023, 0.821289,
		-0.878835, 0.104409, -0.465562,
		0.062775, -0.941978, -0.329752,
		40.058765, 38.628273, 26.014111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303162, 39.019459, 26.336706>,  <40.014824, 39.287659, 26.244936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303162, 39.019459, 26.336706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574707, 38.727421, 26.367941>,  <39.737637, 38.552197, 26.386683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574707, 38.727421, 26.367941>,  <39.303162, 39.019459, 26.336706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574707, 38.727421, 26.367941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331420, -0.209777, 0.919867,
		-0.655213, -0.650345, -0.384379,
		0.678865, -0.730099, 0.078089,
		39.778366, 38.508392, 26.391367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943005, 38.377888, 26.535408>,  <39.303162, 39.019459, 26.336706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943005, 38.377888, 26.535408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322784, 38.352810, 26.658442>,  <39.550652, 38.337765, 26.732262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322784, 38.352810, 26.658442>,  <38.943005, 38.377888, 26.535408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322784, 38.352810, 26.658442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309294, -0.354217, 0.882535,
		0.053625, -0.933059, -0.355702,
		0.949453, -0.062691, 0.307584,
		39.607620, 38.334003, 26.750717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980564, 37.728481, 26.954622>,  <38.943005, 38.377888, 26.535408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980564, 37.728481, 26.954622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306957, 37.941471, 27.044634>,  <39.502792, 38.069263, 27.098640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306957, 37.941471, 27.044634>,  <38.980564, 37.728481, 26.954622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306957, 37.941471, 27.044634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030378, -0.349237, 0.936542,
		0.577273, -0.771041, -0.268797,
		0.815986, 0.532475, 0.225028,
		39.551754, 38.101212, 27.112143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363831, 37.319611, 27.428219>,  <38.980564, 37.728481, 26.954622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363831, 37.319611, 27.428219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551250, 37.668320, 27.485447>,  <39.663704, 37.877544, 27.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551250, 37.668320, 27.485447>,  <39.363831, 37.319611, 27.428219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551250, 37.668320, 27.485447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102955, -0.214728, 0.971232,
		0.877417, -0.440342, -0.190364,
		0.468551, 0.871775, 0.143071,
		39.691814, 37.929852, 27.528368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005852, 37.165916, 27.798786>,  <39.363831, 37.319611, 27.428219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005852, 37.165916, 27.798786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908981, 37.547726, 27.868349>,  <39.850861, 37.776810, 27.910088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908981, 37.547726, 27.868349>,  <40.005852, 37.165916, 27.798786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908981, 37.547726, 27.868349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047713, -0.167309, 0.984749,
		0.969059, 0.246778, -0.005025,
		-0.242173, 0.954520, 0.173907,
		39.836330, 37.834084, 27.920521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324368, 37.343807, 28.428829>,  <40.005852, 37.165916, 27.798786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324368, 37.343807, 28.428829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084354, 37.661434, 28.390015>,  <39.940346, 37.852009, 28.366726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084354, 37.661434, 28.390015>,  <40.324368, 37.343807, 28.428829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084354, 37.661434, 28.390015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176352, -0.012986, 0.984241,
		0.780293, 0.607692, 0.147827,
		-0.600035, 0.794067, -0.097035,
		39.904343, 37.899654, 28.360905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538742, 37.868614, 28.947580>,  <40.324368, 37.343807, 28.428829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538742, 37.868614, 28.947580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149998, 37.902657, 28.859728>,  <39.916752, 37.923080, 28.807016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149998, 37.902657, 28.859728>,  <40.538742, 37.868614, 28.947580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149998, 37.902657, 28.859728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234764, -0.274317, 0.932543,
		0.019114, 0.957866, 0.286578,
		-0.971865, 0.085103, -0.219629,
		39.858437, 37.928188, 28.793839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225361, 38.193935, 29.587372>,  <40.538742, 37.868614, 28.947580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225361, 38.193935, 29.587372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903564, 38.055908, 29.393991>,  <39.710487, 37.973091, 29.277964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903564, 38.055908, 29.393991>,  <40.225361, 38.193935, 29.587372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903564, 38.055908, 29.393991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451733, -0.173028, 0.875214,
		-0.385655, 0.922492, -0.016677,
		-0.804492, -0.345064, -0.483449,
		39.662216, 37.952389, 29.248957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646454, 38.622814, 29.848000>,  <40.225361, 38.193935, 29.587372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646454, 38.622814, 29.848000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513302, 38.266098, 29.725430>,  <39.433411, 38.052067, 29.651888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513302, 38.266098, 29.725430>,  <39.646454, 38.622814, 29.848000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513302, 38.266098, 29.725430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464296, -0.127831, 0.876406,
		-0.820744, 0.434009, -0.371504,
		-0.332879, -0.891793, -0.306425,
		39.413437, 37.998562, 29.633501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002079, 38.534122, 30.192204>,  <39.646454, 38.622814, 29.848000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002079, 38.534122, 30.192204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058418, 38.167439, 30.042641>,  <39.092224, 37.947430, 29.952904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058418, 38.167439, 30.042641>,  <39.002079, 38.534122, 30.192204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058418, 38.167439, 30.042641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499449, -0.391884, 0.772643,
		-0.854817, 0.077919, -0.513047,
		0.140851, -0.916709, -0.373906,
		39.100674, 37.892426, 29.930470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435913, 38.195766, 30.289061>,  <39.002079, 38.534122, 30.192204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435913, 38.195766, 30.289061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688805, 37.886963, 30.262861>,  <38.840538, 37.701679, 30.247141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688805, 37.886963, 30.262861>,  <38.435913, 38.195766, 30.289061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688805, 37.886963, 30.262861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424546, -0.415905, 0.804229,
		-0.648115, -0.480646, -0.590700,
		0.632224, -0.772012, -0.065498,
		38.878471, 37.655361, 30.243212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015469, 37.637550, 30.290207>,  <38.435913, 38.195766, 30.289061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015469, 37.637550, 30.290207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379791, 37.508171, 30.392820>,  <38.598385, 37.430546, 30.454388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379791, 37.508171, 30.392820>,  <38.015469, 37.637550, 30.290207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379791, 37.508171, 30.392820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393743, -0.493883, 0.775272,
		-0.124060, -0.807133, -0.577187,
		0.910810, -0.323444, 0.256532,
		38.653034, 37.411137, 30.469780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906853, 36.852913, 30.338055>,  <38.015469, 37.637550, 30.290207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906853, 36.852913, 30.338055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237068, 36.941013, 30.545891>,  <38.435196, 36.993874, 30.670593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237068, 36.941013, 30.545891>,  <37.906853, 36.852913, 30.338055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237068, 36.941013, 30.545891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366125, -0.491618, 0.790104,
		0.429462, -0.842497, -0.325210,
		0.825539, 0.220252, 0.519591,
		38.484730, 37.007088, 30.701769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119366, 36.287079, 30.638000>,  <37.906853, 36.852913, 30.338055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119366, 36.287079, 30.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278702, 36.571091, 30.870272>,  <38.374302, 36.741497, 31.009634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278702, 36.571091, 30.870272>,  <38.119366, 36.287079, 30.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278702, 36.571091, 30.870272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225178, -0.538001, 0.812311,
		0.889169, -0.454331, -0.054425,
		0.398339, 0.710027, 0.580679,
		38.398205, 36.784100, 31.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435261, 36.006798, 31.199467>,  <38.119366, 36.287079, 30.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435261, 36.006798, 31.199467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423798, 36.358921, 31.388882>,  <38.416920, 36.570194, 31.502531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423798, 36.358921, 31.388882>,  <38.435261, 36.006798, 31.199467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423798, 36.358921, 31.388882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112219, -0.473570, 0.873578,
		0.993270, -0.028107, 0.112357,
		-0.028656, 0.880308, 0.473537,
		38.415199, 36.623013, 31.530943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780392, 35.910679, 31.794424>,  <38.435261, 36.006798, 31.199467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780392, 35.910679, 31.794424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580730, 36.250771, 31.861309>,  <38.460934, 36.454826, 31.901440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580730, 36.250771, 31.861309>,  <38.780392, 35.910679, 31.794424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580730, 36.250771, 31.861309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171893, -0.286294, 0.942597,
		0.849293, 0.441759, 0.289053,
		-0.499154, 0.850227, 0.167212,
		38.430984, 36.505840, 31.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080235, 36.268467, 32.430012>,  <38.780392, 35.910679, 31.794424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080235, 36.268467, 32.430012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714111, 36.423161, 32.385040>,  <38.494438, 36.515976, 32.358055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714111, 36.423161, 32.385040>,  <39.080235, 36.268467, 32.430012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714111, 36.423161, 32.385040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234247, -0.284112, 0.929736,
		0.327617, 0.877335, 0.350643,
		-0.915311, 0.386735, -0.112433,
		38.439518, 36.539181, 32.351311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880783, 36.669537, 32.998932>,  <39.080235, 36.268467, 32.430012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880783, 36.669537, 32.998932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506680, 36.607475, 32.871670>,  <38.282219, 36.570236, 32.795311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506680, 36.607475, 32.871670>,  <38.880783, 36.669537, 32.998932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506680, 36.607475, 32.871670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253329, -0.334370, 0.907756,
		-0.247227, 0.929582, 0.273415,
		-0.935256, -0.155158, -0.318155,
		38.226101, 36.560928, 32.776222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469933, 36.975933, 33.530231>,  <38.880783, 36.669537, 32.998932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469933, 36.975933, 33.530231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254139, 36.701660, 33.334766>,  <38.124660, 36.537094, 33.217487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254139, 36.701660, 33.334766>,  <38.469933, 36.975933, 33.530231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254139, 36.701660, 33.334766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325282, -0.365580, 0.872091,
		-0.776625, 0.629434, -0.025816,
		-0.539486, -0.685685, -0.488662,
		38.092293, 36.495956, 33.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821491, 37.073864, 33.874218>,  <38.469933, 36.975933, 33.530231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821491, 37.073864, 33.874218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818470, 36.727760, 33.673710>,  <37.816658, 36.520100, 33.553406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818470, 36.727760, 33.673710>,  <37.821491, 37.073864, 33.874218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818470, 36.727760, 33.673710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310189, -0.474532, 0.823773,
		-0.950645, 0.161708, -0.264811,
		-0.007549, -0.865257, -0.501271,
		37.816204, 36.468182, 33.523327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071220, 36.806595, 33.869858>,  <37.821491, 37.073864, 33.874218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071220, 36.806595, 33.869858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332474, 36.508526, 33.815987>,  <37.489223, 36.329685, 33.783665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332474, 36.508526, 33.815987>,  <37.071220, 36.806595, 33.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332474, 36.508526, 33.815987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337004, -0.445298, 0.829541,
		-0.678123, -0.496412, -0.541964,
		0.653129, -0.745174, -0.134674,
		37.528412, 36.284973, 33.775585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690304, 36.137428, 33.908478>,  <37.071220, 36.806595, 33.869858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690304, 36.137428, 33.908478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077946, 36.085823, 33.992561>,  <37.310532, 36.054859, 34.043011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077946, 36.085823, 33.992561>,  <36.690304, 36.137428, 33.908478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077946, 36.085823, 33.992561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246072, -0.563409, 0.788681,
		0.016682, -0.816043, -0.577751,
		0.969108, -0.129012, 0.210204,
		37.368679, 36.047119, 34.055622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624748, 35.480492, 34.056007>,  <36.690304, 36.137428, 33.908478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624748, 35.480492, 34.056007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982159, 35.593281, 34.195782>,  <37.196606, 35.660954, 34.279648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982159, 35.593281, 34.195782>,  <36.624748, 35.480492, 34.056007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982159, 35.593281, 34.195782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124055, -0.592914, 0.795653,
		0.431541, -0.754284, -0.494802,
		0.893523, 0.281974, 0.349439,
		37.250214, 35.677872, 34.300613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953949, 34.890507, 34.209782>,  <36.624748, 35.480492, 34.056007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953949, 34.890507, 34.209782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160583, 35.166161, 34.413048>,  <37.284565, 35.331551, 34.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160583, 35.166161, 34.413048>,  <36.953949, 34.890507, 34.209782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160583, 35.166161, 34.413048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101142, -0.540223, 0.835422,
		0.850239, -0.482967, -0.209373,
		0.516589, 0.689131, 0.508166,
		37.315559, 35.372902, 34.565498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357376, 34.556614, 34.532280>,  <36.953949, 34.890507, 34.209782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357376, 34.556614, 34.532280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348469, 34.889858, 34.753342>,  <37.343124, 35.089806, 34.885979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348469, 34.889858, 34.753342>,  <37.357376, 34.556614, 34.532280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348469, 34.889858, 34.753342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092041, -0.552149, 0.828650,
		0.995506, -0.032416, 0.088974,
		-0.022265, 0.833115, 0.552651,
		37.341789, 35.139793, 34.919136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056694, 34.672123, 34.865566>,  <37.357376, 34.556614, 34.532280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056694, 34.672123, 34.865566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701233, 34.754055, 35.029686>,  <37.487957, 34.803215, 35.128159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701233, 34.754055, 35.029686>,  <38.056694, 34.672123, 34.865566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701233, 34.754055, 35.029686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118780, -0.761362, 0.637353,
		0.442932, 0.615120, 0.652257,
		-0.888652, 0.204829, 0.410296,
		37.434639, 34.815502, 35.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841553, 34.265980, 34.879539>,  <38.056694, 34.672123, 34.865566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841553, 34.265980, 34.879539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152672, 34.014698, 34.887402>,  <39.339344, 33.863930, 34.892120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152672, 34.014698, 34.887402>,  <38.841553, 34.265980, 34.879539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152672, 34.014698, 34.887402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284872, 0.324480, -0.901976,
		0.560248, 0.707156, 0.431338,
		0.777798, -0.628207, 0.019660,
		39.386013, 33.826237, 34.893299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422085, 34.645973, 34.692917>,  <38.841553, 34.265980, 34.879539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422085, 34.645973, 34.692917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521557, 34.265266, 34.621025>,  <39.581238, 34.036842, 34.577888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521557, 34.265266, 34.621025>,  <39.422085, 34.645973, 34.692917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521557, 34.265266, 34.621025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248540, 0.242050, -0.937891,
		0.936156, 0.188563, 0.296744,
		0.248678, -0.951765, -0.179732,
		39.596161, 33.979736, 34.567104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952271, 34.731213, 34.249859>,  <39.422085, 34.645973, 34.692917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952271, 34.731213, 34.249859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861530, 34.342667, 34.221588>,  <39.807087, 34.109539, 34.204628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861530, 34.342667, 34.221588>,  <39.952271, 34.731213, 34.249859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861530, 34.342667, 34.221588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246011, 0.013060, -0.969179,
		0.942347, -0.237246, 0.236003,
		-0.226852, -0.971362, -0.070672,
		39.793476, 34.051258, 34.200386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511250, 34.515739, 33.917137>,  <39.952271, 34.731213, 34.249859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511250, 34.515739, 33.917137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227177, 34.238426, 33.868141>,  <40.056732, 34.072041, 33.838745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227177, 34.238426, 33.868141>,  <40.511250, 34.515739, 33.917137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227177, 34.238426, 33.868141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153812, 0.016988, -0.987954,
		0.687010, -0.720468, 0.094570,
		-0.710183, -0.693280, -0.122487,
		40.014122, 34.030441, 33.831394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813110, 34.021622, 33.474594>,  <40.511250, 34.515739, 33.917137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813110, 34.021622, 33.474594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416946, 33.970257, 33.454212>,  <40.179249, 33.939438, 33.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416946, 33.970257, 33.454212>,  <40.813110, 34.021622, 33.474594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416946, 33.970257, 33.454212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037209, 0.107251, -0.993535,
		0.133051, -0.985904, -0.101445,
		-0.990411, -0.128416, -0.050955,
		40.119823, 33.931732, 33.438927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658386, 33.484112, 33.041470>,  <40.813110, 34.021622, 33.474594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658386, 33.484112, 33.041470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313728, 33.686928, 33.050182>,  <40.106934, 33.808617, 33.055412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313728, 33.686928, 33.050182>,  <40.658386, 33.484112, 33.041470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313728, 33.686928, 33.050182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006255, 0.053530, -0.998546,
		-0.507471, -0.860257, -0.049296,
		-0.861646, 0.507042, 0.021784,
		40.055233, 33.839039, 33.056717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285702, 33.138496, 32.559010>,  <40.658386, 33.484112, 33.041470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285702, 33.138496, 32.559010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134480, 33.505466, 32.608673>,  <40.043747, 33.725647, 32.638470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134480, 33.505466, 32.608673>,  <40.285702, 33.138496, 32.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134480, 33.505466, 32.608673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058675, 0.157583, -0.985761,
		-0.923922, -0.365386, -0.113405,
		-0.378054, 0.917420, 0.124156,
		40.021065, 33.780693, 32.645920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904476, 33.226742, 31.994619>,  <40.285702, 33.138496, 32.559010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904476, 33.226742, 31.994619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911705, 33.609825, 32.109493>,  <39.916042, 33.839676, 32.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911705, 33.609825, 32.109493>,  <39.904476, 33.226742, 31.994619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911705, 33.609825, 32.109493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053583, 0.285894, -0.956762,
		-0.998400, 0.032678, -0.046150,
		0.018071, 0.957704, 0.287187,
		39.917126, 33.897137, 32.195648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476673, 33.600014, 31.543013>,  <39.904476, 33.226742, 31.994619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476673, 33.600014, 31.543013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744015, 33.861862, 31.684303>,  <39.904419, 34.018970, 31.769077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744015, 33.861862, 31.684303>,  <39.476673, 33.600014, 31.543013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744015, 33.861862, 31.684303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191106, 0.307813, -0.932056,
		-0.718872, 0.690450, 0.080627,
		0.668357, 0.654622, 0.353228,
		39.944523, 34.058250, 31.790272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381157, 34.227104, 31.168552>,  <39.476673, 33.600014, 31.543013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381157, 34.227104, 31.168552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748764, 34.258369, 31.323109>,  <39.969330, 34.277130, 31.415842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748764, 34.258369, 31.323109>,  <39.381157, 34.227104, 31.168552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748764, 34.258369, 31.323109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332784, 0.371626, -0.866688,
		-0.211337, 0.925086, 0.315519,
		0.919016, 0.078164, 0.386392,
		40.024467, 34.281818, 31.439026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695499, 34.893639, 31.065454>,  <39.381157, 34.227104, 31.168552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695499, 34.893639, 31.065454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019436, 34.669365, 31.134487>,  <40.213799, 34.534801, 31.175907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019436, 34.669365, 31.134487>,  <39.695499, 34.893639, 31.065454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019436, 34.669365, 31.134487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500550, 0.506999, -0.701713,
		0.305942, 0.654664, 0.691241,
		0.809845, -0.560684, 0.172580,
		40.262390, 34.501160, 31.186260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254520, 35.363705, 31.113474>,  <39.695499, 34.893639, 31.065454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254520, 35.363705, 31.113474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433010, 35.018276, 31.019554>,  <40.540104, 34.811020, 30.963202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433010, 35.018276, 31.019554>,  <40.254520, 35.363705, 31.113474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433010, 35.018276, 31.019554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432274, 0.437721, -0.788378,
		0.783596, 0.250296, 0.568620,
		0.446225, -0.863570, -0.234800,
		40.566879, 34.759205, 30.949114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986950, 35.518211, 31.089188>,  <40.254520, 35.363705, 31.113474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986950, 35.518211, 31.089188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970787, 35.168545, 30.895611>,  <40.961090, 34.958744, 30.779465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970787, 35.168545, 30.895611>,  <40.986950, 35.518211, 31.089188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970787, 35.168545, 30.895611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637555, 0.350369, -0.686124,
		0.769345, -0.336265, 0.543171,
		-0.040409, -0.874167, -0.483942,
		40.958664, 34.906296, 30.750427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647438, 35.321777, 31.059681>,  <40.986950, 35.518211, 31.089188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647438, 35.321777, 31.059681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423229, 35.134865, 30.786198>,  <41.288704, 35.022717, 30.622108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423229, 35.134865, 30.786198>,  <41.647438, 35.321777, 31.059681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423229, 35.134865, 30.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518322, 0.445932, -0.729716,
		0.645873, -0.763405, -0.007752,
		-0.560526, -0.467286, -0.683706,
		41.255070, 34.994678, 30.581085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080219, 35.019756, 30.618715>,  <41.647438, 35.321777, 31.059681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080219, 35.019756, 30.618715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738228, 35.064144, 30.416052>,  <41.533035, 35.090778, 30.294455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738228, 35.064144, 30.416052>,  <42.080219, 35.019756, 30.618715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738228, 35.064144, 30.416052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515574, 0.288348, -0.806870,
		0.056553, -0.951073, -0.303745,
		-0.854976, 0.110972, -0.506656,
		41.481735, 35.097435, 30.264055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262318, 34.871056, 29.846235>,  <42.080219, 35.019756, 30.618715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262318, 34.871056, 29.846235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904583, 35.046360, 29.810247>,  <41.689941, 35.151543, 29.788654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904583, 35.046360, 29.810247>,  <42.262318, 34.871056, 29.846235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904583, 35.046360, 29.810247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264200, 0.355050, -0.896737,
		-0.361059, -0.825754, -0.433321,
		-0.894335, 0.438259, -0.089971,
		41.636284, 35.177837, 29.783257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047825, 34.692913, 29.281261>,  <42.262318, 34.871056, 29.846235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047825, 34.692913, 29.281261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828518, 35.021481, 29.344093>,  <41.696934, 35.218620, 29.381792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828518, 35.021481, 29.344093>,  <42.047825, 34.692913, 29.281261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828518, 35.021481, 29.344093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095291, 0.247961, -0.964072,
		-0.830856, -0.513602, -0.214223,
		-0.548269, 0.821418, 0.157078,
		41.664036, 35.267906, 29.391216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637226, 34.793606, 28.601915>,  <42.047825, 34.692913, 29.281261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637226, 34.793606, 28.601915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604244, 35.143433, 28.793053>,  <41.584454, 35.353329, 28.907734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604244, 35.143433, 28.793053>,  <41.637226, 34.793606, 28.601915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604244, 35.143433, 28.793053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082917, 0.483832, -0.871224,
		-0.993139, -0.032217, -0.112412,
		-0.082457, 0.874568, 0.477841,
		41.579506, 35.405804, 28.936405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191040, 35.157658, 28.181784>,  <41.637226, 34.793606, 28.601915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191040, 35.157658, 28.181784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385761, 35.432411, 28.397638>,  <41.502594, 35.597263, 28.527151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385761, 35.432411, 28.397638>,  <41.191040, 35.157658, 28.181784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385761, 35.432411, 28.397638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106563, 0.566465, -0.817167,
		-0.866986, 0.455307, 0.202562,
		0.486806, 0.686887, 0.539635,
		41.531803, 35.638477, 28.559528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840824, 35.736431, 28.082628>,  <41.191040, 35.157658, 28.181784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840824, 35.736431, 28.082628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210373, 35.839081, 28.196196>,  <41.432102, 35.900669, 28.264336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210373, 35.839081, 28.196196>,  <40.840824, 35.736431, 28.082628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210373, 35.839081, 28.196196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094959, 0.564958, -0.819637,
		-0.370742, 0.784198, 0.497578,
		0.923869, 0.256624, 0.283920,
		41.487534, 35.916069, 28.281372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843868, 36.448647, 28.174892>,  <40.840824, 35.736431, 28.082628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843868, 36.448647, 28.174892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203354, 36.294769, 28.090672>,  <41.419044, 36.202442, 28.040138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203354, 36.294769, 28.090672>,  <40.843868, 36.448647, 28.174892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203354, 36.294769, 28.090672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099315, 0.646177, -0.756698,
		0.427150, 0.659141, 0.618931,
		0.898710, -0.384693, -0.210552,
		41.472965, 36.179363, 28.027506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121437, 36.985817, 27.833002>,  <40.843868, 36.448647, 28.174892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121437, 36.985817, 27.833002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353973, 36.667042, 27.767359>,  <41.493496, 36.475777, 27.727972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353973, 36.667042, 27.767359>,  <41.121437, 36.985817, 27.833002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353973, 36.667042, 27.767359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182173, 0.324056, -0.928332,
		0.793002, 0.509785, 0.333569,
		0.581345, -0.796936, -0.164108,
		41.528378, 36.427959, 27.718126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708710, 37.311066, 27.608074>,  <41.121437, 36.985817, 27.833002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708710, 37.311066, 27.608074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771229, 36.928974, 27.507593>,  <41.808739, 36.699718, 27.447304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771229, 36.928974, 27.507593>,  <41.708710, 37.311066, 27.608074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771229, 36.928974, 27.507593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320718, 0.289631, -0.901806,
		0.934190, 0.060385, 0.351629,
		0.156298, -0.955232, -0.251204,
		41.818119, 36.642406, 27.432232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219463, 37.347649, 27.003695>,  <41.708710, 37.311066, 27.608074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219463, 37.347649, 27.003695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020145, 37.002918, 26.965836>,  <41.900555, 36.796082, 26.943121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020145, 37.002918, 26.965836>,  <42.219463, 37.347649, 27.003695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020145, 37.002918, 26.965836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095146, 0.054148, -0.993989,
		0.861772, -0.504304, 0.055018,
		-0.498294, -0.861827, -0.094646,
		41.870659, 36.744370, 26.937441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627266, 36.990330, 26.498264>,  <42.219463, 37.347649, 27.003695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627266, 36.990330, 26.498264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268436, 36.815620, 26.525028>,  <42.053139, 36.710793, 26.541086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268436, 36.815620, 26.525028>,  <42.627266, 36.990330, 26.498264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268436, 36.815620, 26.525028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038840, -0.072889, -0.996584,
		0.440161, -0.896612, 0.048423,
		-0.897078, -0.436777, 0.066907,
		41.999313, 36.684586, 26.545101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698132, 36.510368, 26.029385>,  <42.627266, 36.990330, 26.498264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698132, 36.510368, 26.029385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306629, 36.575867, 26.078739>,  <42.071728, 36.615166, 26.108353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306629, 36.575867, 26.078739>,  <42.698132, 36.510368, 26.029385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306629, 36.575867, 26.078739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123087, 0.012009, -0.992323,
		-0.163972, -0.986429, 0.008401,
		-0.978756, 0.163747, 0.123386,
		42.013000, 36.624989, 26.115755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377022, 36.027805, 25.493057>,  <42.698132, 36.510368, 26.029385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377022, 36.027805, 25.493057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106049, 36.312553, 25.567173>,  <41.943466, 36.483402, 25.611643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106049, 36.312553, 25.567173>,  <42.377022, 36.027805, 25.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106049, 36.312553, 25.567173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236954, 0.027280, -0.971138,
		-0.696375, -0.701784, 0.150199,
		-0.677432, 0.711867, 0.185288,
		41.902821, 36.526112, 25.622759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760509, 35.893085, 25.047119>,  <42.377022, 36.027805, 25.493057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760509, 35.893085, 25.047119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694462, 36.277229, 25.136953>,  <41.654835, 36.507717, 25.190853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694462, 36.277229, 25.136953>,  <41.760509, 35.893085, 25.047119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694462, 36.277229, 25.136953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121660, 0.206137, -0.970931,
		-0.978741, -0.187643, 0.082801,
		-0.165120, 0.960363, 0.224583,
		41.644924, 36.565338, 25.204329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073990, 36.130939, 24.735432>,  <41.760509, 35.893085, 25.047119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073990, 36.130939, 24.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325394, 36.439941, 24.771675>,  <41.476238, 36.625343, 24.793421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325394, 36.439941, 24.771675>,  <41.073990, 36.130939, 24.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325394, 36.439941, 24.771675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119307, 0.210868, -0.970206,
		-0.768596, 0.598976, 0.224698,
		0.628512, 0.772504, 0.090611,
		41.513947, 36.671692, 24.798859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726524, 36.672237, 24.386709>,  <41.073990, 36.130939, 24.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726524, 36.672237, 24.386709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099674, 36.816036, 24.395727>,  <41.323563, 36.902317, 24.401138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099674, 36.816036, 24.395727>,  <40.726524, 36.672237, 24.386709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099674, 36.816036, 24.395727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126156, 0.384708, -0.914376,
		-0.337393, 0.850152, 0.404237,
		0.932872, 0.359501, 0.022546,
		41.379536, 36.923885, 24.402491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681286, 37.275635, 24.119785>,  <40.726524, 36.672237, 24.386709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681286, 37.275635, 24.119785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073414, 37.199558, 24.098637>,  <41.308693, 37.153912, 24.085947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073414, 37.199558, 24.098637>,  <40.681286, 37.275635, 24.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073414, 37.199558, 24.098637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003663, 0.285324, -0.958424,
		0.197370, 0.939371, 0.280407,
		0.980322, -0.190191, -0.052874,
		41.367512, 37.142502, 24.082775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838249, 37.711437, 23.603483>,  <40.681286, 37.275635, 24.119785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838249, 37.711437, 23.603483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153999, 37.468506, 23.639349>,  <41.343449, 37.322746, 23.660868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153999, 37.468506, 23.639349>,  <40.838249, 37.711437, 23.603483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153999, 37.468506, 23.639349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171121, 0.077405, -0.982205,
		0.589579, 0.790672, 0.165028,
		0.789376, -0.607327, 0.089665,
		41.390812, 37.286308, 23.666248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486767, 38.081459, 23.435431>,  <40.838249, 37.711437, 23.603483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486767, 38.081459, 23.435431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566818, 37.692802, 23.385054>,  <41.614849, 37.459610, 23.354828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566818, 37.692802, 23.385054>,  <41.486767, 38.081459, 23.435431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566818, 37.692802, 23.385054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.162032, -0.971033,
		0.963903, 0.172210, 0.203063,
		0.200124, -0.971643, -0.125940,
		41.626854, 37.401310, 23.347271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163387, 38.060822, 23.163563>,  <41.486767, 38.081459, 23.435431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163387, 38.060822, 23.163563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004818, 37.712788, 23.046392>,  <41.909676, 37.503967, 22.976089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004818, 37.712788, 23.046392>,  <42.163387, 38.060822, 23.163563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004818, 37.712788, 23.046392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204137, 0.227541, -0.952131,
		0.895086, -0.437241, 0.087414,
		-0.396420, -0.870083, -0.292926,
		41.885891, 37.451763, 22.958515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630421, 37.901661, 22.724215>,  <42.163387, 38.060822, 23.163563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630421, 37.901661, 22.724215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325424, 37.671154, 22.606548>,  <42.142426, 37.532852, 22.535950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325424, 37.671154, 22.606548>,  <42.630421, 37.901661, 22.724215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325424, 37.671154, 22.606548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277843, 0.118963, -0.953232,
		0.584307, -0.808559, 0.069403,
		-0.762488, -0.576263, -0.294163,
		42.096676, 37.498276, 22.518299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932957, 37.429993, 22.280645>,  <42.630421, 37.901661, 22.724215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932957, 37.429993, 22.280645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545967, 37.444561, 22.180510>,  <42.313774, 37.453300, 22.120428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545967, 37.444561, 22.180510>,  <42.932957, 37.429993, 22.280645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545967, 37.444561, 22.180510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251089, 0.258818, -0.932720,
		0.030823, -0.965239, -0.259544,
		-0.967473, 0.036419, -0.250338,
		42.255726, 37.455486, 22.105408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836823, 37.174286, 21.590031>,  <42.932957, 37.429993, 22.280645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836823, 37.174286, 21.590031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488106, 37.370148, 21.595999>,  <42.278877, 37.487667, 21.599581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488106, 37.370148, 21.595999>,  <42.836823, 37.174286, 21.590031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488106, 37.370148, 21.595999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168451, 0.328236, -0.929454,
		-0.460012, -0.807773, -0.368635,
		-0.871787, 0.489657, 0.014923,
		42.226570, 37.517044, 21.600475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722359, 37.302387, 20.897003>,  <42.836823, 37.174286, 21.590031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722359, 37.302387, 20.897003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685940, 36.951443, 20.708557>,  <42.664089, 36.740875, 20.595490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685940, 36.951443, 20.708557>,  <42.722359, 37.302387, 20.897003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685940, 36.951443, 20.708557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207344, -0.479412, 0.852744,
		-0.974022, -0.020043, 0.225564,
		-0.091046, -0.877361, -0.471114,
		42.658627, 36.688236, 20.567223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282185, 36.817783, 21.151604>,  <42.722359, 37.302387, 20.897003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282185, 36.817783, 21.151604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515667, 36.552334, 20.964460>,  <42.655758, 36.393063, 20.852175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515667, 36.552334, 20.964460>,  <42.282185, 36.817783, 21.151604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515667, 36.552334, 20.964460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013447, -0.568224, 0.822764,
		-0.811852, -0.486545, -0.322753,
		0.583708, -0.663623, -0.467856,
		42.690781, 36.353249, 20.824104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972252, 36.091049, 21.201281>,  <42.282185, 36.817783, 21.151604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972252, 36.091049, 21.201281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355030, 36.015995, 21.112690>,  <42.584698, 35.970963, 21.059536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355030, 36.015995, 21.112690>,  <41.972252, 36.091049, 21.201281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355030, 36.015995, 21.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043174, -0.662502, 0.747815,
		-0.287044, -0.725179, -0.625876,
		0.956944, -0.187635, -0.221476,
		42.642113, 35.959705, 21.046247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114506, 35.378880, 21.220984>,  <41.972252, 36.091049, 21.201281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114506, 35.378880, 21.220984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486256, 35.518135, 21.270079>,  <42.709305, 35.601688, 21.299536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486256, 35.518135, 21.270079>,  <42.114506, 35.378880, 21.220984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486256, 35.518135, 21.270079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108958, -0.576395, 0.809875,
		0.352692, -0.739303, -0.573619,
		0.929374, 0.348137, 0.122737,
		42.765068, 35.622578, 21.306900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425213, 34.825241, 21.466650>,  <42.114506, 35.378880, 21.220984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425213, 34.825241, 21.466650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680458, 35.115150, 21.570585>,  <42.833607, 35.289097, 21.632946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680458, 35.115150, 21.570585>,  <42.425213, 34.825241, 21.466650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680458, 35.115150, 21.570585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212823, -0.490365, 0.845132,
		0.739942, -0.483993, -0.467158,
		0.638116, 0.724771, 0.259837,
		42.871891, 35.332581, 21.648537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927113, 34.409740, 21.807783>,  <42.425213, 34.825241, 21.466650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927113, 34.409740, 21.807783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024860, 34.773506, 21.942390>,  <43.083508, 34.991768, 22.023155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024860, 34.773506, 21.942390>,  <42.927113, 34.409740, 21.807783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024860, 34.773506, 21.942390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223100, -0.390457, 0.893180,
		0.943669, -0.143185, -0.298305,
		0.244365, 0.909418, 0.336518,
		43.098171, 35.046333, 22.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746895, 34.501770, 22.143707>,  <42.927113, 34.409740, 21.807783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746895, 34.501770, 22.143707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485142, 34.770645, 22.282242>,  <43.328091, 34.931973, 22.365362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485142, 34.770645, 22.282242>,  <43.746895, 34.501770, 22.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485142, 34.770645, 22.282242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193843, -0.293588, 0.936072,
		0.730897, 0.679682, 0.061819,
		-0.654380, 0.672190, 0.346334,
		43.288826, 34.972301, 22.386143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070663, 34.568134, 22.786911>,  <43.746895, 34.501770, 22.143707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070663, 34.568134, 22.786911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722652, 34.758568, 22.838140>,  <43.513847, 34.872829, 22.868877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722652, 34.758568, 22.838140>,  <44.070663, 34.568134, 22.786911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722652, 34.758568, 22.838140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042493, -0.331223, 0.942595,
		0.491176, 0.814638, 0.308402,
		-0.870023, 0.476085, 0.128073,
		43.461647, 34.901394, 22.876562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168716, 34.986576, 23.366104>,  <44.070663, 34.568134, 22.786911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168716, 34.986576, 23.366104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779770, 34.914898, 23.306234>,  <43.546402, 34.871891, 23.270313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779770, 34.914898, 23.306234>,  <44.168716, 34.986576, 23.366104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779770, 34.914898, 23.306234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117380, -0.178961, 0.976829,
		-0.201827, 0.967400, 0.152981,
		-0.972362, -0.179193, -0.149672,
		43.488060, 34.861141, 23.261333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887932, 35.232391, 23.926416>,  <44.168716, 34.986576, 23.366104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887932, 35.232391, 23.926416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579041, 35.011982, 23.799902>,  <43.393707, 34.879738, 23.723993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579041, 35.011982, 23.799902>,  <43.887932, 35.232391, 23.926416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579041, 35.011982, 23.799902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224036, -0.229679, 0.947130,
		-0.594534, 0.802260, 0.053916,
		-0.772228, -0.551023, -0.316287,
		43.347370, 34.846676, 23.705015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400642, 35.393379, 24.459249>,  <43.887932, 35.232391, 23.926416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400642, 35.393379, 24.459249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265457, 35.063271, 24.278271>,  <43.184345, 34.865204, 24.169683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265457, 35.063271, 24.278271>,  <43.400642, 35.393379, 24.459249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265457, 35.063271, 24.278271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309771, -0.356408, 0.881485,
		-0.888719, 0.438067, -0.135191,
		-0.337966, -0.825270, -0.452446,
		43.164066, 34.815689, 24.142536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682995, 35.362343, 24.565304>,  <43.400642, 35.393379, 24.459249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682995, 35.362343, 24.565304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822731, 34.990017, 24.522308>,  <42.906570, 34.766621, 24.496511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822731, 34.990017, 24.522308>,  <42.682995, 35.362343, 24.565304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822731, 34.990017, 24.522308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335411, -0.231337, 0.913226,
		-0.874907, -0.282972, -0.393019,
		0.349337, -0.930811, -0.107487,
		42.927532, 34.710773, 24.490063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089413, 34.892620, 24.852369>,  <42.682995, 35.362343, 24.565304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089413, 34.892620, 24.852369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431488, 34.685791, 24.838055>,  <42.636734, 34.561695, 24.829466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431488, 34.685791, 24.838055>,  <42.089413, 34.892620, 24.852369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431488, 34.685791, 24.838055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195183, -0.385236, 0.901941,
		-0.480157, -0.764347, -0.430375,
		0.855192, -0.517074, -0.035786,
		42.688046, 34.530670, 24.827318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980648, 34.204052, 25.007875>,  <42.089413, 34.892620, 24.852369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980648, 34.204052, 25.007875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367683, 34.271988, 25.082638>,  <42.599903, 34.312748, 25.127495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367683, 34.271988, 25.082638>,  <41.980648, 34.204052, 25.007875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367683, 34.271988, 25.082638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100842, -0.418694, 0.902511,
		0.231538, -0.892104, -0.387995,
		0.967585, 0.169839, 0.186905,
		42.657959, 34.322941, 25.138710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227673, 33.606194, 25.353838>,  <41.980648, 34.204052, 25.007875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227673, 33.606194, 25.353838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507545, 33.881313, 25.431171>,  <42.675468, 34.046387, 25.477571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507545, 33.881313, 25.431171>,  <42.227673, 33.606194, 25.353838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507545, 33.881313, 25.431171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006617, -0.264352, 0.964404,
		0.714426, -0.676054, -0.180410,
		0.699680, 0.687801, 0.193333,
		42.717449, 34.087654, 25.489172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671734, 33.216190, 25.578466>,  <42.227673, 33.606194, 25.353838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671734, 33.216190, 25.578466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763210, 33.582733, 25.709919>,  <42.818096, 33.802658, 25.788790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763210, 33.582733, 25.709919>,  <42.671734, 33.216190, 25.578466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763210, 33.582733, 25.709919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078336, -0.319160, 0.944458,
		0.970342, -0.241734, -0.001207,
		0.228693, 0.916352, 0.328630,
		42.831818, 33.857639, 25.808508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267876, 33.131886, 26.055489>,  <42.671734, 33.216190, 25.578466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267876, 33.131886, 26.055489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063705, 33.467442, 26.131096>,  <42.941204, 33.668777, 26.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063705, 33.467442, 26.131096>,  <43.267876, 33.131886, 26.055489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063705, 33.467442, 26.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124165, -0.289400, 0.949121,
		0.850912, 0.460985, 0.251878,
		-0.510424, 0.838892, 0.189016,
		42.910580, 33.719109, 26.187801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524620, 33.277126, 26.678251>,  <43.267876, 33.131886, 26.055489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524620, 33.277126, 26.678251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199181, 33.507092, 26.643545>,  <43.003914, 33.645069, 26.622721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199181, 33.507092, 26.643545>,  <43.524620, 33.277126, 26.678251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199181, 33.507092, 26.643545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323710, -0.323946, 0.888972,
		0.482971, 0.751357, 0.449667,
		-0.813603, 0.574910, -0.086766,
		42.955101, 33.679565, 26.617516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458527, 33.838085, 27.326872>,  <43.524620, 33.277126, 26.678251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458527, 33.838085, 27.326872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090042, 33.797161, 27.176722>,  <42.868954, 33.772606, 27.086632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090042, 33.797161, 27.176722>,  <43.458527, 33.838085, 27.326872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090042, 33.797161, 27.176722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327237, -0.318122, 0.889783,
		-0.210450, 0.942513, 0.259577,
		-0.921209, -0.102311, -0.375374,
		42.813679, 33.766468, 27.064110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985821, 34.050632, 27.947102>,  <43.458527, 33.838085, 27.326872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985821, 34.050632, 27.947102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744190, 33.883915, 27.675404>,  <42.599213, 33.783886, 27.512384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744190, 33.883915, 27.675404>,  <42.985821, 34.050632, 27.947102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744190, 33.883915, 27.675404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505122, -0.459001, 0.730870,
		-0.616397, 0.784602, 0.066739,
		-0.604075, -0.416795, -0.679247,
		42.562969, 33.758877, 27.471630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276539, 34.226482, 28.187458>,  <42.985821, 34.050632, 27.947102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276539, 34.226482, 28.187458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269764, 33.909374, 27.943743>,  <42.265697, 33.719109, 27.797514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269764, 33.909374, 27.943743>,  <42.276539, 34.226482, 28.187458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269764, 33.909374, 27.943743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473414, -0.530380, 0.703261,
		-0.880677, 0.300356, -0.366325,
		-0.016938, -0.792769, -0.609287,
		42.264683, 33.671543, 27.760958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575863, 34.006260, 28.151552>,  <42.276539, 34.226482, 28.187458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575863, 34.006260, 28.151552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832470, 33.708485, 28.077513>,  <41.986435, 33.529819, 28.033089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832470, 33.708485, 28.077513>,  <41.575863, 34.006260, 28.151552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832470, 33.708485, 28.077513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327534, -0.484013, 0.811451,
		-0.693666, -0.459937, -0.554333,
		0.641521, -0.744439, -0.185098,
		42.024925, 33.485153, 28.021984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196175, 33.389908, 28.105280>,  <41.575863, 34.006260, 28.151552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196175, 33.389908, 28.105280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574760, 33.303009, 28.200787>,  <41.801910, 33.250870, 28.258091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574760, 33.303009, 28.200787>,  <41.196175, 33.389908, 28.105280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574760, 33.303009, 28.200787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311813, -0.423860, 0.850362,
		-0.083534, -0.879287, -0.468909,
		0.946464, -0.217246, 0.238767,
		41.858700, 33.237835, 28.272417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140083, 32.784004, 28.377939>,  <41.196175, 33.389908, 28.105280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140083, 32.784004, 28.377939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497753, 32.896103, 28.517609>,  <41.712353, 32.963360, 28.601410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497753, 32.896103, 28.517609>,  <41.140083, 32.784004, 28.377939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497753, 32.896103, 28.517609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252886, -0.327450, 0.910398,
		0.369470, -0.902353, -0.221926,
		0.894170, 0.280243, 0.349175,
		41.766003, 32.980175, 28.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219318, 32.229588, 28.776875>,  <41.140083, 32.784004, 28.377939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219318, 32.229588, 28.776875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480957, 32.503876, 28.904587>,  <41.637939, 32.668449, 28.981215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480957, 32.503876, 28.904587>,  <41.219318, 32.229588, 28.776875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480957, 32.503876, 28.904587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044920, -0.456573, 0.888552,
		0.755074, -0.566859, -0.329446,
		0.654099, 0.685720, 0.319283,
		41.677185, 32.709591, 29.000372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396549, 31.771952, 29.215353>,  <41.219318, 32.229588, 28.776875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396549, 31.771952, 29.215353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566902, 32.119404, 29.316624>,  <41.669113, 32.327877, 29.377386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566902, 32.119404, 29.316624>,  <41.396549, 31.771952, 29.215353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566902, 32.119404, 29.316624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032157, -0.294179, 0.955209,
		0.904205, -0.398669, -0.153219,
		0.425886, 0.868632, 0.253179,
		41.694668, 32.379993, 29.392578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111843, 31.660454, 29.590065>,  <41.396549, 31.771952, 29.215353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111843, 31.660454, 29.590065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942749, 32.009937, 29.686340>,  <41.841293, 32.219627, 29.744106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942749, 32.009937, 29.686340>,  <42.111843, 31.660454, 29.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942749, 32.009937, 29.686340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027653, -0.253027, 0.967064,
		0.905831, 0.415468, 0.082803,
		-0.422736, 0.873707, 0.240689,
		41.815929, 32.272049, 29.758547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598587, 31.993134, 30.058746>,  <42.111843, 31.660454, 29.590065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598587, 31.993134, 30.058746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252689, 32.183727, 30.122221>,  <42.045151, 32.298084, 30.160305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252689, 32.183727, 30.122221>,  <42.598587, 31.993134, 30.058746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252689, 32.183727, 30.122221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146835, -0.062288, 0.987198,
		0.480270, 0.876973, -0.016102,
		-0.864743, 0.476486, 0.158686,
		41.993267, 32.326672, 30.169827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756382, 32.381683, 30.585445>,  <42.598587, 31.993134, 30.058746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756382, 32.381683, 30.585445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356392, 32.382114, 30.582792>,  <42.116398, 32.382374, 30.581202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356392, 32.382114, 30.582792>,  <42.756382, 32.381683, 30.585445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356392, 32.382114, 30.582792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006613, 0.016775, 0.999837,
		0.001189, 0.999859, -0.016767,
		-0.999977, 0.001078, -0.006632,
		42.056400, 32.382439, 30.580803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534134, 32.970032, 31.026648>,  <42.756382, 32.381683, 30.585445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534134, 32.970032, 31.026648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266712, 32.673092, 31.008968>,  <42.106258, 32.494930, 30.998362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266712, 32.673092, 31.008968>,  <42.534134, 32.970032, 31.026648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266712, 32.673092, 31.008968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003285, -0.056483, 0.998398,
		-0.743653, 0.667632, 0.035323,
		-0.668558, -0.742345, -0.044197,
		42.066143, 32.450390, 30.995708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285763, 33.069328, 31.754213>,  <42.534134, 32.970032, 31.026648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285763, 33.069328, 31.754213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147263, 32.732964, 31.587849>,  <42.064163, 32.531147, 31.488029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147263, 32.732964, 31.587849>,  <42.285763, 33.069328, 31.754213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147263, 32.732964, 31.587849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054325, -0.424619, 0.903741,
		-0.936567, 0.335518, 0.101343,
		-0.346253, -0.840908, -0.415911,
		42.043388, 32.480690, 31.463076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776321, 32.965416, 32.210423>,  <42.285763, 33.069328, 31.754213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776321, 32.965416, 32.210423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851631, 32.612389, 32.038082>,  <41.896816, 32.400574, 31.934679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851631, 32.612389, 32.038082>,  <41.776321, 32.965416, 32.210423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851631, 32.612389, 32.038082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271756, -0.468382, 0.840695,
		-0.943770, -0.041196, -0.328027,
		0.188275, -0.882565, -0.430849,
		41.908115, 32.347618, 31.908827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201118, 32.631550, 32.108704>,  <41.776321, 32.965416, 32.210423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201118, 32.631550, 32.108704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463673, 32.329849, 32.115189>,  <41.621204, 32.148827, 32.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463673, 32.329849, 32.115189>,  <41.201118, 32.631550, 32.108704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463673, 32.329849, 32.115189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285248, -0.228228, 0.930884,
		-0.698423, -0.615640, -0.364955,
		0.656383, -0.754254, 0.016210,
		41.660587, 32.103573, 32.120052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832737, 31.975945, 32.320568>,  <41.201118, 32.631550, 32.108704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832737, 31.975945, 32.320568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218075, 31.885473, 32.378281>,  <41.449276, 31.831190, 32.412907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218075, 31.885473, 32.378281>,  <40.832737, 31.975945, 32.320568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218075, 31.885473, 32.378281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237217, -0.466950, 0.851872,
		-0.125306, -0.854868, -0.503486,
		0.963341, -0.226180, 0.144278,
		41.507076, 31.817619, 32.421562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823948, 31.289627, 32.681374>,  <40.832737, 31.975945, 32.320568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823948, 31.289627, 32.681374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215828, 31.356600, 32.725475>,  <41.450954, 31.396784, 32.751934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215828, 31.356600, 32.725475>,  <40.823948, 31.289627, 32.681374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215828, 31.356600, 32.725475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025462, -0.649434, 0.759992,
		0.198849, -0.741756, -0.640513,
		0.979699, 0.167433, 0.110252,
		41.509739, 31.406830, 32.758553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225227, 30.652212, 32.591125>,  <40.823948, 31.289627, 32.681374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225227, 30.652212, 32.591125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446846, 30.892216, 32.821957>,  <41.579819, 31.036219, 32.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446846, 30.892216, 32.821957>,  <41.225227, 30.652212, 32.591125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446846, 30.892216, 32.821957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075122, -0.726406, 0.683148,
		0.829089, -0.335144, -0.447537,
		0.554046, 0.600011, 0.577079,
		41.613060, 31.072220, 32.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773590, 30.245153, 32.918842>,  <41.225227, 30.652212, 32.591125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773590, 30.245153, 32.918842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795834, 30.566532, 33.155952>,  <41.809181, 30.759359, 33.298218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795834, 30.566532, 33.155952>,  <41.773590, 30.245153, 32.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795834, 30.566532, 33.155952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066468, -0.589399, 0.805103,
		0.996238, -0.084175, 0.020625,
		0.055613, 0.803445, 0.592777,
		41.812519, 30.807566, 33.333786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289959, 30.200500, 33.380714>,  <41.773590, 30.245153, 32.918842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289959, 30.200500, 33.380714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059628, 30.478428, 33.553062>,  <41.921429, 30.645184, 33.656471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059628, 30.478428, 33.553062>,  <42.289959, 30.200500, 33.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059628, 30.478428, 33.553062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179926, -0.406397, 0.895806,
		0.797528, 0.593354, 0.108999,
		-0.575827, 0.694818, 0.430873,
		41.886879, 30.686872, 33.682323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722328, 30.506300, 33.866405>,  <42.289959, 30.200500, 33.380714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722328, 30.506300, 33.866405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344620, 30.575455, 33.978451>,  <42.117996, 30.616947, 34.045677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344620, 30.575455, 33.978451>,  <42.722328, 30.506300, 33.866405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344620, 30.575455, 33.978451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231753, -0.255145, 0.938718,
		0.233762, 0.951321, 0.200859,
		-0.944270, 0.172886, 0.280115,
		42.061340, 30.627321, 34.062485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804844, 30.934240, 34.500484>,  <42.722328, 30.506300, 33.866405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804844, 30.934240, 34.500484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436939, 30.777536, 34.509922>,  <42.216194, 30.683514, 34.515583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436939, 30.777536, 34.509922>,  <42.804844, 30.934240, 34.500484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436939, 30.777536, 34.509922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096271, -0.166932, 0.981257,
		-0.380477, 0.904798, 0.191253,
		-0.919766, -0.391758, 0.023592,
		42.161011, 30.660009, 34.516998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606441, 30.989664, 35.150387>,  <42.804844, 30.934240, 34.500484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606441, 30.989664, 35.150387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362511, 30.708046, 35.004822>,  <42.216152, 30.539076, 34.917480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362511, 30.708046, 35.004822>,  <42.606441, 30.989664, 35.150387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362511, 30.708046, 35.004822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103201, -0.384725, 0.917244,
		-0.785789, 0.596914, 0.161957,
		-0.609824, -0.704046, -0.363915,
		42.179562, 30.496832, 34.895649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935303, 30.942217, 35.503494>,  <42.606441, 30.989664, 35.150387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935303, 30.942217, 35.503494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114086, 30.627100, 35.333973>,  <42.221355, 30.438030, 35.232258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114086, 30.627100, 35.333973>,  <41.935303, 30.942217, 35.503494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114086, 30.627100, 35.333973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195765, -0.376140, 0.905646,
		-0.872872, -0.487751, -0.013895,
		0.446957, -0.787793, -0.423807,
		42.248173, 30.390762, 35.206829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707787, 30.365520, 35.817497>,  <41.935303, 30.942217, 35.503494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707787, 30.365520, 35.817497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087116, 30.305952, 35.705425>,  <42.314713, 30.270210, 35.638184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087116, 30.305952, 35.705425>,  <41.707787, 30.365520, 35.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087116, 30.305952, 35.705425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238068, -0.249817, 0.938571,
		-0.209761, -0.956774, -0.201456,
		0.948327, -0.148915, -0.280179,
		42.371613, 30.261276, 35.621372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880966, 29.678226, 36.167549>,  <41.707787, 30.365520, 35.817497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880966, 29.678226, 36.167549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238380, 29.833773, 36.077770>,  <42.452827, 29.927101, 36.023903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238380, 29.833773, 36.077770>,  <41.880966, 29.678226, 36.167549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238380, 29.833773, 36.077770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346993, -0.280833, 0.894835,
		0.284939, -0.877448, -0.385868,
		0.893536, 0.388867, -0.224448,
		42.506439, 29.950432, 36.010437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476654, 29.205259, 36.280415>,  <41.880966, 29.678226, 36.167549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476654, 29.205259, 36.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564968, 29.592854, 36.324818>,  <42.617958, 29.825409, 36.351460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564968, 29.592854, 36.324818>,  <42.476654, 29.205259, 36.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564968, 29.592854, 36.324818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388999, -0.191857, 0.901038,
		0.894389, -0.155758, -0.419294,
		0.220789, 0.968984, 0.111005,
		42.631207, 29.883549, 36.358120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090931, 29.261656, 36.622189>,  <42.476654, 29.205259, 36.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090931, 29.261656, 36.622189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966682, 29.633167, 36.703064>,  <42.892136, 29.856075, 36.751591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966682, 29.633167, 36.703064>,  <43.090931, 29.261656, 36.622189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966682, 29.633167, 36.703064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360720, -0.081622, 0.929096,
		0.879430, 0.361530, -0.309677,
		-0.310620, 0.928781, 0.202192,
		42.873497, 29.911802, 36.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616554, 29.658987, 36.905209>,  <43.090931, 29.261656, 36.622189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616554, 29.658987, 36.905209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264587, 29.773890, 37.056591>,  <43.053406, 29.842831, 37.147419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264587, 29.773890, 37.056591>,  <43.616554, 29.658987, 36.905209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264587, 29.773890, 37.056591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297608, -0.287689, 0.910310,
		0.370368, 0.913630, 0.167654,
		-0.879919, 0.287254, 0.378455,
		43.000610, 29.860065, 37.170128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027863, 30.201565, 37.082188>,  <43.616554, 29.658987, 36.905209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027863, 30.201565, 37.082188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656422, 30.260735, 37.218315>,  <43.433556, 30.296236, 37.299992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656422, 30.260735, 37.218315>,  <44.027863, 30.201565, 37.082188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656422, 30.260735, 37.218315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309325, -0.198029, 0.930109,
		0.204979, 0.968970, 0.138133,
		-0.928602, 0.147925, 0.340318,
		43.377842, 30.305113, 37.320412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004448, 30.527548, 37.622997>,  <44.027863, 30.201565, 37.082188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004448, 30.527548, 37.622997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638454, 30.370378, 37.659679>,  <43.418858, 30.276077, 37.681690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638454, 30.370378, 37.659679>,  <44.004448, 30.527548, 37.622997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638454, 30.370378, 37.659679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109460, -0.022967, 0.993726,
		-0.388353, 0.919284, 0.064024,
		-0.914987, -0.392925, 0.091706,
		43.363960, 30.252501, 37.687191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729008, 30.925478, 38.220875>,  <44.004448, 30.527548, 37.622997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729008, 30.925478, 38.220875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539032, 30.580692, 38.149937>,  <43.425049, 30.373821, 38.107372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539032, 30.580692, 38.149937>,  <43.729008, 30.925478, 38.220875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539032, 30.580692, 38.149937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004254, -0.203775, 0.979008,
		-0.880010, 0.464211, 0.100447,
		-0.474936, -0.861965, -0.177349,
		43.396553, 30.322104, 38.096733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993168, 31.050737, 38.514404>,  <43.729008, 30.925478, 38.220875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993168, 31.050737, 38.514404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098061, 30.667334, 38.469696>,  <43.160995, 30.437292, 38.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098061, 30.667334, 38.469696>,  <42.993168, 31.050737, 38.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098061, 30.667334, 38.469696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151929, -0.155390, 0.976100,
		-0.952970, -0.238983, -0.186374,
		0.262232, -0.958510, -0.111773,
		43.176731, 30.379780, 38.436165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538185, 30.740337, 38.973778>,  <42.993168, 31.050737, 38.514404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538185, 30.740337, 38.973778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766132, 30.420698, 38.897156>,  <42.902901, 30.228914, 38.851181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766132, 30.420698, 38.897156>,  <42.538185, 30.740337, 38.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766132, 30.420698, 38.897156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160814, -0.337053, 0.927650,
		-0.805848, -0.497832, -0.320582,
		0.569867, -0.799098, -0.191555,
		42.937092, 30.180969, 38.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160038, 30.095085, 39.170437>,  <42.538185, 30.740337, 38.973778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160038, 30.095085, 39.170437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555691, 30.037630, 39.183002>,  <42.793083, 30.003157, 39.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555691, 30.037630, 39.183002>,  <42.160038, 30.095085, 39.170437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555691, 30.037630, 39.183002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070224, -0.273779, 0.959226,
		-0.129180, -0.951007, -0.280890,
		0.989132, -0.143638, 0.031417,
		42.852428, 29.994539, 39.192429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213448, 29.622633, 39.535233>,  <42.160038, 30.095085, 39.170437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213448, 29.622633, 39.535233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598751, 29.727215, 39.559803>,  <42.829933, 29.789965, 39.574547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598751, 29.727215, 39.559803>,  <42.213448, 29.622633, 39.535233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598751, 29.727215, 39.559803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043894, -0.072382, 0.996411,
		0.264966, -0.962497, -0.058246,
		0.963258, 0.261458, 0.061427,
		42.887730, 29.805653, 39.578232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551453, 29.103899, 39.892300>,  <42.213448, 29.622633, 39.535233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551453, 29.103899, 39.892300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819378, 29.397589, 39.936604>,  <42.980133, 29.573803, 39.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819378, 29.397589, 39.936604>,  <42.551453, 29.103899, 39.892300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819378, 29.397589, 39.936604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152258, -0.010185, 0.988288,
		0.726754, -0.678830, 0.104970,
		0.669810, 0.734225, 0.110759,
		43.020321, 29.617857, 39.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067741, 28.803782, 40.257710>,  <42.551453, 29.103899, 39.892300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067741, 28.803782, 40.257710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059895, 29.200188, 40.310631>,  <43.055187, 29.438032, 40.342384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059895, 29.200188, 40.310631>,  <43.067741, 28.803782, 40.257710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059895, 29.200188, 40.310631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137869, -0.133741, 0.981379,
		0.990256, 0.001009, 0.139254,
		-0.019614, 0.991016, 0.132299,
		43.054008, 29.497492, 40.350319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490799, 29.028473, 40.848160>,  <43.067741, 28.803782, 40.257710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490799, 29.028473, 40.848160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189774, 29.286053, 40.793053>,  <43.009159, 29.440601, 40.759987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189774, 29.286053, 40.793053>,  <43.490799, 29.028473, 40.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189774, 29.286053, 40.793053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198879, -0.022805, 0.979759,
		0.627774, 0.764727, 0.145231,
		-0.752560, 0.643951, -0.137772,
		42.964005, 29.479239, 40.751720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529831, 29.446865, 41.420856>,  <43.490799, 29.028473, 40.848160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529831, 29.446865, 41.420856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152439, 29.450834, 41.288342>,  <42.926006, 29.453217, 41.208832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152439, 29.450834, 41.288342>,  <43.529831, 29.446865, 41.420856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152439, 29.450834, 41.288342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329935, 0.066933, 0.941628,
		0.031519, 0.997708, -0.059875,
		-0.943477, 0.009925, -0.331289,
		42.869396, 29.453812, 41.188953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185429, 30.128563, 41.484768>,  <43.529831, 29.446865, 41.420856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185429, 30.128563, 41.484768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927776, 29.822598, 41.483486>,  <42.773186, 29.639019, 41.482716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927776, 29.822598, 41.483486>,  <43.185429, 30.128563, 41.484768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927776, 29.822598, 41.483486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248364, 0.205175, 0.946689,
		-0.723476, 0.610584, -0.322135,
		-0.644127, -0.764912, -0.003208,
		42.734539, 29.593124, 41.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595093, 30.407530, 41.830204>,  <43.185429, 30.128563, 41.484768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595093, 30.407530, 41.830204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570992, 30.008652, 41.847980>,  <42.556530, 29.769325, 41.858646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570992, 30.008652, 41.847980>,  <42.595093, 30.407530, 41.830204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570992, 30.008652, 41.847980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250561, 0.058208, 0.966350,
		-0.966224, 0.047094, -0.253365,
		-0.060257, -0.997193, 0.044442,
		42.552914, 29.709494, 41.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877201, 30.210636, 41.920708>,  <42.595093, 30.407530, 41.830204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877201, 30.210636, 41.920708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116905, 29.934898, 42.083527>,  <42.260727, 29.769455, 42.181217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116905, 29.934898, 42.083527>,  <41.877201, 30.210636, 41.920708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116905, 29.934898, 42.083527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422965, 0.159069, 0.892075,
		-0.679697, -0.706753, -0.196245,
		0.599260, -0.689345, 0.407051,
		42.296684, 29.728094, 42.205643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528179, 29.760290, 42.490551>,  <41.877201, 30.210636, 41.920708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528179, 29.760290, 42.490551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924103, 29.805185, 42.525600>,  <42.161655, 29.832123, 42.546631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924103, 29.805185, 42.525600>,  <41.528179, 29.760290, 42.490551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924103, 29.805185, 42.525600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101512, 0.124654, 0.986994,
		0.099846, -0.985833, 0.134777,
		0.989811, 0.112229, 0.087628,
		42.221046, 29.838858, 42.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633701, 29.455048, 43.201851>,  <41.528179, 29.760290, 42.490551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633701, 29.455048, 43.201851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962662, 29.675550, 43.145596>,  <42.160038, 29.807852, 43.111843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962662, 29.675550, 43.145596>,  <41.633701, 29.455048, 43.201851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962662, 29.675550, 43.145596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077202, 0.136785, 0.987588,
		0.563650, -0.823048, 0.069934,
		0.822398, 0.551255, -0.140640,
		42.209381, 29.840927, 43.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019543, 29.264591, 43.723965>,  <41.633701, 29.455048, 43.201851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019543, 29.264591, 43.723965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101532, 29.628204, 43.578835>,  <42.150726, 29.846373, 43.491756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101532, 29.628204, 43.578835>,  <42.019543, 29.264591, 43.723965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101532, 29.628204, 43.578835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059515, 0.381586, 0.922415,
		0.976956, -0.167481, 0.132318,
		0.204977, 0.909034, -0.362825,
		42.163025, 29.900915, 43.469986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641026, 29.573208, 43.348431>,  <42.019543, 29.264591, 43.723965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641026, 29.573208, 43.348431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452976, 29.259283, 43.186913>,  <42.340145, 29.070929, 43.090000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452976, 29.259283, 43.186913>,  <42.641026, 29.573208, 43.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452976, 29.259283, 43.186913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268846, 0.308433, -0.912464,
		0.840658, -0.537531, 0.065992,
		-0.470124, -0.784811, -0.403800,
		42.311939, 29.023840, 43.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122074, 29.183733, 42.781651>,  <42.641026, 29.573208, 43.348431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122074, 29.183733, 42.781651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740414, 29.108252, 42.688705>,  <42.511417, 29.062962, 42.632938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740414, 29.108252, 42.688705>,  <43.122074, 29.183733, 42.781651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740414, 29.108252, 42.688705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202451, 0.164981, -0.965295,
		0.220495, -0.968076, -0.119212,
		-0.954147, -0.188709, -0.232365,
		42.454170, 29.051640, 42.618996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992798, 28.687664, 42.197998>,  <43.122074, 29.183733, 42.781651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992798, 28.687664, 42.197998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685268, 28.941189, 42.231922>,  <42.500751, 29.093304, 42.252277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685268, 28.941189, 42.231922>,  <42.992798, 28.687664, 42.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685268, 28.941189, 42.231922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126056, 0.280248, -0.951615,
		-0.626915, -0.720932, -0.295357,
		-0.768823, 0.633813, 0.084814,
		42.454620, 29.131332, 42.257366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383884, 28.436073, 41.890579>,  <42.992798, 28.687664, 42.197998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383884, 28.436073, 41.890579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417667, 28.834410, 41.876896>,  <42.437939, 29.073412, 41.868687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417667, 28.834410, 41.876896>,  <42.383884, 28.436073, 41.890579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417667, 28.834410, 41.876896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133521, -0.045332, -0.990008,
		-0.987440, 0.079051, -0.136795,
		0.084462, 0.995839, -0.034207,
		42.443005, 29.133162, 41.866634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838352, 28.670822, 41.446568>,  <42.383884, 28.436073, 41.890579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838352, 28.670822, 41.446568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114834, 28.959856, 41.450825>,  <42.280724, 29.133276, 41.453377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114834, 28.959856, 41.450825>,  <41.838352, 28.670822, 41.446568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114834, 28.959856, 41.450825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039613, -0.023183, -0.998946,
		-0.721577, 0.690893, -0.044648,
		0.691200, 0.722585, 0.010640,
		42.322193, 29.176632, 41.454018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655178, 29.121145, 40.896511>,  <41.838352, 28.670822, 41.446568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655178, 29.121145, 40.896511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035435, 29.214825, 40.977936>,  <42.263588, 29.271032, 41.026791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035435, 29.214825, 40.977936>,  <41.655178, 29.121145, 40.896511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035435, 29.214825, 40.977936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230969, -0.095966, -0.968217,
		-0.207218, 0.967441, -0.145321,
		0.950639, 0.234196, 0.203563,
		42.320625, 29.285084, 41.039005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167435, 29.485731, 40.498463>,  <41.655178, 29.121145, 40.896511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167435, 29.485731, 40.498463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425640, 29.706758, 40.709358>,  <42.580563, 29.839375, 40.835896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425640, 29.706758, 40.709358>,  <42.167435, 29.485731, 40.498463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425640, 29.706758, 40.709358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682873, -0.108417, -0.722447,
		-0.342040, 0.826387, -0.447318,
		0.645518, 0.552567, 0.527234,
		42.619297, 29.872528, 40.867527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546337, 30.243370, 40.494255>,  <42.167435, 29.485731, 40.498463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546337, 30.243370, 40.494255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870964, 30.069708, 40.650642>,  <43.065742, 29.965509, 40.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870964, 30.069708, 40.650642>,  <42.546337, 30.243370, 40.494255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870964, 30.069708, 40.650642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392472, -0.090600, -0.915291,
		0.432803, 0.896269, 0.096866,
		0.811571, -0.434158, 0.390973,
		43.114437, 29.939461, 40.767933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191753, 30.721401, 40.407120>,  <42.546337, 30.243370, 40.494255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191753, 30.721401, 40.407120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242378, 30.324621, 40.408756>,  <43.272755, 30.086554, 40.409737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.242378, 30.324621, 40.408756>,  <43.191753, 30.721401, 40.407120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242378, 30.324621, 40.408756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266714, 0.030058, -0.963307,
		0.955429, 0.123011, 0.268372,
		0.126564, -0.991950, 0.004091,
		43.280346, 30.027037, 40.409985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763325, 30.631018, 40.053638>,  <43.191753, 30.721401, 40.407120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763325, 30.631018, 40.053638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551212, 30.291992, 40.045303>,  <43.423943, 30.088577, 40.040302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551212, 30.291992, 40.045303>,  <43.763325, 30.631018, 40.053638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551212, 30.291992, 40.045303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236122, -0.124036, -0.963774,
		0.814275, -0.515996, 0.265903,
		-0.530285, -0.847563, -0.020839,
		43.392128, 30.037724, 40.039051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177418, 30.085213, 39.702641>,  <43.763325, 30.631018, 40.053638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177418, 30.085213, 39.702641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787449, 30.007847, 39.658619>,  <43.553467, 29.961428, 39.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787449, 30.007847, 39.658619>,  <44.177418, 30.085213, 39.702641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787449, 30.007847, 39.658619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101807, 0.052122, -0.993438,
		0.197881, -0.979732, -0.031124,
		-0.974924, -0.193413, -0.110058,
		43.494972, 29.949823, 39.625603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028187, 29.536242, 39.127945>,  <44.177418, 30.085213, 39.702641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028187, 29.536242, 39.127945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685841, 29.737991, 39.173740>,  <43.480434, 29.859041, 39.201218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685841, 29.737991, 39.173740>,  <44.028187, 29.536242, 39.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685841, 29.737991, 39.173740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059776, 0.123405, -0.990554,
		-0.513737, -0.854622, -0.075468,
		-0.855863, 0.504373, 0.114484,
		43.429081, 29.889303, 39.208084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776012, 29.198826, 38.559948>,  <44.028187, 29.536242, 39.127945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776012, 29.198826, 38.559948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541889, 29.513466, 38.638618>,  <43.401417, 29.702250, 38.685822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541889, 29.513466, 38.638618>,  <43.776012, 29.198826, 38.559948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541889, 29.513466, 38.638618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186088, 0.105772, -0.976823,
		-0.789171, -0.608338, 0.084468,
		-0.585304, 0.786599, 0.196676,
		43.366299, 29.749445, 38.697620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151424, 29.043139, 38.351971>,  <43.776012, 29.198826, 38.559948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151424, 29.043139, 38.351971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135693, 29.442055, 38.376850>,  <43.126251, 29.681404, 38.391777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135693, 29.442055, 38.376850>,  <43.151424, 29.043139, 38.351971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135693, 29.442055, 38.376850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322547, 0.046244, -0.945423,
		-0.945736, -0.057250, 0.319853,
		-0.039334, 0.997288, 0.062200,
		43.123894, 29.741241, 38.395512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622475, 29.171196, 37.901287>,  <43.151424, 29.043139, 38.351971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622475, 29.171196, 37.901287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781654, 29.528770, 37.983761>,  <42.877163, 29.743315, 38.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781654, 29.528770, 37.983761>,  <42.622475, 29.171196, 37.901287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781654, 29.528770, 37.983761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322056, 0.346569, -0.881005,
		-0.859019, 0.284196, 0.425816,
		0.397953, 0.893936, 0.206182,
		42.901039, 29.796951, 38.045616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133675, 29.843348, 37.893311>,  <42.622475, 29.171196, 37.901287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133675, 29.843348, 37.893311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506908, 29.971645, 37.828232>,  <42.730850, 30.048624, 37.789185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506908, 29.971645, 37.828232>,  <42.133675, 29.843348, 37.893311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506908, 29.971645, 37.828232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284105, 0.379983, -0.880282,
		-0.220526, 0.867603, 0.445683,
		0.933088, 0.320746, -0.162694,
		42.786835, 30.067869, 37.779423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039875, 30.359922, 37.338165>,  <42.133675, 29.843348, 37.893311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039875, 30.359922, 37.338165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432293, 30.320103, 37.404671>,  <42.667744, 30.296211, 37.444572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432293, 30.320103, 37.404671>,  <42.039875, 30.359922, 37.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432293, 30.320103, 37.404671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192590, 0.405639, -0.893513,
		0.021505, 0.908596, 0.417122,
		0.981044, -0.099548, 0.166263,
		42.726604, 30.290237, 37.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205387, 30.984159, 37.076950>,  <42.039875, 30.359922, 37.338165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205387, 30.984159, 37.076950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469776, 30.694504, 36.998222>,  <42.628410, 30.520710, 36.950985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469776, 30.694504, 36.998222>,  <42.205387, 30.984159, 37.076950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469776, 30.694504, 36.998222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141088, 0.137685, -0.980376,
		0.737028, 0.675770, -0.011161,
		0.660972, -0.724139, -0.196821,
		42.668068, 30.477262, 36.939175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591125, 31.248377, 36.551868>,  <42.205387, 30.984159, 37.076950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591125, 31.248377, 36.551868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619690, 30.850895, 36.517349>,  <42.636829, 30.612406, 36.496635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619690, 30.850895, 36.517349>,  <42.591125, 31.248377, 36.551868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619690, 30.850895, 36.517349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110032, 0.093844, -0.989488,
		0.991359, 0.061168, 0.116042,
		0.071415, -0.993706, -0.086302,
		42.641113, 30.552784, 36.491459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178219, 30.825710, 36.395668>,  <42.591125, 31.248377, 36.551868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178219, 30.825710, 36.395668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209221, 30.443630, 36.281418>,  <43.227821, 30.214382, 36.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209221, 30.443630, 36.281418>,  <43.178219, 30.825710, 36.395668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209221, 30.443630, 36.281418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399064, 0.232813, -0.886874,
		0.913641, 0.182721, -0.363143,
		0.077506, -0.955202, -0.285626,
		43.232471, 30.157070, 36.195728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619442, 30.643702, 35.759674>,  <43.178219, 30.825710, 36.395668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619442, 30.643702, 35.759674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295681, 30.414843, 35.812603>,  <43.101425, 30.277527, 35.844360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295681, 30.414843, 35.812603>,  <43.619442, 30.643702, 35.759674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295681, 30.414843, 35.812603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330569, 0.257674, -0.907925,
		0.485372, -0.778621, -0.397697,
		-0.809406, -0.572148, 0.132320,
		43.052860, 30.243198, 35.852299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599766, 29.996964, 35.289452>,  <43.619442, 30.643702, 35.759674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599766, 29.996964, 35.289452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220783, 30.094423, 35.372353>,  <42.993393, 30.152899, 35.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220783, 30.094423, 35.372353>,  <43.599766, 29.996964, 35.289452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220783, 30.094423, 35.372353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245406, -0.138082, -0.959536,
		-0.205178, -0.959982, 0.190621,
		-0.947459, 0.243655, 0.207254,
		42.936546, 30.167519, 35.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187286, 29.530310, 34.950600>,  <43.599766, 29.996964, 35.289452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187286, 29.530310, 34.950600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944221, 29.839533, 35.023415>,  <42.798382, 30.025066, 35.067104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944221, 29.839533, 35.023415>,  <43.187286, 29.530310, 34.950600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944221, 29.839533, 35.023415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542383, -0.236510, -0.806154,
		-0.580149, -0.588598, 0.563009,
		-0.607658, 0.773056, 0.182034,
		42.761925, 30.071449, 35.078026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173237, 28.799919, 34.431087>,  <43.187286, 29.530310, 34.950600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173237, 28.799919, 34.431087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091335, 28.805029, 34.039597>,  <43.042194, 28.808096, 33.804703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091335, 28.805029, 34.039597>,  <43.173237, 28.799919, 34.431087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091335, 28.805029, 34.039597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213911, 0.976329, -0.032005,
		0.955154, -0.215914, -0.202640,
		-0.204754, 0.012777, -0.978730,
		43.029911, 28.808863, 33.745979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005524, 28.874884, 34.197910>,  <43.173237, 28.799919, 34.431087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005524, 28.874884, 34.197910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710213, 29.092140, 34.037937>,  <43.533028, 29.222494, 33.941952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.710213, 29.092140, 34.037937>,  <44.005524, 28.874884, 34.197910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710213, 29.092140, 34.037937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346709, 0.814190, 0.465712,
		0.578572, 0.205161, -0.789407,
		-0.738273, 0.543143, -0.399936,
		43.488731, 29.255083, 33.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170612, 29.364187, 33.655586>,  <44.005524, 28.874884, 34.197910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170612, 29.364187, 33.655586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897758, 29.409788, 33.944500>,  <43.734047, 29.437149, 34.117847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897758, 29.409788, 33.944500>,  <44.170612, 29.364187, 33.655586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897758, 29.409788, 33.944500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538692, 0.746300, 0.390957,
		-0.494469, 0.655775, -0.570491,
		-0.682137, 0.114003, 0.722283,
		43.693119, 29.443989, 34.161186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923084, 30.080574, 33.668831>,  <44.170612, 29.364187, 33.655586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923084, 30.080574, 33.668831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942577, 29.889551, 34.019730>,  <43.954273, 29.774937, 34.230270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942577, 29.889551, 34.019730>,  <43.923084, 30.080574, 33.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942577, 29.889551, 34.019730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626941, 0.698344, 0.345340,
		-0.777541, 0.533154, 0.333432,
		0.048731, -0.477558, 0.877248,
		43.957195, 29.746284, 34.282906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899410, 30.551895, 34.175781>,  <43.923084, 30.080574, 33.668831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899410, 30.551895, 34.175781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062157, 30.228292, 34.345474>,  <44.159805, 30.034132, 34.447289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062157, 30.228292, 34.345474>,  <43.899410, 30.551895, 34.175781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062157, 30.228292, 34.345474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773753, 0.552062, 0.310700,
		-0.485559, 0.201837, 0.850584,
		0.406865, -0.809005, 0.424231,
		44.184216, 29.985590, 34.472744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870686, 30.639174, 34.928375>,  <43.899410, 30.551895, 34.175781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870686, 30.639174, 34.928375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174637, 30.435829, 34.766312>,  <44.357006, 30.313822, 34.669075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174637, 30.435829, 34.766312>,  <43.870686, 30.639174, 34.928375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174637, 30.435829, 34.766312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635914, 0.710640, 0.301005,
		0.134904, -0.486373, 0.863274,
		0.759878, -0.508361, -0.405160,
		44.402599, 30.283321, 34.644764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385181, 30.504642, 35.444004>,  <43.870686, 30.639174, 34.928375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385181, 30.504642, 35.444004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562592, 30.495167, 35.085625>,  <44.669037, 30.489481, 34.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562592, 30.495167, 35.085625>,  <44.385181, 30.504642, 35.444004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562592, 30.495167, 35.085625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646553, 0.700746, 0.301537,
		0.620691, -0.713018, 0.326111,
		0.443522, -0.023687, -0.895950,
		44.695648, 30.488060, 34.816841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099979, 30.285019, 35.455486>,  <44.385181, 30.504642, 35.444004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099979, 30.285019, 35.455486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073574, 30.536303, 35.145390>,  <45.057732, 30.687073, 34.959332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073574, 30.536303, 35.145390>,  <45.099979, 30.285019, 35.455486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073574, 30.536303, 35.145390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669984, 0.603655, 0.432113,
		0.739434, -0.490872, -0.460741,
		-0.066016, 0.628208, -0.775240,
		45.053768, 30.724766, 34.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683311, 30.516701, 35.135574>,  <45.099979, 30.285019, 35.455486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683311, 30.516701, 35.135574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469601, 30.842571, 35.045380>,  <45.341373, 31.038094, 34.991264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469601, 30.842571, 35.045380>,  <45.683311, 30.516701, 35.135574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469601, 30.842571, 35.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762245, 0.579636, 0.288104,
		0.365410, -0.017945, -0.930674,
		-0.534282, 0.814678, -0.225484,
		45.309315, 31.086975, 34.977734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151279, 30.962759, 34.828213>,  <45.683311, 30.516701, 35.135574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151279, 30.962759, 34.828213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851418, 31.148418, 35.016930>,  <45.671501, 31.259813, 35.130157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851418, 31.148418, 35.016930>,  <46.151279, 30.962759, 34.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851418, 31.148418, 35.016930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647471, 0.662019, 0.377508,
		-0.137113, 0.588470, -0.796808,
		-0.749654, 0.464148, 0.471789,
		45.626522, 31.287663, 35.158466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475521, 31.551888, 34.928486>,  <46.151279, 30.962759, 34.828213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475521, 31.551888, 34.928486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125031, 31.626091, 35.106388>,  <45.914738, 31.670612, 35.213131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125031, 31.626091, 35.106388>,  <46.475521, 31.551888, 34.928486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125031, 31.626091, 35.106388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331870, 0.901490, 0.277811,
		-0.349410, 0.391028, -0.851475,
		-0.876228, 0.185509, 0.444760,
		45.862164, 31.681744, 35.239815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081875, 32.146534, 34.599972>,  <46.475521, 31.551888, 34.928486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081875, 32.146534, 34.599972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023487, 32.093021, 34.992054>,  <45.988457, 32.060913, 35.227303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023487, 32.093021, 34.992054>,  <46.081875, 32.146534, 34.599972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023487, 32.093021, 34.992054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304925, 0.936490, 0.173224,
		-0.941124, 0.324173, -0.095902,
		-0.145966, -0.133782, 0.980202,
		45.979698, 32.052887, 35.286114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493172, 32.526634, 34.850780>,  <46.081875, 32.146534, 34.599972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493172, 32.526634, 34.850780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799885, 32.480923, 35.103443>,  <45.983913, 32.453495, 35.255039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799885, 32.480923, 35.103443>,  <45.493172, 32.526634, 34.850780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799885, 32.480923, 35.103443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177620, 0.983377, -0.037706,
		-0.616843, 0.141106, 0.774335,
		0.766783, -0.114279, 0.631652,
		46.029919, 32.446640, 35.292938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476830, 33.083649, 35.291962>,  <45.493172, 32.526634, 34.850780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476830, 33.083649, 35.291962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852539, 32.946606, 35.284084>,  <46.077965, 32.864380, 35.279358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.852539, 32.946606, 35.284084>,  <45.476830, 33.083649, 35.291962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852539, 32.946606, 35.284084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343169, 0.937919, 0.050429,
		0.001195, -0.054126, 0.998533,
		0.939273, -0.342606, -0.019695,
		46.134319, 32.843822, 35.278175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.810760, 33.516136, 35.864826>,  <45.476830, 33.083649, 35.291962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.810760, 33.516136, 35.864826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060684, 33.357292, 35.595928>,  <46.210636, 33.261986, 35.434589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.060684, 33.357292, 35.595928>,  <45.810760, 33.516136, 35.864826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060684, 33.357292, 35.595928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495294, 0.867172, -0.051922,
		0.603575, -0.300520, 0.738502,
		0.624805, -0.397115, -0.672249,
		46.248127, 33.238159, 35.394253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504524, 33.645214, 36.001427>,  <45.810760, 33.516136, 35.864826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504524, 33.645214, 36.001427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463333, 33.583199, 35.608418>,  <46.438618, 33.545990, 35.372612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463333, 33.583199, 35.608418>,  <46.504524, 33.645214, 36.001427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463333, 33.583199, 35.608418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602739, 0.776045, -0.185633,
		0.791265, -0.611323, 0.013534,
		-0.102979, -0.155043, -0.982526,
		46.432438, 33.536686, 35.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.136047, 33.481003, 35.686348>,  <46.504524, 33.645214, 36.001427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.136047, 33.481003, 35.686348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922775, 33.667816, 35.404186>,  <46.794811, 33.779903, 35.234890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922775, 33.667816, 35.404186>,  <47.136047, 33.481003, 35.686348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922775, 33.667816, 35.404186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514672, 0.840830, 0.167685,
		0.671441, -0.273646, -0.688684,
		-0.533179, 0.467037, -0.705405,
		46.762821, 33.807926, 35.192566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501778, 33.695972, 35.078365>,  <47.136047, 33.481003, 35.686348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501778, 33.695972, 35.078365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199593, 33.935177, 35.185444>,  <47.018284, 34.078701, 35.249691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199593, 33.935177, 35.185444>,  <47.501778, 33.695972, 35.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199593, 33.935177, 35.185444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640220, 0.760619, 0.107596,
		-0.139273, 0.252671, -0.957476,
		-0.755461, 0.598010, 0.267699,
		46.972954, 34.114578, 35.265755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181229, 34.180622, 34.522446>,  <47.501778, 33.695972, 35.078365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181229, 34.180622, 34.522446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243496, 34.308247, 34.896389>,  <47.280857, 34.384823, 35.120754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243496, 34.308247, 34.896389>,  <47.181229, 34.180622, 34.522446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243496, 34.308247, 34.896389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843837, 0.449042, -0.293769,
		-0.513523, 0.834602, -0.199333,
		0.155671, 0.319061, 0.934862,
		47.290195, 34.403965, 35.176849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056515, 34.959442, 34.613831>,  <47.181229, 34.180622, 34.522446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056515, 34.959442, 34.613831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346222, 34.795040, 34.835281>,  <47.520046, 34.696400, 34.968151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346222, 34.795040, 34.835281>,  <47.056515, 34.959442, 34.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346222, 34.795040, 34.835281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683223, 0.536027, -0.495865,
		-0.092955, 0.737392, 0.669039,
		0.724270, -0.411009, 0.553629,
		47.563503, 34.671738, 35.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.416256, 35.423603, 34.986229>,  <47.056515, 34.959442, 34.613831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.416256, 35.423603, 34.986229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639671, 35.102570, 34.902424>,  <47.773720, 34.909950, 34.852142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639671, 35.102570, 34.902424>,  <47.416256, 35.423603, 34.986229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639671, 35.102570, 34.902424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525073, 0.537629, -0.659738,
		0.642135, 0.258480, 0.721700,
		0.558536, -0.802586, -0.209509,
		47.807232, 34.861794, 34.839569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.809189, 32.854961, 26.418503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431442, 32.977146, 26.467262>,  <38.204792, 33.050457, 26.496517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431442, 32.977146, 26.467262>,  <38.809189, 32.854961, 26.418503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431442, 32.977146, 26.467262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103871, -0.074650, 0.991785,
		0.312053, 0.949273, 0.038769,
		-0.944370, 0.305462, 0.121897,
		38.148132, 33.068787, 26.503832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816727, 33.243935, 27.038494>,  <38.809189, 32.854961, 26.418503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816727, 33.243935, 27.038494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429710, 33.157459, 26.986135>,  <38.197502, 33.105572, 26.954721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429710, 33.157459, 26.986135>,  <38.816727, 33.243935, 27.038494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429710, 33.157459, 26.986135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116876, -0.076459, 0.990199,
		-0.224080, 0.973353, 0.048710,
		-0.967537, -0.216191, -0.130895,
		38.139450, 33.092602, 26.946867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395550, 33.741943, 27.451008>,  <38.816727, 33.243935, 27.038494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395550, 33.741943, 27.451008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151962, 33.429356, 27.396666>,  <38.005810, 33.241802, 27.364061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151962, 33.429356, 27.396666>,  <38.395550, 33.741943, 27.451008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151962, 33.429356, 27.396666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218418, 0.000559, 0.975855,
		-0.762527, 0.623941, -0.171028,
		-0.608972, -0.781471, -0.135854,
		37.969273, 33.194916, 27.355909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828564, 33.920666, 27.805401>,  <38.395550, 33.741943, 27.451008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828564, 33.920666, 27.805401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813732, 33.522896, 27.765932>,  <37.804832, 33.284233, 27.742250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813732, 33.522896, 27.765932>,  <37.828564, 33.920666, 27.805401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813732, 33.522896, 27.765932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032903, -0.097471, 0.994694,
		-0.998770, 0.040132, -0.029105,
		-0.037082, -0.994429, -0.098671,
		37.802608, 33.224567, 27.736330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346771, 33.711300, 28.318150>,  <37.828564, 33.920666, 27.805401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346771, 33.711300, 28.318150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556190, 33.382458, 28.228670>,  <37.681843, 33.185154, 28.174982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556190, 33.382458, 28.228670>,  <37.346771, 33.711300, 28.318150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556190, 33.382458, 28.228670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181490, -0.364143, 0.913488,
		-0.832443, -0.437654, -0.339850,
		0.523546, -0.822106, -0.223698,
		37.713253, 33.135826, 28.161560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934223, 33.211491, 28.536913>,  <37.346771, 33.711300, 28.318150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934223, 33.211491, 28.536913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293400, 33.035496, 28.532494>,  <37.508904, 32.929901, 28.529842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293400, 33.035496, 28.532494>,  <36.934223, 33.211491, 28.536913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293400, 33.035496, 28.532494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208255, -0.446862, 0.870026,
		-0.387731, -0.778929, -0.492883,
		0.897939, -0.439981, -0.011047,
		37.562782, 32.903500, 28.529179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790405, 32.581482, 28.818796>,  <36.934223, 33.211491, 28.536913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790405, 32.581482, 28.818796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186390, 32.627537, 28.851591>,  <37.423981, 32.655170, 28.871269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186390, 32.627537, 28.851591>,  <36.790405, 32.581482, 28.818796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186390, 32.627537, 28.851591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038280, -0.339978, 0.939654,
		0.136067, -0.933358, -0.332157,
		0.989960, 0.115141, 0.081989,
		37.483379, 32.662079, 28.876188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018272, 31.923691, 28.944197>,  <36.790405, 32.581482, 28.818796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018272, 31.923691, 28.944197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292286, 32.182312, 29.078482>,  <37.456692, 32.337486, 29.159052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292286, 32.182312, 29.078482>,  <37.018272, 31.923691, 28.944197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292286, 32.182312, 29.078482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094265, -0.378277, 0.920881,
		0.722390, -0.662478, -0.198184,
		0.685031, 0.646553, 0.335712,
		37.497795, 32.376278, 29.179195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304035, 31.610613, 29.416418>,  <37.018272, 31.923691, 28.944197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304035, 31.610613, 29.416418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429089, 31.972752, 29.531382>,  <37.504120, 32.190037, 29.600359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429089, 31.972752, 29.531382>,  <37.304035, 31.610613, 29.416418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429089, 31.972752, 29.531382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229624, -0.365634, 0.901989,
		0.921701, -0.215997, -0.322200,
		0.312634, 0.905349, 0.287407,
		37.522881, 32.244358, 29.617603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903111, 31.514097, 29.722113>,  <37.304035, 31.610613, 29.416418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903111, 31.514097, 29.722113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789948, 31.873173, 29.857235>,  <37.722050, 32.088619, 29.938309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789948, 31.873173, 29.857235>,  <37.903111, 31.514097, 29.722113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789948, 31.873173, 29.857235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242804, -0.273695, 0.930665,
		0.927905, 0.345315, -0.140532,
		-0.282910, 0.897691, 0.337807,
		37.705074, 32.142479, 29.958576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400677, 31.670530, 30.282034>,  <37.903111, 31.514097, 29.722113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400677, 31.670530, 30.282034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094208, 31.914526, 30.362923>,  <37.910328, 32.060925, 30.411457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094208, 31.914526, 30.362923>,  <38.400677, 31.670530, 30.282034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094208, 31.914526, 30.362923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095155, -0.203524, 0.974435,
		0.635554, 0.765826, 0.097890,
		-0.766170, 0.609991, 0.202223,
		37.864357, 32.097523, 30.423590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707283, 32.179958, 30.797188>,  <38.400677, 31.670530, 30.282034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707283, 32.179958, 30.797188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308529, 32.161377, 30.822672>,  <38.069275, 32.150227, 30.837961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308529, 32.161377, 30.822672>,  <38.707283, 32.179958, 30.797188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308529, 32.161377, 30.822672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078367, -0.494800, 0.865466,
		-0.008680, 0.867765, 0.496899,
		-0.996887, -0.046452, 0.063709,
		38.009464, 32.147442, 30.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527855, 32.350712, 31.488117>,  <38.707283, 32.179958, 30.797188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527855, 32.350712, 31.488117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206993, 32.156105, 31.349646>,  <38.014477, 32.039341, 31.266563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206993, 32.156105, 31.349646>,  <38.527855, 32.350712, 31.488117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206993, 32.156105, 31.349646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094505, -0.469007, 0.878124,
		-0.589584, 0.737110, 0.330240,
		-0.802159, -0.486519, -0.346180,
		37.966347, 32.010151, 31.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970337, 32.308804, 32.062695>,  <38.527855, 32.350712, 31.488117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970337, 32.308804, 32.062695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828381, 32.031723, 31.811546>,  <37.743206, 31.865475, 31.660858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828381, 32.031723, 31.811546>,  <37.970337, 32.308804, 32.062695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828381, 32.031723, 31.811546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225112, -0.588510, 0.776518,
		-0.907402, 0.416918, 0.052920,
		-0.354888, -0.692701, -0.627869,
		37.721912, 31.823912, 31.623186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317600, 31.975027, 32.341042>,  <37.970337, 32.308804, 32.062695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317600, 31.975027, 32.341042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451538, 31.708698, 32.074341>,  <37.531898, 31.548901, 31.914320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451538, 31.708698, 32.074341>,  <37.317600, 31.975027, 32.341042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451538, 31.708698, 32.074341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310956, -0.746039, 0.588839,
		-0.889488, 0.010164, -0.456846,
		0.334840, -0.665824, -0.666753,
		37.551991, 31.508951, 31.874315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806480, 31.366884, 32.335350>,  <37.317600, 31.975027, 32.341042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806480, 31.366884, 32.335350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160034, 31.251455, 32.188122>,  <37.372166, 31.182198, 32.099785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160034, 31.251455, 32.188122>,  <36.806480, 31.366884, 32.335350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160034, 31.251455, 32.188122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063351, -0.853581, 0.517094,
		-0.463398, -0.433732, -0.772747,
		0.883883, -0.288574, -0.368070,
		37.425198, 31.164883, 32.077702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721844, 30.585241, 32.164406>,  <36.806480, 31.366884, 32.335350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721844, 30.585241, 32.164406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093121, 30.717360, 32.232941>,  <37.315887, 30.796631, 32.274059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093121, 30.717360, 32.232941>,  <36.721844, 30.585241, 32.164406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093121, 30.717360, 32.232941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072139, -0.611467, 0.787975,
		0.365032, -0.719035, -0.591388,
		0.928196, 0.330298, 0.171334,
		37.371578, 30.816448, 32.284340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985844, 30.011030, 32.465984>,  <36.721844, 30.585241, 32.164406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985844, 30.011030, 32.465984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273895, 30.270885, 32.563457>,  <37.446728, 30.426798, 32.621941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273895, 30.270885, 32.563457>,  <36.985844, 30.011030, 32.465984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273895, 30.270885, 32.563457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306104, -0.612651, 0.728670,
		0.622663, -0.450146, -0.640046,
		0.720132, 0.649637, 0.243684,
		37.489937, 30.465776, 32.636562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569637, 29.600485, 32.480106>,  <36.985844, 30.011030, 32.465984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569637, 29.600485, 32.480106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651218, 29.926117, 32.697609>,  <37.700169, 30.121496, 32.828110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651218, 29.926117, 32.697609>,  <37.569637, 29.600485, 32.480106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651218, 29.926117, 32.697609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189864, -0.577779, 0.793803,
		0.960393, -0.058659, -0.272405,
		0.203954, 0.814082, 0.543758,
		37.712406, 30.170341, 32.860737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267555, 29.566456, 32.784721>,  <37.569637, 29.600485, 32.480106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267555, 29.566456, 32.784721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092823, 29.845726, 33.011608>,  <37.987984, 30.013288, 33.147739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092823, 29.845726, 33.011608>,  <38.267555, 29.566456, 32.784721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092823, 29.845726, 33.011608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122203, -0.578655, 0.806365,
		0.891207, 0.421557, 0.167453,
		-0.436826, 0.698175, 0.567217,
		37.961777, 30.055178, 33.181774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731060, 29.633213, 33.202713>,  <38.267555, 29.566456, 32.784721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731060, 29.633213, 33.202713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421398, 29.800371, 33.392891>,  <38.235600, 29.900665, 33.507000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421398, 29.800371, 33.392891>,  <38.731060, 29.633213, 33.202713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421398, 29.800371, 33.392891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281154, -0.445944, 0.849756,
		0.567130, 0.791517, 0.227738,
		-0.774155, 0.417893, 0.475447,
		38.189152, 29.925739, 33.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004368, 29.832788, 33.794010>,  <38.731060, 29.633213, 33.202713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004368, 29.832788, 33.794010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613602, 29.771248, 33.853283>,  <38.379143, 29.734324, 33.888847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613602, 29.771248, 33.853283>,  <39.004368, 29.832788, 33.794010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613602, 29.771248, 33.853283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197609, -0.387499, 0.900442,
		-0.081112, 0.908941, 0.408958,
		-0.976919, -0.153850, 0.148184,
		38.320526, 29.725094, 33.897739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289715, 29.138926, 33.567776>,  <39.004368, 29.832788, 33.794010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289715, 29.138926, 33.567776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610622, 28.905775, 33.619347>,  <39.803165, 28.765884, 33.650288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.610622, 28.905775, 33.619347>,  <39.289715, 29.138926, 33.567776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610622, 28.905775, 33.619347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151121, -0.010634, -0.988458,
		0.577517, 0.812493, 0.079553,
		0.802269, -0.582874, 0.128926,
		39.851303, 28.730913, 33.658024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943363, 29.560911, 33.246071>,  <39.289715, 29.138926, 33.567776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943363, 29.560911, 33.246071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966339, 29.161884, 33.230255>,  <39.980125, 28.922468, 33.220764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966339, 29.161884, 33.230255>,  <39.943363, 29.560911, 33.246071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966339, 29.161884, 33.230255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094432, 0.044858, -0.994520,
		0.993873, 0.053395, 0.096779,
		0.057444, -0.997566, -0.039541,
		39.983574, 28.862616, 33.218391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494545, 29.482119, 32.736526>,  <39.943363, 29.560911, 33.246071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494545, 29.482119, 32.736526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332478, 29.117987, 32.770321>,  <40.235237, 28.899508, 32.790596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332478, 29.117987, 32.770321>,  <40.494545, 29.482119, 32.736526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332478, 29.117987, 32.770321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084664, -0.129373, -0.987975,
		0.910315, -0.393140, 0.129490,
		-0.405165, -0.910331, 0.084486,
		40.210926, 28.844887, 32.795666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896214, 28.985346, 32.305862>,  <40.494545, 29.482119, 32.736526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896214, 28.985346, 32.305862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538143, 28.815407, 32.359772>,  <40.323299, 28.713444, 32.392117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538143, 28.815407, 32.359772>,  <40.896214, 28.985346, 32.305862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538143, 28.815407, 32.359772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109141, -0.084224, -0.990452,
		0.432141, -0.901339, 0.029027,
		-0.895177, -0.424847, 0.134769,
		40.269588, 28.687952, 32.400204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762733, 28.393156, 31.812401>,  <40.896214, 28.985346, 32.305862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762733, 28.393156, 31.812401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.395428, 28.497368, 31.931671>,  <40.175045, 28.559895, 32.003235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.395428, 28.497368, 31.931671>,  <40.762733, 28.393156, 31.812401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395428, 28.497368, 31.931671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242889, 0.224098, -0.943814,
		-0.312712, -0.939098, -0.142502,
		-0.918268, 0.260530, 0.298175,
		40.119946, 28.575527, 32.021122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294243, 28.084248, 31.357445>,  <40.762733, 28.393156, 31.812401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294243, 28.084248, 31.357445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.087296, 28.384441, 31.521935>,  <39.963127, 28.564558, 31.620628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.087296, 28.384441, 31.521935>,  <40.294243, 28.084248, 31.357445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087296, 28.384441, 31.521935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314669, 0.280035, -0.906953,
		-0.795811, -0.598627, 0.091273,
		-0.517367, 0.750484, 0.411224,
		39.932087, 28.609587, 31.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685307, 28.074774, 30.979004>,  <40.294243, 28.084248, 31.357445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685307, 28.074774, 30.979004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699398, 28.441946, 31.137072>,  <39.707851, 28.662251, 31.231913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699398, 28.441946, 31.137072>,  <39.685307, 28.074774, 30.979004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699398, 28.441946, 31.137072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418619, 0.372607, -0.828204,
		-0.907478, -0.136248, 0.397391,
		0.035229, 0.917933, 0.395169,
		39.709969, 28.717325, 31.255623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006786, 28.297525, 30.787340>,  <39.685307, 28.074774, 30.979004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006786, 28.297525, 30.787340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233570, 28.616688, 30.869226>,  <39.369640, 28.808186, 30.918358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233570, 28.616688, 30.869226>,  <39.006786, 28.297525, 30.787340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233570, 28.616688, 30.869226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378539, 0.473085, -0.795549,
		-0.731620, 0.373549, 0.570257,
		0.566957, 0.797904, 0.204715,
		39.403656, 28.856060, 30.930641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571529, 28.890730, 30.568575>,  <39.006786, 28.297525, 30.787340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571529, 28.890730, 30.568575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949940, 29.020357, 30.569948>,  <39.176987, 29.098133, 30.570772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949940, 29.020357, 30.569948>,  <38.571529, 28.890730, 30.568575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949940, 29.020357, 30.569948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199635, 0.591055, -0.781537,
		-0.255299, 0.738671, 0.623849,
		0.946028, 0.324067, 0.003431,
		39.233749, 29.117577, 30.570978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517529, 29.634760, 30.465080>,  <38.571529, 28.890730, 30.568575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517529, 29.634760, 30.465080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891193, 29.539820, 30.358486>,  <39.115391, 29.482855, 30.294531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891193, 29.539820, 30.358486>,  <38.517529, 29.634760, 30.465080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891193, 29.539820, 30.358486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094315, 0.555986, -0.825824,
		0.344171, 0.796583, 0.496993,
		0.934158, -0.237351, -0.266484,
		39.171440, 29.468615, 30.278542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717804, 30.184063, 30.013430>,  <38.517529, 29.634760, 30.465080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717804, 30.184063, 30.013430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008720, 29.918859, 29.942474>,  <39.183270, 29.759737, 29.899900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008720, 29.918859, 29.942474>,  <38.717804, 30.184063, 30.013430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008720, 29.918859, 29.942474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136394, 0.392929, -0.909397,
		0.672638, 0.637203, 0.376205,
		0.727293, -0.663007, -0.177388,
		39.226910, 29.719957, 29.889257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214390, 30.574800, 29.633533>,  <38.717804, 30.184063, 30.013430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214390, 30.574800, 29.633533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296383, 30.192728, 29.548105>,  <39.345577, 29.963486, 29.496847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296383, 30.192728, 29.548105>,  <39.214390, 30.574800, 29.633533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296383, 30.192728, 29.548105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096700, 0.236902, -0.966709,
		0.973977, 0.177506, 0.140927,
		0.204983, -0.955180, -0.213572,
		39.357880, 29.906174, 29.484034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807842, 30.591463, 29.212181>,  <39.214390, 30.574800, 29.633533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807842, 30.591463, 29.212181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627918, 30.240589, 29.144981>,  <39.519966, 30.030066, 29.104662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.627918, 30.240589, 29.144981>,  <39.807842, 30.591463, 29.212181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627918, 30.240589, 29.144981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051404, 0.162362, -0.985391,
		0.891646, -0.451870, -0.027941,
		-0.449806, -0.877184, -0.167997,
		39.492977, 29.977434, 29.094582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286758, 30.101730, 28.728485>,  <39.807842, 30.591463, 29.212181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286758, 30.101730, 28.728485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907375, 29.984037, 28.681396>,  <39.679745, 29.913422, 28.653143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.907375, 29.984037, 28.681396>,  <40.286758, 30.101730, 28.728485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907375, 29.984037, 28.681396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039595, 0.258530, -0.965191,
		0.314427, -0.920102, -0.233554,
		-0.948455, -0.294235, -0.117721,
		39.622837, 29.895769, 28.646080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216961, 29.747540, 28.018286>,  <40.286758, 30.101730, 28.728485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216961, 29.747540, 28.018286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840702, 29.849863, 28.107492>,  <39.614944, 29.911259, 28.161016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840702, 29.849863, 28.107492>,  <40.216961, 29.747540, 28.018286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840702, 29.849863, 28.107492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132913, 0.326956, -0.935646,
		-0.312266, -0.909758, -0.273551,
		-0.940651, 0.255812, 0.223016,
		39.558506, 29.926607, 28.174397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907383, 29.614943, 27.418459>,  <40.216961, 29.747540, 28.018286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907383, 29.614943, 27.418459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.652256, 29.853113, 27.613869>,  <39.499180, 29.996016, 27.731115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.652256, 29.853113, 27.613869>,  <39.907383, 29.614943, 27.418459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652256, 29.853113, 27.613869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173472, 0.506933, -0.844349,
		-0.750398, -0.623286, -0.220040,
		-0.637817, 0.595427, 0.488524,
		39.460911, 30.031742, 27.760426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151588, 29.523544, 27.123739>,  <39.907383, 29.614943, 27.418459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151588, 29.523544, 27.123739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204639, 29.891809, 27.270596>,  <39.236469, 30.112768, 27.358709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204639, 29.891809, 27.270596>,  <39.151588, 29.523544, 27.123739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204639, 29.891809, 27.270596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287857, 0.390226, -0.874564,
		-0.948445, 0.010310, 0.316775,
		0.132631, 0.920661, 0.367140,
		39.244431, 30.168009, 27.380737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721287, 29.894470, 26.709526>,  <39.151588, 29.523544, 27.123739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721287, 29.894470, 26.709526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914078, 30.185305, 26.905094>,  <39.029751, 30.359806, 27.022434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914078, 30.185305, 26.905094>,  <38.721287, 29.894470, 26.709526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914078, 30.185305, 26.905094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112468, 0.604734, -0.788447,
		-0.868935, 0.325026, 0.373243,
		0.481978, 0.727087, 0.488919,
		39.058670, 30.403431, 27.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.304379, 30.592319, 26.494955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675812, 30.675848, 26.617672>,  <38.898674, 30.725965, 26.691301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675812, 30.675848, 26.617672>,  <38.304379, 30.592319, 26.494955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675812, 30.675848, 26.617672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067540, 0.717777, -0.692990,
		-0.364918, 0.664222, 0.652415,
		0.928587, 0.208820, 0.306791,
		38.954388, 30.738495, 26.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316788, 31.269268, 26.631536>,  <38.304379, 30.592319, 26.494955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316788, 31.269268, 26.631536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702785, 31.187960, 26.565245>,  <38.934383, 31.139175, 26.525471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.702785, 31.187960, 26.565245>,  <38.316788, 31.269268, 26.631536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702785, 31.187960, 26.565245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058748, 0.783380, -0.618761,
		0.255602, 0.587365, 0.767900,
		0.964996, -0.203269, -0.165727,
		38.992283, 31.126980, 26.515526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710709, 31.907370, 26.642136>,  <38.316788, 31.269268, 26.631536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710709, 31.907370, 26.642136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962662, 31.667912, 26.444197>,  <39.113834, 31.524237, 26.325434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962662, 31.667912, 26.444197>,  <38.710709, 31.907370, 26.642136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962662, 31.667912, 26.444197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391918, 0.795041, -0.462938,
		0.670558, 0.097658, 0.735401,
		0.629883, -0.598643, -0.494847,
		39.151627, 31.488319, 26.295742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292412, 32.239632, 26.602741>,  <38.710709, 31.907370, 26.642136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292412, 32.239632, 26.602741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336231, 31.974989, 26.306017>,  <39.362522, 31.816204, 26.127983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336231, 31.974989, 26.306017>,  <39.292412, 32.239632, 26.602741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336231, 31.974989, 26.306017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402834, 0.711814, -0.575365,
		0.908694, -0.235798, 0.344493,
		0.109545, -0.661604, -0.741809,
		39.369095, 31.776508, 26.083475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833939, 32.652523, 26.171322>,  <39.292412, 32.239632, 26.602741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833939, 32.652523, 26.171322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727798, 32.336552, 25.950197>,  <39.664116, 32.146969, 25.817522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727798, 32.336552, 25.950197>,  <39.833939, 32.652523, 26.171322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727798, 32.336552, 25.950197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235898, 0.502749, -0.831622,
		0.934848, -0.351079, 0.052938,
		-0.265350, -0.789928, -0.552813,
		39.648193, 32.099575, 25.784353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413059, 32.516712, 25.763409>,  <39.833939, 32.652523, 26.171322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413059, 32.516712, 25.763409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076187, 32.396999, 25.584002>,  <39.874065, 32.325172, 25.476357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076187, 32.396999, 25.584002>,  <40.413059, 32.516712, 25.763409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076187, 32.396999, 25.584002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273898, 0.479054, -0.833958,
		0.464459, -0.825187, -0.321473,
		-0.842174, -0.299288, -0.448518,
		39.823536, 32.307213, 25.449446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589619, 32.282394, 25.092896>,  <40.413059, 32.516712, 25.763409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589619, 32.282394, 25.092896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198952, 32.361008, 25.058264>,  <39.964550, 32.408176, 25.037485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198952, 32.361008, 25.058264>,  <40.589619, 32.282394, 25.092896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198952, 32.361008, 25.058264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197134, 0.660502, -0.724483,
		-0.085199, -0.724646, -0.683834,
		-0.976667, 0.196533, -0.086578,
		39.905952, 32.419968, 25.032290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372761, 32.127369, 24.382387>,  <40.589619, 32.282394, 25.092896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372761, 32.127369, 24.382387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086124, 32.366570, 24.525993>,  <39.914143, 32.510090, 24.612158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086124, 32.366570, 24.525993>,  <40.372761, 32.127369, 24.382387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086124, 32.366570, 24.525993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103684, 0.600330, -0.793003,
		-0.689747, -0.531033, -0.492192,
		-0.716588, 0.598004, 0.359016,
		39.871147, 32.545971, 24.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006538, 32.368580, 23.855297>,  <40.372761, 32.127369, 24.382387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006538, 32.368580, 23.855297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905689, 32.657734, 24.112631>,  <39.845181, 32.831226, 24.267031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905689, 32.657734, 24.112631>,  <40.006538, 32.368580, 23.855297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905689, 32.657734, 24.112631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007016, 0.663427, -0.748208,
		-0.967671, -0.193151, -0.162191,
		-0.252119, 0.722881, 0.643334,
		39.830055, 32.874599, 24.305632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456928, 32.744736, 23.500212>,  <40.006538, 32.368580, 23.855297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456928, 32.744736, 23.500212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610191, 32.971855, 23.791634>,  <39.702148, 33.108128, 23.966486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610191, 32.971855, 23.791634>,  <39.456928, 32.744736, 23.500212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610191, 32.971855, 23.791634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116847, 0.752616, -0.648009,
		-0.916261, 0.333421, 0.222027,
		0.383161, 0.567802, 0.728552,
		39.725140, 33.142197, 24.010199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137512, 33.313686, 23.397200>,  <39.456928, 32.744736, 23.500212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137512, 33.313686, 23.397200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464882, 33.441010, 23.588556>,  <39.661304, 33.517403, 23.703369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464882, 33.441010, 23.588556>,  <39.137512, 33.313686, 23.397200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464882, 33.441010, 23.588556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131535, 0.706655, -0.695225,
		-0.559354, 0.631915, 0.536476,
		0.818426, 0.318311, 0.478389,
		39.710411, 33.536503, 23.732073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133091, 34.048862, 23.341549>,  <39.137512, 33.313686, 23.397200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133091, 34.048862, 23.341549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512375, 33.981297, 23.449152>,  <39.739944, 33.940758, 23.513714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512375, 33.981297, 23.449152>,  <39.133091, 34.048862, 23.341549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512375, 33.981297, 23.449152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312626, 0.646204, -0.696193,
		-0.056238, 0.744236, 0.665544,
		0.948210, -0.168914, 0.269009,
		39.796837, 33.930622, 23.529854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443081, 34.759541, 23.541311>,  <39.133091, 34.048862, 23.341549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443081, 34.759541, 23.541311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.724937, 34.499146, 23.428392>,  <39.894051, 34.342907, 23.360641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.724937, 34.499146, 23.428392>,  <39.443081, 34.759541, 23.541311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724937, 34.499146, 23.428392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328074, 0.651675, -0.683877,
		0.629159, 0.389277, 0.672772,
		0.704646, -0.650986, -0.282296,
		39.936333, 34.303848, 23.343704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965050, 35.161198, 23.463795>,  <39.443081, 34.759541, 23.541311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965050, 35.161198, 23.463795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096695, 34.841122, 23.263241>,  <40.175682, 34.649078, 23.142908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096695, 34.841122, 23.263241>,  <39.965050, 35.161198, 23.463795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096695, 34.841122, 23.263241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434363, 0.599741, -0.672042,
		0.838461, 0.003391, 0.544951,
		0.329109, -0.800187, -0.501386,
		40.195427, 34.601067, 23.112825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624012, 35.362354, 23.182226>,  <39.965050, 35.161198, 23.463795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624012, 35.362354, 23.182226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524212, 35.041367, 22.965414>,  <40.464333, 34.848774, 22.835327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524212, 35.041367, 22.965414>,  <40.624012, 35.362354, 23.182226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524212, 35.041367, 22.965414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518451, 0.362062, -0.774673,
		0.817899, -0.474294, 0.325708,
		-0.249497, -0.802468, -0.542029,
		40.449364, 34.800625, 22.802805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248096, 35.152512, 22.772150>,  <40.624012, 35.362354, 23.182226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248096, 35.152512, 22.772150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936096, 34.982445, 22.588486>,  <40.748894, 34.880405, 22.478287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.936096, 34.982445, 22.588486>,  <41.248096, 35.152512, 22.772150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936096, 34.982445, 22.588486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373872, 0.271768, -0.886770,
		0.501809, -0.863352, -0.053023,
		-0.780005, -0.425166, -0.459159,
		40.702095, 34.854897, 22.450739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463131, 34.716633, 22.227688>,  <41.248096, 35.152512, 22.772150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463131, 34.716633, 22.227688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089546, 34.825214, 22.134714>,  <40.865395, 34.890362, 22.078930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089546, 34.825214, 22.134714>,  <41.463131, 34.716633, 22.227688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089546, 34.825214, 22.134714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290594, 0.198305, -0.936072,
		-0.208004, -0.941801, -0.264092,
		-0.933965, 0.271450, -0.232433,
		40.809357, 34.906651, 22.064983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291695, 34.474106, 21.571514>,  <41.463131, 34.716633, 22.227688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291695, 34.474106, 21.571514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007042, 34.755123, 21.569866>,  <40.836250, 34.923733, 21.568878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007042, 34.755123, 21.569866>,  <41.291695, 34.474106, 21.571514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007042, 34.755123, 21.569866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299414, 0.297973, -0.906401,
		-0.635557, -0.646257, -0.422398,
		-0.711631, 0.702541, -0.004119,
		40.793552, 34.965885, 21.568630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018921, 34.431271, 20.893681>,  <41.291695, 34.474106, 21.571514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018921, 34.431271, 20.893681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855400, 34.774315, 21.018507>,  <40.757290, 34.980141, 21.093403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855400, 34.774315, 21.018507>,  <41.018921, 34.431271, 20.893681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855400, 34.774315, 21.018507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127778, 0.392361, -0.910892,
		-0.903635, -0.332497, -0.269981,
		-0.408799, 0.857612, 0.312066,
		40.732761, 35.031597, 21.112127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495514, 34.612865, 20.474974>,  <41.018921, 34.431271, 20.893681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495514, 34.612865, 20.474974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591194, 34.963039, 20.642977>,  <40.648602, 35.173141, 20.743778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591194, 34.963039, 20.642977>,  <40.495514, 34.612865, 20.474974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591194, 34.963039, 20.642977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104060, 0.406959, -0.907500,
		-0.965378, 0.260779, 0.006247,
		0.239199, 0.875431, 0.420006,
		40.662952, 35.225670, 20.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945148, 35.059906, 20.193672>,  <40.495514, 34.612865, 20.474974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945148, 35.059906, 20.193672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196129, 35.338619, 20.332695>,  <40.346718, 35.505848, 20.416109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.196129, 35.338619, 20.332695>,  <39.945148, 35.059906, 20.193672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196129, 35.338619, 20.332695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132775, 0.535560, -0.833994,
		-0.767254, 0.477142, 0.428552,
		0.627449, 0.696786, 0.347558,
		40.384365, 35.547653, 20.436962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657009, 35.752880, 20.131756>,  <39.945148, 35.059906, 20.193672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657009, 35.752880, 20.131756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051285, 35.820187, 20.135813>,  <40.287849, 35.860569, 20.138247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051285, 35.820187, 20.135813>,  <39.657009, 35.752880, 20.131756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051285, 35.820187, 20.135813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093469, 0.595627, -0.797805,
		-0.140285, 0.785439, 0.602831,
		0.985689, 0.168267, 0.010143,
		40.346992, 35.870667, 20.138855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028671, 35.807720, 19.695974>,  <39.657009, 35.752880, 20.131756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028671, 35.807720, 19.695974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815647, 36.091618, 19.880430>,  <38.687832, 36.261955, 19.991104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815647, 36.091618, 19.880430>,  <39.028671, 35.807720, 19.695974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815647, 36.091618, 19.880430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012262, 0.551241, -0.834256,
		-0.846306, -0.438633, -0.302269,
		-0.532555, 0.709743, 0.461140,
		38.655880, 36.304539, 20.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323921, 35.959450, 19.359076>,  <39.028671, 35.807720, 19.695974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323921, 35.959450, 19.359076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454361, 36.280266, 19.559233>,  <38.532627, 36.472755, 19.679327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454361, 36.280266, 19.559233>,  <38.323921, 35.959450, 19.359076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454361, 36.280266, 19.559233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207292, 0.577114, -0.789917,
		-0.922327, 0.153868, 0.354455,
		0.326104, 0.802037, 0.500393,
		38.552193, 36.520878, 19.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969757, 36.598183, 19.662149>,  <38.323921, 35.959450, 19.359076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969757, 36.598183, 19.662149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600819, 36.752697, 19.659260>,  <37.379456, 36.845406, 19.657526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600819, 36.752697, 19.659260>,  <37.969757, 36.598183, 19.662149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600819, 36.752697, 19.659260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, -0.390692, 0.904554,
		0.346595, 0.835548, 0.426299,
		-0.922350, 0.386288, -0.007226,
		37.324112, 36.868584, 19.657091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828209, 37.258423, 20.111210>,  <37.969757, 36.598183, 19.662149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828209, 37.258423, 20.111210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548431, 36.982105, 20.037901>,  <37.380566, 36.816315, 19.993916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.548431, 36.982105, 20.037901>,  <37.828209, 37.258423, 20.111210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548431, 36.982105, 20.037901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095710, -0.344658, 0.933836,
		-0.708255, 0.635621, 0.307183,
		-0.699439, -0.690795, -0.183270,
		37.338600, 36.774868, 19.982920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467129, 37.160458, 20.681850>,  <37.828209, 37.258423, 20.111210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467129, 37.160458, 20.681850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301754, 36.823063, 20.544676>,  <37.202530, 36.620628, 20.462372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301754, 36.823063, 20.544676>,  <37.467129, 37.160458, 20.681850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301754, 36.823063, 20.544676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032292, -0.362813, 0.931302,
		-0.909959, 0.396111, 0.122763,
		-0.413439, -0.843483, -0.342936,
		37.177723, 36.570019, 20.441795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953712, 36.926167, 21.187614>,  <37.467129, 37.160458, 20.681850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953712, 36.926167, 21.187614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026382, 36.586567, 20.989145>,  <37.069984, 36.382805, 20.870064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026382, 36.586567, 20.989145>,  <36.953712, 36.926167, 21.187614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026382, 36.586567, 20.989145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116309, -0.482477, 0.868152,
		-0.976457, -0.215427, 0.011095,
		0.181671, -0.849003, -0.496174,
		37.080883, 36.331867, 20.840294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457615, 36.425339, 21.428125>,  <36.953712, 36.926167, 21.187614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457615, 36.425339, 21.428125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782242, 36.246281, 21.277945>,  <36.977020, 36.138844, 21.187836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782242, 36.246281, 21.277945>,  <36.457615, 36.425339, 21.428125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782242, 36.246281, 21.277945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135342, -0.481096, 0.866158,
		-0.568362, -0.753763, -0.329857,
		0.811570, -0.447648, -0.375452,
		37.025715, 36.111988, 21.165310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503429, 35.806335, 21.719051>,  <36.457615, 36.425339, 21.428125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503429, 35.806335, 21.719051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875229, 35.817234, 21.571922>,  <37.098309, 35.823772, 21.483644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875229, 35.817234, 21.571922>,  <36.503429, 35.806335, 21.719051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875229, 35.817234, 21.571922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341443, -0.440679, 0.830192,
		-0.139473, -0.897251, -0.418912,
		0.929497, 0.027245, -0.367823,
		37.154079, 35.825409, 21.461575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735920, 35.118954, 21.739050>,  <36.503429, 35.806335, 21.719051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735920, 35.118954, 21.739050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051666, 35.364449, 21.745018>,  <37.241116, 35.511745, 21.748598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051666, 35.364449, 21.745018>,  <36.735920, 35.118954, 21.739050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051666, 35.364449, 21.745018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274350, -0.374393, 0.885755,
		0.549205, -0.695096, -0.463913,
		0.789371, 0.613736, 0.014919,
		37.288479, 35.548569, 21.749495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290527, 34.598755, 21.992174>,  <36.735920, 35.118954, 21.739050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290527, 34.598755, 21.992174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389702, 34.980522, 22.058643>,  <37.449207, 35.209583, 22.098524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389702, 34.980522, 22.058643>,  <37.290527, 34.598755, 21.992174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389702, 34.980522, 22.058643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332936, -0.245027, 0.910558,
		0.909769, -0.170438, -0.378512,
		0.247939, 0.954417, 0.166174,
		37.464085, 35.266846, 22.108496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897434, 34.609688, 22.188732>,  <37.290527, 34.598755, 21.992174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897434, 34.609688, 22.188732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793083, 34.962910, 22.344763>,  <37.730473, 35.174843, 22.438381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793083, 34.962910, 22.344763>,  <37.897434, 34.609688, 22.188732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793083, 34.962910, 22.344763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348149, -0.290818, 0.891189,
		0.900408, 0.368297, -0.231566,
		-0.260879, 0.883053, 0.390077,
		37.714821, 35.227825, 22.461786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552143, 35.056282, 22.453396>,  <37.897434, 34.609688, 22.188732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552143, 35.056282, 22.453396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246971, 35.241100, 22.634256>,  <38.063866, 35.351994, 22.742773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246971, 35.241100, 22.634256>,  <38.552143, 35.056282, 22.453396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246971, 35.241100, 22.634256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294791, -0.373816, 0.879409,
		0.575352, 0.804221, 0.148988,
		-0.762934, 0.462050, 0.452153,
		38.018089, 35.379715, 22.769903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799774, 35.299999, 23.145262>,  <38.552143, 35.056282, 22.453396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799774, 35.299999, 23.145262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408195, 35.334946, 23.219049>,  <38.173248, 35.355915, 23.263323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408195, 35.334946, 23.219049>,  <38.799774, 35.299999, 23.145262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408195, 35.334946, 23.219049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168646, -0.162908, 0.972121,
		0.114983, 0.982765, 0.144745,
		-0.978947, 0.087366, 0.184471,
		38.114510, 35.361156, 23.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812824, 35.651802, 23.724651>,  <38.799774, 35.299999, 23.145262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812824, 35.651802, 23.724651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451748, 35.484135, 23.685783>,  <38.235100, 35.383533, 23.662462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.451748, 35.484135, 23.685783>,  <38.812824, 35.651802, 23.724651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451748, 35.484135, 23.685783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118206, -0.458716, 0.880685,
		-0.413726, 0.783504, 0.463629,
		-0.902695, -0.419166, -0.097168,
		38.180939, 35.358383, 23.656633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476494, 35.730484, 24.371239>,  <38.812824, 35.651802, 23.724651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476494, 35.730484, 24.371239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267708, 35.420078, 24.229618>,  <38.142437, 35.233833, 24.144646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267708, 35.420078, 24.229618>,  <38.476494, 35.730484, 24.371239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267708, 35.420078, 24.229618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058284, -0.446561, 0.892853,
		-0.850971, 0.445406, 0.278320,
		-0.521968, -0.776014, -0.354051,
		38.111118, 35.187275, 24.123404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947617, 35.534447, 24.858841>,  <38.476494, 35.730484, 24.371239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947617, 35.534447, 24.858841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944023, 35.207901, 24.627855>,  <37.941868, 35.011974, 24.489264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944023, 35.207901, 24.627855>,  <37.947617, 35.534447, 24.858841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944023, 35.207901, 24.627855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019983, -0.577226, 0.816340,
		-0.999760, 0.018872, -0.011129,
		-0.008982, -0.816366, -0.577464,
		37.941330, 34.962990, 24.454617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357246, 35.081551, 25.027267>,  <37.947617, 35.534447, 24.858841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357246, 35.081551, 25.027267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657234, 34.862946, 24.878206>,  <37.837227, 34.731785, 24.788771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657234, 34.862946, 24.878206>,  <37.357246, 35.081551, 25.027267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657234, 34.862946, 24.878206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110137, -0.658677, 0.744321,
		-0.652233, -0.517180, -0.554182,
		0.749975, -0.546507, -0.372650,
		37.882225, 34.698994, 24.766411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071495, 34.427467, 25.167137>,  <37.357246, 35.081551, 25.027267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071495, 34.427467, 25.167137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446835, 34.350277, 25.052416>,  <37.672039, 34.303963, 24.983583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446835, 34.350277, 25.052416>,  <37.071495, 34.427467, 25.167137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446835, 34.350277, 25.052416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015416, -0.852207, 0.522978,
		-0.345340, -0.486316, -0.802644,
		0.938351, -0.192978, -0.286804,
		37.728340, 34.292385, 24.966375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956051, 33.749092, 25.006170>,  <37.071495, 34.427467, 25.167137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956051, 33.749092, 25.006170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338840, 33.829876, 25.089504>,  <37.568516, 33.878345, 25.139505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338840, 33.829876, 25.089504>,  <36.956051, 33.749092, 25.006170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338840, 33.829876, 25.089504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047279, -0.816939, 0.574783,
		0.286283, -0.540205, -0.791341,
		0.956978, 0.201964, 0.208335,
		37.625935, 33.890465, 25.152004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212494, 33.083801, 24.995155>,  <36.956051, 33.749092, 25.006170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212494, 33.083801, 24.995155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441135, 33.337570, 25.203304>,  <37.578320, 33.489830, 25.328194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441135, 33.337570, 25.203304>,  <37.212494, 33.083801, 24.995155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441135, 33.337570, 25.203304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162099, -0.708997, 0.686328,
		0.804360, -0.307955, -0.508102,
		0.571602, 0.634418, 0.520370,
		37.612617, 33.527897, 25.359415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722939, 32.589970, 25.325094>,  <37.212494, 33.083801, 24.995155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722939, 32.589970, 25.325094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749813, 32.941406, 25.514227>,  <37.765938, 33.152267, 25.627707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.749813, 32.941406, 25.514227>,  <37.722939, 32.589970, 25.325094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749813, 32.941406, 25.514227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278821, -0.471555, 0.836597,
		0.957990, 0.075627, -0.276651,
		0.067187, 0.878588, 0.472831,
		37.769970, 33.204983, 25.656076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289173, 32.586456, 25.642487>,  <37.722939, 32.589970, 25.325094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289173, 32.586456, 25.642487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115246, 32.875854, 25.856955>,  <38.010887, 33.049496, 25.985636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115246, 32.875854, 25.856955>,  <38.289173, 32.586456, 25.642487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115246, 32.875854, 25.856955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349461, -0.413173, 0.840931,
		0.829944, 0.553026, -0.073178,
		-0.434821, 0.723499, 0.536172,
		37.984798, 33.092903, 26.017807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.555305, 28.694090, 29.058065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479725, 29.058079, 29.205711>,  <39.434376, 29.276472, 29.294298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479725, 29.058079, 29.205711>,  <39.555305, 28.694090, 29.058065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479725, 29.058079, 29.205711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245222, -0.320252, 0.915044,
		0.950876, 0.263412, -0.162634,
		-0.188950, 0.909974, 0.369114,
		39.423038, 29.331072, 29.316446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003601, 28.737053, 29.622154>,  <39.555305, 28.694090, 29.058065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003601, 28.737053, 29.622154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778690, 29.059870, 29.694298>,  <39.643745, 29.253561, 29.737583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778690, 29.059870, 29.694298>,  <40.003601, 28.737053, 29.622154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778690, 29.059870, 29.694298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189723, -0.086390, 0.978030,
		0.804893, 0.584139, -0.104540,
		-0.562274, 0.807043, 0.180359,
		39.610008, 29.301983, 29.748405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431709, 29.069796, 30.062578>,  <40.003601, 28.737053, 29.622154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431709, 29.069796, 30.062578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061604, 29.214809, 30.107224>,  <39.839539, 29.301817, 30.134010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061604, 29.214809, 30.107224>,  <40.431709, 29.069796, 30.062578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061604, 29.214809, 30.107224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071706, -0.121768, 0.989965,
		0.372487, 0.923981, 0.086672,
		-0.925263, 0.362535, 0.111612,
		39.784023, 29.323570, 30.140707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419395, 29.612890, 30.641806>,  <40.431709, 29.069796, 30.062578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419395, 29.612890, 30.641806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040310, 29.485273, 30.644817>,  <39.812859, 29.408703, 30.646626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040310, 29.485273, 30.644817>,  <40.419395, 29.612890, 30.641806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040310, 29.485273, 30.644817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064263, -0.167670, 0.983746,
		-0.312596, 0.932790, 0.179405,
		-0.947710, -0.319045, 0.007531,
		39.755997, 29.389561, 30.647078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109795, 29.890291, 31.253006>,  <40.419395, 29.612890, 30.641806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109795, 29.890291, 31.253006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882053, 29.574434, 31.161526>,  <39.745411, 29.384920, 31.106638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882053, 29.574434, 31.161526>,  <40.109795, 29.890291, 31.253006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882053, 29.574434, 31.161526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016363, -0.267254, 0.963487,
		-0.821933, 0.552302, 0.139240,
		-0.569349, -0.789644, -0.228702,
		39.711250, 29.337542, 31.092915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653442, 29.836931, 31.819632>,  <40.109795, 29.890291, 31.253006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653442, 29.836931, 31.819632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653690, 29.477070, 31.644991>,  <39.653839, 29.261152, 31.540207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653690, 29.477070, 31.644991>,  <39.653442, 29.836931, 31.819632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653690, 29.477070, 31.644991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220247, -0.426006, 0.877503,
		-0.975444, 0.095613, -0.198411,
		0.000624, -0.899654, -0.436603,
		39.653877, 29.207174, 31.514009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101139, 29.458599, 32.107861>,  <39.653442, 29.836931, 31.819632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101139, 29.458599, 32.107861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349007, 29.169743, 31.984880>,  <39.497726, 28.996429, 31.911093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349007, 29.169743, 31.984880>,  <39.101139, 29.458599, 32.107861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349007, 29.169743, 31.984880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082178, -0.449267, 0.889610,
		-0.780551, -0.525996, -0.337740,
		0.619666, -0.722141, -0.307451,
		39.534908, 28.953100, 31.892645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893108, 28.861347, 32.451775>,  <39.101139, 29.458599, 32.107861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893108, 28.861347, 32.451775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262054, 28.770168, 32.327011>,  <39.483421, 28.715462, 32.252151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262054, 28.770168, 32.327011>,  <38.893108, 28.861347, 32.451775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262054, 28.770168, 32.327011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224781, -0.339983, 0.913173,
		-0.314195, -0.912389, -0.262351,
		0.922363, -0.227943, -0.311909,
		39.538765, 28.701784, 32.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157131, 28.069334, 32.512424>,  <38.893108, 28.861347, 32.451775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157131, 28.069334, 32.512424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498173, 28.278082, 32.523182>,  <39.702797, 28.403330, 32.529636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498173, 28.278082, 32.523182>,  <39.157131, 28.069334, 32.512424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498173, 28.278082, 32.523182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195349, -0.366039, 0.909865,
		0.484674, -0.770499, -0.414032,
		0.852602, 0.521869, 0.026893,
		39.753952, 28.434643, 32.531250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773067, 27.555700, 32.681847>,  <39.157131, 28.069334, 32.512424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773067, 27.555700, 32.681847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871941, 27.937641, 32.747761>,  <39.931267, 28.166805, 32.787312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.871941, 27.937641, 32.747761>,  <39.773067, 27.555700, 32.681847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871941, 27.937641, 32.747761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243703, -0.225863, 0.943183,
		0.937820, -0.192984, -0.288531,
		0.247187, 0.954852, 0.164788,
		39.946098, 28.224096, 32.797195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147980, 27.559519, 33.219006>,  <39.773067, 27.555700, 32.681847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147980, 27.559519, 33.219006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104244, 27.956953, 33.207447>,  <40.078003, 28.195414, 33.200512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104244, 27.956953, 33.207447>,  <40.147980, 27.559519, 33.219006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104244, 27.956953, 33.207447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144428, 0.044647, 0.988507,
		0.983455, 0.103912, -0.148384,
		-0.109343, 0.993584, -0.028901,
		40.071442, 28.255028, 33.198776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787224, 27.817198, 33.672962>,  <40.147980, 27.559519, 33.219006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787224, 27.817198, 33.672962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502483, 28.098108, 33.676331>,  <40.331638, 28.266655, 33.678352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502483, 28.098108, 33.676331>,  <40.787224, 27.817198, 33.672962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502483, 28.098108, 33.676331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208055, 0.199405, 0.957576,
		0.670804, 0.683406, -0.288060,
		-0.711853, 0.702278, 0.008425,
		40.288929, 28.308792, 33.678860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057861, 28.433355, 33.953594>,  <40.787224, 27.817198, 33.672962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057861, 28.433355, 33.953594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798424, 28.228888, 34.179173>,  <40.642761, 28.106207, 34.314518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798424, 28.228888, 34.179173>,  <41.057861, 28.433355, 33.953594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798424, 28.228888, 34.179173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439714, 0.353136, 0.825801,
		-0.621272, 0.783583, -0.004274,
		-0.648593, -0.511168, 0.563946,
		40.603848, 28.075537, 34.348358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832104, 28.913733, 34.571648>,  <41.057861, 28.433355, 33.953594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832104, 28.913733, 34.571648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.748722, 28.534714, 34.668560>,  <40.698692, 28.307302, 34.726707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.748722, 28.534714, 34.668560>,  <40.832104, 28.913733, 34.571648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748722, 28.534714, 34.668560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244229, 0.189438, 0.951034,
		-0.947046, 0.257423, 0.191929,
		-0.208459, -0.947548, 0.242277,
		40.686184, 28.250450, 34.741241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485672, 29.480402, 34.468956>,  <40.832104, 28.913733, 34.571648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485672, 29.480402, 34.468956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654327, 29.806992, 34.626736>,  <41.755520, 30.002945, 34.721405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654327, 29.806992, 34.626736>,  <41.485672, 29.480402, 34.468956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654327, 29.806992, 34.626736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401760, 0.558192, -0.725955,
		-0.812904, 0.147613, 0.563380,
		0.421635, 0.816476, 0.394451,
		41.780819, 30.051933, 34.745071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982819, 30.119787, 34.554848>,  <41.485672, 29.480402, 34.468956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982819, 30.119787, 34.554848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349335, 30.279177, 34.538681>,  <41.569244, 30.374811, 34.528980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.349335, 30.279177, 34.538681>,  <40.982819, 30.119787, 34.554848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349335, 30.279177, 34.538681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285142, 0.578137, -0.764494,
		-0.281264, 0.712022, 0.643362,
		0.916288, 0.398475, -0.040418,
		41.624222, 30.398720, 34.526554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890041, 30.823311, 34.490662>,  <40.982819, 30.119787, 34.554848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890041, 30.823311, 34.490662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.263199, 30.756144, 34.363216>,  <41.487095, 30.715843, 34.286751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.263199, 30.756144, 34.363216>,  <40.890041, 30.823311, 34.490662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263199, 30.756144, 34.363216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155449, 0.610270, -0.776792,
		0.324875, 0.774193, 0.543215,
		0.932895, -0.167918, -0.318609,
		41.543068, 30.705769, 34.267635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125595, 31.496237, 34.383678>,  <40.890041, 30.823311, 34.490662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125595, 31.496237, 34.383678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351833, 31.253176, 34.160656>,  <41.487576, 31.107340, 34.026844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351833, 31.253176, 34.160656>,  <41.125595, 31.496237, 34.383678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351833, 31.253176, 34.160656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001251, 0.675446, -0.737408,
		0.824685, 0.417769, 0.381267,
		0.565591, -0.607652, -0.557553,
		41.521511, 31.070881, 33.993389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738941, 31.917242, 34.072521>,  <41.125595, 31.496237, 34.383678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738941, 31.917242, 34.072521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749832, 31.585897, 33.848709>,  <41.756367, 31.387091, 33.714420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749832, 31.585897, 33.848709>,  <41.738941, 31.917242, 34.072521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749832, 31.585897, 33.848709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094910, 0.559352, -0.823479,
		0.995113, -0.030687, 0.093847,
		0.027224, -0.828362, -0.559531,
		41.757999, 31.337389, 33.680851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407608, 31.832989, 33.733284>,  <41.738941, 31.917242, 34.072521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407608, 31.832989, 33.733284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147831, 31.622475, 33.513741>,  <41.991966, 31.496166, 33.382015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.147831, 31.622475, 33.513741>,  <42.407608, 31.832989, 33.733284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147831, 31.622475, 33.513741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322752, 0.462772, -0.825635,
		0.688518, -0.713348, -0.130683,
		-0.649442, -0.526286, -0.548861,
		41.952999, 31.464590, 33.349083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744167, 31.727957, 33.140175>,  <42.407608, 31.832989, 33.733284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744167, 31.727957, 33.140175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371098, 31.658924, 33.013470>,  <42.147255, 31.617504, 32.937447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.371098, 31.658924, 33.013470>,  <42.744167, 31.727957, 33.140175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371098, 31.658924, 33.013470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259389, 0.289373, -0.921402,
		0.250676, -0.941531, -0.225125,
		-0.932673, -0.172578, -0.316761,
		42.091297, 31.607149, 32.918442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759087, 31.392651, 32.481262>,  <42.744167, 31.727957, 33.140175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759087, 31.392651, 32.481262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380535, 31.520466, 32.462234>,  <42.153404, 31.597155, 32.450817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380535, 31.520466, 32.462234>,  <42.759087, 31.392651, 32.481262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380535, 31.520466, 32.462234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095483, 0.136004, -0.986096,
		-0.308627, -0.937762, -0.159222,
		-0.946378, 0.319539, -0.047566,
		42.096622, 31.616327, 32.447964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518898, 31.162909, 31.943342>,  <42.759087, 31.392651, 32.481262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518898, 31.162909, 31.943342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256512, 31.459332, 32.000687>,  <42.099079, 31.637184, 32.035091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256512, 31.459332, 32.000687>,  <42.518898, 31.162909, 31.943342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256512, 31.459332, 32.000687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023845, 0.210183, -0.977371,
		-0.754418, -0.637699, -0.155542,
		-0.655961, 0.741055, 0.143360,
		42.059723, 31.681648, 32.043694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117332, 31.143169, 31.368969>,  <42.518898, 31.162909, 31.943342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117332, 31.143169, 31.368969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040840, 31.511528, 31.504839>,  <41.994946, 31.732544, 31.586361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040840, 31.511528, 31.504839>,  <42.117332, 31.143169, 31.368969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040840, 31.511528, 31.504839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123234, 0.320799, -0.939096,
		-0.973778, -0.221445, 0.052139,
		-0.191232, 0.920896, 0.339677,
		41.983471, 31.787796, 31.606743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529278, 31.356506, 31.115250>,  <42.117332, 31.143169, 31.368969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529278, 31.356506, 31.115250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692921, 31.711065, 31.201900>,  <41.791107, 31.923801, 31.253891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.692921, 31.711065, 31.201900>,  <41.529278, 31.356506, 31.115250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692921, 31.711065, 31.201900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181845, 0.311843, -0.932570,
		-0.894181, 0.342132, 0.288765,
		0.409111, 0.886397, 0.216629,
		41.815655, 31.976984, 31.266890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972466, 31.889147, 31.009773>,  <41.529278, 31.356506, 31.115250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972466, 31.889147, 31.009773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334240, 32.056553, 30.976669>,  <41.551304, 32.156998, 30.956806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334240, 32.056553, 30.976669>,  <40.972466, 31.889147, 31.009773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334240, 32.056553, 30.976669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193455, 0.229435, -0.953905,
		-0.380234, 0.878753, 0.288471,
		0.904432, 0.418513, -0.082760,
		41.605568, 32.182106, 30.951841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778549, 32.379082, 30.605015>,  <40.972466, 31.889147, 31.009773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778549, 32.379082, 30.605015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178413, 32.380257, 30.594683>,  <41.418331, 32.380962, 30.588484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178413, 32.380257, 30.594683>,  <40.778549, 32.379082, 30.605015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178413, 32.380257, 30.594683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025329, 0.333504, -0.942408,
		0.005851, 0.942744, 0.333466,
		0.999662, 0.002933, -0.025830,
		41.478313, 32.381138, 30.586933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929798, 32.973282, 30.316076>,  <40.778549, 32.379082, 30.605015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929798, 32.973282, 30.316076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269150, 32.763443, 30.287632>,  <41.472759, 32.637539, 30.270565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.269150, 32.763443, 30.287632>,  <40.929798, 32.973282, 30.316076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269150, 32.763443, 30.287632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141182, 0.353655, -0.924659,
		0.510223, 0.774418, 0.374096,
		0.848375, -0.524599, -0.071109,
		41.523663, 32.606064, 30.266300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849411, 33.560062, 30.708200>,  <40.929798, 32.973282, 30.316076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849411, 33.560062, 30.708200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752789, 33.942547, 30.774298>,  <40.694813, 34.172039, 30.813955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.752789, 33.942547, 30.774298>,  <40.849411, 33.560062, 30.708200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752789, 33.942547, 30.774298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445559, -0.260568, 0.856494,
		0.862048, 0.133268, 0.488992,
		-0.241558, 0.956214, 0.165243,
		40.680321, 34.229412, 30.823870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291023, 33.769459, 31.420906>,  <40.849411, 33.560062, 30.708200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291023, 33.769459, 31.420906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958664, 33.983017, 31.358219>,  <40.759247, 34.111153, 31.320606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958664, 33.983017, 31.358219>,  <41.291023, 33.769459, 31.420906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958664, 33.983017, 31.358219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143204, 0.066976, 0.987424,
		0.537675, 0.842896, 0.020805,
		-0.830902, 0.533892, -0.156718,
		40.709393, 34.143185, 31.311203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257847, 34.299534, 31.987131>,  <41.291023, 33.769459, 31.420906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257847, 34.299534, 31.987131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899227, 34.297832, 31.809965>,  <40.684055, 34.296814, 31.703665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899227, 34.297832, 31.809965>,  <41.257847, 34.299534, 31.987131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899227, 34.297832, 31.809965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441174, 0.097699, 0.892088,
		0.039481, 0.995207, -0.089468,
		-0.896553, -0.004250, -0.442917,
		40.630260, 34.296558, 31.677090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890049, 34.818687, 32.250908>,  <41.257847, 34.299534, 31.987131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890049, 34.818687, 32.250908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590744, 34.587620, 32.120438>,  <40.411160, 34.448978, 32.042152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590744, 34.587620, 32.120438>,  <40.890049, 34.818687, 32.250908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590744, 34.587620, 32.120438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440927, 0.065702, 0.895135,
		-0.495664, 0.813620, -0.303874,
		-0.748265, -0.577673, -0.326180,
		40.366264, 34.414318, 32.022583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184410, 35.091560, 32.608177>,  <40.890049, 34.818687, 32.250908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184410, 35.091560, 32.608177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075417, 34.725399, 32.489658>,  <40.010021, 34.505703, 32.418549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075417, 34.725399, 32.489658>,  <40.184410, 35.091560, 32.608177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075417, 34.725399, 32.489658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375736, -0.182261, 0.908627,
		-0.885763, 0.358912, -0.294287,
		-0.272481, -0.915403, -0.296296,
		39.993671, 34.450779, 32.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473690, 34.937908, 32.779408>,  <40.184410, 35.091560, 32.608177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473690, 34.937908, 32.779408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642090, 34.576973, 32.742439>,  <39.743130, 34.360413, 32.720261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.642090, 34.576973, 32.742439>,  <39.473690, 34.937908, 32.779408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642090, 34.576973, 32.742439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199023, -0.191298, 0.961142,
		-0.884957, -0.386247, -0.260123,
		0.421000, -0.902340, -0.092419,
		39.768391, 34.306271, 32.714714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980949, 34.553585, 33.181408>,  <39.473690, 34.937908, 32.779408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980949, 34.553585, 33.181408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306145, 34.324509, 33.139309>,  <39.501263, 34.187061, 33.114052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.306145, 34.324509, 33.139309>,  <38.980949, 34.553585, 33.181408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306145, 34.324509, 33.139309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147482, -0.377376, 0.914241,
		-0.563293, -0.727746, -0.391264,
		0.812989, -0.572689, -0.105244,
		39.550041, 34.152702, 33.107735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865246, 33.764278, 33.287857>,  <38.980949, 34.553585, 33.181408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865246, 33.764278, 33.287857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245235, 33.854099, 33.374683>,  <39.473228, 33.907993, 33.426781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.245235, 33.854099, 33.374683>,  <38.865246, 33.764278, 33.287857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245235, 33.854099, 33.374683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132753, -0.338776, 0.931454,
		0.282698, -0.913677, -0.292020,
		0.949978, 0.224554, 0.217065,
		39.530228, 33.921467, 33.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030422, 33.173492, 33.675758>,  <38.865246, 33.764278, 33.287857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030422, 33.173492, 33.675758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353931, 33.406246, 33.709942>,  <39.548035, 33.545898, 33.730453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353931, 33.406246, 33.709942>,  <39.030422, 33.173492, 33.675758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353931, 33.406246, 33.709942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083882, -0.257948, 0.962511,
		0.582112, -0.771281, -0.257430,
		0.808770, 0.581883, 0.085458,
		39.596561, 33.580811, 33.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482574, 32.802742, 34.014847>,  <39.030422, 33.173492, 33.675758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482574, 32.802742, 34.014847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558487, 33.190887, 34.074680>,  <39.604034, 33.423775, 34.110580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558487, 33.190887, 34.074680>,  <39.482574, 32.802742, 34.014847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558487, 33.190887, 34.074680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046363, -0.143326, 0.988589,
		0.980730, -0.194555, 0.017788,
		0.189785, 0.970364, 0.149584,
		39.615421, 33.481998, 34.119556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019993, 32.720470, 34.405872>,  <39.482574, 32.802742, 34.014847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019993, 32.720470, 34.405872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893368, 33.096363, 34.457558>,  <39.817394, 33.321899, 34.488567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893368, 33.096363, 34.457558>,  <40.019993, 32.720470, 34.405872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893368, 33.096363, 34.457558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060462, -0.115949, 0.991413,
		0.946643, 0.321655, -0.020113,
		-0.316561, 0.939731, 0.129210,
		39.798401, 33.378281, 34.496323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521027, 33.031639, 34.940479>,  <40.019993, 32.720470, 34.405872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521027, 33.031639, 34.940479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186420, 33.250744, 34.934727>,  <39.985657, 33.382206, 34.931274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186420, 33.250744, 34.934727>,  <40.521027, 33.031639, 34.940479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186420, 33.250744, 34.934727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048675, 0.100418, 0.993754,
		0.545783, 0.830587, -0.110663,
		-0.836512, 0.547760, -0.014378,
		39.935467, 33.415073, 34.930412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.737698, 35.927246, 28.071934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347664, 36.014004, 28.053347>,  <42.113644, 36.066059, 28.042194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347664, 36.014004, 28.053347>,  <42.737698, 35.927246, 28.071934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347664, 36.014004, 28.053347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051072, -0.015662, 0.998572,
		0.215859, 0.976069, 0.026349,
		-0.975088, 0.216896, -0.046469,
		42.055138, 36.079071, 28.039406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617027, 36.366741, 28.678484>,  <42.737698, 35.927246, 28.071934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617027, 36.366741, 28.678484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261784, 36.248501, 28.537697>,  <42.048637, 36.177555, 28.453224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261784, 36.248501, 28.537697>,  <42.617027, 36.366741, 28.678484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261784, 36.248501, 28.537697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340702, -0.090623, 0.935793,
		-0.308519, 0.951003, -0.020229,
		-0.888109, -0.295603, -0.351968,
		41.995350, 36.159821, 28.432106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168537, 36.571732, 29.167910>,  <42.617027, 36.366741, 28.678484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168537, 36.571732, 29.167910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934811, 36.305500, 28.982183>,  <41.794575, 36.145763, 28.870747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934811, 36.305500, 28.982183>,  <42.168537, 36.571732, 29.167910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934811, 36.305500, 28.982183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253896, -0.393498, 0.883570,
		-0.770789, 0.634169, 0.060939,
		-0.584312, -0.665574, -0.464317,
		41.759518, 36.105827, 28.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458248, 36.646793, 29.501913>,  <42.168537, 36.571732, 29.167910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458248, 36.646793, 29.501913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500504, 36.285271, 29.336039>,  <41.525856, 36.068356, 29.236513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500504, 36.285271, 29.336039>,  <41.458248, 36.646793, 29.501913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500504, 36.285271, 29.336039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378024, -0.422214, 0.823914,
		-0.919749, 0.069723, -0.386265,
		0.105640, -0.903811, -0.414687,
		41.532196, 36.014126, 29.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994736, 36.345249, 29.675028>,  <41.458248, 36.646793, 29.501913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994736, 36.345249, 29.675028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177979, 36.005119, 29.571419>,  <41.287926, 35.801041, 29.509253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177979, 36.005119, 29.571419>,  <40.994736, 36.345249, 29.675028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177979, 36.005119, 29.571419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478727, -0.481540, 0.734125,
		-0.748972, -0.212306, -0.627668,
		0.458107, -0.850321, -0.259023,
		41.315411, 35.750023, 29.493711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587906, 35.866322, 29.911110>,  <40.994736, 36.345249, 29.675028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587906, 35.866322, 29.911110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906864, 35.631023, 29.857252>,  <41.098240, 35.489845, 29.824938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906864, 35.631023, 29.857252>,  <40.587906, 35.866322, 29.911110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906864, 35.631023, 29.857252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300563, -0.580621, 0.756665,
		-0.523284, -0.562890, -0.639788,
		0.797393, -0.588247, -0.134646,
		41.146084, 35.454548, 29.816858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400002, 35.231422, 29.614218>,  <40.587906, 35.866322, 29.911110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400002, 35.231422, 29.614218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741852, 35.180183, 29.815498>,  <40.946960, 35.149441, 29.936266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741852, 35.180183, 29.815498>,  <40.400002, 35.231422, 29.614218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741852, 35.180183, 29.815498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477951, -0.572821, 0.665912,
		0.202941, -0.809609, -0.550771,
		0.854622, -0.128101, 0.503202,
		40.998238, 35.141754, 29.966459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432285, 34.464432, 29.672010>,  <40.400002, 35.231422, 29.614218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432285, 34.464432, 29.672010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686264, 34.624012, 29.936640>,  <40.838654, 34.719761, 30.095417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686264, 34.624012, 29.936640>,  <40.432285, 34.464432, 29.672010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686264, 34.624012, 29.936640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240504, -0.711717, 0.660013,
		0.734163, -0.578186, -0.355956,
		0.634950, 0.398949, 0.661572,
		40.876751, 34.743698, 30.135111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748528, 33.897408, 30.013939>,  <40.432285, 34.464432, 29.672010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748528, 33.897408, 30.013939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810955, 34.206318, 30.260267>,  <40.848412, 34.391663, 30.408064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810955, 34.206318, 30.260267>,  <40.748528, 33.897408, 30.013939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810955, 34.206318, 30.260267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515706, -0.468031, 0.717631,
		0.842432, -0.429580, 0.325223,
		0.156065, 0.772275, 0.615821,
		40.857773, 34.438000, 30.445013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413662, 33.510719, 30.183372>,  <40.748528, 33.897408, 30.013939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413662, 33.510719, 30.183372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530159, 33.147453, 30.063103>,  <41.600060, 32.929493, 29.990940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530159, 33.147453, 30.063103>,  <41.413662, 33.510719, 30.183372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530159, 33.147453, 30.063103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325628, 0.389644, -0.861478,
		0.899523, 0.152995, 0.409208,
		0.291247, -0.908169, -0.300674,
		41.617535, 32.875004, 29.972900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026924, 33.663376, 29.774107>,  <41.413662, 33.510719, 30.183372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026924, 33.663376, 29.774107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928234, 33.294338, 29.655487>,  <41.869022, 33.072914, 29.584316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928234, 33.294338, 29.655487>,  <42.026924, 33.663376, 29.774107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928234, 33.294338, 29.655487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442317, 0.165065, -0.881538,
		0.862255, -0.348664, 0.367355,
		-0.246723, -0.922598, -0.296548,
		41.854218, 33.017559, 29.566523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613689, 33.442150, 29.485071>,  <42.026924, 33.663376, 29.774107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613689, 33.442150, 29.485071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333527, 33.206635, 29.323702>,  <42.165428, 33.065323, 29.226879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333527, 33.206635, 29.323702>,  <42.613689, 33.442150, 29.485071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333527, 33.206635, 29.323702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462525, 0.056060, -0.884832,
		0.543599, -0.806337, 0.233066,
		-0.700408, -0.588793, -0.403425,
		42.123405, 33.029995, 29.202675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988201, 32.980358, 29.033142>,  <42.613689, 33.442150, 29.485071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988201, 32.980358, 29.033142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608356, 32.967659, 28.908419>,  <42.380447, 32.960041, 28.833584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608356, 32.967659, 28.908419>,  <42.988201, 32.980358, 29.033142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608356, 32.967659, 28.908419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303307, 0.157608, -0.939768,
		0.078976, -0.986991, -0.140039,
		-0.949615, -0.031745, -0.311809,
		42.323471, 32.958134, 28.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985466, 32.620304, 28.350246>,  <42.988201, 32.980358, 29.033142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985466, 32.620304, 28.350246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639511, 32.821087, 28.349987>,  <42.431938, 32.941559, 28.349833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639511, 32.821087, 28.349987>,  <42.985466, 32.620304, 28.350246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639511, 32.821087, 28.349987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109054, 0.186645, -0.976356,
		-0.489970, -0.844512, -0.216168,
		-0.864891, 0.501959, -0.000647,
		42.380043, 32.971676, 28.349792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613773, 32.366356, 27.743958>,  <42.985466, 32.620304, 28.350246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613773, 32.366356, 27.743958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493168, 32.736919, 27.834169>,  <42.420807, 32.959255, 27.888296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493168, 32.736919, 27.834169>,  <42.613773, 32.366356, 27.743958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493168, 32.736919, 27.834169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135571, 0.275789, -0.951610,
		-0.943775, -0.256345, -0.208747,
		-0.301510, 0.926406, 0.225529,
		42.402714, 33.014843, 27.901829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372353, 32.582260, 27.108564>,  <42.613773, 32.366356, 27.743958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372353, 32.582260, 27.108564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329620, 32.926765, 27.307287>,  <42.303982, 33.133469, 27.426521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329620, 32.926765, 27.307287>,  <42.372353, 32.582260, 27.108564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329620, 32.926765, 27.307287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071252, 0.505014, -0.860165,
		-0.991721, -0.056490, -0.115315,
		-0.106827, 0.861260, 0.496809,
		42.297573, 33.185143, 27.456329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830597, 33.001099, 26.713814>,  <42.372353, 32.582260, 27.108564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830597, 33.001099, 26.713814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071747, 33.235126, 26.930788>,  <42.216438, 33.375542, 27.060972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071747, 33.235126, 26.930788>,  <41.830597, 33.001099, 26.713814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071747, 33.235126, 26.930788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169365, 0.570541, -0.803616,
		-0.779650, 0.576351, 0.244876,
		0.602877, 0.585066, 0.542436,
		42.252609, 33.410645, 27.093519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636944, 33.633736, 26.602186>,  <41.830597, 33.001099, 26.713814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636944, 33.633736, 26.602186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014175, 33.649757, 26.734243>,  <42.240517, 33.659370, 26.813477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014175, 33.649757, 26.734243>,  <41.636944, 33.633736, 26.602186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014175, 33.649757, 26.734243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269899, 0.487813, -0.830176,
		-0.194299, 0.872029, 0.449237,
		0.943081, 0.040054, 0.330141,
		42.297100, 33.661774, 26.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807491, 34.334801, 26.503586>,  <41.636944, 33.633736, 26.602186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807491, 34.334801, 26.503586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158150, 34.143398, 26.523718>,  <42.368546, 34.028557, 26.535797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158150, 34.143398, 26.523718>,  <41.807491, 34.334801, 26.503586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158150, 34.143398, 26.523718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302811, 0.467400, -0.830568,
		0.373904, 0.743352, 0.554639,
		0.876642, -0.478503, 0.050332,
		42.421143, 33.999847, 26.538818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376160, 34.883129, 26.352011>,  <41.807491, 34.334801, 26.503586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376160, 34.883129, 26.352011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557747, 34.527637, 26.326481>,  <42.666698, 34.314342, 26.311163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557747, 34.527637, 26.326481>,  <42.376160, 34.883129, 26.352011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557747, 34.527637, 26.326481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465031, 0.297425, -0.833837,
		0.760038, 0.348856, 0.548308,
		0.453970, -0.888728, -0.063826,
		42.693939, 34.261021, 26.307333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965290, 35.072998, 26.275133>,  <42.376160, 34.883129, 26.352011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965290, 35.072998, 26.275133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945847, 34.696041, 26.142754>,  <42.934181, 34.469868, 26.063326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945847, 34.696041, 26.142754>,  <42.965290, 35.072998, 26.275133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945847, 34.696041, 26.142754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376909, 0.289535, -0.879835,
		0.924974, -0.167504, 0.341124,
		-0.048609, -0.942397, -0.330947,
		42.931263, 34.413322, 26.043470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664276, 34.821091, 25.984079>,  <42.965290, 35.072998, 26.275133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664276, 34.821091, 25.984079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377140, 34.606918, 25.806082>,  <43.204857, 34.478413, 25.699284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377140, 34.606918, 25.806082>,  <43.664276, 34.821091, 25.984079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377140, 34.606918, 25.806082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208111, 0.444917, -0.871056,
		0.664377, -0.717886, -0.207949,
		-0.717839, -0.535433, -0.444993,
		43.161789, 34.446289, 25.672585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908092, 34.710484, 25.413086>,  <43.664276, 34.821091, 25.984079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908092, 34.710484, 25.413086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526928, 34.613060, 25.340813>,  <43.298229, 34.554607, 25.297449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526928, 34.613060, 25.340813>,  <43.908092, 34.710484, 25.413086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526928, 34.613060, 25.340813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078259, 0.378130, -0.922439,
		0.292985, -0.893140, -0.341263,
		-0.952909, -0.243554, -0.180683,
		43.241055, 34.539993, 25.286608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.434113, 36.469387, 26.220270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827950, 36.519642, 26.268908>,  <36.064251, 36.549793, 26.298090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827950, 36.519642, 26.268908>,  <35.434113, 36.469387, 26.220270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827950, 36.519642, 26.268908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026616, -0.579660, 0.814424,
		0.172802, -0.805116, -0.567387,
		0.984597, 0.125633, 0.121596,
		36.123329, 36.557331, 26.305386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603973, 35.771214, 26.461668>,  <35.434113, 36.469387, 26.220270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603973, 35.771214, 26.461668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920174, 35.998554, 26.552954>,  <36.109894, 36.134960, 26.607725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920174, 35.998554, 26.552954>,  <35.603973, 35.771214, 26.461668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920174, 35.998554, 26.552954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040948, -0.420832, 0.906214,
		0.611087, -0.707021, -0.355942,
		0.790504, 0.568350, 0.228214,
		36.157326, 36.169060, 26.621418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079517, 35.413528, 26.770189>,  <35.603973, 35.771214, 26.461668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079517, 35.413528, 26.770189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141331, 35.785767, 26.902925>,  <36.178417, 36.009109, 26.982567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141331, 35.785767, 26.902925>,  <36.079517, 35.413528, 26.770189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141331, 35.785767, 26.902925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076712, -0.323561, 0.943093,
		0.985005, -0.171194, 0.021387,
		0.154532, 0.930592, 0.331842,
		36.187691, 36.064945, 27.002478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632954, 35.389988, 27.316732>,  <36.079517, 35.413528, 26.770189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632954, 35.389988, 27.316732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.401596, 35.712273, 27.367790>,  <36.262779, 35.905643, 27.398424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.401596, 35.712273, 27.367790>,  <36.632954, 35.389988, 27.316732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401596, 35.712273, 27.367790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000516, -0.156110, 0.987740,
		0.815755, 0.571371, 0.089878,
		-0.578397, 0.805708, 0.127643,
		36.228077, 35.953983, 27.406082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910744, 35.666725, 27.841223>,  <36.632954, 35.389988, 27.316732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910744, 35.666725, 27.841223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560715, 35.860283, 27.837494>,  <36.350697, 35.976418, 27.835257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560715, 35.860283, 27.837494>,  <36.910744, 35.666725, 27.841223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560715, 35.860283, 27.837494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042588, -0.057800, 0.997420,
		0.482110, 0.873214, 0.071187,
		-0.875075, 0.483898, -0.009323,
		36.298191, 36.005451, 27.834698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928818, 36.226868, 28.300861>,  <36.910744, 35.666725, 27.841223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928818, 36.226868, 28.300861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541157, 36.134148, 28.267363>,  <36.308559, 36.078518, 28.247263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541157, 36.134148, 28.267363>,  <36.928818, 36.226868, 28.300861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541157, 36.134148, 28.267363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023335, -0.251976, 0.967452,
		-0.245355, 0.939563, 0.238794,
		-0.969152, -0.231797, -0.083749,
		36.250412, 36.064610, 28.242237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592461, 36.533268, 28.883144>,  <36.928818, 36.226868, 28.300861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592461, 36.533268, 28.883144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349461, 36.237610, 28.766794>,  <36.203659, 36.060215, 28.696985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.349461, 36.237610, 28.766794>,  <36.592461, 36.533268, 28.883144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349461, 36.237610, 28.766794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097594, -0.293963, 0.950821,
		-0.788299, 0.606014, 0.106447,
		-0.607503, -0.739143, -0.290874,
		36.167210, 36.015865, 28.679533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224117, 36.304329, 29.479780>,  <36.592461, 36.533268, 28.883144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224117, 36.304329, 29.479780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103760, 36.016346, 29.229622>,  <36.031548, 35.843555, 29.079527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103760, 36.016346, 29.229622>,  <36.224117, 36.304329, 29.479780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103760, 36.016346, 29.229622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260182, -0.568934, 0.780141,
		-0.917480, 0.397455, -0.016133,
		-0.300892, -0.719961, -0.625396,
		36.013493, 35.800358, 29.042004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586346, 35.988174, 29.715321>,  <36.224117, 36.304329, 29.479780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586346, 35.988174, 29.715321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.738609, 35.699516, 29.484037>,  <35.829967, 35.526321, 29.345266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.738609, 35.699516, 29.484037>,  <35.586346, 35.988174, 29.715321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738609, 35.699516, 29.484037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140725, -0.663208, 0.735086,
		-0.913946, -0.198446, -0.354008,
		0.380656, -0.721647, -0.578210,
		35.852806, 35.483021, 29.310574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217499, 35.423267, 29.895647>,  <35.586346, 35.988174, 29.715321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217499, 35.423267, 29.895647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560619, 35.296997, 29.733400>,  <35.766491, 35.221237, 29.636053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.560619, 35.296997, 29.733400>,  <35.217499, 35.423267, 29.895647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560619, 35.296997, 29.733400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037810, -0.825788, 0.562712,
		-0.512586, -0.467360, -0.720299,
		0.857803, -0.315673, -0.405616,
		35.817959, 35.202293, 29.611715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092354, 34.702568, 29.923859>,  <35.217499, 35.423267, 29.895647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092354, 34.702568, 29.923859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481190, 34.783730, 29.876740>,  <35.714489, 34.832428, 29.848469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.481190, 34.783730, 29.876740>,  <35.092354, 34.702568, 29.923859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481190, 34.783730, 29.876740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231238, -0.743640, 0.627318,
		0.039689, -0.637047, -0.769803,
		0.972087, 0.202906, -0.117795,
		35.772816, 34.844601, 29.841400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313168, 34.070549, 29.922247>,  <35.092354, 34.702568, 29.923859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313168, 34.070549, 29.922247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623314, 34.295494, 30.037178>,  <35.809402, 34.430462, 30.106136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623314, 34.295494, 30.037178>,  <35.313168, 34.070549, 29.922247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623314, 34.295494, 30.037178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267841, -0.704877, 0.656818,
		0.571900, -0.432315, -0.697161,
		0.775365, 0.562363, 0.287328,
		35.855923, 34.464203, 30.123377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683952, 33.592190, 30.303604>,  <35.313168, 34.070549, 29.922247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683952, 33.592190, 30.303604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.872242, 33.931683, 30.399998>,  <35.985214, 34.135380, 30.457834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.872242, 33.931683, 30.399998>,  <35.683952, 33.592190, 30.303604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872242, 33.931683, 30.399998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382157, -0.442325, 0.811360,
		0.795222, -0.289829, -0.532561,
		0.470721, 0.848733, 0.240986,
		36.013458, 34.186302, 30.472294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474136, 33.515419, 30.293367>,  <35.683952, 33.592190, 30.303604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474136, 33.515419, 30.293367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347343, 33.799034, 30.545332>,  <36.271267, 33.969204, 30.696510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347343, 33.799034, 30.545332>,  <36.474136, 33.515419, 30.293367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347343, 33.799034, 30.545332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381419, -0.512785, 0.769136,
		0.868357, 0.484060, -0.107899,
		-0.316979, 0.709040, 0.629910,
		36.252251, 34.011745, 30.734304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313541, 33.313110, 30.355455>,  <36.474136, 33.515419, 30.293367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313541, 33.313110, 30.355455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.431789, 32.947227, 30.245247>,  <37.502739, 32.727695, 30.179121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.431789, 32.947227, 30.245247>,  <37.313541, 33.313110, 30.355455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431789, 32.947227, 30.245247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111016, 0.319353, -0.941111,
		0.948834, 0.247621, 0.195954,
		0.295617, -0.914712, -0.275522,
		37.520473, 32.672813, 30.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935692, 33.388618, 30.016502>,  <37.313541, 33.313110, 30.355455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935692, 33.388618, 30.016502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808193, 33.033028, 29.884979>,  <37.731693, 32.819672, 29.806065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808193, 33.033028, 29.884979>,  <37.935692, 33.388618, 30.016502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808193, 33.033028, 29.884979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383410, 0.196327, -0.902470,
		0.866833, -0.413724, 0.278267,
		-0.318742, -0.888982, -0.328808,
		37.712570, 32.766335, 29.786337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526672, 33.087025, 29.633551>,  <37.935692, 33.388618, 30.016502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526672, 33.087025, 29.633551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209751, 32.885723, 29.495571>,  <38.019600, 32.764942, 29.412783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.209751, 32.885723, 29.495571>,  <38.526672, 33.087025, 29.633551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209751, 32.885723, 29.495571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389909, 0.017223, -0.920692,
		0.469285, -0.863966, 0.182578,
		-0.792302, -0.503256, -0.344951,
		37.972061, 32.734745, 29.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785057, 32.684807, 29.038067>,  <38.526672, 33.087025, 29.633551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785057, 32.684807, 29.038067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388527, 32.689404, 28.985704>,  <38.150608, 32.692162, 28.954287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388527, 32.689404, 28.985704>,  <38.785057, 32.684807, 29.038067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388527, 32.689404, 28.985704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130752, -0.013107, -0.991329,
		-0.013107, -0.999848, 0.011491,
		0.991329, -0.011491, 0.130904,
		38.091129, 32.692852, 28.946434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719913, 32.325695, 28.438461>,  <38.785057, 32.684807, 29.038067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719913, 32.325695, 28.438461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349796, 32.473347, 28.473270>,  <38.127728, 32.561939, 28.494156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349796, 32.473347, 28.473270>,  <38.719913, 32.325695, 28.438461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349796, 32.473347, 28.473270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058131, 0.088709, -0.994360,
		-0.374771, -0.925133, -0.060624,
		-0.925293, 0.369133, 0.087025,
		38.072208, 32.584087, 28.499378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306950, 31.988077, 27.991014>,  <38.719913, 32.325695, 28.438461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306950, 31.988077, 27.991014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117531, 32.338730, 28.025114>,  <38.003880, 32.549122, 28.045574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117531, 32.338730, 28.025114>,  <38.306950, 31.988077, 27.991014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117531, 32.338730, 28.025114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039241, 0.075696, -0.996359,
		-0.879894, -0.475168, -0.001446,
		-0.473547, 0.876633, 0.085251,
		37.975468, 32.601719, 28.050690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847244, 31.903706, 27.478725>,  <38.306950, 31.988077, 27.991014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847244, 31.903706, 27.478725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834671, 32.295387, 27.558897>,  <37.827126, 32.530396, 27.607000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.834671, 32.295387, 27.558897>,  <37.847244, 31.903706, 27.478725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834671, 32.295387, 27.558897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324549, 0.179661, -0.928649,
		-0.945346, -0.094239, 0.312153,
		-0.031433, 0.979204, 0.200427,
		37.825241, 32.589149, 27.619024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252041, 32.137737, 27.146088>,  <37.847244, 31.903706, 27.478725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252041, 32.137737, 27.146088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487007, 32.455669, 27.207001>,  <37.627987, 32.646427, 27.243549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.487007, 32.455669, 27.207001>,  <37.252041, 32.137737, 27.146088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487007, 32.455669, 27.207001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165823, 0.302390, -0.938650,
		-0.792116, 0.526124, 0.309429,
		0.587414, 0.794830, 0.152284,
		37.663231, 32.694118, 27.252686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928478, 32.648502, 26.844963>,  <37.252041, 32.137737, 27.146088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928478, 32.648502, 26.844963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302761, 32.786098, 26.876253>,  <37.527332, 32.868656, 26.895027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302761, 32.786098, 26.876253>,  <36.928478, 32.648502, 26.844963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302761, 32.786098, 26.876253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118453, 0.515240, -0.848821,
		-0.332293, 0.784982, 0.522862,
		0.935708, 0.343992, 0.078227,
		37.583473, 32.889297, 26.899721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854092, 33.366619, 26.674257>,  <36.928478, 32.648502, 26.844963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854092, 33.366619, 26.674257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245899, 33.293812, 26.639830>,  <37.480984, 33.250126, 26.619173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245899, 33.293812, 26.639830>,  <36.854092, 33.366619, 26.674257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245899, 33.293812, 26.639830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047033, 0.622500, -0.781205,
		0.195774, 0.761158, 0.618313,
		0.979521, -0.182021, -0.086070,
		37.539757, 33.239204, 26.614008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241856, 33.999306, 26.626829>,  <36.854092, 33.366619, 26.674257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241856, 33.999306, 26.626829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467197, 33.715244, 26.457920>,  <37.602402, 33.544807, 26.356575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.467197, 33.715244, 26.457920>,  <37.241856, 33.999306, 26.626829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467197, 33.715244, 26.457920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028661, 0.527583, -0.849020,
		0.825717, 0.466198, 0.317570,
		0.563355, -0.710152, -0.422273,
		37.636204, 33.502197, 26.331238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832611, 34.246700, 26.346285>,  <37.241856, 33.999306, 26.626829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832611, 34.246700, 26.346285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801144, 33.909023, 26.134193>,  <37.782265, 33.706417, 26.006939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801144, 33.909023, 26.134193>,  <37.832611, 34.246700, 26.346285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801144, 33.909023, 26.134193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205650, 0.506697, -0.837238,
		0.975459, -0.174903, 0.133750,
		-0.078665, -0.844196, -0.530231,
		37.777546, 33.655766, 25.975124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478699, 34.327179, 25.959352>,  <37.832611, 34.246700, 26.346285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478699, 34.327179, 25.959352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225464, 34.071693, 25.784426>,  <38.073524, 33.918404, 25.679470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.225464, 34.071693, 25.784426>,  <38.478699, 34.327179, 25.959352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225464, 34.071693, 25.784426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113391, 0.482337, -0.868616,
		0.765733, -0.599495, -0.232935,
		-0.633084, -0.638715, -0.437319,
		38.035538, 33.880077, 25.653231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896194, 33.968437, 25.448214>,  <38.478699, 34.327179, 25.959352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896194, 33.968437, 25.448214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509945, 33.949665, 25.345940>,  <38.278194, 33.938400, 25.284575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509945, 33.949665, 25.345940>,  <38.896194, 33.968437, 25.448214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509945, 33.949665, 25.345940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191897, 0.534830, -0.822881,
		0.175366, -0.843656, -0.507437,
		-0.965620, -0.046930, -0.255686,
		38.220261, 33.935585, 25.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908459, 33.310413, 25.082697>,  <38.896194, 33.968437, 25.448214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908459, 33.310413, 25.082697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207897, 33.081692, 24.948446>,  <39.387562, 32.944458, 24.867897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207897, 33.081692, 24.948446>,  <38.908459, 33.310413, 25.082697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207897, 33.081692, 24.948446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272518, -0.726826, 0.630442,
		-0.604426, -0.380486, -0.699928,
		0.748600, -0.571799, -0.335624,
		39.432476, 32.910152, 24.847759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636730, 32.654819, 24.960197>,  <38.908459, 33.310413, 25.082697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636730, 32.654819, 24.960197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026405, 32.564648, 24.964821>,  <39.260212, 32.510544, 24.967594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026405, 32.564648, 24.964821>,  <38.636730, 32.654819, 24.960197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026405, 32.564648, 24.964821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195862, -0.818738, 0.539727,
		-0.112208, -0.528061, -0.841761,
		0.974191, -0.225431, 0.011558,
		39.318661, 32.497017, 24.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781963, 31.937948, 24.748043>,  <38.636730, 32.654819, 24.960197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781963, 31.937948, 24.748043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112854, 32.006004, 24.962240>,  <39.311390, 32.046837, 25.090757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112854, 32.006004, 24.962240>,  <38.781963, 31.937948, 24.748043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112854, 32.006004, 24.962240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189979, -0.812224, 0.551543,
		0.528777, -0.557983, -0.639570,
		0.827226, 0.170138, 0.535491,
		39.361023, 32.057045, 25.122887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188690, 31.332811, 24.864071>,  <38.781963, 31.937948, 24.748043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188690, 31.332811, 24.864071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342201, 31.546429, 25.165405>,  <39.434307, 31.674599, 25.346207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342201, 31.546429, 25.165405>,  <39.188690, 31.332811, 24.864071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342201, 31.546429, 25.165405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093337, -0.789194, 0.607010,
		0.918697, -0.303271, -0.253028,
		0.383777, 0.534041, 0.753336,
		39.457333, 31.706640, 25.391407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636627, 30.913128, 25.148079>,  <39.188690, 31.332811, 24.864071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636627, 30.913128, 25.148079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568790, 31.176369, 25.441511>,  <39.528088, 31.334312, 25.617571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568790, 31.176369, 25.441511>,  <39.636627, 30.913128, 25.148079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568790, 31.176369, 25.441511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194643, -0.752069, 0.629687,
		0.966102, -0.035998, 0.255639,
		-0.169591, 0.658100, 0.733582,
		39.517914, 31.373798, 25.661587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033581, 30.669870, 25.722269>,  <39.636627, 30.913128, 25.148079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033581, 30.669870, 25.722269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759483, 30.905485, 25.893606>,  <39.595024, 31.046854, 25.996408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759483, 30.905485, 25.893606>,  <40.033581, 30.669870, 25.722269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759483, 30.905485, 25.893606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015447, -0.599751, 0.800038,
		0.728152, 0.541603, 0.420073,
		-0.685242, 0.589038, 0.428344,
		39.553909, 31.082197, 26.022110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254452, 30.792154, 26.419090>,  <40.033581, 30.669870, 25.722269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254452, 30.792154, 26.419090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863823, 30.878223, 26.419146>,  <39.629444, 30.929865, 26.419180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863823, 30.878223, 26.419146>,  <40.254452, 30.792154, 26.419090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863823, 30.878223, 26.419146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105652, -0.480076, 0.870842,
		0.187450, 0.850428, 0.491564,
		-0.976576, 0.215174, 0.000141,
		39.570850, 30.942776, 26.419188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156837, 31.044832, 27.054367>,  <40.254452, 30.792154, 26.419090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156837, 31.044832, 27.054367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.786602, 30.945311, 26.940252>,  <39.564461, 30.885597, 26.871784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.786602, 30.945311, 26.940252>,  <40.156837, 31.044832, 27.054367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786602, 30.945311, 26.940252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156280, -0.435255, 0.886639,
		-0.344772, 0.865245, 0.363982,
		-0.925586, -0.248805, -0.285285,
		39.508926, 30.870668, 26.854668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730167, 31.314402, 27.582819>,  <40.156837, 31.044832, 27.054367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730167, 31.314402, 27.582819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514462, 31.022219, 27.415188>,  <39.385036, 30.846909, 27.314610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514462, 31.022219, 27.415188>,  <39.730167, 31.314402, 27.582819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514462, 31.022219, 27.415188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143761, -0.410481, 0.900465,
		-0.829773, 0.545839, 0.116348,
		-0.539268, -0.730455, -0.419077,
		39.352680, 30.803082, 27.289465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091724, 31.243065, 28.026571>,  <39.730167, 31.314402, 27.582819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091724, 31.243065, 28.026571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136490, 30.898239, 27.828857>,  <39.163349, 30.691343, 27.710228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136490, 30.898239, 27.828857>,  <39.091724, 31.243065, 28.026571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136490, 30.898239, 27.828857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028176, -0.499963, 0.865589,
		-0.993319, -0.082941, -0.080240,
		0.111909, -0.862066, -0.494285,
		39.170063, 30.639620, 27.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588654, 30.830061, 28.280964>,  <39.091724, 31.243065, 28.026571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588654, 30.830061, 28.280964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866741, 30.590071, 28.122622>,  <39.033592, 30.446077, 28.027617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866741, 30.590071, 28.122622>,  <38.588654, 30.830061, 28.280964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866741, 30.590071, 28.122622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059879, -0.597144, 0.799896,
		-0.716300, -0.532399, -0.451071,
		0.695218, -0.599976, -0.395855,
		39.075306, 30.410078, 28.003866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353325, 30.245396, 28.390869>,  <38.588654, 30.830061, 28.280964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353325, 30.245396, 28.390869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732250, 30.132181, 28.330877>,  <38.959606, 30.064253, 28.294882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732250, 30.132181, 28.330877>,  <38.353325, 30.245396, 28.390869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732250, 30.132181, 28.330877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073307, -0.647361, 0.758650,
		-0.311818, -0.707682, -0.634000,
		0.947309, -0.283038, -0.149981,
		39.016441, 30.047270, 28.285883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378410, 29.515013, 28.628342>,  <38.353325, 30.245396, 28.390869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378410, 29.515013, 28.628342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764347, 29.619738, 28.637508>,  <38.995911, 29.682573, 28.643009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764347, 29.619738, 28.637508>,  <38.378410, 29.515013, 28.628342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764347, 29.619738, 28.637508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105489, -0.465663, 0.878653,
		0.240714, -0.845347, -0.476911,
		0.964847, 0.261813, 0.022917,
		39.053802, 29.698282, 28.644382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865589, 28.904781, 28.744513>,  <38.378410, 29.515013, 28.628342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865589, 28.904781, 28.744513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045628, 29.243118, 28.859026>,  <39.153652, 29.446121, 28.927734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045628, 29.243118, 28.859026>,  <38.865589, 28.904781, 28.744513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045628, 29.243118, 28.859026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174436, -0.397701, 0.900781,
		0.875775, -0.355504, -0.326551,
		0.450100, 0.845843, 0.286284,
		39.180656, 29.496872, 28.944912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.890617, 33.908485, 24.610506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.519058, 34.033142, 24.690542>,  <43.296124, 34.107937, 24.738564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.519058, 34.033142, 24.690542>,  <43.890617, 33.908485, 24.610506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519058, 34.033142, 24.690542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133984, 0.220895, -0.966051,
		-0.345261, -0.924167, -0.163433,
		-0.928893, 0.311642, 0.200090,
		43.240391, 34.126637, 24.750568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489796, 33.532402, 24.237419>,  <43.890617, 33.908485, 24.610506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489796, 33.532402, 24.237419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312923, 33.884842, 24.304506>,  <43.206799, 34.096306, 24.344759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312923, 33.884842, 24.304506>,  <43.489796, 33.532402, 24.237419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312923, 33.884842, 24.304506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071324, 0.151858, -0.985826,
		-0.894084, -0.447880, -0.004305,
		-0.442185, 0.881103, 0.167719,
		43.180267, 34.149174, 24.354822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043518, 33.616844, 23.585741>,  <43.489796, 33.532402, 24.237419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043518, 33.616844, 23.585741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093212, 33.971642, 23.763647>,  <43.123028, 34.184521, 23.870390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093212, 33.971642, 23.763647>,  <43.043518, 33.616844, 23.585741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093212, 33.971642, 23.763647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102605, 0.457318, -0.883365,
		-0.986933, 0.064113, 0.147826,
		0.124238, 0.886990, 0.444763,
		43.130486, 34.237740, 23.897076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439690, 34.066692, 23.425386>,  <43.043518, 33.616844, 23.585741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439690, 34.066692, 23.425386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764450, 34.285744, 23.506311>,  <42.959305, 34.417175, 23.554867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764450, 34.285744, 23.506311>,  <42.439690, 34.066692, 23.425386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764450, 34.285744, 23.506311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065559, 0.429873, -0.900506,
		-0.580108, 0.717855, 0.384914,
		0.811897, 0.547626, 0.202310,
		43.008018, 34.450031, 23.567005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191612, 34.711601, 23.057364>,  <42.439690, 34.066692, 23.425386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191612, 34.711601, 23.057364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.573376, 34.791035, 23.146517>,  <42.802433, 34.838696, 23.200008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.573376, 34.791035, 23.146517>,  <42.191612, 34.711601, 23.057364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573376, 34.791035, 23.146517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071203, 0.573656, -0.815995,
		-0.289900, 0.794660, 0.533361,
		0.954405, 0.198581, 0.222885,
		42.859695, 34.850609, 23.213383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246483, 35.362080, 22.893885>,  <42.191612, 34.711601, 23.057364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246483, 35.362080, 22.893885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624134, 35.230320, 22.889473>,  <42.850723, 35.151264, 22.886826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624134, 35.230320, 22.889473>,  <42.246483, 35.362080, 22.893885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624134, 35.230320, 22.889473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181179, 0.546667, -0.817514,
		0.275316, 0.769839, 0.575803,
		0.944127, -0.329398, -0.011028,
		42.907372, 35.131500, 22.886164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748219, 35.925247, 22.981781>,  <42.246483, 35.362080, 22.893885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748219, 35.925247, 22.981781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896919, 35.621552, 22.768103>,  <42.986137, 35.439335, 22.639896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896919, 35.621552, 22.768103>,  <42.748219, 35.925247, 22.981781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896919, 35.621552, 22.768103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035317, 0.586583, -0.809119,
		0.927662, 0.281921, 0.244875,
		0.371747, -0.759237, -0.534194,
		43.008442, 35.393780, 22.607845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217270, 36.246204, 22.540751>,  <42.748219, 35.925247, 22.981781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217270, 36.246204, 22.540751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182384, 35.883114, 22.376593>,  <43.161453, 35.665260, 22.278099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182384, 35.883114, 22.376593>,  <43.217270, 36.246204, 22.540751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182384, 35.883114, 22.376593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113082, 0.400280, -0.909389,
		0.989751, -0.125717, 0.067738,
		-0.087211, -0.907729, -0.410393,
		43.156219, 35.610794, 22.253475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498711, 36.445011, 21.984041>,  <43.217270, 36.246204, 22.540751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498711, 36.445011, 21.984041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.342216, 36.094784, 21.870678>,  <43.248318, 35.884647, 21.802660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.342216, 36.094784, 21.870678>,  <43.498711, 36.445011, 21.984041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342216, 36.094784, 21.870678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055006, 0.329651, -0.942499,
		0.918644, -0.353151, -0.177134,
		-0.391237, -0.875565, -0.283407,
		43.224846, 35.832115, 21.785656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904457, 36.180767, 21.387699>,  <43.498711, 36.445011, 21.984041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904457, 36.180767, 21.387699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.536488, 36.024303, 21.376926>,  <43.315704, 35.930424, 21.370462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.536488, 36.024303, 21.376926>,  <43.904457, 36.180767, 21.387699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536488, 36.024303, 21.376926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108376, 0.319689, -0.941304,
		0.376815, -0.863012, -0.336483,
		-0.919927, -0.391164, -0.026934,
		43.260509, 35.906956, 21.368847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878906, 35.738014, 20.781210>,  <43.904457, 36.180767, 21.387699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878906, 35.738014, 20.781210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.491676, 35.802982, 20.857580>,  <43.259338, 35.841965, 20.903402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.491676, 35.802982, 20.857580>,  <43.878906, 35.738014, 20.781210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491676, 35.802982, 20.857580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092535, 0.476319, -0.874390,
		-0.232962, -0.864141, -0.446082,
		-0.968073, 0.162422, 0.190928,
		43.201256, 35.851707, 20.914858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479584, 35.589321, 20.144121>,  <43.878906, 35.738014, 20.781210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479584, 35.589321, 20.144121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227924, 35.824432, 20.347567>,  <43.076927, 35.965500, 20.469633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227924, 35.824432, 20.347567>,  <43.479584, 35.589321, 20.144121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227924, 35.824432, 20.347567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239728, 0.475714, -0.846302,
		-0.739391, -0.654380, -0.158390,
		-0.629152, 0.587777, 0.508612,
		43.039177, 36.000767, 20.500151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804970, 35.625656, 19.784908>,  <43.479584, 35.589321, 20.144121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804970, 35.625656, 19.784908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.799381, 35.942398, 20.029129>,  <42.796028, 36.132442, 20.175661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.799381, 35.942398, 20.029129>,  <42.804970, 35.625656, 19.784908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799381, 35.942398, 20.029129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334474, 0.571736, -0.749163,
		-0.942301, -0.214677, 0.256869,
		-0.013967, 0.791853, 0.610552,
		42.795193, 36.179955, 20.212296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086811, 36.034622, 19.765558>,  <42.804970, 35.625656, 19.784908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086811, 36.034622, 19.765558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394753, 36.272423, 19.858419>,  <42.579517, 36.415104, 19.914137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.394753, 36.272423, 19.858419>,  <42.086811, 36.034622, 19.765558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394753, 36.272423, 19.858419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191558, 0.562218, -0.804498,
		-0.608797, 0.574873, 0.546706,
		0.769851, 0.594502, 0.232155,
		42.625710, 36.450775, 19.928066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620354, 35.793076, 20.309425>,  <42.086811, 36.034622, 19.765558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620354, 35.793076, 20.309425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227043, 35.841957, 20.255421>,  <40.991055, 35.871284, 20.223019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227043, 35.841957, 20.255421>,  <41.620354, 35.793076, 20.309425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227043, 35.841957, 20.255421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153994, -0.162258, 0.974658,
		0.097199, 0.979152, 0.178363,
		-0.983279, 0.122203, -0.135012,
		40.932060, 35.878616, 20.214916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353516, 36.342495, 20.874178>,  <41.620354, 35.793076, 20.309425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353516, 36.342495, 20.874178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078789, 36.088543, 20.732639>,  <40.913952, 35.936172, 20.647717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078789, 36.088543, 20.732639>,  <41.353516, 36.342495, 20.874178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078789, 36.088543, 20.732639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142971, -0.359316, 0.922199,
		-0.712630, 0.683972, 0.156015,
		-0.686817, -0.634881, -0.353848,
		40.872746, 35.898079, 20.626486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814064, 36.330437, 21.398413>,  <41.353516, 36.342495, 20.874178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814064, 36.330437, 21.398413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800179, 35.988068, 21.192036>,  <40.791847, 35.782646, 21.068211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.800179, 35.988068, 21.192036>,  <40.814064, 36.330437, 21.398413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800179, 35.988068, 21.192036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199539, -0.499922, 0.842770,
		-0.979275, 0.132205, -0.153435,
		-0.034713, -0.855920, -0.515942,
		40.789764, 35.731293, 21.037252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167019, 36.193302, 21.522642>,  <40.814064, 36.330437, 21.398413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167019, 36.193302, 21.522642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360115, 35.860905, 21.412073>,  <40.475975, 35.661469, 21.345732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360115, 35.860905, 21.412073>,  <40.167019, 36.193302, 21.522642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360115, 35.860905, 21.412073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424257, -0.498035, 0.756285,
		-0.766136, -0.247817, -0.592978,
		0.482745, -0.830992, -0.276424,
		40.504940, 35.611607, 21.329145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739609, 35.716751, 21.649164>,  <40.167019, 36.193302, 21.522642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739609, 35.716751, 21.649164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078938, 35.505741, 21.631004>,  <40.282536, 35.379135, 21.620108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078938, 35.505741, 21.631004>,  <39.739609, 35.716751, 21.649164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078938, 35.505741, 21.631004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246118, -0.468798, 0.848324,
		-0.468798, -0.708480, -0.527527,
		-0.848324, 0.527527, 0.045401,
		40.333435, 35.347485, 21.617384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540489, 35.047173, 21.680145>,  <39.739609, 35.716751, 21.649164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540489, 35.047173, 21.680145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924850, 35.011997, 21.785166>,  <40.155468, 34.990891, 21.848177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924850, 35.011997, 21.785166>,  <39.540489, 35.047173, 21.680145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924850, 35.011997, 21.785166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274779, -0.419610, 0.865115,
		0.034090, -0.903434, -0.427369,
		0.960903, -0.087941, 0.262549,
		40.213120, 34.985615, 21.863930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690399, 34.366161, 21.776066>,  <39.540489, 35.047173, 21.680145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690399, 34.366161, 21.776066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992805, 34.525631, 21.983721>,  <40.174248, 34.621311, 22.108313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992805, 34.525631, 21.983721>,  <39.690399, 34.366161, 21.776066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992805, 34.525631, 21.983721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142797, -0.673553, 0.725214,
		0.638790, -0.622402, -0.452286,
		0.756014, 0.398674, 0.519136,
		40.219608, 34.645233, 22.139462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086121, 33.812084, 22.065083>,  <39.690399, 34.366161, 21.776066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086121, 33.812084, 22.065083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214199, 34.124050, 22.280197>,  <40.291046, 34.311230, 22.409266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214199, 34.124050, 22.280197>,  <40.086121, 33.812084, 22.065083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214199, 34.124050, 22.280197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185932, -0.504898, 0.842916,
		0.928927, -0.369887, -0.016655,
		0.320193, 0.779911, 0.537787,
		40.310257, 34.358025, 22.441534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632515, 33.540657, 22.490068>,  <40.086121, 33.812084, 22.065083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632515, 33.540657, 22.490068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499565, 33.865612, 22.681713>,  <40.419796, 34.060585, 22.796700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.499565, 33.865612, 22.681713>,  <40.632515, 33.540657, 22.490068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499565, 33.865612, 22.681713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171468, -0.551577, 0.816310,
		0.927428, 0.189172, 0.322631,
		-0.332379, 0.812390, 0.479111,
		40.399853, 34.109329, 22.825447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932621, 33.484894, 23.141117>,  <40.632515, 33.540657, 22.490068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932621, 33.484894, 23.141117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.641247, 33.750465, 23.208744>,  <40.466423, 33.909809, 23.249319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.641247, 33.750465, 23.208744>,  <40.932621, 33.484894, 23.141117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641247, 33.750465, 23.208744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165493, -0.409975, 0.896957,
		0.664830, 0.625393, 0.408515,
		-0.728432, 0.663931, 0.169065,
		40.422718, 33.949646, 23.259464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009930, 33.660576, 23.852350>,  <40.932621, 33.484894, 23.141117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009930, 33.660576, 23.852350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634449, 33.771084, 23.769869>,  <40.409161, 33.837387, 23.720381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634449, 33.771084, 23.769869>,  <41.009930, 33.660576, 23.852350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634449, 33.771084, 23.769869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287269, -0.296187, 0.910906,
		0.190582, 0.914302, 0.357394,
		-0.938699, 0.276271, -0.206203,
		40.352840, 33.853966, 23.708008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758831, 33.903015, 24.397430>,  <41.009930, 33.660576, 23.852350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758831, 33.903015, 24.397430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422508, 33.805607, 24.204042>,  <40.220715, 33.747162, 24.088009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422508, 33.805607, 24.204042>,  <40.758831, 33.903015, 24.397430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422508, 33.805607, 24.204042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294227, -0.544089, 0.785747,
		-0.454395, 0.802911, 0.385823,
		-0.840807, -0.243520, -0.483469,
		40.170265, 33.732552, 24.059002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202415, 34.001869, 24.890228>,  <40.758831, 33.903015, 24.397430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202415, 34.001869, 24.890228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062851, 33.750263, 24.612350>,  <39.979111, 33.599300, 24.445623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.062851, 33.750263, 24.612350>,  <40.202415, 34.001869, 24.890228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062851, 33.750263, 24.612350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574559, -0.442042, 0.688826,
		-0.740364, 0.639485, -0.207170,
		-0.348916, -0.629014, -0.694694,
		39.958176, 33.561558, 24.403942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526459, 33.783989, 25.159721>,  <40.202415, 34.001869, 24.890228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526459, 33.783989, 25.159721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621826, 33.510063, 24.884279>,  <39.679047, 33.345707, 24.719013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621826, 33.510063, 24.884279>,  <39.526459, 33.783989, 25.159721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621826, 33.510063, 24.884279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368639, -0.719804, 0.588207,
		-0.898477, 0.113606, -0.424067,
		0.238422, -0.684818, -0.688607,
		39.693352, 33.304619, 24.677698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957619, 34.088802, 24.707979>,  <39.526459, 33.783989, 25.159721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957619, 34.088802, 24.707979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565392, 34.129681, 24.774967>,  <38.330055, 34.154209, 24.815161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565392, 34.129681, 24.774967>,  <38.957619, 34.088802, 24.707979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565392, 34.129681, 24.774967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089586, 0.526184, -0.845639,
		-0.174541, -0.844207, -0.506803,
		-0.980566, 0.102196, 0.167470,
		38.271221, 34.160339, 24.825209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638672, 33.756538, 24.228313>,  <38.957619, 34.088802, 24.707979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638672, 33.756538, 24.228313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413189, 34.057858, 24.363831>,  <38.277901, 34.238647, 24.445141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413189, 34.057858, 24.363831>,  <38.638672, 33.756538, 24.228313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413189, 34.057858, 24.363831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001512, 0.409233, -0.912429,
		-0.825974, -0.514854, -0.229547,
		-0.563706, 0.753296, 0.338794,
		38.244076, 34.283848, 24.465469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244862, 33.946175, 23.678417>,  <38.638672, 33.756538, 24.228313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244862, 33.946175, 23.678417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161617, 34.248993, 23.926151>,  <38.111671, 34.430683, 24.074791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161617, 34.248993, 23.926151>,  <38.244862, 33.946175, 23.678417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161617, 34.248993, 23.926151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284285, 0.559046, -0.778877,
		-0.935880, -0.338162, 0.098872,
		-0.208113, 0.757043, 0.619334,
		38.099182, 34.476105, 24.111952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544495, 34.173805, 23.573042>,  <38.244862, 33.946175, 23.678417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544495, 34.173805, 23.573042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725811, 34.497219, 23.723135>,  <37.834602, 34.691269, 23.813190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.725811, 34.497219, 23.723135>,  <37.544495, 34.173805, 23.573042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725811, 34.497219, 23.723135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280317, 0.528914, -0.801045,
		-0.846137, 0.257923, 0.466398,
		0.453292, 0.808533, 0.375233,
		37.861797, 34.739780, 23.835705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059235, 34.693680, 23.425362>,  <37.544495, 34.173805, 23.573042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059235, 34.693680, 23.425362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397358, 34.885601, 23.519381>,  <37.600231, 35.000755, 23.575792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397358, 34.885601, 23.519381>,  <37.059235, 34.693680, 23.425362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397358, 34.885601, 23.519381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161372, 0.648664, -0.743770,
		-0.509329, 0.590783, 0.625747,
		0.845306, 0.479802, 0.235047,
		37.650951, 35.029541, 23.589895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854412, 35.397396, 23.580486>,  <37.059235, 34.693680, 23.425362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854412, 35.397396, 23.580486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238544, 35.372372, 23.471785>,  <37.469025, 35.357357, 23.406563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238544, 35.372372, 23.471785>,  <36.854412, 35.397396, 23.580486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238544, 35.372372, 23.471785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160738, 0.672149, -0.722757,
		0.227878, 0.737768, 0.635429,
		0.960331, -0.062563, -0.271756,
		37.526642, 35.353603, 23.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004257, 36.087418, 23.290154>,  <36.854412, 35.397396, 23.580486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004257, 36.087418, 23.290154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312965, 35.873627, 23.152340>,  <37.498192, 35.745354, 23.069651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312965, 35.873627, 23.152340>,  <37.004257, 36.087418, 23.290154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312965, 35.873627, 23.152340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037859, 0.502228, -0.863906,
		0.634772, 0.679782, 0.367371,
		0.771772, -0.534475, -0.344536,
		37.544498, 35.713284, 23.048979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172863, 36.812141, 23.433975>,  <37.004257, 36.087418, 23.290154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172863, 36.812141, 23.433975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111691, 37.182983, 23.570852>,  <37.074986, 37.405487, 23.652979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.111691, 37.182983, 23.570852>,  <37.172863, 36.812141, 23.433975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111691, 37.182983, 23.570852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099088, -0.330136, 0.938718,
		0.983256, 0.177468, -0.041376,
		-0.152933, 0.927100, 0.342193,
		37.065811, 37.461113, 23.673510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747292, 36.962635, 24.009501>,  <37.172863, 36.812141, 23.433975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747292, 36.962635, 24.009501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393642, 37.141396, 24.064064>,  <37.181454, 37.248653, 24.096802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393642, 37.141396, 24.064064>,  <37.747292, 36.962635, 24.009501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393642, 37.141396, 24.064064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083976, -0.439150, 0.894480,
		0.459649, 0.779374, 0.425791,
		-0.884121, 0.446903, 0.136406,
		37.128407, 37.275467, 24.104986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758987, 37.303226, 24.667850>,  <37.747292, 36.962635, 24.009501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758987, 37.303226, 24.667850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360813, 37.292423, 24.631235>,  <37.121910, 37.285942, 24.609266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360813, 37.292423, 24.631235>,  <37.758987, 37.303226, 24.667850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360813, 37.292423, 24.631235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077722, -0.327260, 0.941732,
		-0.055392, 0.944548, 0.323667,
		-0.995435, -0.027009, -0.091540,
		37.062183, 37.284321, 24.603773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418121, 37.640144, 25.231134>,  <37.758987, 37.303226, 24.667850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418121, 37.640144, 25.231134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153782, 37.383617, 25.075190>,  <36.995178, 37.229702, 24.981623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.153782, 37.383617, 25.075190>,  <37.418121, 37.640144, 25.231134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153782, 37.383617, 25.075190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225222, -0.326056, 0.918130,
		-0.715933, 0.694546, 0.071033,
		-0.660844, -0.641321, -0.389861,
		36.955528, 37.191219, 24.958231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956329, 37.810177, 25.664808>,  <37.418121, 37.640144, 25.231134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956329, 37.810177, 25.664808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842987, 37.466187, 25.495035>,  <36.774982, 37.259792, 25.393171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842987, 37.466187, 25.495035>,  <36.956329, 37.810177, 25.664808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842987, 37.466187, 25.495035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235036, -0.366802, 0.900119,
		-0.929768, 0.354811, -0.098190,
		-0.283356, -0.859980, -0.424434,
		36.757980, 37.208191, 25.367704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199112, 37.769371, 25.859612>,  <36.956329, 37.810177, 25.664808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199112, 37.769371, 25.859612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342186, 37.406555, 25.770761>,  <36.428032, 37.188866, 25.717451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342186, 37.406555, 25.770761>,  <36.199112, 37.769371, 25.859612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342186, 37.406555, 25.770761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360492, -0.353543, 0.863164,
		-0.861454, -0.228669, -0.453439,
		0.357689, -0.907038, -0.222127,
		36.449493, 37.134445, 25.704123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620846, 37.269791, 26.072096>,  <36.199112, 37.769371, 25.859612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620846, 37.269791, 26.072096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967491, 37.073517, 26.035866>,  <36.175480, 36.955753, 26.014128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967491, 37.073517, 26.035866>,  <35.620846, 37.269791, 26.072096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967491, 37.073517, 26.035866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132950, -0.402029, 0.905923,
		-0.480938, -0.773045, -0.413641,
		0.866616, -0.490687, -0.090575,
		36.227478, 36.926311, 26.008694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.630650, 38.595829, 21.998310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.809654, 38.356541, 21.732420>,  <41.917057, 38.212967, 21.572886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.809654, 38.356541, 21.732420>,  <41.630650, 38.595829, 21.998310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809654, 38.356541, 21.732420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073945, -0.765518, 0.639151,
		-0.891214, -0.236877, -0.386817,
		0.447516, -0.598224, -0.664724,
		41.943909, 38.177074, 21.533003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137581, 38.146343, 21.884958>,  <41.630650, 38.595829, 21.998310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137581, 38.146343, 21.884958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.470753, 37.947083, 21.788570>,  <41.670658, 37.827526, 21.730738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.470753, 37.947083, 21.788570>,  <41.137581, 38.146343, 21.884958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470753, 37.947083, 21.788570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192839, -0.669454, 0.717387,
		-0.518686, -0.551068, -0.653674,
		0.832934, -0.498152, -0.240969,
		41.720634, 37.797638, 21.716280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939106, 37.396118, 21.766684>,  <41.137581, 38.146343, 21.884958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939106, 37.396118, 21.766684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319614, 37.416729, 21.888290>,  <41.547920, 37.429096, 21.961254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.319614, 37.416729, 21.888290>,  <40.939106, 37.396118, 21.766684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319614, 37.416729, 21.888290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214075, -0.599260, 0.771401,
		0.221931, -0.798895, -0.559029,
		0.951272, 0.051523, 0.304018,
		41.604996, 37.432186, 21.979496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063641, 36.755138, 22.207527>,  <40.939106, 37.396118, 21.766684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063641, 36.755138, 22.207527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.384163, 36.980961, 22.286707>,  <41.576477, 37.116455, 22.334215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.384163, 36.980961, 22.286707>,  <41.063641, 36.755138, 22.207527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384163, 36.980961, 22.286707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031344, -0.370042, 0.928486,
		0.597437, -0.737794, -0.314211,
		0.801303, 0.564561, 0.197951,
		41.624554, 37.150330, 22.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352234, 36.285698, 22.722868>,  <41.063641, 36.755138, 22.207527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352234, 36.285698, 22.722868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533360, 36.637703, 22.780176>,  <41.642036, 36.848907, 22.814562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533360, 36.637703, 22.780176>,  <41.352234, 36.285698, 22.722868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533360, 36.637703, 22.780176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083070, -0.118352, 0.989491,
		0.887725, -0.459960, 0.019511,
		0.452817, 0.880017, 0.143273,
		41.669205, 36.901707, 22.823158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836613, 36.136444, 23.220900>,  <41.352234, 36.285698, 22.722868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836613, 36.136444, 23.220900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.767445, 36.528236, 23.262302>,  <41.725945, 36.763313, 23.287144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.767445, 36.528236, 23.262302>,  <41.836613, 36.136444, 23.220900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767445, 36.528236, 23.262302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135709, -0.080393, 0.987482,
		0.975541, 0.184807, -0.119022,
		-0.172925, 0.979481, 0.103507,
		41.715569, 36.822083, 23.293354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413097, 36.443111, 23.682680>,  <41.836613, 36.136444, 23.220900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413097, 36.443111, 23.682680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106945, 36.700539, 23.683819>,  <41.923252, 36.854996, 23.684502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106945, 36.700539, 23.683819>,  <42.413097, 36.443111, 23.682680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106945, 36.700539, 23.683819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160987, 0.187174, 0.969045,
		0.623114, 0.742149, -0.246866,
		-0.765383, 0.643568, 0.002845,
		41.877331, 36.893608, 23.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652912, 36.877502, 24.108671>,  <42.413097, 36.443111, 23.682680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652912, 36.877502, 24.108671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259724, 36.948059, 24.088041>,  <42.023811, 36.990395, 24.075663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259724, 36.948059, 24.088041>,  <42.652912, 36.877502, 24.108671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259724, 36.948059, 24.088041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061688, -0.052322, 0.996723,
		0.173119, 0.982928, 0.062313,
		-0.982967, 0.176396, -0.051577,
		41.964832, 37.000977, 24.072569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616592, 37.430119, 24.478941>,  <42.652912, 36.877502, 24.108671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616592, 37.430119, 24.478941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256390, 37.256454, 24.469236>,  <42.040268, 37.152256, 24.463413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256390, 37.256454, 24.469236>,  <42.616592, 37.430119, 24.478941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256390, 37.256454, 24.469236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032165, 0.010871, 0.999423,
		-0.433643, 0.900772, -0.023754,
		-0.900511, -0.434157, -0.024259,
		41.986237, 37.126209, 24.461958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227047, 37.745087, 24.925331>,  <42.616592, 37.430119, 24.478941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227047, 37.745087, 24.925331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.997021, 37.418747, 24.901060>,  <41.859005, 37.222942, 24.886497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.997021, 37.418747, 24.901060>,  <42.227047, 37.745087, 24.925331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997021, 37.418747, 24.901060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046716, -0.041298, 0.998054,
		-0.816771, 0.576784, -0.014364,
		-0.575068, -0.815852, -0.060676,
		41.824501, 37.173992, 24.882856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632156, 37.837795, 25.370523>,  <42.227047, 37.745087, 24.925331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632156, 37.837795, 25.370523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669838, 37.442509, 25.322260>,  <41.692448, 37.205338, 25.293301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.669838, 37.442509, 25.322260>,  <41.632156, 37.837795, 25.370523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669838, 37.442509, 25.322260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231181, -0.139599, 0.962844,
		-0.968340, -0.062806, -0.241607,
		0.094200, -0.988214, -0.120660,
		41.698097, 37.146046, 25.286062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986980, 37.533173, 25.762217>,  <41.632156, 37.837795, 25.370523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986980, 37.533173, 25.762217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286373, 37.268848, 25.739918>,  <41.466007, 37.110252, 25.726538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286373, 37.268848, 25.739918>,  <40.986980, 37.533173, 25.762217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286373, 37.268848, 25.739918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141680, -0.241464, 0.960011,
		-0.647848, -0.710649, -0.274355,
		0.748478, -0.660812, -0.055748,
		41.510918, 37.070606, 25.723194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265198, 37.370689, 25.835426>,  <40.986980, 37.533173, 25.762217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265198, 37.370689, 25.835426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213284, 37.760242, 25.909941>,  <40.182137, 37.993977, 25.954649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213284, 37.760242, 25.909941>,  <40.265198, 37.370689, 25.835426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213284, 37.760242, 25.909941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129330, 0.202898, -0.970622,
		-0.983072, -0.101879, -0.152286,
		-0.129785, 0.973886, 0.186287,
		40.174347, 38.052406, 25.965826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666775, 37.639854, 25.378561>,  <40.265198, 37.370689, 25.835426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666775, 37.639854, 25.378561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853489, 37.979992, 25.475735>,  <39.965519, 38.184074, 25.534039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.853489, 37.979992, 25.475735>,  <39.666775, 37.639854, 25.378561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853489, 37.979992, 25.475735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223474, 0.379201, -0.897923,
		-0.855667, 0.364852, 0.367038,
		0.466790, 0.850347, 0.242935,
		39.993526, 38.235096, 25.548615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197716, 38.124969, 25.325323>,  <39.666775, 37.639854, 25.378561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197716, 38.124969, 25.325323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544601, 38.323856, 25.314688>,  <39.752735, 38.443188, 25.308306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544601, 38.323856, 25.314688>,  <39.197716, 38.124969, 25.325323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544601, 38.323856, 25.314688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310745, 0.498707, -0.809153,
		-0.389068, 0.709973, 0.586996,
		0.867216, 0.497222, -0.026590,
		39.804768, 38.473022, 25.306711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015903, 38.778797, 25.196527>,  <39.197716, 38.124969, 25.325323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015903, 38.778797, 25.196527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409355, 38.785679, 25.124779>,  <39.645428, 38.789806, 25.081730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409355, 38.785679, 25.124779>,  <39.015903, 38.778797, 25.196527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409355, 38.785679, 25.124779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153301, 0.603062, -0.782825,
		0.094706, 0.797509, 0.595828,
		0.983631, 0.017203, -0.179373,
		39.704445, 38.790840, 25.070967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040066, 39.426243, 24.920847>,  <39.015903, 38.778797, 25.196527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040066, 39.426243, 24.920847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378166, 39.227566, 24.842005>,  <39.581024, 39.108360, 24.794699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.378166, 39.227566, 24.842005>,  <39.040066, 39.426243, 24.920847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378166, 39.227566, 24.842005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031252, 0.414169, -0.909663,
		0.533462, 0.762730, 0.365598,
		0.845247, -0.496696, -0.197107,
		39.631741, 39.078556, 24.782873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692097, 39.904354, 24.839664>,  <39.040066, 39.426243, 24.920847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692097, 39.904354, 24.839664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762939, 39.568375, 24.634485>,  <39.805447, 39.366787, 24.511377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762939, 39.568375, 24.634485>,  <39.692097, 39.904354, 24.839664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762939, 39.568375, 24.634485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019584, 0.524092, -0.851436,
		0.983996, 0.140753, 0.109271,
		0.177110, -0.839950, -0.512949,
		39.816074, 39.316391, 24.480600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291523, 40.089775, 24.373247>,  <39.692097, 39.904354, 24.839664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291523, 40.089775, 24.373247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114700, 39.772305, 24.206076>,  <40.008606, 39.581821, 24.105772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114700, 39.772305, 24.206076>,  <40.291523, 40.089775, 24.373247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114700, 39.772305, 24.206076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049528, 0.443620, -0.894845,
		0.895617, -0.416275, -0.156798,
		-0.442061, -0.793672, -0.417931,
		39.982082, 39.534203, 24.080696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642662, 39.917606, 23.714443>,  <40.291523, 40.089775, 24.373247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642662, 39.917606, 23.714443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300606, 39.710297, 23.710102>,  <40.095371, 39.585911, 23.707497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.300606, 39.710297, 23.710102>,  <40.642662, 39.917606, 23.714443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300606, 39.710297, 23.710102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212086, 0.368891, -0.904953,
		0.473022, -0.771562, -0.425374,
		-0.855144, -0.518278, -0.010856,
		40.044064, 39.554813, 23.706846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637558, 39.668461, 23.009611>,  <40.642662, 39.917606, 23.714443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637558, 39.668461, 23.009611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270203, 39.583042, 23.142849>,  <40.049789, 39.531792, 23.222792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.270203, 39.583042, 23.142849>,  <40.637558, 39.668461, 23.009611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270203, 39.583042, 23.142849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390372, 0.351734, -0.850819,
		0.064532, -0.911416, -0.406394,
		-0.918393, -0.213549, 0.333093,
		39.994686, 39.518978, 23.242777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348633, 39.390709, 22.415070>,  <40.637558, 39.668461, 23.009611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348633, 39.390709, 22.415070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065971, 39.536648, 22.657568>,  <39.896374, 39.624210, 22.803066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065971, 39.536648, 22.657568>,  <40.348633, 39.390709, 22.415070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065971, 39.536648, 22.657568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501474, 0.346208, -0.792883,
		-0.499167, -0.864307, -0.061686,
		-0.706651, 0.364847, 0.606244,
		39.853977, 39.646103, 22.839441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788925, 39.208130, 22.115602>,  <40.348633, 39.390709, 22.415070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788925, 39.208130, 22.115602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713936, 39.534969, 22.333668>,  <39.668941, 39.731071, 22.464508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.713936, 39.534969, 22.333668>,  <39.788925, 39.208130, 22.115602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713936, 39.534969, 22.333668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402268, 0.442465, -0.801502,
		-0.896123, -0.369559, 0.245744,
		-0.187469, 0.817099, 0.545164,
		39.657696, 39.780098, 22.497217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138817, 39.344444, 21.884455>,  <39.788925, 39.208130, 22.115602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138817, 39.344444, 21.884455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281021, 39.665527, 22.075981>,  <39.366344, 39.858177, 22.190897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281021, 39.665527, 22.075981>,  <39.138817, 39.344444, 21.884455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281021, 39.665527, 22.075981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376522, 0.591872, -0.712684,
		-0.855478, 0.073084, 0.512656,
		0.355513, 0.802712, 0.478815,
		39.387676, 39.906342, 22.219625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545567, 39.783642, 21.921694>,  <39.138817, 39.344444, 21.884455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545567, 39.783642, 21.921694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896587, 39.975437, 21.921555>,  <39.107201, 40.090515, 21.921471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.896587, 39.975437, 21.921555>,  <38.545567, 39.783642, 21.921694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896587, 39.975437, 21.921555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314403, 0.574867, -0.755433,
		-0.362017, 0.663041, 0.655226,
		0.877550, 0.479485, -0.000350,
		39.159851, 40.119282, 21.921450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176533, 40.433552, 21.930508>,  <38.545567, 39.783642, 21.921694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176533, 40.433552, 21.930508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.878677, 40.235691, 21.751249>,  <37.699963, 40.116974, 21.643694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.878677, 40.235691, 21.751249>,  <38.176533, 40.433552, 21.930508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878677, 40.235691, 21.751249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146453, -0.776133, 0.613326,
		-0.651203, 0.391074, 0.650381,
		-0.744638, -0.494650, -0.448146,
		37.655285, 40.087296, 21.616806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695881, 40.372425, 22.372814>,  <38.176533, 40.433552, 21.930508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695881, 40.372425, 22.372814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597683, 40.082958, 22.114809>,  <37.538765, 39.909279, 21.960007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597683, 40.082958, 22.114809>,  <37.695881, 40.372425, 22.372814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597683, 40.082958, 22.114809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099097, -0.680623, 0.725901,
		-0.964320, 0.114286, 0.238802,
		-0.245494, -0.723665, -0.645013,
		37.524036, 39.865860, 21.921305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110729, 40.012474, 22.623039>,  <37.695881, 40.372425, 22.372814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110729, 40.012474, 22.623039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230415, 39.749641, 22.346281>,  <37.302227, 39.591942, 22.180227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230415, 39.749641, 22.346281>,  <37.110729, 40.012474, 22.623039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230415, 39.749641, 22.346281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227920, -0.753341, 0.616871,
		-0.926566, -0.026880, -0.375172,
		0.299214, -0.657081, -0.691893,
		37.320179, 39.552517, 22.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599056, 39.649387, 22.556986>,  <37.110729, 40.012474, 22.623039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599056, 39.649387, 22.556986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886929, 39.403099, 22.428640>,  <37.059650, 39.255325, 22.351633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886929, 39.403099, 22.428640>,  <36.599056, 39.649387, 22.556986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886929, 39.403099, 22.428640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313207, -0.700345, 0.641418,
		-0.619645, -0.361121, -0.696872,
		0.719681, -0.615718, -0.320860,
		37.102833, 39.218384, 22.332382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242451, 39.004475, 22.468334>,  <36.599056, 39.649387, 22.556986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242451, 39.004475, 22.468334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629757, 38.912376, 22.507233>,  <36.862141, 38.857117, 22.530571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629757, 38.912376, 22.507233>,  <36.242451, 39.004475, 22.468334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629757, 38.912376, 22.507233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235880, -0.713171, 0.660111,
		-0.082633, -0.662099, -0.744846,
		0.968262, -0.230241, 0.097244,
		36.920235, 38.843304, 22.536406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199242, 38.291763, 22.388390>,  <36.242451, 39.004475, 22.468334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199242, 38.291763, 22.388390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.567543, 38.330616, 22.539530>,  <36.788525, 38.353928, 22.630215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.567543, 38.330616, 22.539530>,  <36.199242, 38.291763, 22.388390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567543, 38.330616, 22.539530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176522, -0.759986, 0.625509,
		0.347918, -0.642641, -0.682617,
		0.920757, 0.097129, 0.377853,
		36.843769, 38.359756, 22.652885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536243, 37.549465, 22.494318>,  <36.199242, 38.291763, 22.388390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536243, 37.549465, 22.494318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.730366, 37.794739, 22.743631>,  <36.846840, 37.941902, 22.893219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.730366, 37.794739, 22.743631>,  <36.536243, 37.549465, 22.494318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730366, 37.794739, 22.743631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089443, -0.674305, 0.733016,
		0.869756, -0.411487, -0.272401,
		0.485308, 0.613181, 0.623286,
		36.875957, 37.978695, 22.930616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015789, 37.103378, 22.784878>,  <36.536243, 37.549465, 22.494318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015789, 37.103378, 22.784878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971680, 37.415478, 23.031143>,  <36.945213, 37.602737, 23.178904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.971680, 37.415478, 23.031143>,  <37.015789, 37.103378, 22.784878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971680, 37.415478, 23.031143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029472, -0.616604, 0.786722,
		0.993464, 0.104901, 0.045000,
		-0.110275, 0.780253, 0.615666,
		36.938599, 37.649555, 23.215843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384857, 36.430805, 22.712923>,  <37.015789, 37.103378, 22.784878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384857, 36.430805, 22.712923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515976, 36.060394, 22.638063>,  <37.594646, 35.838146, 22.593147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.515976, 36.060394, 22.638063>,  <37.384857, 36.430805, 22.712923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515976, 36.060394, 22.638063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010987, 0.194344, -0.980872,
		0.944684, 0.323585, 0.053531,
		0.327798, -0.926026, -0.187148,
		37.614315, 35.782585, 22.581919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950882, 36.527420, 22.318098>,  <37.384857, 36.430805, 22.712923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950882, 36.527420, 22.318098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774830, 36.175476, 22.246403>,  <37.669201, 35.964310, 22.203386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774830, 36.175476, 22.246403>,  <37.950882, 36.527420, 22.318098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774830, 36.175476, 22.246403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075409, 0.235125, -0.969036,
		0.894763, -0.412984, -0.169834,
		-0.440128, -0.879864, -0.179238,
		37.642792, 35.911518, 22.192631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244850, 36.386486, 21.708549>,  <37.950882, 36.527420, 22.318098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244850, 36.386486, 21.708549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942978, 36.124722, 21.727324>,  <37.761856, 35.967663, 21.738588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.942978, 36.124722, 21.727324>,  <38.244850, 36.386486, 21.708549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942978, 36.124722, 21.727324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067426, 0.006200, -0.997705,
		0.652622, -0.756110, -0.048803,
		-0.754678, -0.654415, 0.046936,
		37.716576, 35.928398, 21.741404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403515, 35.983025, 21.173578>,  <38.244850, 36.386486, 21.708549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403515, 35.983025, 21.173578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013500, 35.952274, 21.256907>,  <37.779491, 35.933823, 21.306904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.013500, 35.952274, 21.256907>,  <38.403515, 35.983025, 21.173578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013500, 35.952274, 21.256907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218786, 0.172297, -0.960441,
		0.037940, -0.982041, -0.184815,
		-0.975035, -0.076874, 0.208320,
		37.720989, 35.929211, 21.319403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102581, 35.600281, 20.604841>,  <38.403515, 35.983025, 21.173578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102581, 35.600281, 20.604841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779099, 35.764973, 20.772879>,  <37.585011, 35.863789, 20.873701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779099, 35.764973, 20.772879>,  <38.102581, 35.600281, 20.604841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779099, 35.764973, 20.772879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367448, 0.204078, -0.907378,
		-0.459329, -0.888160, -0.013748,
		-0.808702, 0.411733, 0.420092,
		37.536488, 35.888493, 20.898907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515984, 35.318489, 20.172888>,  <38.102581, 35.600281, 20.604841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515984, 35.318489, 20.172888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362785, 35.626568, 20.376896>,  <37.270866, 35.811413, 20.499300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.362785, 35.626568, 20.376896>,  <37.515984, 35.318489, 20.172888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362785, 35.626568, 20.376896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319830, 0.407409, -0.855411,
		-0.866617, -0.490736, 0.090296,
		-0.382994, 0.770192, 0.510019,
		37.247887, 35.857624, 20.529902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949986, 35.425396, 19.996346>,  <37.515984, 35.318489, 20.172888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949986, 35.425396, 19.996346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080120, 35.790531, 20.095043>,  <37.158199, 36.009613, 20.154261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080120, 35.790531, 20.095043>,  <36.949986, 35.425396, 19.996346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080120, 35.790531, 20.095043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411155, 0.371538, -0.832413,
		-0.851534, 0.169362, 0.496192,
		0.325333, 0.912839, 0.246743,
		37.177719, 36.064384, 20.169065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426888, 35.904312, 19.687016>,  <36.949986, 35.425396, 19.996346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426888, 35.904312, 19.687016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735794, 36.148479, 19.757429>,  <36.921139, 36.294979, 19.799677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.735794, 36.148479, 19.757429>,  <36.426888, 35.904312, 19.687016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735794, 36.148479, 19.757429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289306, 0.584605, -0.757984,
		-0.565597, 0.534441, 0.628071,
		0.772271, 0.610418, 0.176034,
		36.967476, 36.331604, 19.810240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248554, 36.599632, 19.425285>,  <36.426888, 35.904312, 19.687016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248554, 36.599632, 19.425285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646225, 36.592045, 19.467705>,  <36.884827, 36.587494, 19.493156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646225, 36.592045, 19.467705>,  <36.248554, 36.599632, 19.425285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646225, 36.592045, 19.467705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092454, 0.655523, -0.749494,
		-0.055304, 0.754937, 0.653461,
		0.994180, -0.018965, 0.106050,
		36.944481, 36.586357, 19.499519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.028561, 29.719633, 34.095757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426193, 29.712698, 34.052876>,  <37.664772, 29.708536, 34.027145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426193, 29.712698, 34.052876>,  <37.028561, 29.719633, 34.095757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426193, 29.712698, 34.052876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067854, 0.671592, -0.737808,
		0.084789, 0.740719, 0.666444,
		0.994086, -0.017338, -0.107204,
		37.724419, 29.707497, 34.020714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040932, 30.406937, 33.956310>,  <37.028561, 29.719633, 34.095757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040932, 30.406937, 33.956310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.404587, 30.268442, 33.863720>,  <37.622780, 30.185347, 33.808167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.404587, 30.268442, 33.863720>,  <37.040932, 30.406937, 33.956310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404587, 30.268442, 33.863720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050517, 0.643358, -0.763897,
		0.413411, 0.682797, 0.602395,
		0.909142, -0.346235, -0.231478,
		37.677330, 30.164572, 33.794277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439049, 30.953245, 33.922211>,  <37.040932, 30.406937, 33.956310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439049, 30.953245, 33.922211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592640, 30.666956, 33.688869>,  <37.684795, 30.495182, 33.548866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592640, 30.666956, 33.688869>,  <37.439049, 30.953245, 33.922211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592640, 30.666956, 33.688869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006233, 0.633778, -0.773490,
		0.923323, 0.293364, 0.247815,
		0.383974, -0.715725, -0.583354,
		37.707832, 30.452238, 33.513863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006897, 31.235981, 33.590294>,  <37.439049, 30.953245, 33.922211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006897, 31.235981, 33.590294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913475, 30.915163, 33.370411>,  <37.857422, 30.722673, 33.238480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913475, 30.915163, 33.370411>,  <38.006897, 31.235981, 33.590294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913475, 30.915163, 33.370411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084079, 0.546567, -0.833184,
		0.968702, -0.240813, -0.060219,
		-0.233555, -0.802043, -0.549708,
		37.843407, 30.674551, 33.205498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396378, 31.331364, 32.936577>,  <38.006897, 31.235981, 33.590294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396378, 31.331364, 32.936577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114548, 31.062473, 32.845642>,  <37.945450, 30.901138, 32.791080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114548, 31.062473, 32.845642>,  <38.396378, 31.331364, 32.936577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114548, 31.062473, 32.845642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080749, 0.394227, -0.915459,
		0.705019, -0.626654, -0.332045,
		-0.704577, -0.672228, -0.227336,
		37.903175, 30.860806, 32.777443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619469, 30.929607, 32.314713>,  <38.396378, 31.331364, 32.936577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619469, 30.929607, 32.314713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220249, 30.929928, 32.339703>,  <37.980717, 30.930120, 32.354698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.220249, 30.929928, 32.339703>,  <38.619469, 30.929607, 32.314713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220249, 30.929928, 32.339703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059378, 0.299156, -0.952355,
		-0.019455, -0.954204, -0.298524,
		-0.998046, 0.000802, 0.062479,
		37.920834, 30.930168, 32.358448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498142, 30.736988, 31.553530>,  <38.619469, 30.929607, 32.314713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498142, 30.736988, 31.553530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162071, 30.870358, 31.724607>,  <37.960426, 30.950378, 31.827255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162071, 30.870358, 31.724607>,  <38.498142, 30.736988, 31.553530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162071, 30.870358, 31.724607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246300, 0.468023, -0.848699,
		-0.483147, -0.818403, -0.311103,
		-0.840181, 0.333422, 0.427696,
		37.910015, 30.970385, 31.852917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044476, 30.759693, 31.012836>,  <38.498142, 30.736988, 31.553530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044476, 30.759693, 31.012836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864395, 30.993914, 31.282490>,  <37.756348, 31.134445, 31.444281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864395, 30.993914, 31.282490>,  <38.044476, 30.759693, 31.012836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864395, 30.993914, 31.282490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397187, 0.544847, -0.738501,
		-0.799728, -0.600228, -0.012716,
		-0.450197, 0.585550, 0.674132,
		37.729336, 31.169579, 31.484730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353710, 30.878971, 30.843454>,  <38.044476, 30.759693, 31.012836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353710, 30.878971, 30.843454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447845, 31.187893, 31.079475>,  <37.504326, 31.373245, 31.221088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447845, 31.187893, 31.079475>,  <37.353710, 30.878971, 30.843454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447845, 31.187893, 31.079475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128863, 0.626537, -0.768665,
		-0.963332, 0.104863, 0.246972,
		0.235342, 0.772305, 0.590050,
		37.518448, 31.419584, 31.256491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888481, 31.480829, 30.749825>,  <37.353710, 30.878971, 30.843454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888481, 31.480829, 30.749825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209122, 31.648932, 30.919918>,  <37.401505, 31.749792, 31.021975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209122, 31.648932, 30.919918>,  <36.888481, 31.480829, 30.749825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209122, 31.648932, 30.919918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104195, 0.602172, -0.791538,
		-0.588713, 0.678803, 0.438912,
		0.801599, 0.420256, 0.425234,
		37.449600, 31.775009, 31.047489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729153, 32.147781, 30.739202>,  <36.888481, 31.480829, 30.749825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729153, 32.147781, 30.739202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124626, 32.169785, 30.795036>,  <37.361908, 32.182987, 30.828537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124626, 32.169785, 30.795036>,  <36.729153, 32.147781, 30.739202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124626, 32.169785, 30.795036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070192, 0.652665, -0.754388,
		-0.132602, 0.755647, 0.641416,
		0.988681, 0.055011, 0.139585,
		37.421230, 32.186287, 30.836912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911366, 32.822502, 30.830996>,  <36.729153, 32.147781, 30.739202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911366, 32.822502, 30.830996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241753, 32.638718, 30.700348>,  <37.439983, 32.528446, 30.621960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241753, 32.638718, 30.700348>,  <36.911366, 32.822502, 30.830996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241753, 32.638718, 30.700348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040126, 0.625847, -0.778913,
		0.562291, 0.630250, 0.535364,
		0.825965, -0.459458, -0.326619,
		37.489544, 32.500881, 30.602362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989197, 33.540203, 31.070885>,  <36.911366, 32.822502, 30.830996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989197, 33.540203, 31.070885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676434, 33.774105, 31.157312>,  <36.488777, 33.914444, 31.209169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676434, 33.774105, 31.157312>,  <36.989197, 33.540203, 31.070885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676434, 33.774105, 31.157312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030977, -0.309730, 0.950320,
		0.622623, 0.749756, 0.224067,
		-0.781908, 0.584750, 0.216071,
		36.441860, 33.949532, 31.222134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097244, 33.869255, 31.666164>,  <36.989197, 33.540203, 31.070885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097244, 33.869255, 31.666164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700226, 33.917912, 31.663359>,  <36.462013, 33.947105, 31.661676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700226, 33.917912, 31.663359>,  <37.097244, 33.869255, 31.666164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700226, 33.917912, 31.663359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032226, -0.206570, 0.977901,
		0.117508, 0.970841, 0.208951,
		-0.992549, 0.121645, -0.007013,
		36.402462, 33.954407, 31.661255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867760, 34.360004, 32.297298>,  <37.097244, 33.869255, 31.666164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867760, 34.360004, 32.297298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568314, 34.123283, 32.177734>,  <36.388645, 33.981251, 32.105995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568314, 34.123283, 32.177734>,  <36.867760, 34.360004, 32.297298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568314, 34.123283, 32.177734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071340, -0.376327, 0.923736,
		-0.659154, 0.712849, 0.239506,
		-0.748617, -0.591798, -0.298912,
		36.343727, 33.945744, 32.088062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327477, 34.396492, 32.749836>,  <36.867760, 34.360004, 32.297298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327477, 34.396492, 32.749836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262802, 34.042080, 32.576031>,  <36.223999, 33.829433, 32.471748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.262802, 34.042080, 32.576031>,  <36.327477, 34.396492, 32.749836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262802, 34.042080, 32.576031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336651, -0.364371, 0.868274,
		-0.927644, 0.286668, -0.239371,
		-0.161686, -0.886033, -0.434514,
		36.214294, 33.776268, 32.445675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662258, 34.244728, 32.941067>,  <36.327477, 34.396492, 32.749836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662258, 34.244728, 32.941067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804592, 33.885651, 32.837116>,  <35.889992, 33.670204, 32.774746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804592, 33.885651, 32.837116>,  <35.662258, 34.244728, 32.941067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804592, 33.885651, 32.837116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489307, -0.415868, 0.766572,
		-0.796218, -0.145614, -0.587225,
		0.355831, -0.897692, -0.259872,
		35.911343, 33.616344, 32.759155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123016, 33.849037, 32.863319>,  <35.662258, 34.244728, 32.941067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123016, 33.849037, 32.863319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433468, 33.605961, 32.930653>,  <35.619740, 33.460114, 32.971054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433468, 33.605961, 32.930653>,  <35.123016, 33.849037, 32.863319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433468, 33.605961, 32.930653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507375, -0.443313, 0.738948,
		-0.374428, -0.658926, -0.652395,
		0.776127, -0.607692, 0.168334,
		35.666306, 33.423653, 32.981152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848972, 33.404400, 33.179741>,  <35.123016, 33.849037, 32.863319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848972, 33.404400, 33.179741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234615, 33.333805, 33.259094>,  <35.466000, 33.291447, 33.306705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234615, 33.333805, 33.259094>,  <34.848972, 33.404400, 33.179741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234615, 33.333805, 33.259094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251563, -0.367993, 0.895152,
		-0.084981, -0.912925, -0.399181,
		0.964103, -0.176490, 0.198386,
		35.523846, 33.280857, 33.318611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786114, 32.868050, 33.534855>,  <34.848972, 33.404400, 33.179741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786114, 32.868050, 33.534855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156796, 32.988430, 33.624870>,  <35.379204, 33.060658, 33.678879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156796, 32.988430, 33.624870>,  <34.786114, 32.868050, 33.534855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156796, 32.988430, 33.624870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158109, -0.231011, 0.960019,
		0.340905, -0.925237, -0.166497,
		0.926707, 0.300950, 0.225041,
		35.434807, 33.078716, 33.692383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069084, 32.393005, 34.122532>,  <34.786114, 32.868050, 33.534855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069084, 32.393005, 34.122532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309837, 32.712265, 34.133003>,  <35.454288, 32.903820, 34.139286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.309837, 32.712265, 34.133003>,  <35.069084, 32.393005, 34.122532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309837, 32.712265, 34.133003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102634, 0.044800, 0.993710,
		0.791959, -0.600788, 0.108882,
		0.601887, 0.798152, 0.026181,
		35.490402, 32.951710, 34.140858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460758, 32.370720, 34.743721>,  <35.069084, 32.393005, 34.122532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460758, 32.370720, 34.743721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440208, 32.759529, 34.652042>,  <35.427879, 32.992813, 34.597034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440208, 32.759529, 34.652042>,  <35.460758, 32.370720, 34.743721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440208, 32.759529, 34.652042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304418, 0.203338, 0.930582,
		0.951152, 0.117579, 0.285455,
		-0.051373, 0.972023, -0.229198,
		35.424797, 33.051136, 34.583282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678226, 32.673687, 35.327797>,  <35.460758, 32.370720, 34.743721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678226, 32.673687, 35.327797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489014, 32.970497, 35.137791>,  <35.375484, 33.148582, 35.023785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489014, 32.970497, 35.137791>,  <35.678226, 32.673687, 35.327797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489014, 32.970497, 35.137791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298732, 0.372133, 0.878792,
		0.828854, 0.557601, 0.045634,
		-0.473034, 0.742023, -0.475017,
		35.347103, 33.193104, 34.995285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851688, 33.207397, 35.793282>,  <35.678226, 32.673687, 35.327797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851688, 33.207397, 35.793282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567986, 33.380280, 35.570518>,  <35.397762, 33.484009, 35.436859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567986, 33.380280, 35.570518>,  <35.851688, 33.207397, 35.793282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567986, 33.380280, 35.570518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418676, 0.377320, 0.826039,
		0.567149, 0.819043, -0.086666,
		-0.709262, 0.432202, -0.556910,
		35.355206, 33.509941, 35.403446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761864, 33.953663, 36.010754>,  <35.851688, 33.207397, 35.793282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761864, 33.953663, 36.010754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421097, 33.848145, 35.829803>,  <35.216637, 33.784832, 35.721233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421097, 33.848145, 35.829803>,  <35.761864, 33.953663, 36.010754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421097, 33.848145, 35.829803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523356, 0.398934, 0.752961,
		-0.018163, 0.878215, -0.477921,
		-0.851921, -0.263799, -0.452373,
		35.165520, 33.769005, 35.694092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409046, 34.471302, 36.047642>,  <35.761864, 33.953663, 36.010754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409046, 34.471302, 36.047642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126064, 34.195332, 35.986305>,  <34.956276, 34.029751, 35.949501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126064, 34.195332, 35.986305>,  <35.409046, 34.471302, 36.047642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126064, 34.195332, 35.986305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534583, 0.380434, 0.754646,
		-0.462313, 0.615850, -0.637962,
		-0.707451, -0.689927, -0.153344,
		34.913830, 33.988354, 35.940304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710793, 34.898457, 35.554638>,  <35.409046, 34.471302, 36.047642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710793, 34.898457, 35.554638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.465603, 34.584446, 35.518871>,  <35.318489, 34.396038, 35.497414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.465603, 34.584446, 35.518871>,  <35.710793, 34.898457, 35.554638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465603, 34.584446, 35.518871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788164, -0.599611, -0.138794,
		0.055343, -0.155550, 0.986277,
		-0.612971, -0.785029, -0.089414,
		35.281712, 34.348938, 35.492046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328861, 35.187984, 35.375225>,  <35.710793, 34.898457, 35.554638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328861, 35.187984, 35.375225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651527, 35.126305, 35.603436>,  <36.845127, 35.089294, 35.740364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651527, 35.126305, 35.603436>,  <36.328861, 35.187984, 35.375225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651527, 35.126305, 35.603436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537275, 0.593510, -0.599235,
		-0.246211, 0.789916, 0.561616,
		0.806670, -0.154204, 0.570531,
		36.893528, 35.080044, 35.774593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647144, 35.870495, 35.701073>,  <36.328861, 35.187984, 35.375225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647144, 35.870495, 35.701073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886360, 35.562649, 35.611603>,  <37.029892, 35.377941, 35.557919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886360, 35.562649, 35.611603>,  <36.647144, 35.870495, 35.701073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886360, 35.562649, 35.611603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457383, 0.556911, -0.693290,
		0.658137, 0.312310, 0.685067,
		0.598043, -0.769618, -0.223679,
		37.065773, 35.331764, 35.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388775, 36.161629, 35.624359>,  <36.647144, 35.870495, 35.701073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388775, 36.161629, 35.624359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355656, 35.829426, 35.404030>,  <37.335785, 35.630104, 35.271832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355656, 35.829426, 35.404030>,  <37.388775, 36.161629, 35.624359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355656, 35.829426, 35.404030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394489, 0.480259, -0.783409,
		0.915162, -0.282160, 0.287860,
		-0.082799, -0.830504, -0.550824,
		37.330814, 35.580276, 35.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983364, 36.294186, 35.173859>,  <37.388775, 36.161629, 35.624359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983364, 36.294186, 35.173859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775391, 36.003845, 34.993721>,  <37.650608, 35.829639, 34.885639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775391, 36.003845, 34.993721>,  <37.983364, 36.294186, 35.173859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775391, 36.003845, 34.993721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274951, 0.356940, -0.892746,
		0.808748, -0.587989, 0.013990,
		-0.519932, -0.725853, -0.450343,
		37.619411, 35.786091, 34.858620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393322, 35.852852, 34.831356>,  <37.983364, 36.294186, 35.173859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393322, 35.852852, 34.831356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043179, 35.820923, 34.640621>,  <37.833092, 35.801765, 34.526180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.043179, 35.820923, 34.640621>,  <38.393322, 35.852852, 34.831356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043179, 35.820923, 34.640621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406438, 0.412617, -0.815203,
		0.261821, -0.907400, -0.328747,
		-0.875362, -0.079823, -0.476834,
		37.780571, 35.796974, 34.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568901, 35.665634, 34.172218>,  <38.393322, 35.852852, 34.831356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568901, 35.665634, 34.172218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192776, 35.799793, 34.149208>,  <37.967098, 35.880291, 34.135403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192776, 35.799793, 34.149208>,  <38.568901, 35.665634, 34.172218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192776, 35.799793, 34.149208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208074, 0.432916, -0.877091,
		-0.269273, -0.836714, -0.476867,
		-0.940318, 0.335400, -0.057526,
		37.910679, 35.900414, 34.131950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331535, 35.288448, 33.512291>,  <38.568901, 35.665634, 34.172218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331535, 35.288448, 33.512291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097134, 35.599339, 33.603958>,  <37.956493, 35.785873, 33.658958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097134, 35.599339, 33.603958>,  <38.331535, 35.288448, 33.512291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097134, 35.599339, 33.603958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041965, 0.311543, -0.949305,
		-0.809222, -0.546678, -0.215182,
		-0.586002, 0.777228, 0.229166,
		37.921333, 35.832508, 33.672707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813156, 35.342857, 32.919872>,  <38.331535, 35.288448, 33.512291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813156, 35.342857, 32.919872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843689, 35.697784, 33.101791>,  <37.862007, 35.910740, 33.210941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843689, 35.697784, 33.101791>,  <37.813156, 35.342857, 32.919872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843689, 35.697784, 33.101791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058972, 0.451308, -0.890418,
		-0.995337, 0.094786, -0.017878,
		0.076330, 0.887320, 0.454793,
		37.866589, 35.963982, 33.238228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262211, 35.701229, 32.606255>,  <37.813156, 35.342857, 32.919872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262211, 35.701229, 32.606255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536869, 35.944824, 32.765076>,  <37.701664, 36.090981, 32.860367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536869, 35.944824, 32.765076>,  <37.262211, 35.701229, 32.606255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536869, 35.944824, 32.765076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009570, 0.553680, -0.832675,
		-0.726928, 0.567954, 0.386011,
		0.686647, 0.608989, 0.397050,
		37.742863, 36.127522, 32.884190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061668, 36.281105, 32.295387>,  <37.262211, 35.701229, 32.606255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061668, 36.281105, 32.295387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428555, 36.358082, 32.434921>,  <37.648685, 36.404270, 32.518642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428555, 36.358082, 32.434921>,  <37.061668, 36.281105, 32.295387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428555, 36.358082, 32.434921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252437, 0.396646, -0.882580,
		-0.308212, 0.897573, 0.315228,
		0.917214, 0.192446, 0.348832,
		37.703720, 36.415817, 32.539570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246815, 37.130020, 32.129227>,  <37.061668, 36.281105, 32.295387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246815, 37.130020, 32.129227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600830, 36.972942, 32.229225>,  <37.813240, 36.878696, 32.289223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600830, 36.972942, 32.229225>,  <37.246815, 37.130020, 32.129227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600830, 36.972942, 32.229225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428000, 0.475186, -0.768774,
		0.183101, 0.787392, 0.588632,
		0.885037, -0.392698, 0.249997,
		37.866341, 36.855133, 32.304226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741600, 37.657684, 32.038692>,  <37.246815, 37.130020, 32.129227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741600, 37.657684, 32.038692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933670, 37.308193, 32.007607>,  <38.048912, 37.098499, 31.988956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933670, 37.308193, 32.007607>,  <37.741600, 37.657684, 32.038692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933670, 37.308193, 32.007607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437837, 0.315500, -0.841878,
		0.760088, 0.370221, 0.534044,
		0.480172, -0.873725, -0.077711,
		38.077721, 37.046074, 31.984293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362499, 37.870735, 31.851929>,  <37.741600, 37.657684, 32.038692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362499, 37.870735, 31.851929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346905, 37.483189, 31.754131>,  <38.337547, 37.250660, 31.695454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346905, 37.483189, 31.754131>,  <38.362499, 37.870735, 31.851929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346905, 37.483189, 31.754131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540781, 0.185296, -0.820501,
		0.840260, -0.164202, 0.516721,
		-0.038982, -0.968867, -0.244494,
		38.335209, 37.192528, 31.680782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018372, 37.754967, 31.644073>,  <38.362499, 37.870735, 31.851929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018372, 37.754967, 31.644073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804310, 37.460320, 31.478662>,  <38.675873, 37.283531, 31.379416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.804310, 37.460320, 31.478662>,  <39.018372, 37.754967, 31.644073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804310, 37.460320, 31.478662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543462, 0.074556, -0.836116,
		0.646728, -0.672188, 0.360424,
		-0.535155, -0.736617, -0.413526,
		38.643764, 37.239334, 31.354605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531551, 37.270882, 31.424343>,  <39.018372, 37.754967, 31.644073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531551, 37.270882, 31.424343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218731, 37.196327, 31.186466>,  <39.031040, 37.151596, 31.043739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218731, 37.196327, 31.186466>,  <39.531551, 37.270882, 31.424343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218731, 37.196327, 31.186466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485974, 0.415013, -0.769151,
		0.390153, -0.890522, -0.233990,
		-0.782055, -0.186374, -0.594689,
		38.984116, 37.140411, 31.008059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810429, 36.867142, 30.811930>,  <39.531551, 37.270882, 31.424343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810429, 36.867142, 30.811930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465782, 37.035763, 30.698858>,  <39.258995, 37.136936, 30.631016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465782, 37.035763, 30.698858>,  <39.810429, 36.867142, 30.811930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465782, 37.035763, 30.698858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435648, 0.328461, -0.838048,
		-0.260433, -0.845226, -0.466657,
		-0.861618, 0.421553, -0.282679,
		39.207298, 37.162228, 30.614054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730030, 36.735027, 30.143465>,  <39.810429, 36.867142, 30.811930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730030, 36.735027, 30.143465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452358, 37.022648, 30.156597>,  <39.285755, 37.195221, 30.164476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452358, 37.022648, 30.156597>,  <39.730030, 36.735027, 30.143465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452358, 37.022648, 30.156597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358694, 0.385110, -0.850311,
		-0.624059, -0.578495, -0.525256,
		-0.694182, 0.719051, 0.032829,
		39.244102, 37.238361, 30.166447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328453, 36.673023, 29.503035>,  <39.730030, 36.735027, 30.143465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328453, 36.673023, 29.503035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262348, 37.044991, 29.634457>,  <39.222683, 37.268169, 29.713310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262348, 37.044991, 29.634457>,  <39.328453, 36.673023, 29.503035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262348, 37.044991, 29.634457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232808, 0.360504, -0.903237,
		-0.958378, -0.072784, -0.276070,
		-0.165265, 0.929914, 0.328554,
		39.212769, 37.323963, 29.733023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950275, 36.985134, 28.990347>,  <39.328453, 36.673023, 29.503035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950275, 36.985134, 28.990347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.087059, 37.294102, 29.204422>,  <39.169128, 37.479485, 29.332867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.087059, 37.294102, 29.204422>,  <38.950275, 36.985134, 28.990347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087059, 37.294102, 29.204422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247794, 0.475245, -0.844239,
		-0.906455, 0.421313, -0.028886,
		0.341961, 0.772423, 0.535187,
		39.189648, 37.525829, 29.364979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589378, 37.496075, 28.699411>,  <38.950275, 36.985134, 28.990347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589378, 37.496075, 28.699411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923904, 37.645447, 28.859974>,  <39.124619, 37.735069, 28.956310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923904, 37.645447, 28.859974>,  <38.589378, 37.496075, 28.699411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923904, 37.645447, 28.859974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252819, 0.386981, -0.886751,
		-0.486474, 0.843088, 0.229229,
		0.836317, 0.373428, 0.401405,
		39.174801, 37.757477, 28.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670788, 38.230278, 28.531286>,  <38.589378, 37.496075, 28.699411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670788, 38.230278, 28.531286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047882, 38.132374, 28.621923>,  <39.274139, 38.073631, 28.676306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047882, 38.132374, 28.621923>,  <38.670788, 38.230278, 28.531286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047882, 38.132374, 28.621923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302564, 0.341598, -0.889812,
		0.140388, 0.907415, 0.396092,
		0.942733, -0.244762, 0.226595,
		39.330704, 38.058945, 28.689901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981228, 38.759392, 28.313505>,  <38.670788, 38.230278, 28.531286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981228, 38.759392, 28.313505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271271, 38.483940, 28.312326>,  <39.445297, 38.318668, 28.311619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.271271, 38.483940, 28.312326>,  <38.981228, 38.759392, 28.313505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271271, 38.483940, 28.312326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342269, 0.364112, -0.866184,
		0.597551, 0.627070, 0.499717,
		0.725110, -0.688626, -0.002948,
		39.488804, 38.277351, 28.311441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574142, 39.131054, 28.071409>,  <38.981228, 38.759392, 28.313505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574142, 39.131054, 28.071409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664089, 38.743942, 28.026075>,  <39.718056, 38.511677, 27.998875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664089, 38.743942, 28.026075>,  <39.574142, 39.131054, 28.071409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664089, 38.743942, 28.026075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288893, 0.177300, -0.940800,
		0.930578, 0.178814, 0.319453,
		0.224867, -0.967776, -0.113333,
		39.731548, 38.453609, 27.992075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147423, 39.122799, 27.680706>,  <39.574142, 39.131054, 28.071409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147423, 39.122799, 27.680706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028034, 38.742855, 27.643423>,  <39.956402, 38.514889, 27.621054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.028034, 38.742855, 27.643423>,  <40.147423, 39.122799, 27.680706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028034, 38.742855, 27.643423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326504, -0.009851, -0.945145,
		0.896834, -0.312530, 0.313072,
		-0.298470, -0.949857, -0.093207,
		39.938492, 38.457897, 27.615461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660824, 38.660625, 27.402340>,  <40.147423, 39.122799, 27.680706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660824, 38.660625, 27.402340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332428, 38.453430, 27.306286>,  <40.135391, 38.329113, 27.248653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332428, 38.453430, 27.306286>,  <40.660824, 38.660625, 27.402340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332428, 38.453430, 27.306286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321675, -0.072170, -0.944095,
		0.471699, -0.852338, 0.225875,
		-0.820990, -0.517987, -0.240134,
		40.086132, 38.298035, 27.234245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815495, 38.056908, 26.995689>,  <40.660824, 38.660625, 27.402340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815495, 38.056908, 26.995689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.438332, 38.159756, 26.911013>,  <40.212032, 38.221466, 26.860207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.438332, 38.159756, 26.911013>,  <40.815495, 38.056908, 26.995689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438332, 38.159756, 26.911013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214459, -0.017567, -0.976575,
		-0.254820, -0.966219, -0.038579,
		-0.942907, 0.257125, -0.211690,
		40.155460, 38.236893, 26.847506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573132, 37.482689, 26.520079>,  <40.815495, 38.056908, 26.995689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573132, 37.482689, 26.520079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355167, 37.814953, 26.474348>,  <40.224388, 38.014313, 26.446909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355167, 37.814953, 26.474348>,  <40.573132, 37.482689, 26.520079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355167, 37.814953, 26.474348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217539, 0.008370, -0.976016,
		-0.809782, -0.556714, -0.185262,
		-0.544912, 0.830662, -0.114329,
		40.191692, 38.064152, 26.440050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789738, 36.824711, 26.374773>,  <40.573132, 37.482689, 26.520079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789738, 36.824711, 26.374773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162838, 36.717350, 26.278496>,  <41.386700, 36.652931, 26.220730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.162838, 36.717350, 26.278496>,  <40.789738, 36.824711, 26.374773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162838, 36.717350, 26.278496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167817, -0.267636, 0.948793,
		-0.319082, -0.925380, -0.204594,
		0.932750, -0.268408, -0.240692,
		41.442665, 36.636829, 26.206287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776375, 36.180851, 26.525991>,  <40.789738, 36.824711, 26.374773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776375, 36.180851, 26.525991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150738, 36.321110, 26.539356>,  <41.375355, 36.405266, 26.547375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150738, 36.321110, 26.539356>,  <40.776375, 36.180851, 26.525991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150738, 36.321110, 26.539356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074105, -0.288750, 0.954532,
		0.344353, -0.890881, -0.296230,
		0.935911, 0.350648, 0.033413,
		41.431511, 36.426304, 26.549379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225704, 35.661644, 26.756235>,  <40.776375, 36.180851, 26.525991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225704, 35.661644, 26.756235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441299, 35.988880, 26.836464>,  <41.570656, 36.185223, 26.884602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.441299, 35.988880, 26.836464>,  <41.225704, 35.661644, 26.756235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441299, 35.988880, 26.836464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078486, -0.285860, 0.955052,
		0.838650, -0.499018, -0.218283,
		0.538986, 0.818086, 0.200571,
		41.602997, 36.234306, 26.896635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773075, 35.368404, 27.137182>,  <41.225704, 35.661644, 26.756235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773075, 35.368404, 27.137182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.785412, 35.762173, 27.206415>,  <41.792816, 35.998436, 27.247955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.785412, 35.762173, 27.206415>,  <41.773075, 35.368404, 27.137182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785412, 35.762173, 27.206415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051209, -0.174493, 0.983326,
		0.998212, -0.021469, -0.055794,
		0.030846, 0.984424, 0.173082,
		41.794666, 36.057499, 27.258339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372097, 35.454391, 27.531237>,  <41.773075, 35.368404, 27.137182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372097, 35.454391, 27.531237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.122120, 35.763302, 27.576910>,  <41.972134, 35.948650, 27.604315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.122120, 35.763302, 27.576910>,  <42.372097, 35.454391, 27.531237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122120, 35.763302, 27.576910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085121, -0.077986, 0.993314,
		0.776019, 0.630480, -0.017001,
		-0.624939, 0.772278, 0.114186,
		41.934639, 35.994984, 27.611166>
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
