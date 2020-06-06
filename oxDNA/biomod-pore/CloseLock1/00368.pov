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
	<24.175426, 34.895161, 35.405449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514919, 34.866379, 35.195889>,  <24.718615, 34.849110, 35.070152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.514919, 34.866379, 35.195889>,  <24.175426, 34.895161, 35.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514919, 34.866379, 35.195889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459937, 0.589363, 0.664161,
		0.260976, -0.804657, 0.533308,
		0.848734, -0.071958, -0.523901,
		24.769539, 34.844791, 35.038719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720926, 34.513821, 35.744839>,  <24.175426, 34.895161, 35.405449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720926, 34.513821, 35.744839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882967, 34.791447, 35.506794>,  <24.980192, 34.958023, 35.363968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882967, 34.791447, 35.506794>,  <24.720926, 34.513821, 35.744839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882967, 34.791447, 35.506794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492499, 0.382740, 0.781636,
		0.770283, -0.609736, -0.186779,
		0.405103, 0.694070, -0.595112,
		25.004498, 34.999668, 35.328259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489735, 34.532486, 35.818935>,  <24.720926, 34.513821, 35.744839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489735, 34.532486, 35.818935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371878, 34.907200, 35.743450>,  <25.301165, 35.132030, 35.698158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371878, 34.907200, 35.743450>,  <25.489735, 34.532486, 35.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371878, 34.907200, 35.743450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355581, 0.290777, 0.888263,
		0.886989, 0.194615, -0.418779,
		-0.294640, 0.936789, -0.188715,
		25.283485, 35.188236, 35.686836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145853, 34.362339, 35.895210>,  <25.489735, 34.532486, 35.818935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145853, 34.362339, 35.895210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514944, 34.276245, 35.767307>,  <26.736399, 34.224586, 35.690567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514944, 34.276245, 35.767307>,  <26.145853, 34.362339, 35.895210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514944, 34.276245, 35.767307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129722, 0.607766, -0.783449,
		0.362965, 0.764390, 0.532882,
		0.922729, -0.215238, -0.319756,
		26.791763, 34.211674, 35.671379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444757, 34.986572, 35.806747>,  <26.145853, 34.362339, 35.895210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444757, 34.986572, 35.806747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651308, 34.732037, 35.577515>,  <26.775238, 34.579315, 35.439976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651308, 34.732037, 35.577515>,  <26.444757, 34.986572, 35.806747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651308, 34.732037, 35.577515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035376, 0.652786, -0.756716,
		0.855630, 0.411025, 0.314574,
		0.516378, -0.636340, -0.573083,
		26.806221, 34.541134, 35.405590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966238, 35.364586, 35.387291>,  <26.444757, 34.986572, 35.806747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966238, 35.364586, 35.387291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938902, 35.020142, 35.185768>,  <26.922501, 34.813477, 35.064854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938902, 35.020142, 35.185768>,  <26.966238, 35.364586, 35.387291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938902, 35.020142, 35.185768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018135, 0.505976, -0.862357,
		0.997497, -0.049797, -0.050195,
		-0.068341, -0.861109, -0.503807,
		26.918400, 34.761810, 35.034626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394131, 35.485809, 34.776669>,  <26.966238, 35.364586, 35.387291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394131, 35.485809, 34.776669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151512, 35.181976, 34.682747>,  <27.005941, 34.999676, 34.626396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151512, 35.181976, 34.682747>,  <27.394131, 35.485809, 34.776669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151512, 35.181976, 34.682747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147064, 0.397423, -0.905774,
		0.781328, -0.514863, -0.352763,
		-0.606546, -0.759586, -0.234800,
		26.969547, 34.954102, 34.612309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566633, 35.379349, 34.061028>,  <27.394131, 35.485809, 34.776669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566633, 35.379349, 34.061028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210175, 35.215355, 34.138767>,  <26.996300, 35.116959, 34.185410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210175, 35.215355, 34.138767>,  <27.566633, 35.379349, 34.061028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210175, 35.215355, 34.138767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327765, 0.285521, -0.900582,
		0.313737, -0.866250, -0.388820,
		-0.891145, -0.409987, 0.194348,
		26.942831, 35.092358, 34.197071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544394, 34.908611, 33.557987>,  <27.566633, 35.379349, 34.061028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544394, 34.908611, 33.557987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169136, 34.985634, 33.673096>,  <26.943981, 35.031845, 33.742161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169136, 34.985634, 33.673096>,  <27.544394, 34.908611, 33.557987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169136, 34.985634, 33.673096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275482, 0.088409, -0.957232,
		-0.209759, -0.977296, -0.029895,
		-0.938142, 0.192552, 0.287772,
		26.887693, 35.043400, 33.759426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153605, 34.550488, 33.039597>,  <27.544394, 34.908611, 33.557987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153605, 34.550488, 33.039597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875536, 34.784908, 33.206104>,  <26.708694, 34.925560, 33.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875536, 34.784908, 33.206104>,  <27.153605, 34.550488, 33.039597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875536, 34.784908, 33.206104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484768, 0.045387, -0.873464,
		-0.530787, -0.809003, 0.252546,
		-0.695172, 0.586050, 0.416270,
		26.666985, 34.960724, 33.330986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513042, 34.371750, 32.798069>,  <27.153605, 34.550488, 33.039597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513042, 34.371750, 32.798069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434145, 34.743603, 32.922573>,  <26.386806, 34.966713, 32.997276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434145, 34.743603, 32.922573>,  <26.513042, 34.371750, 32.798069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434145, 34.743603, 32.922573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513754, 0.172388, -0.840440,
		-0.834956, -0.325681, 0.443599,
		-0.197244, 0.929631, 0.311256,
		26.374971, 35.022491, 33.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837273, 34.595722, 32.612167>,  <26.513042, 34.371750, 32.798069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837273, 34.595722, 32.612167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004963, 34.951931, 32.682838>,  <26.105577, 35.165657, 32.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004963, 34.951931, 32.682838>,  <25.837273, 34.595722, 32.612167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004963, 34.951931, 32.682838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515010, 0.393533, -0.761509,
		-0.747672, 0.228253, 0.623609,
		0.419228, 0.890524, 0.176681,
		26.130732, 35.219090, 32.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299141, 35.015839, 32.460495>,  <25.837273, 34.595722, 32.612167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299141, 35.015839, 32.460495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606606, 35.269630, 32.428017>,  <25.791084, 35.421906, 32.408531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606606, 35.269630, 32.428017>,  <25.299141, 35.015839, 32.460495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606606, 35.269630, 32.428017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380321, 0.351269, -0.855550,
		-0.514310, 0.688508, 0.511314,
		0.768661, 0.634482, -0.081193,
		25.837204, 35.459976, 32.403660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053831, 35.605556, 32.352036>,  <25.299141, 35.015839, 32.460495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053831, 35.605556, 32.352036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426287, 35.645973, 32.211880>,  <25.649759, 35.670223, 32.127789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426287, 35.645973, 32.211880>,  <25.053831, 35.605556, 32.352036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426287, 35.645973, 32.211880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364327, 0.216341, -0.905794,
		-0.015723, 0.971075, 0.238257,
		0.931139, 0.101045, -0.350387,
		25.705627, 35.676289, 32.106762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148891, 36.327785, 32.032341>,  <25.053831, 35.605556, 32.352036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148891, 36.327785, 32.032341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416523, 36.073963, 31.877592>,  <25.577103, 35.921669, 31.784744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416523, 36.073963, 31.877592>,  <25.148891, 36.327785, 32.032341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416523, 36.073963, 31.877592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319637, 0.224248, -0.920622,
		0.670944, 0.739626, -0.052790,
		0.669078, -0.634560, -0.386870,
		25.617247, 35.883595, 31.761532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348307, 36.696316, 31.441965>,  <25.148891, 36.327785, 32.032341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348307, 36.696316, 31.441965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503916, 36.339108, 31.351482>,  <25.597281, 36.124783, 31.297194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503916, 36.339108, 31.351482>,  <25.348307, 36.696316, 31.441965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503916, 36.339108, 31.351482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358933, 0.079214, -0.929996,
		0.848428, 0.442981, -0.289720,
		0.389021, -0.893025, -0.226207,
		25.620623, 36.071201, 31.283621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634258, 36.757961, 30.739746>,  <25.348307, 36.696316, 31.441965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634258, 36.757961, 30.739746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601221, 36.361538, 30.781681>,  <25.581398, 36.123684, 30.806843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601221, 36.361538, 30.781681>,  <25.634258, 36.757961, 30.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601221, 36.361538, 30.781681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312898, -0.074089, -0.946893,
		0.946189, -0.111011, -0.303979,
		-0.082594, -0.991054, 0.104837,
		25.576443, 36.064220, 30.813131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915682, 36.501575, 30.101578>,  <25.634258, 36.757961, 30.739746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915682, 36.501575, 30.101578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657766, 36.230576, 30.243135>,  <25.503017, 36.067974, 30.328070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657766, 36.230576, 30.243135>,  <25.915682, 36.501575, 30.101578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657766, 36.230576, 30.243135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381199, -0.116282, -0.917151,
		0.662524, -0.726270, -0.183286,
		-0.644786, -0.677503, 0.353893,
		25.464331, 36.027325, 30.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884686, 36.090553, 29.571136>,  <25.915682, 36.501575, 30.101578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884686, 36.090553, 29.571136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581358, 35.932167, 29.778276>,  <25.399363, 35.837135, 29.902559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581358, 35.932167, 29.778276>,  <25.884686, 36.090553, 29.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581358, 35.932167, 29.778276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425848, -0.300562, -0.853414,
		0.493567, -0.867684, 0.059301,
		-0.758318, -0.395964, 0.517849,
		25.353863, 35.813377, 29.933632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893923, 35.543930, 29.317316>,  <25.884686, 36.090553, 29.571136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893923, 35.543930, 29.317316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529823, 35.581020, 29.478735>,  <25.311363, 35.603275, 29.575586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529823, 35.581020, 29.478735>,  <25.893923, 35.543930, 29.317316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529823, 35.581020, 29.478735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409386, -0.347615, -0.843545,
		0.062061, -0.933041, 0.354376,
		-0.910248, 0.092725, 0.403547,
		25.256748, 35.608837, 29.599798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630188, 34.961430, 29.046160>,  <25.893923, 35.543930, 29.317316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630188, 34.961430, 29.046160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350803, 35.226440, 29.154394>,  <25.183172, 35.385445, 29.219336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350803, 35.226440, 29.154394>,  <25.630188, 34.961430, 29.046160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350803, 35.226440, 29.154394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507437, -0.191865, -0.840057,
		-0.504641, -0.724052, 0.470199,
		-0.698459, 0.662523, 0.270588,
		25.141266, 35.425198, 29.235571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022911, 34.670399, 28.927551>,  <25.630188, 34.961430, 29.046160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022911, 34.670399, 28.927551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894697, 35.047855, 28.960541>,  <24.817770, 35.274330, 28.980333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894697, 35.047855, 28.960541>,  <25.022911, 34.670399, 28.927551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894697, 35.047855, 28.960541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516010, -0.100935, -0.850615,
		-0.794350, -0.315206, 0.519281,
		-0.320533, 0.943640, 0.082471,
		24.798538, 35.330948, 28.985283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.231104, 34.687489, 28.927065>,  <25.022911, 34.670399, 28.927551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.231104, 34.687489, 28.927065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382273, 35.023121, 28.770546>,  <24.472975, 35.224503, 28.676634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382273, 35.023121, 28.770546>,  <24.231104, 34.687489, 28.927065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382273, 35.023121, 28.770546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346253, -0.263879, -0.900265,
		-0.858652, 0.475718, 0.190810,
		0.377922, 0.839083, -0.391299,
		24.495649, 35.274845, 28.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754780, 34.833862, 28.394505>,  <24.231104, 34.687489, 28.927065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754780, 34.833862, 28.394505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079088, 35.047634, 28.298981>,  <24.273674, 35.175896, 28.241667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.079088, 35.047634, 28.298981>,  <23.754780, 34.833862, 28.394505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.079088, 35.047634, 28.298981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134511, -0.226957, -0.964571,
		-0.569696, 0.814171, -0.112124,
		0.810773, 0.534431, -0.238812,
		24.322321, 35.207962, 28.227337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642826, 35.433071, 27.866158>,  <23.754780, 34.833862, 28.394505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642826, 35.433071, 27.866158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.010286, 35.275066, 27.863268>,  <24.230762, 35.180264, 27.861534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.010286, 35.275066, 27.863268>,  <23.642826, 35.433071, 27.866158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.010286, 35.275066, 27.863268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143362, -0.316262, -0.937777,
		0.368144, 0.862524, -0.347163,
		0.918650, -0.395007, -0.007223,
		24.285881, 35.156563, 27.861101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.804436, 35.079693, 27.267441>,  <23.642826, 35.433071, 27.866158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.804436, 35.079693, 27.267441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159435, 35.010368, 27.438231>,  <24.372435, 34.968773, 27.540705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159435, 35.010368, 27.438231>,  <23.804436, 35.079693, 27.267441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.159435, 35.010368, 27.438231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242348, -0.612545, -0.752367,
		0.391933, 0.771203, -0.501632,
		0.887500, -0.173308, 0.426976,
		24.425686, 34.958378, 27.566324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.382820, 35.369732, 26.749159>,  <23.804436, 35.079693, 27.267441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.382820, 35.369732, 26.749159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463900, 35.056328, 26.984114>,  <24.512547, 34.868286, 27.125086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463900, 35.056328, 26.984114>,  <24.382820, 35.369732, 26.749159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463900, 35.056328, 26.984114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308183, -0.518317, -0.797728,
		0.929482, 0.342722, 0.136403,
		0.202699, -0.783511, 0.587387,
		24.524710, 34.821274, 27.160330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006414, 34.999992, 26.512770>,  <24.382820, 35.369732, 26.749159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006414, 34.999992, 26.512770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855536, 34.730465, 26.766918>,  <24.765009, 34.568748, 26.919407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855536, 34.730465, 26.766918>,  <25.006414, 34.999992, 26.512770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855536, 34.730465, 26.766918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166095, -0.724141, -0.669353,
		0.911118, -0.146945, 0.385059,
		-0.377195, -0.673816, 0.635371,
		24.742376, 34.528320, 26.957529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417360, 34.373886, 26.535889>,  <25.006414, 34.999992, 26.512770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417360, 34.373886, 26.535889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043661, 34.269730, 26.633358>,  <24.819441, 34.207237, 26.691839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043661, 34.269730, 26.633358>,  <25.417360, 34.373886, 26.535889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043661, 34.269730, 26.633358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069444, -0.803029, -0.591880,
		0.349798, -0.536041, 0.768311,
		-0.934248, -0.260393, 0.243673,
		24.763386, 34.191612, 26.706459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443453, 33.676701, 26.493195>,  <25.417360, 34.373886, 26.535889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443453, 33.676701, 26.493195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050007, 33.748619, 26.487913>,  <24.813940, 33.791771, 26.484745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050007, 33.748619, 26.487913>,  <25.443453, 33.676701, 26.493195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050007, 33.748619, 26.487913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145989, -0.837352, -0.526810,
		-0.105773, -0.516251, 0.849880,
		-0.983615, 0.179796, -0.013202,
		24.754923, 33.802559, 26.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728458, 33.287491, 27.120884>,  <25.443453, 33.676701, 26.493195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728458, 33.287491, 27.120884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733212, 33.531025, 27.438168>,  <25.736063, 33.677143, 27.628538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733212, 33.531025, 27.438168>,  <25.728458, 33.287491, 27.120884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733212, 33.531025, 27.438168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305757, 0.757482, -0.576831,
		-0.952035, -0.235675, 0.195155,
		0.011882, 0.608833, 0.793209,
		25.736776, 33.713676, 27.676130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920525, 32.795528, 26.656719>,  <25.728458, 33.287491, 27.120884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.920525, 32.795528, 26.656719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294521, 32.672882, 26.585409>,  <26.518919, 32.599297, 26.542624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294521, 32.672882, 26.585409>,  <25.920525, 32.795528, 26.656719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294521, 32.672882, 26.585409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287704, 0.361735, 0.886777,
		-0.207409, -0.880419, 0.426432,
		0.934991, -0.306612, -0.178273,
		26.575018, 32.580898, 26.531927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179077, 32.199112, 27.109671>,  <25.920525, 32.795528, 26.656719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179077, 32.199112, 27.109671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480837, 32.445183, 27.018072>,  <26.661894, 32.592823, 26.963114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480837, 32.445183, 27.018072>,  <26.179077, 32.199112, 27.109671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480837, 32.445183, 27.018072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118790, 0.215152, 0.969329,
		0.645576, -0.758465, 0.089234,
		0.754401, 0.615175, -0.228995,
		26.707157, 32.629734, 26.949373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812391, 32.115673, 27.537024>,  <26.179077, 32.199112, 27.109671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812391, 32.115673, 27.537024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794485, 32.505394, 27.448725>,  <26.783741, 32.739227, 27.395746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794485, 32.505394, 27.448725>,  <26.812391, 32.115673, 27.537024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794485, 32.505394, 27.448725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093909, 0.224092, 0.970033,
		0.994574, 0.022692, -0.101527,
		-0.044764, 0.974304, -0.220745,
		26.781055, 32.797684, 27.382502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352798, 32.494026, 27.772816>,  <26.812391, 32.115673, 27.537024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352798, 32.494026, 27.772816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023302, 32.719738, 27.794878>,  <26.825605, 32.855164, 27.808115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023302, 32.719738, 27.794878>,  <27.352798, 32.494026, 27.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023302, 32.719738, 27.794878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175030, 0.160561, 0.971383,
		0.539276, 0.809820, -0.231026,
		-0.823739, 0.564280, 0.055156,
		26.776180, 32.889023, 27.811424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511772, 33.064163, 28.012615>,  <27.352798, 32.494026, 27.772816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511772, 33.064163, 28.012615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130331, 33.005779, 28.117947>,  <26.901466, 32.970749, 28.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130331, 33.005779, 28.117947>,  <27.511772, 33.064163, 28.012615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130331, 33.005779, 28.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199844, 0.347305, 0.916210,
		-0.225184, 0.926323, -0.302022,
		-0.953601, -0.145959, 0.263328,
		26.844252, 32.961990, 28.196945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276381, 33.706734, 28.391449>,  <27.511772, 33.064163, 28.012615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276381, 33.706734, 28.391449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025404, 33.419430, 28.511728>,  <26.874819, 33.247047, 28.583897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025404, 33.419430, 28.511728>,  <27.276381, 33.706734, 28.391449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025404, 33.419430, 28.511728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241238, 0.187865, 0.952109,
		-0.740352, 0.669933, 0.055397,
		-0.627442, -0.718260, 0.300699,
		26.837172, 33.203953, 28.601938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864441, 34.031223, 29.041485>,  <27.276381, 33.706734, 28.391449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864441, 34.031223, 29.041485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832777, 33.632576, 29.050285>,  <26.813780, 33.393387, 29.055567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832777, 33.632576, 29.050285>,  <26.864441, 34.031223, 29.041485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832777, 33.632576, 29.050285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166782, 0.008520, 0.985957,
		-0.982811, 0.081717, 0.165544,
		-0.079159, -0.996619, 0.022003,
		26.809029, 33.333591, 29.056887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522652, 33.859154, 29.645468>,  <26.864441, 34.031223, 29.041485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522652, 33.859154, 29.645468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671913, 33.498562, 29.557751>,  <26.761469, 33.282207, 29.505119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671913, 33.498562, 29.557751>,  <26.522652, 33.859154, 29.645468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671913, 33.498562, 29.557751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342760, -0.085692, 0.935506,
		-0.862133, -0.424251, 0.277016,
		0.373151, -0.901481, -0.219294,
		26.783859, 33.228119, 29.491962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379309, 33.513657, 30.169989>,  <26.522652, 33.859154, 29.645468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379309, 33.513657, 30.169989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654589, 33.279408, 29.998674>,  <26.819756, 33.138859, 29.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654589, 33.279408, 29.998674>,  <26.379309, 33.513657, 30.169989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654589, 33.279408, 29.998674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392462, -0.196005, 0.898641,
		-0.610211, -0.786529, 0.094944,
		0.688198, -0.585622, -0.428287,
		26.861048, 33.103722, 29.870188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217682, 32.881393, 30.457596>,  <26.379309, 33.513657, 30.169989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217682, 32.881393, 30.457596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599117, 32.878338, 30.337187>,  <26.827978, 32.876507, 30.264942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599117, 32.878338, 30.337187>,  <26.217682, 32.881393, 30.457596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599117, 32.878338, 30.337187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289048, -0.257002, 0.922172,
		-0.084402, -0.966381, -0.242867,
		0.953587, -0.007633, -0.301022,
		26.885193, 32.876049, 30.246880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473835, 32.462841, 30.875645>,  <26.217682, 32.881393, 30.457596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473835, 32.462841, 30.875645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795197, 32.641174, 30.717772>,  <26.988012, 32.748177, 30.623047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795197, 32.641174, 30.717772>,  <26.473835, 32.462841, 30.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795197, 32.641174, 30.717772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523236, -0.212237, 0.825336,
		0.284200, -0.869588, -0.403790,
		0.803402, 0.445838, -0.394682,
		27.036217, 32.774925, 30.599367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046659, 32.036755, 31.043217>,  <26.473835, 32.462841, 30.875645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046659, 32.036755, 31.043217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210087, 32.387478, 30.941805>,  <27.308144, 32.597912, 30.880959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210087, 32.387478, 30.941805>,  <27.046659, 32.036755, 31.043217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210087, 32.387478, 30.941805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588406, -0.040680, 0.807541,
		0.697748, -0.479112, -0.532541,
		0.408567, 0.876811, -0.253528,
		27.332657, 32.650520, 30.865747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749161, 31.995737, 31.177614>,  <27.046659, 32.036755, 31.043217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749161, 31.995737, 31.177614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691183, 32.391487, 31.182116>,  <27.656397, 32.628937, 31.184816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691183, 32.391487, 31.182116>,  <27.749161, 31.995737, 31.177614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691183, 32.391487, 31.182116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678052, 0.091040, 0.729354,
		0.720581, 0.113347, -0.684044,
		-0.144946, 0.989376, 0.011254,
		27.647699, 32.688301, 31.185492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429800, 32.276836, 31.232428>,  <27.749161, 31.995737, 31.177614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429800, 32.276836, 31.232428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184870, 32.571377, 31.347561>,  <28.037912, 32.748100, 31.416641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184870, 32.571377, 31.347561>,  <28.429800, 32.276836, 31.232428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184870, 32.571377, 31.347561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621200, 0.222899, 0.751283,
		0.489048, 0.638832, -0.593906,
		-0.612325, 0.736349, 0.287834,
		28.001173, 32.792282, 31.433910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848455, 32.709671, 31.557608>,  <28.429800, 32.276836, 31.232428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848455, 32.709671, 31.557608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495331, 32.851643, 31.680685>,  <28.283457, 32.936825, 31.754532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495331, 32.851643, 31.680685>,  <28.848455, 32.709671, 31.557608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495331, 32.851643, 31.680685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413776, 0.277525, 0.867047,
		0.222343, 0.892753, -0.391861,
		-0.882810, 0.354924, 0.307694,
		28.230488, 32.958118, 31.772993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018776, 33.341400, 31.904015>,  <28.848455, 32.709671, 31.557608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018776, 33.341400, 31.904015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659395, 33.208630, 32.018982>,  <28.443768, 33.128967, 32.087963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659395, 33.208630, 32.018982>,  <29.018776, 33.341400, 31.904015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659395, 33.208630, 32.018982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262748, 0.118019, 0.957620,
		-0.351780, 0.935894, -0.018821,
		-0.898451, -0.331926, 0.287420,
		28.389860, 33.109051, 32.105209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748869, 33.890488, 32.359577>,  <29.018776, 33.341400, 31.904015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748869, 33.890488, 32.359577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584219, 33.530838, 32.419090>,  <28.485430, 33.315048, 32.454800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584219, 33.530838, 32.419090>,  <28.748869, 33.890488, 32.359577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584219, 33.530838, 32.419090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321788, 0.009350, 0.946766,
		-0.852653, 0.437589, 0.285479,
		-0.411626, -0.899126, 0.148783,
		28.460732, 33.261101, 32.463726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364269, 33.990868, 33.005093>,  <28.748869, 33.890488, 32.359577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364269, 33.990868, 33.005093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428875, 33.599205, 32.955849>,  <28.467638, 33.364208, 32.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428875, 33.599205, 32.955849>,  <28.364269, 33.990868, 33.005093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428875, 33.599205, 32.955849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245767, -0.080910, 0.965946,
		-0.955778, -0.186272, 0.227577,
		0.161516, -0.979161, -0.123111,
		28.477329, 33.305458, 32.918915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022406, 33.717213, 33.496967>,  <28.364269, 33.990868, 33.005093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022406, 33.717213, 33.496967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278393, 33.429569, 33.388657>,  <28.431986, 33.256985, 33.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278393, 33.429569, 33.388657>,  <28.022406, 33.717213, 33.496967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278393, 33.429569, 33.388657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236295, -0.151144, 0.959854,
		-0.731167, -0.678260, 0.073195,
		0.639968, -0.719110, -0.270781,
		28.470383, 33.213837, 33.307423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881756, 33.136620, 33.949577>,  <28.022406, 33.717213, 33.496967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881756, 33.136620, 33.949577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249523, 33.069942, 33.807095>,  <28.470182, 33.029934, 33.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249523, 33.069942, 33.807095>,  <27.881756, 33.136620, 33.949577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249523, 33.069942, 33.807095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288378, -0.330101, 0.898816,
		-0.267412, -0.929110, -0.255430,
		0.919417, -0.166693, -0.356208,
		28.525349, 33.019932, 33.700233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140589, 32.452152, 34.264606>,  <27.881756, 33.136620, 33.949577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140589, 32.452152, 34.264606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455816, 32.652744, 34.121799>,  <28.644953, 32.773098, 34.036114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455816, 32.652744, 34.121799>,  <28.140589, 32.452152, 34.264606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455816, 32.652744, 34.121799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478575, -0.134323, 0.867712,
		0.387183, -0.854679, -0.345851,
		0.788071, 0.501479, -0.357020,
		28.692238, 32.803188, 34.014694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725882, 32.241123, 34.611210>,  <28.140589, 32.452152, 34.264606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725882, 32.241123, 34.611210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930908, 32.558262, 34.479343>,  <29.053925, 32.748543, 34.400223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930908, 32.558262, 34.479343>,  <28.725882, 32.241123, 34.611210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930908, 32.558262, 34.479343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352643, 0.155686, 0.922716,
		0.782892, -0.589206, -0.199791,
		0.512565, 0.792842, -0.329665,
		29.084677, 32.796116, 34.380444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419880, 32.233940, 34.839798>,  <28.725882, 32.241123, 34.611210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419880, 32.233940, 34.839798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354805, 32.621162, 34.763481>,  <29.315760, 32.853497, 34.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354805, 32.621162, 34.763481>,  <29.419880, 32.233940, 34.839798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354805, 32.621162, 34.763481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397838, 0.241308, 0.885153,
		0.902916, 0.068100, -0.424387,
		-0.162687, 0.968056, -0.190788,
		29.306000, 32.911579, 34.706245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066435, 32.560127, 34.995041>,  <29.419880, 32.233940, 34.839798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066435, 32.560127, 34.995041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787672, 32.846790, 35.005787>,  <29.620415, 33.018787, 35.012234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787672, 32.846790, 35.005787>,  <30.066435, 32.560127, 34.995041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787672, 32.846790, 35.005787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456190, 0.414089, 0.787668,
		0.553361, 0.561191, -0.615513,
		-0.696909, 0.716656, 0.026869,
		29.578600, 33.061787, 35.013847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807173, 32.708305, 34.916332>,  <30.066435, 32.560127, 34.995041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807173, 32.708305, 34.916332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175949, 32.647003, 35.058624>,  <31.397215, 32.610222, 35.143997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175949, 32.647003, 35.058624>,  <30.807173, 32.708305, 34.916332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175949, 32.647003, 35.058624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311837, -0.838434, 0.446975,
		0.229753, -0.523012, -0.820775,
		0.921939, -0.153254, 0.355727,
		31.452530, 32.601028, 35.165344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050571, 32.058231, 34.735939>,  <30.807173, 32.708305, 34.916332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050571, 32.058231, 34.735939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249798, 32.141933, 35.072544>,  <31.369333, 32.192154, 35.274506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249798, 32.141933, 35.072544>,  <31.050571, 32.058231, 34.735939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249798, 32.141933, 35.072544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217787, -0.909154, 0.354977,
		0.839345, -0.360072, -0.407244,
		0.498065, 0.209255, 0.841513,
		31.399218, 32.204712, 35.324997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613457, 31.685871, 34.860607>,  <31.050571, 32.058231, 34.735939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613457, 31.685871, 34.860607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393047, 31.738270, 35.190266>,  <31.260801, 31.769709, 35.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393047, 31.738270, 35.190266>,  <31.613457, 31.685871, 34.860607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393047, 31.738270, 35.190266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079043, -0.991355, 0.104729,
		0.830737, -0.007435, 0.556615,
		-0.551024, 0.130999, 0.824143,
		31.227739, 31.777569, 35.437508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805420, 31.280436, 35.381077>,  <31.613457, 31.685871, 34.860607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805420, 31.280436, 35.381077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422707, 31.353952, 35.471222>,  <31.193079, 31.398064, 35.525311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422707, 31.353952, 35.471222>,  <31.805420, 31.280436, 35.381077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422707, 31.353952, 35.471222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140923, -0.970918, 0.193542,
		0.254380, 0.153419, 0.954858,
		-0.956782, 0.183794, 0.225362,
		31.135672, 31.409090, 35.538830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602451, 30.737524, 35.741821>,  <31.805420, 31.280436, 35.381077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602451, 30.737524, 35.741821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235880, 30.895792, 35.765839>,  <31.015938, 30.990753, 35.780247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235880, 30.895792, 35.765839>,  <31.602451, 30.737524, 35.741821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235880, 30.895792, 35.765839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389014, -0.915956, 0.098448,
		0.093946, 0.066865, 0.993329,
		-0.916429, 0.395668, 0.060039,
		30.960951, 31.014492, 35.783852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367317, 30.165108, 36.145042>,  <31.602451, 30.737524, 35.741821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367317, 30.165108, 36.145042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187677, 30.102345, 36.496880>,  <31.079893, 30.064686, 36.707981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187677, 30.102345, 36.496880>,  <31.367317, 30.165108, 36.145042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187677, 30.102345, 36.496880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432983, 0.822920, 0.367869,
		-0.781559, 0.546060, -0.301636,
		-0.449101, -0.156908, 0.879595,
		31.052946, 30.055271, 36.760757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253532, 30.848263, 36.397331>,  <31.367317, 30.165108, 36.145042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253532, 30.848263, 36.397331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246580, 30.610794, 36.719139>,  <31.242409, 30.468313, 36.912224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246580, 30.610794, 36.719139>,  <31.253532, 30.848263, 36.397331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246580, 30.610794, 36.719139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410210, 0.729570, 0.547226,
		-0.911825, 0.339532, 0.230851,
		-0.017379, -0.593671, 0.804520,
		31.241367, 30.432693, 36.960495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800301, 31.066883, 36.860783>,  <31.253532, 30.848263, 36.397331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800301, 31.066883, 36.860783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039104, 30.852633, 37.099674>,  <31.182386, 30.724083, 37.243008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039104, 30.852633, 37.099674>,  <30.800301, 31.066883, 36.860783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039104, 30.852633, 37.099674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203189, 0.821143, 0.533327,
		-0.776074, -0.197052, 0.599066,
		0.597012, -0.535625, 0.597229,
		31.218208, 30.691944, 37.278843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835978, 31.470749, 37.472275>,  <30.800301, 31.066883, 36.860783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835978, 31.470749, 37.472275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122086, 31.203190, 37.553230>,  <31.293751, 31.042654, 37.601803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122086, 31.203190, 37.553230>,  <30.835978, 31.470749, 37.472275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122086, 31.203190, 37.553230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441630, 0.657084, 0.610905,
		-0.541617, -0.347584, 0.765399,
		0.715272, -0.668900, 0.202385,
		31.336668, 31.002520, 37.613945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833084, 31.335430, 38.172245>,  <30.835978, 31.470749, 37.472275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833084, 31.335430, 38.172245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198601, 31.256357, 38.030312>,  <31.417910, 31.208914, 37.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198601, 31.256357, 38.030312>,  <30.833084, 31.335430, 38.172245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198601, 31.256357, 38.030312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385055, 0.699682, 0.601812,
		0.129302, -0.686561, 0.715483,
		0.913791, -0.197685, -0.354834,
		31.472738, 31.197052, 37.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228350, 31.293629, 38.756680>,  <30.833084, 31.335430, 38.172245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228350, 31.293629, 38.756680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492764, 31.361464, 38.464302>,  <31.651411, 31.402164, 38.288876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492764, 31.361464, 38.464302>,  <31.228350, 31.293629, 38.756680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492764, 31.361464, 38.464302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409210, 0.735042, 0.540611,
		0.628952, -0.656471, 0.416492,
		0.661034, 0.169585, -0.730941,
		31.691074, 31.412340, 38.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961676, 31.085741, 38.929234>,  <31.228350, 31.293629, 38.756680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961676, 31.085741, 38.929234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002316, 31.378304, 38.659500>,  <32.026699, 31.553841, 38.497662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002316, 31.378304, 38.659500>,  <31.961676, 31.085741, 38.929234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002316, 31.378304, 38.659500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463734, 0.564870, 0.682548,
		0.880130, -0.382058, -0.281786,
		0.101600, 0.731405, -0.674332,
		32.032795, 31.597725, 38.457199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706261, 31.235125, 38.900803>,  <31.961676, 31.085741, 38.929234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706261, 31.235125, 38.900803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543850, 31.562014, 38.737202>,  <32.446404, 31.758146, 38.639042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543850, 31.562014, 38.737202>,  <32.706261, 31.235125, 38.900803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543850, 31.562014, 38.737202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626550, 0.574750, 0.526400,
		0.665262, -0.042528, -0.745398,
		-0.406031, 0.817223, -0.409005,
		32.422039, 31.807180, 38.614498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186893, 31.533455, 38.581409>,  <32.706261, 31.235125, 38.900803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186893, 31.533455, 38.581409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915695, 31.809795, 38.681839>,  <32.752975, 31.975599, 38.742096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915695, 31.809795, 38.681839>,  <33.186893, 31.533455, 38.581409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915695, 31.809795, 38.681839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711137, 0.530036, 0.461894,
		0.186021, 0.491714, -0.850655,
		-0.677998, 0.690854, 0.251078,
		32.712296, 32.017052, 38.757164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639263, 32.162376, 38.667149>,  <33.186893, 31.533455, 38.581409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639263, 32.162376, 38.667149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284988, 32.275642, 38.814323>,  <33.072422, 32.343601, 38.902630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284988, 32.275642, 38.814323>,  <33.639263, 32.162376, 38.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284988, 32.275642, 38.814323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462375, 0.609763, 0.643737,
		-0.042075, 0.740276, -0.670986,
		-0.885686, 0.283162, 0.367941,
		33.019283, 32.360592, 38.924706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660091, 32.886375, 38.617725>,  <33.639263, 32.162376, 38.667149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660091, 32.886375, 38.617725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379990, 32.805386, 38.891556>,  <33.211929, 32.756794, 39.055855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379990, 32.805386, 38.891556>,  <33.660091, 32.886375, 38.617725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379990, 32.805386, 38.891556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396322, 0.687338, 0.608683,
		-0.593779, 0.697547, -0.401067,
		-0.700253, -0.202472, 0.684581,
		33.169914, 32.744644, 39.096931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585159, 33.462597, 38.953659>,  <33.660091, 32.886375, 38.617725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585159, 33.462597, 38.953659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416039, 33.222816, 39.225513>,  <33.314564, 33.078949, 39.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416039, 33.222816, 39.225513>,  <33.585159, 33.462597, 38.953659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416039, 33.222816, 39.225513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336857, 0.592265, 0.731949,
		-0.841287, 0.538410, -0.048485,
		-0.422805, -0.599446, 0.679632,
		33.289196, 33.042984, 39.429401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461807, 33.881058, 39.619087>,  <33.585159, 33.462597, 38.953659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461807, 33.881058, 39.619087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407974, 33.506359, 39.748333>,  <33.375675, 33.281540, 39.825878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407974, 33.506359, 39.748333>,  <33.461807, 33.881058, 39.619087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407974, 33.506359, 39.748333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325015, 0.266306, 0.907439,
		-0.936083, 0.227142, 0.268615,
		-0.134584, -0.936743, 0.323110,
		33.367599, 33.225338, 39.845264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110271, 33.920486, 40.255985>,  <33.461807, 33.881058, 39.619087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110271, 33.920486, 40.255985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296799, 33.566647, 40.254055>,  <33.408714, 33.354343, 40.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296799, 33.566647, 40.254055>,  <33.110271, 33.920486, 40.255985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296799, 33.566647, 40.254055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261591, 0.132679, 0.956016,
		-0.845053, -0.447073, 0.293275,
		0.466321, -0.884603, -0.004829,
		33.436695, 33.301266, 40.252605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907692, 33.596443, 40.849384>,  <33.110271, 33.920486, 40.255985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907692, 33.596443, 40.849384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250843, 33.427891, 40.731754>,  <33.456734, 33.326759, 40.661175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250843, 33.427891, 40.731754>,  <32.907692, 33.596443, 40.849384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250843, 33.427891, 40.731754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377087, 0.127481, 0.917363,
		-0.349071, -0.897878, 0.268261,
		0.857878, -0.421383, -0.294078,
		33.508205, 33.301476, 40.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172047, 33.342682, 41.462921>,  <32.907692, 33.596443, 40.849384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172047, 33.342682, 41.462921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505985, 33.325340, 41.243416>,  <33.706348, 33.314934, 41.111713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505985, 33.325340, 41.243416>,  <33.172047, 33.342682, 41.462921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505985, 33.325340, 41.243416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550316, 0.089899, 0.830102,
		0.013339, -0.995006, 0.098914,
		0.834850, -0.043361, -0.548768,
		33.756439, 33.312332, 41.078785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691513, 32.824669, 41.800907>,  <33.172047, 33.342682, 41.462921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691513, 32.824669, 41.800907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892918, 33.066540, 41.554058>,  <34.013760, 33.211662, 41.405949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892918, 33.066540, 41.554058>,  <33.691513, 32.824669, 41.800907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892918, 33.066540, 41.554058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650163, 0.205224, 0.731554,
		0.569000, -0.769580, -0.289803,
		0.503516, 0.604673, -0.617125,
		34.043972, 33.247940, 41.368919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328358, 32.525761, 41.734333>,  <33.691513, 32.824669, 41.800907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328358, 32.525761, 41.734333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304291, 32.923157, 41.695641>,  <34.289852, 33.161594, 41.672424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304291, 32.923157, 41.695641>,  <34.328358, 32.525761, 41.734333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304291, 32.923157, 41.695641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480686, 0.113771, 0.869481,
		0.874826, 0.005815, -0.484402,
		-0.060167, 0.993490, -0.096735,
		34.286240, 33.221203, 41.666618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948296, 32.787140, 41.901001>,  <34.328358, 32.525761, 41.734333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948296, 32.787140, 41.901001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678036, 33.066029, 41.996815>,  <34.515881, 33.233360, 42.054302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678036, 33.066029, 41.996815>,  <34.948296, 32.787140, 41.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678036, 33.066029, 41.996815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443971, 0.125421, 0.887220,
		0.588547, 0.705798, -0.394288,
		-0.675650, 0.697223, 0.239538,
		34.475342, 33.275196, 42.068676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286747, 33.262741, 42.332230>,  <34.948296, 32.787140, 41.901001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286747, 33.262741, 42.332230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900665, 33.318855, 42.420509>,  <34.669018, 33.352524, 42.473476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900665, 33.318855, 42.420509>,  <35.286747, 33.262741, 42.332230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900665, 33.318855, 42.420509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253013, 0.287536, 0.923747,
		0.066127, 0.947441, -0.313023,
		-0.965200, 0.140284, 0.220701,
		34.611107, 33.360939, 42.486721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260616, 33.821602, 42.620182>,  <35.286747, 33.262741, 42.332230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260616, 33.821602, 42.620182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943665, 33.610859, 42.743179>,  <34.753494, 33.484413, 42.816978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943665, 33.610859, 42.743179>,  <35.260616, 33.821602, 42.620182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943665, 33.610859, 42.743179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205472, 0.244111, 0.947729,
		-0.574385, 0.814142, -0.085173,
		-0.792378, -0.526860, 0.307498,
		34.705952, 33.452801, 42.835430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079311, 34.168140, 43.227127>,  <35.260616, 33.821602, 42.620182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079311, 34.168140, 43.227127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868622, 33.831413, 43.274296>,  <34.742207, 33.629379, 43.302597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868622, 33.831413, 43.274296>,  <35.079311, 34.168140, 43.227127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868622, 33.831413, 43.274296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037853, 0.161813, 0.986095,
		-0.849191, 0.514939, -0.117096,
		-0.526727, -0.841816, 0.117919,
		34.710606, 33.578869, 43.309669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667286, 34.347134, 43.805141>,  <35.079311, 34.168140, 43.227127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667286, 34.347134, 43.805141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620144, 33.951557, 43.769131>,  <34.591858, 33.714211, 43.747524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620144, 33.951557, 43.769131>,  <34.667286, 34.347134, 43.805141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620144, 33.951557, 43.769131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153062, -0.071481, 0.985628,
		-0.981164, 0.129941, -0.142945,
		-0.117856, -0.988941, -0.090024,
		34.584785, 33.654873, 43.742123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052101, 34.184689, 44.107155>,  <34.667286, 34.347134, 43.805141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052101, 34.184689, 44.107155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262985, 33.844875, 44.099754>,  <34.389515, 33.640987, 44.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262985, 33.844875, 44.099754>,  <34.052101, 34.184689, 44.107155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262985, 33.844875, 44.099754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172068, -0.128055, 0.976727,
		-0.832128, -0.511761, -0.213689,
		0.527215, -0.849531, -0.018500,
		34.421150, 33.590015, 44.094204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669109, 33.611198, 44.319328>,  <34.052101, 34.184689, 44.107155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669109, 33.611198, 44.319328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058723, 33.546257, 44.382435>,  <34.292492, 33.507294, 44.420300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058723, 33.546257, 44.382435>,  <33.669109, 33.611198, 44.319328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058723, 33.546257, 44.382435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198790, -0.280016, 0.939188,
		-0.108300, -0.946168, -0.305020,
		0.974040, -0.162349, 0.157763,
		34.350937, 33.497551, 44.429764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663597, 33.109463, 44.875252>,  <33.669109, 33.611198, 44.319328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663597, 33.109463, 44.875252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040173, 33.244324, 44.877045>,  <34.266117, 33.325241, 44.878120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040173, 33.244324, 44.877045>,  <33.663597, 33.109463, 44.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040173, 33.244324, 44.877045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044819, -0.138301, 0.989375,
		0.334192, -0.931236, -0.145313,
		0.941439, 0.337154, 0.004482,
		34.322605, 33.345470, 44.878387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886864, 32.748394, 45.489780>,  <33.663597, 33.109463, 44.875252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886864, 32.748394, 45.489780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193264, 32.990891, 45.404259>,  <34.377106, 33.136387, 45.352947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193264, 32.990891, 45.404259>,  <33.886864, 32.748394, 45.489780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193264, 32.990891, 45.404259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320948, -0.072497, 0.944318,
		0.556985, -0.791969, -0.250105,
		0.766003, 0.606241, -0.213802,
		34.423065, 33.172764, 45.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477749, 32.469624, 45.752346>,  <33.886864, 32.748394, 45.489780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477749, 32.469624, 45.752346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547081, 32.863407, 45.740997>,  <34.588680, 33.099678, 45.734188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547081, 32.863407, 45.740997>,  <34.477749, 32.469624, 45.752346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547081, 32.863407, 45.740997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372727, -0.038905, 0.927125,
		0.911608, -0.171277, -0.373677,
		0.173333, 0.984455, -0.028374,
		34.599079, 33.158745, 45.732487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916595, 32.570751, 46.254696>,  <34.477749, 32.469624, 45.752346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916595, 32.570751, 46.254696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865734, 32.961460, 46.185699>,  <34.835217, 33.195885, 46.144302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865734, 32.961460, 46.185699>,  <34.916595, 32.570751, 46.254696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865734, 32.961460, 46.185699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321574, 0.205109, 0.924403,
		0.938308, 0.062074, -0.340184,
		-0.127156, 0.976769, -0.172494,
		34.827587, 33.254490, 46.133953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499664, 32.924042, 46.594948>,  <34.916595, 32.570751, 46.254696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499664, 32.924042, 46.594948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185879, 33.169685, 46.560360>,  <34.997608, 33.317074, 46.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185879, 33.169685, 46.560360>,  <35.499664, 32.924042, 46.594948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185879, 33.169685, 46.560360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081620, 0.240453, 0.967223,
		0.614777, 0.751697, -0.238751,
		-0.784467, 0.614113, -0.086472,
		34.950539, 33.353920, 46.534420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723572, 33.467136, 46.903278>,  <35.499664, 32.924042, 46.594948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723572, 33.467136, 46.903278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327446, 33.522495, 46.898884>,  <35.089771, 33.555710, 46.896248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327446, 33.522495, 46.898884>,  <35.723572, 33.467136, 46.903278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327446, 33.522495, 46.898884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042865, 0.380087, 0.923957,
		0.132050, 0.914538, -0.382338,
		-0.990316, 0.138398, -0.010989,
		35.030350, 33.564014, 46.895588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556694, 34.160217, 47.193714>,  <35.723572, 33.467136, 46.903278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556694, 34.160217, 47.193714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194912, 33.991028, 47.215794>,  <34.977840, 33.889515, 47.229042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194912, 33.991028, 47.215794>,  <35.556694, 34.160217, 47.193714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194912, 33.991028, 47.215794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149979, 0.436468, 0.887131,
		-0.399324, 0.794096, -0.458205,
		-0.904459, -0.422974, 0.055195,
		34.923573, 33.864136, 47.232353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092510, 34.735588, 47.354107>,  <35.556694, 34.160217, 47.193714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092510, 34.735588, 47.354107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909130, 34.393345, 47.450245>,  <34.799103, 34.188000, 47.507927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909130, 34.393345, 47.450245>,  <35.092510, 34.735588, 47.354107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909130, 34.393345, 47.450245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153070, 0.342414, 0.926996,
		-0.875438, 0.388195, -0.287948,
		-0.458452, -0.855604, 0.240341,
		34.771595, 34.136665, 47.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576336, 34.871532, 47.857883>,  <35.092510, 34.735588, 47.354107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576336, 34.871532, 47.857883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622780, 34.476719, 47.902218>,  <34.650646, 34.239830, 47.928818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622780, 34.476719, 47.902218>,  <34.576336, 34.871532, 47.857883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622780, 34.476719, 47.902218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030678, 0.107976, 0.993680,
		-0.992763, -0.118772, -0.017744,
		0.116105, -0.987033, 0.110838,
		34.657612, 34.180611, 47.935471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937897, 34.778736, 48.321693>,  <34.576336, 34.871532, 47.857883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937897, 34.778736, 48.321693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225330, 34.503048, 48.358822>,  <34.397789, 34.337635, 48.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225330, 34.503048, 48.358822>,  <33.937897, 34.778736, 48.321693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225330, 34.503048, 48.358822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009312, 0.123929, 0.992247,
		-0.695380, -0.713876, 0.082635,
		0.718582, -0.689219, 0.092825,
		34.440907, 34.296284, 48.386669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762077, 34.326454, 48.904800>,  <33.937897, 34.778736, 48.321693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762077, 34.326454, 48.904800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156502, 34.307362, 48.841053>,  <34.393158, 34.295906, 48.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156502, 34.307362, 48.841053>,  <33.762077, 34.326454, 48.904800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156502, 34.307362, 48.841053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164609, 0.141312, 0.976184,
		-0.024072, -0.988814, 0.147200,
		0.986065, -0.047729, -0.159366,
		34.452320, 34.293045, 48.793243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009403, 33.870712, 49.441303>,  <33.762077, 34.326454, 48.904800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009403, 33.870712, 49.441303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347420, 34.060352, 49.342400>,  <34.550228, 34.174137, 49.283058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347420, 34.060352, 49.342400>,  <34.009403, 33.870712, 49.441303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347420, 34.060352, 49.342400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214943, 0.122218, 0.968949,
		0.489598, -0.871948, 0.001375,
		0.845041, 0.474100, -0.247256,
		34.600933, 34.202583, 49.268223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638504, 33.503471, 49.743721>,  <34.009403, 33.870712, 49.441303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638504, 33.503471, 49.743721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722107, 33.891880, 49.697350>,  <34.772270, 34.124924, 49.669529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722107, 33.891880, 49.697350>,  <34.638504, 33.503471, 49.743721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722107, 33.891880, 49.697350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249502, 0.061672, 0.966409,
		0.945550, -0.230910, -0.229381,
		0.209007, 0.971019, -0.115926,
		34.784809, 34.183186, 49.662571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180141, 33.556240, 50.117744>,  <34.638504, 33.503471, 49.743721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180141, 33.556240, 50.117744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037941, 33.929455, 50.095589>,  <34.952621, 34.153381, 50.082294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037941, 33.929455, 50.095589>,  <35.180141, 33.556240, 50.117744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037941, 33.929455, 50.095589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207890, 0.136712, 0.968551,
		0.911263, 0.332805, -0.242569,
		-0.355501, 0.933033, -0.055394,
		34.931290, 34.209366, 50.078972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704552, 33.953911, 50.444061>,  <35.180141, 33.556240, 50.117744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704552, 33.953911, 50.444061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370640, 34.174118, 50.447533>,  <35.170292, 34.306240, 50.449615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370640, 34.174118, 50.447533>,  <35.704552, 33.953911, 50.444061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370640, 34.174118, 50.447533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132068, 0.184907, 0.973842,
		0.534510, 0.814090, -0.227062,
		-0.834780, 0.550515, 0.008681,
		35.120205, 34.339272, 50.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880623, 34.591248, 50.804745>,  <35.704552, 33.953911, 50.444061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880623, 34.591248, 50.804745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490368, 34.506966, 50.829205>,  <35.256214, 34.456394, 50.843880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490368, 34.506966, 50.829205>,  <35.880623, 34.591248, 50.804745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490368, 34.506966, 50.829205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032942, 0.134877, 0.990315,
		-0.216916, 0.968199, -0.124649,
		-0.975634, -0.210709, 0.061151,
		35.197678, 34.443752, 50.847549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700317, 34.822559, 51.356850>,  <35.880623, 34.591248, 50.804745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700317, 34.822559, 51.356850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344292, 34.647446, 51.306042>,  <35.130676, 34.542377, 51.275558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344292, 34.647446, 51.306042>,  <35.700317, 34.822559, 51.356850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344292, 34.647446, 51.306042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197548, 0.119337, 0.973002,
		-0.410803, 0.891127, -0.192700,
		-0.890065, -0.437780, -0.127016,
		35.077271, 34.516113, 51.267937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236340, 35.268337, 51.798122>,  <35.700317, 34.822559, 51.356850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236340, 35.268337, 51.798122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023392, 34.941502, 51.709614>,  <34.895622, 34.745399, 51.656509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023392, 34.941502, 51.709614>,  <35.236340, 35.268337, 51.798122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023392, 34.941502, 51.709614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414815, 0.023952, 0.909590,
		-0.737913, 0.576020, -0.351690,
		-0.532366, -0.817085, -0.221268,
		34.863682, 34.696377, 51.643234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542599, 35.385689, 51.926624>,  <35.236340, 35.268337, 51.798122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542599, 35.385689, 51.926624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569046, 34.987625, 51.955708>,  <34.584915, 34.748787, 51.973156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569046, 34.987625, 51.955708>,  <34.542599, 35.385689, 51.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569046, 34.987625, 51.955708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526779, 0.027072, 0.849571,
		-0.847427, -0.094473, -0.522439,
		0.066118, -0.995159, 0.072708,
		34.588882, 34.689075, 51.977520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873173, 35.174065, 52.218750>,  <34.542599, 35.385689, 51.926624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873173, 35.174065, 52.218750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119045, 34.866253, 52.288013>,  <34.266571, 34.681564, 52.329571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119045, 34.866253, 52.288013>,  <33.873173, 35.174065, 52.218750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119045, 34.866253, 52.288013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476896, -0.187711, 0.858682,
		-0.628280, -0.610396, -0.482370,
		0.614683, -0.769533, 0.173160,
		34.303452, 34.635395, 52.339962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522827, 34.520191, 52.357422>,  <33.873173, 35.174065, 52.218750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522827, 34.520191, 52.357422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874454, 34.525848, 52.548019>,  <34.085430, 34.529243, 52.662376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874454, 34.525848, 52.548019>,  <33.522827, 34.520191, 52.357422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874454, 34.525848, 52.548019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453113, -0.285744, 0.844416,
		0.148100, -0.958201, -0.244778,
		0.879065, 0.014146, 0.476492,
		34.138176, 34.530090, 52.690968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713120, 33.795910, 52.644897>,  <33.522827, 34.520191, 52.357422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713120, 33.795910, 52.644897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859524, 34.085255, 52.879089>,  <33.947369, 34.258862, 53.019604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859524, 34.085255, 52.879089>,  <33.713120, 33.795910, 52.644897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859524, 34.085255, 52.879089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543240, -0.344739, 0.765536,
		0.755595, -0.598252, 0.266779,
		0.366014, 0.723360, 0.585477,
		33.969330, 34.302261, 53.054733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921703, 33.475399, 53.308170>,  <33.713120, 33.795910, 52.644897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921703, 33.475399, 53.308170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920532, 33.869991, 53.373714>,  <33.919830, 34.106747, 53.413040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920532, 33.869991, 53.373714>,  <33.921703, 33.475399, 53.308170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920532, 33.869991, 53.373714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102153, -0.163295, 0.981274,
		0.994764, -0.013865, 0.101249,
		-0.002928, 0.986480, 0.163856,
		33.919655, 34.165936, 53.422871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012924, 33.534679, 53.988155>,  <33.921703, 33.475399, 53.308170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012924, 33.534679, 53.988155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999599, 33.927593, 53.914391>,  <33.991604, 34.163342, 53.870132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999599, 33.927593, 53.914391>,  <34.012924, 33.534679, 53.988155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999599, 33.927593, 53.914391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143996, 0.187307, 0.971690,
		0.989017, 0.005816, -0.147685,
		-0.033313, 0.982284, -0.184412,
		33.989605, 34.222279, 53.859066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612793, 33.898167, 54.303185>,  <34.012924, 33.534679, 53.988155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612793, 33.898167, 54.303185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276962, 34.115402, 54.298031>,  <34.075462, 34.245743, 54.294937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276962, 34.115402, 54.298031>,  <34.612793, 33.898167, 54.303185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276962, 34.115402, 54.298031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083577, 0.152571, 0.984752,
		0.536773, 0.825698, -0.173485,
		-0.839577, 0.543088, -0.012886,
		34.025089, 34.278328, 54.294167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305965, 33.581104, 54.785507>,  <34.612793, 33.898167, 54.303185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305965, 33.581104, 54.785507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674606, 33.651871, 54.923695>,  <35.895790, 33.694328, 55.006607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674606, 33.651871, 54.923695>,  <35.305965, 33.581104, 54.785507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674606, 33.651871, 54.923695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374946, -0.635851, -0.674618,
		0.100320, 0.751263, -0.652334,
		0.921603, 0.176912, 0.345471,
		35.951088, 33.704945, 55.027336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803562, 33.840496, 54.200394>,  <35.305965, 33.581104, 54.785507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803562, 33.840496, 54.200394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990746, 33.647892, 54.496819>,  <36.103054, 33.532330, 54.674671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990746, 33.647892, 54.496819>,  <35.803562, 33.840496, 54.200394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990746, 33.647892, 54.496819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190130, -0.764050, -0.616505,
		0.863057, 0.429395, -0.265993,
		0.467956, -0.481506, 0.741059,
		36.131134, 33.503441, 54.719135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508099, 33.687222, 54.070004>,  <35.803562, 33.840496, 54.200394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508099, 33.687222, 54.070004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344261, 33.415955, 54.314075>,  <36.245956, 33.253193, 54.460518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344261, 33.415955, 54.314075>,  <36.508099, 33.687222, 54.070004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344261, 33.415955, 54.314075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213307, -0.721515, -0.658723,
		0.886979, -0.139655, 0.440188,
		-0.409596, -0.678169, 0.610179,
		36.221382, 33.212505, 54.497128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076431, 33.340260, 54.021194>,  <36.508099, 33.687222, 54.070004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076431, 33.340260, 54.021194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708206, 33.184029, 54.022438>,  <36.487270, 33.090290, 54.023186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708206, 33.184029, 54.022438>,  <37.076431, 33.340260, 54.021194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708206, 33.184029, 54.022438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258998, -0.616363, -0.743651,
		0.292373, -0.683773, 0.668561,
		-0.920564, -0.390579, 0.003112,
		36.432037, 33.066856, 54.023373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193897, 32.686573, 53.773533>,  <37.076431, 33.340260, 54.021194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193897, 32.686573, 53.773533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806324, 32.772427, 53.724373>,  <36.573780, 32.823936, 53.694878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806324, 32.772427, 53.724373>,  <37.193897, 32.686573, 53.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806324, 32.772427, 53.724373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024624, -0.410727, -0.911426,
		-0.246096, -0.886137, 0.392681,
		-0.968933, 0.214629, -0.122899,
		36.515644, 32.836815, 53.687504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803368, 32.196922, 53.295181>,  <37.193897, 32.686573, 53.773533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803368, 32.196922, 53.295181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533062, 32.490917, 53.317593>,  <36.370876, 32.667313, 53.331039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533062, 32.490917, 53.317593>,  <36.803368, 32.196922, 53.295181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533062, 32.490917, 53.317593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254580, -0.161389, -0.953490,
		-0.691757, -0.658599, 0.296173,
		-0.675767, 0.734984, 0.056025,
		36.330334, 32.711411, 53.334400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116558, 31.897696, 53.122902>,  <36.803368, 32.196922, 53.295181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116558, 31.897696, 53.122902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135220, 32.289505, 53.044563>,  <36.146416, 32.524590, 52.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135220, 32.289505, 53.044563>,  <36.116558, 31.897696, 53.122902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135220, 32.289505, 53.044563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240936, -0.179240, -0.953846,
		-0.969419, 0.091690, 0.227640,
		0.046655, 0.979524, -0.195850,
		36.149216, 32.583363, 52.985809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505062, 32.128841, 52.790379>,  <36.116558, 31.897696, 53.122902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505062, 32.128841, 52.790379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770016, 32.408199, 52.681946>,  <35.928989, 32.575813, 52.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770016, 32.408199, 52.681946>,  <35.505062, 32.128841, 52.790379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770016, 32.408199, 52.681946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149404, -0.231430, -0.961311,
		-0.734112, 0.677261, -0.048953,
		0.662388, 0.698396, -0.271081,
		35.968731, 32.617718, 52.600620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198475, 32.471977, 52.222977>,  <35.505062, 32.128841, 52.790379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198475, 32.471977, 52.222977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 32.580349, 52.205605>,  <35.813911, 32.645370, 52.195183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 32.580349, 52.205605>,  <35.198475, 32.471977, 52.222977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583122, 32.580349, 52.205605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031568, -0.047992, -0.998349,
		-0.272563, 0.961403, -0.037597,
		0.961620, 0.270926, -0.043430,
		35.871609, 32.661625, 52.192577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229351, 32.750828, 51.519390>,  <35.198475, 32.471977, 52.222977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229351, 32.750828, 51.519390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620266, 32.730072, 51.601570>,  <35.854816, 32.717617, 51.650879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620266, 32.730072, 51.601570>,  <35.229351, 32.750828, 51.519390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620266, 32.730072, 51.601570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191109, -0.202994, -0.960349,
		0.091540, 0.977804, -0.188467,
		0.977291, -0.051892, 0.205449,
		35.913452, 32.714504, 51.663204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574654, 33.194527, 51.044949>,  <35.229351, 32.750828, 51.519390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574654, 33.194527, 51.044949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820168, 32.896542, 51.149483>,  <35.967476, 32.717751, 51.212204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820168, 32.896542, 51.149483>,  <35.574654, 33.194527, 51.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820168, 32.896542, 51.149483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110354, -0.246817, -0.962758,
		0.781720, 0.619769, -0.069284,
		0.613788, -0.744962, 0.261336,
		36.004303, 32.673054, 51.227882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236137, 33.274742, 50.622707>,  <35.574654, 33.194527, 51.044949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236137, 33.274742, 50.622707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197807, 32.896614, 50.747406>,  <36.174809, 32.669735, 50.822224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197807, 32.896614, 50.747406>,  <36.236137, 33.274742, 50.622707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197807, 32.896614, 50.747406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136011, -0.322680, -0.936685,
		0.986062, -0.047357, 0.159495,
		-0.095824, -0.945322, 0.311742,
		36.169060, 32.613018, 50.840927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708504, 32.915817, 50.194756>,  <36.236137, 33.274742, 50.622707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708504, 32.915817, 50.194756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478306, 32.619442, 50.333218>,  <36.340187, 32.441616, 50.416294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478306, 32.619442, 50.333218>,  <36.708504, 32.915817, 50.194756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478306, 32.619442, 50.333218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177972, -0.526599, -0.831276,
		0.798209, -0.416784, 0.434918,
		-0.575490, -0.740935, 0.346159,
		36.305660, 32.397160, 50.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149460, 32.278355, 50.100471>,  <36.708504, 32.915817, 50.194756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149460, 32.278355, 50.100471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771320, 32.149635, 50.121517>,  <36.544437, 32.072403, 50.134144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771320, 32.149635, 50.121517>,  <37.149460, 32.278355, 50.100471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771320, 32.149635, 50.121517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097501, -0.432954, -0.896128,
		0.311150, -0.842021, 0.440666,
		-0.945346, -0.321795, 0.052616,
		36.487717, 32.053097, 50.137302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160698, 31.604792, 49.837269>,  <37.149460, 32.278355, 50.100471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160698, 31.604792, 49.837269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765511, 31.666492, 49.841877>,  <36.528400, 31.703512, 49.844643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765511, 31.666492, 49.841877>,  <37.160698, 31.604792, 49.837269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765511, 31.666492, 49.841877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076083, -0.419735, -0.904452,
		-0.134676, -0.894443, 0.426419,
		-0.987965, 0.154251, 0.011524,
		36.469120, 31.712769, 49.845333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787251, 30.975431, 49.589401>,  <37.160698, 31.604792, 49.837269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787251, 30.975431, 49.589401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574017, 31.306967, 49.521469>,  <36.446075, 31.505888, 49.480709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574017, 31.306967, 49.521469>,  <36.787251, 30.975431, 49.589401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574017, 31.306967, 49.521469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104878, -0.263922, -0.958825,
		-0.839534, -0.493327, 0.227621,
		-0.533088, 0.828839, -0.169833,
		36.414089, 31.555618, 49.470520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296753, 30.700745, 49.110729>,  <36.787251, 30.975431, 49.589401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296753, 30.700745, 49.110729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285137, 31.099684, 49.084045>,  <36.278168, 31.339048, 49.068035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285137, 31.099684, 49.084045>,  <36.296753, 30.700745, 49.110729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285137, 31.099684, 49.084045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167270, -0.070643, -0.983377,
		-0.985483, -0.017394, 0.168878,
		-0.029035, 0.997350, -0.066708,
		36.276428, 31.398890, 49.064034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777561, 30.775415, 48.795494>,  <36.296753, 30.700745, 49.110729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777561, 30.775415, 48.795494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989838, 31.106319, 48.721725>,  <36.117203, 31.304863, 48.677464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989838, 31.106319, 48.721725>,  <35.777561, 30.775415, 48.795494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989838, 31.106319, 48.721725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122973, -0.140129, -0.982467,
		-0.838599, 0.544061, 0.027366,
		0.530687, 0.827261, -0.184417,
		36.149044, 31.354498, 48.666401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575401, 30.845825, 48.182575>,  <35.777561, 30.775415, 48.795494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575401, 30.845825, 48.182575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848820, 31.132236, 48.239235>,  <36.012871, 31.304083, 48.273232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848820, 31.132236, 48.239235>,  <35.575401, 30.845825, 48.182575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848820, 31.132236, 48.239235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127056, 0.307832, -0.942919,
		-0.718764, 0.626530, 0.301394,
		0.683546, 0.716030, 0.141654,
		36.053883, 31.347046, 48.281731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234619, 31.468035, 48.007336>,  <35.575401, 30.845825, 48.182575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234619, 31.468035, 48.007336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625423, 31.469578, 47.922077>,  <35.859905, 31.470505, 47.870922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625423, 31.469578, 47.922077>,  <35.234619, 31.468035, 48.007336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625423, 31.469578, 47.922077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212862, -0.036910, -0.976385,
		-0.011636, 0.999311, -0.035240,
		0.977013, 0.003860, -0.213145,
		35.918526, 31.470736, 47.858135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309059, 31.923510, 47.419865>,  <35.234619, 31.468035, 48.007336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309059, 31.923510, 47.419865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617001, 31.668238, 47.422791>,  <35.801765, 31.515074, 47.424545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617001, 31.668238, 47.422791>,  <35.309059, 31.923510, 47.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617001, 31.668238, 47.422791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170220, -0.216358, -0.961361,
		0.615103, 0.738862, -0.275194,
		0.769853, -0.638179, 0.007313,
		35.847958, 31.476784, 47.424984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622692, 32.086250, 46.828754>,  <35.309059, 31.923510, 47.419865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622692, 32.086250, 46.828754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752430, 31.718962, 46.919674>,  <35.830273, 31.498589, 46.974228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752430, 31.718962, 46.919674>,  <35.622692, 32.086250, 46.828754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752430, 31.718962, 46.919674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080062, -0.266078, -0.960621,
		0.942544, 0.293375, -0.159816,
		0.324345, -0.918223, 0.227302,
		35.849735, 31.443495, 46.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065262, 31.854609, 46.183411>,  <35.622692, 32.086250, 46.828754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065262, 31.854609, 46.183411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939674, 31.536831, 46.391365>,  <35.864323, 31.346165, 46.516140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939674, 31.536831, 46.391365>,  <36.065262, 31.854609, 46.183411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939674, 31.536831, 46.391365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231291, -0.467081, -0.853428,
		0.920832, -0.388192, -0.037101,
		-0.313965, -0.794445, 0.519888,
		35.845486, 31.298498, 46.547333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401096, 31.321901, 45.722466>,  <36.065262, 31.854609, 46.183411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401096, 31.321901, 45.722466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126373, 31.149149, 45.956314>,  <35.961540, 31.045498, 46.096622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126373, 31.149149, 45.956314>,  <36.401096, 31.321901, 45.722466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126373, 31.149149, 45.956314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240025, -0.624444, -0.743275,
		0.686068, -0.650808, 0.325208,
		-0.686803, -0.431879, 0.584621,
		35.920334, 31.019585, 46.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472874, 30.492754, 45.642086>,  <36.401096, 31.321901, 45.722466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472874, 30.492754, 45.642086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102921, 30.603626, 45.746212>,  <35.880951, 30.670151, 45.808689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102921, 30.603626, 45.746212>,  <36.472874, 30.492754, 45.642086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102921, 30.603626, 45.746212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373079, -0.529074, -0.762164,
		-0.073532, -0.802029, 0.592741,
		-0.924881, 0.277183, 0.260316,
		35.825455, 30.686781, 45.824306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115974, 29.862133, 45.723324>,  <36.472874, 30.492754, 45.642086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115974, 29.862133, 45.723324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814808, 30.121140, 45.676258>,  <35.634109, 30.276545, 45.648018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814808, 30.121140, 45.676258>,  <36.115974, 29.862133, 45.723324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814808, 30.121140, 45.676258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500757, -0.679664, -0.536003,
		-0.427043, -0.344643, 0.835976,
		-0.752912, 0.647517, -0.117663,
		35.588936, 30.315395, 45.640961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626778, 29.503540, 45.470623>,  <36.115974, 29.862133, 45.723324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626778, 29.503540, 45.470623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434490, 29.849760, 45.414433>,  <35.319118, 30.057493, 45.380718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434490, 29.849760, 45.414433>,  <35.626778, 29.503540, 45.470623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434490, 29.849760, 45.414433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628144, -0.451687, -0.633572,
		-0.611839, -0.216332, 0.760824,
		-0.480716, 0.865551, -0.140472,
		35.290276, 30.109425, 45.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914124, 29.353096, 45.476368>,  <35.626778, 29.503540, 45.470623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914124, 29.353096, 45.476368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949997, 29.696306, 45.274078>,  <34.971523, 29.902231, 45.152706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949997, 29.696306, 45.274078>,  <34.914124, 29.353096, 45.476368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949997, 29.696306, 45.274078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575497, -0.369773, -0.729432,
		-0.812871, 0.356460, 0.460626,
		0.089687, 0.858023, -0.505719,
		34.976902, 29.953712, 45.122364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196175, 29.505186, 45.281364>,  <34.914124, 29.353096, 45.476368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196175, 29.505186, 45.281364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461258, 29.675009, 45.034603>,  <34.620308, 29.776901, 44.886547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461258, 29.675009, 45.034603>,  <34.196175, 29.505186, 45.281364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461258, 29.675009, 45.034603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525689, -0.322961, -0.786986,
		-0.533354, 0.845842, 0.009155,
		0.662709, 0.424555, -0.616903,
		34.660072, 29.802376, 44.849533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685028, 29.711910, 44.734436>,  <34.196175, 29.505186, 45.281364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685028, 29.711910, 44.734436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053448, 29.743034, 44.581799>,  <34.274498, 29.761709, 44.490215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053448, 29.743034, 44.581799>,  <33.685028, 29.711910, 44.734436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053448, 29.743034, 44.581799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370078, -0.130303, -0.919817,
		-0.121295, 0.988416, -0.091219,
		0.921048, 0.077811, -0.381597,
		34.329762, 29.766378, 44.467319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632584, 30.135986, 44.159100>,  <33.685028, 29.711910, 44.734436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632584, 30.135986, 44.159100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968708, 29.934555, 44.078815>,  <34.170383, 29.813696, 44.030647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968708, 29.934555, 44.078815>,  <33.632584, 30.135986, 44.159100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968708, 29.934555, 44.078815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329989, -0.181424, -0.926387,
		0.430096, 0.844686, -0.318628,
		0.840313, -0.503579, -0.200707,
		34.220802, 29.783482, 44.018604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800816, 30.351816, 43.560455>,  <33.632584, 30.135986, 44.159100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800816, 30.351816, 43.560455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025826, 30.022425, 43.589985>,  <34.160831, 29.824789, 43.607704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025826, 30.022425, 43.589985>,  <33.800816, 30.351816, 43.560455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025826, 30.022425, 43.589985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298503, -0.285548, -0.910691,
		0.771017, 0.490247, -0.406438,
		0.562521, -0.823481, 0.073822,
		34.194580, 29.775381, 43.612133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163605, 30.363552, 42.911716>,  <33.800816, 30.351816, 43.560455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163605, 30.363552, 42.911716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132027, 29.987160, 43.043365>,  <34.113079, 29.761324, 43.122356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132027, 29.987160, 43.043365>,  <34.163605, 30.363552, 42.911716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132027, 29.987160, 43.043365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302356, -0.292001, -0.907368,
		0.949920, -0.171144, -0.261459,
		-0.078944, -0.940981, 0.329124,
		34.108345, 29.704865, 43.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461678, 29.978456, 42.432590>,  <34.163605, 30.363552, 42.911716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461678, 29.978456, 42.432590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256474, 29.709328, 42.645805>,  <34.133350, 29.547852, 42.773735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256474, 29.709328, 42.645805>,  <34.461678, 29.978456, 42.432590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256474, 29.709328, 42.645805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285125, -0.452158, -0.845137,
		0.809645, -0.585547, 0.040123,
		-0.513009, -0.672821, 0.533041,
		34.102570, 29.507481, 42.805717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769791, 29.354097, 42.272179>,  <34.461678, 29.978456, 42.432590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769791, 29.354097, 42.272179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392460, 29.282482, 42.383949>,  <34.166061, 29.239513, 42.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392460, 29.282482, 42.383949>,  <34.769791, 29.354097, 42.272179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392460, 29.282482, 42.383949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213024, -0.318964, -0.923516,
		0.254475, -0.930702, 0.262747,
		-0.943326, -0.179040, 0.279430,
		34.109463, 29.228769, 42.467777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424965, 28.806578, 41.929195>,  <34.769791, 29.354097, 42.272179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424965, 28.806578, 41.929195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077011, 28.961962, 42.050789>,  <33.868240, 29.055191, 42.123745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077011, 28.961962, 42.050789>,  <34.424965, 28.806578, 41.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077011, 28.961962, 42.050789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382854, -0.143160, -0.912649,
		-0.311010, -0.910277, 0.273256,
		-0.869882, 0.388460, 0.303978,
		33.816048, 29.078499, 42.141983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719044, 28.350922, 41.639027>,  <34.424965, 28.806578, 41.929195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719044, 28.350922, 41.639027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637867, 28.738098, 41.698223>,  <33.589161, 28.970404, 41.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637867, 28.738098, 41.698223>,  <33.719044, 28.350922, 41.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637867, 28.738098, 41.698223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475096, 0.034822, -0.879244,
		-0.856212, -0.248744, 0.452799,
		-0.202939, 0.967943, 0.147992,
		33.576984, 29.028481, 41.742622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028316, 28.441202, 41.426846>,  <33.719044, 28.350922, 41.639027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028316, 28.441202, 41.426846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172733, 28.814201, 41.430710>,  <33.259384, 29.038002, 41.433029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172733, 28.814201, 41.430710>,  <33.028316, 28.441202, 41.426846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172733, 28.814201, 41.430710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539463, 0.217297, -0.813487,
		-0.760676, 0.288490, 0.581502,
		0.361042, 0.932500, 0.009662,
		33.281044, 29.093952, 41.433609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521759, 28.775276, 41.130917>,  <33.028316, 28.441202, 41.426846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521759, 28.775276, 41.130917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818878, 29.042688, 41.116436>,  <32.997150, 29.203136, 41.107746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818878, 29.042688, 41.116436>,  <32.521759, 28.775276, 41.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818878, 29.042688, 41.116436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413481, 0.415542, -0.810160,
		-0.526573, 0.616757, 0.585090,
		0.742802, 0.668532, -0.036204,
		33.041718, 29.243248, 41.105576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218212, 29.494280, 41.174213>,  <32.521759, 28.775276, 41.130917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218212, 29.494280, 41.174213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571709, 29.489168, 40.987091>,  <32.783806, 29.486101, 40.874817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571709, 29.489168, 40.987091>,  <32.218212, 29.494280, 41.174213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571709, 29.489168, 40.987091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408136, 0.468060, -0.783801,
		0.228977, 0.883604, 0.408427,
		0.883739, -0.012779, -0.467806,
		32.836830, 29.485334, 40.846748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184509, 30.131290, 40.775539>,  <32.218212, 29.494280, 41.174213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184509, 30.131290, 40.775539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508526, 29.943691, 40.634758>,  <32.702938, 29.831131, 40.550289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508526, 29.943691, 40.634758>,  <32.184509, 30.131290, 40.775539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508526, 29.943691, 40.634758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166089, 0.392121, -0.904796,
		0.562355, 0.791379, 0.239740,
		0.810044, -0.468998, -0.351951,
		32.751537, 29.802992, 40.529171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602276, 30.635437, 40.402832>,  <32.184509, 30.131290, 40.775539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602276, 30.635437, 40.402832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695526, 30.273638, 40.259983>,  <32.751476, 30.056559, 40.174274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695526, 30.273638, 40.259983>,  <32.602276, 30.635437, 40.402832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695526, 30.273638, 40.259983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121457, 0.337278, -0.933537,
		0.964831, 0.261010, -0.031228,
		0.233130, -0.904498, -0.357118,
		32.765465, 30.002289, 40.152847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908070, 30.871981, 39.661884>,  <32.602276, 30.635437, 40.402832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908070, 30.871981, 39.661884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874496, 30.473583, 39.649513>,  <32.854355, 30.234545, 39.642090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874496, 30.473583, 39.649513>,  <32.908070, 30.871981, 39.661884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874496, 30.473583, 39.649513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095336, 0.022870, -0.995182,
		0.991901, -0.086474, 0.093035,
		-0.083929, -0.995992, -0.030929,
		32.849319, 30.174786, 39.640236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510590, 30.537790, 39.263645>,  <32.908070, 30.871981, 39.661884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510590, 30.537790, 39.263645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195351, 30.291931, 39.250336>,  <33.006207, 30.144415, 39.242348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195351, 30.291931, 39.250336>,  <33.510590, 30.537790, 39.263645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195351, 30.291931, 39.250336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106344, -0.082709, -0.990884,
		0.606293, -0.784453, 0.130547,
		-0.788099, -0.614648, -0.033276,
		32.958920, 30.107536, 39.240353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678017, 29.809380, 39.278019>,  <33.510590, 30.537790, 39.263645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678017, 29.809380, 39.278019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934212, 29.784597, 38.971832>,  <34.087929, 29.769728, 38.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934212, 29.784597, 38.971832>,  <33.678017, 29.809380, 39.278019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934212, 29.784597, 38.971832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749036, 0.270357, 0.604857,
		0.169475, -0.960765, 0.219567,
		0.640486, -0.061956, -0.765466,
		34.126358, 29.766010, 38.742191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311714, 29.412247, 39.589684>,  <33.678017, 29.809380, 39.278019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311714, 29.412247, 39.589684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415680, 29.663157, 39.296024>,  <34.478058, 29.813702, 39.119827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415680, 29.663157, 39.296024>,  <34.311714, 29.412247, 39.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415680, 29.663157, 39.296024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780785, 0.310823, 0.542000,
		0.568173, -0.714084, -0.408980,
		0.259913, 0.627275, -0.734147,
		34.493652, 29.851339, 39.075779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009018, 29.421696, 39.674953>,  <34.311714, 29.412247, 39.589684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009018, 29.421696, 39.674953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923389, 29.711166, 39.412514>,  <34.872013, 29.884850, 39.255051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923389, 29.711166, 39.412514>,  <35.009018, 29.421696, 39.674953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923389, 29.711166, 39.412514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846166, 0.472957, 0.245589,
		0.488034, -0.502596, -0.713597,
		-0.214069, 0.723678, -0.656099,
		34.859169, 29.928270, 39.215683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659775, 29.586439, 39.293655>,  <35.009018, 29.421696, 39.674953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659775, 29.586439, 39.293655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429161, 29.913261, 39.295952>,  <35.290794, 30.109354, 39.297329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429161, 29.913261, 39.295952>,  <35.659775, 29.586439, 39.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429161, 29.913261, 39.295952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754303, 0.529524, 0.388113,
		0.314072, 0.228087, -0.921594,
		-0.576530, 0.817056, 0.005737,
		35.256203, 30.158379, 39.297672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197353, 30.148169, 39.197945>,  <35.659775, 29.586439, 39.293655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197353, 30.148169, 39.197945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862946, 30.338583, 39.307098>,  <35.662300, 30.452831, 39.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862946, 30.338583, 39.307098>,  <36.197353, 30.148169, 39.197945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862946, 30.338583, 39.307098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537432, 0.610118, 0.582171,
		0.110641, 0.633362, -0.765905,
		-0.836018, 0.476034, 0.272885,
		35.612141, 30.481394, 39.388966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401821, 30.858850, 39.246456>,  <36.197353, 30.148169, 39.197945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401821, 30.858850, 39.246456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061367, 30.858416, 39.456432>,  <35.857094, 30.858154, 39.582420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061367, 30.858416, 39.456432>,  <36.401821, 30.858850, 39.246456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061367, 30.858416, 39.456432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437862, 0.550126, 0.711082,
		-0.289559, 0.835081, -0.467756,
		-0.851136, -0.001088, 0.524944,
		35.806026, 30.858089, 39.613914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309258, 31.589359, 39.480255>,  <36.401821, 30.858850, 39.246456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309258, 31.589359, 39.480255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095581, 31.375116, 39.741871>,  <35.967377, 31.246571, 39.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095581, 31.375116, 39.741871>,  <36.309258, 31.589359, 39.480255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095581, 31.375116, 39.741871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371453, 0.546270, 0.750741,
		-0.759386, 0.643981, -0.092857,
		-0.534187, -0.535610, 0.654039,
		35.935326, 31.214434, 39.938084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013649, 32.020458, 39.844162>,  <36.309258, 31.589359, 39.480255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013649, 32.020458, 39.844162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998043, 31.702145, 40.085888>,  <35.988682, 31.511156, 40.230923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998043, 31.702145, 40.085888>,  <36.013649, 32.020458, 39.844162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998043, 31.702145, 40.085888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515333, 0.502124, 0.694481,
		-0.856102, 0.338519, 0.390506,
		-0.039012, -0.795787, 0.604319,
		35.986340, 31.463409, 40.267185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794651, 32.208588, 40.448761>,  <36.013649, 32.020458, 39.844162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794651, 32.208588, 40.448761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988731, 31.872389, 40.545223>,  <36.105179, 31.670671, 40.603100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988731, 31.872389, 40.545223>,  <35.794651, 32.208588, 40.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988731, 31.872389, 40.545223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362651, 0.444381, 0.819152,
		-0.795655, -0.309996, 0.520418,
		0.485198, -0.840493, 0.241154,
		36.134293, 31.620241, 40.617569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771935, 32.272484, 41.161304>,  <35.794651, 32.208588, 40.448761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771935, 32.272484, 41.161304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042351, 31.979933, 41.125381>,  <36.204601, 31.804403, 41.103828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042351, 31.979933, 41.125381>,  <35.771935, 32.272484, 41.161304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042351, 31.979933, 41.125381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374206, 0.235764, 0.896876,
		-0.634780, -0.639926, 0.433070,
		0.676036, -0.731376, -0.089806,
		36.245163, 31.760521, 41.098438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760677, 31.871758, 41.844761>,  <35.771935, 32.272484, 41.161304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760677, 31.871758, 41.844761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100124, 31.807024, 41.643303>,  <36.303791, 31.768185, 41.522427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100124, 31.807024, 41.643303>,  <35.760677, 31.871758, 41.844761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100124, 31.807024, 41.643303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527724, 0.192626, 0.827286,
		-0.036866, -0.967835, 0.248868,
		0.848615, -0.161833, -0.503649,
		36.354710, 31.758474, 41.492207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150311, 31.405821, 42.127640>,  <35.760677, 31.871758, 41.844761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150311, 31.405821, 42.127640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430618, 31.602694, 41.921078>,  <36.598804, 31.720818, 41.797138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430618, 31.602694, 41.921078>,  <36.150311, 31.405821, 42.127640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430618, 31.602694, 41.921078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512528, 0.156169, 0.844350,
		0.496221, -0.856369, -0.142818,
		0.700771, 0.492182, -0.516407,
		36.640850, 31.750349, 41.766155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749592, 31.131222, 42.385162>,  <36.150311, 31.405821, 42.127640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749592, 31.131222, 42.385162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870045, 31.462055, 42.195320>,  <36.942318, 31.660555, 42.081413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870045, 31.462055, 42.195320>,  <36.749592, 31.131222, 42.385162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870045, 31.462055, 42.195320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719910, 0.129205, 0.681936,
		0.625339, -0.547027, -0.556518,
		0.301133, 0.827084, -0.474607,
		36.960384, 31.710180, 42.052937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513054, 31.034449, 42.387016>,  <36.749592, 31.131222, 42.385162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513054, 31.034449, 42.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381695, 31.410583, 42.351425>,  <37.302879, 31.636265, 42.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381695, 31.410583, 42.351425>,  <37.513054, 31.034449, 42.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381695, 31.410583, 42.351425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668467, 0.297934, 0.681459,
		0.667311, 0.164314, -0.726427,
		-0.328401, 0.940338, -0.088976,
		37.283173, 31.692684, 42.324734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150719, 31.451656, 42.455456>,  <37.513054, 31.034449, 42.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150719, 31.451656, 42.455456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822704, 31.661724, 42.546436>,  <37.625896, 31.787764, 42.601025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822704, 31.661724, 42.546436>,  <38.150719, 31.451656, 42.455456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822704, 31.661724, 42.546436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402019, 0.245729, 0.882042,
		0.407328, 0.814749, -0.412635,
		-0.820040, 0.525167, 0.227452,
		37.576691, 31.819275, 42.614674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351402, 32.219406, 42.673183>,  <38.150719, 31.451656, 42.455456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351402, 32.219406, 42.673183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002323, 32.113319, 42.837166>,  <37.792877, 32.049667, 42.935555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002323, 32.113319, 42.837166>,  <38.351402, 32.219406, 42.673183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002323, 32.113319, 42.837166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369515, 0.190078, 0.909576,
		-0.319157, 0.945268, -0.067880,
		-0.872696, -0.265215, 0.409955,
		37.740513, 32.033756, 42.960152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236614, 32.773598, 43.084019>,  <38.351402, 32.219406, 42.673183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236614, 32.773598, 43.084019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018547, 32.471375, 43.229305>,  <37.887707, 32.290039, 43.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018547, 32.471375, 43.229305>,  <38.236614, 32.773598, 43.084019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018547, 32.471375, 43.229305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239439, 0.274881, 0.931187,
		-0.803406, 0.594622, 0.031053,
		-0.545168, -0.755556, 0.363217,
		37.854996, 32.244709, 43.338272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771889, 33.083782, 43.598770>,  <38.236614, 32.773598, 43.084019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771889, 33.083782, 43.598770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 32.691029, 43.674103>,  <37.785107, 32.455376, 43.719303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780151, 32.691029, 43.674103>,  <37.771889, 33.083782, 43.598770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780151, 32.691029, 43.674103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133271, 0.189397, 0.972815,
		-0.990865, 0.005007, 0.134768,
		0.020654, -0.981888, 0.188334,
		37.786346, 32.396461, 43.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347122, 32.965405, 44.168514>,  <37.771889, 33.083782, 43.598770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347122, 32.965405, 44.168514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549068, 32.620281, 44.158081>,  <37.670235, 32.413208, 44.151821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549068, 32.620281, 44.158081>,  <37.347122, 32.965405, 44.168514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549068, 32.620281, 44.158081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090008, -0.082668, 0.992504,
		-0.858494, -0.498732, -0.119395,
		0.504863, -0.862805, -0.026080,
		37.700527, 32.361439, 44.150257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016441, 32.533607, 44.636337>,  <37.347122, 32.965405, 44.168514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016441, 32.533607, 44.636337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362377, 32.340221, 44.582211>,  <37.569939, 32.224190, 44.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362377, 32.340221, 44.582211>,  <37.016441, 32.533607, 44.636337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362377, 32.340221, 44.582211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033628, -0.213131, 0.976445,
		-0.500920, -0.849019, -0.168066,
		0.864840, -0.483469, -0.135313,
		37.621830, 32.195183, 44.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860310, 31.944374, 45.002731>,  <37.016441, 32.533607, 44.636337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860310, 31.944374, 45.002731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247845, 32.040989, 44.980740>,  <37.480366, 32.098957, 44.967545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247845, 32.040989, 44.980740>,  <36.860310, 31.944374, 45.002731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247845, 32.040989, 44.980740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055286, 0.005500, 0.998455,
		0.241465, -0.970376, -0.008025,
		0.968833, 0.241536, -0.054976,
		37.538494, 32.113449, 44.964245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205822, 31.618469, 45.604034>,  <36.860310, 31.944374, 45.002731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205822, 31.618469, 45.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474281, 31.886620, 45.477444>,  <37.635357, 32.047508, 45.401489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474281, 31.886620, 45.477444>,  <37.205822, 31.618469, 45.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474281, 31.886620, 45.477444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259099, 0.187865, 0.947404,
		0.694571, -0.717847, -0.047608,
		0.671147, 0.670374, -0.316480,
		37.675625, 32.087730, 45.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938118, 31.421028, 45.722687>,  <37.205822, 31.618469, 45.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938118, 31.421028, 45.722687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907352, 31.819733, 45.713257>,  <37.888893, 32.058956, 45.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907352, 31.819733, 45.713257>,  <37.938118, 31.421028, 45.722687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907352, 31.819733, 45.713257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202764, 0.038792, 0.978459,
		0.976202, 0.070476, -0.205090,
		-0.076914, 0.996759, -0.023579,
		37.884277, 32.118759, 45.706184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472610, 31.580479, 46.082405>,  <37.938118, 31.421028, 45.722687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472610, 31.580479, 46.082405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238968, 31.904957, 46.071220>,  <38.098782, 32.099644, 46.064510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238968, 31.904957, 46.071220>,  <38.472610, 31.580479, 46.082405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238968, 31.904957, 46.071220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201756, 0.178466, 0.963039,
		0.786201, 0.556878, -0.267907,
		-0.584108, 0.811195, -0.027957,
		38.063736, 32.148315, 46.062832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902702, 32.191784, 46.491940>,  <38.472610, 31.580479, 46.082405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902702, 32.191784, 46.491940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530567, 32.338417, 46.488209>,  <38.307285, 32.426399, 46.485970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530567, 32.338417, 46.488209>,  <38.902702, 32.191784, 46.491940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530567, 32.338417, 46.488209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175038, 0.466278, 0.867148,
		0.322234, 0.805108, -0.497963,
		-0.930337, 0.366587, -0.009326,
		38.251465, 32.448395, 46.485413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962460, 32.877312, 46.807812>,  <38.902702, 32.191784, 46.491940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962460, 32.877312, 46.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574242, 32.781757, 46.820309>,  <38.341312, 32.724426, 46.827808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574242, 32.781757, 46.820309>,  <38.962460, 32.877312, 46.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574242, 32.781757, 46.820309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039368, 0.285190, 0.957662,
		-0.237683, 0.928224, -0.286194,
		-0.970545, -0.238887, 0.031243,
		38.283077, 32.710091, 46.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563644, 33.466396, 46.957558>,  <38.962460, 32.877312, 46.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563644, 33.466396, 46.957558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397835, 33.123425, 47.079529>,  <38.298347, 32.917641, 47.152714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397835, 33.123425, 47.079529>,  <38.563644, 33.466396, 46.957558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397835, 33.123425, 47.079529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015938, 0.328184, 0.944479,
		-0.909897, 0.396373, -0.122376,
		-0.414528, -0.857428, 0.304931,
		38.273476, 32.866196, 47.171009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032497, 33.657448, 47.252735>,  <38.563644, 33.466396, 46.957558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032497, 33.657448, 47.252735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085621, 33.288662, 47.398251>,  <38.117493, 33.067390, 47.485561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085621, 33.288662, 47.398251>,  <38.032497, 33.657448, 47.252735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085621, 33.288662, 47.398251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061727, 0.358634, 0.931435,
		-0.989218, -0.146155, -0.009282,
		0.132805, -0.921966, 0.363789,
		38.125462, 33.012074, 47.507389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449341, 33.615402, 47.691578>,  <38.032497, 33.657448, 47.252735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449341, 33.615402, 47.691578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699207, 33.320736, 47.795200>,  <37.849129, 33.143936, 47.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699207, 33.320736, 47.795200>,  <37.449341, 33.615402, 47.691578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699207, 33.320736, 47.795200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171398, 0.194309, 0.965850,
		-0.761849, -0.647736, -0.004885,
		0.624667, -0.736669, 0.259055,
		37.886608, 33.099735, 47.872917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130360, 33.215942, 48.293648>,  <37.449341, 33.615402, 47.691578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130360, 33.215942, 48.293648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523540, 33.142586, 48.298977>,  <37.759449, 33.098572, 48.302174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523540, 33.142586, 48.298977>,  <37.130360, 33.215942, 48.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523540, 33.142586, 48.298977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039771, 0.282806, 0.958352,
		-0.179523, -0.941482, 0.285278,
		0.982950, -0.183392, 0.013326,
		37.818424, 33.087570, 48.302975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209347, 33.202454, 48.950741>,  <37.130360, 33.215942, 48.293648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209347, 33.202454, 48.950741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591274, 33.208813, 48.832031>,  <37.820431, 33.212627, 48.760807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591274, 33.208813, 48.832031>,  <37.209347, 33.202454, 48.950741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591274, 33.208813, 48.832031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262062, 0.425978, 0.865948,
		0.140182, -0.904594, 0.402566,
		0.954816, 0.015893, -0.296774,
		37.877720, 33.213581, 48.743000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563007, 32.887409, 49.478779>,  <37.209347, 33.202454, 48.950741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563007, 32.887409, 49.478779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829796, 33.093609, 49.263596>,  <37.989868, 33.217331, 49.134483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829796, 33.093609, 49.263596>,  <37.563007, 32.887409, 49.478779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829796, 33.093609, 49.263596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362681, 0.406081, 0.838785,
		0.650852, -0.754556, 0.083882,
		0.666973, 0.515503, -0.537962,
		38.029888, 33.248260, 49.102207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285896, 32.796162, 49.783607>,  <37.563007, 32.887409, 49.478779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285896, 32.796162, 49.783607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282703, 33.137821, 49.575623>,  <38.280788, 33.342819, 49.450832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282703, 33.137821, 49.575623>,  <38.285896, 32.796162, 49.783607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282703, 33.137821, 49.575623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231039, 0.507484, 0.830109,
		0.972912, -0.113507, -0.201392,
		-0.007980, 0.854152, -0.519962,
		38.280308, 33.394066, 49.419636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847244, 33.134739, 50.071266>,  <38.285896, 32.796162, 49.783607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847244, 33.134739, 50.071266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616116, 33.403992, 49.886654>,  <38.477436, 33.565544, 49.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616116, 33.403992, 49.886654>,  <38.847244, 33.134739, 50.071266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616116, 33.403992, 49.886654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140519, 0.639097, 0.756180,
		0.803974, 0.372085, -0.463874,
		-0.577824, 0.673132, -0.461532,
		38.442768, 33.605930, 49.748196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217949, 33.799103, 50.239147>,  <38.847244, 33.134739, 50.071266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217949, 33.799103, 50.239147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847942, 33.898941, 50.124569>,  <38.625938, 33.958843, 50.055820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847942, 33.898941, 50.124569>,  <39.217949, 33.799103, 50.239147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847942, 33.898941, 50.124569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040973, 0.684013, 0.728318,
		0.377720, 0.685440, -0.622495,
		-0.925013, 0.249595, -0.286450,
		38.570438, 33.973820, 50.038635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139778, 34.511959, 50.348396>,  <39.217949, 33.799103, 50.239147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139778, 34.511959, 50.348396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754292, 34.415405, 50.302814>,  <38.522999, 34.357471, 50.275467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754292, 34.415405, 50.302814>,  <39.139778, 34.511959, 50.348396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754292, 34.415405, 50.302814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230116, 0.534947, 0.812944,
		-0.135276, 0.809669, -0.571084,
		-0.963715, -0.241387, -0.113952,
		38.465176, 34.342991, 50.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753975, 35.184307, 50.357712>,  <39.139778, 34.511959, 50.348396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753975, 35.184307, 50.357712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526791, 34.868843, 50.451885>,  <38.390480, 34.679565, 50.508389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526791, 34.868843, 50.451885>,  <38.753975, 35.184307, 50.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526791, 34.868843, 50.451885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224045, 0.423395, 0.877804,
		-0.791972, 0.445814, -0.417169,
		-0.567965, -0.788661, 0.235435,
		38.356400, 34.632244, 50.522514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005333, 35.434513, 50.531303>,  <38.753975, 35.184307, 50.357712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005333, 35.434513, 50.531303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084862, 35.095688, 50.728466>,  <38.132580, 34.892395, 50.846764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084862, 35.095688, 50.728466>,  <38.005333, 35.434513, 50.531303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084862, 35.095688, 50.728466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211572, 0.453992, 0.865522,
		-0.956926, -0.276371, -0.088950,
		0.198823, -0.847059, 0.492909,
		38.144508, 34.841572, 50.876339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617195, 35.494286, 51.138947>,  <38.005333, 35.434513, 50.531303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617195, 35.494286, 51.138947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847591, 35.175072, 51.209797>,  <37.985828, 34.983543, 51.252308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847591, 35.175072, 51.209797>,  <37.617195, 35.494286, 51.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847591, 35.175072, 51.209797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221330, 0.056340, 0.973570,
		-0.786922, -0.599972, -0.144178,
		0.575992, -0.798035, 0.177127,
		38.020390, 34.935661, 51.262936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499535, 36.138557, 51.483742>,  <37.617195, 35.494286, 51.138947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499535, 36.138557, 51.483742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579628, 36.528244, 51.442154>,  <37.627686, 36.762054, 51.417202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579628, 36.528244, 51.442154>,  <37.499535, 36.138557, 51.483742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579628, 36.528244, 51.442154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431010, -0.007705, -0.902314,
		-0.879851, 0.225484, 0.418354,
		0.200234, 0.974216, -0.103965,
		37.639698, 36.820511, 51.410965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863789, 36.379044, 51.156498>,  <37.499535, 36.138557, 51.483742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863789, 36.379044, 51.156498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154209, 36.650105, 51.109783>,  <37.328461, 36.812740, 51.081753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154209, 36.650105, 51.109783>,  <36.863789, 36.379044, 51.156498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154209, 36.650105, 51.109783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122795, -0.039344, -0.991652,
		-0.676588, 0.734331, 0.054646,
		0.726051, 0.677650, -0.116791,
		37.372025, 36.853401, 51.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499580, 36.959206, 50.880836>,  <36.863789, 36.379044, 51.156498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499580, 36.959206, 50.880836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887913, 36.974529, 50.786156>,  <37.120911, 36.983723, 50.729347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887913, 36.974529, 50.786156>,  <36.499580, 36.959206, 50.880836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887913, 36.974529, 50.786156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231919, -0.100722, -0.967506,
		-0.060904, 0.994177, -0.088899,
		0.970827, 0.038308, -0.236703,
		37.179161, 36.986023, 50.715145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452747, 37.325493, 50.290668>,  <36.499580, 36.959206, 50.880836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452747, 37.325493, 50.290668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820919, 37.178383, 50.237671>,  <37.041821, 37.090118, 50.205872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820919, 37.178383, 50.237671>,  <36.452747, 37.325493, 50.290668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820919, 37.178383, 50.237671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199578, -0.150660, -0.968230,
		0.336126, 0.917630, -0.212071,
		0.920428, -0.367772, -0.132498,
		37.097046, 37.068050, 50.197922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889275, 37.728733, 49.786797>,  <36.452747, 37.325493, 50.290668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889275, 37.728733, 49.786797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100662, 37.389153, 49.786079>,  <37.227493, 37.185406, 49.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100662, 37.389153, 49.786079>,  <36.889275, 37.728733, 49.786797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100662, 37.389153, 49.786079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044286, -0.025458, -0.998695,
		0.847797, 0.527859, -0.051050,
		0.528469, -0.848951, -0.001793,
		37.259205, 37.134468, 49.785542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512135, 37.825603, 49.296440>,  <36.889275, 37.728733, 49.786797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512135, 37.825603, 49.296440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394054, 37.445881, 49.339661>,  <37.323208, 37.218048, 49.365593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394054, 37.445881, 49.339661>,  <37.512135, 37.825603, 49.296440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394054, 37.445881, 49.339661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163715, -0.161676, -0.973169,
		0.941305, -0.269588, 0.203142,
		-0.295197, -0.949307, 0.108051,
		37.305496, 37.161087, 49.372074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003059, 37.493847, 48.869431>,  <37.512135, 37.825603, 49.296440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003059, 37.493847, 48.869431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697384, 37.238422, 48.905766>,  <37.513977, 37.085167, 48.927567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697384, 37.238422, 48.905766>,  <38.003059, 37.493847, 48.869431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697384, 37.238422, 48.905766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186334, -0.353400, -0.916726,
		0.617485, -0.683630, 0.389052,
		-0.764193, -0.638559, 0.090836,
		37.468124, 37.046856, 48.933018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200764, 36.912354, 48.645241>,  <38.003059, 37.493847, 48.869431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200764, 36.912354, 48.645241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809410, 36.833771, 48.619389>,  <37.574600, 36.786621, 48.603878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809410, 36.833771, 48.619389>,  <38.200764, 36.912354, 48.645241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809410, 36.833771, 48.619389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139259, -0.394764, -0.908168,
		0.152908, -0.897532, 0.413588,
		-0.978379, -0.196462, -0.064627,
		37.515896, 36.774834, 48.600002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099846, 36.153755, 48.392681>,  <38.200764, 36.912354, 48.645241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099846, 36.153755, 48.392681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746307, 36.335529, 48.348305>,  <37.534184, 36.444595, 48.321678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746307, 36.335529, 48.348305>,  <38.099846, 36.153755, 48.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746307, 36.335529, 48.348305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148319, -0.497167, -0.854884,
		-0.443642, -0.739132, 0.506820,
		-0.883846, 0.454433, -0.110936,
		37.481155, 36.471859, 48.315022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756393, 35.612328, 48.405472>,  <38.099846, 36.153755, 48.392681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756393, 35.612328, 48.405472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573326, 35.904507, 48.202694>,  <37.463486, 36.079815, 48.081028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573326, 35.904507, 48.202694>,  <37.756393, 35.612328, 48.405472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573326, 35.904507, 48.202694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154460, -0.626811, -0.763709,
		-0.875606, -0.271219, 0.399693,
		-0.457664, 0.730444, -0.506946,
		37.436028, 36.123638, 48.050610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392368, 35.205982, 47.936287>,  <37.756393, 35.612328, 48.405472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392368, 35.205982, 47.936287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347862, 35.569595, 47.775646>,  <37.321159, 35.787762, 47.679260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347862, 35.569595, 47.775646>,  <37.392368, 35.205982, 47.936287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347862, 35.569595, 47.775646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030354, -0.407034, -0.912908,
		-0.993327, -0.089384, 0.072881,
		-0.111265, 0.909029, -0.401605,
		37.314484, 35.842304, 47.655163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731358, 35.367493, 47.674442>,  <37.392368, 35.205982, 47.936287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731358, 35.367493, 47.674442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999096, 35.597656, 47.486454>,  <37.159740, 35.735756, 47.373661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999096, 35.597656, 47.486454>,  <36.731358, 35.367493, 47.674442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999096, 35.597656, 47.486454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079486, -0.573484, -0.815352,
		-0.738687, 0.583109, -0.338122,
		0.669346, 0.575414, -0.469974,
		37.199902, 35.770279, 47.345463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396828, 35.633392, 46.986294>,  <36.731358, 35.367493, 47.674442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396828, 35.633392, 46.986294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795330, 35.612907, 46.958439>,  <37.034431, 35.600616, 46.941727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795330, 35.612907, 46.958439>,  <36.396828, 35.633392, 46.986294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795330, 35.612907, 46.958439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084797, -0.422518, -0.902379,
		0.016787, 0.904907, -0.425279,
		0.996257, -0.051211, -0.069640,
		37.094208, 35.597546, 46.937546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529301, 35.951073, 46.338982>,  <36.396828, 35.633392, 46.986294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529301, 35.951073, 46.338982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834812, 35.707722, 46.425259>,  <37.018120, 35.561710, 46.477024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834812, 35.707722, 46.425259>,  <36.529301, 35.951073, 46.338982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834812, 35.707722, 46.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041890, -0.380177, -0.923965,
		0.644120, 0.696667, -0.315855,
		0.763776, -0.608376, 0.215696,
		37.063946, 35.525208, 46.489967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019283, 36.078621, 45.881351>,  <36.529301, 35.951073, 46.338982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019283, 36.078621, 45.881351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101116, 35.710262, 46.014076>,  <37.150215, 35.489246, 46.093712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101116, 35.710262, 46.014076>,  <37.019283, 36.078621, 45.881351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101116, 35.710262, 46.014076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053017, -0.328061, -0.943168,
		0.977413, 0.210546, -0.018291,
		0.204581, -0.920894, 0.331814,
		37.162491, 35.433994, 46.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758579, 35.914539, 45.612045>,  <37.019283, 36.078621, 45.881351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758579, 35.914539, 45.612045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567101, 35.574574, 45.700138>,  <37.452213, 35.370594, 45.752995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567101, 35.574574, 45.700138>,  <37.758579, 35.914539, 45.612045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567101, 35.574574, 45.700138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250923, -0.372810, -0.893336,
		0.841362, -0.372372, 0.391725,
		-0.478693, -0.849913, 0.220232,
		37.423492, 35.319599, 45.766209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278839, 35.403133, 45.305809>,  <37.758579, 35.914539, 45.612045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278839, 35.403133, 45.305809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945339, 35.191257, 45.368149>,  <37.745239, 35.064133, 45.405552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945339, 35.191257, 45.368149>,  <38.278839, 35.403133, 45.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945339, 35.191257, 45.368149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107530, -0.432630, -0.895136,
		0.541567, -0.729563, 0.417664,
		-0.833752, -0.529688, 0.155848,
		37.695213, 35.032352, 45.414902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436443, 34.754982, 45.134022>,  <38.278839, 35.403133, 45.305809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436443, 34.754982, 45.134022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038429, 34.782345, 45.105114>,  <37.799622, 34.798763, 45.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038429, 34.782345, 45.105114>,  <38.436443, 34.754982, 45.134022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038429, 34.782345, 45.105114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040703, -0.382956, -0.922870,
		-0.090804, -0.921231, 0.378271,
		-0.995037, 0.068404, -0.072270,
		37.739918, 34.802864, 45.083431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164963, 34.043026, 44.853806>,  <38.436443, 34.754982, 45.134022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164963, 34.043026, 44.853806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904713, 34.342010, 44.800159>,  <37.748562, 34.521400, 44.767971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904713, 34.342010, 44.800159>,  <38.164963, 34.043026, 44.853806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904713, 34.342010, 44.800159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115160, -0.271680, -0.955473,
		-0.750618, -0.606209, 0.262839,
		-0.650624, 0.747463, -0.134117,
		37.709526, 34.566250, 44.759926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798252, 33.817249, 44.214394>,  <38.164963, 34.043026, 44.853806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798252, 33.817249, 44.214394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717392, 34.208950, 44.220165>,  <37.668877, 34.443970, 44.223629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717392, 34.208950, 44.220165>,  <37.798252, 33.817249, 44.214394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717392, 34.208950, 44.220165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110747, -0.008222, -0.993815,
		-0.973073, -0.202497, 0.110111,
		-0.202150, 0.979248, 0.014425,
		37.656746, 34.502724, 44.224491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249527, 33.810722, 43.889984>,  <37.798252, 33.817249, 44.214394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249527, 33.810722, 43.889984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412640, 34.174259, 43.854836>,  <37.510506, 34.392380, 43.833748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412640, 34.174259, 43.854836>,  <37.249527, 33.810722, 43.889984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412640, 34.174259, 43.854836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007111, -0.099394, -0.995023,
		-0.913054, 0.405123, -0.046993,
		0.407778, 0.908843, -0.087871,
		37.534973, 34.446911, 43.828476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811489, 34.265907, 43.446545>,  <37.249527, 33.810722, 43.889984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811489, 34.265907, 43.446545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179302, 34.422825, 43.437008>,  <37.399990, 34.516975, 43.431286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179302, 34.422825, 43.437008>,  <36.811489, 34.265907, 43.446545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179302, 34.422825, 43.437008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046242, 0.047761, -0.997788,
		-0.390290, 0.918598, 0.062058,
		0.919530, 0.392296, -0.023838,
		37.455162, 34.540512, 43.429855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660454, 34.636745, 42.901550>,  <36.811489, 34.265907, 43.446545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660454, 34.636745, 42.901550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057571, 34.627331, 42.948536>,  <37.295841, 34.621681, 42.976727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057571, 34.627331, 42.948536>,  <36.660454, 34.636745, 42.901550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057571, 34.627331, 42.948536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111662, -0.173308, -0.978517,
		0.043387, 0.984586, -0.169432,
		0.992799, -0.023536, 0.117460,
		37.355412, 34.620270, 42.983772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897980, 34.796528, 42.265476>,  <36.660454, 34.636745, 42.901550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897980, 34.796528, 42.265476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234058, 34.655296, 42.430107>,  <37.435707, 34.570557, 42.528885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234058, 34.655296, 42.430107>,  <36.897980, 34.796528, 42.265476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234058, 34.655296, 42.430107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309183, -0.311626, -0.898496,
		0.445501, 0.882170, -0.152661,
		0.840199, -0.353081, 0.411582,
		37.486118, 34.549374, 42.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464691, 34.986008, 41.817318>,  <36.897980, 34.796528, 42.265476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464691, 34.986008, 41.817318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592396, 34.664761, 42.018543>,  <37.669018, 34.472012, 42.139278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592396, 34.664761, 42.018543>,  <37.464691, 34.986008, 41.817318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592396, 34.664761, 42.018543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331015, -0.402904, -0.853286,
		0.887975, 0.438946, 0.137211,
		0.319263, -0.803116, 0.503067,
		37.688175, 34.423824, 42.169464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102535, 34.855629, 41.627426>,  <37.464691, 34.986008, 41.817318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102535, 34.855629, 41.627426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017437, 34.495972, 41.780415>,  <37.966377, 34.280178, 41.872208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017437, 34.495972, 41.780415>,  <38.102535, 34.855629, 41.627426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017437, 34.495972, 41.780415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240570, -0.427582, -0.871378,
		0.947029, -0.093375, 0.307274,
		-0.212750, -0.899141, 0.382469,
		37.953613, 34.226231, 41.895157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714634, 34.416954, 41.844196>,  <38.102535, 34.855629, 41.627426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714634, 34.416954, 41.844196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401161, 34.222767, 41.689194>,  <38.213078, 34.106255, 41.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401161, 34.222767, 41.689194>,  <38.714634, 34.416954, 41.844196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401161, 34.222767, 41.689194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573257, -0.325017, -0.752157,
		0.239205, -0.811592, 0.533010,
		-0.783682, -0.485472, -0.387505,
		38.166058, 34.077126, 41.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998062, 33.912430, 41.579639>,  <38.714634, 34.416954, 41.844196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998062, 33.912430, 41.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649391, 33.896065, 41.384293>,  <38.440189, 33.886246, 41.267086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649391, 33.896065, 41.384293>,  <38.998062, 33.912430, 41.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649391, 33.896065, 41.384293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487274, -0.178705, -0.854768,
		-0.052302, -0.983052, 0.175709,
		-0.871682, -0.040912, -0.488362,
		38.387886, 33.883793, 41.237785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953571, 33.365376, 41.187820>,  <38.998062, 33.912430, 41.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953571, 33.365376, 41.187820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688465, 33.597889, 40.998993>,  <38.529400, 33.737396, 40.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688465, 33.597889, 40.998993>,  <38.953571, 33.365376, 41.187820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688465, 33.597889, 40.998993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361217, -0.304043, -0.881521,
		-0.655946, -0.754761, -0.008462,
		-0.662765, 0.581287, -0.472069,
		38.489635, 33.772274, 40.857372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954254, 33.254337, 40.434784>,  <38.953571, 33.365376, 41.187820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954254, 33.254337, 40.434784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738033, 33.590202, 40.413704>,  <38.608303, 33.791721, 40.401058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738033, 33.590202, 40.413704>,  <38.954254, 33.254337, 40.434784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738033, 33.590202, 40.413704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374305, 0.183927, -0.908882,
		-0.753460, -0.511020, -0.413711,
		-0.540550, 0.839660, -0.052696,
		38.575867, 33.842102, 40.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595665, 33.225506, 39.853218>,  <38.954254, 33.254337, 40.434784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595665, 33.225506, 39.853218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605469, 33.614925, 39.944084>,  <38.611351, 33.848576, 39.998604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605469, 33.614925, 39.944084>,  <38.595665, 33.225506, 39.853218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605469, 33.614925, 39.944084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164434, 0.220214, -0.961492,
		-0.986084, 0.060917, -0.154688,
		0.024506, 0.973548, 0.227166,
		38.612820, 33.906990, 40.012234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125584, 33.568832, 39.446152>,  <38.595665, 33.225506, 39.853218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125584, 33.568832, 39.446152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347515, 33.885742, 39.547710>,  <38.480675, 34.075890, 39.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347515, 33.885742, 39.547710>,  <38.125584, 33.568832, 39.446152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347515, 33.885742, 39.547710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194129, 0.173466, -0.965517,
		-0.808997, 0.584988, -0.057560,
		0.554831, 0.792275, 0.253896,
		38.513966, 34.123425, 39.623878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906693, 34.150230, 38.926750>,  <38.125584, 33.568832, 39.446152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906693, 34.150230, 38.926750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258781, 34.223457, 39.101879>,  <38.470036, 34.267395, 39.206959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258781, 34.223457, 39.101879>,  <37.906693, 34.150230, 38.926750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258781, 34.223457, 39.101879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410601, 0.168767, -0.896061,
		-0.237929, 0.968506, 0.073385,
		0.880225, 0.183067, 0.437824,
		38.522850, 34.278378, 39.233227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116272, 34.832150, 38.732857>,  <37.906693, 34.150230, 38.926750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116272, 34.832150, 38.732857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455410, 34.664066, 38.862217>,  <38.658894, 34.563217, 38.939835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455410, 34.664066, 38.862217>,  <38.116272, 34.832150, 38.732857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455410, 34.664066, 38.862217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469799, 0.312480, -0.825618,
		0.245876, 0.851927, 0.462348,
		0.847840, -0.420211, 0.323403,
		38.709763, 34.538002, 38.959236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619244, 35.284534, 38.613987>,  <38.116272, 34.832150, 38.732857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619244, 35.284534, 38.613987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793037, 34.924885, 38.635124>,  <38.897312, 34.709095, 38.647804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793037, 34.924885, 38.635124>,  <38.619244, 35.284534, 38.613987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793037, 34.924885, 38.635124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481216, 0.182146, -0.857469,
		0.761351, 0.397984, 0.511815,
		0.434484, -0.899128, 0.052839,
		38.923382, 34.655148, 38.650974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346596, 35.372372, 38.508053>,  <38.619244, 35.284534, 38.613987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346596, 35.372372, 38.508053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319378, 34.984612, 38.413708>,  <39.303047, 34.751953, 38.357101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319378, 34.984612, 38.413708>,  <39.346596, 35.372372, 38.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319378, 34.984612, 38.413708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591166, 0.151260, -0.792239,
		0.803674, -0.193339, 0.562786,
		-0.068043, -0.969402, -0.235859,
		39.298965, 34.693790, 38.342949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956783, 35.296192, 38.139851>,  <39.346596, 35.372372, 38.508053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956783, 35.296192, 38.139851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754017, 34.963100, 38.050766>,  <39.632355, 34.763245, 37.997314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754017, 34.963100, 38.050766>,  <39.956783, 35.296192, 38.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754017, 34.963100, 38.050766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570706, -0.130594, -0.810704,
		0.646009, -0.538065, 0.541442,
		-0.506920, -0.832725, -0.222712,
		39.601940, 34.713284, 37.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472637, 34.783661, 37.985744>,  <39.956783, 35.296192, 38.139851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472637, 34.783661, 37.985744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150963, 34.621376, 37.811993>,  <39.957958, 34.524006, 37.707741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150963, 34.621376, 37.811993>,  <40.472637, 34.783661, 37.985744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150963, 34.621376, 37.811993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563287, -0.286936, -0.774839,
		0.189726, -0.867792, 0.459283,
		-0.804184, -0.405715, -0.434377,
		39.909706, 34.499660, 37.681679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673824, 34.155861, 37.592266>,  <40.472637, 34.783661, 37.985744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673824, 34.155861, 37.592266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314865, 34.249931, 37.442936>,  <40.099491, 34.306374, 37.353336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314865, 34.249931, 37.442936>,  <40.673824, 34.155861, 37.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314865, 34.249931, 37.442936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353305, -0.123836, -0.927276,
		-0.264307, -0.964031, 0.028040,
		-0.897395, 0.235179, -0.373328,
		40.045647, 34.320484, 37.330936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523361, 33.754440, 37.043079>,  <40.673824, 34.155861, 37.592266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523361, 33.754440, 37.043079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260876, 34.044338, 36.959057>,  <40.103386, 34.218277, 36.908646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260876, 34.044338, 36.959057>,  <40.523361, 33.754440, 37.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260876, 34.044338, 36.959057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269547, -0.034860, -0.962356,
		-0.704789, -0.688131, -0.172479,
		-0.656214, 0.724749, -0.210053,
		40.064011, 34.261765, 36.896042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982262, 33.556850, 36.419102>,  <40.523361, 33.754440, 37.043079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982262, 33.556850, 36.419102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079861, 33.942604, 36.459965>,  <40.138420, 34.174057, 36.484482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079861, 33.942604, 36.459965>,  <39.982262, 33.556850, 36.419102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079861, 33.942604, 36.459965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265456, 0.034898, -0.963491,
		-0.932737, 0.262207, -0.247485,
		0.243997, 0.964380, 0.102155,
		40.153061, 34.231918, 36.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231731, 33.856472, 35.744507>,  <39.982262, 33.556850, 36.419102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231731, 33.856472, 35.744507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397995, 34.176750, 35.917072>,  <40.497753, 34.368916, 36.020611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397995, 34.176750, 35.917072>,  <40.231731, 33.856472, 35.744507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397995, 34.176750, 35.917072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512902, 0.185357, -0.838197,
		-0.751105, 0.569676, -0.333633,
		0.415660, 0.800695, 0.431410,
		40.522694, 34.416958, 36.046494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170490, 34.535061, 35.268913>,  <40.231731, 33.856472, 35.744507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170490, 34.535061, 35.268913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487045, 34.507122, 35.511837>,  <40.676979, 34.490356, 35.657593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487045, 34.507122, 35.511837>,  <40.170490, 34.535061, 35.268913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487045, 34.507122, 35.511837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611258, 0.077136, -0.787663,
		0.008174, 0.994571, 0.103741,
		0.791389, -0.069851, 0.607309,
		40.724461, 34.486168, 35.694031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670094, 35.116581, 35.226799>,  <40.170490, 34.535061, 35.268913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670094, 35.116581, 35.226799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856522, 34.773376, 35.313137>,  <40.968380, 34.567451, 35.364941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856522, 34.773376, 35.313137>,  <40.670094, 35.116581, 35.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856522, 34.773376, 35.313137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747460, 0.251324, -0.614930,
		0.473370, 0.447940, 0.758466,
		0.466073, -0.858013, 0.215848,
		40.996342, 34.515972, 35.377892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359421, 35.274643, 35.053288>,  <40.670094, 35.116581, 35.226799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359421, 35.274643, 35.053288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339977, 34.875648, 35.073910>,  <41.328312, 34.636253, 35.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339977, 34.875648, 35.073910>,  <41.359421, 35.274643, 35.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339977, 34.875648, 35.073910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780168, -0.070146, -0.621625,
		0.623679, 0.010011, 0.781616,
		-0.048605, -0.997486, 0.051559,
		41.325397, 34.576401, 35.089378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978115, 35.023079, 34.733868>,  <41.359421, 35.274643, 35.053288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978115, 35.023079, 34.733868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808163, 34.664848, 34.786655>,  <41.706192, 34.449909, 34.818329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808163, 34.664848, 34.786655>,  <41.978115, 35.023079, 34.733868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808163, 34.664848, 34.786655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697975, -0.416927, -0.582239,
		0.576463, -0.155269, 0.802236,
		-0.424878, -0.895580, 0.131969,
		41.680698, 34.396175, 34.826244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722477, 35.027798, 34.413391>,  <41.978115, 35.023079, 34.733868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722477, 35.027798, 34.413391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102024, 35.086384, 34.525242>,  <43.329754, 35.121536, 34.592354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102024, 35.086384, 34.525242>,  <42.722477, 35.027798, 34.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102024, 35.086384, 34.525242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313409, 0.542822, 0.779178,
		-0.037664, -0.826977, 0.560972,
		0.948871, 0.146467, 0.279627,
		43.386684, 35.130325, 34.609131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705315, 34.813961, 35.155331>,  <42.722477, 35.027798, 34.413391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705315, 34.813961, 35.155331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978622, 35.091251, 35.063602>,  <43.142605, 35.257626, 35.008568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978622, 35.091251, 35.063602>,  <42.705315, 34.813961, 35.155331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978622, 35.091251, 35.063602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379363, 0.605377, 0.699716,
		0.623892, -0.391090, 0.676615,
		0.683259, 0.693230, -0.229325,
		43.183601, 35.299217, 34.994808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895172, 35.146416, 35.784679>,  <42.705315, 34.813961, 35.155331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895172, 35.146416, 35.784679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017471, 35.397133, 35.498001>,  <43.090851, 35.547562, 35.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017471, 35.397133, 35.498001>,  <42.895172, 35.146416, 35.784679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017471, 35.397133, 35.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409875, 0.766072, 0.495113,
		0.859372, 0.142375, 0.491131,
		0.305750, 0.626788, -0.716696,
		43.109196, 35.585171, 35.282993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236858, 35.727943, 36.128212>,  <42.895172, 35.146416, 35.784679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236858, 35.727943, 36.128212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133446, 35.875870, 35.771248>,  <43.071400, 35.964626, 35.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133446, 35.875870, 35.771248>,  <43.236858, 35.727943, 36.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133446, 35.875870, 35.771248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186972, 0.887192, 0.421819,
		0.947737, 0.275908, -0.160217,
		-0.258527, 0.369817, -0.892412,
		43.055889, 35.986816, 35.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455219, 36.376396, 36.241657>,  <43.236858, 35.727943, 36.128212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455219, 36.376396, 36.241657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235649, 36.412277, 35.909241>,  <43.103905, 36.433807, 35.709789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235649, 36.412277, 35.909241>,  <43.455219, 36.376396, 36.241657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235649, 36.412277, 35.909241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089580, 0.982186, 0.165186,
		0.831054, 0.165121, -0.531116,
		-0.548930, 0.089701, -0.831041,
		43.070969, 36.439186, 35.659927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669628, 36.979641, 35.767361>,  <43.455219, 36.376396, 36.241657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669628, 36.979641, 35.767361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301449, 36.900711, 35.632401>,  <43.080540, 36.853352, 35.551426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301449, 36.900711, 35.632401>,  <43.669628, 36.979641, 35.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301449, 36.900711, 35.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244750, 0.964003, 0.103901,
		0.304753, 0.178215, -0.935609,
		-0.920447, -0.197326, -0.337401,
		43.025314, 36.841515, 35.531181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553864, 37.411163, 35.190086>,  <43.669628, 36.979641, 35.767361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553864, 37.411163, 35.190086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206257, 37.329128, 35.370197>,  <42.997692, 37.279907, 35.478264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206257, 37.329128, 35.370197>,  <43.553864, 37.411163, 35.190086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206257, 37.329128, 35.370197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211549, 0.976683, 0.036560,
		-0.447277, -0.063484, -0.892140,
		-0.869017, -0.205084, 0.450278,
		42.945553, 37.267605, 35.505280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416458, 38.097668, 35.156075>,  <43.553864, 37.411163, 35.190086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416458, 38.097668, 35.156075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106529, 37.940624, 35.354271>,  <42.920574, 37.846397, 35.473190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106529, 37.940624, 35.354271>,  <43.416458, 38.097668, 35.156075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106529, 37.940624, 35.354271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280518, 0.915912, 0.287078,
		-0.566538, 0.083439, -0.819800,
		-0.774819, -0.392609, 0.495493,
		42.874084, 37.822842, 35.502918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761581, 38.455387, 34.965965>,  <43.416458, 38.097668, 35.156075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761581, 38.455387, 34.965965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686237, 38.288975, 35.321815>,  <42.641029, 38.189129, 35.535328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.686237, 38.288975, 35.321815>,  <42.761581, 38.455387, 34.965965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686237, 38.288975, 35.321815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274489, 0.892044, 0.359044,
		-0.942962, -0.176564, -0.282221,
		-0.188359, -0.416031, 0.889629,
		42.629730, 38.164165, 35.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051285, 38.693691, 35.156574>,  <42.761581, 38.455387, 34.965965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051285, 38.693691, 35.156574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216499, 38.579731, 35.502575>,  <42.315628, 38.511353, 35.710175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216499, 38.579731, 35.502575>,  <42.051285, 38.693691, 35.156574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216499, 38.579731, 35.502575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268601, 0.869449, 0.414623,
		-0.870205, -0.403595, 0.282586,
		0.413034, -0.284904, 0.865005,
		42.340408, 38.494259, 35.762077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522297, 38.714939, 35.637863>,  <42.051285, 38.693691, 35.156574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522297, 38.714939, 35.637863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846107, 38.713463, 35.872696>,  <42.040394, 38.712578, 36.013596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846107, 38.713463, 35.872696>,  <41.522297, 38.714939, 35.637863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846107, 38.713463, 35.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314003, 0.842214, 0.438267,
		-0.496061, -0.539131, 0.680633,
		0.809522, -0.003687, 0.587078,
		42.088963, 38.712357, 36.048820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278091, 39.038967, 36.359016>,  <41.522297, 38.714939, 35.637863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278091, 39.038967, 36.359016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675110, 39.074352, 36.325489>,  <41.913322, 39.095585, 36.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675110, 39.074352, 36.325489>,  <41.278091, 39.038967, 36.359016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675110, 39.074352, 36.325489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025616, 0.823866, 0.566205,
		0.119143, -0.559838, 0.819991,
		0.992547, 0.088464, -0.083817,
		41.972874, 39.100891, 36.300343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465256, 39.249935, 36.962658>,  <41.278091, 39.038967, 36.359016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465256, 39.249935, 36.962658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806396, 39.342793, 36.775574>,  <42.011082, 39.398506, 36.663322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806396, 39.342793, 36.775574>,  <41.465256, 39.249935, 36.962658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806396, 39.342793, 36.775574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006511, 0.890939, 0.454077,
		0.522116, -0.390305, 0.758325,
		0.852850, 0.232143, -0.467714,
		42.062252, 39.412437, 36.635258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852116, 39.587597, 37.438080>,  <41.465256, 39.249935, 36.962658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852116, 39.587597, 37.438080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992531, 39.714092, 37.085541>,  <42.076778, 39.789989, 36.874020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992531, 39.714092, 37.085541>,  <41.852116, 39.587597, 37.438080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992531, 39.714092, 37.085541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103597, 0.948582, 0.299097,
		0.930613, -0.013690, 0.365750,
		0.351038, 0.316234, -0.881345,
		42.097843, 39.808964, 36.821136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444855, 39.972057, 37.623322>,  <41.852116, 39.587597, 37.438080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444855, 39.972057, 37.623322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278721, 40.080593, 37.276020>,  <42.179039, 40.145714, 37.067638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278721, 40.080593, 37.276020>,  <42.444855, 39.972057, 37.623322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278721, 40.080593, 37.276020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063768, 0.960813, 0.269762,
		0.907429, 0.056676, -0.416365,
		-0.415338, 0.271340, -0.868256,
		42.154118, 40.161995, 37.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963051, 40.399342, 37.510258>,  <42.444855, 39.972057, 37.623322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963051, 40.399342, 37.510258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631016, 40.477955, 37.301517>,  <42.431793, 40.525124, 37.176273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631016, 40.477955, 37.301517>,  <42.963051, 40.399342, 37.510258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631016, 40.477955, 37.301517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110032, 0.975160, 0.192238,
		0.546667, 0.102154, -0.831095,
		-0.830089, 0.196538, -0.521848,
		42.381989, 40.536915, 37.144962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176949, 40.969543, 37.155304>,  <42.963051, 40.399342, 37.510258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176949, 40.969543, 37.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778961, 40.991352, 37.121693>,  <42.540169, 41.004436, 37.101528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778961, 40.991352, 37.121693>,  <43.176949, 40.969543, 37.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778961, 40.991352, 37.121693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026900, 0.953520, 0.300127,
		0.096481, 0.296357, -0.950191,
		-0.994971, 0.054517, -0.084024,
		42.480469, 41.007706, 37.096485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104820, 41.555496, 36.798645>,  <43.176949, 40.969543, 37.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104820, 41.555496, 36.798645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748161, 41.484257, 36.965137>,  <42.534168, 41.441513, 37.065033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748161, 41.484257, 36.965137>,  <43.104820, 41.555496, 36.798645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748161, 41.484257, 36.965137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087626, 0.969877, 0.227289,
		-0.444174, 0.166189, -0.880393,
		-0.891645, -0.178101, 0.416231,
		42.480667, 41.430828, 37.090008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670334, 42.084423, 36.529156>,  <43.104820, 41.555496, 36.798645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670334, 42.084423, 36.529156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540421, 41.944931, 36.880817>,  <42.462471, 41.861237, 37.091812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540421, 41.944931, 36.880817>,  <42.670334, 42.084423, 36.529156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540421, 41.944931, 36.880817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138632, 0.937056, 0.320481,
		-0.935574, -0.017792, -0.352684,
		-0.324782, -0.348727, 0.879151,
		42.442986, 41.840313, 37.144562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067345, 42.449158, 36.661366>,  <42.670334, 42.084423, 36.529156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067345, 42.449158, 36.661366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238934, 42.305035, 36.992706>,  <42.341888, 42.218563, 37.191509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238934, 42.305035, 36.992706>,  <42.067345, 42.449158, 36.661366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238934, 42.305035, 36.992706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039506, 0.908647, 0.415691,
		-0.902453, -0.211045, 0.375550,
		0.428972, -0.360305, 0.828349,
		42.367626, 42.196941, 37.241211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821323, 42.934273, 37.072319>,  <42.067345, 42.449158, 36.661366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821323, 42.934273, 37.072319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046535, 42.793228, 37.371296>,  <42.181664, 42.708603, 37.550682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046535, 42.793228, 37.371296>,  <41.821323, 42.934273, 37.072319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046535, 42.793228, 37.371296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122509, 0.858809, 0.497433,
		-0.817308, -0.371636, 0.440335,
		0.563027, -0.352610, 0.747440,
		42.215443, 42.687447, 37.595528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442337, 43.058712, 37.802216>,  <41.821323, 42.934273, 37.072319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442337, 43.058712, 37.802216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836933, 43.030804, 37.861496>,  <42.073692, 43.014061, 37.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836933, 43.030804, 37.861496>,  <41.442337, 43.058712, 37.802216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836933, 43.030804, 37.861496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042968, 0.762862, 0.645132,
		-0.158070, -0.642786, 0.749560,
		0.986493, -0.069769, 0.148205,
		42.132881, 43.009872, 37.905956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617371, 43.039795, 38.518059>,  <41.442337, 43.058712, 37.802216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617371, 43.039795, 38.518059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923294, 43.207798, 38.322647>,  <42.106850, 43.308601, 38.205399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923294, 43.207798, 38.322647>,  <41.617371, 43.039795, 38.518059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923294, 43.207798, 38.322647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002628, 0.756244, 0.654285,
		0.644250, -0.501687, 0.577279,
		0.764810, 0.420006, -0.488528,
		42.152737, 43.333801, 38.176086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051994, 43.234520, 39.143074>,  <41.617371, 43.039795, 38.518059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051994, 43.234520, 39.143074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082806, 43.480728, 38.829334>,  <42.101292, 43.628452, 38.641090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082806, 43.480728, 38.829334>,  <42.051994, 43.234520, 39.143074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082806, 43.480728, 38.829334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048627, 0.788067, 0.613666,
		0.995842, -0.009132, 0.090637,
		0.077032, 0.615522, -0.784346,
		42.105915, 43.665386, 38.594032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566086, 43.720543, 39.410980>,  <42.051994, 43.234520, 39.143074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566086, 43.720543, 39.410980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304157, 43.828964, 39.128777>,  <42.146999, 43.894016, 38.959454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304157, 43.828964, 39.128777>,  <42.566086, 43.720543, 39.410980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304157, 43.828964, 39.128777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096835, 0.895695, 0.433996,
		0.749555, 0.352508, -0.560273,
		-0.654821, 0.271050, -0.705508,
		42.107712, 43.910278, 38.917126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914997, 43.163555, 39.856720>,  <42.566086, 43.720543, 39.410980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914997, 43.163555, 39.856720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180710, 43.032417, 40.125423>,  <43.340137, 42.953735, 40.286644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180710, 43.032417, 40.125423>,  <42.914997, 43.163555, 39.856720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180710, 43.032417, 40.125423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728563, -0.484902, 0.483805,
		0.167124, -0.810796, -0.560963,
		0.664279, -0.327841, 0.671755,
		43.379993, 42.934063, 40.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617126, 43.624565, 40.462814>,  <42.914997, 43.163555, 39.856720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617126, 43.624565, 40.462814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873703, 43.326954, 40.537617>,  <43.027649, 43.148388, 40.582497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873703, 43.326954, 40.537617>,  <42.617126, 43.624565, 40.462814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873703, 43.326954, 40.537617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511262, 0.596322, 0.618879,
		-0.571977, -0.301369, 0.762901,
		0.641446, -0.744027, 0.187004,
		43.066135, 43.103745, 40.593719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688328, 43.417919, 41.254799>,  <42.617126, 43.624565, 40.462814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688328, 43.417919, 41.254799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010460, 43.389481, 41.019379>,  <43.203739, 43.372417, 40.878128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010460, 43.389481, 41.019379>,  <42.688328, 43.417919, 41.254799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010460, 43.389481, 41.019379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503235, 0.606766, 0.615297,
		0.313367, -0.791695, 0.524424,
		0.805330, -0.071095, -0.588549,
		43.252060, 43.368153, 40.842815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288891, 43.102139, 41.589813>,  <42.688328, 43.417919, 41.254799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288891, 43.102139, 41.589813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387199, 43.383747, 41.323296>,  <43.446182, 43.552711, 41.163383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387199, 43.383747, 41.323296>,  <43.288891, 43.102139, 41.589813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387199, 43.383747, 41.323296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358071, 0.572823, 0.737333,
		0.900768, -0.419795, -0.111308,
		0.245769, 0.704021, -0.666297,
		43.460930, 43.594952, 41.123405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520462, 42.677353, 40.996296>,  <43.288891, 43.102139, 41.589813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520462, 42.677353, 40.996296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791710, 42.484135, 41.217857>,  <43.954460, 42.368202, 41.350796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791710, 42.484135, 41.217857>,  <43.520462, 42.677353, 40.996296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791710, 42.484135, 41.217857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097344, -0.806061, -0.583772,
		0.728474, 0.341949, -0.593630,
		0.678122, -0.483049, 0.553908,
		43.995148, 42.339218, 41.384029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151642, 42.576778, 40.696823>,  <43.520462, 42.677353, 40.996296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151642, 42.576778, 40.696823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023537, 42.309917, 40.965847>,  <43.946674, 42.149799, 41.127262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023537, 42.309917, 40.965847>,  <44.151642, 42.576778, 40.696823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023537, 42.309917, 40.965847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076599, -0.689392, -0.720327,
		0.944228, -0.282208, 0.169680,
		-0.320259, -0.667156, 0.672560,
		43.927460, 42.109772, 41.167614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565685, 41.852634, 40.677097>,  <44.151642, 42.576778, 40.696823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565685, 41.852634, 40.677097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178783, 41.812244, 40.770241>,  <43.946644, 41.788010, 40.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178783, 41.812244, 40.770241>,  <44.565685, 41.852634, 40.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178783, 41.812244, 40.770241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114094, -0.646554, -0.754288,
		0.226720, -0.756156, 0.613862,
		-0.967254, -0.100974, 0.232860,
		43.888607, 41.781952, 40.840099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361004, 41.126106, 40.779881>,  <44.565685, 41.852634, 40.677097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361004, 41.126106, 40.779881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041656, 41.332642, 40.655945>,  <43.850048, 41.456562, 40.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041656, 41.332642, 40.655945>,  <44.361004, 41.126106, 40.779881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041656, 41.332642, 40.655945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072828, -0.593553, -0.801493,
		-0.597782, -0.617301, 0.511465,
		-0.798344, 0.516367, -0.309859,
		43.802147, 41.487545, 40.562992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748940, 40.773106, 40.843929>,  <44.361004, 41.126106, 40.779881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748940, 40.773106, 40.843929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696098, 41.029121, 40.541168>,  <43.664394, 41.182732, 40.359512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696098, 41.029121, 40.541168>,  <43.748940, 40.773106, 40.843929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696098, 41.029121, 40.541168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102472, -0.768321, -0.631809,
		-0.985926, -0.005899, 0.167080,
		-0.132098, 0.640037, -0.756903,
		43.656467, 41.221134, 40.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225769, 40.491936, 40.503441>,  <43.748940, 40.773106, 40.843929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225769, 40.491936, 40.503441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412548, 40.740257, 40.251549>,  <43.524616, 40.889252, 40.100414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412548, 40.740257, 40.251549>,  <43.225769, 40.491936, 40.503441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412548, 40.740257, 40.251549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062440, -0.733506, -0.676809,
		-0.882079, 0.276712, -0.381269,
		0.466945, 0.620806, -0.629732,
		43.552631, 40.926498, 40.062630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877808, 40.274799, 39.798401>,  <43.225769, 40.491936, 40.503441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877808, 40.274799, 39.798401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209305, 40.479477, 39.707756>,  <43.408203, 40.602283, 39.653370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209305, 40.479477, 39.707756>,  <42.877808, 40.274799, 39.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209305, 40.479477, 39.707756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052439, -0.474159, -0.878876,
		-0.557163, 0.716482, -0.419790,
		0.828746, 0.511690, -0.226612,
		43.457928, 40.632984, 39.639771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867146, 40.277946, 39.065941>,  <42.877808, 40.274799, 39.798401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867146, 40.277946, 39.065941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244080, 40.349094, 39.179337>,  <43.470242, 40.391785, 39.247375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.244080, 40.349094, 39.179337>,  <42.867146, 40.277946, 39.065941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244080, 40.349094, 39.179337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328983, -0.336780, -0.882241,
		-0.061448, 0.924631, -0.375876,
		0.942334, 0.177868, 0.283494,
		43.526779, 40.402454, 39.264385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192127, 40.416100, 38.465019>,  <42.867146, 40.277946, 39.065941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192127, 40.416100, 38.465019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522739, 40.373604, 38.686131>,  <43.721107, 40.348106, 38.818798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522739, 40.373604, 38.686131>,  <43.192127, 40.416100, 38.465019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522739, 40.373604, 38.686131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491682, -0.341835, -0.800873,
		0.274043, 0.933736, -0.230301,
		0.826529, -0.106239, 0.552778,
		43.770699, 40.341732, 38.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675468, 40.840912, 38.083324>,  <43.192127, 40.416100, 38.465019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675468, 40.840912, 38.083324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855560, 40.552536, 38.294052>,  <43.963615, 40.379509, 38.420490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855560, 40.552536, 38.294052>,  <43.675468, 40.840912, 38.083324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855560, 40.552536, 38.294052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388920, -0.372765, -0.842489,
		0.803764, 0.584203, 0.112559,
		0.450226, -0.720939, 0.526823,
		43.990627, 40.336254, 38.452099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430607, 40.727478, 37.783966>,  <43.675468, 40.840912, 38.083324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430607, 40.727478, 37.783966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352711, 40.391834, 37.987129>,  <44.305973, 40.190449, 38.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352711, 40.391834, 37.987129>,  <44.430607, 40.727478, 37.783966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352711, 40.391834, 37.987129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449592, -0.536580, -0.714107,
		0.871747, 0.089285, 0.481752,
		-0.194739, -0.839113, 0.507904,
		44.294289, 40.140099, 38.139500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981529, 40.375046, 37.686836>,  <44.430607, 40.727478, 37.783966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981529, 40.375046, 37.686836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712326, 40.100891, 37.798054>,  <44.550804, 39.936398, 37.864784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.712326, 40.100891, 37.798054>,  <44.981529, 40.375046, 37.686836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712326, 40.100891, 37.798054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332952, -0.616413, -0.713567,
		0.660461, -0.387658, 0.643050,
		-0.673004, -0.685387, 0.278046,
		44.510426, 39.895275, 37.881466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370659, 39.872955, 37.854591>,  <44.981529, 40.375046, 37.686836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370659, 39.872955, 37.854591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009037, 39.724522, 37.769749>,  <44.792065, 39.635464, 37.718842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009037, 39.724522, 37.769749>,  <45.370659, 39.872955, 37.854591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009037, 39.724522, 37.769749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402883, -0.574078, -0.712825,
		0.142749, -0.729885, 0.668498,
		-0.904051, -0.371081, -0.212109,
		44.737823, 39.613197, 37.706116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474365, 39.160656, 37.842434>,  <45.370659, 39.872955, 37.854591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474365, 39.160656, 37.842434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133743, 39.232224, 37.645317>,  <44.929371, 39.275166, 37.527046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133743, 39.232224, 37.645317>,  <45.474365, 39.160656, 37.842434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133743, 39.232224, 37.645317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310694, -0.584897, -0.749243,
		-0.422286, -0.791128, 0.442482,
		-0.851554, 0.178919, -0.492792,
		44.878277, 39.285900, 37.497478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274326, 38.484337, 37.594784>,  <45.474365, 39.160656, 37.842434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274326, 38.484337, 37.594784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056740, 38.735268, 37.371876>,  <44.926186, 38.885826, 37.238129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056740, 38.735268, 37.371876>,  <45.274326, 38.484337, 37.594784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056740, 38.735268, 37.371876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205529, -0.544285, -0.813334,
		-0.813544, -0.556965, 0.167140,
		-0.543970, 0.627331, -0.557272,
		44.893547, 38.923466, 37.204693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960762, 38.047752, 37.163811>,  <45.274326, 38.484337, 37.594784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960762, 38.047752, 37.163811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923504, 38.392658, 36.964680>,  <44.901150, 38.599602, 36.845203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923504, 38.392658, 36.964680>,  <44.960762, 38.047752, 37.163811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923504, 38.392658, 36.964680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151205, -0.481947, -0.863055,
		-0.984104, -0.155660, -0.085489,
		-0.093142, 0.862263, -0.497823,
		44.895561, 38.651337, 36.815334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419888, 37.939262, 36.625992>,  <44.960762, 38.047752, 37.163811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419888, 37.939262, 36.625992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637985, 38.245110, 36.488544>,  <44.768845, 38.428619, 36.406078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637985, 38.245110, 36.488544>,  <44.419888, 37.939262, 36.625992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637985, 38.245110, 36.488544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181379, -0.507802, -0.842163,
		-0.818420, 0.396860, -0.415561,
		0.545244, 0.764617, -0.343614,
		44.801559, 38.474495, 36.385460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123604, 38.118626, 36.044727>,  <44.419888, 37.939262, 36.625992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123604, 38.118626, 36.044727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500351, 38.249790, 36.015438>,  <44.726398, 38.328487, 35.997864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500351, 38.249790, 36.015438>,  <44.123604, 38.118626, 36.044727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500351, 38.249790, 36.015438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097052, -0.474169, -0.875068,
		-0.321663, 0.817092, -0.478428,
		0.941867, 0.327909, -0.073222,
		44.782909, 38.348164, 35.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198280, 38.638927, 35.452396>,  <44.123604, 38.118626, 36.044727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198280, 38.638927, 35.452396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545033, 38.457993, 35.536209>,  <44.753086, 38.349430, 35.586498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545033, 38.457993, 35.536209>,  <44.198280, 38.638927, 35.452396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545033, 38.457993, 35.536209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070967, -0.304060, -0.950006,
		0.493435, 0.838414, -0.231483,
		0.866883, -0.452338, 0.209534,
		44.805096, 38.322292, 35.599068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469368, 38.724457, 34.903469>,  <44.198280, 38.638927, 35.452396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469368, 38.724457, 34.903469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721943, 38.460045, 35.065617>,  <44.873489, 38.301399, 35.162907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721943, 38.460045, 35.065617>,  <44.469368, 38.724457, 34.903469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721943, 38.460045, 35.065617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006330, -0.518364, -0.855137,
		0.775398, 0.542534, -0.323132,
		0.631441, -0.661026, 0.405373,
		44.911377, 38.261738, 35.187229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794952, 38.425289, 34.316845>,  <44.469368, 38.724457, 34.903469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794952, 38.425289, 34.316845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899910, 38.197563, 34.628494>,  <44.962887, 38.060928, 34.815483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899910, 38.197563, 34.628494>,  <44.794952, 38.425289, 34.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899910, 38.197563, 34.628494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261038, -0.735433, -0.625298,
		0.928982, 0.367456, -0.044363,
		0.262396, -0.569310, 0.779124,
		44.978630, 38.026772, 34.862232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470028, 38.247585, 34.133266>,  <44.794952, 38.425289, 34.316845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470028, 38.247585, 34.133266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347500, 37.974632, 34.398754>,  <45.273983, 37.810860, 34.558044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.347500, 37.974632, 34.398754>,  <45.470028, 38.247585, 34.133266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347500, 37.974632, 34.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310835, -0.730718, -0.607810,
		0.899749, 0.020120, 0.435944,
		-0.306322, -0.682383, 0.663717,
		45.255604, 37.769917, 34.597870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952934, 37.780602, 34.018692>,  <45.470028, 38.247585, 34.133266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952934, 37.780602, 34.018692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643864, 37.599941, 34.197124>,  <45.458420, 37.491547, 34.304184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643864, 37.599941, 34.197124>,  <45.952934, 37.780602, 34.018692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643864, 37.599941, 34.197124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092396, -0.775239, -0.624874,
		0.628040, -0.441609, 0.640739,
		-0.772676, -0.451648, 0.446078,
		45.412060, 37.464447, 34.330948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203144, 37.170399, 34.041740>,  <45.952934, 37.780602, 34.018692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203144, 37.170399, 34.041740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808010, 37.115746, 34.071419>,  <45.570930, 37.082954, 34.089226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808010, 37.115746, 34.071419>,  <46.203144, 37.170399, 34.041740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808010, 37.115746, 34.071419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042626, -0.696923, -0.715878,
		0.149526, -0.704009, 0.694272,
		-0.987839, -0.136637, 0.074199,
		45.511658, 37.074753, 34.093678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137993, 36.419277, 34.170021>,  <46.203144, 37.170399, 34.041740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137993, 36.419277, 34.170021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828873, 36.598763, 33.990494>,  <45.643402, 36.706455, 33.882778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828873, 36.598763, 33.990494>,  <46.137993, 36.419277, 34.170021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828873, 36.598763, 33.990494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133878, -0.576021, -0.806397,
		-0.620375, -0.683267, 0.385072,
		-0.772794, 0.448716, -0.448824,
		45.597034, 36.733376, 33.855846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269104, 35.933338, 34.780445>,  <46.137993, 36.419277, 34.170021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269104, 35.933338, 34.780445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549664, 36.166321, 34.616112>,  <46.717999, 36.306110, 34.517513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549664, 36.166321, 34.616112>,  <46.269104, 35.933338, 34.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549664, 36.166321, 34.616112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264296, 0.322771, 0.908827,
		0.661958, -0.746032, 0.072450,
		0.701399, 0.582457, -0.410833,
		46.760082, 36.341057, 34.492863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840500, 35.854134, 35.199333>,  <46.269104, 35.933338, 34.780445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840500, 35.854134, 35.199333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922169, 36.187855, 34.994492>,  <46.971169, 36.388088, 34.871586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922169, 36.187855, 34.994492>,  <46.840500, 35.854134, 35.199333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922169, 36.187855, 34.994492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128324, 0.495804, 0.858902,
		0.970488, -0.241079, -0.005832,
		0.204172, 0.834302, -0.512108,
		46.983421, 36.438145, 34.840858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311092, 35.248764, 35.113972>,  <46.840500, 35.854134, 35.199333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311092, 35.248764, 35.113972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652599, 35.115227, 34.954155>,  <47.857502, 35.035107, 34.858265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652599, 35.115227, 34.954155>,  <47.311092, 35.248764, 35.113972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652599, 35.115227, 34.954155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514891, 0.427459, 0.743079,
		-0.077282, -0.840136, 0.536841,
		0.853765, -0.333841, -0.399544,
		47.908730, 35.015076, 34.834293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.872005, 37.309647, 44.640930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694668, 36.951504, 44.657818>,  <34.588264, 36.736618, 44.667950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694668, 36.951504, 44.657818>,  <34.872005, 37.309647, 44.640930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694668, 36.951504, 44.657818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266062, -0.176429, -0.947673,
		0.855955, -0.408910, 0.316439,
		-0.443342, -0.895358, 0.042220,
		34.561665, 36.682896, 44.670483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352505, 36.780220, 44.464058>,  <34.872005, 37.309647, 44.640930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352505, 36.780220, 44.464058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972771, 36.683102, 44.384251>,  <34.744930, 36.624828, 44.336365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972771, 36.683102, 44.384251>,  <35.352505, 36.780220, 44.464058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972771, 36.683102, 44.384251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259310, -0.246545, -0.933795,
		0.177534, -0.938224, 0.297014,
		-0.949337, -0.242800, -0.199521,
		34.687969, 36.610260, 44.324394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412914, 36.282715, 43.975197>,  <35.352505, 36.780220, 44.464058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412914, 36.282715, 43.975197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019283, 36.344322, 43.939690>,  <34.783104, 36.381287, 43.918385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019283, 36.344322, 43.939690>,  <35.412914, 36.282715, 43.975197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019283, 36.344322, 43.939690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025957, -0.369482, -0.928875,
		-0.175856, -0.916385, 0.359600,
		-0.984074, 0.154014, -0.088763,
		34.724060, 36.390526, 43.913059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114464, 35.600029, 43.798088>,  <35.412914, 36.282715, 43.975197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114464, 35.600029, 43.798088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838608, 35.869652, 43.692223>,  <34.673096, 36.031425, 43.628704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838608, 35.869652, 43.692223>,  <35.114464, 35.600029, 43.798088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838608, 35.869652, 43.692223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095880, -0.447252, -0.889254,
		-0.717781, -0.587885, 0.373069,
		-0.689635, 0.674060, -0.264662,
		34.631718, 36.071869, 43.612823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537308, 35.255840, 43.607224>,  <35.114464, 35.600029, 43.798088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537308, 35.255840, 43.607224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507530, 35.607727, 43.419369>,  <34.489666, 35.818859, 43.306656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507530, 35.607727, 43.419369>,  <34.537308, 35.255840, 43.607224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507530, 35.607727, 43.419369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205128, -0.474378, -0.856088,
		-0.975900, 0.032608, 0.215768,
		-0.074440, 0.879717, -0.469635,
		34.485199, 35.871643, 43.278477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017403, 35.056671, 43.126427>,  <34.537308, 35.255840, 43.607224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017403, 35.056671, 43.126427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190151, 35.399155, 43.013008>,  <34.293800, 35.604645, 42.944958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.190151, 35.399155, 43.013008>,  <34.017403, 35.056671, 43.126427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190151, 35.399155, 43.013008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183563, -0.224354, -0.957063,
		-0.883060, 0.465373, 0.060277,
		0.431868, 0.856209, -0.283543,
		34.319710, 35.656017, 42.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686855, 35.344028, 42.574196>,  <34.017403, 35.056671, 43.126427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686855, 35.344028, 42.574196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031265, 35.539078, 42.516434>,  <34.237911, 35.656109, 42.481777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.031265, 35.539078, 42.516434>,  <33.686855, 35.344028, 42.574196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031265, 35.539078, 42.516434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161139, -0.007732, -0.986901,
		-0.482352, 0.873020, 0.071918,
		0.861029, 0.487623, -0.144407,
		34.289574, 35.685364, 42.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543491, 35.754780, 41.964943>,  <33.686855, 35.344028, 42.574196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543491, 35.754780, 41.964943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942753, 35.762390, 41.988037>,  <34.182308, 35.766956, 42.001892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.942753, 35.762390, 41.988037>,  <33.543491, 35.754780, 41.964943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942753, 35.762390, 41.988037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058617, -0.049741, -0.997041,
		-0.016098, 0.998581, -0.050765,
		0.998151, 0.019026, 0.057733,
		34.242199, 35.768097, 42.005356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760765, 36.369473, 41.434731>,  <33.543491, 35.754780, 41.964943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760765, 36.369473, 41.434731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078781, 36.133553, 41.491352>,  <34.269592, 35.992001, 41.525326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078781, 36.133553, 41.491352>,  <33.760765, 36.369473, 41.434731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078781, 36.133553, 41.491352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101320, -0.100963, -0.989718,
		0.598031, 0.801210, -0.020511,
		0.795043, -0.589804, 0.141557,
		34.317295, 35.956612, 41.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273602, 36.654522, 40.959709>,  <33.760765, 36.369473, 41.434731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273602, 36.654522, 40.959709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405106, 36.288200, 41.051991>,  <34.484009, 36.068409, 41.107361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.405106, 36.288200, 41.051991>,  <34.273602, 36.654522, 40.959709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405106, 36.288200, 41.051991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446195, -0.064679, -0.892595,
		0.832362, 0.396390, 0.387362,
		0.328761, -0.915801, 0.230704,
		34.503735, 36.013458, 41.121201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106789, 36.630604, 40.785969>,  <34.273602, 36.654522, 40.959709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106789, 36.630604, 40.785969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978485, 36.251740, 40.787048>,  <34.901505, 36.024422, 40.787697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978485, 36.251740, 40.787048>,  <35.106789, 36.630604, 40.785969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978485, 36.251740, 40.787048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545100, -0.186926, -0.817267,
		0.774586, -0.260671, 0.576253,
		-0.320755, -0.947159, 0.002699,
		34.882259, 35.967590, 40.787857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614948, 36.372990, 40.332405>,  <35.106789, 36.630604, 40.785969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614948, 36.372990, 40.332405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342896, 36.079762, 40.330238>,  <35.179665, 35.903824, 40.328938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342896, 36.079762, 40.330238>,  <35.614948, 36.372990, 40.332405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342896, 36.079762, 40.330238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471777, -0.432019, -0.768626,
		0.561117, -0.525321, 0.639676,
		-0.680128, -0.733074, -0.005421,
		35.138859, 35.859840, 40.328613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984516, 35.859447, 40.367462>,  <35.614948, 36.372990, 40.332405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984516, 35.859447, 40.367462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654831, 35.691727, 40.215225>,  <35.457020, 35.591095, 40.123882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654831, 35.691727, 40.215225>,  <35.984516, 35.859447, 40.367462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654831, 35.691727, 40.215225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517358, -0.284319, -0.807158,
		0.230232, -0.862177, 0.451270,
		-0.824217, -0.419302, -0.380594,
		35.407566, 35.565937, 40.101048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222507, 35.238075, 39.987904>,  <35.984516, 35.859447, 40.367462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222507, 35.238075, 39.987904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844204, 35.263988, 39.860565>,  <35.617222, 35.279537, 39.784164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844204, 35.263988, 39.860565>,  <36.222507, 35.238075, 39.987904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844204, 35.263988, 39.860565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268550, -0.395511, -0.878323,
		-0.182809, -0.916173, 0.356661,
		-0.945760, 0.064784, -0.318341,
		35.560474, 35.283424, 39.765064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886124, 34.539330, 39.837231>,  <36.222507, 35.238075, 39.987904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886124, 34.539330, 39.837231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768200, 34.849098, 39.613316>,  <35.697445, 35.034958, 39.478966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768200, 34.849098, 39.613316>,  <35.886124, 34.539330, 39.837231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768200, 34.849098, 39.613316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299337, -0.481496, -0.823746,
		-0.907461, -0.410412, -0.089864,
		-0.294806, 0.774418, -0.559791,
		35.679756, 35.081425, 39.445377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904713, 34.194004, 39.262260>,  <35.886124, 34.539330, 39.837231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904713, 34.194004, 39.262260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876617, 34.576111, 39.147350>,  <35.859760, 34.805374, 39.078403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876617, 34.576111, 39.147350>,  <35.904713, 34.194004, 39.262260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876617, 34.576111, 39.147350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602376, -0.188934, -0.775531,
		-0.795116, -0.227524, -0.562159,
		-0.070240, 0.955268, -0.287279,
		35.855545, 34.862690, 39.061165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640011, 34.163368, 38.615067>,  <35.904713, 34.194004, 39.262260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640011, 34.163368, 38.615067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816055, 34.522522, 38.619270>,  <35.921680, 34.738014, 38.621792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816055, 34.522522, 38.619270>,  <35.640011, 34.163368, 38.615067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816055, 34.522522, 38.619270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517708, -0.244161, -0.819978,
		-0.733678, 0.366321, -0.572299,
		0.440108, 0.897884, 0.010511,
		35.948090, 34.791885, 38.622425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356949, 34.549194, 38.018272>,  <35.640011, 34.163368, 38.615067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356949, 34.549194, 38.018272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705933, 34.718689, 38.115650>,  <35.915321, 34.820385, 38.174076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705933, 34.718689, 38.115650>,  <35.356949, 34.549194, 38.018272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705933, 34.718689, 38.115650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359732, -0.219694, -0.906823,
		-0.330769, 0.878740, -0.344105,
		0.872459, 0.423735, 0.243443,
		35.967670, 34.845810, 38.188683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613750, 34.661751, 37.353760>,  <35.356949, 34.549194, 38.018272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613750, 34.661751, 37.353760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933617, 34.762493, 37.571789>,  <36.125538, 34.822941, 37.702606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933617, 34.762493, 37.571789>,  <35.613750, 34.661751, 37.353760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933617, 34.762493, 37.571789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567111, -0.018532, -0.823433,
		-0.197289, 0.967586, -0.157652,
		0.799664, 0.251860, 0.545072,
		36.173515, 34.838051, 37.735310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004642, 35.237968, 36.993008>,  <35.613750, 34.661751, 37.353760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004642, 35.237968, 36.993008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261047, 35.059219, 37.242619>,  <36.414890, 34.951969, 37.392384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.261047, 35.059219, 37.242619>,  <36.004642, 35.237968, 36.993008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261047, 35.059219, 37.242619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622837, -0.172261, -0.763151,
		0.448526, 0.877857, 0.167906,
		0.641014, -0.446871, 0.624025,
		36.453350, 34.925159, 37.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537483, 35.537586, 36.956528>,  <36.004642, 35.237968, 36.993008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537483, 35.537586, 36.956528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660046, 35.180271, 37.088078>,  <36.733582, 34.965881, 37.167007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.660046, 35.180271, 37.088078>,  <36.537483, 35.537586, 36.956528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660046, 35.180271, 37.088078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608670, -0.081775, -0.789198,
		0.731871, 0.441993, 0.518659,
		0.306406, -0.893283, 0.328877,
		36.751968, 34.912285, 37.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262199, 35.402943, 36.623726>,  <36.537483, 35.537586, 36.956528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262199, 35.402943, 36.623726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123100, 35.042515, 36.727375>,  <37.039639, 34.826260, 36.789566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123100, 35.042515, 36.727375>,  <37.262199, 35.402943, 36.623726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123100, 35.042515, 36.727375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607578, -0.427065, -0.669675,
		0.714085, -0.075442, 0.695982,
		-0.347751, -0.901068, 0.259124,
		37.018776, 34.772194, 36.805111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976364, 35.808720, 36.617405>,  <37.262199, 35.402943, 36.623726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976364, 35.808720, 36.617405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334148, 35.968845, 36.697086>,  <38.548820, 36.064922, 36.744896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334148, 35.968845, 36.697086>,  <37.976364, 35.808720, 36.617405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334148, 35.968845, 36.697086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304498, 0.219098, 0.926972,
		0.327439, -0.889799, 0.317871,
		0.894463, 0.400318, 0.199201,
		38.602486, 36.088940, 36.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172279, 35.621010, 37.269196>,  <37.976364, 35.808720, 36.617405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172279, 35.621010, 37.269196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429413, 35.922413, 37.214077>,  <38.583694, 36.103256, 37.181007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429413, 35.922413, 37.214077>,  <38.172279, 35.621010, 37.269196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429413, 35.922413, 37.214077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067772, 0.235131, 0.969598,
		0.763000, -0.613954, 0.202217,
		0.642836, 0.753508, -0.137796,
		38.622265, 36.148464, 37.172737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711884, 35.651718, 37.839661>,  <38.172279, 35.621010, 37.269196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711884, 35.651718, 37.839661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685772, 36.016792, 37.678291>,  <38.670105, 36.235836, 37.581470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685772, 36.016792, 37.678291>,  <38.711884, 35.651718, 37.839661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685772, 36.016792, 37.678291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098057, 0.396463, 0.912799,
		0.993038, 0.099142, 0.063615,
		-0.065276, 0.912682, -0.403424,
		38.666191, 36.290596, 37.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261585, 36.147034, 38.145950>,  <38.711884, 35.651718, 37.839661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261585, 36.147034, 38.145950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971249, 36.382397, 38.003445>,  <38.797047, 36.523617, 37.917942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971249, 36.382397, 38.003445>,  <39.261585, 36.147034, 38.145950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971249, 36.382397, 38.003445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094876, 0.427339, 0.899099,
		0.681283, 0.686408, -0.254356,
		-0.725845, 0.588409, -0.356263,
		38.753494, 36.558918, 37.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369225, 36.699696, 38.512306>,  <39.261585, 36.147034, 38.145950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369225, 36.699696, 38.512306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013477, 36.795025, 38.356239>,  <38.800030, 36.852222, 38.262600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013477, 36.795025, 38.356239>,  <39.369225, 36.699696, 38.512306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013477, 36.795025, 38.356239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271612, 0.411063, 0.870204,
		0.367770, 0.879904, -0.300855,
		-0.889366, 0.238319, -0.390169,
		38.746666, 36.866520, 38.239189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252007, 37.316174, 38.782341>,  <39.369225, 36.699696, 38.512306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252007, 37.316174, 38.782341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894012, 37.183594, 38.662910>,  <38.679218, 37.104046, 38.591251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894012, 37.183594, 38.662910>,  <39.252007, 37.316174, 38.782341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894012, 37.183594, 38.662910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427599, 0.446628, 0.785928,
		-0.127144, 0.831062, -0.541452,
		-0.894982, -0.331450, -0.298575,
		38.625519, 37.084160, 38.573338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723072, 37.899899, 38.838284>,  <39.252007, 37.316174, 38.782341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723072, 37.899899, 38.838284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493301, 37.572544, 38.844948>,  <38.355438, 37.376129, 38.848946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493301, 37.572544, 38.844948>,  <38.723072, 37.899899, 38.838284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493301, 37.572544, 38.844948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567678, 0.412951, 0.712189,
		-0.589729, 0.399638, -0.701790,
		-0.574423, -0.818389, 0.016663,
		38.320976, 37.327026, 38.849945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112991, 38.172203, 39.024094>,  <38.723072, 37.899899, 38.838284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112991, 38.172203, 39.024094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043255, 37.782459, 39.080986>,  <38.001411, 37.548615, 39.115120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043255, 37.782459, 39.080986>,  <38.112991, 38.172203, 39.024094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043255, 37.782459, 39.080986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685872, 0.223802, 0.692453,
		-0.706529, 0.023174, -0.707304,
		-0.174343, -0.974359, 0.142228,
		37.990952, 37.490150, 39.123653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401318, 38.024460, 38.927818>,  <38.112991, 38.172203, 39.024094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401318, 38.024460, 38.927818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548317, 37.738483, 39.165745>,  <37.636517, 37.566898, 39.308502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548317, 37.738483, 39.165745>,  <37.401318, 38.024460, 38.927818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548317, 37.738483, 39.165745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640195, 0.269460, 0.719404,
		-0.674609, -0.645179, -0.358673,
		0.367496, -0.714937, 0.594821,
		37.658566, 37.524002, 39.344193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734867, 37.739456, 39.259834>,  <37.401318, 38.024460, 38.927818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734867, 37.739456, 39.259834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047695, 37.605259, 39.469910>,  <37.235390, 37.524742, 39.595955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047695, 37.605259, 39.469910>,  <36.734867, 37.739456, 39.259834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047695, 37.605259, 39.469910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487918, 0.194643, 0.850911,
		-0.387698, -0.921715, -0.011470,
		0.782065, -0.335493, 0.525184,
		37.282314, 37.504612, 39.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488186, 37.272388, 39.832535>,  <36.734867, 37.739456, 39.259834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488186, 37.272388, 39.832535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844719, 37.418533, 39.939892>,  <37.058640, 37.506222, 40.004307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844719, 37.418533, 39.939892>,  <36.488186, 37.272388, 39.832535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844719, 37.418533, 39.939892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373639, 0.256749, 0.891333,
		0.256749, -0.894757, 0.365363,
		-0.891333, -0.365363, -0.268396,
		37.112118, 37.528141, 40.020409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667233, 36.976406, 40.574127>,  <36.488186, 37.272388, 39.832535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667233, 36.976406, 40.574127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872303, 37.313141, 40.506634>,  <36.995346, 37.515182, 40.466137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872303, 37.313141, 40.506634>,  <36.667233, 36.976406, 40.574127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872303, 37.313141, 40.506634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199219, 0.307796, 0.930362,
		0.835151, -0.443359, 0.325510,
		0.512675, 0.841840, -0.168731,
		37.026104, 37.565693, 40.456013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120995, 37.021122, 41.097301>,  <36.667233, 36.976406, 40.574127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120995, 37.021122, 41.097301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063763, 37.389870, 40.953259>,  <37.029423, 37.611118, 40.866833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063763, 37.389870, 40.953259>,  <37.120995, 37.021122, 41.097301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063763, 37.389870, 40.953259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216011, 0.325993, 0.920363,
		0.965851, 0.209471, 0.152493,
		-0.143078, 0.921873, -0.360108,
		37.020840, 37.666431, 40.845226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597481, 37.472416, 41.379559>,  <37.120995, 37.021122, 41.097301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597481, 37.472416, 41.379559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291870, 37.704014, 41.265697>,  <37.108501, 37.842972, 41.197380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291870, 37.704014, 41.265697>,  <37.597481, 37.472416, 41.379559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291870, 37.704014, 41.265697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078853, 0.354088, 0.931882,
		0.640346, 0.734430, -0.224878,
		-0.764028, 0.578995, -0.284651,
		37.062660, 37.877712, 41.180302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749882, 38.101868, 41.730778>,  <37.597481, 37.472416, 41.379559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749882, 38.101868, 41.730778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357410, 38.122261, 41.656273>,  <37.121929, 38.134499, 41.611572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357410, 38.122261, 41.656273>,  <37.749882, 38.101868, 41.730778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357410, 38.122261, 41.656273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169094, 0.239005, 0.956182,
		0.093266, 0.969679, -0.225886,
		-0.981177, 0.050983, -0.186257,
		37.063057, 38.137554, 41.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446220, 38.781593, 41.953697>,  <37.749882, 38.101868, 41.730778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446220, 38.781593, 41.953697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142235, 38.521976, 41.967567>,  <36.959843, 38.366207, 41.975891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142235, 38.521976, 41.967567>,  <37.446220, 38.781593, 41.953697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142235, 38.521976, 41.967567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161831, 0.240625, 0.957032,
		-0.629495, 0.721699, -0.287901,
		-0.759965, -0.649039, 0.034679,
		36.914246, 38.327267, 41.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915424, 39.192535, 42.227291>,  <37.446220, 38.781593, 41.953697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915424, 39.192535, 42.227291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746239, 38.832020, 42.264774>,  <36.644726, 38.615711, 42.287266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746239, 38.832020, 42.264774>,  <36.915424, 39.192535, 42.227291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746239, 38.832020, 42.264774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248081, 0.214644, 0.944661,
		-0.871526, 0.376309, -0.314379,
		-0.422964, -0.901288, 0.093712,
		36.619350, 38.561634, 42.292889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229740, 39.276543, 42.394524>,  <36.915424, 39.192535, 42.227291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229740, 39.276543, 42.394524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344467, 38.915985, 42.524273>,  <36.413303, 38.699650, 42.602123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344467, 38.915985, 42.524273>,  <36.229740, 39.276543, 42.394524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344467, 38.915985, 42.524273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237442, 0.261148, 0.935640,
		-0.928094, -0.345377, -0.139128,
		0.286816, -0.901397, 0.324377,
		36.430511, 38.645565, 42.621586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.406506, 38.509430, 43.021679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760429, 38.330902, 43.075222>,  <35.972782, 38.223785, 43.107346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760429, 38.330902, 43.075222>,  <35.406506, 38.509430, 43.021679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760429, 38.330902, 43.075222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178381, -0.059064, 0.982187,
		-0.430460, -0.892924, -0.131874,
		0.884808, -0.446316, 0.133856,
		36.025871, 38.197006, 43.115379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247234, 37.884212, 43.363018>,  <35.406506, 38.509430, 43.021679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247234, 37.884212, 43.363018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625221, 37.986271, 43.444939>,  <35.852013, 38.047504, 43.494091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625221, 37.986271, 43.444939>,  <35.247234, 37.884212, 43.363018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625221, 37.986271, 43.444939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183979, -0.103224, 0.977495,
		0.270544, -0.961377, -0.050601,
		0.944964, 0.255146, 0.204800,
		35.908710, 38.062813, 43.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382904, 37.565060, 43.963993>,  <35.247234, 37.884212, 43.363018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382904, 37.565060, 43.963993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695850, 37.812428, 43.934425>,  <35.883617, 37.960846, 43.916683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.695850, 37.812428, 43.934425>,  <35.382904, 37.565060, 43.963993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695850, 37.812428, 43.934425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021685, 0.091565, 0.995563,
		0.622441, -0.780498, 0.058228,
		0.782366, 0.618416, -0.073919,
		35.930561, 37.997952, 43.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912193, 37.279797, 44.458912>,  <35.382904, 37.565060, 43.963993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912193, 37.279797, 44.458912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970982, 37.673317, 44.417870>,  <36.006252, 37.909431, 44.393246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970982, 37.673317, 44.417870>,  <35.912193, 37.279797, 44.458912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970982, 37.673317, 44.417870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071027, 0.092965, 0.993133,
		0.986588, -0.153245, -0.056214,
		0.146967, 0.983805, -0.102603,
		36.015072, 37.968460, 44.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530594, 37.513100, 44.804558>,  <35.912193, 37.279797, 44.458912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530594, 37.513100, 44.804558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329651, 37.856934, 44.767124>,  <36.209084, 38.063232, 44.744663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329651, 37.856934, 44.767124>,  <36.530594, 37.513100, 44.804558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329651, 37.856934, 44.767124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198041, 0.219734, 0.955247,
		0.841674, 0.461344, -0.280618,
		-0.502359, 0.859580, -0.093579,
		36.178944, 38.114807, 44.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901325, 38.040760, 45.163116>,  <36.530594, 37.513100, 44.804558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901325, 38.040760, 45.163116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520771, 38.162491, 45.144169>,  <36.292439, 38.235531, 45.132801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520771, 38.162491, 45.144169>,  <36.901325, 38.040760, 45.163116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520771, 38.162491, 45.144169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023678, 0.225615, 0.973929,
		0.307084, 0.925462, -0.221854,
		-0.951388, 0.304330, -0.047370,
		36.235355, 38.253792, 45.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807907, 38.624168, 45.601841>,  <36.901325, 38.040760, 45.163116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807907, 38.624168, 45.601841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421398, 38.534332, 45.551453>,  <36.189491, 38.480431, 45.521221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421398, 38.534332, 45.551453>,  <36.807907, 38.624168, 45.601841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421398, 38.534332, 45.551453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180912, 0.243956, 0.952763,
		-0.183254, 0.943421, -0.276360,
		-0.966276, -0.224594, -0.125970,
		36.131516, 38.466953, 45.513660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486729, 39.259163, 45.818584>,  <36.807907, 38.624168, 45.601841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486729, 39.259163, 45.818584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266151, 38.928150, 45.860744>,  <36.133804, 38.729542, 45.886040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266151, 38.928150, 45.860744>,  <36.486729, 39.259163, 45.818584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266151, 38.928150, 45.860744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243875, 0.280743, 0.928282,
		-0.797770, 0.486190, -0.356627,
		-0.551443, -0.827528, 0.105399,
		36.100719, 38.679893, 45.892365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883087, 39.492016, 46.107418>,  <36.486729, 39.259163, 45.818584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883087, 39.492016, 46.107418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827290, 39.103909, 46.186535>,  <35.793812, 38.871044, 46.234005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827290, 39.103909, 46.186535>,  <35.883087, 39.492016, 46.107418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827290, 39.103909, 46.186535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278481, 0.230119, 0.932467,
		-0.950258, 0.074996, -0.302302,
		-0.139497, -0.970269, 0.197787,
		35.785442, 38.812828, 46.245872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255287, 39.450085, 46.270710>,  <35.883087, 39.492016, 46.107418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255287, 39.450085, 46.270710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409908, 39.114918, 46.424839>,  <35.502682, 38.913818, 46.517315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409908, 39.114918, 46.424839>,  <35.255287, 39.450085, 46.270710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409908, 39.114918, 46.424839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250499, 0.306702, 0.918251,
		-0.887597, -0.451472, -0.091342,
		0.386550, -0.837918, 0.385321,
		35.525875, 38.863541, 46.540436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870018, 39.369511, 46.876972>,  <35.255287, 39.450085, 46.270710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870018, 39.369511, 46.876972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164463, 39.108597, 46.949265>,  <35.341129, 38.952049, 46.992638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164463, 39.108597, 46.949265>,  <34.870018, 39.369511, 46.876972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164463, 39.108597, 46.949265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070119, 0.192081, 0.978871,
		-0.673220, -0.733229, 0.095655,
		0.736110, -0.652288, 0.180726,
		35.385296, 38.912910, 47.003483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580761, 38.882496, 47.365417>,  <34.870018, 39.369511, 46.876972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580761, 38.882496, 47.365417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979183, 38.864880, 47.396206>,  <35.218239, 38.854309, 47.414677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979183, 38.864880, 47.396206>,  <34.580761, 38.882496, 47.365417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979183, 38.864880, 47.396206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083890, -0.186633, 0.978842,
		-0.028747, -0.981442, -0.189592,
		0.996060, -0.044044, 0.076968,
		35.278000, 38.851665, 47.419296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724827, 38.284000, 47.800041>,  <34.580761, 38.882496, 47.365417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724827, 38.284000, 47.800041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047119, 38.520332, 47.816666>,  <35.240494, 38.662132, 47.826641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047119, 38.520332, 47.816666>,  <34.724827, 38.284000, 47.800041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047119, 38.520332, 47.816666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052039, -0.140510, 0.988711,
		0.589996, -0.794469, -0.143959,
		0.805728, 0.590826, 0.041557,
		35.288837, 38.697578, 47.829132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063267, 38.032497, 48.376823>,  <34.724827, 38.284000, 47.800041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063267, 38.032497, 48.376823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223080, 38.396320, 48.331078>,  <35.318970, 38.614613, 48.303631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223080, 38.396320, 48.331078>,  <35.063267, 38.032497, 48.376823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223080, 38.396320, 48.331078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138871, 0.063263, 0.988288,
		0.906138, -0.410738, -0.101035,
		0.399536, 0.909556, -0.114364,
		35.342941, 38.669186, 48.296768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632835, 37.977947, 48.702091>,  <35.063267, 38.032497, 48.376823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632835, 37.977947, 48.702091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571255, 38.372410, 48.677460>,  <35.534306, 38.609089, 48.662682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571255, 38.372410, 48.677460>,  <35.632835, 37.977947, 48.702091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571255, 38.372410, 48.677460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200639, 0.092220, 0.975315,
		0.967493, 0.137800, -0.212059,
		-0.153955, 0.986157, -0.061575,
		35.525070, 38.668259, 48.658989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232918, 38.316872, 49.018250>,  <35.632835, 37.977947, 48.702091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232918, 38.316872, 49.018250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940651, 38.589397, 49.035870>,  <35.765293, 38.752914, 49.046444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940651, 38.589397, 49.035870>,  <36.232918, 38.316872, 49.018250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940651, 38.589397, 49.035870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233403, 0.188630, 0.953909,
		0.641602, 0.707269, -0.296845,
		-0.730664, 0.681314, 0.044054,
		35.721451, 38.793793, 49.049088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531937, 38.753754, 49.429302>,  <36.232918, 38.316872, 49.018250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531937, 38.753754, 49.429302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143250, 38.840908, 49.465702>,  <35.910038, 38.893200, 49.487541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143250, 38.840908, 49.465702>,  <36.531937, 38.753754, 49.429302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143250, 38.840908, 49.465702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138872, 0.215637, 0.966548,
		0.190978, 0.951853, -0.239798,
		-0.971721, 0.217890, 0.091004,
		35.851734, 38.906277, 49.493004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550045, 39.208454, 50.024387>,  <36.531937, 38.753754, 49.429302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550045, 39.208454, 50.024387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154274, 39.152744, 50.008240>,  <35.916809, 39.119320, 49.998550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154274, 39.152744, 50.008240>,  <36.550045, 39.208454, 50.024387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154274, 39.152744, 50.008240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045204, 0.031724, 0.998474,
		-0.137781, 0.989746, -0.037684,
		-0.989431, -0.139274, -0.040369,
		35.857445, 39.110962, 49.996128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197311, 39.747818, 50.494011>,  <36.550045, 39.208454, 50.024387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197311, 39.747818, 50.494011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970314, 39.421402, 50.450127>,  <35.834114, 39.225552, 50.423798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970314, 39.421402, 50.450127>,  <36.197311, 39.747818, 50.494011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970314, 39.421402, 50.450127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150047, -0.028517, 0.988267,
		-0.809591, 0.577296, -0.106261,
		-0.567493, -0.816037, -0.109709,
		35.800068, 39.176590, 50.417213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657085, 39.878078, 50.855942>,  <36.197311, 39.747818, 50.494011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657085, 39.878078, 50.855942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621880, 39.482147, 50.811222>,  <35.600758, 39.244591, 50.784389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621880, 39.482147, 50.811222>,  <35.657085, 39.878078, 50.855942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621880, 39.482147, 50.811222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306139, -0.079926, 0.948626,
		-0.947909, 0.117720, -0.295989,
		-0.088015, -0.989825, -0.111801,
		35.595474, 39.185200, 50.777683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028061, 39.733925, 51.035942>,  <35.657085, 39.878078, 50.855942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028061, 39.733925, 51.035942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204460, 39.378956, 51.089622>,  <35.310299, 39.165974, 51.121830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204460, 39.378956, 51.089622>,  <35.028061, 39.733925, 51.035942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204460, 39.378956, 51.089622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419400, -0.071565, 0.904976,
		-0.793491, -0.455371, -0.403744,
		0.440994, -0.887421, 0.134196,
		35.336758, 39.112728, 51.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498756, 39.266712, 51.389099>,  <35.028061, 39.733925, 51.035942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498756, 39.266712, 51.389099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853111, 39.099998, 51.470573>,  <35.065723, 38.999969, 51.519459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853111, 39.099998, 51.470573>,  <34.498756, 39.266712, 51.389099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853111, 39.099998, 51.470573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270174, -0.106615, 0.956890,
		-0.377104, -0.902730, -0.207054,
		0.885889, -0.416788, 0.203690,
		35.118877, 38.974964, 51.531681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425472, 38.557632, 51.603516>,  <34.498756, 39.266712, 51.389099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425472, 38.557632, 51.603516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731094, 38.768856, 51.751774>,  <34.914467, 38.895592, 51.840729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731094, 38.768856, 51.751774>,  <34.425472, 38.557632, 51.603516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731094, 38.768856, 51.751774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376852, -0.101003, 0.920750,
		0.523649, -0.843178, 0.121830,
		0.764051, 0.528062, 0.370644,
		34.960308, 38.927273, 51.862968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679115, 38.202343, 52.213238>,  <34.425472, 38.557632, 51.603516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679115, 38.202343, 52.213238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761700, 38.593456, 52.227707>,  <34.811249, 38.828125, 52.236389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761700, 38.593456, 52.227707>,  <34.679115, 38.202343, 52.213238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761700, 38.593456, 52.227707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358876, 0.041283, 0.932472,
		0.910265, -0.205500, 0.359427,
		0.206461, 0.977786, 0.036170,
		34.823639, 38.886791, 52.238560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428024, 37.517365, 52.393341>,  <34.679115, 38.202343, 52.213238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428024, 37.517365, 52.393341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213943, 37.186905, 52.463806>,  <34.085495, 36.988628, 52.506084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213943, 37.186905, 52.463806>,  <34.428024, 37.517365, 52.393341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213943, 37.186905, 52.463806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056429, -0.243049, -0.968371,
		0.842836, -0.508335, 0.176699,
		-0.535204, -0.826149, 0.176166,
		34.053383, 36.939060, 52.516655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637924, 37.021591, 51.978466>,  <34.428024, 37.517365, 52.393341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637924, 37.021591, 51.978466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284779, 36.861740, 52.077129>,  <34.072891, 36.765827, 52.136326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284779, 36.861740, 52.077129>,  <34.637924, 37.021591, 51.978466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284779, 36.861740, 52.077129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103701, -0.346360, -0.932352,
		0.458029, -0.848722, 0.264348,
		-0.882868, -0.399631, 0.246657,
		34.019917, 36.741852, 52.151127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694817, 36.340775, 51.764935>,  <34.637924, 37.021591, 51.978466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694817, 36.340775, 51.764935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317135, 36.472519, 51.764748>,  <34.090527, 36.551567, 51.764637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317135, 36.472519, 51.764748>,  <34.694817, 36.340775, 51.764935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317135, 36.472519, 51.764748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069033, -0.199281, -0.977508,
		-0.322047, -0.922934, 0.210898,
		-0.944203, 0.329362, -0.000465,
		34.033875, 36.571327, 51.764606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335827, 35.822258, 51.380146>,  <34.694817, 36.340775, 51.764935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335827, 35.822258, 51.380146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123657, 36.160835, 51.361443>,  <33.996357, 36.363983, 51.350220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.123657, 36.160835, 51.361443>,  <34.335827, 35.822258, 51.380146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123657, 36.160835, 51.361443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011820, -0.062541, -0.997972,
		-0.847653, -0.528792, 0.043178,
		-0.530420, 0.846444, -0.046762,
		33.964531, 36.414768, 51.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736454, 35.657051, 50.938370>,  <34.335827, 35.822258, 51.380146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736454, 35.657051, 50.938370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774090, 36.055264, 50.941353>,  <33.796673, 36.294193, 50.943142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774090, 36.055264, 50.941353>,  <33.736454, 35.657051, 50.938370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774090, 36.055264, 50.941353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060328, 0.001772, -0.998177,
		-0.993734, 0.094372, -0.059892,
		0.094094, 0.995535, 0.007454,
		33.802319, 36.353924, 50.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143421, 35.920712, 50.534142>,  <33.736454, 35.657051, 50.938370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143421, 35.920712, 50.534142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422714, 36.206646, 50.549519>,  <33.590290, 36.378204, 50.558743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422714, 36.206646, 50.549519>,  <33.143421, 35.920712, 50.534142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422714, 36.206646, 50.549519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025188, 0.078198, -0.996620,
		-0.715423, 0.694909, 0.072606,
		0.698237, 0.714834, 0.038441,
		33.632187, 36.421097, 50.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910275, 36.373470, 50.068180>,  <33.143421, 35.920712, 50.534142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910275, 36.373470, 50.068180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294994, 36.474617, 50.110146>,  <33.525826, 36.535305, 50.135323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294994, 36.474617, 50.110146>,  <32.910275, 36.373470, 50.068180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294994, 36.474617, 50.110146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086810, 0.081741, -0.992866,
		-0.259636, 0.964042, 0.056667,
		0.961797, 0.252865, 0.104912,
		33.583534, 36.550476, 50.141621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985859, 36.674339, 49.486572>,  <32.910275, 36.373470, 50.068180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985859, 36.674339, 49.486572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366421, 36.666904, 49.609524>,  <33.594757, 36.662441, 49.683296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.366421, 36.666904, 49.609524>,  <32.985859, 36.674339, 49.486572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366421, 36.666904, 49.609524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296918, 0.320086, -0.899658,
		-0.081665, 0.947206, 0.310051,
		0.951404, -0.018589, 0.307383,
		33.651840, 36.661327, 49.701740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218357, 37.125763, 49.103451>,  <32.985859, 36.674339, 49.486572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218357, 37.125763, 49.103451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535027, 36.909340, 49.216946>,  <33.725029, 36.779488, 49.285042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535027, 36.909340, 49.216946>,  <33.218357, 37.125763, 49.103451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535027, 36.909340, 49.216946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416815, 0.138793, -0.898333,
		0.446667, 0.829455, 0.335399,
		0.791678, -0.541055, 0.283735,
		33.772530, 36.747025, 49.302067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768265, 37.497894, 48.971550>,  <33.218357, 37.125763, 49.103451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768265, 37.497894, 48.971550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899246, 37.120018, 48.978809>,  <33.977833, 36.893291, 48.983166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.899246, 37.120018, 48.978809>,  <33.768265, 37.497894, 48.971550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899246, 37.120018, 48.978809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311458, 0.089788, -0.946008,
		0.892059, 0.315424, 0.323634,
		0.327452, -0.944694, 0.018146,
		33.997482, 36.836609, 48.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403221, 37.513874, 48.541256>,  <33.768265, 37.497894, 48.971550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403221, 37.513874, 48.541256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325554, 37.122517, 48.569660>,  <34.278954, 36.887703, 48.586704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325554, 37.122517, 48.569660>,  <34.403221, 37.513874, 48.541256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325554, 37.122517, 48.569660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237821, -0.117178, -0.964215,
		0.951703, -0.170334, 0.255435,
		-0.194170, -0.978394, 0.071009,
		34.267303, 36.828999, 48.590961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975807, 37.090858, 48.271145>,  <34.403221, 37.513874, 48.541256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975807, 37.090858, 48.271145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656143, 36.852123, 48.242500>,  <34.464344, 36.708881, 48.225311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656143, 36.852123, 48.242500>,  <34.975807, 37.090858, 48.271145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656143, 36.852123, 48.242500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223951, -0.185056, -0.956870,
		0.557843, -0.780730, 0.281552,
		-0.799160, -0.596837, -0.071613,
		34.416393, 36.673073, 48.221016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243797, 36.467827, 47.999702>,  <34.975807, 37.090858, 48.271145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243797, 36.467827, 47.999702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853992, 36.508411, 47.919674>,  <34.620110, 36.532761, 47.871658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.853992, 36.508411, 47.919674>,  <35.243797, 36.467827, 47.999702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853992, 36.508411, 47.919674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207724, 0.071464, -0.975573,
		-0.084685, -0.992269, -0.090719,
		-0.974515, 0.101461, -0.200067,
		34.561638, 36.538849, 47.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061077, 35.880188, 47.530693>,  <35.243797, 36.467827, 47.999702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061077, 35.880188, 47.530693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754715, 36.135002, 47.495884>,  <34.570896, 36.287891, 47.474998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754715, 36.135002, 47.495884>,  <35.061077, 35.880188, 47.530693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754715, 36.135002, 47.495884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080371, -0.039431, -0.995985,
		-0.637906, -0.769828, -0.020998,
		-0.765909, 0.637033, -0.087025,
		34.524940, 36.326111, 47.469776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571377, 35.538116, 47.064407>,  <35.061077, 35.880188, 47.530693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571377, 35.538116, 47.064407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533104, 35.935917, 47.081482>,  <34.510139, 36.174595, 47.091728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533104, 35.935917, 47.081482>,  <34.571377, 35.538116, 47.064407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533104, 35.935917, 47.081482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232906, 0.064058, -0.970387,
		-0.967781, -0.082904, -0.237753,
		-0.095679, 0.994497, 0.042685,
		34.504402, 36.234264, 47.094288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936699, 35.621124, 46.581722>,  <34.571377, 35.538116, 47.064407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936699, 35.621124, 46.581722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135254, 35.966850, 46.614101>,  <34.254387, 36.174286, 46.633530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135254, 35.966850, 46.614101>,  <33.936699, 35.621124, 46.581722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135254, 35.966850, 46.614101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179859, 0.193621, -0.964449,
		-0.849265, 0.464181, 0.251567,
		0.496387, 0.864319, 0.080949,
		34.284168, 36.226147, 46.638386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511547, 36.181000, 46.261948>,  <33.936699, 35.621124, 46.581722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511547, 36.181000, 46.261948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886276, 36.319401, 46.241364>,  <34.111115, 36.402443, 46.229015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886276, 36.319401, 46.241364>,  <33.511547, 36.181000, 46.261948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886276, 36.319401, 46.241364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080058, 0.068873, -0.994408,
		-0.340526, 0.935701, 0.092223,
		0.936820, 0.346005, -0.051458,
		34.167324, 36.423203, 46.225925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428459, 36.825821, 45.942448>,  <33.511547, 36.181000, 46.261948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428459, 36.825821, 45.942448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815319, 36.728500, 45.913006>,  <34.047436, 36.670109, 45.895340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.815319, 36.728500, 45.913006>,  <33.428459, 36.825821, 45.942448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815319, 36.728500, 45.913006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031438, 0.172859, -0.984445,
		0.252240, 0.954423, 0.159532,
		0.967154, -0.243301, -0.073607,
		34.105465, 36.655510, 45.890923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601803, 37.230762, 45.362602>,  <33.428459, 36.825821, 45.942448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601803, 37.230762, 45.362602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876797, 36.941589, 45.390118>,  <34.041794, 36.768085, 45.406628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876797, 36.941589, 45.390118>,  <33.601803, 37.230762, 45.362602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876797, 36.941589, 45.390118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058290, -0.039485, -0.997518,
		0.723853, 0.689791, 0.014994,
		0.687487, -0.722931, 0.068789,
		34.083042, 36.724709, 45.410755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179768, 37.428345, 44.930294>,  <33.601803, 37.230762, 45.362602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179768, 37.428345, 44.930294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238602, 37.037174, 44.989655>,  <34.273903, 36.802471, 45.025269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238602, 37.037174, 44.989655>,  <34.179768, 37.428345, 44.930294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238602, 37.037174, 44.989655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299860, -0.098885, -0.948844,
		0.942576, 0.184058, 0.278698,
		0.147083, -0.977929, 0.148398,
		34.282726, 36.743797, 45.034176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.330261, 42.564949, 38.256607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962463, 42.698715, 38.173958>,  <42.741783, 42.778976, 38.124367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962463, 42.698715, 38.173958>,  <43.330261, 42.564949, 38.256607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962463, 42.698715, 38.173958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238449, -0.892370, -0.383168,
		-0.312525, -0.303051, 0.900271,
		-0.919495, 0.334418, -0.206626,
		42.686615, 42.799042, 38.111969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900627, 42.138607, 38.536957>,  <43.330261, 42.564949, 38.256607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900627, 42.138607, 38.536957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690067, 42.313877, 38.245502>,  <42.563732, 42.419041, 38.070629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.690067, 42.313877, 38.245502>,  <42.900627, 42.138607, 38.536957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690067, 42.313877, 38.245502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243064, -0.898763, -0.364889,
		-0.814755, -0.014971, 0.579612,
		-0.526397, 0.438178, -0.728633,
		42.532150, 42.445332, 38.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372520, 41.723404, 38.596802>,  <42.900627, 42.138607, 38.536957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372520, 41.723404, 38.596802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399773, 41.835995, 38.213943>,  <42.416126, 41.903549, 37.984230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399773, 41.835995, 38.213943>,  <42.372520, 41.723404, 38.596802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399773, 41.835995, 38.213943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321929, -0.901853, -0.288135,
		-0.944309, 0.327765, 0.029169,
		0.068135, 0.281479, -0.957145,
		42.420212, 41.920437, 37.926800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898857, 41.387802, 38.260757>,  <42.372520, 41.723404, 38.596802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898857, 41.387802, 38.260757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.094311, 41.517792, 37.936874>,  <42.211582, 41.595787, 37.742542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.094311, 41.517792, 37.936874>,  <41.898857, 41.387802, 38.260757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094311, 41.517792, 37.936874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147986, -0.883729, -0.443985,
		-0.859849, 0.336771, -0.383726,
		0.488631, 0.324974, -0.809711,
		42.240898, 41.615284, 37.693962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369118, 41.224442, 37.728352>,  <41.898857, 41.387802, 38.260757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369118, 41.224442, 37.728352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714733, 41.287716, 37.537182>,  <41.922104, 41.325680, 37.422478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714733, 41.287716, 37.537182>,  <41.369118, 41.224442, 37.728352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714733, 41.287716, 37.537182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093721, -0.882208, -0.461439,
		-0.494627, 0.443492, -0.747435,
		0.864037, 0.158190, -0.477928,
		41.973946, 41.335175, 37.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209370, 41.160881, 37.007885>,  <41.369118, 41.224442, 37.728352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209370, 41.160881, 37.007885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599346, 41.088554, 37.059727>,  <41.833332, 41.045158, 37.090832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.599346, 41.088554, 37.059727>,  <41.209370, 41.160881, 37.007885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599346, 41.088554, 37.059727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034966, -0.699873, -0.713411,
		0.219700, 0.691002, -0.688657,
		0.974941, -0.180816, 0.129601,
		41.891827, 41.034309, 37.098606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497761, 41.013386, 36.325474>,  <41.209370, 41.160881, 37.007885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497761, 41.013386, 36.325474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763897, 40.854347, 36.578213>,  <41.923580, 40.758923, 36.729855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763897, 40.854347, 36.578213>,  <41.497761, 41.013386, 36.325474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763897, 40.854347, 36.578213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029956, -0.831474, -0.554756,
		0.745935, 0.388032, -0.541307,
		0.665345, -0.397596, 0.631849,
		41.963501, 40.735069, 36.767769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848747, 40.640549, 35.856373>,  <41.497761, 41.013386, 36.325474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848747, 40.640549, 35.856373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001019, 40.505192, 36.200600>,  <42.092381, 40.423977, 36.407135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001019, 40.505192, 36.200600>,  <41.848747, 40.640549, 35.856373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001019, 40.505192, 36.200600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265987, -0.851231, -0.452389,
		0.885626, 0.401115, -0.234038,
		0.380681, -0.338397, 0.860564,
		42.115223, 40.403671, 36.458767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505814, 40.273552, 35.669392>,  <41.848747, 40.640549, 35.856373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505814, 40.273552, 35.669392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368301, 40.117535, 36.011078>,  <42.285793, 40.023926, 36.216091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368301, 40.117535, 36.011078>,  <42.505814, 40.273552, 35.669392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368301, 40.117535, 36.011078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188246, -0.919819, -0.344234,
		0.919989, 0.042463, 0.389636,
		-0.343778, -0.390039, 0.854217,
		42.265167, 40.000523, 36.267342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059151, 39.759884, 35.848186>,  <42.505814, 40.273552, 35.669392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059151, 39.759884, 35.848186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772499, 39.647820, 36.103672>,  <42.600506, 39.580582, 36.256962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.772499, 39.647820, 36.103672>,  <43.059151, 39.759884, 35.848186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772499, 39.647820, 36.103672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071739, -0.940529, -0.332053,
		0.693752, -0.192139, 0.694111,
		-0.716632, -0.280158, 0.638710,
		42.557510, 39.563774, 36.295284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279999, 39.188877, 36.155235>,  <43.059151, 39.759884, 35.848186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279999, 39.188877, 36.155235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881462, 39.163414, 36.178013>,  <42.642338, 39.148136, 36.191681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881462, 39.163414, 36.178013>,  <43.279999, 39.188877, 36.155235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881462, 39.163414, 36.178013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045112, -0.958339, -0.282047,
		0.072531, -0.278448, 0.957709,
		-0.996345, -0.063661, 0.056948,
		42.582558, 39.144314, 36.195099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258175, 38.758076, 36.592644>,  <43.279999, 39.188877, 36.155235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258175, 38.758076, 36.592644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891647, 38.750660, 36.432632>,  <42.671730, 38.746212, 36.336624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891647, 38.750660, 36.432632>,  <43.258175, 38.758076, 36.592644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891647, 38.750660, 36.432632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062194, -0.993395, -0.096430,
		-0.395598, -0.113240, 0.911416,
		-0.916316, -0.018537, -0.400028,
		42.616753, 38.745098, 36.312626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874451, 38.221054, 36.895477>,  <43.258175, 38.758076, 36.592644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874451, 38.221054, 36.895477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715687, 38.288872, 36.534653>,  <42.620426, 38.329563, 36.318157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.715687, 38.288872, 36.534653>,  <42.874451, 38.221054, 36.895477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715687, 38.288872, 36.534653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097025, -0.969535, -0.224919,
		-0.912714, -0.176795, 0.368370,
		-0.396912, 0.169546, -0.902062,
		42.596615, 38.339737, 36.264034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327549, 37.797058, 36.841854>,  <42.874451, 38.221054, 36.895477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327549, 37.797058, 36.841854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410568, 37.894203, 36.462814>,  <42.460381, 37.952488, 36.235390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410568, 37.894203, 36.462814>,  <42.327549, 37.797058, 36.841854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410568, 37.894203, 36.462814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148656, -0.965272, -0.214828,
		-0.966863, -0.096279, -0.236445,
		0.207550, 0.242858, -0.947598,
		42.472832, 37.967060, 36.178535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017769, 37.347164, 36.387791>,  <42.327549, 37.797058, 36.841854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017769, 37.347164, 36.387791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271111, 37.461113, 36.099983>,  <42.423115, 37.529484, 35.927299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271111, 37.461113, 36.099983>,  <42.017769, 37.347164, 36.387791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271111, 37.461113, 36.099983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113700, -0.953944, -0.277602,
		-0.765465, 0.094011, -0.636573,
		0.633352, 0.284873, -0.719522,
		42.461117, 37.546574, 35.884125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733536, 36.995579, 35.898323>,  <42.017769, 37.347164, 36.387791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733536, 36.995579, 35.898323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104786, 37.076775, 35.773506>,  <42.327538, 37.125492, 35.698616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104786, 37.076775, 35.773506>,  <41.733536, 36.995579, 35.898323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104786, 37.076775, 35.773506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035335, -0.882493, -0.468996,
		-0.370575, 0.424263, -0.826241,
		0.928130, 0.202994, -0.312039,
		42.383224, 37.137672, 35.679893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791637, 36.799099, 35.209618>,  <41.733536, 36.995579, 35.898323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791637, 36.799099, 35.209618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167191, 36.795784, 35.347275>,  <42.392521, 36.793797, 35.429867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167191, 36.795784, 35.347275>,  <41.791637, 36.799099, 35.209618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167191, 36.795784, 35.347275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158200, -0.877503, -0.452727,
		0.305735, 0.479500, -0.822561,
		0.938882, -0.008285, 0.344140,
		42.448856, 36.793297, 35.450516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166416, 36.441246, 34.673080>,  <41.791637, 36.799099, 35.209618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166416, 36.441246, 34.673080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430679, 36.435410, 34.973301>,  <42.589237, 36.431908, 35.153431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430679, 36.435410, 34.973301>,  <42.166416, 36.441246, 34.673080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430679, 36.435410, 34.973301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451464, -0.791077, -0.412767,
		0.599762, 0.611542, -0.516044,
		0.660656, -0.014587, 0.750547,
		42.628876, 36.431034, 35.198463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873493, 36.521461, 34.355965>,  <42.166416, 36.441246, 34.673080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873493, 36.521461, 34.355965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945869, 36.336239, 34.703030>,  <42.989296, 36.225105, 34.911270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945869, 36.336239, 34.703030>,  <42.873493, 36.521461, 34.355965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945869, 36.336239, 34.703030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528383, -0.698319, -0.482868,
		0.829501, 0.545829, 0.118316,
		0.180941, -0.463056, 0.867663,
		43.000153, 36.197323, 34.963329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589005, 36.466587, 34.411697>,  <42.873493, 36.521461, 34.355965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589005, 36.466587, 34.411697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441566, 36.188450, 34.658482>,  <43.353104, 36.021568, 34.806553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441566, 36.188450, 34.658482>,  <43.589005, 36.466587, 34.411697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441566, 36.188450, 34.658482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588695, -0.688248, -0.423974,
		0.719428, 0.206928, 0.663027,
		-0.368595, -0.695339, 0.616962,
		43.330990, 35.979847, 34.843571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103119, 36.092274, 34.623421>,  <43.589005, 36.466587, 34.411697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103119, 36.092274, 34.623421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796837, 35.848660, 34.706150>,  <43.613068, 35.702492, 34.755787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.796837, 35.848660, 34.706150>,  <44.103119, 36.092274, 34.623421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796837, 35.848660, 34.706150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565395, -0.790639, -0.234986,
		0.306637, -0.062992, 0.949740,
		-0.765704, -0.609034, 0.206823,
		43.567127, 35.665951, 34.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259708, 36.696278, 34.275852>,  <44.103119, 36.092274, 34.623421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259708, 36.696278, 34.275852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642693, 36.798714, 34.222645>,  <44.872482, 36.860176, 34.190720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642693, 36.798714, 34.222645>,  <44.259708, 36.696278, 34.275852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642693, 36.798714, 34.222645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096879, 0.719444, 0.687761,
		0.271821, -0.645617, 0.713647,
		0.957459, 0.256085, -0.133013,
		44.929932, 36.875538, 34.182739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553108, 36.689934, 34.891785>,  <44.259708, 36.696278, 34.275852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553108, 36.689934, 34.891785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817879, 36.933434, 34.716843>,  <44.976742, 37.079533, 34.611877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817879, 36.933434, 34.716843>,  <44.553108, 36.689934, 34.891785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817879, 36.933434, 34.716843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006962, 0.588444, 0.808508,
		0.749535, -0.532130, 0.393746,
		0.661929, 0.608746, -0.437354,
		45.016457, 37.116058, 34.585636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916283, 36.841640, 35.423458>,  <44.553108, 36.689934, 34.891785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916283, 36.841640, 35.423458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986824, 37.136593, 35.162640>,  <45.029148, 37.313564, 35.006149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986824, 37.136593, 35.162640>,  <44.916283, 36.841640, 35.423458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986824, 37.136593, 35.162640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191893, 0.623968, 0.757524,
		0.965442, -0.258713, -0.031462,
		0.176350, 0.737382, -0.652049,
		45.039730, 37.357807, 34.967026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288902, 37.217342, 35.803375>,  <44.916283, 36.841640, 35.423458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288902, 37.217342, 35.803375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248657, 37.453621, 35.483139>,  <45.224510, 37.595390, 35.290997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.248657, 37.453621, 35.483139>,  <45.288902, 37.217342, 35.803375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248657, 37.453621, 35.483139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233037, 0.796284, 0.558233,
		0.967249, -0.130403, -0.217771,
		-0.100612, 0.590700, -0.800594,
		45.218475, 37.630833, 35.242962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875584, 37.618279, 35.748276>,  <45.288902, 37.217342, 35.803375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875584, 37.618279, 35.748276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580357, 37.825020, 35.574783>,  <45.403221, 37.949066, 35.470688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580357, 37.825020, 35.574783>,  <45.875584, 37.618279, 35.748276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580357, 37.825020, 35.574783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098218, 0.718271, 0.688796,
		0.667540, 0.465778, -0.580897,
		-0.738067, 0.516854, -0.433727,
		45.358936, 37.980076, 35.444664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126099, 38.336876, 35.597836>,  <45.875584, 37.618279, 35.748276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126099, 38.336876, 35.597836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729244, 38.310364, 35.640305>,  <45.491131, 38.294456, 35.665787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729244, 38.310364, 35.640305>,  <46.126099, 38.336876, 35.597836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729244, 38.310364, 35.640305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031126, 0.690984, 0.722199,
		-0.121228, 0.719825, -0.683488,
		-0.992137, -0.066277, 0.106172,
		45.431602, 38.290482, 35.672157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029724, 38.814152, 36.013672>,  <46.126099, 38.336876, 35.597836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029724, 38.814152, 36.013672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649586, 38.689888, 36.006340>,  <45.421501, 38.615330, 36.001942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.649586, 38.689888, 36.006340>,  <46.029724, 38.814152, 36.013672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.649586, 38.689888, 36.006340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245578, 0.712469, 0.657327,
		-0.191146, 0.629188, -0.753382,
		-0.950344, -0.310660, -0.018329,
		45.364483, 38.596691, 36.000843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562031, 39.423798, 36.060028>,  <46.029724, 38.814152, 36.013672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562031, 39.423798, 36.060028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.324936, 39.118092, 36.161659>,  <45.182678, 38.934666, 36.222637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.324936, 39.118092, 36.161659>,  <45.562031, 39.423798, 36.060028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324936, 39.118092, 36.161659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460514, 0.580424, 0.671591,
		-0.660751, 0.281068, -0.695995,
		-0.592735, -0.764270, 0.254080,
		45.147114, 38.888809, 36.237885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823719, 39.735989, 36.095890>,  <45.562031, 39.423798, 36.060028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823719, 39.735989, 36.095890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848198, 39.412167, 36.329430>,  <44.862885, 39.217873, 36.469551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848198, 39.412167, 36.329430>,  <44.823719, 39.735989, 36.095890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848198, 39.412167, 36.329430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485969, 0.486761, 0.725877,
		-0.871831, -0.328152, -0.363630,
		0.061197, -0.809555, 0.583845,
		44.866558, 39.169300, 36.504581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164810, 39.739697, 36.529049>,  <44.823719, 39.735989, 36.095890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164810, 39.739697, 36.529049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373508, 39.457027, 36.720211>,  <44.498726, 39.287426, 36.834908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373508, 39.457027, 36.720211>,  <44.164810, 39.739697, 36.529049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373508, 39.457027, 36.720211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390853, 0.299938, 0.870213,
		-0.758299, -0.640820, -0.119715,
		0.521743, -0.706673, 0.477910,
		44.530033, 39.245026, 36.863583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683537, 39.432976, 36.923244>,  <44.164810, 39.739697, 36.529049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683537, 39.432976, 36.923244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046906, 39.396481, 37.086437>,  <44.264927, 39.374584, 37.184353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046906, 39.396481, 37.086437>,  <43.683537, 39.432976, 36.923244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046906, 39.396481, 37.086437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356016, 0.342721, 0.869365,
		-0.219146, -0.934996, 0.278851,
		0.908421, -0.091242, 0.407979,
		44.319431, 39.369106, 37.208832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569519, 39.099445, 37.613106>,  <43.683537, 39.432976, 36.923244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569519, 39.099445, 37.613106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934353, 39.256931, 37.658878>,  <44.153252, 39.351421, 37.686340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934353, 39.256931, 37.658878>,  <43.569519, 39.099445, 37.613106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934353, 39.256931, 37.658878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281543, 0.398536, 0.872870,
		0.298056, -0.828347, 0.474346,
		0.912083, 0.393713, 0.114430,
		44.207977, 39.375046, 37.693207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592083, 38.986477, 38.263729>,  <43.569519, 39.099445, 37.613106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592083, 38.986477, 38.263729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892078, 39.235012, 38.172989>,  <44.072075, 39.384132, 38.118546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.892078, 39.235012, 38.172989>,  <43.592083, 38.986477, 38.263729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892078, 39.235012, 38.172989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200720, 0.540564, 0.817007,
		0.630267, -0.567209, 0.530130,
		0.749984, 0.621340, -0.226850,
		44.117073, 39.421413, 38.104935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157211, 39.004219, 38.761013>,  <43.592083, 38.986477, 38.263729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157211, 39.004219, 38.761013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183594, 39.360615, 38.581329>,  <44.199425, 39.574451, 38.473518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.183594, 39.360615, 38.581329>,  <44.157211, 39.004219, 38.761013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183594, 39.360615, 38.581329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027359, 0.451633, 0.891784,
		0.997447, -0.046533, 0.054167,
		0.065961, 0.890990, -0.449207,
		44.203381, 39.627911, 38.446568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707294, 39.456924, 39.130238>,  <44.157211, 39.004219, 38.761013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707294, 39.456924, 39.130238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499573, 39.731770, 38.926983>,  <44.374939, 39.896679, 38.805031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499573, 39.731770, 38.926983>,  <44.707294, 39.456924, 39.130238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499573, 39.731770, 38.926983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107441, 0.642366, 0.758830,
		0.847811, 0.339466, -0.407405,
		-0.519300, 0.687116, -0.508132,
		44.343784, 39.937904, 38.774544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754375, 39.955360, 39.618462>,  <44.707294, 39.456924, 39.130238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754375, 39.955360, 39.618462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478756, 40.087509, 39.360447>,  <44.313385, 40.166798, 39.205639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478756, 40.087509, 39.360447>,  <44.754375, 39.955360, 39.618462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478756, 40.087509, 39.360447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309453, 0.670704, 0.674088,
		0.655329, 0.664085, -0.359910,
		-0.689045, 0.330374, -0.645035,
		44.272041, 40.186623, 39.166935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759514, 40.652618, 39.617699>,  <44.754375, 39.955360, 39.618462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759514, 40.652618, 39.617699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388145, 40.582909, 39.486446>,  <44.165325, 40.541084, 39.407696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.388145, 40.582909, 39.486446>,  <44.759514, 40.652618, 39.617699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388145, 40.582909, 39.486446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330346, 0.791379, 0.514383,
		0.170032, 0.585959, -0.792301,
		-0.928418, -0.174272, -0.328129,
		44.109619, 40.530628, 39.388008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529922, 41.309021, 39.337025>,  <44.759514, 40.652618, 39.617699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529922, 41.309021, 39.337025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197071, 41.112198, 39.439350>,  <43.997360, 40.994102, 39.500748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197071, 41.112198, 39.439350>,  <44.529922, 41.309021, 39.337025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197071, 41.112198, 39.439350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327346, 0.808143, 0.489643,
		-0.447668, 0.323705, -0.833552,
		-0.832129, -0.492057, 0.255816,
		43.947433, 40.964581, 39.516094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955521, 41.732307, 39.150497>,  <44.529922, 41.309021, 39.337025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955521, 41.732307, 39.150497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810459, 41.493668, 39.436871>,  <43.723423, 41.350483, 39.608692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810459, 41.493668, 39.436871>,  <43.955521, 41.732307, 39.150497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810459, 41.493668, 39.436871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406456, 0.792567, 0.454568,
		-0.838615, -0.126142, -0.529917,
		-0.362654, -0.596596, 0.715930,
		43.701664, 41.314690, 39.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275879, 42.009727, 39.371441>,  <43.955521, 41.732307, 39.150497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275879, 42.009727, 39.371441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.388454, 41.779282, 39.678394>,  <43.456001, 41.641014, 39.862568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.388454, 41.779282, 39.678394>,  <43.275879, 42.009727, 39.371441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388454, 41.779282, 39.678394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288999, 0.711689, 0.640295,
		-0.915025, -0.401979, 0.033800,
		0.281440, -0.576118, 0.767385,
		43.472885, 41.606445, 39.908611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901920, 42.264236, 39.983063>,  <43.275879, 42.009727, 39.371441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901920, 42.264236, 39.983063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166294, 42.025494, 40.165024>,  <43.324917, 41.882248, 40.274200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166294, 42.025494, 40.165024>,  <42.901920, 42.264236, 39.983063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166294, 42.025494, 40.165024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030923, 0.584002, 0.811163,
		-0.749810, -0.550189, 0.367528,
		0.660930, -0.596853, 0.454904,
		43.364574, 41.846439, 40.301495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.830364, 38.591183, 40.350151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590881, 38.272945, 40.387199>,  <37.447193, 38.082001, 40.409428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590881, 38.272945, 40.387199>,  <37.830364, 38.591183, 40.350151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590881, 38.272945, 40.387199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394674, -0.393649, -0.830225,
		0.696983, -0.460507, 0.549681,
		-0.598705, -0.795597, 0.092616,
		37.411270, 38.034267, 40.414986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332253, 38.010021, 40.313084>,  <37.830364, 38.591183, 40.350151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332253, 38.010021, 40.313084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965405, 37.884151, 40.215210>,  <37.745296, 37.808628, 40.156487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965405, 37.884151, 40.215210>,  <38.332253, 38.010021, 40.313084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965405, 37.884151, 40.215210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381564, -0.515455, -0.767278,
		0.115321, -0.797048, 0.592803,
		-0.917120, -0.314675, -0.244682,
		37.690269, 37.789749, 40.141804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382469, 37.263870, 40.219788>,  <38.332253, 38.010021, 40.313084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382469, 37.263870, 40.219788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022343, 37.310688, 40.052109>,  <37.806267, 37.338779, 39.951500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022343, 37.310688, 40.052109>,  <38.382469, 37.263870, 40.219788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022343, 37.310688, 40.052109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265704, -0.615048, -0.742373,
		-0.344718, -0.779755, 0.522640,
		-0.900317, 0.117042, -0.419201,
		37.752247, 37.345802, 39.926350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166954, 36.636814, 40.082859>,  <38.382469, 37.263870, 40.219788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166954, 36.636814, 40.082859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991573, 36.906487, 39.845123>,  <37.886345, 37.068291, 39.702480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991573, 36.906487, 39.845123>,  <38.166954, 36.636814, 40.082859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991573, 36.906487, 39.845123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401501, -0.444709, -0.800644,
		-0.804086, -0.589674, -0.075699,
		-0.438455, 0.674180, -0.594339,
		37.860035, 37.108742, 39.666821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924667, 36.231529, 39.506981>,  <38.166954, 36.636814, 40.082859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924667, 36.231529, 39.506981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927658, 36.608517, 39.373291>,  <37.929451, 36.834709, 39.293079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927658, 36.608517, 39.373291>,  <37.924667, 36.231529, 39.506981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927658, 36.608517, 39.373291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322303, -0.318664, -0.891389,
		-0.946607, -0.101056, -0.306142,
		0.007476, 0.942465, -0.334220,
		37.929901, 36.891254, 39.273026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620365, 36.234970, 38.800625>,  <37.924667, 36.231529, 39.506981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620365, 36.234970, 38.800625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831112, 36.573879, 38.827572>,  <37.957561, 36.777225, 38.843742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831112, 36.573879, 38.827572>,  <37.620365, 36.234970, 38.800625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831112, 36.573879, 38.827572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449299, -0.210353, -0.868264,
		-0.721483, 0.487732, -0.491507,
		0.526870, 0.847272, 0.067372,
		37.989174, 36.828060, 38.847782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422462, 36.686302, 38.212120>,  <37.620365, 36.234970, 38.800625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422462, 36.686302, 38.212120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786507, 36.813358, 38.318554>,  <38.004932, 36.889591, 38.382412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786507, 36.813358, 38.318554>,  <37.422462, 36.686302, 38.212120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786507, 36.813358, 38.318554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334980, -0.186045, -0.923675,
		-0.243896, 0.929780, -0.275726,
		0.910112, 0.317643, 0.266081,
		38.059540, 36.908649, 38.398376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607750, 37.221394, 37.715347>,  <37.422462, 36.686302, 38.212120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607750, 37.221394, 37.715347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950657, 37.105156, 37.885353>,  <38.156403, 37.035412, 37.987358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950657, 37.105156, 37.885353>,  <37.607750, 37.221394, 37.715347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950657, 37.105156, 37.885353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419895, -0.083104, -0.903760,
		0.297949, 0.953230, 0.050776,
		0.857272, -0.290595, 0.425017,
		38.207840, 37.017979, 38.012859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010670, 37.467472, 37.309319>,  <37.607750, 37.221394, 37.715347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010670, 37.467472, 37.309319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236744, 37.199379, 37.501713>,  <38.372391, 37.038525, 37.617149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236744, 37.199379, 37.501713>,  <38.010670, 37.467472, 37.309319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236744, 37.199379, 37.501713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307016, -0.370271, -0.876721,
		0.765704, 0.643184, -0.003500,
		0.565189, -0.670234, 0.480986,
		38.406300, 36.998310, 37.646008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564949, 37.497204, 37.041893>,  <38.010670, 37.467472, 37.309319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564949, 37.497204, 37.041893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607086, 37.133053, 37.201950>,  <38.632370, 36.914562, 37.297985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607086, 37.133053, 37.201950>,  <38.564949, 37.497204, 37.041893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607086, 37.133053, 37.201950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368225, -0.338065, -0.866096,
		0.923749, 0.238581, 0.299611,
		0.105346, -0.910380, 0.400139,
		38.638691, 36.859940, 37.321991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184116, 37.236828, 36.803402>,  <38.564949, 37.497204, 37.041893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184116, 37.236828, 36.803402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032799, 36.884686, 36.917858>,  <38.942009, 36.673401, 36.986534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032799, 36.884686, 36.917858>,  <39.184116, 37.236828, 36.803402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032799, 36.884686, 36.917858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459234, -0.446872, -0.767730,
		0.803742, -0.159018, 0.573334,
		-0.378290, -0.880351, 0.286143,
		38.919312, 36.620579, 37.003700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768070, 36.824776, 36.879204>,  <39.184116, 37.236828, 36.803402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768070, 36.824776, 36.879204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443378, 36.596004, 36.831890>,  <39.248562, 36.458740, 36.803501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443378, 36.596004, 36.831890>,  <39.768070, 36.824776, 36.879204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443378, 36.596004, 36.831890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423342, -0.436672, -0.793788,
		0.402341, -0.694415, 0.596582,
		-0.811728, -0.571932, -0.118284,
		39.199860, 36.424423, 36.796406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014217, 36.160591, 36.798817>,  <39.768070, 36.824776, 36.879204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014217, 36.160591, 36.798817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675117, 36.200348, 36.590412>,  <39.471657, 36.224201, 36.465370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675117, 36.200348, 36.590412>,  <40.014217, 36.160591, 36.798817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675117, 36.200348, 36.590412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455930, -0.365379, -0.811558,
		-0.271024, -0.925538, 0.264435,
		-0.847746, 0.099388, -0.521007,
		39.420795, 36.230164, 36.434109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989059, 35.693958, 36.345745>,  <40.014217, 36.160591, 36.798817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989059, 35.693958, 36.345745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734329, 35.943409, 36.164394>,  <39.581493, 36.093079, 36.055584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734329, 35.943409, 36.164394>,  <39.989059, 35.693958, 36.345745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734329, 35.943409, 36.164394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448434, -0.178749, -0.875760,
		-0.627187, -0.761012, -0.165824,
		-0.636823, 0.623626, -0.453373,
		39.543282, 36.130497, 36.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433384, 35.321560, 36.729549>,  <39.989059, 35.693958, 36.345745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433384, 35.321560, 36.729549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579998, 34.949905, 36.748970>,  <39.667965, 34.726913, 36.760620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579998, 34.949905, 36.748970>,  <39.433384, 35.321560, 36.729549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579998, 34.949905, 36.748970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306783, -0.071431, 0.949095,
		-0.878372, -0.362769, -0.311226,
		0.366533, -0.929137, 0.048548,
		39.689957, 34.671165, 36.763535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984310, 34.864727, 36.937782>,  <39.433384, 35.321560, 36.729549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984310, 34.864727, 36.937782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318844, 34.681042, 37.057560>,  <39.519566, 34.570831, 37.129429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318844, 34.681042, 37.057560>,  <38.984310, 34.864727, 36.937782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318844, 34.681042, 37.057560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418472, -0.181889, 0.889830,
		-0.354157, -0.869504, -0.344288,
		0.836334, -0.459215, 0.299446,
		39.569744, 34.543278, 37.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802227, 34.210854, 37.115974>,  <38.984310, 34.864727, 36.937782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802227, 34.210854, 37.115974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146904, 34.279423, 37.307014>,  <39.353710, 34.320564, 37.421638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146904, 34.279423, 37.307014>,  <38.802227, 34.210854, 37.115974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146904, 34.279423, 37.307014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416912, -0.297360, 0.858931,
		0.289259, -0.939250, -0.184765,
		0.861692, 0.171423, 0.477598,
		39.405411, 34.330849, 37.450294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823822, 33.750320, 37.612392>,  <38.802227, 34.210854, 37.115974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823822, 33.750320, 37.612392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047371, 34.055847, 37.741547>,  <39.181499, 34.239162, 37.819038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047371, 34.055847, 37.741547>,  <38.823822, 33.750320, 37.612392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047371, 34.055847, 37.741547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250081, -0.215999, 0.943824,
		0.790648, -0.608221, 0.070300,
		0.558869, 0.763814, 0.322884,
		39.215031, 34.284992, 37.838413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251434, 33.428707, 38.167824>,  <38.823822, 33.750320, 37.612392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251434, 33.428707, 38.167824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250839, 33.825233, 38.220421>,  <39.250484, 34.063148, 38.251980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250839, 33.825233, 38.220421>,  <39.251434, 33.428707, 38.167824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250839, 33.825233, 38.220421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186442, -0.129460, 0.973899,
		0.982465, -0.023069, 0.185015,
		-0.001485, 0.991316, 0.131491,
		39.250393, 34.122627, 38.259869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548401, 33.500858, 38.740887>,  <39.251434, 33.428707, 38.167824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548401, 33.500858, 38.740887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359173, 33.852589, 38.719028>,  <39.245636, 34.063629, 38.705914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359173, 33.852589, 38.719028>,  <39.548401, 33.500858, 38.740887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359173, 33.852589, 38.719028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166948, -0.028575, 0.985552,
		0.865062, 0.475359, 0.160320,
		-0.473072, 0.879328, -0.054641,
		39.217251, 34.116386, 38.702637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753025, 33.817562, 39.387093>,  <39.548401, 33.500858, 38.740887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753025, 33.817562, 39.387093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431538, 34.011562, 39.249218>,  <39.238644, 34.127964, 39.166492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431538, 34.011562, 39.249218>,  <39.753025, 33.817562, 39.387093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431538, 34.011562, 39.249218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365169, 0.055305, 0.929297,
		0.469775, 0.872762, 0.132659,
		-0.803719, 0.485003, -0.344686,
		39.190422, 34.157063, 39.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713062, 34.266014, 39.813732>,  <39.753025, 33.817562, 39.387093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713062, 34.266014, 39.813732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354973, 34.266056, 39.635483>,  <39.140118, 34.266083, 39.528534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354973, 34.266056, 39.635483>,  <39.713062, 34.266014, 39.813732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354973, 34.266056, 39.635483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422984, 0.314451, 0.849826,
		0.140216, 0.949274, -0.281458,
		-0.895223, 0.000107, -0.445619,
		39.086407, 34.266087, 39.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419777, 34.911686, 40.050217>,  <39.713062, 34.266014, 39.813732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419777, 34.911686, 40.050217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131176, 34.659412, 39.935909>,  <38.958015, 34.508049, 39.867325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131176, 34.659412, 39.935909>,  <39.419777, 34.911686, 40.050217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131176, 34.659412, 39.935909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467331, 0.139029, 0.873082,
		-0.510911, 0.763482, -0.395050,
		-0.721506, -0.630687, -0.285767,
		38.914722, 34.470207, 39.850178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752979, 35.182907, 40.316036>,  <39.419777, 34.911686, 40.050217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752979, 35.182907, 40.316036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699146, 34.798306, 40.220211>,  <38.666847, 34.567543, 40.162716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699146, 34.798306, 40.220211>,  <38.752979, 35.182907, 40.316036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699146, 34.798306, 40.220211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619156, -0.107163, 0.777921,
		-0.773649, 0.253023, -0.580901,
		-0.134581, -0.961507, -0.239567,
		38.658772, 34.509853, 40.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057415, 34.989880, 40.255718>,  <38.752979, 35.182907, 40.316036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057415, 34.989880, 40.255718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232147, 34.638626, 40.333763>,  <38.336987, 34.427876, 40.380589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232147, 34.638626, 40.333763>,  <38.057415, 34.989880, 40.255718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232147, 34.638626, 40.333763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768411, -0.251496, 0.588468,
		-0.467684, -0.406981, -0.784626,
		0.436826, -0.878132, 0.195108,
		38.363194, 34.375187, 40.392296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507893, 34.407726, 40.207405>,  <38.057415, 34.989880, 40.255718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507893, 34.407726, 40.207405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805927, 34.222641, 40.399548>,  <37.984749, 34.111588, 40.514832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805927, 34.222641, 40.399548>,  <37.507893, 34.407726, 40.207405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805927, 34.222641, 40.399548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632209, -0.260489, 0.729697,
		-0.212517, -0.847370, -0.486621,
		0.745083, -0.462720, 0.480357,
		38.029453, 34.083824, 40.543655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156868, 33.896374, 40.676727>,  <37.507893, 34.407726, 40.207405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156868, 33.896374, 40.676727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530708, 33.887329, 40.818714>,  <37.755013, 33.881901, 40.903908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530708, 33.887329, 40.818714>,  <37.156868, 33.896374, 40.676727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530708, 33.887329, 40.818714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352568, -0.190825, 0.916123,
		0.047025, -0.981364, -0.186317,
		0.934604, -0.022609, 0.354971,
		37.811089, 33.880547, 40.925205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094185, 33.414848, 41.200310>,  <37.156868, 33.896374, 40.676727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094185, 33.414848, 41.200310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420982, 33.625210, 41.294922>,  <37.617062, 33.751427, 41.351688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420982, 33.625210, 41.294922>,  <37.094185, 33.414848, 41.200310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420982, 33.625210, 41.294922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333727, 0.096712, 0.937695,
		0.470260, -0.845029, 0.254521,
		0.816996, 0.525901, 0.236529,
		37.666080, 33.782978, 41.365879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355129, 32.817242, 41.534966>,  <37.094185, 33.414848, 41.200310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355129, 32.817242, 41.534966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308640, 32.445316, 41.674644>,  <37.280746, 32.222160, 41.758453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308640, 32.445316, 41.674644>,  <37.355129, 32.817242, 41.534966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308640, 32.445316, 41.674644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626871, -0.204036, -0.751932,
		0.770405, -0.306299, -0.559157,
		-0.116228, -0.929812, 0.349200,
		37.273769, 32.166374, 41.779404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587643, 32.291080, 41.059322>,  <37.355129, 32.817242, 41.534966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587643, 32.291080, 41.059322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298908, 32.138027, 41.289989>,  <37.125668, 32.046196, 41.428391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298908, 32.138027, 41.289989>,  <37.587643, 32.291080, 41.059322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298908, 32.138027, 41.289989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507978, -0.272963, -0.816976,
		0.470009, -0.882658, 0.002667,
		-0.721838, -0.382631, 0.576666,
		37.082355, 32.023239, 41.462990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532276, 31.628654, 40.861584>,  <37.587643, 32.291080, 41.059322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532276, 31.628654, 40.861584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176628, 31.688192, 41.034702>,  <36.963238, 31.723915, 41.138573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176628, 31.688192, 41.034702>,  <37.532276, 31.628654, 40.861584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176628, 31.688192, 41.034702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448906, -0.467825, -0.761330,
		0.089153, -0.871198, 0.482769,
		-0.889121, 0.148843, 0.432793,
		36.909893, 31.732845, 41.164539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260834, 30.923635, 41.030220>,  <37.532276, 31.628654, 40.861584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260834, 30.923635, 41.030220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956966, 31.183630, 41.022045>,  <36.774647, 31.339626, 41.017139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956966, 31.183630, 41.022045>,  <37.260834, 30.923635, 41.030220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956966, 31.183630, 41.022045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462617, -0.562240, -0.685472,
		-0.457039, -0.511278, 0.727812,
		-0.759672, 0.649986, -0.020440,
		36.729065, 31.378626, 41.015915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697201, 30.508446, 40.985336>,  <37.260834, 30.923635, 41.030220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697201, 30.508446, 40.985336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533470, 30.853090, 40.865280>,  <36.435234, 31.059877, 40.793247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533470, 30.853090, 40.865280>,  <36.697201, 30.508446, 40.985336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533470, 30.853090, 40.865280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585810, -0.500381, -0.637531,
		-0.699486, -0.085132, 0.709557,
		-0.409323, 0.861610, -0.300139,
		36.410675, 31.111572, 40.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979816, 30.341150, 41.000946>,  <36.697201, 30.508446, 40.985336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979816, 30.341150, 41.000946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974728, 30.675898, 40.782043>,  <35.971676, 30.876745, 40.650703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974728, 30.675898, 40.782043>,  <35.979816, 30.341150, 41.000946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974728, 30.675898, 40.782043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679259, -0.408868, -0.609454,
		-0.733789, 0.363975, 0.573652,
		-0.012722, 0.836868, -0.547256,
		35.970909, 30.926958, 40.617867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315155, 30.531775, 40.851517>,  <35.979816, 30.341150, 41.000946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315155, 30.531775, 40.851517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503674, 30.724743, 40.556179>,  <35.616787, 30.840525, 40.378979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503674, 30.724743, 40.556179>,  <35.315155, 30.531775, 40.851517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503674, 30.724743, 40.556179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709704, -0.289584, -0.642232,
		-0.523638, 0.826686, 0.205895,
		0.471300, 0.482422, -0.738340,
		35.645065, 30.869469, 40.334679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738400, 30.711609, 40.394371>,  <35.315155, 30.531775, 40.851517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738400, 30.711609, 40.394371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060291, 30.760880, 40.162083>,  <35.253426, 30.790442, 40.022709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060291, 30.760880, 40.162083>,  <34.738400, 30.711609, 40.394371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060291, 30.760880, 40.162083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482416, -0.434390, -0.760645,
		-0.345950, 0.892263, -0.290146,
		0.804732, 0.123174, -0.580719,
		35.301712, 30.797832, 39.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524532, 31.207203, 39.785027>,  <34.738400, 30.711609, 40.394371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524532, 31.207203, 39.785027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833572, 30.974089, 39.684265>,  <35.018997, 30.834221, 39.623810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833572, 30.974089, 39.684265>,  <34.524532, 31.207203, 39.785027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833572, 30.974089, 39.684265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483615, -0.283139, -0.828220,
		0.411352, 0.761704, -0.500597,
		0.772597, -0.582786, -0.251902,
		35.065353, 30.799253, 39.608696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442486, 31.162632, 39.134541>,  <34.524532, 31.207203, 39.785027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442486, 31.162632, 39.134541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709496, 30.867243, 39.172649>,  <34.869701, 30.690010, 39.195515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709496, 30.867243, 39.172649>,  <34.442486, 31.162632, 39.134541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709496, 30.867243, 39.172649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466410, -0.514435, -0.719595,
		0.580412, 0.435909, -0.687827,
		0.667521, -0.738471, 0.095272,
		34.909752, 30.645702, 39.201233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730183, 31.014648, 38.475483>,  <34.442486, 31.162632, 39.134541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730183, 31.014648, 38.475483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756653, 30.687759, 38.704487>,  <34.772533, 30.491625, 38.841888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756653, 30.687759, 38.704487>,  <34.730183, 31.014648, 38.475483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756653, 30.687759, 38.704487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610630, -0.486946, -0.624511,
		0.789146, -0.308266, -0.531244,
		0.066172, -0.817224, 0.572508,
		34.776505, 30.442593, 38.876240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864235, 30.557575, 38.021458>,  <34.730183, 31.014648, 38.475483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864235, 30.557575, 38.021458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741585, 30.343517, 38.336315>,  <34.667995, 30.215082, 38.525230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741585, 30.343517, 38.336315>,  <34.864235, 30.557575, 38.021458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741585, 30.343517, 38.336315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627613, -0.508066, -0.589890,
		0.715600, -0.674899, -0.180078,
		-0.306624, -0.535145, 0.787148,
		34.649597, 30.182974, 38.572460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.456295, 33.024334, 44.932587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220463, 32.736893, 45.080101>,  <38.078964, 32.564426, 45.168610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220463, 32.736893, 45.080101>,  <38.456295, 33.024334, 44.932587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220463, 32.736893, 45.080101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184694, -0.324546, -0.927663,
		0.786309, -0.615045, 0.058624,
		-0.589581, -0.718602, 0.368789,
		38.043587, 32.521313, 45.190739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822437, 32.439629, 44.825119>,  <38.456295, 33.024334, 44.932587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822437, 32.439629, 44.825119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431469, 32.359127, 44.850876>,  <38.196888, 32.310825, 44.866329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.431469, 32.359127, 44.850876>,  <38.822437, 32.439629, 44.825119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431469, 32.359127, 44.850876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006567, -0.275678, -0.961227,
		0.211199, -0.939947, 0.268132,
		-0.977421, -0.201250, 0.064395,
		38.138241, 32.298752, 44.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867699, 31.883879, 44.454975>,  <38.822437, 32.439629, 44.825119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867699, 31.883879, 44.454975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479019, 31.976027, 44.475876>,  <38.245811, 32.031315, 44.488419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479019, 31.976027, 44.475876>,  <38.867699, 31.883879, 44.454975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479019, 31.976027, 44.475876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099074, -0.196630, -0.975459,
		-0.214459, -0.953026, 0.213890,
		-0.971695, 0.230387, 0.052251,
		38.187508, 32.045139, 44.491550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510841, 31.361881, 44.165169>,  <38.867699, 31.883879, 44.454975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510841, 31.361881, 44.165169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276966, 31.685625, 44.142982>,  <38.136639, 31.879871, 44.129669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276966, 31.685625, 44.142982>,  <38.510841, 31.361881, 44.165169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276966, 31.685625, 44.142982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108020, -0.145434, -0.983453,
		-0.804033, -0.569024, 0.172461,
		-0.584690, 0.809358, -0.055467,
		38.101559, 31.928432, 44.126343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818394, 31.036587, 43.907124>,  <38.510841, 31.361881, 44.165169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818394, 31.036587, 43.907124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.812927, 31.434198, 43.863827>,  <37.809647, 31.672766, 43.837849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.812927, 31.434198, 43.863827>,  <37.818394, 31.036587, 43.907124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812927, 31.434198, 43.863827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380475, -0.105281, -0.918779,
		-0.924690, 0.028629, 0.379642,
		-0.013665, 0.994030, -0.108245,
		37.808826, 31.732407, 43.831352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123688, 31.258625, 43.708843>,  <37.818394, 31.036587, 43.907124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123688, 31.258625, 43.708843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346214, 31.581379, 43.629395>,  <37.479729, 31.775032, 43.581726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346214, 31.581379, 43.629395>,  <37.123688, 31.258625, 43.708843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346214, 31.581379, 43.629395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355139, 0.014770, -0.934697,
		-0.751260, 0.590523, 0.294773,
		0.556314, 0.806886, -0.198621,
		37.513107, 31.823444, 43.569809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611973, 31.847305, 43.540970>,  <37.123688, 31.258625, 43.708843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611973, 31.847305, 43.540970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965538, 31.899044, 43.361206>,  <37.177677, 31.930088, 43.253349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965538, 31.899044, 43.361206>,  <36.611973, 31.847305, 43.540970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965538, 31.899044, 43.361206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454121, 0.007933, -0.890905,
		-0.111671, 0.991568, 0.065752,
		0.883914, 0.129348, -0.449406,
		37.230713, 31.937849, 43.226383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571377, 32.475613, 43.115669>,  <36.611973, 31.847305, 43.540970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571377, 32.475613, 43.115669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865646, 32.261581, 42.949547>,  <37.042206, 32.133163, 42.849873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865646, 32.261581, 42.949547>,  <36.571377, 32.475613, 43.115669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865646, 32.261581, 42.949547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373943, 0.190395, -0.907698,
		0.564759, 0.823070, -0.060019,
		0.735672, -0.535075, -0.415309,
		37.086349, 32.101059, 42.824955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850136, 32.887386, 42.526081>,  <36.571377, 32.475613, 43.115669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850136, 32.887386, 42.526081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897999, 32.491035, 42.501305>,  <36.926716, 32.253223, 42.486439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897999, 32.491035, 42.501305>,  <36.850136, 32.887386, 42.526081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897999, 32.491035, 42.501305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309076, 0.022113, -0.950780,
		0.943480, 0.132913, -0.303611,
		0.119657, -0.990881, -0.061943,
		36.933895, 32.193771, 42.482723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612888, 33.090229, 42.391083>,  <36.850136, 32.887386, 42.526081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612888, 33.090229, 42.391083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714935, 33.443359, 42.233326>,  <37.776161, 33.655235, 42.138672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714935, 33.443359, 42.233326>,  <37.612888, 33.090229, 42.391083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714935, 33.443359, 42.233326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078629, 0.425477, 0.901547,
		0.963709, -0.198987, 0.177960,
		0.255115, 0.882821, -0.394390,
		37.791470, 33.708206, 42.115009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175690, 33.430496, 42.827114>,  <37.612888, 33.090229, 42.391083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175690, 33.430496, 42.827114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020809, 33.739895, 42.626404>,  <37.927879, 33.925533, 42.505978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020809, 33.739895, 42.626404>,  <38.175690, 33.430496, 42.827114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020809, 33.739895, 42.626404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200324, 0.460649, 0.864681,
		0.899968, 0.435327, -0.023417,
		-0.387206, 0.773494, -0.501776,
		37.904648, 33.971943, 42.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504124, 33.978455, 43.052010>,  <38.175690, 33.430496, 42.827114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504124, 33.978455, 43.052010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182934, 34.156895, 42.893913>,  <37.990219, 34.263958, 42.799053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.182934, 34.156895, 42.893913>,  <38.504124, 33.978455, 43.052010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182934, 34.156895, 42.893913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053373, 0.606667, 0.793162,
		0.593615, 0.657987, -0.463330,
		-0.802978, 0.446104, -0.395245,
		37.942039, 34.290726, 42.775341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675320, 34.610554, 43.098492>,  <38.504124, 33.978455, 43.052010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675320, 34.610554, 43.098492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275806, 34.590851, 43.097382>,  <38.036098, 34.579029, 43.096718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275806, 34.590851, 43.097382>,  <38.675320, 34.610554, 43.098492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275806, 34.590851, 43.097382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025734, 0.472235, 0.881097,
		-0.042089, 0.880096, -0.472927,
		-0.998782, -0.049254, -0.002773,
		37.976173, 34.576073, 43.096550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482250, 35.257900, 43.367302>,  <38.675320, 34.610554, 43.098492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482250, 35.257900, 43.367302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165798, 35.014957, 43.396236>,  <37.975925, 34.869194, 43.413597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165798, 35.014957, 43.396236>,  <38.482250, 35.257900, 43.367302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165798, 35.014957, 43.396236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209044, 0.379635, 0.901209,
		-0.574815, 0.697853, -0.427305,
		-0.791131, -0.607354, 0.072338,
		37.928459, 34.832752, 43.417938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144352, 35.616245, 43.887459>,  <38.482250, 35.257900, 43.367302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144352, 35.616245, 43.887459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934872, 35.276882, 43.856606>,  <37.809185, 35.073265, 43.838093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.934872, 35.276882, 43.856606>,  <38.144352, 35.616245, 43.887459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934872, 35.276882, 43.856606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229674, 0.053421, 0.971801,
		-0.820360, 0.526645, -0.222833,
		-0.523698, -0.848405, -0.077132,
		37.777763, 35.022362, 43.833466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419525, 35.703136, 44.066833>,  <38.144352, 35.616245, 43.887459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419525, 35.703136, 44.066833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470562, 35.319473, 44.167820>,  <37.501183, 35.089275, 44.228413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470562, 35.319473, 44.167820>,  <37.419525, 35.703136, 44.066833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470562, 35.319473, 44.167820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386108, 0.186434, 0.903417,
		-0.913587, -0.212747, -0.346551,
		0.127591, -0.959156, 0.252467,
		37.508839, 35.031727, 44.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843536, 35.481178, 44.524914>,  <37.419525, 35.703136, 44.066833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843536, 35.481178, 44.524914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119019, 35.198612, 44.590225>,  <37.284309, 35.029072, 44.629410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.119019, 35.198612, 44.590225>,  <36.843536, 35.481178, 44.524914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119019, 35.198612, 44.590225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295181, -0.067498, 0.953054,
		-0.662232, -0.704571, -0.255007,
		0.688707, -0.706416, 0.163276,
		37.325630, 34.986687, 44.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491787, 35.023243, 45.002708>,  <36.843536, 35.481178, 44.524914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491787, 35.023243, 45.002708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888031, 34.968571, 45.002514>,  <37.125778, 34.935768, 45.002399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888031, 34.968571, 45.002514>,  <36.491787, 35.023243, 45.002708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888031, 34.968571, 45.002514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014440, -0.108159, 0.994029,
		-0.135924, -0.984692, -0.109118,
		0.990614, -0.136688, -0.000483,
		37.185215, 34.927567, 45.002369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559036, 34.396614, 45.526726>,  <36.491787, 35.023243, 45.002708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559036, 34.396614, 45.526726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913105, 34.580750, 45.499706>,  <37.125546, 34.691231, 45.483494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913105, 34.580750, 45.499706>,  <36.559036, 34.396614, 45.526726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913105, 34.580750, 45.499706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019636, 0.182023, 0.983098,
		0.464850, -0.868884, 0.170161,
		0.885172, 0.460334, -0.067552,
		37.178658, 34.718849, 45.479439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953957, 34.165249, 46.168053>,  <36.559036, 34.396614, 45.526726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953957, 34.165249, 46.168053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118557, 34.504150, 46.033691>,  <37.217319, 34.707489, 45.953075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.118557, 34.504150, 46.033691>,  <36.953957, 34.165249, 46.168053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118557, 34.504150, 46.033691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010067, 0.372761, 0.927873,
		0.911353, -0.378441, 0.161922,
		0.411503, 0.847249, -0.335907,
		37.242008, 34.758324, 45.932919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439903, 34.311539, 46.656567>,  <36.953957, 34.165249, 46.168053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439903, 34.311539, 46.656567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366959, 34.661659, 46.477417>,  <37.323193, 34.871731, 46.369926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366959, 34.661659, 46.477417>,  <37.439903, 34.311539, 46.656567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366959, 34.661659, 46.477417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410637, 0.481683, 0.774182,
		0.893376, -0.042732, -0.447272,
		-0.182361, 0.875303, -0.447872,
		37.312252, 34.924252, 46.343056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047977, 34.720253, 46.668892>,  <37.439903, 34.311539, 46.656567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047977, 34.720253, 46.668892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729019, 34.960228, 46.642864>,  <37.537643, 35.104214, 46.627247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729019, 34.960228, 46.642864>,  <38.047977, 34.720253, 46.668892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729019, 34.960228, 46.642864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232411, 0.404822, 0.884366,
		0.556907, 0.690067, -0.462236,
		-0.797396, 0.599938, -0.065069,
		37.489799, 35.140209, 46.623344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345249, 35.260540, 46.836754>,  <38.047977, 34.720253, 46.668892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345249, 35.260540, 46.836754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957413, 35.339451, 46.894688>,  <37.724712, 35.386799, 46.929447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957413, 35.339451, 46.894688>,  <38.345249, 35.260540, 46.836754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957413, 35.339451, 46.894688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224790, 0.483892, 0.845765,
		0.096766, 0.852602, -0.513523,
		-0.969591, 0.197276, 0.144832,
		37.666534, 35.398632, 46.938137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.780937, 33.702831, 46.966499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175694, 33.647861, 46.932659>,  <34.412548, 33.614880, 46.912354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.175694, 33.647861, 46.932659>,  <33.780937, 33.702831, 46.966499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175694, 33.647861, 46.932659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074923, 0.074133, -0.994430,
		0.142932, 0.987734, 0.062865,
		0.986893, -0.137426, -0.084601,
		34.471760, 33.606632, 46.907280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939621, 34.104584, 46.381172>,  <33.780937, 33.702831, 46.966499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939621, 34.104584, 46.381172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247150, 33.853001, 46.427353>,  <34.431667, 33.702053, 46.455059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247150, 33.853001, 46.427353>,  <33.939621, 34.104584, 46.381172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247150, 33.853001, 46.427353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087195, -0.075740, -0.993308,
		0.633489, 0.773744, -0.003389,
		0.768823, -0.628954, 0.115448,
		34.477798, 33.664314, 46.461987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340466, 34.426834, 45.896229>,  <33.939621, 34.104584, 46.381172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340466, 34.426834, 45.896229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488903, 34.066311, 45.985615>,  <34.577965, 33.849998, 46.039246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.488903, 34.066311, 45.985615>,  <34.340466, 34.426834, 45.896229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488903, 34.066311, 45.985615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244771, -0.137196, -0.959825,
		0.895756, 0.410881, 0.169701,
		0.371092, -0.901307, 0.223466,
		34.600231, 33.795918, 46.052654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965477, 34.399044, 45.581379>,  <34.340466, 34.426834, 45.896229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965477, 34.399044, 45.581379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862679, 34.015259, 45.627651>,  <34.800999, 33.784988, 45.655415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862679, 34.015259, 45.627651>,  <34.965477, 34.399044, 45.581379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862679, 34.015259, 45.627651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118962, -0.150195, -0.981473,
		0.959062, -0.238477, 0.152739,
		-0.256999, -0.959463, 0.115677,
		34.785580, 33.727421, 45.662354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507664, 34.042278, 45.302689>,  <34.965477, 34.399044, 45.581379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507664, 34.042278, 45.302689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189610, 33.799809, 45.295681>,  <34.998775, 33.654327, 45.291477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.189610, 33.799809, 45.295681>,  <35.507664, 34.042278, 45.302689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189610, 33.799809, 45.295681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175677, -0.202590, -0.963377,
		0.580428, -0.769093, 0.267578,
		-0.795135, -0.606179, -0.017523,
		34.951069, 33.617954, 45.290424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594463, 33.572426, 44.724133>,  <35.507664, 34.042278, 45.302689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594463, 33.572426, 44.724133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209774, 33.482906, 44.787392>,  <34.978962, 33.429195, 44.825348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209774, 33.482906, 44.787392>,  <35.594463, 33.572426, 44.724133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209774, 33.482906, 44.787392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055754, -0.405226, -0.912515,
		0.268305, -0.886400, 0.377236,
		-0.961719, -0.223800, 0.158144,
		34.921257, 33.415768, 44.834835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459621, 32.845188, 44.609711>,  <35.594463, 33.572426, 44.724133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459621, 32.845188, 44.609711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127502, 33.057613, 44.542091>,  <34.928230, 33.185070, 44.501522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.127502, 33.057613, 44.542091>,  <35.459621, 32.845188, 44.609711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127502, 33.057613, 44.542091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020397, -0.274162, -0.961467,
		-0.556945, -0.801753, 0.216804,
		-0.830299, 0.531062, -0.169046,
		34.878414, 33.216930, 44.491379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016293, 32.474514, 44.180267>,  <35.459621, 32.845188, 44.609711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016293, 32.474514, 44.180267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848003, 32.835648, 44.144741>,  <34.747028, 33.052326, 44.123425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848003, 32.835648, 44.144741>,  <35.016293, 32.474514, 44.180267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848003, 32.835648, 44.144741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129625, -0.156728, -0.979098,
		-0.897880, -0.400417, 0.182969,
		-0.420724, 0.902830, -0.088819,
		34.721786, 33.106495, 44.118095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524990, 32.347134, 43.726704>,  <35.016293, 32.474514, 44.180267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524990, 32.347134, 43.726704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545597, 32.746494, 43.717453>,  <34.557961, 32.986111, 43.711903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545597, 32.746494, 43.717453>,  <34.524990, 32.347134, 43.726704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545597, 32.746494, 43.717453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277061, -0.007964, -0.960819,
		-0.959470, 0.055908, 0.276209,
		0.051517, 0.998404, -0.023131,
		34.561050, 33.046017, 43.710514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960033, 32.544094, 43.369228>,  <34.524990, 32.347134, 43.726704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960033, 32.544094, 43.369228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209606, 32.856682, 43.368122>,  <34.359352, 33.044235, 43.367458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209606, 32.856682, 43.368122>,  <33.960033, 32.544094, 43.369228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209606, 32.856682, 43.368122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203641, 0.159167, -0.966021,
		-0.754478, 0.603297, 0.258449,
		0.623934, 0.781472, -0.002768,
		34.396786, 33.091125, 43.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506153, 33.205013, 43.161751>,  <33.960033, 32.544094, 43.369228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506153, 33.205013, 43.161751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887562, 33.268990, 43.059593>,  <34.116405, 33.307373, 42.998299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887562, 33.268990, 43.059593>,  <33.506153, 33.205013, 43.161751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887562, 33.268990, 43.059593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267437, 0.058610, -0.961791,
		-0.138858, 0.985385, 0.098659,
		0.953518, 0.159938, -0.255390,
		34.173618, 33.316971, 42.982975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383862, 33.726257, 42.665257>,  <33.506153, 33.205013, 43.161751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383862, 33.726257, 42.665257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765732, 33.615814, 42.620785>,  <33.994854, 33.549549, 42.594101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.765732, 33.615814, 42.620785>,  <33.383862, 33.726257, 42.665257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765732, 33.615814, 42.620785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052737, 0.210694, -0.976129,
		0.292939, 0.937749, 0.186583,
		0.954676, -0.276106, -0.111175,
		34.052135, 33.532982, 42.587433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571430, 34.250790, 42.252743>,  <33.383862, 33.726257, 42.665257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571430, 34.250790, 42.252743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825626, 33.944939, 42.209862>,  <33.978146, 33.761429, 42.184132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825626, 33.944939, 42.209862>,  <33.571430, 34.250790, 42.252743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825626, 33.944939, 42.209862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238052, -0.061955, -0.969274,
		0.734492, 0.641487, -0.221394,
		0.635494, -0.764628, -0.107202,
		34.016273, 33.715549, 42.177700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136200, 34.469372, 41.913021>,  <33.571430, 34.250790, 42.252743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136200, 34.469372, 41.913021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156502, 34.079346, 41.826603>,  <34.168682, 33.845329, 41.774750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156502, 34.079346, 41.826603>,  <34.136200, 34.469372, 41.913021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156502, 34.079346, 41.826603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112503, 0.209370, -0.971343,
		0.992354, 0.073608, -0.099070,
		0.050756, -0.975062, -0.216050,
		34.171730, 33.786827, 41.761787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680202, 34.789360, 41.473274>,  <34.136200, 34.469372, 41.913021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680202, 34.789360, 41.473274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642948, 35.172585, 41.364868>,  <34.620594, 35.402519, 41.299824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.642948, 35.172585, 41.364868>,  <34.680202, 34.789360, 41.473274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642948, 35.172585, 41.364868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068614, 0.265373, 0.961701,
		0.993286, 0.108169, 0.041019,
		-0.093140, 0.958059, -0.271013,
		34.615005, 35.460003, 41.283566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254307, 35.124645, 41.824764>,  <34.680202, 34.789360, 41.473274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254307, 35.124645, 41.824764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975758, 35.394798, 41.727673>,  <34.808628, 35.556892, 41.669418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975758, 35.394798, 41.727673>,  <35.254307, 35.124645, 41.824764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975758, 35.394798, 41.727673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031036, 0.309563, 0.950372,
		0.717007, 0.669348, -0.194610,
		-0.696374, 0.675384, -0.242732,
		34.766846, 35.597412, 41.654854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507092, 35.751961, 42.106480>,  <35.254307, 35.124645, 41.824764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507092, 35.751961, 42.106480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108963, 35.776272, 42.076435>,  <34.870087, 35.790859, 42.058407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108963, 35.776272, 42.076435>,  <35.507092, 35.751961, 42.106480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108963, 35.776272, 42.076435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054771, 0.285564, 0.956793,
		0.079602, 0.956431, -0.280899,
		-0.995321, 0.060778, -0.075116,
		34.810368, 35.794506, 42.053902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368137, 36.291924, 42.619251>,  <35.507092, 35.751961, 42.106480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368137, 36.291924, 42.619251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012894, 36.122757, 42.547249>,  <34.799747, 36.021255, 42.504047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012894, 36.122757, 42.547249>,  <35.368137, 36.291924, 42.619251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012894, 36.122757, 42.547249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348104, 0.363153, 0.864259,
		-0.300144, 0.830216, -0.469740,
		-0.888109, -0.422920, -0.180003,
		34.746460, 35.995880, 42.493248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958824, 36.826797, 42.741623>,  <35.368137, 36.291924, 42.619251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958824, 36.826797, 42.741623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718460, 36.507217, 42.751259>,  <34.574242, 36.315468, 42.757042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718460, 36.507217, 42.751259>,  <34.958824, 36.826797, 42.741623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718460, 36.507217, 42.751259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266456, 0.228642, 0.936335,
		-0.753596, 0.556235, -0.350279,
		-0.600911, -0.798953, 0.024091,
		34.538185, 36.267532, 42.758488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338867, 37.071564, 42.864384>,  <34.958824, 36.826797, 42.741623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338867, 37.071564, 42.864384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361794, 36.689953, 42.982059>,  <34.375549, 36.460987, 43.052666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.361794, 36.689953, 42.982059>,  <34.338867, 37.071564, 42.864384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361794, 36.689953, 42.982059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421495, 0.243996, 0.873389,
		-0.905017, -0.174061, -0.388132,
		0.057320, -0.954028, 0.294186,
		34.378990, 36.403744, 43.070316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736835, 37.052399, 43.260418>,  <34.338867, 37.071564, 42.864384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736835, 37.052399, 43.260418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965733, 36.741528, 43.365131>,  <34.103073, 36.555004, 43.427959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965733, 36.741528, 43.365131>,  <33.736835, 37.052399, 43.260418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965733, 36.741528, 43.365131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206767, 0.172175, 0.963122,
		-0.793589, -0.605270, -0.062168,
		0.572245, -0.777177, 0.261786,
		34.137405, 36.508373, 43.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462444, 36.695660, 43.786167>,  <33.736835, 37.052399, 43.260418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462444, 36.695660, 43.786167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844791, 36.585106, 43.826012>,  <34.074200, 36.518772, 43.849918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.844791, 36.585106, 43.826012>,  <33.462444, 36.695660, 43.786167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844791, 36.585106, 43.826012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072014, 0.108286, 0.991508,
		-0.284826, -0.954926, 0.083604,
		0.955870, -0.276386, 0.099611,
		34.131554, 36.502190, 43.855896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547585, 36.048393, 44.109032>,  <33.462444, 36.695660, 43.786167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547585, 36.048393, 44.109032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887833, 36.245399, 44.182659>,  <34.091980, 36.363602, 44.226837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887833, 36.245399, 44.182659>,  <33.547585, 36.048393, 44.109032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887833, 36.245399, 44.182659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165874, -0.080832, 0.982828,
		0.498932, -0.866544, 0.012938,
		0.850619, 0.492511, 0.184067,
		34.143017, 36.393154, 44.237881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887913, 35.591454, 44.607773>,  <33.547585, 36.048393, 44.109032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887913, 35.591454, 44.607773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115803, 35.919502, 44.628994>,  <34.252537, 36.116333, 44.641727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115803, 35.919502, 44.628994>,  <33.887913, 35.591454, 44.607773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115803, 35.919502, 44.628994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088815, -0.002734, 0.996044,
		0.817025, -0.572179, 0.071282,
		0.569721, 0.820124, 0.053052,
		34.286720, 36.165539, 44.644909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339642, 35.429073, 45.140991>,  <33.887913, 35.591454, 44.607773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339642, 35.429073, 45.140991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314610, 35.826969, 45.108566>,  <34.299591, 36.065708, 45.089111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314610, 35.826969, 45.108566>,  <34.339642, 35.429073, 45.140991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314610, 35.826969, 45.108566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123039, 0.072909, 0.989720,
		0.990427, 0.071910, 0.117829,
		-0.062580, 0.994743, -0.081059,
		34.295837, 36.125393, 45.084248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964359, 35.779266, 45.495026>,  <34.339642, 35.429073, 45.140991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964359, 35.779266, 45.495026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706642, 36.083920, 45.467323>,  <34.552013, 36.266712, 45.450703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706642, 36.083920, 45.467323>,  <34.964359, 35.779266, 45.495026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706642, 36.083920, 45.467323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217099, 0.268979, 0.938359,
		0.733319, 0.589541, -0.338652,
		-0.644291, 0.761638, -0.069259,
		34.513355, 36.312412, 45.446545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338551, 36.386486, 45.652611>,  <34.964359, 35.779266, 45.495026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338551, 36.386486, 45.652611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957283, 36.475689, 45.734325>,  <34.728523, 36.529209, 45.783352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957283, 36.475689, 45.734325>,  <35.338551, 36.386486, 45.652611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957283, 36.475689, 45.734325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243796, 0.166879, 0.955361,
		0.178959, 0.960427, -0.213432,
		-0.953172, 0.223004, 0.204284,
		34.671329, 36.542591, 45.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342171, 36.961613, 46.112816>,  <35.338551, 36.386486, 45.652611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342171, 36.961613, 46.112816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987293, 36.782478, 46.157246>,  <34.774368, 36.674999, 46.183903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987293, 36.782478, 46.157246>,  <35.342171, 36.961613, 46.112816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987293, 36.782478, 46.157246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081426, 0.084993, 0.993049,
		-0.454160, 0.890069, -0.038940,
		-0.887191, -0.447832, 0.111076,
		34.721134, 36.648129, 46.190567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218410, 37.676254, 45.882755>,  <35.342171, 36.961613, 46.112816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218410, 37.676254, 45.882755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477528, 37.980679, 45.896343>,  <35.632999, 38.163334, 45.904495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477528, 37.980679, 45.896343>,  <35.218410, 37.676254, 45.882755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477528, 37.980679, 45.896343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100474, -0.041153, -0.994088,
		-0.755161, 0.647377, -0.103125,
		0.647794, 0.761058, 0.033967,
		35.671867, 38.208996, 45.906532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957767, 38.029480, 45.325485>,  <35.218410, 37.676254, 45.882755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957767, 38.029480, 45.325485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325844, 38.169090, 45.396400>,  <35.546688, 38.252857, 45.438950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.325844, 38.169090, 45.396400>,  <34.957767, 38.029480, 45.325485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325844, 38.169090, 45.396400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171807, 0.046875, -0.984015,
		-0.351760, 0.935939, -0.016831,
		0.920189, 0.349029, 0.177289,
		35.601902, 38.273800, 45.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007832, 38.739105, 45.038364>,  <34.957767, 38.029480, 45.325485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007832, 38.739105, 45.038364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378185, 38.589298, 45.058296>,  <35.600395, 38.499413, 45.070255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378185, 38.589298, 45.058296>,  <35.007832, 38.739105, 45.038364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378185, 38.589298, 45.058296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084789, 0.077439, -0.993385,
		0.368181, 0.923980, 0.103454,
		0.925880, -0.374518, 0.049832,
		35.655949, 38.476944, 45.073246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430695, 39.185295, 44.510067>,  <35.007832, 38.739105, 45.038364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430695, 39.185295, 44.510067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648903, 38.862659, 44.601124>,  <35.779827, 38.669079, 44.655758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648903, 38.862659, 44.601124>,  <35.430695, 39.185295, 44.510067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648903, 38.862659, 44.601124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208636, -0.132369, -0.968994,
		0.811711, 0.576103, 0.096073,
		0.545523, -0.806588, 0.227641,
		35.812561, 38.620682, 44.669415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121323, 39.293091, 44.175262>,  <35.430695, 39.185295, 44.510067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121323, 39.293091, 44.175262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101280, 38.902309, 44.258259>,  <36.089256, 38.667839, 44.308056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101280, 38.902309, 44.258259>,  <36.121323, 39.293091, 44.175262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101280, 38.902309, 44.258259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282052, -0.213141, -0.935424,
		0.958090, 0.011657, 0.286230,
		-0.050103, -0.976952, 0.207496,
		36.086250, 38.609222, 44.320507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841839, 38.896160, 44.039677>,  <36.121323, 39.293091, 44.175262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841839, 38.896160, 44.039677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568890, 38.608311, 43.988277>,  <36.405121, 38.435600, 43.957439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568890, 38.608311, 43.988277>,  <36.841839, 38.896160, 44.039677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568890, 38.608311, 43.988277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420725, -0.242878, -0.874071,
		0.597791, -0.650506, 0.468496,
		-0.682376, -0.719620, -0.128493,
		36.364178, 38.392426, 43.949730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147556, 38.399994, 43.745461>,  <36.841839, 38.896160, 44.039677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147556, 38.399994, 43.745461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778145, 38.259762, 43.683254>,  <36.556496, 38.175625, 43.645931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778145, 38.259762, 43.683254>,  <37.147556, 38.399994, 43.745461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778145, 38.259762, 43.683254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214161, -0.135017, -0.967422,
		0.318160, -0.926750, 0.199773,
		-0.923531, -0.350579, -0.155516,
		36.501087, 38.154587, 43.636600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262367, 37.853859, 43.306377>,  <37.147556, 38.399994, 43.745461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262367, 37.853859, 43.306377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887627, 37.984390, 43.256058>,  <36.662785, 38.062710, 43.225864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887627, 37.984390, 43.256058>,  <37.262367, 37.853859, 43.306377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887627, 37.984390, 43.256058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097305, -0.102299, -0.989983,
		-0.335925, -0.939706, 0.064086,
		-0.936849, 0.326324, -0.125803,
		36.606571, 38.082287, 43.218315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876579, 37.417191, 42.812153>,  <37.262367, 37.853859, 43.306377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876579, 37.417191, 42.812153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701965, 37.775829, 42.782337>,  <36.597198, 37.991013, 42.764446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701965, 37.775829, 42.782337>,  <36.876579, 37.417191, 42.812153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701965, 37.775829, 42.782337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094683, -0.128175, -0.987222,
		-0.894692, -0.423897, 0.140845,
		-0.436533, 0.896595, -0.074542,
		36.571007, 38.044807, 42.759975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237831, 37.291748, 42.552177>,  <36.876579, 37.417191, 42.812153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237831, 37.291748, 42.552177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350700, 37.665257, 42.464130>,  <36.418423, 37.889362, 42.411301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350700, 37.665257, 42.464130>,  <36.237831, 37.291748, 42.552177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350700, 37.665257, 42.464130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022154, -0.223039, -0.974557,
		-0.959107, 0.279874, -0.042250,
		0.282177, 0.933769, -0.220119,
		36.435352, 37.945389, 42.398094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947113, 37.447063, 41.824623>,  <36.237831, 37.291748, 42.552177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947113, 37.447063, 41.824623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224449, 37.726208, 41.896473>,  <36.390850, 37.893696, 41.939583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224449, 37.726208, 41.896473>,  <35.947113, 37.447063, 41.824623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224449, 37.726208, 41.896473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185483, 0.068038, -0.980289,
		-0.696329, 0.712992, -0.082269,
		0.693341, 0.697863, 0.179625,
		36.432453, 37.935566, 41.950359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792583, 38.078835, 41.320114>,  <35.947113, 37.447063, 41.824623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792583, 38.078835, 41.320114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179958, 38.060360, 41.418095>,  <36.412384, 38.049274, 41.476883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.179958, 38.060360, 41.418095>,  <35.792583, 38.078835, 41.320114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179958, 38.060360, 41.418095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248567, 0.105529, -0.962849,
		0.018623, 0.993343, 0.113679,
		0.968436, -0.046188, 0.244947,
		36.470490, 38.046505, 41.491577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027390, 38.539082, 40.889572>,  <35.792583, 38.078835, 41.320114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027390, 38.539082, 40.889572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337315, 38.313423, 41.003696>,  <36.523270, 38.178028, 41.072170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337315, 38.313423, 41.003696>,  <36.027390, 38.539082, 40.889572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337315, 38.313423, 41.003696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333173, -0.019156, -0.942671,
		0.537266, 0.825455, 0.173115,
		0.774817, -0.564142, 0.285311,
		36.569759, 38.144180, 41.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401112, 39.131248, 41.270058>,  <36.027390, 38.539082, 40.889572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401112, 39.131248, 41.270058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117184, 39.174316, 41.548500>,  <35.946827, 39.200157, 41.715565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.117184, 39.174316, 41.548500>,  <36.401112, 39.131248, 41.270058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117184, 39.174316, 41.548500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704174, 0.084461, 0.704986,
		0.017111, 0.990593, -0.135770,
		-0.709821, 0.107669, 0.696105,
		35.904236, 39.206615, 41.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.191269, 35.425488, 27.577927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.810257, 35.490860, 27.680670>,  <24.581650, 35.530083, 27.742315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.810257, 35.490860, 27.680670>,  <25.191269, 35.425488, 27.577927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810257, 35.490860, 27.680670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265892, 0.035673, 0.963342,
		0.148274, 0.985910, -0.077434,
		-0.952532, 0.163428, 0.256856,
		24.524498, 35.539886, 27.757727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241423, 36.078979, 27.856075>,  <25.191269, 35.425488, 27.577927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241423, 36.078979, 27.856075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.953312, 35.831585, 27.981730>,  <24.780445, 35.683147, 28.057121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.953312, 35.831585, 27.981730>,  <25.241423, 36.078979, 27.856075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953312, 35.831585, 27.981730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364161, 0.048304, 0.930082,
		-0.590414, 0.784312, 0.190435,
		-0.720276, -0.618482, 0.314136,
		24.737228, 35.646042, 28.075970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883762, 36.437805, 28.296604>,  <25.241423, 36.078979, 27.856075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883762, 36.437805, 28.296604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.786711, 36.061203, 28.390156>,  <24.728479, 35.835243, 28.446287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.786711, 36.061203, 28.390156>,  <24.883762, 36.437805, 28.296604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786711, 36.061203, 28.390156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329715, 0.146703, 0.932613,
		-0.912370, 0.303392, 0.274835,
		-0.242628, -0.941505, 0.233880,
		24.713923, 35.778751, 28.460320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404951, 36.569599, 28.926723>,  <24.883762, 36.437805, 28.296604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404951, 36.569599, 28.926723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.559273, 36.202362, 28.963078>,  <24.651865, 35.982021, 28.984890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.559273, 36.202362, 28.963078>,  <24.404951, 36.569599, 28.926723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559273, 36.202362, 28.963078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074134, 0.129046, 0.988864,
		-0.919598, -0.374768, 0.117848,
		0.385802, -0.918094, 0.090887,
		24.675013, 35.926933, 28.990343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142637, 36.330658, 29.571064>,  <24.404951, 36.569599, 28.926723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142637, 36.330658, 29.571064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.418850, 36.055187, 29.482620>,  <24.584578, 35.889904, 29.429554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.418850, 36.055187, 29.482620>,  <24.142637, 36.330658, 29.571064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418850, 36.055187, 29.482620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344066, 0.043861, 0.937920,
		-0.636227, -0.723740, 0.267238,
		0.690531, -0.688678, -0.221109,
		24.626009, 35.848583, 29.416288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.020874, 35.781960, 29.957096>,  <24.142637, 36.330658, 29.571064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.020874, 35.781960, 29.957096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.407267, 35.735477, 29.864683>,  <24.639103, 35.707588, 29.809235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.407267, 35.735477, 29.864683>,  <24.020874, 35.781960, 29.957096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407267, 35.735477, 29.864683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228347, -0.036116, 0.972910,
		-0.121402, -0.992568, -0.008352,
		0.965981, -0.116206, -0.231034,
		24.697062, 35.700615, 29.795372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313194, 35.470982, 30.618469>,  <24.020874, 35.781960, 29.957096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313194, 35.470982, 30.618469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.639166, 35.574322, 30.410952>,  <24.834749, 35.636326, 30.286442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.639166, 35.574322, 30.410952>,  <24.313194, 35.470982, 30.618469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639166, 35.574322, 30.410952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557355, -0.103931, 0.823743,
		0.158895, -0.960444, -0.228690,
		0.814928, 0.258350, -0.518795,
		24.883644, 35.651825, 30.255314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803501, 35.001060, 30.737764>,  <24.313194, 35.470982, 30.618469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803501, 35.001060, 30.737764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.992777, 35.336479, 30.629745>,  <25.106342, 35.537731, 30.564934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.992777, 35.336479, 30.629745>,  <24.803501, 35.001060, 30.737764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992777, 35.336479, 30.629745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529827, -0.025980, 0.847708,
		0.703830, -0.544205, -0.456579,
		0.473189, 0.838550, -0.270049,
		25.134733, 35.588043, 30.548731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564503, 34.796494, 30.839748>,  <24.803501, 35.001060, 30.737764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564503, 34.796494, 30.839748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537880, 35.195255, 30.856482>,  <25.521906, 35.434513, 30.866522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537880, 35.195255, 30.856482>,  <25.564503, 34.796494, 30.839748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537880, 35.195255, 30.856482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533796, 0.000152, 0.845613,
		0.842990, 0.078612, -0.532154,
		-0.066557, 0.996905, 0.041835,
		25.517914, 35.494328, 30.869032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239656, 34.949791, 31.003391>,  <25.564503, 34.796494, 30.839748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239656, 34.949791, 31.003391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030525, 35.279701, 31.089546>,  <25.905046, 35.477650, 31.141239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030525, 35.279701, 31.089546>,  <26.239656, 34.949791, 31.003391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030525, 35.279701, 31.089546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429096, 0.036315, 0.902528,
		0.736564, 0.564289, -0.372896,
		-0.522828, 0.824779, 0.215386,
		25.873676, 35.527134, 31.154161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672054, 35.409168, 31.168552>,  <26.239656, 34.949791, 31.003391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672054, 35.409168, 31.168552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350534, 35.554066, 31.357313>,  <26.157623, 35.641003, 31.470570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350534, 35.554066, 31.357313>,  <26.672054, 35.409168, 31.168552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350534, 35.554066, 31.357313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539270, 0.108729, 0.835084,
		0.251193, 0.925721, -0.282742,
		-0.803798, 0.362241, 0.471901,
		26.109396, 35.662739, 31.498884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945225, 35.857746, 31.640007>,  <26.672054, 35.409168, 31.168552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945225, 35.857746, 31.640007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575235, 35.797615, 31.779623>,  <26.353243, 35.761536, 31.863392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.575235, 35.797615, 31.779623>,  <26.945225, 35.857746, 31.640007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575235, 35.797615, 31.779623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362395, -0.072315, 0.929215,
		-0.114447, 0.985988, 0.121368,
		-0.924971, -0.150329, 0.349040,
		26.297745, 35.752518, 31.884335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927961, 36.146282, 32.310154>,  <26.945225, 35.857746, 31.640007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927961, 36.146282, 32.310154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613834, 35.898762, 32.317795>,  <26.425358, 35.750248, 32.322380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613834, 35.898762, 32.317795>,  <26.927961, 36.146282, 32.310154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613834, 35.898762, 32.317795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231823, -0.265321, 0.935875,
		-0.574053, 0.739385, 0.351813,
		-0.785316, -0.618800, 0.019098,
		26.378239, 35.713123, 32.323524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645573, 36.360569, 32.945053>,  <26.927961, 36.146282, 32.310154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645573, 36.360569, 32.945053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496260, 35.997635, 32.867702>,  <26.406672, 35.779873, 32.821293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.496260, 35.997635, 32.867702>,  <26.645573, 36.360569, 32.945053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496260, 35.997635, 32.867702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056463, -0.230278, 0.971486,
		-0.925998, 0.351719, 0.137189,
		-0.373282, -0.907340, -0.193378,
		26.384275, 35.725433, 32.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326248, 36.301716, 33.450760>,  <26.645573, 36.360569, 32.945053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326248, 36.301716, 33.450760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355228, 35.921787, 33.329052>,  <26.372616, 35.693829, 33.256027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.355228, 35.921787, 33.329052>,  <26.326248, 36.301716, 33.450760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355228, 35.921787, 33.329052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026539, -0.303130, 0.952579,
		-0.997019, -0.077090, 0.003245,
		0.072451, -0.949826, -0.304272,
		26.376965, 35.636841, 33.237770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839409, 35.907768, 33.859768>,  <26.326248, 36.301716, 33.450760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839409, 35.907768, 33.859768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098080, 35.635818, 33.721447>,  <26.253283, 35.472649, 33.638454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098080, 35.635818, 33.721447>,  <25.839409, 35.907768, 33.859768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098080, 35.635818, 33.721447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109297, -0.366086, 0.924140,
		-0.754894, -0.635415, -0.162431,
		0.646676, -0.679874, -0.345805,
		26.292082, 35.431858, 33.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665512, 35.260677, 34.226318>,  <25.839409, 35.907768, 33.859768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665512, 35.260677, 34.226318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034986, 35.191727, 34.089443>,  <26.256672, 35.150356, 34.007317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034986, 35.191727, 34.089443>,  <25.665512, 35.260677, 34.226318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034986, 35.191727, 34.089443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222628, -0.485399, 0.845473,
		-0.311835, -0.857131, -0.409981,
		0.923686, -0.172375, -0.342186,
		26.312092, 35.140015, 33.986786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803782, 34.595177, 34.315418>,  <25.665512, 35.260677, 34.226318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803782, 34.595177, 34.315418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.157738, 34.781078, 34.302948>,  <26.370111, 34.892620, 34.295467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.157738, 34.781078, 34.302948>,  <25.803782, 34.595177, 34.315418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157738, 34.781078, 34.302948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329433, -0.577111, 0.747273,
		0.329308, -0.671525, -0.663785,
		0.884890, 0.464756, -0.031175,
		26.423204, 34.920506, 34.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222034, 34.011051, 34.154015>,  <25.803782, 34.595177, 34.315418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222034, 34.011051, 34.154015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453266, 34.300713, 34.304443>,  <26.592005, 34.474510, 34.394699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453266, 34.300713, 34.304443>,  <26.222034, 34.011051, 34.154015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453266, 34.300713, 34.304443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302803, -0.618349, 0.725228,
		0.757716, -0.305365, -0.576730,
		0.578080, 0.724152, 0.376068,
		26.626690, 34.517960, 34.417263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717033, 33.634335, 34.398247>,  <26.222034, 34.011051, 34.154015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717033, 33.634335, 34.398247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775162, 33.978313, 34.593952>,  <26.810038, 34.184700, 34.711376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775162, 33.978313, 34.593952>,  <26.717033, 33.634335, 34.398247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775162, 33.978313, 34.593952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211676, -0.510085, 0.833670,
		0.966476, -0.017583, -0.256155,
		0.145319, 0.859944, 0.489263,
		26.818758, 34.236298, 34.740730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342794, 33.542690, 34.809814>,  <26.717033, 33.634335, 34.398247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342794, 33.542690, 34.809814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183256, 33.870399, 34.974602>,  <27.087534, 34.067024, 35.073475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183256, 33.870399, 34.974602>,  <27.342794, 33.542690, 34.809814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183256, 33.870399, 34.974602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298080, -0.309023, 0.903135,
		0.867220, 0.483011, -0.120955,
		-0.398846, 0.819271, 0.411966,
		27.063602, 34.116180, 35.098190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922293, 33.859573, 35.105682>,  <27.342794, 33.542690, 34.809814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922293, 33.859573, 35.105682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585421, 33.979168, 35.285164>,  <27.383297, 34.050926, 35.392853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585421, 33.979168, 35.285164>,  <27.922293, 33.859573, 35.105682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585421, 33.979168, 35.285164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376869, -0.268744, 0.886423,
		0.385615, 0.915633, 0.113653,
		-0.842182, 0.298986, 0.448706,
		27.332766, 34.068863, 35.419777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670605, 33.992306, 35.051769>,  <27.922293, 33.859573, 35.105682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670605, 33.992306, 35.051769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944504, 33.700970, 35.041664>,  <29.108843, 33.526169, 35.035599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.944504, 33.700970, 35.041664>,  <28.670605, 33.992306, 35.051769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944504, 33.700970, 35.041664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025569, 0.058658, -0.997951,
		0.728330, 0.682700, 0.058789,
		0.684750, -0.728340, -0.025266,
		29.149929, 33.482468, 35.034084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164846, 34.195461, 34.534409>,  <28.670605, 33.992306, 35.051769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164846, 34.195461, 34.534409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194035, 33.798477, 34.573811>,  <29.211548, 33.560287, 34.597450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194035, 33.798477, 34.573811>,  <29.164846, 34.195461, 34.534409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194035, 33.798477, 34.573811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006066, -0.098325, -0.995136,
		0.997316, 0.073211, -0.001154,
		0.072968, -0.992458, 0.098506,
		29.215925, 33.500740, 34.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456675, 33.963291, 33.917305>,  <29.164846, 34.195461, 34.534409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456675, 33.963291, 33.917305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327278, 33.610016, 34.053143>,  <29.249641, 33.398048, 34.134644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.327278, 33.610016, 34.053143>,  <29.456675, 33.963291, 33.917305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327278, 33.610016, 34.053143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169448, -0.299020, -0.939082,
		0.930936, -0.361327, -0.052925,
		-0.323490, -0.883193, 0.339595,
		29.230230, 33.345058, 34.155022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840828, 33.310692, 33.550236>,  <29.456675, 33.963291, 33.917305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840828, 33.310692, 33.550236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475525, 33.210880, 33.679043>,  <29.256342, 33.150993, 33.756325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475525, 33.210880, 33.679043>,  <29.840828, 33.310692, 33.550236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475525, 33.210880, 33.679043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165780, -0.494404, -0.853277,
		0.372122, -0.832647, 0.410152,
		-0.913259, -0.249528, 0.322015,
		29.201548, 33.136021, 33.775646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690147, 32.657326, 33.266060>,  <29.840828, 33.310692, 33.550236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690147, 32.657326, 33.266060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335766, 32.789478, 33.396248>,  <29.123137, 32.868771, 33.474361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335766, 32.789478, 33.396248>,  <29.690147, 32.657326, 33.266060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335766, 32.789478, 33.396248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417362, -0.261983, -0.870157,
		-0.202213, -0.906761, 0.369993,
		-0.885956, 0.330378, 0.325471,
		29.069979, 32.888592, 33.493889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285549, 32.233559, 32.914543>,  <29.690147, 32.657326, 33.266060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285549, 32.233559, 32.914543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045206, 32.522503, 33.051456>,  <28.901001, 32.695869, 33.133606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045206, 32.522503, 33.051456>,  <29.285549, 32.233559, 32.914543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045206, 32.522503, 33.051456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532570, -0.042440, -0.845321,
		-0.596104, -0.690208, 0.410210,
		-0.600857, 0.722365, 0.342285,
		28.864948, 32.739212, 33.154140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651203, 32.080399, 32.757828>,  <29.285549, 32.233559, 32.914543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651203, 32.080399, 32.757828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586180, 32.469643, 32.823105>,  <28.547167, 32.703190, 32.862270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.586180, 32.469643, 32.823105>,  <28.651203, 32.080399, 32.757828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586180, 32.469643, 32.823105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527489, 0.054066, -0.847840,
		-0.833865, -0.223903, 0.504516,
		-0.162556, 0.973111, 0.163190,
		28.537413, 32.761578, 32.872063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814468, 32.231289, 32.798004>,  <28.651203, 32.080399, 32.757828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814468, 32.231289, 32.798004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027327, 32.550205, 32.684055>,  <28.155043, 32.741554, 32.615685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027327, 32.550205, 32.684055>,  <27.814468, 32.231289, 32.798004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027327, 32.550205, 32.684055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599461, 0.117206, -0.791776,
		-0.597884, 0.592111, 0.540314,
		0.532147, 0.797288, -0.284872,
		28.186972, 32.789391, 32.598595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300501, 32.582428, 32.577724>,  <27.814468, 32.231289, 32.798004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300501, 32.582428, 32.577724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627625, 32.759846, 32.431049>,  <27.823898, 32.866295, 32.343044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627625, 32.759846, 32.431049>,  <27.300501, 32.582428, 32.577724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627625, 32.759846, 32.431049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441361, 0.074505, -0.894231,
		-0.369312, 0.893150, 0.256694,
		0.817808, 0.443545, -0.366686,
		27.872967, 32.892910, 32.321045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077423, 33.281120, 32.302959>,  <27.300501, 32.582428, 32.577724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077423, 33.281120, 32.302959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409149, 33.168446, 32.109924>,  <27.608185, 33.100842, 31.994104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409149, 33.168446, 32.109924>,  <27.077423, 33.281120, 32.302959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409149, 33.168446, 32.109924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488005, 0.055583, -0.871069,
		0.272193, 0.957895, -0.091369,
		0.829314, -0.281688, -0.482586,
		27.657944, 33.083939, 31.965149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144266, 33.736610, 31.754236>,  <27.077423, 33.281120, 32.302959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144266, 33.736610, 31.754236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.407921, 33.458565, 31.639446>,  <27.566113, 33.291737, 31.570572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.407921, 33.458565, 31.639446>,  <27.144266, 33.736610, 31.754236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407921, 33.458565, 31.639446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259654, 0.147776, -0.954328,
		0.705776, 0.703546, -0.083085,
		0.659136, -0.695115, -0.286975,
		27.605661, 33.250031, 31.553354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409359, 33.994129, 31.199984>,  <27.144266, 33.736610, 31.754236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409359, 33.994129, 31.199984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482027, 33.600796, 31.197075>,  <27.525627, 33.364796, 31.195330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482027, 33.600796, 31.197075>,  <27.409359, 33.994129, 31.199984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482027, 33.600796, 31.197075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335797, -0.055084, -0.940322,
		0.924249, 0.173271, -0.340207,
		0.181671, -0.983333, -0.007272,
		27.536528, 33.305798, 31.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788576, 33.830975, 30.639694>,  <27.409359, 33.994129, 31.199984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788576, 33.830975, 30.639694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616089, 33.482578, 30.733871>,  <27.512596, 33.273540, 30.790379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616089, 33.482578, 30.733871>,  <27.788576, 33.830975, 30.639694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616089, 33.482578, 30.733871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055878, -0.234672, -0.970467,
		0.900517, -0.431637, 0.052526,
		-0.431216, -0.870987, 0.235445,
		27.486725, 33.221283, 30.804504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145878, 33.361027, 30.256649>,  <27.788576, 33.830975, 30.639694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145878, 33.361027, 30.256649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802162, 33.182430, 30.356464>,  <27.595932, 33.075272, 30.416353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802162, 33.182430, 30.356464>,  <28.145878, 33.361027, 30.256649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802162, 33.182430, 30.356464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179064, -0.194397, -0.964441,
		0.479123, -0.873416, 0.087093,
		-0.859289, -0.446490, 0.249537,
		27.544376, 33.048485, 30.431326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075064, 32.849609, 29.821802>,  <28.145878, 33.361027, 30.256649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075064, 32.849609, 29.821802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701811, 32.874737, 29.963406>,  <27.477859, 32.889812, 30.048368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701811, 32.874737, 29.963406>,  <28.075064, 32.849609, 29.821802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701811, 32.874737, 29.963406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359443, -0.140251, -0.922567,
		-0.008299, -0.988122, 0.153451,
		-0.933130, 0.062814, 0.354010,
		27.421871, 32.893581, 30.069609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799282, 32.327389, 29.450184>,  <28.075064, 32.849609, 29.821802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799282, 32.327389, 29.450184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484148, 32.537663, 29.578545>,  <27.295067, 32.663826, 29.655561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.484148, 32.537663, 29.578545>,  <27.799282, 32.327389, 29.450184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484148, 32.537663, 29.578545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411916, -0.062389, -0.909083,
		-0.457867, -0.848391, 0.265689,
		-0.787834, 0.525681, 0.320900,
		27.247797, 32.695366, 29.674814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172697, 31.990181, 29.246546>,  <27.799282, 32.327389, 29.450184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172697, 31.990181, 29.246546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061930, 32.366909, 29.322750>,  <26.995470, 32.592945, 29.368473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061930, 32.366909, 29.322750>,  <27.172697, 31.990181, 29.246546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061930, 32.366909, 29.322750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568820, -0.000878, -0.822461,
		-0.774442, -0.336122, 0.535969,
		-0.276918, 0.941818, 0.190513,
		26.978855, 32.649456, 29.379904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569353, 32.002026, 29.078644>,  <27.172697, 31.990181, 29.246546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569353, 32.002026, 29.078644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661356, 32.391163, 29.068209>,  <26.716558, 32.624645, 29.061947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661356, 32.391163, 29.068209>,  <26.569353, 32.002026, 29.078644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661356, 32.391163, 29.068209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516161, 0.099221, -0.850725,
		-0.825029, 0.209140, 0.524963,
		0.230009, 0.972839, -0.026090,
		26.730358, 32.683014, 29.060381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956102, 32.353374, 28.992081>,  <26.569353, 32.002026, 29.078644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956102, 32.353374, 28.992081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239002, 32.600613, 28.854816>,  <26.408741, 32.748955, 28.772457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.239002, 32.600613, 28.854816>,  <25.956102, 32.353374, 28.992081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239002, 32.600613, 28.854816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452148, 0.022322, -0.891664,
		-0.543473, 0.785786, 0.295257,
		0.707247, 0.618096, -0.343160,
		26.451176, 32.786041, 28.751869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521580, 32.784523, 28.563215>,  <25.956102, 32.353374, 28.992081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521580, 32.784523, 28.563215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.906654, 32.858978, 28.484640>,  <26.137699, 32.903652, 28.437494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.906654, 32.858978, 28.484640>,  <25.521580, 32.784523, 28.563215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906654, 32.858978, 28.484640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218269, 0.104938, -0.970230,
		-0.159983, 0.976904, 0.141650,
		0.962686, 0.186138, -0.196439,
		26.195459, 32.914818, 28.425709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.137844, 36.452541, 46.955746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801632, 36.257832, 47.050873>,  <37.599903, 36.141006, 47.107948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801632, 36.257832, 47.050873>,  <38.137844, 36.452541, 46.955746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801632, 36.257832, 47.050873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113310, 0.587210, 0.801464,
		-0.529781, 0.646709, -0.548725,
		-0.840531, -0.486777, 0.237815,
		37.549473, 36.111797, 47.122219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569050, 36.996952, 47.152561>,  <38.137844, 36.452541, 46.955746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569050, 36.996952, 47.152561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445766, 36.648758, 47.306061>,  <37.371796, 36.439842, 47.398159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445766, 36.648758, 47.306061>,  <37.569050, 36.996952, 47.152561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445766, 36.648758, 47.306061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252899, 0.463844, 0.849053,
		-0.917086, 0.164639, -0.363107,
		-0.308212, -0.870484, 0.383748,
		37.353302, 36.387611, 47.421185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908203, 37.122498, 47.408588>,  <37.569050, 36.996952, 47.152561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908203, 37.122498, 47.408588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067070, 36.817085, 47.612267>,  <37.162392, 36.633839, 47.734474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067070, 36.817085, 47.612267>,  <36.908203, 37.122498, 47.408588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067070, 36.817085, 47.612267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423962, 0.339432, 0.839668,
		-0.813949, -0.549369, -0.188896,
		0.397170, -0.763531, 0.509192,
		37.186222, 36.588024, 47.765022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402771, 37.025417, 47.987728>,  <36.908203, 37.122498, 47.408588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402771, 37.025417, 47.987728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732609, 36.833408, 48.107475>,  <36.930511, 36.718204, 48.179325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.732609, 36.833408, 48.107475>,  <36.402771, 37.025417, 47.987728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732609, 36.833408, 48.107475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160179, 0.309421, 0.937337,
		-0.542576, -0.820875, 0.178257,
		0.824593, -0.480024, 0.299372,
		36.979988, 36.689400, 48.197289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235294, 36.655022, 48.628258>,  <36.402771, 37.025417, 47.987728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235294, 36.655022, 48.628258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633774, 36.687664, 48.616009>,  <36.872860, 36.707249, 48.608658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633774, 36.687664, 48.616009>,  <36.235294, 36.655022, 48.628258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633774, 36.687664, 48.616009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007502, 0.269733, 0.962906,
		0.086837, -0.959471, 0.268094,
		0.996194, 0.081604, -0.030621,
		36.932632, 36.712147, 48.606823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509617, 36.209522, 49.197731>,  <36.235294, 36.655022, 48.628258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509617, 36.209522, 49.197731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805645, 36.464649, 49.112427>,  <36.983261, 36.617725, 49.061245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805645, 36.464649, 49.112427>,  <36.509617, 36.209522, 49.197731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805645, 36.464649, 49.112427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198243, 0.096117, 0.975429,
		0.642643, -0.764167, -0.055309,
		0.740074, 0.637817, -0.213259,
		37.027668, 36.655994, 49.048450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073723, 35.918266, 49.572968>,  <36.509617, 36.209522, 49.197731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073723, 35.918266, 49.572968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152012, 36.300449, 49.484608>,  <37.198986, 36.529758, 49.431591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152012, 36.300449, 49.484608>,  <37.073723, 35.918266, 49.572968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152012, 36.300449, 49.484608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125720, 0.198951, 0.971912,
		0.972568, -0.217993, -0.081181,
		0.195719, 0.955456, -0.220900,
		37.210728, 36.587086, 49.418339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749462, 35.999619, 49.832340>,  <37.073723, 35.918266, 49.572968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749462, 35.999619, 49.832340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559517, 36.351624, 49.828842>,  <37.445549, 36.562828, 49.826744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559517, 36.351624, 49.828842>,  <37.749462, 35.999619, 49.832340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559517, 36.351624, 49.828842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335382, 0.190147, 0.922693,
		0.813649, 0.435217, -0.385436,
		-0.474862, 0.880017, -0.008748,
		37.417057, 36.615627, 49.826218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276215, 36.441807, 50.143715>,  <37.749462, 35.999619, 49.832340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276215, 36.441807, 50.143715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925030, 36.630344, 50.177216>,  <37.714317, 36.743465, 50.197315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925030, 36.630344, 50.177216>,  <38.276215, 36.441807, 50.143715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925030, 36.630344, 50.177216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195558, 0.193437, 0.961426,
		0.436959, 0.860477, -0.262006,
		-0.877966, 0.471341, 0.083749,
		37.661640, 36.771748, 50.202339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399490, 37.117760, 50.301243>,  <38.276215, 36.441807, 50.143715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399490, 37.117760, 50.301243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020042, 37.067955, 50.417606>,  <37.792374, 37.038071, 50.487423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020042, 37.067955, 50.417606>,  <38.399490, 37.117760, 50.301243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020042, 37.067955, 50.417606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227073, 0.372399, 0.899865,
		-0.220380, 0.919682, -0.324989,
		-0.948615, -0.124516, 0.290904,
		37.735458, 37.030602, 50.504879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327660, 37.643665, 50.700977>,  <38.399490, 37.117760, 50.301243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327660, 37.643665, 50.700977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031914, 37.415707, 50.844395>,  <37.854465, 37.278931, 50.930447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031914, 37.415707, 50.844395>,  <38.327660, 37.643665, 50.700977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031914, 37.415707, 50.844395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230802, 0.285733, 0.930100,
		-0.632512, 0.770436, -0.079727,
		-0.739364, -0.569898, 0.358548,
		37.810104, 37.244736, 50.951958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983738, 38.014866, 51.161507>,  <38.327660, 37.643665, 50.700977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983738, 38.014866, 51.161507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921188, 37.627487, 51.239136>,  <37.883659, 37.395061, 51.285713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921188, 37.627487, 51.239136>,  <37.983738, 38.014866, 51.161507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921188, 37.627487, 51.239136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305316, 0.139475, 0.941981,
		-0.939325, 0.206553, 0.273871,
		-0.156371, -0.968443, 0.194077,
		37.874279, 37.336956, 51.297359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528236, 37.997154, 51.758274>,  <37.983738, 38.014866, 51.161507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528236, 37.997154, 51.758274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766521, 37.676884, 51.732872>,  <37.909492, 37.484722, 51.717628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766521, 37.676884, 51.732872>,  <37.528236, 37.997154, 51.758274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766521, 37.676884, 51.732872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334076, 0.175098, 0.926139,
		-0.730421, -0.572934, 0.371797,
		0.595717, -0.800680, -0.063509,
		37.945236, 37.436680, 51.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913502, 38.424580, 51.478085>,  <37.528236, 37.997154, 51.758274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913502, 38.424580, 51.478085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755669, 38.502899, 51.118980>,  <36.660969, 38.549892, 50.903519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755669, 38.502899, 51.118980>,  <36.913502, 38.424580, 51.478085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755669, 38.502899, 51.118980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617501, 0.667010, 0.416880,
		0.680440, 0.718859, -0.142280,
		-0.394580, 0.195803, -0.897757,
		36.637295, 38.561642, 50.849655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221992, 38.415306, 51.679676>,  <36.913502, 38.424580, 51.478085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221992, 38.415306, 51.679676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847630, 38.552383, 51.647099>,  <35.623013, 38.634628, 51.627552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847630, 38.552383, 51.647099>,  <36.221992, 38.415306, 51.679676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847630, 38.552383, 51.647099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151237, 0.182143, -0.971572,
		-0.318115, -0.921622, -0.222298,
		-0.935911, 0.342691, -0.081441,
		35.566856, 38.655190, 51.622665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938690, 37.978336, 51.165001>,  <36.221992, 38.415306, 51.679676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938690, 37.978336, 51.165001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739513, 38.325169, 51.170994>,  <35.620007, 38.533268, 51.174591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739513, 38.325169, 51.170994>,  <35.938690, 37.978336, 51.165001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739513, 38.325169, 51.170994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051120, 0.046599, -0.997605,
		-0.865703, -0.495981, -0.067529,
		-0.497940, 0.867082, 0.014986,
		35.590130, 38.585293, 51.175491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432098, 37.923115, 50.720417>,  <35.938690, 37.978336, 51.165001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432098, 37.923115, 50.720417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448570, 38.322205, 50.741806>,  <35.458454, 38.561657, 50.754639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448570, 38.322205, 50.741806>,  <35.432098, 37.923115, 50.720417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448570, 38.322205, 50.741806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051094, 0.055551, -0.997148,
		-0.997845, 0.038327, 0.053265,
		0.041177, 0.997720, 0.053473,
		35.460922, 38.621521, 50.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945324, 38.173435, 50.292511>,  <35.432098, 37.923115, 50.720417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945324, 38.173435, 50.292511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197338, 38.482471, 50.323914>,  <35.348545, 38.667892, 50.342754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197338, 38.482471, 50.323914>,  <34.945324, 38.173435, 50.292511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197338, 38.482471, 50.323914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100735, 0.181545, -0.978209,
		-0.770006, 0.608397, 0.192207,
		0.630034, 0.772589, 0.078504,
		35.386349, 38.714249, 50.347466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659416, 38.717297, 49.943680>,  <34.945324, 38.173435, 50.292511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659416, 38.717297, 49.943680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042057, 38.833355, 49.954449>,  <35.271641, 38.902988, 49.960911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042057, 38.833355, 49.954449>,  <34.659416, 38.717297, 49.943680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042057, 38.833355, 49.954449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077990, 0.343970, -0.935736,
		-0.280762, 0.893029, 0.351671,
		0.956604, 0.290146, 0.026927,
		35.329037, 38.920399, 49.962528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595749, 39.325493, 49.682755>,  <34.659416, 38.717297, 49.943680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595749, 39.325493, 49.682755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969734, 39.197906, 49.620655>,  <35.194126, 39.121353, 49.583393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969734, 39.197906, 49.620655>,  <34.595749, 39.325493, 49.682755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969734, 39.197906, 49.620655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067927, 0.268571, -0.960862,
		0.348179, 0.908917, 0.229438,
		0.934964, -0.318967, -0.155251,
		35.250225, 39.102215, 49.574081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941139, 39.818676, 49.192333>,  <34.595749, 39.325493, 49.682755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941139, 39.818676, 49.192333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148640, 39.479801, 49.146435>,  <35.273140, 39.276474, 49.118896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148640, 39.479801, 49.146435>,  <34.941139, 39.818676, 49.192333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148640, 39.479801, 49.146435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077221, 0.180107, -0.980611,
		0.851431, 0.499832, 0.158852,
		0.518752, -0.847189, -0.114751,
		35.304264, 39.225643, 49.112011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319042, 39.942616, 48.605274>,  <34.941139, 39.818676, 49.192333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319042, 39.942616, 48.605274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398766, 39.551926, 48.637009>,  <35.446598, 39.317513, 48.656048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398766, 39.551926, 48.637009>,  <35.319042, 39.942616, 48.605274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398766, 39.551926, 48.637009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148114, -0.050005, -0.987705,
		0.968680, 0.208604, 0.134700,
		0.199304, -0.976721, 0.079336,
		35.458557, 39.258911, 48.660809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825729, 39.841782, 48.144028>,  <35.319042, 39.942616, 48.605274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825729, 39.841782, 48.144028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660130, 39.481075, 48.193714>,  <35.560768, 39.264652, 48.223526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660130, 39.481075, 48.193714>,  <35.825729, 39.841782, 48.144028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660130, 39.481075, 48.193714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137427, -0.196814, -0.970762,
		0.899844, -0.384823, 0.205408,
		-0.413998, -0.901762, 0.124217,
		35.535931, 39.210548, 48.230980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374214, 39.449074, 47.840282>,  <35.825729, 39.841782, 48.144028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374214, 39.449074, 47.840282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058926, 39.203522, 47.857529>,  <35.869751, 39.056190, 47.867878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058926, 39.203522, 47.857529>,  <36.374214, 39.449074, 47.840282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058926, 39.203522, 47.857529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131353, -0.236285, -0.962765,
		0.601206, -0.753210, 0.266880,
		-0.788224, -0.613876, 0.043119,
		35.822460, 39.019360, 47.870464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549324, 38.871185, 47.511555>,  <36.374214, 39.449074, 47.840282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549324, 38.871185, 47.511555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150131, 38.853523, 47.493328>,  <35.910614, 38.842926, 47.482391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150131, 38.853523, 47.493328>,  <36.549324, 38.871185, 47.511555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150131, 38.853523, 47.493328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057275, -0.317996, -0.946361,
		0.027302, -0.947063, 0.319884,
		-0.997985, -0.044159, -0.045562,
		35.850735, 38.840275, 47.479660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474258, 38.250618, 47.167366>,  <36.549324, 38.871185, 47.511555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474258, 38.250618, 47.167366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117268, 38.427071, 47.129673>,  <35.903072, 38.532944, 47.107059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117268, 38.427071, 47.129673>,  <36.474258, 38.250618, 47.167366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117268, 38.427071, 47.129673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112871, -0.420639, -0.900179,
		-0.436747, -0.792751, 0.425202,
		-0.892475, 0.441144, -0.094235,
		35.849525, 38.559410, 47.101402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038006, 37.789207, 47.064835>,  <36.474258, 38.250618, 47.167366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038006, 37.789207, 47.064835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907654, 38.123386, 46.887821>,  <35.829441, 38.323895, 46.781612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907654, 38.123386, 46.887821>,  <36.038006, 37.789207, 47.064835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907654, 38.123386, 46.887821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141678, -0.419641, -0.896565,
		-0.934734, -0.354871, 0.018389,
		-0.325882, 0.835445, -0.442530,
		35.809891, 38.374020, 46.755062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553040, 37.574226, 46.568539>,  <36.038006, 37.789207, 47.064835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553040, 37.574226, 46.568539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659618, 37.948845, 46.477421>,  <35.723564, 38.173615, 46.422749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659618, 37.948845, 46.477421>,  <35.553040, 37.574226, 46.568539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659618, 37.948845, 46.477421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030105, -0.228135, -0.973164,
		-0.963379, 0.266155, -0.032591,
		0.266448, 0.936545, -0.227793,
		35.739552, 38.229809, 46.409084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930546, 37.366882, 46.807243>,  <35.553040, 37.574226, 46.568539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930546, 37.366882, 46.807243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716812, 37.036201, 46.736763>,  <34.588573, 36.837791, 46.694477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.716812, 37.036201, 46.736763>,  <34.930546, 37.366882, 46.807243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716812, 37.036201, 46.736763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240535, -0.051122, 0.969293,
		-0.810327, 0.560309, -0.171535,
		-0.534335, -0.826705, -0.176199,
		34.556511, 36.788189, 46.683903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170471, 37.466221, 46.984581>,  <34.930546, 37.366882, 46.807243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170471, 37.466221, 46.984581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274029, 37.081520, 47.020386>,  <34.336163, 36.850700, 47.041870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.274029, 37.081520, 47.020386>,  <34.170471, 37.466221, 46.984581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274029, 37.081520, 47.020386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291444, 0.010573, 0.956529,
		-0.920888, -0.273725, -0.277559,
		0.258891, -0.961750, 0.089512,
		34.351696, 36.792995, 47.047241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566837, 37.202480, 47.277542>,  <34.170471, 37.466221, 46.984581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566837, 37.202480, 47.277542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855659, 36.932114, 47.336567>,  <34.028954, 36.769894, 47.371983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855659, 36.932114, 47.336567>,  <33.566837, 37.202480, 47.277542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855659, 36.932114, 47.336567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219108, -0.021105, 0.975472,
		-0.656223, -0.736676, -0.163338,
		0.722055, -0.675916, 0.147563,
		34.072277, 36.729340, 47.380836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281422, 36.531509, 47.601189>,  <33.566837, 37.202480, 47.277542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281422, 36.531509, 47.601189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670116, 36.527458, 47.695526>,  <33.903332, 36.525028, 47.752129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670116, 36.527458, 47.695526>,  <33.281422, 36.531509, 47.601189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670116, 36.527458, 47.695526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235633, -0.101883, 0.966487,
		0.014245, -0.994745, -0.101389,
		0.971738, -0.010123, 0.235847,
		33.961639, 36.524422, 47.766281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337193, 35.991283, 48.040531>,  <33.281422, 36.531509, 47.601189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337193, 35.991283, 48.040531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661415, 36.215401, 48.108727>,  <33.855949, 36.349873, 48.149643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.661415, 36.215401, 48.108727>,  <33.337193, 35.991283, 48.040531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661415, 36.215401, 48.108727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142068, -0.094307, 0.985354,
		0.568164, -0.822909, 0.003158,
		0.810559, 0.560292, 0.170491,
		33.904583, 36.383488, 48.159874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870811, 35.622013, 48.521606>,  <33.337193, 35.991283, 48.040531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870811, 35.622013, 48.521606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965050, 36.007835, 48.569145>,  <34.021591, 36.239330, 48.597668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.965050, 36.007835, 48.569145>,  <33.870811, 35.622013, 48.521606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965050, 36.007835, 48.569145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113314, -0.148722, 0.982365,
		0.965223, -0.217970, -0.144335,
		0.235592, 0.964557, 0.118851,
		34.035728, 36.297203, 48.604801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476841, 35.599361, 49.011467>,  <33.870811, 35.622013, 48.521606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476841, 35.599361, 49.011467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323788, 35.968479, 48.993420>,  <34.231956, 36.189949, 48.982590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323788, 35.968479, 48.993420>,  <34.476841, 35.599361, 49.011467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323788, 35.968479, 48.993420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024479, 0.058943, 0.997961,
		0.923576, 0.380749, -0.045143,
		-0.382634, 0.922798, -0.045118,
		34.208996, 36.245319, 48.979885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157551, 35.383430, 49.379532>,  <34.476841, 35.599361, 49.011467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157551, 35.383430, 49.379532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049305, 35.007488, 49.462898>,  <34.984356, 34.781921, 49.512917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049305, 35.007488, 49.462898>,  <35.157551, 35.383430, 49.379532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049305, 35.007488, 49.462898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165365, -0.258655, -0.951710,
		0.948378, -0.223085, 0.225416,
		-0.270617, -0.939857, 0.208412,
		34.968121, 34.725533, 49.525421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673523, 34.866570, 48.964752>,  <35.157551, 35.383430, 49.379532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673523, 34.866570, 48.964752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328430, 34.681309, 49.045929>,  <35.121376, 34.570152, 49.094635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328430, 34.681309, 49.045929>,  <35.673523, 34.866570, 48.964752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328430, 34.681309, 49.045929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031645, -0.450004, -0.892466,
		0.504676, -0.763533, 0.402888,
		-0.862729, -0.463156, 0.202945,
		35.069611, 34.542362, 49.106812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776012, 34.179249, 48.763268>,  <35.673523, 34.866570, 48.964752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776012, 34.179249, 48.763268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376560, 34.198593, 48.771267>,  <35.136890, 34.210201, 48.776066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376560, 34.198593, 48.771267>,  <35.776012, 34.179249, 48.763268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376560, 34.198593, 48.771267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036711, -0.375056, -0.926275,
		-0.037294, -0.925740, 0.376317,
		-0.998630, 0.048359, 0.019998,
		35.076973, 34.213100, 48.777267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478073, 33.539459, 48.526031>,  <35.776012, 34.179249, 48.763268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478073, 33.539459, 48.526031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140865, 33.748631, 48.475655>,  <34.938541, 33.874134, 48.445431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140865, 33.748631, 48.475655>,  <35.478073, 33.539459, 48.526031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140865, 33.748631, 48.475655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180629, -0.495766, -0.849464,
		-0.506667, -0.693355, 0.512394,
		-0.843008, 0.522949, -0.125949,
		34.887959, 33.905510, 48.437874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937580, 32.996078, 48.349678>,  <35.478073, 33.539459, 48.526031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937580, 32.996078, 48.349678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845493, 33.356953, 48.203762>,  <34.790241, 33.573475, 48.116211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845493, 33.356953, 48.203762>,  <34.937580, 32.996078, 48.349678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845493, 33.356953, 48.203762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139974, -0.401658, -0.905029,
		-0.963020, -0.157291, 0.218749,
		-0.230215, 0.902181, -0.364789,
		34.776428, 33.627605, 48.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370739, 32.891651, 47.830231>,  <34.937580, 32.996078, 48.349678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370739, 32.891651, 47.830231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502522, 33.260944, 47.751137>,  <34.581593, 33.482521, 47.703678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502522, 33.260944, 47.751137>,  <34.370739, 32.891651, 47.830231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502522, 33.260944, 47.751137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145561, -0.157259, -0.976771,
		-0.932882, 0.350588, 0.082576,
		0.329458, 0.923232, -0.197736,
		34.601360, 33.537914, 47.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830593, 33.168411, 47.436573>,  <34.370739, 32.891651, 47.830231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830593, 33.168411, 47.436573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164322, 33.373695, 47.356056>,  <34.364559, 33.496864, 47.307747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164322, 33.373695, 47.356056>,  <33.830593, 33.168411, 47.436573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164322, 33.373695, 47.356056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189738, -0.075493, -0.978928,
		-0.517592, 0.854936, 0.034390,
		0.834325, 0.513211, -0.201288,
		34.414619, 33.527660, 47.295670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.769779, 33.903484, 51.390297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.477325, 34.176086, 51.377686>,  <38.301853, 34.339649, 51.370117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.477325, 34.176086, 51.377686>,  <38.769779, 33.903484, 51.390297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477325, 34.176086, 51.377686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085385, -0.137258, -0.986848,
		-0.676873, -0.718823, 0.158544,
		-0.731131, 0.681508, -0.031530,
		38.257988, 34.380539, 51.368225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089134, 33.549660, 51.156380>,  <38.769779, 33.903484, 51.390297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089134, 33.549660, 51.156380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092506, 33.943413, 51.086040>,  <38.094528, 34.179665, 51.043839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092506, 33.943413, 51.086040>,  <38.089134, 33.549660, 51.156380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092506, 33.943413, 51.086040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157346, -0.172357, -0.972386,
		-0.987508, 0.035865, 0.153435,
		0.008429, 0.984381, -0.175847,
		38.095036, 34.238728, 51.033287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634083, 33.578815, 50.727070>,  <38.089134, 33.549660, 51.156380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634083, 33.578815, 50.727070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.833393, 33.921490, 50.673695>,  <37.952980, 34.127094, 50.641670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.833393, 33.921490, 50.673695>,  <37.634083, 33.578815, 50.727070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833393, 33.921490, 50.673695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056515, -0.121480, -0.990984,
		-0.865174, 0.501325, -0.012116,
		0.498277, 0.856689, -0.133434,
		37.982876, 34.178497, 50.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234966, 33.940063, 50.188824>,  <37.634083, 33.578815, 50.727070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234966, 33.940063, 50.188824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617973, 34.054478, 50.203445>,  <37.847778, 34.123127, 50.212219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617973, 34.054478, 50.203445>,  <37.234966, 33.940063, 50.188824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617973, 34.054478, 50.203445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083503, -0.153697, -0.984583,
		-0.276011, 0.945811, -0.171053,
		0.957520, 0.286040, 0.036556,
		37.905228, 34.140289, 50.214413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407406, 34.404625, 49.688263>,  <37.234966, 33.940063, 50.188824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407406, 34.404625, 49.688263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.777706, 34.280231, 49.774300>,  <37.999886, 34.205597, 49.825924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.777706, 34.280231, 49.774300>,  <37.407406, 34.404625, 49.688263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777706, 34.280231, 49.774300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140582, -0.245001, -0.959276,
		0.351019, 0.918293, -0.183092,
		0.925755, -0.310985, 0.215095,
		38.055431, 34.186935, 49.838829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796227, 34.596382, 49.134480>,  <37.407406, 34.404625, 49.688263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796227, 34.596382, 49.134480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959740, 34.286888, 49.328068>,  <38.057846, 34.101192, 49.444221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959740, 34.286888, 49.328068>,  <37.796227, 34.596382, 49.134480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959740, 34.286888, 49.328068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136598, -0.472460, -0.870702,
		0.902353, 0.422035, -0.087441,
		0.408779, -0.773736, 0.483975,
		38.082375, 34.054768, 49.473259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326073, 34.455246, 48.712032>,  <37.796227, 34.596382, 49.134480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326073, 34.455246, 48.712032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.290482, 34.121841, 48.930149>,  <38.269127, 33.921799, 49.061020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.290482, 34.121841, 48.930149>,  <38.326073, 34.455246, 48.712032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290482, 34.121841, 48.930149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152454, -0.552412, -0.819511,
		0.984297, 0.010213, 0.176225,
		-0.088980, -0.833508, 0.545295,
		38.263786, 33.871788, 49.093739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832508, 34.011971, 48.428493>,  <38.326073, 34.455246, 48.712032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832508, 34.011971, 48.428493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585644, 33.783386, 48.644840>,  <38.437523, 33.646236, 48.774647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585644, 33.783386, 48.644840>,  <38.832508, 34.011971, 48.428493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585644, 33.783386, 48.644840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040697, -0.663290, -0.747255,
		0.785781, -0.483191, 0.386103,
		-0.617165, -0.571465, 0.540865,
		38.400494, 33.611946, 48.807098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080509, 33.318722, 48.225277>,  <38.832508, 34.011971, 48.428493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080509, 33.318722, 48.225277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.720745, 33.279995, 48.395775>,  <38.504887, 33.256760, 48.498074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.720745, 33.279995, 48.395775>,  <39.080509, 33.318722, 48.225277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720745, 33.279995, 48.395775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295436, -0.584034, -0.756057,
		0.322139, -0.805935, 0.496684,
		-0.899413, -0.096817, 0.426242,
		38.450920, 33.250950, 48.523647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072666, 32.624580, 48.434895>,  <39.080509, 33.318722, 48.225277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072666, 32.624580, 48.434895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.712540, 32.791092, 48.384079>,  <38.496464, 32.890999, 48.353588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.712540, 32.791092, 48.384079>,  <39.072666, 32.624580, 48.434895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712540, 32.791092, 48.384079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184515, -0.629422, -0.754839,
		-0.394184, -0.656156, 0.643490,
		-0.900318, 0.416279, -0.127037,
		38.442444, 32.915977, 48.345966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678978, 32.056385, 48.187172>,  <39.072666, 32.624580, 48.434895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678978, 32.056385, 48.187172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.427368, 32.351402, 48.088909>,  <38.276402, 32.528412, 48.029949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.427368, 32.351402, 48.088909>,  <38.678978, 32.056385, 48.187172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427368, 32.351402, 48.088909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227259, -0.476671, -0.849199,
		-0.743423, -0.478342, 0.467453,
		-0.629028, 0.737546, -0.245660,
		38.238659, 32.572666, 48.015209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948353, 31.806192, 47.991653>,  <38.678978, 32.056385, 48.187172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948353, 31.806192, 47.991653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.005890, 32.165096, 47.824688>,  <38.040413, 32.380440, 47.724506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.005890, 32.165096, 47.824688>,  <37.948353, 31.806192, 47.991653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005890, 32.165096, 47.824688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284617, -0.366472, -0.885828,
		-0.947788, 0.246224, 0.202660,
		0.143843, 0.897258, -0.417417,
		38.049042, 32.434273, 47.699463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242386, 31.733612, 48.230240>,  <37.948353, 31.806192, 47.991653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242386, 31.733612, 48.230240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847904, 31.670898, 48.208981>,  <36.611217, 31.633270, 48.196224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847904, 31.670898, 48.208981>,  <37.242386, 31.733612, 48.230240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847904, 31.670898, 48.208981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100596, 0.312582, 0.944549,
		-0.131477, 0.936862, -0.324041,
		-0.986202, -0.156783, -0.053147,
		36.552044, 31.623863, 48.193035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891502, 32.390343, 48.474220>,  <37.242386, 31.733612, 48.230240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891502, 32.390343, 48.474220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652748, 32.073402, 48.524677>,  <36.509495, 31.883240, 48.554951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652748, 32.073402, 48.524677>,  <36.891502, 32.390343, 48.474220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652748, 32.073402, 48.524677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083632, 0.217806, 0.972402,
		-0.797954, 0.569866, -0.196272,
		-0.596888, -0.792347, 0.126140,
		36.473682, 31.835699, 48.562519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362553, 32.686264, 48.827995>,  <36.891502, 32.390343, 48.474220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362553, 32.686264, 48.827995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300453, 32.300316, 48.912777>,  <36.263195, 32.068748, 48.963646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300453, 32.300316, 48.912777>,  <36.362553, 32.686264, 48.827995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300453, 32.300316, 48.912777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136655, 0.233468, 0.962714,
		-0.978378, 0.120495, -0.168100,
		-0.155248, -0.964870, 0.211954,
		36.253880, 32.010857, 48.976364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672817, 32.573235, 49.147186>,  <36.362553, 32.686264, 48.827995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672817, 32.573235, 49.147186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917557, 32.275387, 49.253899>,  <36.064400, 32.096676, 49.317928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.917557, 32.275387, 49.253899>,  <35.672817, 32.573235, 49.147186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917557, 32.275387, 49.253899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074306, 0.281685, 0.956625,
		-0.787475, -0.605136, 0.117019,
		0.611851, -0.744624, 0.266785,
		36.101112, 32.051998, 49.333935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330265, 32.245834, 49.759239>,  <35.672817, 32.573235, 49.147186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330265, 32.245834, 49.759239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693588, 32.079899, 49.780731>,  <35.911583, 31.980337, 49.793629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693588, 32.079899, 49.780731>,  <35.330265, 32.245834, 49.759239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693588, 32.079899, 49.780731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005208, 0.139659, 0.990186,
		-0.418272, -0.899113, 0.129014,
		0.908307, -0.414839, 0.053733,
		35.966080, 31.955446, 49.796852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261620, 31.703289, 50.330769>,  <35.330265, 32.245834, 49.759239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261620, 31.703289, 50.330769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640255, 31.819719, 50.275280>,  <35.867435, 31.889578, 50.241989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640255, 31.819719, 50.275280>,  <35.261620, 31.703289, 50.330769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640255, 31.819719, 50.275280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125859, 0.062540, 0.990075,
		0.296861, -0.954654, 0.022565,
		0.946591, 0.291074, -0.138717,
		35.924232, 31.907042, 50.233665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593029, 31.381939, 50.863274>,  <35.261620, 31.703289, 50.330769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593029, 31.381939, 50.863274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825241, 31.688515, 50.753326>,  <35.964569, 31.872461, 50.687359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825241, 31.688515, 50.753326>,  <35.593029, 31.381939, 50.863274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825241, 31.688515, 50.753326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105661, 0.263816, 0.958769,
		0.807356, -0.585635, 0.072170,
		0.580528, 0.766442, -0.274872,
		35.999401, 31.918447, 50.670864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240601, 31.389725, 51.274738>,  <35.593029, 31.381939, 50.863274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240601, 31.389725, 51.274738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.207726, 31.766603, 51.144810>,  <36.188000, 31.992731, 51.066853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.207726, 31.766603, 51.144810>,  <36.240601, 31.389725, 51.274738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207726, 31.766603, 51.144810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132417, 0.333362, 0.933454,
		0.987781, 0.033709, -0.152162,
		-0.082191, 0.942196, -0.324825,
		36.183067, 32.049263, 51.047363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704609, 31.669586, 51.608154>,  <36.240601, 31.389725, 51.274738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704609, 31.669586, 51.608154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491955, 31.984327, 51.482796>,  <36.364361, 32.173172, 51.407581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491955, 31.984327, 51.482796>,  <36.704609, 31.669586, 51.608154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491955, 31.984327, 51.482796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191440, 0.472086, 0.860515,
		0.825052, 0.397486, -0.401614,
		-0.531639, 0.786855, -0.313401,
		36.332462, 32.220383, 51.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100735, 32.366871, 51.732121>,  <36.704609, 31.669586, 51.608154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100735, 32.366871, 51.732121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727192, 32.509205, 51.717709>,  <36.503067, 32.594604, 51.709061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727192, 32.509205, 51.717709>,  <37.100735, 32.366871, 51.732121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727192, 32.509205, 51.717709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115260, 0.394775, 0.911520,
		0.338576, 0.847073, -0.409676,
		-0.933853, 0.355837, -0.036027,
		36.447037, 32.615955, 51.706902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018711, 33.078190, 51.836224>,  <37.100735, 32.366871, 51.732121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018711, 33.078190, 51.836224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669910, 32.942402, 51.977287>,  <36.460629, 32.860931, 52.061928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669910, 32.942402, 51.977287>,  <37.018711, 33.078190, 51.836224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669910, 32.942402, 51.977287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188635, 0.431770, 0.882038,
		-0.451693, 0.835665, -0.312470,
		-0.872004, -0.339468, 0.352663,
		36.408310, 32.840561, 52.083088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738956, 33.632103, 52.262348>,  <37.018711, 33.078190, 51.836224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738956, 33.632103, 52.262348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526260, 33.310905, 52.370014>,  <36.398643, 33.118187, 52.434612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.526260, 33.310905, 52.370014>,  <36.738956, 33.632103, 52.262348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526260, 33.310905, 52.370014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135999, 0.394658, 0.908708,
		-0.835917, 0.446590, -0.319062,
		-0.531740, -0.802996, 0.269166,
		36.366737, 33.070007, 52.450764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295288, 33.927052, 52.719707>,  <36.738956, 33.632103, 52.262348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295288, 33.927052, 52.719707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272285, 33.533733, 52.788792>,  <36.258484, 33.297745, 52.830242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272285, 33.533733, 52.788792>,  <36.295288, 33.927052, 52.719707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272285, 33.533733, 52.788792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022025, 0.171705, 0.984902,
		-0.998102, 0.060443, 0.011783,
		-0.057508, -0.983293, 0.172710,
		36.255032, 33.238747, 52.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744766, 33.717670, 53.060486>,  <36.295288, 33.927052, 52.719707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744766, 33.717670, 53.060486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.013226, 33.438026, 53.159119>,  <36.174301, 33.270241, 53.218296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.013226, 33.438026, 53.159119>,  <35.744766, 33.717670, 53.060486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013226, 33.438026, 53.159119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102957, 0.241495, 0.964925,
		-0.734135, -0.672999, 0.090102,
		0.671152, -0.699109, 0.246579,
		36.214573, 33.228294, 53.233093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242779, 33.723648, 52.474213>,  <35.744766, 33.717670, 53.060486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242779, 33.723648, 52.474213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948227, 33.990910, 52.431652>,  <34.771496, 34.151264, 52.406116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948227, 33.990910, 52.431652>,  <35.242779, 33.723648, 52.474213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948227, 33.990910, 52.431652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105745, -0.041680, -0.993519,
		-0.668256, -0.742857, -0.039962,
		-0.736377, 0.668151, -0.106406,
		34.727314, 34.191357, 52.399731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846485, 33.410622, 52.047749>,  <35.242779, 33.723648, 52.474213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846485, 33.410622, 52.047749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762024, 33.801598, 52.045738>,  <34.711346, 34.036182, 52.044533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762024, 33.801598, 52.045738>,  <34.846485, 33.410622, 52.047749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762024, 33.801598, 52.045738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146259, 0.026515, -0.988891,
		-0.966449, -0.209541, -0.148558,
		-0.211152, 0.977440, -0.005022,
		34.698677, 34.094830, 52.044231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456734, 33.493225, 51.410709>,  <34.846485, 33.410622, 52.047749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456734, 33.493225, 51.410709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582470, 33.862240, 51.500256>,  <34.657913, 34.083649, 51.553982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.582470, 33.862240, 51.500256>,  <34.456734, 33.493225, 51.410709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582470, 33.862240, 51.500256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250446, 0.146871, -0.956925,
		-0.915677, 0.356870, -0.184877,
		0.314345, 0.922536, 0.223863,
		34.676773, 34.139000, 51.567413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958427, 33.944099, 51.102882>,  <34.456734, 33.493225, 51.410709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958427, 33.944099, 51.102882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317501, 34.113136, 51.152802>,  <34.532944, 34.214558, 51.182755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317501, 34.113136, 51.152802>,  <33.958427, 33.944099, 51.102882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317501, 34.113136, 51.152802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100440, 0.079527, -0.991760,
		-0.429037, 0.902823, 0.028945,
		0.897685, 0.422595, 0.124799,
		34.586807, 34.239914, 51.190243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870865, 34.501804, 50.793053>,  <33.958427, 33.944099, 51.102882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870865, 34.501804, 50.793053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.269958, 34.482334, 50.811626>,  <34.509415, 34.470650, 50.822769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.269958, 34.482334, 50.811626>,  <33.870865, 34.501804, 50.793053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269958, 34.482334, 50.811626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058116, 0.276024, -0.959392,
		0.033887, 0.959917, 0.278228,
		0.997735, -0.048680, 0.046433,
		34.569279, 34.467731, 50.825558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102001, 35.150246, 50.444725>,  <33.870865, 34.501804, 50.793053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102001, 35.150246, 50.444725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395885, 34.879395, 50.461163>,  <34.572216, 34.716885, 50.471024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395885, 34.879395, 50.461163>,  <34.102001, 35.150246, 50.444725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395885, 34.879395, 50.461163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238390, 0.201005, -0.950141,
		0.635109, 0.707879, 0.309102,
		0.734715, -0.677130, 0.041091,
		34.616299, 34.676254, 50.473492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451180, 35.382435, 49.838501>,  <34.102001, 35.150246, 50.444725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451180, 35.382435, 49.838501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624680, 35.031109, 49.918922>,  <34.728779, 34.820312, 49.967175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.624680, 35.031109, 49.918922>,  <34.451180, 35.382435, 49.838501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624680, 35.031109, 49.918922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279195, -0.081138, -0.956800,
		0.856688, 0.471140, 0.210029,
		0.433746, -0.878318, 0.201050,
		34.754803, 34.767612, 49.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797798, 35.984989, 49.511570>,  <34.451180, 35.382435, 49.838501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797798, 35.984989, 49.511570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472641, 36.206444, 49.439240>,  <34.277546, 36.339317, 49.395840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472641, 36.206444, 49.439240>,  <34.797798, 35.984989, 49.511570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472641, 36.206444, 49.439240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128871, 0.131808, 0.982863,
		0.567981, 0.822262, -0.035798,
		-0.812890, 0.553634, -0.180830,
		34.228775, 36.372536, 49.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848564, 36.370907, 50.026035>,  <34.797798, 35.984989, 49.511570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848564, 36.370907, 50.026035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472610, 36.459019, 49.921658>,  <34.247040, 36.511887, 49.859032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472610, 36.459019, 49.921658>,  <34.848564, 36.370907, 50.026035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472610, 36.459019, 49.921658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171645, 0.355856, 0.918643,
		0.295218, 0.908208, -0.296654,
		-0.939885, 0.220281, -0.260945,
		34.190643, 36.525105, 49.843372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812828, 37.007759, 50.371384>,  <34.848564, 36.370907, 50.026035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812828, 37.007759, 50.371384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454624, 36.847504, 50.293873>,  <34.239700, 36.751350, 50.247364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454624, 36.847504, 50.293873>,  <34.812828, 37.007759, 50.371384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454624, 36.847504, 50.293873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295667, 0.210144, 0.931891,
		-0.332631, 0.891812, -0.306642,
		-0.895510, -0.400639, -0.193779,
		34.185970, 36.727310, 50.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366669, 37.523335, 50.639805>,  <34.812828, 37.007759, 50.371384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366669, 37.523335, 50.639805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149117, 37.188374, 50.618046>,  <34.018585, 36.987396, 50.604992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149117, 37.188374, 50.618046>,  <34.366669, 37.523335, 50.639805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149117, 37.188374, 50.618046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434074, 0.225266, 0.872259,
		-0.718176, 0.498014, -0.486010,
		-0.543879, -0.837399, -0.054394,
		33.985954, 36.937153, 50.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738785, 37.622913, 51.028225>,  <34.366669, 37.523335, 50.639805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738785, 37.622913, 51.028225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.762074, 37.224899, 50.995964>,  <33.776047, 36.986092, 50.976608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.762074, 37.224899, 50.995964>,  <33.738785, 37.622913, 51.028225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762074, 37.224899, 50.995964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368509, -0.096511, 0.924601,
		-0.927799, -0.024112, -0.372300,
		0.058225, -0.995040, -0.080657,
		33.779541, 36.926388, 50.971767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021034, 37.300488, 51.178314>,  <33.738785, 37.622913, 51.028225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021034, 37.300488, 51.178314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344418, 37.075058, 51.246178>,  <33.538448, 36.939800, 51.286896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344418, 37.075058, 51.246178>,  <33.021034, 37.300488, 51.178314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344418, 37.075058, 51.246178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262650, -0.087499, 0.960916,
		-0.526703, -0.821417, -0.218762,
		0.808454, -0.563575, 0.169659,
		33.586952, 36.905987, 51.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768284, 36.869293, 51.736794>,  <33.021034, 37.300488, 51.178314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768284, 36.869293, 51.736794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158333, 36.781536, 51.749489>,  <33.392361, 36.728882, 51.757107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158333, 36.781536, 51.749489>,  <32.768284, 36.869293, 51.736794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158333, 36.781536, 51.749489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059248, -0.119989, 0.991006,
		-0.213612, -0.968230, -0.130003,
		0.975120, -0.219393, 0.031735,
		33.450871, 36.715717, 51.759010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784973, 36.382774, 52.265671>,  <32.768284, 36.869293, 51.736794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784973, 36.382774, 52.265671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169518, 36.489597, 52.238945>,  <33.400246, 36.553692, 52.222912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169518, 36.489597, 52.238945>,  <32.784973, 36.382774, 52.265671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169518, 36.489597, 52.238945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063153, 0.022278, 0.997755,
		0.267950, -0.963422, 0.004551,
		0.961361, 0.267061, -0.066813,
		33.457928, 36.569714, 52.218903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104843, 36.116203, 52.873085>,  <32.784973, 36.382774, 52.265671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104843, 36.116203, 52.873085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376850, 36.381596, 52.748264>,  <33.540054, 36.540829, 52.673370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376850, 36.381596, 52.748264>,  <33.104843, 36.116203, 52.873085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376850, 36.381596, 52.748264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271150, 0.167866, 0.947786,
		0.681219, -0.729121, -0.065751,
		0.680013, 0.663478, -0.312054,
		33.580853, 36.580639, 52.654648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.760799, 33.532368, 37.257481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836479, 33.893116, 37.102135>,  <36.881886, 34.109566, 37.008926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836479, 33.893116, 37.102135>,  <36.760799, 33.532368, 37.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836479, 33.893116, 37.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231443, 0.425322, 0.874949,
		0.954274, -0.075655, 0.289203,
		0.189199, 0.901874, -0.388364,
		36.893238, 34.163677, 36.985626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077072, 33.832039, 37.822369>,  <36.760799, 33.532368, 37.257481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077072, 33.832039, 37.822369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975693, 34.139702, 37.587708>,  <36.914864, 34.324299, 37.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975693, 34.139702, 37.587708>,  <37.077072, 33.832039, 37.822369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975693, 34.139702, 37.587708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315234, 0.507678, 0.801805,
		0.914544, 0.388150, 0.113793,
		-0.253450, 0.769157, -0.586652,
		36.899658, 34.370449, 37.411713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312397, 34.361416, 38.170647>,  <37.077072, 33.832039, 37.822369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312397, 34.361416, 38.170647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037273, 34.531254, 37.935143>,  <36.872200, 34.633156, 37.793839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037273, 34.531254, 37.935143>,  <37.312397, 34.361416, 38.170647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037273, 34.531254, 37.935143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299768, 0.572553, 0.763101,
		0.661108, 0.701357, -0.266524,
		-0.687805, 0.424597, -0.588763,
		36.830933, 34.658634, 37.758514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384460, 35.181934, 38.244137>,  <37.312397, 34.361416, 38.170647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384460, 35.181934, 38.244137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016907, 35.079075, 38.124454>,  <36.796375, 35.017361, 38.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016907, 35.079075, 38.124454>,  <37.384460, 35.181934, 38.244137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016907, 35.079075, 38.124454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391760, 0.505156, 0.768987,
		-0.046600, 0.823827, -0.564922,
		-0.918887, -0.257149, -0.299202,
		36.741241, 35.001930, 38.034695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981731, 35.588867, 38.619457>,  <37.384460, 35.181934, 38.244137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981731, 35.588867, 38.619457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681892, 35.369133, 38.471764>,  <36.501987, 35.237293, 38.383148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681892, 35.369133, 38.471764>,  <36.981731, 35.588867, 38.619457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681892, 35.369133, 38.471764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597981, 0.322910, 0.733586,
		-0.283756, 0.770689, -0.570545,
		-0.749601, -0.549334, -0.369230,
		36.457012, 35.204334, 38.360996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437355, 35.990955, 38.483131>,  <36.981731, 35.588867, 38.619457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437355, 35.990955, 38.483131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267109, 35.632118, 38.530586>,  <36.164963, 35.416817, 38.559059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267109, 35.632118, 38.530586>,  <36.437355, 35.990955, 38.483131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267109, 35.632118, 38.530586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624451, 0.386051, 0.678989,
		-0.654917, 0.214905, -0.724500,
		-0.425613, -0.897095, 0.118633,
		36.139423, 35.362991, 38.566177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702461, 36.123756, 38.686115>,  <36.437355, 35.990955, 38.483131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702461, 36.123756, 38.686115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752926, 35.742527, 38.796192>,  <35.783207, 35.513790, 38.862240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752926, 35.742527, 38.796192>,  <35.702461, 36.123756, 38.686115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752926, 35.742527, 38.796192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711331, 0.106443, 0.694750,
		-0.691441, -0.283407, -0.664522,
		0.126163, -0.953074, 0.275196,
		35.790775, 35.456604, 38.878750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074142, 35.867088, 38.612988>,  <35.702461, 36.123756, 38.686115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074142, 35.867088, 38.612988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277542, 35.668526, 38.894413>,  <35.399582, 35.549389, 39.063271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277542, 35.668526, 38.894413>,  <35.074142, 35.867088, 38.612988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277542, 35.668526, 38.894413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661949, 0.297198, 0.688111,
		-0.550683, -0.815629, -0.177472,
		0.508499, -0.496409, 0.703567,
		35.430092, 35.519604, 39.105484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543308, 35.818562, 39.147259>,  <35.074142, 35.867088, 38.612988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543308, 35.818562, 39.147259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861092, 35.653191, 39.325207>,  <35.051762, 35.553967, 39.431976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861092, 35.653191, 39.325207>,  <34.543308, 35.818562, 39.147259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861092, 35.653191, 39.325207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484193, 0.010993, 0.874892,
		-0.366594, -0.910471, -0.191444,
		0.794460, -0.413426, 0.444874,
		35.099430, 35.529163, 39.458668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258778, 35.214016, 39.542458>,  <34.543308, 35.818562, 39.147259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258778, 35.214016, 39.542458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593636, 35.354073, 39.710545>,  <34.794552, 35.438107, 39.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593636, 35.354073, 39.710545>,  <34.258778, 35.214016, 39.542458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593636, 35.354073, 39.710545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462305, 0.042344, 0.885709,
		0.292329, -0.935740, 0.197320,
		0.837149, 0.350141, 0.420219,
		34.844780, 35.459114, 39.836609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215023, 34.970863, 40.225224>,  <34.258778, 35.214016, 39.542458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215023, 34.970863, 40.225224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493729, 35.254166, 40.270653>,  <34.660954, 35.424145, 40.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493729, 35.254166, 40.270653>,  <34.215023, 34.970863, 40.225224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493729, 35.254166, 40.270653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333120, 0.179276, 0.925684,
		0.635256, -0.682817, 0.360846,
		0.696764, 0.708252, 0.113574,
		34.702759, 35.466640, 40.304726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726681, 34.740131, 40.742752>,  <34.215023, 34.970863, 40.225224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726681, 34.740131, 40.742752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726578, 35.140068, 40.749844>,  <34.726517, 35.380032, 40.754097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726578, 35.140068, 40.749844>,  <34.726681, 34.740131, 40.742752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726578, 35.140068, 40.749844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339525, -0.016760, 0.940448,
		0.940597, -0.005774, 0.339476,
		-0.000260, 0.999843, 0.017725,
		34.726501, 35.440022, 40.755161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599037, 34.059097, 40.509941>,  <34.726681, 34.740131, 40.742752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599037, 34.059097, 40.509941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432606, 33.818451, 40.782684>,  <34.332748, 33.674061, 40.946331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432606, 33.818451, 40.782684>,  <34.599037, 34.059097, 40.509941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432606, 33.818451, 40.782684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343123, -0.590547, -0.730425,
		0.842110, -0.537874, 0.039282,
		-0.416075, -0.601619, 0.681863,
		34.307785, 33.637966, 40.987244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792107, 33.401253, 40.369015>,  <34.599037, 34.059097, 40.509941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792107, 33.401253, 40.369015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448620, 33.368355, 40.571335>,  <34.242527, 33.348618, 40.692726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448620, 33.368355, 40.571335>,  <34.792107, 33.401253, 40.369015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448620, 33.368355, 40.571335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407050, -0.490145, -0.770758,
		0.311306, -0.867753, 0.387420,
		-0.858719, -0.082243, 0.505804,
		34.191006, 33.343681, 40.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552265, 32.662346, 40.341354>,  <34.792107, 33.401253, 40.369015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552265, 32.662346, 40.341354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223991, 32.870605, 40.435513>,  <34.027027, 32.995560, 40.492008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223991, 32.870605, 40.435513>,  <34.552265, 32.662346, 40.341354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223991, 32.870605, 40.435513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504112, -0.465814, -0.727247,
		-0.268987, -0.715504, 0.644748,
		-0.820681, 0.520645, 0.235396,
		33.977787, 33.026798, 40.506130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114067, 32.147102, 40.212490>,  <34.552265, 32.662346, 40.341354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114067, 32.147102, 40.212490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 32.494442, 40.233501>,  <33.798443, 32.702847, 40.246109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 32.494442, 40.233501>,  <34.114067, 32.147102, 40.212490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916801, 32.494442, 40.233501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595429, -0.292911, -0.748109,
		-0.634233, -0.400220, 0.661493,
		-0.493167, 0.868348, 0.052529,
		33.768852, 32.754948, 40.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436821, 32.059029, 40.312405>,  <34.114067, 32.147102, 40.212490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436821, 32.059029, 40.312405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421585, 32.421307, 40.143517>,  <33.412445, 32.638672, 40.042183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421585, 32.421307, 40.143517>,  <33.436821, 32.059029, 40.312405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421585, 32.421307, 40.143517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771678, -0.295100, -0.563408,
		-0.634871, 0.304356, 0.710144,
		-0.038087, 0.905695, -0.422216,
		33.410160, 32.693016, 40.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727333, 32.283855, 40.323872>,  <33.436821, 32.059029, 40.312405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727333, 32.283855, 40.323872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902294, 32.494595, 40.032364>,  <33.007271, 32.621040, 39.857460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902294, 32.494595, 40.032364>,  <32.727333, 32.283855, 40.323872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902294, 32.494595, 40.032364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778004, -0.184718, -0.600490,
		-0.450986, 0.829642, 0.329097,
		0.437402, 0.526852, -0.728771,
		33.033516, 32.652649, 39.813732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199333, 32.557671, 39.995594>,  <32.727333, 32.283855, 40.323872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199333, 32.557671, 39.995594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500671, 32.578651, 39.733383>,  <32.681473, 32.591240, 39.576057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500671, 32.578651, 39.733383>,  <32.199333, 32.557671, 39.995594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500671, 32.578651, 39.733383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601296, -0.348704, -0.718922,
		-0.266292, 0.935764, -0.231157,
		0.753347, 0.052450, -0.655528,
		32.726677, 32.594387, 39.536724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972883, 32.911846, 39.393066>,  <32.199333, 32.557671, 39.995594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972883, 32.911846, 39.393066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293053, 32.734783, 39.231384>,  <32.485153, 32.628548, 39.134377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293053, 32.734783, 39.231384>,  <31.972883, 32.911846, 39.393066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293053, 32.734783, 39.231384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550963, -0.277646, -0.786990,
		0.236138, 0.852626, -0.466120,
		0.800424, -0.442653, -0.404203,
		32.533180, 32.601986, 39.110123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890577, 33.027702, 38.743267>,  <31.972883, 32.911846, 39.393066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890577, 33.027702, 38.743267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159382, 32.731575, 38.735954>,  <32.320663, 32.553898, 38.731567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159382, 32.731575, 38.735954>,  <31.890577, 33.027702, 38.743267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159382, 32.731575, 38.735954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514335, -0.448835, -0.730757,
		0.532785, 0.500481, -0.682392,
		0.672012, -0.740315, -0.018282,
		32.360985, 32.509480, 38.730469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870640, 32.767754, 38.022423>,  <31.890577, 33.027702, 38.743267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870640, 32.767754, 38.022423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080841, 32.475517, 38.196815>,  <32.206963, 32.300175, 38.301453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080841, 32.475517, 38.196815>,  <31.870640, 32.767754, 38.022423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080841, 32.475517, 38.196815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302060, -0.639274, -0.707169,
		0.795367, 0.239924, -0.556622,
		0.525501, -0.730592, 0.435986,
		32.238491, 32.256340, 38.327610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261101, 32.320053, 37.424519>,  <31.870640, 32.767754, 38.022423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261101, 32.320053, 37.424519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171829, 32.108242, 37.751881>,  <32.118267, 31.981155, 37.948299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171829, 32.108242, 37.751881>,  <32.261101, 32.320053, 37.424519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171829, 32.108242, 37.751881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442678, -0.692956, -0.569076,
		0.868462, -0.489298, -0.079755,
		-0.223182, -0.529527, 0.818408,
		32.104874, 31.949385, 37.997402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601105, 31.578491, 37.323925>,  <32.261101, 32.320053, 37.424519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601105, 31.578491, 37.323925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292068, 31.543228, 37.575424>,  <32.106647, 31.522070, 37.726322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292068, 31.543228, 37.575424>,  <32.601105, 31.578491, 37.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292068, 31.543228, 37.575424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275553, -0.845620, -0.457162,
		0.571986, -0.526455, 0.629029,
		-0.772595, -0.088160, 0.628749,
		32.060291, 31.516781, 37.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666546, 30.922192, 37.510448>,  <32.601105, 31.578491, 37.323925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666546, 30.922192, 37.510448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298252, 31.022673, 37.629883>,  <32.077278, 31.082960, 37.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298252, 31.022673, 37.629883>,  <32.666546, 30.922192, 37.510448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298252, 31.022673, 37.629883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370046, -0.804878, -0.463938,
		0.123784, -0.537652, 0.834031,
		-0.920730, 0.251202, 0.298587,
		32.022034, 31.098034, 37.719460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405376, 30.258299, 37.608818>,  <32.666546, 30.922192, 37.510448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405376, 30.258299, 37.608818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094658, 30.510199, 37.609352>,  <31.908226, 30.661339, 37.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094658, 30.510199, 37.609352>,  <32.405376, 30.258299, 37.608818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094658, 30.510199, 37.609352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497181, -0.611967, -0.615067,
		-0.386518, -0.478448, 0.788474,
		-0.776798, 0.629749, 0.001339,
		31.861618, 30.699123, 37.609753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724215, 30.004076, 37.890690>,  <32.405376, 30.258299, 37.608818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724215, 30.004076, 37.890690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674973, 30.276337, 37.601814>,  <31.645428, 30.439693, 37.428490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674973, 30.276337, 37.601814>,  <31.724215, 30.004076, 37.890690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674973, 30.276337, 37.601814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312279, -0.717326, -0.622836,
		-0.941980, 0.148850, 0.300860,
		-0.123105, 0.680652, -0.722190,
		31.638041, 30.480532, 37.385159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145042, 30.268202, 38.386044>,  <31.724215, 30.004076, 37.890690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145042, 30.268202, 38.386044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350361, 29.932552, 38.458050>,  <32.473553, 29.731163, 38.501251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350361, 29.932552, 38.458050>,  <32.145042, 30.268202, 38.386044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350361, 29.932552, 38.458050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067152, 0.248380, 0.966332,
		-0.855583, -0.483923, 0.183840,
		0.513292, -0.839122, 0.180013,
		32.504349, 29.680815, 38.512054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775820, 29.928520, 38.929523>,  <32.145042, 30.268202, 38.386044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775820, 29.928520, 38.929523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167927, 29.849888, 38.921200>,  <32.403191, 29.802708, 38.916206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167927, 29.849888, 38.921200>,  <31.775820, 29.928520, 38.929523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167927, 29.849888, 38.921200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023201, 0.009856, 0.999682,
		-0.196316, -0.980437, 0.014222,
		0.980266, -0.196583, -0.020812,
		32.462006, 29.790913, 38.914955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912197, 29.349857, 39.365719>,  <31.775820, 29.928520, 38.929523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912197, 29.349857, 39.365719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235920, 29.581295, 39.325214>,  <32.430153, 29.720158, 39.300911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235920, 29.581295, 39.325214>,  <31.912197, 29.349857, 39.365719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235920, 29.581295, 39.325214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270117, -0.213517, 0.938854,
		0.521596, -0.787171, -0.329089,
		0.809305, 0.578595, -0.101259,
		32.478710, 29.754873, 39.294838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469547, 28.926117, 39.613556>,  <31.912197, 29.349857, 39.365719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469547, 28.926117, 39.613556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615463, 29.298412, 39.623726>,  <32.703014, 29.521790, 39.629829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615463, 29.298412, 39.623726>,  <32.469547, 28.926117, 39.613556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615463, 29.298412, 39.623726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379091, -0.173414, 0.908965,
		0.850421, -0.321946, -0.416096,
		0.364794, 0.930741, 0.025429,
		32.724903, 29.577635, 39.631355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146988, 28.846672, 39.745945>,  <32.469547, 28.926117, 39.613556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146988, 28.846672, 39.745945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031723, 29.206070, 39.878407>,  <32.962563, 29.421709, 39.957886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031723, 29.206070, 39.878407>,  <33.146988, 28.846672, 39.745945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031723, 29.206070, 39.878407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368272, -0.215242, 0.904459,
		0.883932, 0.382589, -0.268866,
		-0.288165, 0.898497, 0.331157,
		32.945274, 29.475618, 39.977753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758648, 29.123827, 40.001999>,  <33.146988, 28.846672, 39.745945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758648, 29.123827, 40.001999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457760, 29.341963, 40.149925>,  <33.277225, 29.472845, 40.238682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457760, 29.341963, 40.149925>,  <33.758648, 29.123827, 40.001999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457760, 29.341963, 40.149925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322863, -0.184206, 0.928347,
		0.574388, 0.817723, -0.037507,
		-0.752222, 0.545341, 0.369818,
		33.232094, 29.505566, 40.260872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044445, 29.710230, 40.409233>,  <33.758648, 29.123827, 40.001999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044445, 29.710230, 40.409233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676613, 29.641432, 40.550533>,  <33.455914, 29.600153, 40.635315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676613, 29.641432, 40.550533>,  <34.044445, 29.710230, 40.409233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676613, 29.641432, 40.550533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369207, -0.070805, 0.926646,
		-0.134369, 0.982550, 0.128614,
		-0.919582, -0.171997, 0.353250,
		33.400738, 29.589832, 40.656509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972172, 30.130831, 40.986904>,  <34.044445, 29.710230, 40.409233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972172, 30.130831, 40.986904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693783, 29.846365, 41.026638>,  <33.526749, 29.675686, 41.050480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693783, 29.846365, 41.026638>,  <33.972172, 30.130831, 40.986904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693783, 29.846365, 41.026638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196754, -0.055824, 0.978862,
		-0.690585, 0.700808, 0.178776,
		-0.695975, -0.711162, 0.099335,
		33.484989, 29.633017, 41.056438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733128, 30.331457, 41.527485>,  <33.972172, 30.130831, 40.986904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733128, 30.331457, 41.527485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561340, 29.971310, 41.499500>,  <33.458267, 29.755222, 41.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561340, 29.971310, 41.499500>,  <33.733128, 30.331457, 41.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561340, 29.971310, 41.499500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078713, -0.114498, 0.990300,
		-0.899644, 0.419798, 0.120044,
		-0.429471, -0.900367, -0.069963,
		33.432499, 29.701200, 41.478512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231014, 30.248270, 42.131031>,  <33.733128, 30.331457, 41.527485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231014, 30.248270, 42.131031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328430, 29.880766, 42.006729>,  <33.386879, 29.660263, 41.932148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328430, 29.880766, 42.006729>,  <33.231014, 30.248270, 42.131031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328430, 29.880766, 42.006729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036052, -0.311606, 0.949527,
		-0.969220, -0.242452, -0.042766,
		0.243541, -0.918759, -0.310756,
		33.401493, 29.605139, 41.913502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740353, 29.674746, 42.500309>,  <33.231014, 30.248270, 42.131031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740353, 29.674746, 42.500309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084812, 29.507410, 42.384781>,  <33.291489, 29.407009, 42.315464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084812, 29.507410, 42.384781>,  <32.740353, 29.674746, 42.500309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084812, 29.507410, 42.384781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139142, -0.352477, 0.925419,
		-0.488938, -0.837111, -0.245327,
		0.861150, -0.418338, -0.288817,
		33.343159, 29.381908, 42.298138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822124, 29.012449, 42.823818>,  <32.740353, 29.674746, 42.500309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822124, 29.012449, 42.823818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203426, 29.082186, 42.725101>,  <33.432209, 29.124027, 42.665871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203426, 29.082186, 42.725101>,  <32.822124, 29.012449, 42.823818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203426, 29.082186, 42.725101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273663, -0.151896, 0.949756,
		0.128094, -0.972899, -0.192506,
		0.953258, 0.174340, -0.246790,
		33.489403, 29.134487, 42.651066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296230, 28.757696, 43.426395>,  <32.822124, 29.012449, 42.823818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296230, 28.757696, 43.426395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572250, 28.953978, 43.213589>,  <33.737862, 29.071747, 43.085903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572250, 28.953978, 43.213589>,  <33.296230, 28.757696, 43.426395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572250, 28.953978, 43.213589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581043, 0.062690, 0.811455,
		0.431535, -0.869069, -0.241860,
		0.690048, 0.490702, -0.532020,
		33.779266, 29.101189, 43.053982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944645, 28.576977, 43.747211>,  <33.296230, 28.757696, 43.426395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944645, 28.576977, 43.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002987, 28.919727, 43.549427>,  <34.037991, 29.125378, 43.430756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002987, 28.919727, 43.549427>,  <33.944645, 28.576977, 43.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002987, 28.919727, 43.549427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521461, 0.358146, 0.774474,
		0.840717, -0.370802, -0.394590,
		0.145855, 0.856877, -0.494458,
		34.046745, 29.176790, 43.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784702, 28.676701, 43.796032>,  <33.944645, 28.576977, 43.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784702, 28.676701, 43.796032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616608, 29.030302, 43.714119>,  <34.515751, 29.242464, 43.664970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616608, 29.030302, 43.714119>,  <34.784702, 28.676701, 43.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616608, 29.030302, 43.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575254, 0.434070, 0.693301,
		0.701773, 0.173545, -0.690939,
		-0.420235, 0.884005, -0.204787,
		34.490536, 29.295504, 43.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331093, 29.148161, 43.844002>,  <34.784702, 28.676701, 43.796032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331093, 29.148161, 43.844002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979889, 29.331102, 43.900463>,  <34.769165, 29.440868, 43.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979889, 29.331102, 43.900463>,  <35.331093, 29.148161, 43.844002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979889, 29.331102, 43.900463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388539, 0.508806, 0.768215,
		0.279527, 0.729344, -0.624437,
		-0.878010, 0.457355, 0.141153,
		34.716484, 29.468309, 43.942810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506889, 29.773695, 43.867317>,  <35.331093, 29.148161, 43.844002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506889, 29.773695, 43.867317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154732, 29.756495, 44.056232>,  <34.943436, 29.746174, 44.169582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154732, 29.756495, 44.056232>,  <35.506889, 29.773695, 43.867317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154732, 29.756495, 44.056232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412066, 0.423598, 0.806701,
		-0.234750, 0.904829, -0.355214,
		-0.880394, -0.043001, 0.472289,
		34.890614, 29.743593, 44.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403961, 30.426636, 44.034904>,  <35.506889, 29.773695, 43.867317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403961, 30.426636, 44.034904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167839, 30.220728, 44.283600>,  <35.026165, 30.097183, 44.432816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167839, 30.220728, 44.283600>,  <35.403961, 30.426636, 44.034904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167839, 30.220728, 44.283600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217931, 0.640010, 0.736813,
		-0.777204, 0.570440, -0.265617,
		-0.590305, -0.514768, 0.621735,
		34.990749, 30.066298, 44.470119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103161, 30.975691, 44.368412>,  <35.403961, 30.426636, 44.034904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103161, 30.975691, 44.368412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054165, 30.655958, 44.603722>,  <35.024769, 30.464119, 44.744907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054165, 30.655958, 44.603722>,  <35.103161, 30.975691, 44.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054165, 30.655958, 44.603722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193226, 0.562186, 0.804121,
		-0.973479, 0.212162, 0.085592,
		-0.122486, -0.799333, 0.588272,
		35.017418, 30.416159, 44.780205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879864, 31.283760, 44.943527>,  <35.103161, 30.975691, 44.368412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879864, 31.283760, 44.943527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007294, 30.929083, 45.077560>,  <35.083752, 30.716276, 45.157982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007294, 30.929083, 45.077560>,  <34.879864, 31.283760, 44.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007294, 30.929083, 45.077560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174075, 0.402222, 0.898841,
		-0.931775, -0.228021, 0.282490,
		0.318579, -0.886693, 0.335087,
		35.102867, 30.663074, 45.178085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568996, 31.102448, 45.601345>,  <34.879864, 31.283760, 44.943527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568996, 31.102448, 45.601345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896332, 30.872559, 45.600117>,  <35.092735, 30.734625, 45.599380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896332, 30.872559, 45.600117>,  <34.568996, 31.102448, 45.601345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896332, 30.872559, 45.600117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185716, 0.259377, 0.947752,
		-0.543900, -0.776154, 0.318994,
		0.818341, -0.574724, -0.003069,
		35.141834, 30.700142, 45.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600334, 30.846376, 46.254593>,  <34.568996, 31.102448, 45.601345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600334, 30.846376, 46.254593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982128, 30.792030, 46.148392>,  <35.211205, 30.759422, 46.084671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982128, 30.792030, 46.148392>,  <34.600334, 30.846376, 46.254593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982128, 30.792030, 46.148392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297030, 0.352798, 0.887303,
		-0.026885, -0.925783, 0.377098,
		0.954489, -0.135864, -0.265500,
		35.268475, 30.751270, 46.068741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008049, 30.342899, 46.787647>,  <34.600334, 30.846376, 46.254593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008049, 30.342899, 46.787647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285164, 30.569042, 46.608578>,  <35.451435, 30.704727, 46.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285164, 30.569042, 46.608578>,  <35.008049, 30.342899, 46.787647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285164, 30.569042, 46.608578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393288, 0.224138, 0.891676,
		0.604456, -0.793810, -0.067067,
		0.692790, 0.565356, -0.447677,
		35.493000, 30.738649, 46.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640915, 30.215296, 47.158825>,  <35.008049, 30.342899, 46.787647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640915, 30.215296, 47.158825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703548, 30.558226, 46.962669>,  <35.741131, 30.763983, 46.844978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703548, 30.558226, 46.962669>,  <35.640915, 30.215296, 47.158825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703548, 30.558226, 46.962669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454719, 0.378179, 0.806357,
		0.876762, -0.349253, -0.330623,
		0.156588, 0.857323, -0.490384,
		35.750526, 30.815422, 46.815556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354496, 30.269672, 47.276627>,  <35.640915, 30.215296, 47.158825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354496, 30.269672, 47.276627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195957, 30.627682, 47.194805>,  <36.100834, 30.842487, 47.145714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195957, 30.627682, 47.194805>,  <36.354496, 30.269672, 47.276627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195957, 30.627682, 47.194805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449243, 0.383368, 0.806976,
		0.800683, 0.227944, -0.554029,
		-0.396343, 0.895025, -0.204554,
		36.077053, 30.896189, 47.133438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775707, 30.617973, 47.658619>,  <36.354496, 30.269672, 47.276627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775707, 30.617973, 47.658619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500755, 30.896788, 47.576981>,  <36.335785, 31.064075, 47.527996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500755, 30.896788, 47.576981>,  <36.775707, 30.617973, 47.658619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500755, 30.896788, 47.576981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331738, 0.551290, 0.765526,
		0.646114, 0.458498, -0.610177,
		-0.687377, 0.697036, -0.204095,
		36.294544, 31.105898, 47.515751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081154, 31.160267, 47.598732>,  <36.775707, 30.617973, 47.658619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081154, 31.160267, 47.598732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713482, 31.273401, 47.708363>,  <36.492878, 31.341282, 47.774143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713482, 31.273401, 47.708363>,  <37.081154, 31.160267, 47.598732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713482, 31.273401, 47.708363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359239, 0.316827, 0.877820,
		0.161445, 0.905330, -0.392826,
		-0.919175, 0.282838, 0.274079,
		36.437729, 31.358253, 47.790585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582180, 31.679991, 47.314548>,  <37.081154, 31.160267, 47.598732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582180, 31.679991, 47.314548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770145, 32.032063, 47.287811>,  <37.882923, 32.243305, 47.271770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770145, 32.032063, 47.287811>,  <37.582180, 31.679991, 47.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770145, 32.032063, 47.287811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237209, 0.052978, -0.970013,
		-0.850244, 0.471675, 0.233681,
		0.469911, 0.880180, -0.066842,
		37.911118, 32.296116, 47.267757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108692, 32.165531, 47.018478>,  <37.582180, 31.679991, 47.314548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108692, 32.165531, 47.018478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457272, 32.348595, 46.947906>,  <37.666420, 32.458435, 46.905563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457272, 32.348595, 46.947906>,  <37.108692, 32.165531, 47.018478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457272, 32.348595, 46.947906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204875, 0.012821, -0.978704,
		-0.445653, 0.889034, 0.104936,
		0.871447, 0.457661, -0.176427,
		37.718704, 32.485893, 46.894978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970623, 32.701576, 46.462627>,  <37.108692, 32.165531, 47.018478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970623, 32.701576, 46.462627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366955, 32.647522, 46.462402>,  <37.604752, 32.615089, 46.462269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366955, 32.647522, 46.462402>,  <36.970623, 32.701576, 46.462627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366955, 32.647522, 46.462402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000281, 0.006226, -0.999981,
		0.135141, 0.990807, 0.006207,
		0.990826, -0.135140, -0.000563,
		37.664204, 32.606979, 46.462234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296288, 33.244999, 46.046478>,  <36.970623, 32.701576, 46.462627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296288, 33.244999, 46.046478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537956, 32.926258, 46.045380>,  <37.682957, 32.735012, 46.044720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537956, 32.926258, 46.045380>,  <37.296288, 33.244999, 46.046478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537956, 32.926258, 46.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070625, -0.050110, -0.996244,
		0.793720, 0.602094, -0.086553,
		0.604169, -0.796852, -0.002750,
		37.719208, 32.687202, 46.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913479, 33.367039, 45.531834>,  <37.296288, 33.244999, 46.046478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913479, 33.367039, 45.531834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864910, 32.974072, 45.588551>,  <37.835770, 32.738289, 45.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864910, 32.974072, 45.588551>,  <37.913479, 33.367039, 45.531834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864910, 32.974072, 45.588551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156067, -0.122176, -0.980161,
		0.980256, -0.141139, -0.138489,
		-0.121419, -0.982422, 0.141791,
		37.828484, 32.679344, 45.631088>
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
