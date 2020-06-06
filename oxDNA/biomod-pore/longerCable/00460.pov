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
	<24.081556, 34.982372, 35.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476625, 34.927296, 35.088486>,  <24.713667, 34.894249, 35.106361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476625, 34.927296, 35.088486>,  <24.081556, 34.982372, 35.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476625, 34.927296, 35.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116788, -0.964911, -0.235176,
		0.104244, 0.223579, -0.969095,
		0.987671, -0.137695, 0.074475,
		24.772926, 34.885986, 35.110828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294386, 34.620453, 34.529770>,  <24.081556, 34.982372, 35.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294386, 34.620453, 34.529770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560129, 34.532951, 34.815643>,  <24.719576, 34.480450, 34.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560129, 34.532951, 34.815643>,  <24.294386, 34.620453, 34.529770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560129, 34.532951, 34.815643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085358, -0.972160, -0.218219,
		0.742524, 0.083971, -0.664535,
		0.664358, -0.218756, 0.714685,
		24.759438, 34.467323, 35.030048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775681, 34.170319, 34.261635>,  <24.294386, 34.620453, 34.529770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775681, 34.170319, 34.261635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857647, 34.103886, 34.647469>,  <24.906828, 34.064026, 34.878967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857647, 34.103886, 34.647469>,  <24.775681, 34.170319, 34.261635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857647, 34.103886, 34.647469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100000, -0.976789, -0.189429,
		0.973657, 0.135276, -0.183553,
		0.204918, -0.166084, 0.964585,
		24.919123, 34.054062, 34.936844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283010, 33.725319, 34.350597>,  <24.775681, 34.170319, 34.261635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283010, 33.725319, 34.350597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116062, 33.686974, 34.712063>,  <25.015892, 33.663967, 34.928944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116062, 33.686974, 34.712063>,  <25.283010, 33.725319, 34.350597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116062, 33.686974, 34.712063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115055, -0.991992, -0.052094,
		0.901423, 0.082229, 0.425060,
		-0.417372, -0.095864, 0.903665,
		24.990850, 33.658215, 34.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789927, 33.239807, 34.729961>,  <25.283010, 33.725319, 34.350597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789927, 33.239807, 34.729961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416687, 33.232727, 34.873634>,  <25.192743, 33.228477, 34.959839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416687, 33.232727, 34.873634>,  <25.789927, 33.239807, 34.729961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416687, 33.232727, 34.873634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038644, -0.997940, 0.051208,
		0.357538, 0.061662, 0.931861,
		-0.933099, -0.017702, 0.359184,
		25.136757, 33.227417, 34.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806303, 32.830917, 35.308060>,  <25.789927, 33.239807, 34.729961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806303, 32.830917, 35.308060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427715, 32.831154, 35.178940>,  <25.200563, 32.831295, 35.101467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427715, 32.831154, 35.178940>,  <25.806303, 32.830917, 35.308060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427715, 32.831154, 35.178940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059778, -0.983021, 0.173482,
		-0.317214, 0.183492, 0.930433,
		-0.946468, 0.000589, -0.322797,
		25.143774, 32.831329, 35.082100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315796, 32.409649, 35.798573>,  <25.806303, 32.830917, 35.308060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315796, 32.409649, 35.798573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121840, 32.414791, 35.448780>,  <25.005466, 32.417877, 35.238903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121840, 32.414791, 35.448780>,  <25.315796, 32.409649, 35.798573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121840, 32.414791, 35.448780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165931, -0.983083, 0.077559,
		-0.858689, 0.182711, 0.478821,
		-0.484891, 0.012852, -0.874480,
		24.976372, 32.418648, 35.186436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639528, 31.974138, 35.831799>,  <25.315796, 32.409649, 35.798573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639528, 31.974138, 35.831799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811989, 31.997252, 35.471626>,  <24.915464, 32.011120, 35.255524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811989, 31.997252, 35.471626>,  <24.639528, 31.974138, 35.831799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811989, 31.997252, 35.471626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022570, -0.996944, -0.074785,
		-0.901997, 0.052566, -0.428530,
		0.431152, 0.057784, -0.900427,
		24.941334, 32.014587, 35.201500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294172, 31.531885, 35.290096>,  <24.639528, 31.974138, 35.831799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294172, 31.531885, 35.290096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670643, 31.593298, 35.169689>,  <24.896526, 31.630146, 35.097443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670643, 31.593298, 35.169689>,  <24.294172, 31.531885, 35.290096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670643, 31.593298, 35.169689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132287, -0.987130, -0.089861,
		-0.310943, 0.044754, -0.949374,
		0.941177, 0.153532, -0.301020,
		24.952995, 31.639357, 35.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520956, 30.983759, 34.710682>,  <24.294172, 31.531885, 35.290096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520956, 30.983759, 34.710682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870377, 31.139822, 34.827087>,  <25.080029, 31.233459, 34.896931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870377, 31.139822, 34.827087>,  <24.520956, 30.983759, 34.710682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870377, 31.139822, 34.827087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347679, -0.918593, 0.187898,
		0.340630, -0.062961, -0.938087,
		0.873550, 0.390157, 0.291011,
		25.132442, 31.256868, 34.914391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027370, 30.657207, 34.408707>,  <24.520956, 30.983759, 34.710682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027370, 30.657207, 34.408707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217543, 30.813515, 34.723988>,  <25.331646, 30.907299, 34.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217543, 30.813515, 34.723988>,  <25.027370, 30.657207, 34.408707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217543, 30.813515, 34.723988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433863, -0.883553, 0.176344,
		0.765330, 0.258134, -0.589607,
		0.475428, 0.390770, 0.788205,
		25.360170, 30.930746, 34.960449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229843, 30.391163, 35.087421>,  <25.027370, 30.657207, 34.408707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229843, 30.391163, 35.087421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348373, 30.230101, 35.433846>,  <25.419493, 30.133463, 35.641701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348373, 30.230101, 35.433846>,  <25.229843, 30.391163, 35.087421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348373, 30.230101, 35.433846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399035, 0.876047, 0.270765,
		-0.867734, 0.265353, 0.420269,
		0.296327, -0.402654, 0.866060,
		25.437271, 30.109304, 35.693665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131529, 30.920597, 35.659878>,  <25.229843, 30.391163, 35.087421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131529, 30.920597, 35.659878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412167, 30.680092, 35.812847>,  <25.580549, 30.535789, 35.904629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412167, 30.680092, 35.812847>,  <25.131529, 30.920597, 35.659878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412167, 30.680092, 35.812847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434407, 0.786315, 0.439317,
		-0.564848, -0.142097, 0.812868,
		0.701596, -0.601263, 0.382421,
		25.622646, 30.499712, 35.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222483, 31.079710, 36.308270>,  <25.131529, 30.920597, 35.659878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222483, 31.079710, 36.308270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589874, 30.954813, 36.211193>,  <25.810310, 30.879875, 36.152946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589874, 30.954813, 36.211193>,  <25.222483, 31.079710, 36.308270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589874, 30.954813, 36.211193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394797, 0.759638, 0.516803,
		0.022987, -0.570486, 0.820986,
		0.918481, -0.312243, -0.242688,
		25.865419, 30.861139, 36.138386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548689, 31.075977, 36.974480>,  <25.222483, 31.079710, 36.308270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548689, 31.075977, 36.974480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803913, 31.115408, 36.669018>,  <25.957047, 31.139067, 36.485741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803913, 31.115408, 36.669018>,  <25.548689, 31.075977, 36.974480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803913, 31.115408, 36.669018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513612, 0.684404, 0.517488,
		0.573657, -0.722409, 0.386060,
		0.638059, 0.098575, -0.763651,
		25.995331, 31.144981, 36.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987879, 31.710699, 36.741722>,  <25.548689, 31.075977, 36.974480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987879, 31.710699, 36.741722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844942, 32.062740, 36.616680>,  <25.759180, 32.273964, 36.541656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844942, 32.062740, 36.616680>,  <25.987879, 31.710699, 36.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844942, 32.062740, 36.616680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854364, -0.172813, 0.490099,
		0.377317, 0.442212, 0.813684,
		-0.357343, 0.880105, -0.312605,
		25.737740, 32.326771, 36.522900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034430, 31.567104, 35.923252>,  <25.987879, 31.710699, 36.741722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034430, 31.567104, 35.923252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879265, 31.370428, 35.611416>,  <25.786165, 31.252422, 35.424313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879265, 31.370428, 35.611416>,  <26.034430, 31.567104, 35.923252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879265, 31.370428, 35.611416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240174, 0.870525, -0.429538,
		0.889855, 0.020615, -0.455778,
		-0.387911, -0.491692, -0.779592,
		25.762890, 31.222919, 35.377537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277929, 31.768835, 35.189640>,  <26.034430, 31.567104, 35.923252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277929, 31.768835, 35.189640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917885, 31.616848, 35.104385>,  <25.701859, 31.525656, 35.053234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917885, 31.616848, 35.104385>,  <26.277929, 31.768835, 35.189640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917885, 31.616848, 35.104385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274225, 0.874283, -0.400538,
		0.338532, -0.302081, -0.891147,
		-0.900110, -0.379969, -0.213134,
		25.647852, 31.502857, 35.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143646, 31.781731, 34.515648>,  <26.277929, 31.768835, 35.189640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143646, 31.781731, 34.515648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781416, 31.754946, 34.683193>,  <25.564077, 31.738874, 34.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781416, 31.754946, 34.683193>,  <26.143646, 31.781731, 34.515648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781416, 31.754946, 34.683193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258449, 0.870106, -0.419665,
		-0.336355, -0.488294, -0.805254,
		-0.905577, -0.066961, 0.418863,
		25.509743, 31.734858, 34.808853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536634, 32.141003, 34.036343>,  <26.143646, 31.781731, 34.515648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536634, 32.141003, 34.036343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371870, 32.102139, 34.398754>,  <25.273012, 32.078819, 34.616203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371870, 32.102139, 34.398754>,  <25.536634, 32.141003, 34.036343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371870, 32.102139, 34.398754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430109, 0.897297, -0.099321,
		-0.803329, -0.430603, -0.411393,
		-0.411909, -0.097156, 0.906030,
		25.248297, 32.072990, 34.670563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146544, 32.714504, 34.094337>,  <25.536634, 32.141003, 34.036343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146544, 32.714504, 34.094337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143143, 32.570820, 34.467625>,  <25.141102, 32.484612, 34.691597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143143, 32.570820, 34.467625>,  <25.146544, 32.714504, 34.094337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143143, 32.570820, 34.467625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263460, 0.901083, 0.344438,
		-0.964633, -0.242938, -0.102297,
		-0.008501, -0.359208, 0.933219,
		25.140593, 32.463058, 34.747589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480244, 32.522793, 34.042625>,  <25.146544, 32.714504, 34.094337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480244, 32.522793, 34.042625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635551, 32.473064, 34.407875>,  <24.728737, 32.443226, 34.627026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635551, 32.473064, 34.407875>,  <24.480244, 32.522793, 34.042625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635551, 32.473064, 34.407875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126405, 0.988677, 0.080862,
		-0.912836, 0.084027, 0.399588,
		0.388269, -0.124323, 0.913121,
		24.752031, 32.435768, 34.681812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.037806, 32.852489, 34.441055>,  <24.480244, 32.522793, 34.042625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.037806, 32.852489, 34.441055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390306, 32.844994, 34.629967>,  <24.601807, 32.840496, 34.743313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390306, 32.844994, 34.629967>,  <24.037806, 32.852489, 34.441055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390306, 32.844994, 34.629967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118562, 0.976030, -0.182504,
		-0.457536, 0.216826, 0.862350,
		0.881251, -0.018739, 0.472277,
		24.654682, 32.839371, 34.771648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123465, 33.434990, 34.927185>,  <24.037806, 32.852489, 34.441055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123465, 33.434990, 34.927185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492128, 33.335476, 34.808086>,  <24.713326, 33.275768, 34.736626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492128, 33.335476, 34.808086>,  <24.123465, 33.434990, 34.927185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492128, 33.335476, 34.808086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284004, 0.955411, 0.080815,
		0.264364, -0.159045, 0.951219,
		0.921658, -0.248785, -0.297745,
		24.768625, 33.260841, 34.718761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.056070, 32.705658, 35.170891>,  <24.123465, 33.434990, 34.927185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.056070, 32.705658, 35.170891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419262, 32.697620, 35.338303>,  <24.637177, 32.692799, 35.438751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.419262, 32.697620, 35.338303>,  <24.056070, 32.705658, 35.170891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419262, 32.697620, 35.338303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070447, 0.977310, 0.199757,
		-0.413047, -0.210860, 0.885963,
		0.907981, -0.020096, 0.418530,
		24.691656, 32.691593, 35.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.092815, 33.224518, 35.842258>,  <24.056070, 32.705658, 35.170891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.092815, 33.224518, 35.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444118, 33.218307, 35.651081>,  <24.654900, 33.214581, 35.536377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444118, 33.218307, 35.651081>,  <24.092815, 33.224518, 35.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444118, 33.218307, 35.651081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009772, 0.998681, -0.050402,
		0.478091, 0.048936, 0.876946,
		0.878256, -0.015527, -0.477939,
		24.707596, 33.213650, 35.507698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526091, 33.674080, 36.122799>,  <24.092815, 33.224518, 35.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526091, 33.674080, 36.122799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715302, 33.641254, 35.771912>,  <24.828829, 33.621559, 35.561378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715302, 33.641254, 35.771912>,  <24.526091, 33.674080, 36.122799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715302, 33.641254, 35.771912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090868, 0.994887, -0.044069,
		0.876349, -0.058865, 0.478066,
		0.473028, -0.082061, -0.877217,
		24.857210, 33.616634, 35.508747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189781, 33.989525, 36.206799>,  <24.526091, 33.674080, 36.122799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189781, 33.989525, 36.206799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118605, 33.996384, 35.813240>,  <25.075899, 34.000500, 35.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118605, 33.996384, 35.813240>,  <25.189781, 33.989525, 36.206799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118605, 33.996384, 35.813240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082466, 0.996591, 0.002459,
		0.980580, -0.080700, -0.178749,
		-0.177941, 0.017152, -0.983892,
		25.065222, 34.001530, 35.518074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793623, 34.286537, 35.795799>,  <25.189781, 33.989525, 36.206799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793623, 34.286537, 35.795799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457129, 34.338074, 35.585762>,  <25.255232, 34.368996, 35.459740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457129, 34.338074, 35.585762>,  <25.793623, 34.286537, 35.795799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457129, 34.338074, 35.585762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254191, 0.951414, -0.173779,
		0.477193, -0.279663, -0.833112,
		-0.841234, 0.128844, -0.525095,
		25.204758, 34.376728, 35.428234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945789, 34.734230, 35.269077>,  <25.793623, 34.286537, 35.795799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945789, 34.734230, 35.269077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549107, 34.761967, 35.312351>,  <25.311096, 34.778610, 35.338318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549107, 34.761967, 35.312351>,  <25.945789, 34.734230, 35.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549107, 34.761967, 35.312351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030772, 0.945557, -0.323998,
		-0.124765, -0.317982, -0.939852,
		-0.991709, 0.069345, 0.108188,
		25.251595, 34.782772, 35.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362808, 35.130463, 35.778095>,  <25.945789, 34.734230, 35.269077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362808, 35.130463, 35.778095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649509, 34.879726, 35.655891>,  <26.821529, 34.729282, 35.582569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649509, 34.879726, 35.655891>,  <26.362808, 35.130463, 35.778095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649509, 34.879726, 35.655891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688239, 0.706412, 0.165254,
		0.112228, -0.328711, 0.937739,
		0.716751, -0.626842, -0.305511,
		26.864534, 34.691673, 35.564240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871067, 34.981930, 36.325581>,  <26.362808, 35.130463, 35.778095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871067, 34.981930, 36.325581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046959, 34.934280, 35.969501>,  <27.152494, 34.905689, 35.755856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046959, 34.934280, 35.969501>,  <26.871067, 34.981930, 36.325581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046959, 34.934280, 35.969501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794246, 0.514310, 0.323510,
		0.419297, -0.849290, 0.320774,
		0.439731, -0.119127, -0.890194,
		27.178879, 34.898544, 35.702442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645794, 34.871441, 36.450203>,  <26.871067, 34.981930, 36.325581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645794, 34.871441, 36.450203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679476, 34.925400, 36.055294>,  <27.699686, 34.957775, 35.818348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679476, 34.925400, 36.055294>,  <27.645794, 34.871441, 36.450203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679476, 34.925400, 36.055294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881530, 0.451836, 0.136924,
		0.464557, -0.881843, -0.080867,
		0.084206, 0.134896, -0.987275,
		27.704739, 34.965870, 35.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332047, 34.660454, 36.285900>,  <27.645794, 34.871441, 36.450203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332047, 34.660454, 36.285900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204779, 34.923698, 36.012943>,  <28.128418, 35.081646, 35.849171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204779, 34.923698, 36.012943>,  <28.332047, 34.660454, 36.285900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204779, 34.923698, 36.012943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918862, 0.391257, -0.051090,
		0.233368, -0.643280, -0.729198,
		-0.318169, 0.658110, -0.682392,
		28.109327, 35.121132, 35.808224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758173, 34.566700, 35.741669>,  <28.332047, 34.660454, 36.285900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758173, 34.566700, 35.741669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620977, 34.942329, 35.732727>,  <28.538660, 35.167706, 35.727360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620977, 34.942329, 35.732727>,  <28.758173, 34.566700, 35.741669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620977, 34.942329, 35.732727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934515, 0.343539, 0.093069,
		0.095080, 0.011028, -0.995409,
		-0.342988, 0.939074, -0.022358,
		28.518082, 35.224052, 35.726021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871887, 34.945854, 35.098129>,  <28.758173, 34.566700, 35.741669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871887, 34.945854, 35.098129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677074, 35.280865, 35.197205>,  <28.560186, 35.481873, 35.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677074, 35.280865, 35.197205>,  <28.871887, 34.945854, 35.098129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677074, 35.280865, 35.197205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849641, 0.520016, -0.087718,
		-0.202267, 0.167723, -0.964861,
		-0.487031, 0.837528, 0.247686,
		28.530966, 35.532124, 35.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244629, 35.610573, 34.770042>,  <28.871887, 34.945854, 35.098129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244629, 35.610573, 34.770042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989960, 35.769794, 35.034225>,  <28.837158, 35.865326, 35.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989960, 35.769794, 35.034225>,  <29.244629, 35.610573, 34.770042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989960, 35.769794, 35.034225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594198, 0.799135, 0.091168,
		-0.491502, 0.450484, -0.745312,
		-0.636675, 0.398054, 0.660453,
		28.798958, 35.889210, 35.232361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958519, 36.255280, 34.568428>,  <29.244629, 35.610573, 34.770042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958519, 36.255280, 34.568428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940189, 36.277424, 34.967392>,  <28.929192, 36.290710, 35.206772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940189, 36.277424, 34.967392>,  <28.958519, 36.255280, 34.568428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940189, 36.277424, 34.967392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706668, 0.707512, -0.006804,
		-0.706060, 0.704529, -0.071541,
		-0.045822, 0.055360, 0.997414,
		28.926443, 36.294033, 35.266617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019890, 37.025341, 34.851147>,  <28.958519, 36.255280, 34.568428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019890, 37.025341, 34.851147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162815, 36.792900, 35.143623>,  <29.248569, 36.653435, 35.319111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162815, 36.792900, 35.143623>,  <29.019890, 37.025341, 34.851147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162815, 36.792900, 35.143623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844236, 0.535807, 0.013270,
		-0.399491, 0.612560, 0.682039,
		0.357312, -0.581103, 0.731196,
		29.270008, 36.618568, 35.362984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148132, 37.449837, 35.524620>,  <29.019890, 37.025341, 34.851147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148132, 37.449837, 35.524620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375685, 37.150009, 35.389252>,  <29.512217, 36.970112, 35.308033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375685, 37.150009, 35.389252>,  <29.148132, 37.449837, 35.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375685, 37.150009, 35.389252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785772, 0.616849, -0.045380,
		0.242768, -0.240104, 0.939901,
		0.568881, -0.749565, -0.338418,
		29.546349, 36.925140, 35.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907242, 37.203175, 35.543499>,  <29.148132, 37.449837, 35.524620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907242, 37.203175, 35.543499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622782, 37.330280, 35.794350>,  <29.452105, 37.406544, 35.944862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622782, 37.330280, 35.794350>,  <29.907242, 37.203175, 35.543499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622782, 37.330280, 35.794350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522198, -0.835999, -0.168569,
		0.470716, -0.447364, 0.760455,
		-0.711151, 0.317760, 0.627131,
		29.409437, 37.425610, 35.982491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904694, 36.703049, 36.043056>,  <29.907242, 37.203175, 35.543499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904694, 36.703049, 36.043056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541456, 36.859371, 35.982872>,  <29.323513, 36.953163, 35.946762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541456, 36.859371, 35.982872>,  <29.904694, 36.703049, 36.043056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541456, 36.859371, 35.982872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377197, -0.919398, -0.111489,
		-0.181903, -0.044489, 0.982309,
		-0.908093, 0.390804, -0.150460,
		29.269028, 36.976612, 35.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400909, 36.215359, 36.358982>,  <29.904694, 36.703049, 36.043056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400909, 36.215359, 36.358982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190550, 36.431046, 36.095871>,  <29.064335, 36.560459, 35.938004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190550, 36.431046, 36.095871>,  <29.400909, 36.215359, 36.358982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190550, 36.431046, 36.095871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609120, -0.778529, -0.151210,
		-0.593635, 0.321146, 0.737877,
		-0.525898, 0.539220, -0.657779,
		29.032780, 36.592812, 35.898537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743988, 36.202148, 36.578953>,  <29.400909, 36.215359, 36.358982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743988, 36.202148, 36.578953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813999, 36.228729, 36.186024>,  <28.856005, 36.244678, 35.950268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813999, 36.228729, 36.186024>,  <28.743988, 36.202148, 36.578953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813999, 36.228729, 36.186024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677215, -0.716089, -0.169106,
		-0.714665, 0.694839, -0.080332,
		0.175026, 0.066452, -0.982319,
		28.866507, 36.248665, 35.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145159, 36.351067, 36.305382>,  <28.743988, 36.202148, 36.578953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145159, 36.351067, 36.305382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350536, 36.184956, 36.005005>,  <28.473763, 36.085289, 35.824780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350536, 36.184956, 36.005005>,  <28.145159, 36.351067, 36.305382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350536, 36.184956, 36.005005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803856, -0.539019, -0.251542,
		-0.300313, 0.732804, -0.610582,
		0.513446, -0.415279, -0.750944,
		28.504570, 36.060371, 35.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745701, 36.280605, 35.628239>,  <28.145159, 36.351067, 36.305382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745701, 36.280605, 35.628239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016830, 35.988121, 35.597549>,  <28.179508, 35.812630, 35.579136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016830, 35.988121, 35.597549>,  <27.745701, 36.280605, 35.628239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016830, 35.988121, 35.597549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720036, -0.639094, -0.270383,
		0.148674, 0.238515, -0.959691,
		0.677823, -0.731211, -0.076723,
		28.220177, 35.768757, 35.574532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779196, 36.005508, 34.931816>,  <27.745701, 36.280605, 35.628239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779196, 36.005508, 34.931816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874826, 35.726753, 35.202278>,  <27.932205, 35.559502, 35.364555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874826, 35.726753, 35.202278>,  <27.779196, 36.005508, 34.931816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874826, 35.726753, 35.202278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809974, -0.527179, -0.256950,
		0.535523, -0.486241, -0.690497,
		0.239076, -0.696887, 0.676159,
		27.946548, 35.517689, 35.405125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632290, 35.338043, 34.562260>,  <27.779196, 36.005508, 34.931816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632290, 35.338043, 34.562260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646038, 35.220757, 34.944431>,  <27.654287, 35.150383, 35.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646038, 35.220757, 34.944431>,  <27.632290, 35.338043, 34.562260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646038, 35.220757, 34.944431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712854, -0.677233, -0.182196,
		0.700470, -0.674818, -0.232299,
		0.034371, -0.293218, 0.955427,
		27.656349, 35.132790, 35.231060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756592, 34.611820, 34.569412>,  <27.632290, 35.338043, 34.562260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756592, 34.611820, 34.569412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568979, 34.723747, 34.904484>,  <27.456411, 34.790901, 35.105526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568979, 34.723747, 34.904484>,  <27.756592, 34.611820, 34.569412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568979, 34.723747, 34.904484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704980, -0.689943, -0.164265,
		0.531990, -0.667595, 0.520869,
		-0.469032, 0.279815, 0.837683,
		27.428270, 34.807693, 35.155788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271446, 34.623989, 33.920315>,  <27.756592, 34.611820, 34.569412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271446, 34.623989, 33.920315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386103, 34.753345, 33.559593>,  <28.454897, 34.830959, 33.343159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386103, 34.753345, 33.559593>,  <28.271446, 34.623989, 33.920315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386103, 34.753345, 33.559593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129708, -0.919539, -0.370978,
		-0.949216, 0.223310, -0.221633,
		0.286643, 0.323391, -0.901806,
		28.472095, 34.850361, 33.289051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342390, 34.282188, 33.290016>,  <28.271446, 34.623989, 33.920315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342390, 34.282188, 33.290016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217852, 33.903164, 33.261173>,  <28.143129, 33.675751, 33.243866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217852, 33.903164, 33.261173>,  <28.342390, 34.282188, 33.290016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217852, 33.903164, 33.261173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856802, -0.247084, -0.452593,
		0.411040, -0.202696, 0.888797,
		-0.311346, -0.947557, -0.072109,
		28.124447, 33.618896, 33.239540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965475, 33.897713, 33.212841>,  <28.342390, 34.282188, 33.290016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965475, 33.897713, 33.212841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705866, 33.624157, 33.079536>,  <28.550100, 33.460022, 32.999554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705866, 33.624157, 33.079536>,  <28.965475, 33.897713, 33.212841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705866, 33.624157, 33.079536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710400, -0.388060, -0.587147,
		0.272216, -0.617823, 0.737694,
		-0.649023, -0.683888, -0.333265,
		28.511158, 33.418991, 32.979557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253342, 33.198326, 33.303608>,  <28.965475, 33.897713, 33.212841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253342, 33.198326, 33.303608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007647, 33.253250, 32.992775>,  <28.860229, 33.286205, 32.806274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007647, 33.253250, 32.992775>,  <29.253342, 33.198326, 33.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007647, 33.253250, 32.992775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711896, -0.328446, -0.620747,
		-0.340470, -0.934488, 0.103987,
		-0.614235, 0.137318, -0.777084,
		28.823376, 33.294441, 32.759651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309238, 32.737888, 32.855446>,  <29.253342, 33.198326, 33.303608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309238, 32.737888, 32.855446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147785, 33.004742, 32.605003>,  <29.050913, 33.164856, 32.454739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147785, 33.004742, 32.605003>,  <29.309238, 32.737888, 32.855446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147785, 33.004742, 32.605003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737671, -0.167518, -0.654049,
		-0.541223, -0.725857, -0.424511,
		-0.403633, 0.667135, -0.626108,
		29.026695, 33.204884, 32.417171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136133, 32.531235, 32.043369>,  <29.309238, 32.737888, 32.855446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136133, 32.531235, 32.043369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283934, 32.894951, 32.119949>,  <29.372614, 33.113182, 32.165897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283934, 32.894951, 32.119949>,  <29.136133, 32.531235, 32.043369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283934, 32.894951, 32.119949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601254, -0.076865, -0.795352,
		-0.708493, 0.408995, -0.575118,
		0.369501, 0.909294, 0.191451,
		29.394785, 33.167740, 32.177383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042927, 32.981033, 31.415829>,  <29.136133, 32.531235, 32.043369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042927, 32.981033, 31.415829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351616, 33.099705, 31.640835>,  <29.536829, 33.170906, 31.775839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351616, 33.099705, 31.640835>,  <29.042927, 32.981033, 31.415829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351616, 33.099705, 31.640835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491201, 0.283747, -0.823535,
		-0.403934, 0.911851, 0.073248,
		0.771725, 0.296674, 0.562517,
		29.583134, 33.188705, 31.809589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100471, 33.662910, 31.296492>,  <29.042927, 32.981033, 31.415829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100471, 33.662910, 31.296492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461716, 33.550629, 31.426474>,  <29.678463, 33.483261, 31.504463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461716, 33.550629, 31.426474>,  <29.100471, 33.662910, 31.296492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461716, 33.550629, 31.426474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413146, 0.361722, -0.835744,
		0.117049, 0.889024, 0.442645,
		0.903111, -0.280700, 0.324957,
		29.732649, 33.466419, 31.523960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617517, 34.198029, 31.343014>,  <29.100471, 33.662910, 31.296492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617517, 34.198029, 31.343014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820910, 33.860626, 31.273788>,  <29.942945, 33.658184, 31.232254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820910, 33.860626, 31.273788>,  <29.617517, 34.198029, 31.343014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820910, 33.860626, 31.273788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421988, 0.419300, -0.803812,
		0.750583, 0.335692, 0.569153,
		0.508479, -0.843504, -0.173061,
		29.973454, 33.607574, 31.221870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397631, 34.281467, 31.423033>,  <29.617517, 34.198029, 31.343014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397631, 34.281467, 31.423033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262915, 34.015774, 31.156090>,  <30.182085, 33.856358, 30.995924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262915, 34.015774, 31.156090>,  <30.397631, 34.281467, 31.423033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262915, 34.015774, 31.156090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398553, 0.541571, -0.740174,
		0.853070, -0.515260, 0.082337,
		-0.336791, -0.664236, -0.667356,
		30.161877, 33.816502, 30.955883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730303, 34.530663, 30.917437>,  <30.397631, 34.281467, 31.423033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730303, 34.530663, 30.917437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477137, 34.275326, 30.742191>,  <30.325237, 34.122124, 30.637043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477137, 34.275326, 30.742191>,  <30.730303, 34.530663, 30.917437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477137, 34.275326, 30.742191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264761, 0.353311, -0.897258,
		0.727546, -0.683882, -0.054608,
		-0.632913, -0.638339, -0.438115,
		30.287262, 34.083824, 30.610756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987625, 33.946392, 30.385111>,  <30.730303, 34.530663, 30.917437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987625, 33.946392, 30.385111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612940, 34.049332, 30.290173>,  <30.388128, 34.111095, 30.233210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612940, 34.049332, 30.290173>,  <30.987625, 33.946392, 30.385111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612940, 34.049332, 30.290173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290228, 0.191692, -0.937562,
		-0.195786, -0.947113, -0.254251,
		-0.936715, 0.257352, -0.237348,
		30.331924, 34.126537, 30.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619879, 33.491512, 29.885775>,  <30.987625, 33.946392, 30.385111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619879, 33.491512, 29.885775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510836, 33.875679, 29.862837>,  <30.445410, 34.106178, 29.849075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510836, 33.875679, 29.862837>,  <30.619879, 33.491512, 29.885775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510836, 33.875679, 29.862837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468551, 0.080468, -0.879764,
		-0.840324, -0.266701, -0.471939,
		-0.272610, 0.960414, -0.057343,
		30.429052, 34.163803, 29.845634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186159, 33.683636, 29.290379>,  <30.619879, 33.491512, 29.885775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186159, 33.683636, 29.290379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407755, 33.991253, 29.417919>,  <30.540712, 34.175823, 29.494444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407755, 33.991253, 29.417919>,  <30.186159, 33.683636, 29.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407755, 33.991253, 29.417919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563731, -0.064691, -0.823421,
		-0.612620, 0.635914, -0.469372,
		0.553989, 0.769044, 0.318853,
		30.573952, 34.221966, 29.513575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226389, 34.110977, 28.749931>,  <30.186159, 33.683636, 29.290379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226389, 34.110977, 28.749931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536905, 34.152905, 28.998569>,  <30.723215, 34.178062, 29.147753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536905, 34.152905, 28.998569>,  <30.226389, 34.110977, 28.749931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536905, 34.152905, 28.998569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629513, -0.180378, -0.755763,
		0.032902, 0.977996, -0.206013,
		0.776293, 0.104822, 0.621596,
		30.769793, 34.184353, 29.185049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694246, 34.341690, 28.253414>,  <30.226389, 34.110977, 28.749931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694246, 34.341690, 28.253414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875170, 34.167889, 28.564959>,  <30.983723, 34.063610, 28.751886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875170, 34.167889, 28.564959>,  <30.694246, 34.341690, 28.253414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875170, 34.167889, 28.564959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678781, -0.398760, -0.616641,
		0.578511, 0.807588, 0.114569,
		0.452307, -0.434502, 0.778863,
		31.010862, 34.037537, 28.798618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502396, 34.508343, 28.345097>,  <30.694246, 34.341690, 28.253414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502396, 34.508343, 28.345097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413666, 34.142624, 28.480654>,  <31.360428, 33.923191, 28.561987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413666, 34.142624, 28.480654>,  <31.502396, 34.508343, 28.345097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413666, 34.142624, 28.480654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660209, -0.396596, -0.637837,
		0.717578, 0.082252, 0.691604,
		-0.221825, -0.914301, 0.338892,
		31.347118, 33.868332, 28.582321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175526, 34.074471, 28.584354>,  <31.502396, 34.508343, 28.345097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175526, 34.074471, 28.584354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867270, 33.854359, 28.455791>,  <31.682316, 33.722290, 28.378654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867270, 33.854359, 28.455791>,  <32.175526, 34.074471, 28.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867270, 33.854359, 28.455791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613585, -0.504492, -0.607455,
		0.172127, -0.665338, 0.726428,
		-0.770640, -0.550284, -0.321405,
		31.636078, 33.689274, 28.359369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327782, 33.330669, 28.674526>,  <32.175526, 34.074471, 28.584354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327782, 33.330669, 28.674526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089249, 33.421608, 28.366579>,  <31.946129, 33.476170, 28.181810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089249, 33.421608, 28.366579>,  <32.327782, 33.330669, 28.674526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089249, 33.421608, 28.366579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698016, -0.326776, -0.637175,
		-0.396435, -0.917350, 0.036176,
		-0.596333, 0.227346, -0.769870,
		31.910349, 33.489811, 28.135618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471123, 32.916752, 28.151148>,  <32.327782, 33.330669, 28.674526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471123, 32.916752, 28.151148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279213, 33.187740, 27.928131>,  <32.164066, 33.350334, 27.794321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279213, 33.187740, 27.928131>,  <32.471123, 32.916752, 28.151148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279213, 33.187740, 27.928131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674532, -0.121574, -0.728166,
		-0.561093, -0.725434, -0.398647,
		-0.479771, 0.677470, -0.557543,
		32.135281, 33.390980, 27.760868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283493, 32.584705, 27.475714>,  <32.471123, 32.916752, 28.151148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283493, 32.584705, 27.475714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302502, 32.982590, 27.439280>,  <32.313908, 33.221321, 27.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302502, 32.982590, 27.439280>,  <32.283493, 32.584705, 27.475714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302502, 32.982590, 27.439280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607068, -0.101175, -0.788183,
		-0.793228, -0.017844, -0.608663,
		0.047517, 0.994709, -0.091087,
		32.316757, 33.281002, 27.411953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156784, 32.629005, 26.800472>,  <32.283493, 32.584705, 27.475714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156784, 32.629005, 26.800472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333233, 32.961346, 26.936176>,  <32.439102, 33.160751, 27.017599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333233, 32.961346, 26.936176>,  <32.156784, 32.629005, 26.800472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333233, 32.961346, 26.936176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574587, 0.028923, -0.817932,
		-0.689394, 0.555740, -0.464639,
		0.441119, 0.830853, 0.339260,
		32.465569, 33.210602, 27.037954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123940, 32.954777, 26.243267>,  <32.156784, 32.629005, 26.800472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123940, 32.954777, 26.243267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412834, 33.149719, 26.439577>,  <32.586170, 33.266685, 26.557364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412834, 33.149719, 26.439577>,  <32.123940, 32.954777, 26.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412834, 33.149719, 26.439577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559858, 0.004711, -0.828575,
		-0.406126, 0.873189, -0.269450,
		0.722233, 0.487359, 0.490775,
		32.629505, 33.295929, 26.586809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295971, 33.425426, 25.787413>,  <32.123940, 32.954777, 26.243267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295971, 33.425426, 25.787413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610561, 33.382698, 26.030737>,  <32.799316, 33.357063, 26.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610561, 33.382698, 26.030737>,  <32.295971, 33.425426, 25.787413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610561, 33.382698, 26.030737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598842, -0.109115, -0.793399,
		0.151124, 0.988273, -0.021850,
		0.786480, -0.106817, 0.608309,
		32.846504, 33.350655, 26.213230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721241, 33.887966, 25.577925>,  <32.295971, 33.425426, 25.787413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721241, 33.887966, 25.577925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954952, 33.635792, 25.782347>,  <33.095177, 33.484489, 25.905001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954952, 33.635792, 25.782347>,  <32.721241, 33.887966, 25.577925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954952, 33.635792, 25.782347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614045, -0.068326, -0.786308,
		0.530633, 0.773231, 0.347193,
		0.584275, -0.630433, 0.511055,
		33.130234, 33.446663, 25.935663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304863, 34.177055, 25.411928>,  <32.721241, 33.887966, 25.577925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304863, 34.177055, 25.411928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388168, 33.806458, 25.537300>,  <33.438152, 33.584099, 25.612522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388168, 33.806458, 25.537300>,  <33.304863, 34.177055, 25.411928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388168, 33.806458, 25.537300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640156, -0.113159, -0.759866,
		0.739477, 0.358897, 0.569532,
		0.208266, -0.926492, 0.313428,
		33.450649, 33.528511, 25.631329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971836, 34.030205, 25.725683>,  <33.304863, 34.177055, 25.411928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971836, 34.030205, 25.725683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869293, 33.664753, 25.599466>,  <33.807770, 33.445480, 25.523737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869293, 33.664753, 25.599466>,  <33.971836, 34.030205, 25.725683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869293, 33.664753, 25.599466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811443, -0.026035, -0.583851,
		0.525208, -0.405716, 0.748032,
		-0.256353, -0.913629, -0.315541,
		33.792389, 33.390663, 25.504805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649998, 33.681343, 25.531084>,  <33.971836, 34.030205, 25.725683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649998, 33.681343, 25.531084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341805, 33.510868, 25.341467>,  <34.156887, 33.408585, 25.227697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341805, 33.510868, 25.341467>,  <34.649998, 33.681343, 25.531084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341805, 33.510868, 25.341467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580427, -0.161597, -0.798117,
		0.263541, -0.890086, 0.371877,
		-0.770487, -0.426184, -0.474043,
		34.110657, 33.383015, 25.199255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903309, 33.146965, 25.222380>,  <34.649998, 33.681343, 25.531084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903309, 33.146965, 25.222380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563969, 33.188801, 25.014778>,  <34.360363, 33.213902, 24.890217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563969, 33.188801, 25.014778>,  <34.903309, 33.146965, 25.222380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563969, 33.188801, 25.014778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469308, -0.305182, -0.828622,
		-0.245057, -0.946533, 0.209816,
		-0.848350, 0.104591, -0.519002,
		34.309464, 33.220177, 24.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987904, 32.677433, 24.737906>,  <34.903309, 33.146965, 25.222380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987904, 32.677433, 24.737906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689217, 32.891079, 24.579346>,  <34.510002, 33.019264, 24.484209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689217, 32.891079, 24.579346>,  <34.987904, 32.677433, 24.737906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689217, 32.891079, 24.579346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355790, -0.182789, -0.916516,
		-0.561980, -0.825416, -0.053539,
		-0.746721, 0.534112, -0.396399,
		34.465199, 33.051311, 24.460426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660370, 32.263618, 24.216751>,  <34.987904, 32.677433, 24.737906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660370, 32.263618, 24.216751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583935, 32.642277, 24.112947>,  <34.538074, 32.869473, 24.050665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583935, 32.642277, 24.112947>,  <34.660370, 32.263618, 24.216751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583935, 32.642277, 24.112947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096886, -0.244900, -0.964695,
		-0.976780, -0.209484, -0.044919,
		-0.191088, 0.946647, -0.259510,
		34.526608, 32.926270, 24.035095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540928, 32.229774, 23.493895>,  <34.660370, 32.263618, 24.216751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540928, 32.229774, 23.493895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525490, 32.627625, 23.532312>,  <34.516228, 32.866337, 23.555363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525490, 32.627625, 23.532312>,  <34.540928, 32.229774, 23.493895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525490, 32.627625, 23.532312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034798, 0.094719, -0.994896,
		-0.998649, -0.041737, 0.030956,
		-0.038591, 0.994629, 0.096044,
		34.513912, 32.926014, 23.561125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859032, 32.437412, 23.340006>,  <34.540928, 32.229774, 23.493895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859032, 32.437412, 23.340006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110661, 32.740097, 23.268835>,  <34.261639, 32.921707, 23.226133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110661, 32.740097, 23.268835>,  <33.859032, 32.437412, 23.340006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110661, 32.740097, 23.268835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340930, 0.062876, -0.937984,
		-0.698594, 0.650720, 0.297539,
		0.629073, 0.756710, -0.177925,
		34.299381, 32.967110, 23.215458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476696, 32.857758, 22.859583>,  <33.859032, 32.437412, 23.340006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476696, 32.857758, 22.859583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865433, 32.946285, 22.827221>,  <34.098675, 32.999401, 22.807804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865433, 32.946285, 22.827221>,  <33.476696, 32.857758, 22.859583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865433, 32.946285, 22.827221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074108, -0.038863, -0.996493,
		-0.223685, 0.974427, -0.021367,
		0.971840, 0.221317, -0.080905,
		34.156986, 33.012680, 22.802950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468315, 33.319244, 22.294123>,  <33.476696, 32.857758, 22.859583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468315, 33.319244, 22.294123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848679, 33.196671, 22.311445>,  <34.076897, 33.123127, 22.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848679, 33.196671, 22.311445>,  <33.468315, 33.319244, 22.294123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848679, 33.196671, 22.311445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034907, -0.032842, -0.998851,
		0.307505, 0.951325, -0.020533,
		0.950906, -0.306435, 0.043307,
		34.133949, 33.104740, 22.324438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872822, 33.719677, 21.724730>,  <33.468315, 33.319244, 22.294123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872822, 33.719677, 21.724730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100426, 33.401966, 21.809914>,  <34.236988, 33.211338, 21.861023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100426, 33.401966, 21.809914>,  <33.872822, 33.719677, 21.724730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100426, 33.401966, 21.809914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192401, -0.123192, -0.973553,
		0.799509, 0.594930, 0.082723,
		0.569005, -0.794281, 0.212958,
		34.271126, 33.163681, 21.873800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436459, 33.722099, 21.241257>,  <33.872822, 33.719677, 21.724730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436459, 33.722099, 21.241257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466465, 33.342709, 21.364399>,  <34.484467, 33.115074, 21.438284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466465, 33.342709, 21.364399>,  <34.436459, 33.722099, 21.241257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466465, 33.342709, 21.364399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298845, -0.273151, -0.914374,
		0.951349, 0.160590, 0.262957,
		0.075013, -0.948472, 0.307854,
		34.488968, 33.058167, 21.456755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156208, 33.465988, 21.006592>,  <34.436459, 33.722099, 21.241257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156208, 33.465988, 21.006592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909950, 33.158871, 21.077562>,  <34.762196, 32.974602, 21.120146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909950, 33.158871, 21.077562>,  <35.156208, 33.465988, 21.006592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909950, 33.158871, 21.077562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149123, -0.334597, -0.930488,
		0.773788, -0.546388, 0.320487,
		-0.615641, -0.767792, 0.177428,
		34.725258, 32.928532, 21.130791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497707, 32.885056, 20.743139>,  <35.156208, 33.465988, 21.006592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497707, 32.885056, 20.743139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118546, 32.760506, 20.770048>,  <34.891048, 32.685776, 20.786194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118546, 32.760506, 20.770048>,  <35.497707, 32.885056, 20.743139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118546, 32.760506, 20.770048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055069, -0.368158, -0.928131,
		0.313764, -0.876073, 0.366125,
		-0.947903, -0.311376, 0.067270,
		34.834175, 32.667091, 20.790230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428787, 32.340893, 20.161110>,  <35.497707, 32.885056, 20.743139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428787, 32.340893, 20.161110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045498, 32.392113, 20.263412>,  <34.815525, 32.422844, 20.324795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045498, 32.392113, 20.263412>,  <35.428787, 32.340893, 20.161110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045498, 32.392113, 20.263412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282154, -0.276667, -0.918610,
		-0.046868, -0.952396, 0.301239,
		-0.958224, 0.128049, 0.255756,
		34.758030, 32.430527, 20.340139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161362, 31.815207, 19.776320>,  <35.428787, 32.340893, 20.161110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161362, 31.815207, 19.776320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873589, 32.078506, 19.864977>,  <34.700924, 32.236485, 19.918171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873589, 32.078506, 19.864977>,  <35.161362, 31.815207, 19.776320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873589, 32.078506, 19.864977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356968, -0.076678, -0.930964,
		-0.595812, -0.748884, 0.290139,
		-0.719431, 0.658250, 0.221642,
		34.657761, 32.275982, 19.931469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569462, 31.421076, 19.515507>,  <35.161362, 31.815207, 19.776320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569462, 31.421076, 19.515507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478085, 31.808855, 19.551247>,  <34.423260, 32.041523, 19.572691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478085, 31.808855, 19.551247>,  <34.569462, 31.421076, 19.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478085, 31.808855, 19.551247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440670, -0.021128, -0.897421,
		-0.868115, -0.244383, 0.432033,
		-0.228442, 0.969449, 0.089351,
		34.409554, 32.099689, 19.578053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962353, 31.523497, 19.192307>,  <34.569462, 31.421076, 19.515507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962353, 31.523497, 19.192307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102859, 31.897974, 19.197325>,  <34.187164, 32.122662, 19.200336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102859, 31.897974, 19.197325>,  <33.962353, 31.523497, 19.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102859, 31.897974, 19.197325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310283, 0.129043, -0.941845,
		-0.883366, 0.326947, 0.335812,
		0.351267, 0.936191, 0.012546,
		34.208241, 32.178833, 19.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561657, 31.947721, 18.863348>,  <33.962353, 31.523497, 19.192307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561657, 31.947721, 18.863348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899799, 32.158512, 18.828304>,  <34.102684, 32.284988, 18.807278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899799, 32.158512, 18.828304>,  <33.561657, 31.947721, 18.863348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899799, 32.158512, 18.828304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147415, 0.072489, -0.986415,
		-0.513468, 0.846782, 0.138963,
		0.845352, 0.526978, -0.087608,
		34.153404, 32.316605, 18.802021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402000, 32.595627, 18.392134>,  <33.561657, 31.947721, 18.863348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402000, 32.595627, 18.392134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799953, 32.563053, 18.416080>,  <34.038723, 32.543507, 18.430449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799953, 32.563053, 18.416080>,  <33.402000, 32.595627, 18.392134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799953, 32.563053, 18.416080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068229, 0.104103, -0.992223,
		0.074573, 0.991227, 0.109126,
		0.994879, -0.081439, 0.059867,
		34.098415, 32.538620, 18.434040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641113, 33.204163, 18.028120>,  <33.402000, 32.595627, 18.392134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641113, 33.204163, 18.028120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952419, 32.953064, 18.034330>,  <34.139202, 32.802406, 18.038055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952419, 32.953064, 18.034330>,  <33.641113, 33.204163, 18.028120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952419, 32.953064, 18.034330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196638, 0.220159, -0.955439,
		0.596354, 0.746637, 0.294781,
		0.778265, -0.627745, 0.015524,
		34.185898, 32.764740, 18.038988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208408, 33.474934, 17.629475>,  <33.641113, 33.204163, 18.028120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208408, 33.474934, 17.629475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266640, 33.079720, 17.649872>,  <34.301579, 32.842590, 17.662109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266640, 33.079720, 17.649872>,  <34.208408, 33.474934, 17.629475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266640, 33.079720, 17.649872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220543, -0.017834, -0.975214,
		0.964451, 0.153220, 0.215307,
		0.145582, -0.988031, 0.050991,
		34.310314, 32.783310, 17.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809097, 33.464828, 17.263519>,  <34.208408, 33.474934, 17.629475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809097, 33.464828, 17.263519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625153, 33.109676, 17.269056>,  <34.514786, 32.896584, 17.272379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625153, 33.109676, 17.269056>,  <34.809097, 33.464828, 17.263519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625153, 33.109676, 17.269056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215418, -0.126671, -0.968271,
		0.861464, -0.442291, 0.249517,
		-0.459864, -0.887881, 0.013845,
		34.487194, 32.843311, 17.273211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280296, 33.010586, 16.890841>,  <34.809097, 33.464828, 17.263519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280296, 33.010586, 16.890841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918728, 32.839523, 16.888277>,  <34.701786, 32.736885, 16.886740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918728, 32.839523, 16.888277>,  <35.280296, 33.010586, 16.890841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918728, 32.839523, 16.888277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079191, -0.152623, -0.985107,
		0.420304, -0.890966, 0.171825,
		-0.903921, -0.427651, -0.006408,
		34.647552, 32.711227, 16.886354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356651, 32.272125, 16.578800>,  <35.280296, 33.010586, 16.890841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356651, 32.272125, 16.578800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974663, 32.382591, 16.535416>,  <34.745468, 32.448872, 16.509384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974663, 32.382591, 16.535416>,  <35.356651, 32.272125, 16.578800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974663, 32.382591, 16.535416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133911, 0.074971, -0.988153,
		-0.264757, -0.958183, -0.108576,
		-0.954972, 0.276160, -0.108462,
		34.688171, 32.465439, 16.502876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084003, 31.826590, 16.084225>,  <35.356651, 32.272125, 16.578800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084003, 31.826590, 16.084225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824669, 32.130863, 16.096970>,  <34.669067, 32.313427, 16.104616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824669, 32.130863, 16.096970>,  <35.084003, 31.826590, 16.084225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824669, 32.130863, 16.096970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146452, -0.083537, -0.985684,
		-0.747134, -0.643723, 0.165564,
		-0.648339, 0.760686, 0.031860,
		34.630169, 32.359070, 16.106527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601295, 31.694719, 15.522943>,  <35.084003, 31.826590, 16.084225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601295, 31.694719, 15.522943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530472, 32.079960, 15.604018>,  <34.487976, 32.311104, 15.652663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530472, 32.079960, 15.604018>,  <34.601295, 31.694719, 15.522943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530472, 32.079960, 15.604018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006362, 0.204818, -0.978780,
		-0.984180, -0.174592, -0.030138,
		-0.177060, 0.963103, 0.202688,
		34.477352, 32.368889, 15.664824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116131, 31.966188, 14.950033>,  <34.601295, 31.694719, 15.522943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116131, 31.966188, 14.950033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272148, 32.297039, 15.111888>,  <34.365757, 32.495548, 15.209001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272148, 32.297039, 15.111888>,  <34.116131, 31.966188, 14.950033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272148, 32.297039, 15.111888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042644, 0.455197, -0.889369,
		-0.919809, 0.329637, 0.212818,
		0.390043, 0.827125, 0.404637,
		34.389160, 32.545177, 15.233279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634197, 32.583801, 14.907980>,  <34.116131, 31.966188, 14.950033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634197, 32.583801, 14.907980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008522, 32.719284, 14.947044>,  <34.233116, 32.800575, 14.970483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008522, 32.719284, 14.947044>,  <33.634197, 32.583801, 14.907980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008522, 32.719284, 14.947044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127585, 0.583714, -0.801872,
		-0.328605, 0.737940, 0.589460,
		0.935810, 0.338705, 0.097661,
		34.289265, 32.820896, 14.976342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606781, 33.427807, 14.966102>,  <33.634197, 32.583801, 14.907980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606781, 33.427807, 14.966102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973125, 33.327518, 14.840663>,  <34.192932, 33.267345, 14.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973125, 33.327518, 14.840663>,  <33.606781, 33.427807, 14.966102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973125, 33.327518, 14.840663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020215, 0.751275, -0.659680,
		0.400990, 0.610513, 0.682994,
		0.915859, -0.250718, -0.313596,
		34.247883, 33.252304, 14.746584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842823, 33.981979, 14.724437>,  <33.606781, 33.427807, 14.966102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842823, 33.981979, 14.724437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120773, 33.732113, 14.581923>,  <34.287544, 33.582195, 14.496414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120773, 33.732113, 14.581923>,  <33.842823, 33.981979, 14.724437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120773, 33.732113, 14.581923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029710, 0.519956, -0.853676,
		0.718512, 0.582617, 0.379866,
		0.694880, -0.624662, -0.356285,
		34.329239, 33.544716, 14.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195911, 34.366310, 14.452072>,  <33.842823, 33.981979, 14.724437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195911, 34.366310, 14.452072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269306, 34.014050, 14.277352>,  <34.313343, 33.802692, 14.172521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269306, 34.014050, 14.277352>,  <34.195911, 34.366310, 14.452072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269306, 34.014050, 14.277352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056266, 0.434205, -0.899055,
		0.981411, 0.189537, 0.030119,
		0.183482, -0.880648, -0.436798,
		34.324352, 33.749855, 14.146313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726635, 34.502457, 13.975666>,  <34.195911, 34.366310, 14.452072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726635, 34.502457, 13.975666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529892, 34.180874, 13.841969>,  <34.411846, 33.987923, 13.761750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529892, 34.180874, 13.841969>,  <34.726635, 34.502457, 13.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529892, 34.180874, 13.841969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058612, 0.413594, -0.908573,
		0.868698, -0.427302, -0.250553,
		-0.491862, -0.803961, -0.334243,
		34.382332, 33.939686, 13.741695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965691, 34.492245, 13.382235>,  <34.726635, 34.502457, 13.975666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965691, 34.492245, 13.382235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659573, 34.235867, 13.358522>,  <34.475903, 34.082039, 13.344296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659573, 34.235867, 13.358522>,  <34.965691, 34.492245, 13.382235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659573, 34.235867, 13.358522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017975, 0.113340, -0.993394,
		0.643428, -0.759174, -0.098260,
		-0.765296, -0.640944, -0.059280,
		34.429985, 34.043583, 13.340738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060703, 34.133369, 12.806618>,  <34.965691, 34.492245, 13.382235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060703, 34.133369, 12.806618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670486, 34.056423, 12.849160>,  <34.436356, 34.010254, 12.874686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670486, 34.056423, 12.849160>,  <35.060703, 34.133369, 12.806618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670486, 34.056423, 12.849160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118627, 0.053403, -0.991502,
		0.185050, -0.979869, -0.074916,
		-0.975543, -0.192364, 0.106357,
		34.377823, 33.998714, 12.881067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897682, 33.601894, 12.339274>,  <35.060703, 34.133369, 12.806618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897682, 33.601894, 12.339274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575760, 33.825737, 12.418396>,  <34.382607, 33.960041, 12.465869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575760, 33.825737, 12.418396>,  <34.897682, 33.601894, 12.339274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575760, 33.825737, 12.418396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054339, 0.262395, -0.963429,
		-0.591043, -0.786124, -0.180769,
		-0.804808, 0.559606, 0.197804,
		34.334316, 33.993618, 12.477737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387871, 33.405815, 11.891179>,  <34.897682, 33.601894, 12.339274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387871, 33.405815, 11.891179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347431, 33.791687, 11.988478>,  <34.323166, 34.023209, 12.046857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347431, 33.791687, 11.988478>,  <34.387871, 33.405815, 11.891179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347431, 33.791687, 11.988478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043507, 0.239978, -0.969803,
		-0.993924, -0.108632, 0.017708,
		-0.101102, 0.964681, 0.243247,
		34.317101, 34.081093, 12.061452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772388, 33.784458, 11.296345>,  <34.387871, 33.405815, 11.891179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772388, 33.784458, 11.296345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377090, 33.724854, 11.310008>,  <34.139912, 33.689091, 11.318206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377090, 33.724854, 11.310008>,  <34.772388, 33.784458, 11.296345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377090, 33.724854, 11.310008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110798, -0.544201, 0.831606,
		-0.105328, 0.825616, 0.554314,
		-0.988246, -0.149008, 0.034158,
		34.080616, 33.680153, 11.320255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178986, 34.066082, 10.893133>,  <34.772388, 33.784458, 11.296345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178986, 34.066082, 10.893133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239872, 33.678307, 10.816168>,  <34.276405, 33.445641, 10.769989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239872, 33.678307, 10.816168>,  <34.178986, 34.066082, 10.893133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239872, 33.678307, 10.816168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593619, -0.245329, 0.766440,
		-0.790219, -0.002443, -0.612819,
		0.152214, -0.969437, -0.192414,
		34.285538, 33.387474, 10.758444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860790, 34.620762, 10.395274>,  <34.178986, 34.066082, 10.893133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860790, 34.620762, 10.395274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764656, 34.248154, 10.504463>,  <33.706978, 34.024590, 10.569977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764656, 34.248154, 10.504463>,  <33.860790, 34.620762, 10.395274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764656, 34.248154, 10.504463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366799, 0.173213, 0.914033,
		-0.898721, 0.319796, 0.300052,
		-0.240331, -0.931519, 0.272972,
		33.692558, 33.968697, 10.586354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409855, 34.390244, 9.807814>,  <33.860790, 34.620762, 10.395274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409855, 34.390244, 9.807814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221443, 34.698067, 9.980279>,  <33.108395, 34.882763, 10.083758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221443, 34.698067, 9.980279>,  <33.409855, 34.390244, 9.807814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221443, 34.698067, 9.980279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867826, -0.491897, -0.070112,
		0.158132, -0.407200, 0.899546,
		-0.471033, 0.769562, 0.431163,
		33.080132, 34.928936, 10.109628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773060, 34.047932, 10.062308>,  <33.409855, 34.390244, 9.807814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773060, 34.047932, 10.062308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684090, 34.427902, 10.150090>,  <32.630707, 34.655884, 10.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684090, 34.427902, 10.150090>,  <32.773060, 34.047932, 10.062308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684090, 34.427902, 10.150090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964313, -0.181191, -0.193058,
		-0.143628, -0.254566, 0.956330,
		-0.222424, 0.949929, 0.219457,
		32.617363, 34.712883, 10.215926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306789, 33.979824, 10.555851>,  <32.773060, 34.047932, 10.062308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306789, 33.979824, 10.555851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267654, 34.308296, 10.330963>,  <32.244175, 34.505379, 10.196031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267654, 34.308296, 10.330963>,  <32.306789, 33.979824, 10.555851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267654, 34.308296, 10.330963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848319, -0.364202, -0.384334,
		-0.520369, 0.439340, 0.732255,
		-0.097835, 0.821180, -0.562220,
		32.238304, 34.554649, 10.162297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777443, 34.233139, 11.126881>,  <32.306789, 33.979824, 10.555851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777443, 34.233139, 11.126881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530968, 34.486012, 10.938981>,  <32.383083, 34.637733, 10.826241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530968, 34.486012, 10.938981>,  <32.777443, 34.233139, 11.126881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530968, 34.486012, 10.938981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263356, 0.396719, 0.879351,
		0.742264, 0.665557, -0.077966,
		-0.616189, 0.632177, -0.469748,
		32.346111, 34.675663, 10.798057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915070, 34.971066, 11.172122>,  <32.777443, 34.233139, 11.126881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915070, 34.971066, 11.172122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520370, 34.908600, 11.154527>,  <32.283550, 34.871120, 11.143970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520370, 34.908600, 11.154527>,  <32.915070, 34.971066, 11.172122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520370, 34.908600, 11.154527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101951, 0.385931, 0.916877,
		-0.126209, 0.909214, -0.396739,
		-0.986751, -0.156166, -0.043987,
		32.224346, 34.861752, 11.141331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684544, 35.631599, 11.372485>,  <32.915070, 34.971066, 11.172122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684544, 35.631599, 11.372485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389046, 35.372696, 11.447651>,  <32.211746, 35.217354, 11.492750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389046, 35.372696, 11.447651>,  <32.684544, 35.631599, 11.372485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389046, 35.372696, 11.447651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026963, 0.306970, 0.951337,
		-0.673446, 0.697729, -0.244225,
		-0.738745, -0.647259, 0.187915,
		32.167423, 35.178516, 11.504025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903727, 35.688709, 11.593641>,  <32.684544, 35.631599, 11.372485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903727, 35.688709, 11.593641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110233, 35.369045, 11.716809>,  <32.234138, 35.177246, 11.790710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110233, 35.369045, 11.716809>,  <31.903727, 35.688709, 11.593641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110233, 35.369045, 11.716809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185592, 0.455392, 0.870732,
		-0.836077, -0.392381, 0.383421,
		0.516266, -0.799159, 0.307920,
		32.265114, 35.129299, 11.809185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647570, 35.275631, 12.215185>,  <31.903727, 35.688709, 11.593641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647570, 35.275631, 12.215185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042374, 35.211399, 12.217169>,  <32.279255, 35.172859, 12.218359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042374, 35.211399, 12.217169>,  <31.647570, 35.275631, 12.215185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042374, 35.211399, 12.217169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046366, 0.314280, 0.948198,
		-0.153821, -0.935651, 0.317643,
		0.987011, -0.160580, 0.004960,
		32.338478, 35.163223, 12.218657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809669, 34.860207, 12.788376>,  <31.647570, 35.275631, 12.215185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809669, 34.860207, 12.788376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156979, 35.032436, 12.689819>,  <32.365364, 35.135777, 12.630685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156979, 35.032436, 12.689819>,  <31.809669, 34.860207, 12.788376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156979, 35.032436, 12.689819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097727, 0.338479, 0.935885,
		0.486370, -0.836681, 0.251812,
		0.868270, 0.430578, -0.246392,
		32.417461, 35.161610, 12.615902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317524, 34.638821, 13.346852>,  <31.809669, 34.860207, 12.788376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317524, 34.638821, 13.346852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510838, 34.960106, 13.207549>,  <32.626827, 35.152878, 13.123967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510838, 34.960106, 13.207549>,  <32.317524, 34.638821, 13.346852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510838, 34.960106, 13.207549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247397, 0.256285, 0.934405,
		0.839780, -0.537742, -0.074854,
		0.483285, 0.803213, -0.348258,
		32.655823, 35.201069, 13.103071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012932, 34.653988, 13.588338>,  <32.317524, 34.638821, 13.346852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012932, 34.653988, 13.588338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938240, 35.037323, 13.501886>,  <32.893425, 35.267326, 13.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938240, 35.037323, 13.501886>,  <33.012932, 34.653988, 13.588338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938240, 35.037323, 13.501886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357699, 0.271220, 0.893583,
		0.914977, 0.089552, -0.393444,
		-0.186732, 0.958342, -0.216128,
		32.882221, 35.324825, 13.437048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601395, 35.066360, 13.877163>,  <33.012932, 34.653988, 13.588338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601395, 35.066360, 13.877163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275799, 35.295685, 13.839777>,  <33.080441, 35.433281, 13.817346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275799, 35.295685, 13.839777>,  <33.601395, 35.066360, 13.877163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275799, 35.295685, 13.839777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185316, 0.408795, 0.893613,
		0.550529, 0.710069, -0.438998,
		-0.813988, 0.573313, -0.093466,
		33.031601, 35.467678, 13.811737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821785, 35.776981, 14.010368>,  <33.601395, 35.066360, 13.877163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821785, 35.776981, 14.010368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427662, 35.742081, 14.069090>,  <33.191189, 35.721142, 14.104322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427662, 35.742081, 14.069090>,  <33.821785, 35.776981, 14.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427662, 35.742081, 14.069090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106017, 0.361405, 0.926362,
		-0.133882, 0.928318, -0.346846,
		-0.985310, -0.087251, 0.146803,
		33.132069, 35.715904, 14.113131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614265, 36.198578, 14.528976>,  <33.821785, 35.776981, 14.010368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614265, 36.198578, 14.528976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246872, 36.040398, 14.528828>,  <33.026436, 35.945488, 14.528739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246872, 36.040398, 14.528828>,  <33.614265, 36.198578, 14.528976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246872, 36.040398, 14.528828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098443, 0.227739, 0.968733,
		-0.383002, 0.889805, -0.248105,
		-0.918487, -0.395451, -0.000371,
		32.971325, 35.921761, 14.528716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107998, 36.719990, 14.666939>,  <33.614265, 36.198578, 14.528976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107998, 36.719990, 14.666939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000092, 36.352055, 14.780869>,  <32.935349, 36.131294, 14.849226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000092, 36.352055, 14.780869>,  <33.107998, 36.719990, 14.666939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000092, 36.352055, 14.780869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134311, 0.328841, 0.934786,
		-0.953514, 0.213914, -0.212253,
		-0.269762, -0.919839, 0.284824,
		32.919163, 36.076103, 14.866316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847244, 36.821644, 15.414204>,  <33.107998, 36.719990, 14.666939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847244, 36.821644, 15.414204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834560, 36.422363, 15.393862>,  <32.826950, 36.182796, 15.381657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834560, 36.422363, 15.393862>,  <32.847244, 36.821644, 15.414204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834560, 36.422363, 15.393862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016421, -0.051393, 0.998544,
		-0.999362, 0.030829, 0.018021,
		-0.031710, -0.998203, -0.050854,
		32.825047, 36.122902, 15.378606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191391, 36.631413, 15.800488>,  <32.847244, 36.821644, 15.414204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191391, 36.631413, 15.800488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459255, 36.334621, 15.787637>,  <32.619972, 36.156548, 15.779925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459255, 36.334621, 15.787637>,  <32.191391, 36.631413, 15.800488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459255, 36.334621, 15.787637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080208, -0.115264, 0.990091,
		-0.738327, -0.660444, -0.136700,
		0.669656, -0.741976, -0.032130,
		32.660152, 36.112030, 15.777998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923653, 36.111916, 16.155943>,  <32.191391, 36.631413, 15.800488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923653, 36.111916, 16.155943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312000, 36.016186, 16.151285>,  <32.545010, 35.958748, 16.148491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312000, 36.016186, 16.151285>,  <31.923653, 36.111916, 16.155943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312000, 36.016186, 16.151285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005149, -0.069427, 0.997574,
		-0.239552, -0.968454, -0.068637,
		0.970870, -0.239324, -0.011645,
		32.603260, 35.944389, 16.147791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079674, 35.471210, 16.598463>,  <31.923653, 36.111916, 16.155943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079674, 35.471210, 16.598463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441090, 35.635818, 16.550673>,  <32.657940, 35.734581, 16.521997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441090, 35.635818, 16.550673>,  <32.079674, 35.471210, 16.598463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441090, 35.635818, 16.550673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216210, -0.197088, 0.956248,
		0.369964, -0.889837, -0.267050,
		0.903538, 0.411516, -0.119476,
		32.712151, 35.759274, 16.514830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649857, 34.977802, 16.705004>,  <32.079674, 35.471210, 16.598463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649857, 34.977802, 16.705004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808647, 35.340927, 16.759092>,  <32.903919, 35.558804, 16.791546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808647, 35.340927, 16.759092>,  <32.649857, 34.977802, 16.705004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808647, 35.340927, 16.759092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293081, -0.264991, 0.918631,
		0.869779, -0.325042, -0.371257,
		0.396974, 0.907815, 0.135220,
		32.927738, 35.613270, 16.799658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370586, 34.882923, 16.884682>,  <32.649857, 34.977802, 16.705004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370586, 34.882923, 16.884682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227978, 35.227867, 17.028475>,  <33.142410, 35.434834, 17.114750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227978, 35.227867, 17.028475>,  <33.370586, 34.882923, 16.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227978, 35.227867, 17.028475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302688, -0.257400, 0.917674,
		0.883895, 0.435983, -0.169257,
		-0.356524, 0.862359, 0.359482,
		33.121021, 35.486576, 17.136320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880249, 35.088448, 17.428030>,  <33.370586, 34.882923, 16.884682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880249, 35.088448, 17.428030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569656, 35.327724, 17.507265>,  <33.383301, 35.471291, 17.554806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569656, 35.327724, 17.507265>,  <33.880249, 35.088448, 17.428030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569656, 35.327724, 17.507265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213636, -0.045835, 0.975837,
		0.592815, 0.800043, -0.092204,
		-0.776485, 0.598190, 0.198090,
		33.336712, 35.507183, 17.566692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184425, 35.665520, 17.830412>,  <33.880249, 35.088448, 17.428030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184425, 35.665520, 17.830412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794010, 35.659245, 17.917229>,  <33.559761, 35.655479, 17.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794010, 35.659245, 17.917229>,  <34.184425, 35.665520, 17.830412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794010, 35.659245, 17.917229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215066, 0.082506, 0.973108,
		-0.033173, 0.996467, -0.077155,
		-0.976036, -0.015687, 0.217043,
		33.501198, 35.654537, 17.982342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172077, 36.062187, 18.447264>,  <34.184425, 35.665520, 17.830412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172077, 36.062187, 18.447264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820114, 35.872166, 18.443682>,  <33.608936, 35.758152, 18.441532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820114, 35.872166, 18.443682>,  <34.172077, 36.062187, 18.447264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820114, 35.872166, 18.443682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001913, -0.022384, 0.999748,
		-0.475137, 0.879671, 0.020604,
		-0.879910, -0.475056, -0.008953,
		33.556141, 35.729649, 18.440996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763744, 36.398216, 18.875528>,  <34.172077, 36.062187, 18.447264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763744, 36.398216, 18.875528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596283, 36.036781, 18.839180>,  <33.495808, 35.819920, 18.817371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596283, 36.036781, 18.839180>,  <33.763744, 36.398216, 18.875528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596283, 36.036781, 18.839180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122636, -0.042893, 0.991524,
		-0.899828, 0.426247, -0.092855,
		-0.418652, -0.903589, -0.090869,
		33.470688, 35.765705, 18.811920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380474, 36.461956, 19.399223>,  <33.763744, 36.398216, 18.875528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380474, 36.461956, 19.399223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369823, 36.068542, 19.327730>,  <33.363434, 35.832493, 19.284834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369823, 36.068542, 19.327730>,  <33.380474, 36.461956, 19.399223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369823, 36.068542, 19.327730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139084, -0.173410, 0.974980,
		-0.989923, 0.050823, -0.132176,
		-0.026631, -0.983538, -0.178731,
		33.361835, 35.773479, 19.274111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772610, 36.185093, 19.578417>,  <33.380474, 36.461956, 19.399223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772610, 36.185093, 19.578417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 35.887924, 19.623621>,  <33.194862, 35.709621, 19.650743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 35.887924, 19.623621>,  <32.772610, 36.185093, 19.578417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036518, 35.887924, 19.623621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171538, -0.002480, 0.985174,
		-0.731629, -0.669371, -0.129076,
		0.659768, -0.742923, 0.113008,
		33.234447, 35.665047, 19.657524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469082, 35.854084, 20.013439>,  <32.772610, 36.185093, 19.578417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469082, 35.854084, 20.013439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837921, 35.700073, 20.028835>,  <33.059227, 35.607666, 20.038073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837921, 35.700073, 20.028835>,  <32.469082, 35.854084, 20.013439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837921, 35.700073, 20.028835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045170, -0.008313, 0.998945,
		-0.384305, -0.922866, -0.025057,
		0.922100, -0.385032, 0.038491,
		33.114552, 35.584564, 20.040382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377537, 35.221958, 20.329838>,  <32.469082, 35.854084, 20.013439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377537, 35.221958, 20.329838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762691, 35.320309, 20.374378>,  <32.993782, 35.379318, 20.401102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762691, 35.320309, 20.374378>,  <32.377537, 35.221958, 20.329838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762691, 35.320309, 20.374378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086249, -0.110628, 0.990112,
		0.255764, -0.962967, -0.085315,
		0.962884, 0.245876, 0.111350,
		33.051556, 35.394070, 20.407784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564827, 34.671276, 20.646999>,  <32.377537, 35.221958, 20.329838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564827, 34.671276, 20.646999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860603, 34.930611, 20.719536>,  <33.038071, 35.086212, 20.763058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860603, 34.930611, 20.719536>,  <32.564827, 34.671276, 20.646999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860603, 34.930611, 20.719536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007430, -0.261488, 0.965178,
		0.673180, -0.715040, -0.188538,
		0.739441, 0.648338, 0.181341,
		33.082436, 35.125111, 20.773937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125984, 34.340710, 21.027969>,  <32.564827, 34.671276, 20.646999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125984, 34.340710, 21.027969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203041, 34.727188, 21.096500>,  <33.249275, 34.959076, 21.137619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203041, 34.727188, 21.096500>,  <33.125984, 34.340710, 21.027969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203041, 34.727188, 21.096500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076004, -0.159384, 0.984287,
		0.978321, -0.202639, 0.042730,
		0.192645, 0.966196, 0.171330,
		33.260834, 35.017048, 21.147900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732704, 34.421463, 21.575413>,  <33.125984, 34.340710, 21.027969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732704, 34.421463, 21.575413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520741, 34.760212, 21.593353>,  <33.393562, 34.963459, 21.604116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520741, 34.760212, 21.593353>,  <33.732704, 34.421463, 21.575413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520741, 34.760212, 21.593353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150112, -0.145717, 0.977872,
		0.834663, 0.511451, 0.204341,
		-0.529909, 0.846868, 0.044850,
		33.361767, 35.014271, 21.606808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942696, 34.770527, 22.228941>,  <33.732704, 34.421463, 21.575413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942696, 34.770527, 22.228941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585686, 34.929447, 22.143564>,  <33.371479, 35.024799, 22.092339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585686, 34.929447, 22.143564>,  <33.942696, 34.770527, 22.228941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585686, 34.929447, 22.143564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258336, -0.062430, 0.964036,
		0.369687, 0.915562, 0.158357,
		-0.892521, 0.397301, -0.213443,
		33.317928, 35.048637, 22.079531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723263, 35.276192, 22.798283>,  <33.942696, 34.770527, 22.228941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723263, 35.276192, 22.798283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375484, 35.201950, 22.615145>,  <33.166817, 35.157406, 22.505262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375484, 35.201950, 22.615145>,  <33.723263, 35.276192, 22.798283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375484, 35.201950, 22.615145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465183, -0.004500, 0.885203,
		-0.166355, 0.982615, -0.082426,
		-0.869443, -0.185601, -0.457844,
		33.114651, 35.146271, 22.477791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318905, 35.624401, 23.179516>,  <33.723263, 35.276192, 22.798283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318905, 35.624401, 23.179516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022808, 35.426109, 22.997833>,  <32.845150, 35.307137, 22.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022808, 35.426109, 22.997833>,  <33.318905, 35.624401, 23.179516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022808, 35.426109, 22.997833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591094, 0.157899, 0.790997,
		-0.320399, 0.854004, -0.409904,
		-0.740238, -0.495726, -0.454206,
		32.800735, 35.277393, 22.861572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764423, 36.027882, 23.213348>,  <33.318905, 35.624401, 23.179516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764423, 36.027882, 23.213348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648758, 35.645863, 23.187214>,  <32.579357, 35.416653, 23.171534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648758, 35.645863, 23.187214>,  <32.764423, 36.027882, 23.213348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648758, 35.645863, 23.187214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612417, 0.132105, 0.779418,
		-0.735750, 0.265392, -0.623088,
		-0.289165, -0.955047, -0.065334,
		32.562008, 35.359348, 23.167614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015022, 36.073032, 23.361879>,  <32.764423, 36.027882, 23.213348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015022, 36.073032, 23.361879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140186, 35.698044, 23.422846>,  <32.215286, 35.473049, 23.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140186, 35.698044, 23.422846>,  <32.015022, 36.073032, 23.361879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140186, 35.698044, 23.422846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621562, -0.080784, 0.779189,
		-0.718155, -0.338556, -0.607975,
		0.312913, -0.937472, 0.152418,
		32.234062, 35.416801, 23.468571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362494, 35.735901, 23.579786>,  <32.015022, 36.073032, 23.361879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362494, 35.735901, 23.579786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641552, 35.476788, 23.702206>,  <31.808987, 35.321320, 23.775658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641552, 35.476788, 23.702206>,  <31.362494, 35.735901, 23.579786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641552, 35.476788, 23.702206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543090, -0.199549, 0.815618,
		-0.467272, -0.735225, -0.491019,
		0.697646, -0.647784, 0.306050,
		31.850845, 35.282452, 23.794022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019287, 35.121281, 23.752439>,  <31.362494, 35.735901, 23.579786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019287, 35.121281, 23.752439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369263, 35.114197, 23.946005>,  <31.579248, 35.109947, 24.062143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369263, 35.114197, 23.946005>,  <31.019287, 35.121281, 23.752439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369263, 35.114197, 23.946005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453068, -0.382679, 0.805162,
		0.170923, -0.923712, -0.342844,
		0.874937, -0.017711, 0.483913,
		31.631744, 35.108883, 24.091179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964941, 34.423645, 24.031729>,  <31.019287, 35.121281, 23.752439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964941, 34.423645, 24.031729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246567, 34.613274, 24.243217>,  <31.415543, 34.727051, 24.370110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246567, 34.613274, 24.243217>,  <30.964941, 34.423645, 24.031729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246567, 34.613274, 24.243217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479935, -0.231102, 0.846318,
		0.523406, -0.849614, 0.064815,
		0.704065, 0.474075, 0.528720,
		31.457787, 34.755497, 24.401834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114561, 34.022606, 24.598476>,  <30.964941, 34.423645, 24.031729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114561, 34.022606, 24.598476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244263, 34.384327, 24.709545>,  <31.322084, 34.601360, 24.776186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244263, 34.384327, 24.709545>,  <31.114561, 34.022606, 24.598476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244263, 34.384327, 24.709545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411682, -0.129378, 0.902097,
		0.851691, -0.406822, 0.330332,
		0.324255, 0.904299, 0.277671,
		31.341539, 34.655617, 24.792847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448328, 33.913628, 25.204861>,  <31.114561, 34.022606, 24.598476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448328, 33.913628, 25.204861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384489, 34.308483, 25.201048>,  <31.346186, 34.545395, 25.198761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384489, 34.308483, 25.201048>,  <31.448328, 33.913628, 25.204861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384489, 34.308483, 25.201048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313452, -0.041518, 0.948696,
		0.936097, 0.154395, 0.316046,
		-0.159595, 0.987136, -0.009531,
		31.336611, 34.604626, 25.198189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799082, 34.117168, 25.926609>,  <31.448328, 33.913628, 25.204861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799082, 34.117168, 25.926609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535730, 34.382313, 25.783976>,  <31.377720, 34.541401, 25.698395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535730, 34.382313, 25.783976>,  <31.799082, 34.117168, 25.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535730, 34.382313, 25.783976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511018, -0.045817, 0.858348,
		0.552628, 0.747339, 0.368900,
		-0.658379, 0.662861, -0.356584,
		31.338217, 34.581173, 25.677000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843481, 34.667278, 26.368364>,  <31.799082, 34.117168, 25.926609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843481, 34.667278, 26.368364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481943, 34.681564, 26.197817>,  <31.265020, 34.690136, 26.095490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481943, 34.681564, 26.197817>,  <31.843481, 34.667278, 26.368364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481943, 34.681564, 26.197817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426777, -0.004381, 0.904347,
		0.030430, 0.999352, 0.019202,
		-0.903845, 0.035714, -0.426367,
		31.210789, 34.692280, 26.069906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539589, 35.183971, 26.628420>,  <31.843481, 34.667278, 26.368364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539589, 35.183971, 26.628420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251116, 34.924809, 26.530344>,  <31.078032, 34.769310, 26.471498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251116, 34.924809, 26.530344>,  <31.539589, 35.183971, 26.628420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251116, 34.924809, 26.530344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412559, 0.117366, 0.903338,
		-0.556500, 0.752625, -0.351942,
		-0.721181, -0.647905, -0.245188,
		31.034761, 34.730438, 26.456787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112831, 35.442093, 26.157351>,  <31.539589, 35.183971, 26.628420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112831, 35.442093, 26.157351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288769, 35.701912, 26.405424>,  <32.394329, 35.857803, 26.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288769, 35.701912, 26.405424>,  <32.112831, 35.442093, 26.157351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288769, 35.701912, 26.405424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054888, 0.669838, -0.740476,
		-0.896396, 0.359733, 0.258971,
		0.439842, 0.649545, 0.620185,
		32.420723, 35.896774, 26.591480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790695, 36.114674, 26.109932>,  <32.112831, 35.442093, 26.157351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790695, 36.114674, 26.109932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165688, 36.174061, 26.235842>,  <32.390682, 36.209694, 26.311388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165688, 36.174061, 26.235842>,  <31.790695, 36.114674, 26.109932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165688, 36.174061, 26.235842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185488, 0.552133, -0.812861,
		-0.294482, 0.820430, 0.490076,
		0.937483, 0.148470, 0.314773,
		32.446934, 36.218601, 26.330275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947912, 36.776733, 26.010521>,  <31.790695, 36.114674, 26.109932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947912, 36.776733, 26.010521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309452, 36.607365, 26.035078>,  <32.526375, 36.505745, 26.049812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309452, 36.607365, 26.035078>,  <31.947912, 36.776733, 26.010521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309452, 36.607365, 26.035078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305505, 0.538261, -0.785456,
		0.299531, 0.728692, 0.615864,
		0.903852, -0.423418, 0.061393,
		32.580608, 36.480339, 26.053495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386112, 37.235195, 25.920528>,  <31.947912, 36.776733, 26.010521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386112, 37.235195, 25.920528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643852, 36.939793, 25.841105>,  <32.798496, 36.762550, 25.793449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643852, 36.939793, 25.841105>,  <32.386112, 37.235195, 25.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643852, 36.939793, 25.841105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439964, 0.570364, -0.693626,
		0.625499, 0.359575, 0.692428,
		0.644347, -0.738506, -0.198562,
		32.837154, 36.718243, 25.781536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859085, 37.568695, 25.587004>,  <32.386112, 37.235195, 25.920528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859085, 37.568695, 25.587004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972309, 37.196133, 25.495470>,  <33.040241, 36.972595, 25.440550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972309, 37.196133, 25.495470>,  <32.859085, 37.568695, 25.587004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972309, 37.196133, 25.495470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457509, 0.340823, -0.821295,
		0.842949, 0.127780, 0.522598,
		0.283058, -0.931403, -0.228836,
		33.057228, 36.916710, 25.426819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581474, 37.444817, 25.543020>,  <32.859085, 37.568695, 25.587004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581474, 37.444817, 25.543020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407715, 37.184162, 25.294292>,  <33.303459, 37.027767, 25.145056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407715, 37.184162, 25.294292>,  <33.581474, 37.444817, 25.543020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407715, 37.184162, 25.294292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555613, 0.349505, -0.754413,
		0.708937, -0.673209, 0.210235,
		-0.434399, -0.651641, -0.621821,
		33.277393, 36.988670, 25.107746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119812, 37.114017, 25.186539>,  <33.581474, 37.444817, 25.543020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119812, 37.114017, 25.186539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789074, 37.029430, 24.978075>,  <33.590630, 36.978676, 24.852997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789074, 37.029430, 24.978075>,  <34.119812, 37.114017, 25.186539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789074, 37.029430, 24.978075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509086, 0.112473, -0.853335,
		0.239073, -0.970891, 0.014660,
		-0.826846, -0.211473, -0.521157,
		33.541019, 36.965988, 24.821728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407539, 36.939594, 24.543652>,  <34.119812, 37.114017, 25.186539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407539, 36.939594, 24.543652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026287, 37.003334, 24.440769>,  <33.797535, 37.041576, 24.379040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026287, 37.003334, 24.440769>,  <34.407539, 36.939594, 24.543652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026287, 37.003334, 24.440769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292604, 0.269061, -0.917600,
		-0.077016, -0.949849, -0.303076,
		-0.953127, 0.159351, -0.257208,
		33.740349, 37.051140, 24.363607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372711, 36.668980, 23.837196>,  <34.407539, 36.939594, 24.543652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372711, 36.668980, 23.837196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036839, 36.885834, 23.850037>,  <33.835316, 37.015945, 23.857740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036839, 36.885834, 23.850037>,  <34.372711, 36.668980, 23.837196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036839, 36.885834, 23.850037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140382, 0.273764, -0.951497,
		-0.524628, -0.794445, -0.305979,
		-0.839677, 0.542136, 0.032099,
		33.784935, 37.048473, 23.859667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030674, 36.431953, 23.353584>,  <34.372711, 36.668980, 23.837196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030674, 36.431953, 23.353584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883389, 36.798126, 23.418594>,  <33.795017, 37.017830, 23.457600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883389, 36.798126, 23.418594>,  <34.030674, 36.431953, 23.353584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883389, 36.798126, 23.418594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079326, 0.143235, -0.986504,
		-0.926352, -0.376133, 0.019876,
		-0.368210, 0.915427, 0.162523,
		33.772926, 37.072754, 23.467352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433018, 36.552868, 22.899391>,  <34.030674, 36.431953, 23.353584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433018, 36.552868, 22.899391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551521, 36.918751, 23.009329>,  <33.622623, 37.138279, 23.075291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551521, 36.918751, 23.009329>,  <33.433018, 36.552868, 22.899391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551521, 36.918751, 23.009329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170091, 0.333689, -0.927211,
		-0.939840, 0.227948, 0.254443,
		0.296261, 0.914708, 0.274843,
		33.640400, 37.193165, 23.091782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992237, 37.053062, 22.519226>,  <33.433018, 36.552868, 22.899391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992237, 37.053062, 22.519226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323116, 37.251385, 22.624996>,  <33.521645, 37.370380, 22.688457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323116, 37.251385, 22.624996>,  <32.992237, 37.053062, 22.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323116, 37.251385, 22.624996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124456, 0.297232, -0.946659,
		-0.547958, 0.815982, 0.184162,
		0.827196, 0.495810, 0.264424,
		33.571274, 37.400127, 22.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869797, 37.679951, 22.243456>,  <32.992237, 37.053062, 22.519226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869797, 37.679951, 22.243456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265289, 37.661762, 22.300514>,  <33.502583, 37.650848, 22.334749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265289, 37.661762, 22.300514>,  <32.869797, 37.679951, 22.243456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265289, 37.661762, 22.300514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149694, 0.282397, -0.947546,
		0.002806, 0.958219, 0.286021,
		0.988728, -0.045474, 0.142647,
		33.561909, 37.648121, 22.343309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206860, 38.357479, 22.014301>,  <32.869797, 37.679951, 22.243456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206860, 38.357479, 22.014301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495754, 38.081116, 22.001568>,  <33.669090, 37.915298, 21.993927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495754, 38.081116, 22.001568>,  <33.206860, 38.357479, 22.014301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495754, 38.081116, 22.001568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182332, 0.234592, -0.954841,
		0.667179, 0.683818, 0.295406,
		0.722238, -0.690912, -0.031833,
		33.712425, 37.873840, 21.992018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842865, 38.726101, 21.838257>,  <33.206860, 38.357479, 22.014301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842865, 38.726101, 21.838257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880859, 38.341949, 21.733458>,  <33.903656, 38.111458, 21.670578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880859, 38.341949, 21.733458>,  <33.842865, 38.726101, 21.838257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880859, 38.341949, 21.733458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194919, 0.276037, -0.941175,
		0.976209, 0.038333, 0.213418,
		0.094989, -0.960382, -0.261998,
		33.909355, 38.053833, 21.654858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268791, 38.783981, 21.332850>,  <33.842865, 38.726101, 21.838257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268791, 38.783981, 21.332850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178196, 38.395855, 21.298916>,  <34.123840, 38.162979, 21.278555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178196, 38.395855, 21.298916>,  <34.268791, 38.783981, 21.332850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178196, 38.395855, 21.298916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363928, -0.003513, -0.931420,
		0.903471, -0.241830, 0.353920,
		-0.226488, -0.970312, -0.084835,
		34.110249, 38.104763, 21.273466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676952, 38.656536, 20.735023>,  <34.268791, 38.783981, 21.332850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676952, 38.656536, 20.735023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395123, 38.376289, 20.780125>,  <34.226025, 38.208141, 20.807184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395123, 38.376289, 20.780125>,  <34.676952, 38.656536, 20.735023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395123, 38.376289, 20.780125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060842, -0.098662, -0.993259,
		0.707018, -0.706684, 0.026888,
		-0.704573, -0.700617, 0.112752,
		34.183750, 38.166103, 20.813950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964607, 38.020840, 20.442303>,  <34.676952, 38.656536, 20.735023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964607, 38.020840, 20.442303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565891, 37.989578, 20.449284>,  <34.326660, 37.970821, 20.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565891, 37.989578, 20.449284>,  <34.964607, 38.020840, 20.442303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565891, 37.989578, 20.449284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010312, -0.090881, -0.995808,
		0.079411, -0.992790, 0.089783,
		-0.996789, -0.078152, 0.017454,
		34.266853, 37.966133, 20.454519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859058, 37.504673, 20.020535>,  <34.964607, 38.020840, 20.442303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859058, 37.504673, 20.020535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524170, 37.719711, 20.060637>,  <34.323238, 37.848736, 20.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524170, 37.719711, 20.060637>,  <34.859058, 37.504673, 20.020535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524170, 37.719711, 20.060637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184811, -0.105603, -0.977084,
		-0.514692, -0.836562, 0.187768,
		-0.837220, 0.537599, 0.100253,
		34.273003, 37.880989, 20.090712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359859, 37.154572, 19.523956>,  <34.859058, 37.504673, 20.020535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359859, 37.154572, 19.523956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188534, 37.512447, 19.574667>,  <34.085739, 37.727173, 19.605093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188534, 37.512447, 19.574667>,  <34.359859, 37.154572, 19.523956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188534, 37.512447, 19.574667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286066, -0.001172, -0.958209,
		-0.857153, -0.446682, 0.256443,
		-0.428315, 0.894692, 0.126776,
		34.060040, 37.780853, 19.612700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779915, 37.167877, 19.085911>,  <34.359859, 37.154572, 19.523956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779915, 37.167877, 19.085911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785679, 37.559139, 19.168858>,  <33.789139, 37.793896, 19.218626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785679, 37.559139, 19.168858>,  <33.779915, 37.167877, 19.085911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785679, 37.559139, 19.168858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040232, 0.207789, -0.977346,
		-0.999086, 0.005742, 0.042347,
		0.014412, 0.978157, 0.207368,
		33.790001, 37.852585, 19.231068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243542, 37.485588, 18.683283>,  <33.779915, 37.167877, 19.085911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243542, 37.485588, 18.683283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514961, 37.767513, 18.766052>,  <33.677811, 37.936668, 18.815714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514961, 37.767513, 18.766052>,  <33.243542, 37.485588, 18.683283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514961, 37.767513, 18.766052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044003, 0.242192, -0.969230,
		-0.733239, 0.666772, 0.133325,
		0.678546, 0.704810, 0.206925,
		33.718525, 37.978958, 18.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068390, 38.012360, 18.140287>,  <33.243542, 37.485588, 18.683283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068390, 38.012360, 18.140287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439667, 38.092709, 18.265579>,  <33.662434, 38.140919, 18.340754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439667, 38.092709, 18.265579>,  <33.068390, 38.012360, 18.140287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439667, 38.092709, 18.265579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271137, 0.211409, -0.939037,
		-0.254842, 0.956534, 0.141765,
		0.928192, 0.200868, 0.313228,
		33.718124, 38.152969, 18.359547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365604, 38.707073, 17.941347>,  <33.068390, 38.012360, 18.140287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365604, 38.707073, 17.941347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681347, 38.464611, 17.980326>,  <33.870792, 38.319134, 18.003712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681347, 38.464611, 17.980326>,  <33.365604, 38.707073, 17.941347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681347, 38.464611, 17.980326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373862, 0.348689, -0.859443,
		0.486979, 0.714836, 0.501858,
		0.789353, -0.606156, 0.097446,
		33.918152, 38.282764, 18.009560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805058, 38.875935, 17.417904>,  <33.365604, 38.707073, 17.941347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805058, 38.875935, 17.417904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031723, 38.575890, 17.554274>,  <34.167721, 38.395863, 17.636095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031723, 38.575890, 17.554274>,  <33.805058, 38.875935, 17.417904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031723, 38.575890, 17.554274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397799, -0.113286, -0.910452,
		0.721563, 0.651535, 0.234199,
		0.566660, -0.750112, 0.340923,
		34.201721, 38.350857, 17.656551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488064, 38.932629, 17.249439>,  <33.805058, 38.875935, 17.417904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488064, 38.932629, 17.249439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423698, 38.538925, 17.278650>,  <34.385078, 38.302704, 17.296177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423698, 38.538925, 17.278650>,  <34.488064, 38.932629, 17.249439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423698, 38.538925, 17.278650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531433, -0.148756, -0.833936,
		0.831676, -0.095384, 0.547007,
		-0.160915, -0.984263, 0.073027,
		34.375423, 38.243645, 17.300558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190826, 38.575771, 17.297407>,  <34.488064, 38.932629, 17.249439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190826, 38.575771, 17.297407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911312, 38.330334, 17.150330>,  <34.743603, 38.183071, 17.062082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911312, 38.330334, 17.150330>,  <35.190826, 38.575771, 17.297407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911312, 38.330334, 17.150330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609814, -0.242293, -0.754600,
		0.373927, -0.751531, 0.543489,
		-0.698789, -0.613593, -0.367694,
		34.701675, 38.146255, 17.040022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584194, 38.031803, 17.045324>,  <35.190826, 38.575771, 17.297407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584194, 38.031803, 17.045324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231979, 37.991760, 16.860008>,  <35.020653, 37.967735, 16.748817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231979, 37.991760, 16.860008>,  <35.584194, 38.031803, 17.045324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231979, 37.991760, 16.860008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473876, -0.165155, -0.864966,
		0.010072, -0.981174, 0.192861,
		-0.880534, -0.100104, -0.463291,
		34.967819, 37.961731, 16.721022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597599, 37.427044, 16.639347>,  <35.584194, 38.031803, 17.045324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597599, 37.427044, 16.639347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294109, 37.617184, 16.461187>,  <35.112015, 37.731266, 16.354292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294109, 37.617184, 16.461187>,  <35.597599, 37.427044, 16.639347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294109, 37.617184, 16.461187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439993, -0.130234, -0.888507,
		-0.480359, -0.870104, -0.110340,
		-0.758723, 0.475351, -0.445399,
		35.066494, 37.759789, 16.327568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325974, 36.953720, 16.067360>,  <35.597599, 37.427044, 16.639347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325974, 36.953720, 16.067360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231346, 37.333843, 15.986409>,  <35.174568, 37.561916, 15.937839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231346, 37.333843, 15.986409>,  <35.325974, 36.953720, 16.067360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231346, 37.333843, 15.986409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313229, -0.122576, -0.941734,
		-0.919741, -0.286173, -0.268666,
		-0.236567, 0.950305, -0.202376,
		35.160378, 37.618935, 15.925696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851288, 36.899769, 15.484306>,  <35.325974, 36.953720, 16.067360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851288, 36.899769, 15.484306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025009, 37.259647, 15.501861>,  <35.129242, 37.475574, 15.512393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025009, 37.259647, 15.501861>,  <34.851288, 36.899769, 15.484306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025009, 37.259647, 15.501861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310324, -0.103708, -0.944957,
		-0.845622, 0.424021, -0.324238,
		0.434308, 0.899695, 0.043886,
		35.155300, 37.529556, 15.515026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741341, 37.178406, 14.783041>,  <34.851288, 36.899769, 15.484306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741341, 37.178406, 14.783041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023403, 37.414272, 14.940544>,  <35.192642, 37.555790, 15.035046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023403, 37.414272, 14.940544>,  <34.741341, 37.178406, 14.783041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023403, 37.414272, 14.940544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523861, -0.059033, -0.849756,
		-0.477825, 0.805488, -0.350530,
		0.705161, 0.589664, 0.393757,
		35.234951, 37.591171, 15.058671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755768, 37.719902, 14.302731>,  <34.741341, 37.178406, 14.783041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755768, 37.719902, 14.302731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109035, 37.772732, 14.482761>,  <35.320995, 37.804432, 14.590780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109035, 37.772732, 14.482761>,  <34.755768, 37.719902, 14.302731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109035, 37.772732, 14.482761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446706, 0.055831, -0.892937,
		-0.143064, 0.989666, -0.009691,
		0.883168, 0.132077, 0.450077,
		35.373985, 37.812355, 14.617785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044033, 38.268921, 13.842749>,  <34.755768, 37.719902, 14.302731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044033, 38.268921, 13.842749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321339, 38.069622, 14.051035>,  <35.487720, 37.950043, 14.176006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321339, 38.069622, 14.051035>,  <35.044033, 38.268921, 13.842749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321339, 38.069622, 14.051035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638812, 0.090348, -0.764040,
		0.333633, 0.862317, 0.380918,
		0.693259, -0.498244, 0.520715,
		35.529316, 37.920151, 14.207250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700455, 38.706074, 13.860228>,  <35.044033, 38.268921, 13.842749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700455, 38.706074, 13.860228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793144, 38.323055, 13.928827>,  <35.848759, 38.093243, 13.969987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793144, 38.323055, 13.928827>,  <35.700455, 38.706074, 13.860228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793144, 38.323055, 13.928827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671998, 0.030094, -0.739942,
		0.703366, 0.286708, 0.650442,
		0.231721, -0.957545, 0.171500,
		35.862659, 38.035793, 13.980277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465782, 38.806076, 13.737394>,  <35.700455, 38.706074, 13.860228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465782, 38.806076, 13.737394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390461, 38.413231, 13.738203>,  <36.345268, 38.177525, 13.738688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390461, 38.413231, 13.738203>,  <36.465782, 38.806076, 13.737394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390461, 38.413231, 13.738203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683353, -0.132502, -0.717963,
		0.705386, -0.133815, 0.696078,
		-0.188307, -0.982108, 0.002022,
		36.333969, 38.118599, 13.738810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139046, 38.472412, 13.736611>,  <36.465782, 38.806076, 13.737394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139046, 38.472412, 13.736611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856018, 38.229469, 13.592132>,  <36.686199, 38.083706, 13.505444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856018, 38.229469, 13.592132>,  <37.139046, 38.472412, 13.736611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856018, 38.229469, 13.592132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589253, -0.224997, -0.775988,
		0.390031, -0.761904, 0.517087,
		-0.707571, -0.607354, -0.361198,
		36.643745, 38.047264, 13.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390881, 37.830891, 13.535542>,  <37.139046, 38.472412, 13.736611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390881, 37.830891, 13.535542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050655, 37.828598, 13.325208>,  <36.846519, 37.827221, 13.199007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050655, 37.828598, 13.325208>,  <37.390881, 37.830891, 13.535542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050655, 37.828598, 13.325208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479368, -0.419569, -0.770824,
		-0.216205, -0.907706, 0.359620,
		-0.850566, -0.005734, -0.525837,
		36.795486, 37.826878, 13.167457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003834, 37.445019, 13.278065>,  <37.390881, 37.830891, 13.535542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003834, 37.445019, 13.278065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371624, 37.468300, 13.433590>,  <38.592297, 37.482269, 13.526905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371624, 37.468300, 13.433590>,  <38.003834, 37.445019, 13.278065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371624, 37.468300, 13.433590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363984, -0.247762, 0.897847,
		0.148591, -0.967071, -0.206626,
		0.919476, 0.058204, 0.388814,
		38.647469, 37.485760, 13.550234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083878, 36.832619, 13.819867>,  <38.003834, 37.445019, 13.278065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083878, 36.832619, 13.819867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372906, 37.096436, 13.902721>,  <38.546322, 37.254726, 13.952434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372906, 37.096436, 13.902721>,  <38.083878, 36.832619, 13.819867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372906, 37.096436, 13.902721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041514, -0.257692, 0.965335,
		0.690052, -0.706120, -0.158820,
		0.722568, 0.659538, 0.207135,
		38.589676, 37.294296, 13.964862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685020, 36.431461, 14.175677>,  <38.083878, 36.832619, 13.819867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685020, 36.431461, 14.175677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698574, 36.823421, 14.254304>,  <38.706707, 37.058598, 14.301480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698574, 36.823421, 14.254304>,  <38.685020, 36.431461, 14.175677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698574, 36.823421, 14.254304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022687, -0.195875, 0.980366,
		0.999168, -0.037680, 0.015594,
		0.033885, 0.979905, 0.196566,
		38.708740, 37.117393, 14.313273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103451, 36.445717, 14.758791>,  <38.685020, 36.431461, 14.175677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103451, 36.445717, 14.758791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960297, 36.818630, 14.779862>,  <38.874405, 37.042377, 14.792505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960297, 36.818630, 14.779862>,  <39.103451, 36.445717, 14.758791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960297, 36.818630, 14.779862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009525, -0.052767, 0.998562,
		0.933717, 0.357871, 0.010005,
		-0.357884, 0.932279, 0.052678,
		38.852932, 37.098312, 14.795666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497753, 36.733902, 15.358602>,  <39.103451, 36.445717, 14.758791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497753, 36.733902, 15.358602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157864, 36.942677, 15.328827>,  <38.953930, 37.067944, 15.310963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157864, 36.942677, 15.328827>,  <39.497753, 36.733902, 15.358602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157864, 36.942677, 15.328827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063740, 0.038448, 0.997226,
		0.523354, 0.852115, 0.000598,
		-0.849728, 0.521940, -0.074436,
		38.902946, 37.099258, 15.306496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513309, 37.161163, 15.924212>,  <39.497753, 36.733902, 15.358602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513309, 37.161163, 15.924212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136482, 37.175835, 15.790850>,  <38.910385, 37.184639, 15.710833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136482, 37.175835, 15.790850>,  <39.513309, 37.161163, 15.924212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136482, 37.175835, 15.790850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326879, 0.122432, 0.937102,
		0.075190, 0.991799, -0.103351,
		-0.942070, 0.036678, -0.333404,
		38.853863, 37.186836, 15.690828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215221, 37.719757, 16.205149>,  <39.513309, 37.161163, 15.924212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215221, 37.719757, 16.205149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907803, 37.477814, 16.121744>,  <38.723351, 37.332645, 16.071701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907803, 37.477814, 16.121744>,  <39.215221, 37.719757, 16.205149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907803, 37.477814, 16.121744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346114, 0.118967, 0.930619,
		-0.538091, 0.787393, -0.300783,
		-0.768546, -0.604863, -0.208513,
		38.677238, 37.296356, 16.059191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529499, 38.069481, 16.427746>,  <39.215221, 37.719757, 16.205149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529499, 38.069481, 16.427746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464691, 37.674778, 16.424658>,  <38.425808, 37.437958, 16.422806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464691, 37.674778, 16.424658>,  <38.529499, 38.069481, 16.427746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464691, 37.674778, 16.424658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318278, 0.044852, 0.946936,
		-0.934049, 0.155880, -0.321330,
		-0.162021, -0.986757, -0.007719,
		38.416084, 37.378750, 16.422342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823624, 37.955868, 16.704752>,  <38.529499, 38.069481, 16.427746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823624, 37.955868, 16.704752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997826, 37.598423, 16.748207>,  <38.102345, 37.383957, 16.774281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997826, 37.598423, 16.748207>,  <37.823624, 37.955868, 16.704752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997826, 37.598423, 16.748207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316324, -0.038930, 0.947852,
		-0.842780, -0.447156, -0.299624,
		0.435502, -0.893609, 0.108637,
		38.128475, 37.330341, 16.780798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330662, 37.490955, 17.065756>,  <37.823624, 37.955868, 16.704752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330662, 37.490955, 17.065756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680809, 37.305798, 17.121553>,  <37.890900, 37.194702, 17.155031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680809, 37.305798, 17.121553>,  <37.330662, 37.490955, 17.065756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680809, 37.305798, 17.121553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156659, 0.001373, 0.987652,
		-0.457369, -0.886413, -0.071314,
		0.875369, -0.462893, 0.139493,
		37.943420, 37.166931, 17.163401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203495, 36.780083, 17.321980>,  <37.330662, 37.490955, 17.065756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203495, 36.780083, 17.321980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574013, 36.883461, 17.431660>,  <37.796322, 36.945488, 17.497467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574013, 36.883461, 17.431660>,  <37.203495, 36.780083, 17.321980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574013, 36.883461, 17.431660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279709, -0.015961, 0.959952,
		0.252472, -0.965894, 0.057505,
		0.926294, 0.258446, 0.274199,
		37.851902, 36.960995, 17.513920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335754, 36.321980, 17.968140>,  <37.203495, 36.780083, 17.321980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335754, 36.321980, 17.968140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602428, 36.619953, 17.977915>,  <37.762432, 36.798737, 17.983780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602428, 36.619953, 17.977915>,  <37.335754, 36.321980, 17.968140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602428, 36.619953, 17.977915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192984, 0.140858, 0.971039,
		0.719920, -0.652095, 0.237670,
		0.666687, 0.744937, 0.024437,
		37.802433, 36.843433, 17.985247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806580, 36.213524, 18.530424>,  <37.335754, 36.321980, 17.968140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806580, 36.213524, 18.530424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854927, 36.605171, 18.465048>,  <37.883938, 36.840160, 18.425821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854927, 36.605171, 18.465048>,  <37.806580, 36.213524, 18.530424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854927, 36.605171, 18.465048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029052, 0.168068, 0.985347,
		0.992243, -0.114353, 0.048760,
		0.120873, 0.979120, -0.163442,
		37.891190, 36.898907, 18.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196323, 36.483688, 19.134741>,  <37.806580, 36.213524, 18.530424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196323, 36.483688, 19.134741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017197, 36.809467, 18.987156>,  <37.909721, 37.004936, 18.898605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017197, 36.809467, 18.987156>,  <38.196323, 36.483688, 19.134741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017197, 36.809467, 18.987156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360507, 0.213156, 0.908075,
		0.818227, 0.539665, 0.198159,
		-0.447817, 0.814449, -0.368962,
		37.882851, 37.053802, 18.876467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529457, 37.036221, 19.508125>,  <38.196323, 36.483688, 19.134741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529457, 37.036221, 19.508125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177532, 37.160545, 19.364277>,  <37.966377, 37.235142, 19.277967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177532, 37.160545, 19.364277>,  <38.529457, 37.036221, 19.508125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177532, 37.160545, 19.364277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228834, 0.386162, 0.893596,
		0.416613, 0.868489, -0.268626,
		-0.879812, 0.310813, -0.359620,
		37.913589, 37.253788, 19.256392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392170, 37.696705, 19.861105>,  <38.529457, 37.036221, 19.508125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392170, 37.696705, 19.861105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034962, 37.605820, 19.705730>,  <37.820637, 37.551289, 19.612505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034962, 37.605820, 19.705730>,  <38.392170, 37.696705, 19.861105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034962, 37.605820, 19.705730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440546, 0.265305, 0.857632,
		-0.091815, 0.937009, -0.337023,
		-0.893023, -0.227217, -0.388436,
		37.767056, 37.537655, 19.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982796, 38.278156, 19.890055>,  <38.392170, 37.696705, 19.861105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982796, 38.278156, 19.890055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748043, 37.954422, 19.880720>,  <37.607193, 37.760181, 19.875120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748043, 37.954422, 19.880720>,  <37.982796, 38.278156, 19.890055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748043, 37.954422, 19.880720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400022, 0.264770, 0.877427,
		-0.703956, 0.524280, -0.479141,
		-0.586880, -0.809338, -0.023337,
		37.571980, 37.711620, 19.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277252, 38.532269, 19.943880>,  <37.982796, 38.278156, 19.890055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277252, 38.532269, 19.943880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251369, 38.149769, 20.057999>,  <37.235840, 37.920269, 20.126471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251369, 38.149769, 20.057999>,  <37.277252, 38.532269, 19.943880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251369, 38.149769, 20.057999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337437, 0.290024, 0.895557,
		-0.939121, -0.038321, -0.341442,
		-0.064708, -0.956252, 0.285298,
		37.231956, 37.862892, 20.143589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751133, 38.512573, 20.389307>,  <37.277252, 38.532269, 19.943880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751133, 38.512573, 20.389307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910797, 38.156185, 20.475880>,  <37.006596, 37.942352, 20.527822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910797, 38.156185, 20.475880>,  <36.751133, 38.512573, 20.389307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910797, 38.156185, 20.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254610, 0.119057, 0.959687,
		-0.880823, -0.438170, -0.179329,
		0.399156, -0.890973, 0.216431,
		37.030544, 37.888893, 20.540810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262020, 38.220066, 20.857244>,  <36.751133, 38.512573, 20.389307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262020, 38.220066, 20.857244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603344, 38.023148, 20.925961>,  <36.808136, 37.904995, 20.967190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603344, 38.023148, 20.925961>,  <36.262020, 38.220066, 20.857244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603344, 38.023148, 20.925961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238993, -0.076455, 0.968007,
		-0.463411, -0.867064, -0.182895,
		0.853307, -0.492296, 0.171792,
		36.859337, 37.875458, 20.977499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041424, 37.562561, 21.050634>,  <36.262020, 38.220066, 20.857244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041424, 37.562561, 21.050634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418045, 37.600250, 21.180004>,  <36.644016, 37.622864, 21.257626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418045, 37.600250, 21.180004>,  <36.041424, 37.562561, 21.050634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418045, 37.600250, 21.180004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328277, 0.041143, 0.943685,
		0.075621, -0.994699, 0.069673,
		0.941550, 0.094235, 0.323426,
		36.700512, 37.628517, 21.277033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187157, 37.100620, 21.592066>,  <36.041424, 37.562561, 21.050634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187157, 37.100620, 21.592066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480583, 37.368237, 21.639843>,  <36.656639, 37.528809, 21.668509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480583, 37.368237, 21.639843>,  <36.187157, 37.100620, 21.592066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480583, 37.368237, 21.639843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193955, 0.037649, 0.980288,
		0.651359, -0.742268, 0.157383,
		0.733562, 0.669045, 0.119444,
		36.700653, 37.568951, 21.675676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548832, 36.872120, 22.101088>,  <36.187157, 37.100620, 21.592066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548832, 36.872120, 22.101088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619488, 37.265820, 22.098173>,  <36.661880, 37.502041, 22.096424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619488, 37.265820, 22.098173>,  <36.548832, 36.872120, 22.101088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619488, 37.265820, 22.098173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119231, 0.028746, 0.992450,
		0.977027, -0.174440, 0.122430,
		0.176642, 0.984248, -0.007287,
		36.672482, 37.561092, 22.095987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889973, 37.057449, 22.689157>,  <36.548832, 36.872120, 22.101088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889973, 37.057449, 22.689157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742729, 37.416740, 22.593092>,  <36.654385, 37.632317, 22.535452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742729, 37.416740, 22.593092>,  <36.889973, 37.057449, 22.689157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742729, 37.416740, 22.593092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268968, 0.144385, 0.952266,
		0.890029, 0.415135, 0.188445,
		-0.368110, 0.898229, -0.240165,
		36.632298, 37.686211, 22.521042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107903, 37.539444, 23.259308>,  <36.889973, 37.057449, 22.689157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107903, 37.539444, 23.259308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836090, 37.757229, 23.062618>,  <36.673000, 37.887901, 22.944605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836090, 37.757229, 23.062618>,  <37.107903, 37.539444, 23.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836090, 37.757229, 23.062618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293970, 0.412012, 0.862454,
		0.672173, 0.730618, -0.119919,
		-0.679533, 0.544465, -0.491724,
		36.632229, 37.920570, 22.915102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122734, 38.226509, 23.569086>,  <37.107903, 37.539444, 23.259308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122734, 38.226509, 23.569086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761902, 38.205212, 23.397778>,  <36.545403, 38.192432, 23.294992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761902, 38.205212, 23.397778>,  <37.122734, 38.226509, 23.569086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761902, 38.205212, 23.397778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414416, 0.383869, 0.825169,
		0.120467, 0.921851, -0.368345,
		-0.902079, -0.053243, -0.428273,
		36.491280, 38.189240, 23.269295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790630, 38.859852, 23.668409>,  <37.122734, 38.226509, 23.569086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790630, 38.859852, 23.668409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479103, 38.615166, 23.612921>,  <36.292187, 38.468353, 23.579628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479103, 38.615166, 23.612921>,  <36.790630, 38.859852, 23.668409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479103, 38.615166, 23.612921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403576, 0.319385, 0.857391,
		-0.480178, 0.723734, -0.495618,
		-0.778817, -0.611720, -0.138720,
		36.245457, 38.431648, 23.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199703, 39.224167, 23.976917>,  <36.790630, 38.859852, 23.668409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199703, 39.224167, 23.976917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077763, 38.846203, 23.929228>,  <36.004597, 38.619427, 23.900614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077763, 38.846203, 23.929228>,  <36.199703, 39.224167, 23.976917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077763, 38.846203, 23.929228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442234, 0.029572, 0.896412,
		-0.843500, 0.326002, -0.426885,
		-0.304856, -0.944907, -0.119226,
		35.986305, 38.562733, 23.893459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519840, 39.247177, 24.303858>,  <36.199703, 39.224167, 23.976917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519840, 39.247177, 24.303858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668320, 38.875885, 24.294018>,  <35.757408, 38.653111, 24.288115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668320, 38.875885, 24.294018>,  <35.519840, 39.247177, 24.303858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668320, 38.875885, 24.294018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273182, -0.134491, 0.952514,
		-0.887457, -0.346855, -0.303498,
		0.371202, -0.928226, -0.024601,
		35.779682, 38.597416, 24.286638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992104, 38.708561, 24.528215>,  <35.519840, 39.247177, 24.303858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992104, 38.708561, 24.528215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352177, 38.537838, 24.562859>,  <35.568222, 38.435406, 24.583645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352177, 38.537838, 24.562859>,  <34.992104, 38.708561, 24.528215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352177, 38.537838, 24.562859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159941, -0.139022, 0.977288,
		-0.405072, -0.893594, -0.193409,
		0.900186, -0.426806, 0.086608,
		35.622234, 38.409798, 24.588840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918110, 38.341724, 25.117788>,  <34.992104, 38.708561, 24.528215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918110, 38.341724, 25.117788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316525, 38.332184, 25.083534>,  <35.555573, 38.326458, 25.062981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316525, 38.332184, 25.083534>,  <34.918110, 38.341724, 25.117788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316525, 38.332184, 25.083534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081891, -0.128637, 0.988305,
		-0.034591, -0.991405, -0.126175,
		0.996041, -0.023854, -0.085637,
		35.615337, 38.325027, 25.057844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152031, 37.761242, 25.534897>,  <34.918110, 38.341724, 25.117788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152031, 37.761242, 25.534897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464844, 38.008785, 25.505409>,  <35.652531, 38.157310, 25.487717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464844, 38.008785, 25.505409>,  <35.152031, 37.761242, 25.534897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464844, 38.008785, 25.505409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096589, -0.003497, 0.995318,
		0.615702, -0.785496, -0.062509,
		0.782037, 0.618857, -0.073718,
		35.699455, 38.194443, 25.483294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674519, 37.499096, 26.034792>,  <35.152031, 37.761242, 25.534897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674519, 37.499096, 26.034792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798203, 37.872818, 25.963850>,  <35.872414, 38.097054, 25.921286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798203, 37.872818, 25.963850>,  <35.674519, 37.499096, 26.034792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798203, 37.872818, 25.963850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403075, 0.040156, 0.914286,
		0.861347, -0.354195, -0.364180,
		0.309212, 0.934309, -0.177355,
		35.890965, 38.153111, 25.910643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279976, 37.483826, 26.290291>,  <35.674519, 37.499096, 26.034792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279976, 37.483826, 26.290291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196594, 37.874577, 26.271311>,  <36.146564, 38.109028, 26.259922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196594, 37.874577, 26.271311>,  <36.279976, 37.483826, 26.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196594, 37.874577, 26.271311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325279, 0.115002, 0.938599,
		0.922356, 0.180219, -0.341731,
		-0.208453, 0.976881, -0.047452,
		36.134060, 38.167641, 26.257074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811905, 37.745361, 26.588793>,  <36.279976, 37.483826, 26.290291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811905, 37.745361, 26.588793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537777, 38.035538, 26.614336>,  <36.373299, 38.209644, 26.629662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537777, 38.035538, 26.614336>,  <36.811905, 37.745361, 26.588793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537777, 38.035538, 26.614336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254256, 0.156176, 0.954444,
		0.682416, 0.670336, -0.291477,
		-0.685319, 0.725437, 0.063860,
		36.332180, 38.253170, 26.633493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165195, 38.344448, 26.735281>,  <36.811905, 37.745361, 26.588793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165195, 38.344448, 26.735281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783878, 38.383865, 26.849493>,  <36.555088, 38.407516, 26.918020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783878, 38.383865, 26.849493>,  <37.165195, 38.344448, 26.735281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783878, 38.383865, 26.849493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296468, 0.124239, 0.946927,
		0.057842, 0.987347, -0.147652,
		-0.953290, 0.098546, 0.285530,
		36.497890, 38.413429, 26.935152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288578, 38.855446, 27.135141>,  <37.165195, 38.344448, 26.735281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288578, 38.855446, 27.135141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921028, 38.721138, 27.218014>,  <36.700497, 38.640553, 27.267736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921028, 38.721138, 27.218014>,  <37.288578, 38.855446, 27.135141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921028, 38.721138, 27.218014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162249, 0.157078, 0.974167,
		-0.359639, 0.928755, -0.089857,
		-0.918877, -0.335770, 0.207181,
		36.645367, 38.620407, 27.280169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978439, 39.373817, 27.611517>,  <37.288578, 38.855446, 27.135141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978439, 39.373817, 27.611517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796097, 39.022160, 27.667086>,  <36.686691, 38.811165, 27.700426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796097, 39.022160, 27.667086>,  <36.978439, 39.373817, 27.611517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796097, 39.022160, 27.667086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176663, 0.063604, 0.982214,
		-0.872346, 0.472287, 0.126319,
		-0.455853, -0.879147, 0.138920,
		36.659340, 38.758415, 27.708761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614922, 39.448727, 28.228096>,  <36.978439, 39.373817, 27.611517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614922, 39.448727, 28.228096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597923, 39.051468, 28.184534>,  <36.587727, 38.813114, 28.158396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597923, 39.051468, 28.184534>,  <36.614922, 39.448727, 28.228096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597923, 39.051468, 28.184534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075376, -0.111881, 0.990859,
		-0.996249, 0.033894, 0.079613,
		-0.042491, -0.993143, -0.108906,
		36.585175, 38.753525, 28.151863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031151, 39.133743, 28.577078>,  <36.614922, 39.448727, 28.228096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031151, 39.133743, 28.577078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298973, 38.837185, 28.559088>,  <36.459667, 38.659248, 28.548294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298973, 38.837185, 28.559088>,  <36.031151, 39.133743, 28.577078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298973, 38.837185, 28.559088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041599, -0.097889, 0.994328,
		-0.741595, -0.663888, -0.096383,
		0.669557, -0.741398, -0.044977,
		36.499840, 38.614765, 28.545595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715950, 38.510868, 28.808367>,  <36.031151, 39.133743, 28.577078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715950, 38.510868, 28.808367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112720, 38.488533, 28.853910>,  <36.350784, 38.475132, 28.881237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112720, 38.488533, 28.853910>,  <35.715950, 38.510868, 28.808367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112720, 38.488533, 28.853910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124158, -0.244761, 0.961601,
		-0.025826, -0.967974, -0.249718,
		0.991926, -0.055838, 0.113861,
		36.410297, 38.471783, 28.888069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900169, 37.877487, 29.222494>,  <35.715950, 38.510868, 28.808367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900169, 37.877487, 29.222494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176041, 38.163067, 29.270861>,  <36.341564, 38.334415, 29.299881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176041, 38.163067, 29.270861>,  <35.900169, 37.877487, 29.222494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176041, 38.163067, 29.270861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018233, -0.149810, 0.988547,
		0.723883, -0.683987, -0.090304,
		0.689681, 0.713946, 0.120916,
		36.382946, 38.377251, 29.307135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335739, 37.546207, 29.700743>,  <35.900169, 37.877487, 29.222494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335739, 37.546207, 29.700743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329807, 37.946121, 29.694843>,  <36.326248, 38.186069, 29.691303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329807, 37.946121, 29.694843>,  <36.335739, 37.546207, 29.700743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329807, 37.946121, 29.694843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173688, 0.011950, 0.984728,
		0.984689, 0.017167, 0.173473,
		-0.014832, 0.999781, -0.014748,
		36.325359, 38.246056, 29.690418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795731, 37.794621, 30.186808>,  <36.335739, 37.546207, 29.700743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795731, 37.794621, 30.186808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490486, 38.039444, 30.103813>,  <36.307339, 38.186337, 30.054016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490486, 38.039444, 30.103813>,  <36.795731, 37.794621, 30.186808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490486, 38.039444, 30.103813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231523, 0.040837, 0.971972,
		0.603373, 0.789761, 0.110542,
		-0.763111, 0.612055, -0.207488,
		36.261555, 38.223061, 30.041567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789612, 38.527916, 30.359474>,  <36.795731, 37.794621, 30.186808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789612, 38.527916, 30.359474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412766, 38.395115, 30.378235>,  <36.186657, 38.315434, 30.389492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412766, 38.395115, 30.378235>,  <36.789612, 38.527916, 30.359474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412766, 38.395115, 30.378235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077636, 0.352078, 0.932745,
		-0.326188, 0.875108, -0.357473,
		-0.942111, -0.332003, 0.046903,
		36.130131, 38.295513, 30.392305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770576, 38.113136, 31.031296>,  <36.789612, 38.527916, 30.359474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770576, 38.113136, 31.031296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142715, 38.241863, 31.101597>,  <37.365997, 38.319099, 31.143778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142715, 38.241863, 31.101597>,  <36.770576, 38.113136, 31.031296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142715, 38.241863, 31.101597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232384, 0.888227, -0.396297,
		-0.283644, 0.327851, 0.901144,
		0.930346, 0.321819, 0.175752,
		37.421818, 38.338409, 31.154322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803848, 38.691376, 31.348879>,  <36.770576, 38.113136, 31.031296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803848, 38.691376, 31.348879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162445, 38.716011, 31.173378>,  <37.377605, 38.730793, 31.068077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162445, 38.716011, 31.173378>,  <36.803848, 38.691376, 31.348879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162445, 38.716011, 31.173378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252322, 0.884975, -0.391347,
		0.364184, 0.461548, 0.808915,
		0.896495, 0.061584, -0.438752,
		37.431393, 38.734486, 31.041752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192192, 39.360428, 31.539042>,  <36.803848, 38.691376, 31.348879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192192, 39.360428, 31.539042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301926, 39.226421, 31.178486>,  <37.367767, 39.146019, 30.962152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301926, 39.226421, 31.178486>,  <37.192192, 39.360428, 31.539042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301926, 39.226421, 31.178486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135608, 0.914508, -0.381164,
		0.952024, 0.226804, 0.205454,
		0.274338, -0.335016, -0.901389,
		37.384228, 39.125916, 30.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720127, 39.881203, 31.146719>,  <37.192192, 39.360428, 31.539042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720127, 39.881203, 31.146719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608242, 39.669895, 30.826046>,  <37.541111, 39.543110, 30.633642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608242, 39.669895, 30.826046>,  <37.720127, 39.881203, 31.146719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608242, 39.669895, 30.826046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206376, 0.848577, -0.487161,
		0.937639, 0.029181, -0.346383,
		-0.279716, -0.528267, -0.801681,
		37.524326, 39.511414, 30.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131645, 40.124981, 30.471786>,  <37.720127, 39.881203, 31.146719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131645, 40.124981, 30.471786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778614, 39.951317, 30.399612>,  <37.566795, 39.847118, 30.356308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778614, 39.951317, 30.399612>,  <38.131645, 40.124981, 30.471786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778614, 39.951317, 30.399612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347658, 0.861010, -0.371208,
		0.316519, -0.264891, -0.910850,
		-0.882581, -0.434159, -0.180435,
		37.513840, 39.821068, 30.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752995, 40.294865, 29.676497>,  <38.131645, 40.124981, 30.471786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752995, 40.294865, 29.676497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506161, 40.228027, 29.984077>,  <37.358063, 40.187923, 30.168627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506161, 40.228027, 29.984077>,  <37.752995, 40.294865, 29.676497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506161, 40.228027, 29.984077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470454, 0.861661, -0.190297,
		-0.630781, -0.479187, -0.610324,
		-0.617081, -0.167093, 0.768955,
		37.321037, 40.177898, 30.214764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821728, 41.052708, 29.638906>,  <37.752995, 40.294865, 29.676497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821728, 41.052708, 29.638906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531509, 40.778507, 29.614641>,  <37.357380, 40.613987, 29.600082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531509, 40.778507, 29.614641>,  <37.821728, 41.052708, 29.638906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531509, 40.778507, 29.614641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602542, 0.675369, -0.425228,
		0.332462, -0.271971, -0.903051,
		-0.725543, -0.685499, -0.060661,
		37.313847, 40.572857, 29.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591854, 40.882984, 28.889627>,  <37.821728, 41.052708, 29.638906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591854, 40.882984, 28.889627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301624, 40.827869, 29.159311>,  <37.127487, 40.794800, 29.321121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301624, 40.827869, 29.159311>,  <37.591854, 40.882984, 28.889627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301624, 40.827869, 29.159311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593755, 0.620604, -0.512157,
		-0.347851, -0.771923, -0.532103,
		-0.725572, -0.137784, 0.674212,
		37.083954, 40.786533, 29.361574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046337, 40.765842, 28.491957>,  <37.591854, 40.882984, 28.889627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046337, 40.765842, 28.491957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927376, 40.897644, 28.850393>,  <36.855999, 40.976727, 29.065454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927376, 40.897644, 28.850393>,  <37.046337, 40.765842, 28.491957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927376, 40.897644, 28.850393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554738, 0.704241, -0.443069,
		-0.777057, -0.628866, -0.026655,
		-0.297403, 0.329504, 0.896091,
		36.838154, 40.996494, 29.119221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242794, 40.871162, 28.462164>,  <37.046337, 40.765842, 28.491957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242794, 40.871162, 28.462164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342369, 41.098259, 28.776030>,  <36.402115, 41.234516, 28.964350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342369, 41.098259, 28.776030>,  <36.242794, 40.871162, 28.462164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342369, 41.098259, 28.776030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657335, 0.694039, -0.293632,
		-0.711296, -0.442694, 0.545967,
		0.248933, 0.567743, 0.784666,
		36.417049, 41.268581, 29.011429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667652, 41.434944, 28.480511>,  <36.242794, 40.871162, 28.462164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667652, 41.434944, 28.480511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897026, 41.564655, 28.781448>,  <36.034649, 41.642483, 28.962011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897026, 41.564655, 28.781448>,  <35.667652, 41.434944, 28.480511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897026, 41.564655, 28.781448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305606, 0.936711, -0.170815,
		-0.760119, -0.131970, 0.636241,
		0.573432, 0.324279, 0.752342,
		36.069057, 41.661938, 29.007151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233475, 41.915085, 28.937401>,  <35.667652, 41.434944, 28.480511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233475, 41.915085, 28.937401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621433, 42.012344, 28.942787>,  <35.854210, 42.070698, 28.946018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621433, 42.012344, 28.942787>,  <35.233475, 41.915085, 28.937401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621433, 42.012344, 28.942787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222918, 0.908752, -0.352814,
		-0.098022, 0.339191, 0.935597,
		0.969897, 0.243145, 0.013466,
		35.912403, 42.085289, 28.946827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289165, 42.558140, 29.400085>,  <35.233475, 41.915085, 28.937401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289165, 42.558140, 29.400085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600132, 42.550865, 29.148598>,  <35.786713, 42.546501, 28.997705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600132, 42.550865, 29.148598>,  <35.289165, 42.558140, 29.400085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600132, 42.550865, 29.148598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124940, 0.975199, -0.182695,
		0.616451, 0.220583, 0.755865,
		0.777418, -0.018184, -0.628721,
		35.833359, 42.545410, 28.959982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741726, 43.108257, 29.608950>,  <35.289165, 42.558140, 29.400085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741726, 43.108257, 29.608950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805149, 43.021488, 29.223660>,  <35.843204, 42.969429, 28.992485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805149, 43.021488, 29.223660>,  <35.741726, 43.108257, 29.608950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805149, 43.021488, 29.223660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024461, 0.974406, -0.223462,
		0.987047, 0.058994, 0.149193,
		0.158557, -0.216918, -0.963227,
		35.852715, 42.956413, 28.934692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460758, 43.172867, 29.410295>,  <35.741726, 43.108257, 29.608950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460758, 43.172867, 29.410295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200390, 43.243057, 29.114861>,  <36.044170, 43.285172, 28.937599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200390, 43.243057, 29.114861>,  <36.460758, 43.172867, 29.410295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200390, 43.243057, 29.114861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150826, 0.983416, 0.100718,
		0.744011, -0.045838, -0.666593,
		-0.650922, 0.175474, -0.738586,
		36.005112, 43.295700, 28.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865963, 43.705906, 28.884193>,  <36.460758, 43.172867, 29.410295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865963, 43.705906, 28.884193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470852, 43.687023, 28.943611>,  <36.233784, 43.675694, 28.979261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470852, 43.687023, 28.943611>,  <36.865963, 43.705906, 28.884193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470852, 43.687023, 28.943611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009308, 0.933476, 0.358519,
		-0.155587, 0.355520, -0.921628,
		-0.987778, -0.047203, 0.148546,
		36.174519, 43.672863, 28.988174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372372, 44.190590, 29.201086>,  <36.865963, 43.705906, 28.884193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372372, 44.190590, 29.201086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131107, 43.923672, 29.375860>,  <35.986347, 43.763523, 29.480724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131107, 43.923672, 29.375860>,  <36.372372, 44.190590, 29.201086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131107, 43.923672, 29.375860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612071, -0.738476, -0.282882,
		0.511433, 0.096812, 0.853852,
		-0.603163, -0.667293, 0.436937,
		35.950157, 43.723484, 29.506941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062458, 44.505215, 28.468193>,  <36.372372, 44.190590, 29.201086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062458, 44.505215, 28.468193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840591, 44.400017, 28.152426>,  <35.707474, 44.336899, 27.962965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840591, 44.400017, 28.152426>,  <36.062458, 44.505215, 28.468193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840591, 44.400017, 28.152426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163314, -0.964692, 0.206637,
		-0.815891, -0.014309, 0.578029,
		-0.554663, -0.262993, -0.789420,
		35.674194, 44.321117, 27.915600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393639, 44.041283, 28.579853>,  <36.062458, 44.505215, 28.468193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393639, 44.041283, 28.579853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594551, 43.981026, 28.239262>,  <35.715099, 43.944870, 28.034906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594551, 43.981026, 28.239262>,  <35.393639, 44.041283, 28.579853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594551, 43.981026, 28.239262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227720, -0.926903, 0.298319,
		-0.834180, -0.343740, -0.431262,
		0.502282, -0.150645, -0.851481,
		35.745235, 43.935833, 27.983818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147560, 43.555859, 28.199158>,  <35.393639, 44.041283, 28.579853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147560, 43.555859, 28.199158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538601, 43.567516, 28.115788>,  <35.773228, 43.574512, 28.065765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538601, 43.567516, 28.115788>,  <35.147560, 43.555859, 28.199158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538601, 43.567516, 28.115788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104577, -0.926708, 0.360938,
		-0.182629, -0.374651, -0.909001,
		0.977604, 0.029143, -0.208424,
		35.831882, 43.576260, 28.053261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468315, 42.997211, 27.742521>,  <35.147560, 43.555859, 28.199158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468315, 42.997211, 27.742521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728561, 43.130131, 28.015659>,  <35.884708, 43.209881, 28.179543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728561, 43.130131, 28.015659>,  <35.468315, 42.997211, 27.742521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728561, 43.130131, 28.015659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184423, -0.941402, 0.282401,
		0.736673, -0.057802, -0.673775,
		0.650616, 0.332297, 0.682845,
		35.923748, 43.229820, 28.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086704, 42.599583, 27.735567>,  <35.468315, 42.997211, 27.742521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086704, 42.599583, 27.735567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060932, 42.752563, 28.104258>,  <36.045467, 42.844353, 28.325472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060932, 42.752563, 28.104258>,  <36.086704, 42.599583, 27.735567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060932, 42.752563, 28.104258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211767, -0.897370, 0.387146,
		0.975194, 0.220137, -0.023170,
		-0.064433, 0.382449, 0.921727,
		36.041603, 42.867298, 28.380775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770756, 42.458004, 28.119881>,  <36.086704, 42.599583, 27.735567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770756, 42.458004, 28.119881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485172, 42.496502, 28.397297>,  <36.313820, 42.519600, 28.563745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485172, 42.496502, 28.397297>,  <36.770756, 42.458004, 28.119881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485172, 42.496502, 28.397297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319150, -0.836898, 0.444685,
		0.623219, 0.538831, 0.566797,
		-0.713962, 0.096243, 0.693539,
		36.270985, 42.525375, 28.605358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173676, 42.357590, 28.816240>,  <36.770756, 42.458004, 28.119881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173676, 42.357590, 28.816240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783821, 42.276085, 28.853270>,  <36.549908, 42.227180, 28.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783821, 42.276085, 28.853270>,  <37.173676, 42.357590, 28.816240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783821, 42.276085, 28.853270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223019, -0.849485, 0.478161,
		-0.018791, 0.486677, 0.873380,
		-0.974633, -0.203765, 0.092575,
		36.491432, 42.214954, 28.881042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974285, 42.443409, 29.467232>,  <37.173676, 42.357590, 28.816240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974285, 42.443409, 29.467232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758263, 42.170635, 29.269930>,  <36.628651, 42.006969, 29.151548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758263, 42.170635, 29.269930>,  <36.974285, 42.443409, 29.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758263, 42.170635, 29.269930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329261, -0.710551, 0.621855,
		-0.774549, 0.173428, 0.608274,
		-0.540057, -0.681938, -0.493253,
		36.596245, 41.966053, 29.121954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871017, 41.967907, 29.954309>,  <36.974285, 42.443409, 29.467232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871017, 41.967907, 29.954309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758080, 41.747295, 29.640343>,  <36.690315, 41.614929, 29.451963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758080, 41.747295, 29.640343>,  <36.871017, 41.967907, 29.954309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758080, 41.747295, 29.640343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446896, -0.799622, 0.401109,
		-0.848861, -0.237524, 0.472247,
		-0.282346, -0.551531, -0.784917,
		36.673374, 41.581837, 29.404867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555641, 41.460976, 30.306406>,  <36.871017, 41.967907, 29.954309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555641, 41.460976, 30.306406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670856, 41.331089, 29.946053>,  <36.739986, 41.253159, 29.729839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670856, 41.331089, 29.946053>,  <36.555641, 41.460976, 30.306406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670856, 41.331089, 29.946053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488634, -0.759232, 0.429888,
		-0.823571, -0.564028, -0.060022,
		0.288040, -0.324715, -0.900885,
		36.757267, 41.233673, 29.675787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019108, 40.887444, 30.408449>,  <36.555641, 41.460976, 30.306406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019108, 40.887444, 30.408449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890759, 40.730747, 30.063524>,  <36.813747, 40.636730, 29.856569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890759, 40.730747, 30.063524>,  <37.019108, 40.887444, 30.408449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890759, 40.730747, 30.063524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527867, -0.829906, 0.180591,
		-0.786382, -0.397239, 0.473080,
		-0.320874, -0.391737, -0.862312,
		36.794495, 40.613228, 29.804831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597187, 40.318493, 30.594252>,  <37.019108, 40.887444, 30.408449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597187, 40.318493, 30.594252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709171, 40.259918, 30.214741>,  <36.776360, 40.224773, 29.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709171, 40.259918, 30.214741>,  <36.597187, 40.318493, 30.594252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709171, 40.259918, 30.214741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271935, -0.935724, 0.224660,
		-0.920693, -0.320901, -0.222143,
		0.279958, -0.146435, -0.948778,
		36.793159, 40.215988, 29.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209297, 39.752949, 30.197777>,  <36.597187, 40.318493, 30.594252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209297, 39.752949, 30.197777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593998, 39.812866, 30.106047>,  <36.824818, 39.848816, 30.051008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593998, 39.812866, 30.106047>,  <36.209297, 39.752949, 30.197777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593998, 39.812866, 30.106047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252898, -0.807202, 0.533355,
		-0.105220, -0.570953, -0.814212,
		0.961754, 0.149793, -0.229327,
		36.882523, 39.857803, 30.037249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474434, 39.146778, 29.878614>,  <36.209297, 39.752949, 30.197777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474434, 39.146778, 29.878614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781433, 39.352451, 30.031752>,  <36.965633, 39.475853, 30.123634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781433, 39.352451, 30.031752>,  <36.474434, 39.146778, 29.878614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781433, 39.352451, 30.031752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359289, -0.839617, 0.407376,
		0.530905, -0.175109, -0.829142,
		0.767497, 0.514179, 0.382842,
		37.011681, 39.506706, 30.146605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075928, 38.863094, 29.579380>,  <36.474434, 39.146778, 29.878614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075928, 38.863094, 29.579380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186699, 39.055046, 29.912373>,  <37.253162, 39.170216, 30.112169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186699, 39.055046, 29.912373>,  <37.075928, 38.863094, 29.579380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186699, 39.055046, 29.912373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361166, -0.854820, 0.372615,
		0.890434, 0.197479, -0.410037,
		0.276924, 0.479881, 0.832483,
		37.269775, 39.199009, 30.162117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365925, 38.204895, 29.459835>,  <37.075928, 38.863094, 29.579380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365925, 38.204895, 29.459835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346886, 38.033535, 29.098900>,  <37.335461, 37.930721, 28.882339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346886, 38.033535, 29.098900>,  <37.365925, 38.204895, 29.459835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346886, 38.033535, 29.098900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978127, 0.203120, -0.044836,
		0.202490, 0.880467, -0.428691,
		-0.047599, -0.428393, -0.902338,
		37.332607, 37.905014, 28.828199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810032, 38.690586, 29.747381>,  <37.365925, 38.204895, 29.459835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810032, 38.690586, 29.747381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646626, 38.807808, 30.093151>,  <37.548580, 38.878139, 30.300613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646626, 38.807808, 30.093151>,  <37.810032, 38.690586, 29.747381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646626, 38.807808, 30.093151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363068, -0.816736, 0.448469,
		0.837435, 0.497052, 0.227250,
		-0.408516, 0.293056, 0.864426,
		37.524071, 38.895725, 30.352480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330372, 38.714516, 30.210762>,  <37.810032, 38.690586, 29.747381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330372, 38.714516, 30.210762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974300, 38.632259, 30.373386>,  <37.760658, 38.582905, 30.470961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974300, 38.632259, 30.373386>,  <38.330372, 38.714516, 30.210762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974300, 38.632259, 30.373386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364301, -0.857154, 0.364103,
		0.273612, 0.472228, 0.837937,
		-0.890180, -0.205639, 0.406561,
		37.707245, 38.570568, 30.495354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480080, 38.647621, 30.943039>,  <38.330372, 38.714516, 30.210762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480080, 38.647621, 30.943039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172009, 38.443935, 30.789402>,  <37.987167, 38.321724, 30.697220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172009, 38.443935, 30.789402>,  <38.480080, 38.647621, 30.943039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172009, 38.443935, 30.789402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368893, -0.846869, 0.383054,
		-0.520333, 0.153331, 0.840085,
		-0.770176, -0.509218, -0.384091,
		37.940956, 38.291168, 30.674175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096592, 38.193211, 31.532169>,  <38.480080, 38.647621, 30.943039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096592, 38.193211, 31.532169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063980, 38.053047, 31.158953>,  <38.044411, 37.968948, 30.935022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063980, 38.053047, 31.158953>,  <38.096592, 38.193211, 31.532169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063980, 38.053047, 31.158953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470367, -0.838875, 0.273941,
		-0.878696, -0.416537, 0.233216,
		-0.081532, -0.350409, -0.933041,
		38.039520, 37.947926, 30.879040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756947, 37.560966, 31.482944>,  <38.096592, 38.193211, 31.532169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756947, 37.560966, 31.482944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973328, 37.554157, 31.146593>,  <38.103157, 37.550072, 30.944782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973328, 37.554157, 31.146593>,  <37.756947, 37.560966, 31.482944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973328, 37.554157, 31.146593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281953, -0.938270, 0.200382,
		-0.792384, -0.345486, -0.502760,
		0.540953, -0.017025, -0.840881,
		38.135612, 37.549049, 30.894329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585423, 37.315170, 32.227921>,  <37.756947, 37.560966, 31.482944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585423, 37.315170, 32.227921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744606, 37.181938, 32.569843>,  <37.840115, 37.102001, 32.774998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744606, 37.181938, 32.569843>,  <37.585423, 37.315170, 32.227921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744606, 37.181938, 32.569843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830194, -0.265757, -0.490052,
		0.390395, 0.904673, 0.170757,
		0.397957, -0.333076, 0.854805,
		37.863995, 37.082016, 32.826286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277351, 37.651363, 32.299431>,  <37.585423, 37.315170, 32.227921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277351, 37.651363, 32.299431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260696, 37.280304, 32.447880>,  <38.250702, 37.057667, 32.536949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260696, 37.280304, 32.447880>,  <38.277351, 37.651363, 32.299431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260696, 37.280304, 32.447880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726467, -0.283121, -0.626169,
		0.685938, 0.243533, 0.685697,
		-0.041642, -0.927650, 0.371122,
		38.248203, 37.002010, 32.559216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951569, 37.273106, 32.304119>,  <38.277351, 37.651363, 32.299431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951569, 37.273106, 32.304119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684620, 36.975811, 32.322914>,  <38.524452, 36.797432, 32.334190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684620, 36.975811, 32.322914>,  <38.951569, 37.273106, 32.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684620, 36.975811, 32.322914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638746, -0.603705, -0.477016,
		0.382907, -0.288332, 0.877637,
		-0.667373, -0.743240, 0.046992,
		38.484409, 36.752838, 32.337013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259644, 36.686169, 32.639378>,  <38.951569, 37.273106, 32.304119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259644, 36.686169, 32.639378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978653, 36.595390, 32.369556>,  <38.810059, 36.540924, 32.207664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978653, 36.595390, 32.369556>,  <39.259644, 36.686169, 32.639378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978653, 36.595390, 32.369556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687926, -0.459480, -0.561814,
		-0.182441, -0.858704, 0.478897,
		-0.702476, -0.226948, -0.674553,
		38.767910, 36.527306, 32.167191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564335, 36.410667, 33.192497>,  <39.259644, 36.686169, 32.639378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564335, 36.410667, 33.192497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485687, 36.045139, 33.334644>,  <39.438499, 35.825825, 33.419933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485687, 36.045139, 33.334644>,  <39.564335, 36.410667, 33.192497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485687, 36.045139, 33.334644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915316, -0.041144, 0.400629,
		-0.351480, 0.404040, 0.844520,
		-0.196617, -0.913815, 0.355363,
		39.426701, 35.770996, 33.441254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219746, 36.645298, 32.944832>,  <39.564335, 36.410667, 33.192497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219746, 36.645298, 32.944832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196655, 36.867207, 32.612831>,  <40.182800, 37.000351, 32.413631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196655, 36.867207, 32.612831>,  <40.219746, 36.645298, 32.944832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196655, 36.867207, 32.612831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248673, 0.813170, 0.526228,
		0.966866, -0.176023, -0.184894,
		-0.057722, 0.554770, -0.829999,
		40.179340, 37.033638, 32.363831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884827, 36.981098, 32.866692>,  <40.219746, 36.645298, 32.944832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884827, 36.981098, 32.866692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613396, 37.216553, 32.690948>,  <40.450539, 37.357826, 32.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613396, 37.216553, 32.690948>,  <40.884827, 36.981098, 32.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613396, 37.216553, 32.690948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349974, 0.784992, 0.511180,
		0.645794, 0.193111, -0.738687,
		-0.678578, 0.588638, -0.439359,
		40.409821, 37.393143, 32.559139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166107, 37.636227, 32.968800>,  <40.884827, 36.981098, 32.866692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166107, 37.636227, 32.968800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815868, 37.776894, 32.836338>,  <40.605724, 37.861294, 32.756863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815868, 37.776894, 32.836338>,  <41.166107, 37.636227, 32.968800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815868, 37.776894, 32.836338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148531, 0.848345, 0.508183,
		0.459642, 0.395777, -0.795041,
		-0.875596, 0.351670, -0.331149,
		40.553188, 37.882393, 32.736992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831131, 37.452194, 33.393784>,  <41.166107, 37.636227, 32.968800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831131, 37.452194, 33.393784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882313, 37.312859, 33.765221>,  <41.913021, 37.229259, 33.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882313, 37.312859, 33.765221>,  <41.831131, 37.452194, 33.393784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882313, 37.312859, 33.765221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607189, -0.767827, -0.204360,
		0.784186, -0.537683, -0.309757,
		0.127959, -0.348337, 0.928594,
		41.920700, 37.208359, 34.043800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093182, 36.832626, 33.395439>,  <41.831131, 37.452194, 33.393784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093182, 36.832626, 33.395439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889938, 36.831600, 33.739956>,  <41.767990, 36.830986, 33.946667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889938, 36.831600, 33.739956>,  <42.093182, 36.832626, 33.395439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889938, 36.831600, 33.739956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433334, -0.863452, -0.258209,
		0.744343, -0.504424, 0.437619,
		-0.508110, -0.002562, 0.861288,
		41.737507, 36.830833, 33.998341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365894, 37.426777, 32.867191>,  <42.093182, 36.832626, 33.395439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365894, 37.426777, 32.867191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533554, 37.456711, 32.505260>,  <42.634148, 37.474670, 32.288101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533554, 37.456711, 32.505260>,  <42.365894, 37.426777, 32.867191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533554, 37.456711, 32.505260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906884, 0.082093, -0.413307,
		0.043351, 0.993811, 0.102273,
		0.419145, 0.074832, -0.904830,
		42.659298, 37.479160, 32.233810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016254, 37.541092, 33.428978>,  <42.365894, 37.426777, 32.867191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016254, 37.541092, 33.428978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207924, 37.559532, 33.779583>,  <43.322926, 37.570599, 33.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207924, 37.559532, 33.779583>,  <43.016254, 37.541092, 33.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207924, 37.559532, 33.779583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189519, -0.980497, -0.052034,
		0.857015, 0.191048, -0.478566,
		0.479173, 0.046103, 0.876508,
		43.351677, 37.573364, 34.042534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687691, 37.508389, 33.306206>,  <43.016254, 37.541092, 33.428978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687691, 37.508389, 33.306206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839405, 37.160572, 33.179691>,  <43.930435, 36.951881, 33.103783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839405, 37.160572, 33.179691>,  <43.687691, 37.508389, 33.306206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839405, 37.160572, 33.179691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841601, -0.466257, 0.272603,
		-0.384512, 0.162795, -0.908652,
		0.379287, -0.869541, -0.316289,
		43.953190, 36.899708, 33.084805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252079, 37.777481, 33.620132>,  <43.687691, 37.508389, 33.306206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252079, 37.777481, 33.620132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198147, 37.480316, 33.882401>,  <44.165787, 37.302017, 34.039761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198147, 37.480316, 33.882401>,  <44.252079, 37.777481, 33.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198147, 37.480316, 33.882401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893147, -0.377662, -0.244253,
		0.429080, 0.552675, 0.714451,
		-0.134828, -0.742914, 0.655667,
		44.157700, 37.257442, 34.079102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916016, 37.518791, 34.061718>,  <44.252079, 37.777481, 33.620132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916016, 37.518791, 34.061718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680237, 37.196457, 34.039139>,  <44.538769, 37.003056, 34.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680237, 37.196457, 34.039139>,  <44.916016, 37.518791, 34.061718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680237, 37.196457, 34.039139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805884, -0.581784, -0.109902,
		0.055721, -0.110274, 0.992338,
		-0.589446, -0.805833, -0.056451,
		44.503403, 36.954708, 34.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168388, 36.923637, 34.482189>,  <44.916016, 37.518791, 34.061718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168388, 36.923637, 34.482189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967316, 36.781570, 34.166935>,  <44.846672, 36.696331, 33.977783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967316, 36.781570, 34.166935>,  <45.168388, 36.923637, 34.482189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967316, 36.781570, 34.166935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712770, -0.686161, -0.145404,
		-0.489149, -0.634855, 0.598075,
		-0.502686, -0.355165, -0.788140,
		44.816509, 36.675022, 33.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089962, 36.164139, 34.425114>,  <45.168388, 36.923637, 34.482189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089962, 36.164139, 34.425114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142681, 36.330524, 34.065201>,  <45.174313, 36.430355, 33.849255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142681, 36.330524, 34.065201>,  <45.089962, 36.164139, 34.425114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142681, 36.330524, 34.065201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790334, -0.591977, -0.157908,
		-0.598332, -0.690315, -0.406773,
		0.131794, 0.415968, -0.899778,
		45.182220, 36.455315, 33.795269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033016, 35.642326, 33.865032>,  <45.089962, 36.164139, 34.425114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033016, 35.642326, 33.865032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292171, 35.938263, 33.792511>,  <45.447666, 36.115826, 33.748997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292171, 35.938263, 33.792511>,  <45.033016, 35.642326, 33.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292171, 35.938263, 33.792511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652652, -0.661888, -0.368713,
		-0.392794, 0.120555, -0.911690,
		0.647887, 0.739845, -0.181305,
		45.486538, 36.160217, 33.738121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380726, 35.459408, 33.285839>,  <45.033016, 35.642326, 33.865032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380726, 35.459408, 33.285839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593571, 35.665562, 33.554535>,  <45.721275, 35.789253, 33.715752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593571, 35.665562, 33.554535>,  <45.380726, 35.459408, 33.285839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593571, 35.665562, 33.554535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728256, -0.683281, -0.052638,
		0.431861, 0.517211, -0.738911,
		0.532109, 0.515384, 0.671744,
		45.753204, 35.820175, 33.756058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150154, 35.528610, 33.062531>,  <45.380726, 35.459408, 33.285839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150154, 35.528610, 33.062531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038948, 35.528175, 33.446762>,  <45.972225, 35.527912, 33.677299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038948, 35.528175, 33.446762>,  <46.150154, 35.528610, 33.062531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038948, 35.528175, 33.446762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512900, -0.845684, 0.147487,
		0.812183, 0.533683, 0.235673,
		-0.278016, -0.001091, 0.960576,
		45.955544, 35.527847, 33.734936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765713, 35.248245, 33.163467>,  <46.150154, 35.528610, 33.062531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765713, 35.248245, 33.163467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999485, 35.570126, 33.205219>,  <47.139748, 35.763252, 33.230270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999485, 35.570126, 33.205219>,  <46.765713, 35.248245, 33.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.999485, 35.570126, 33.205219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599161, 0.341205, 0.724283,
		0.547217, -0.485834, 0.681557,
		0.584431, 0.804702, 0.104380,
		47.174816, 35.811535, 33.236534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012505, 35.219688, 33.819912>,  <46.765713, 35.248245, 33.163467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012505, 35.219688, 33.819912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964031, 35.576759, 33.646271>,  <46.934948, 35.791000, 33.542084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964031, 35.576759, 33.646271>,  <47.012505, 35.219688, 33.819912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964031, 35.576759, 33.646271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691229, 0.237977, 0.682327,
		0.712403, 0.382753, 0.588203,
		-0.121184, 0.892674, -0.434105,
		46.927677, 35.844563, 33.516041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.009041, 35.709019, 34.346622>,  <47.012505, 35.219688, 33.819912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.009041, 35.709019, 34.346622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823002, 35.847298, 34.020634>,  <46.711376, 35.930264, 33.825043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823002, 35.847298, 34.020634>,  <47.009041, 35.709019, 34.346622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823002, 35.847298, 34.020634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746455, 0.341760, 0.570969,
		0.475905, 0.873897, 0.099093,
		-0.465102, 0.345695, -0.814970,
		46.683472, 35.951008, 33.776142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.526951, 35.360771, 34.858730>,  <47.009041, 35.709019, 34.346622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.526951, 35.360771, 34.858730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493980, 35.032528, 35.084938>,  <47.474197, 34.835583, 35.220661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493980, 35.032528, 35.084938>,  <47.526951, 35.360771, 34.858730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493980, 35.032528, 35.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246464, 0.533039, 0.809398,
		-0.965640, 0.206096, 0.158313,
		-0.082427, -0.820606, 0.565519,
		47.469254, 34.786346, 35.254593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.828060, 34.761044, 19.736414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646736, 34.413219, 19.814768>,  <37.537941, 34.204525, 19.861780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646736, 34.413219, 19.814768>,  <37.828060, 34.761044, 19.736414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646736, 34.413219, 19.814768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368416, 0.382892, 0.847150,
		-0.811652, 0.311855, -0.493930,
		-0.453310, -0.869563, 0.195883,
		37.510742, 34.152351, 19.873533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211319, 34.977699, 20.159441>,  <37.828060, 34.761044, 19.736414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211319, 34.977699, 20.159441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195316, 34.580349, 20.202517>,  <37.185715, 34.341938, 20.228363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195316, 34.580349, 20.202517>,  <37.211319, 34.977699, 20.159441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195316, 34.580349, 20.202517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483936, 0.113557, 0.867704,
		-0.874188, -0.017398, -0.485275,
		-0.040011, -0.993379, 0.107690,
		37.183311, 34.282333, 20.234823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574993, 34.849220, 20.433731>,  <37.211319, 34.977699, 20.159441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574993, 34.849220, 20.433731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786137, 34.524776, 20.534504>,  <36.912823, 34.330112, 20.594967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786137, 34.524776, 20.534504>,  <36.574993, 34.849220, 20.433731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786137, 34.524776, 20.534504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325711, 0.080624, 0.942025,
		-0.784394, -0.579316, -0.221628,
		0.527862, -0.811105, 0.251931,
		36.944496, 34.281445, 20.610083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140831, 34.666595, 20.931761>,  <36.574993, 34.849220, 20.433731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140831, 34.666595, 20.931761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474251, 34.449165, 20.971210>,  <36.674301, 34.318707, 20.994881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474251, 34.449165, 20.971210>,  <36.140831, 34.666595, 20.931761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474251, 34.449165, 20.971210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169491, -0.081715, 0.982138,
		-0.525809, -0.835372, -0.160244,
		0.833545, -0.543577, 0.098622,
		36.724316, 34.286091, 21.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926682, 34.038696, 21.266674>,  <36.140831, 34.666595, 20.931761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926682, 34.038696, 21.266674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311665, 34.096390, 21.358650>,  <36.542656, 34.131008, 21.413836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311665, 34.096390, 21.358650>,  <35.926682, 34.038696, 21.266674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311665, 34.096390, 21.358650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205107, -0.168413, 0.964141,
		0.177790, -0.975106, -0.132506,
		0.962456, 0.144237, 0.229943,
		36.600403, 34.139660, 21.427633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034992, 33.563499, 21.734785>,  <35.926682, 34.038696, 21.266674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034992, 33.563499, 21.734785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347923, 33.809559, 21.773874>,  <36.535683, 33.957195, 21.797327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347923, 33.809559, 21.773874>,  <36.034992, 33.563499, 21.734785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347923, 33.809559, 21.773874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180171, 0.073311, 0.980899,
		0.596239, -0.784992, 0.168187,
		0.782328, 0.615153, 0.097722,
		36.582623, 33.994106, 21.803190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268085, 33.379200, 22.378283>,  <36.034992, 33.563499, 21.734785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268085, 33.379200, 22.378283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410057, 33.748158, 22.317335>,  <36.495239, 33.969532, 22.280767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410057, 33.748158, 22.317335>,  <36.268085, 33.379200, 22.378283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410057, 33.748158, 22.317335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018006, 0.156205, 0.987560,
		0.934721, -0.353255, 0.038833,
		0.354926, 0.922394, -0.152369,
		36.516537, 34.024876, 22.271624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879879, 33.488297, 22.867809>,  <36.268085, 33.379200, 22.378283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879879, 33.488297, 22.867809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734177, 33.848045, 22.771103>,  <36.646755, 34.063896, 22.713079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734177, 33.848045, 22.771103>,  <36.879879, 33.488297, 22.867809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734177, 33.848045, 22.771103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056528, 0.237771, 0.969675,
		0.929583, 0.366874, -0.035769,
		-0.364253, 0.899371, -0.241767,
		36.624901, 34.117855, 22.698572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129154, 33.898357, 23.365620>,  <36.879879, 33.488297, 22.867809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129154, 33.898357, 23.365620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839695, 34.123196, 23.205427>,  <36.666019, 34.258099, 23.109312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839695, 34.123196, 23.205427>,  <37.129154, 33.898357, 23.365620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839695, 34.123196, 23.205427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168774, 0.418526, 0.892385,
		0.669219, 0.713361, -0.207997,
		-0.723645, 0.562096, -0.400482,
		36.622601, 34.291824, 23.085283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266323, 34.515724, 23.617281>,  <37.129154, 33.898357, 23.365620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266323, 34.515724, 23.617281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882015, 34.536655, 23.508335>,  <36.651432, 34.549213, 23.442968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882015, 34.536655, 23.508335>,  <37.266323, 34.515724, 23.617281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882015, 34.536655, 23.508335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212599, 0.491694, 0.844416,
		0.178104, 0.869194, -0.461281,
		-0.960771, 0.052326, -0.272363,
		36.593784, 34.552353, 23.426626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074905, 35.249660, 23.589096>,  <37.266323, 34.515724, 23.617281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074905, 35.249660, 23.589096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745697, 35.030033, 23.647274>,  <36.548172, 34.898254, 23.682180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.745697, 35.030033, 23.647274>,  <37.074905, 35.249660, 23.589096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745697, 35.030033, 23.647274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267067, 0.600059, 0.754059,
		-0.501308, 0.581764, -0.640501,
		-0.823022, -0.549072, 0.145445,
		36.498791, 34.865311, 23.690907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570930, 35.844498, 23.481562>,  <37.074905, 35.249660, 23.589096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570930, 35.844498, 23.481562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446507, 35.522758, 23.684055>,  <36.371853, 35.329716, 23.805552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446507, 35.522758, 23.684055>,  <36.570930, 35.844498, 23.481562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446507, 35.522758, 23.684055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346852, 0.591996, 0.727485,
		-0.884838, 0.050700, -0.463133,
		-0.311056, -0.804345, 0.506235,
		36.353191, 35.281456, 23.835926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946682, 36.043888, 23.739876>,  <36.570930, 35.844498, 23.481562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946682, 36.043888, 23.739876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043247, 35.730354, 23.968721>,  <36.101185, 35.542233, 24.106030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043247, 35.730354, 23.968721>,  <35.946682, 36.043888, 23.739876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043247, 35.730354, 23.968721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316786, 0.493601, 0.809942,
		-0.917260, -0.376769, -0.129147,
		0.241414, -0.783839, 0.572115,
		36.115673, 35.495201, 24.140356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421513, 36.151821, 24.220875>,  <35.946682, 36.043888, 23.739876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421513, 36.151821, 24.220875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640873, 35.868351, 24.398434>,  <35.772488, 35.698269, 24.504969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640873, 35.868351, 24.398434>,  <35.421513, 36.151821, 24.220875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640873, 35.868351, 24.398434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411962, 0.232990, 0.880910,
		-0.727700, -0.665958, -0.164175,
		0.548398, -0.708672, 0.443897,
		35.805393, 35.655750, 24.531603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974434, 35.844921, 24.635994>,  <35.421513, 36.151821, 24.220875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974434, 35.844921, 24.635994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335838, 35.740875, 24.772236>,  <35.552681, 35.678448, 24.853981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.335838, 35.740875, 24.772236>,  <34.974434, 35.844921, 24.635994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335838, 35.740875, 24.772236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312304, 0.144650, 0.938905,
		-0.293488, -0.954682, 0.049459,
		0.903511, -0.260112, 0.340604,
		35.606892, 35.662842, 24.874416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824829, 35.446510, 25.201000>,  <34.974434, 35.844921, 24.635994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824829, 35.446510, 25.201000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205318, 35.548103, 25.271059>,  <35.433613, 35.609058, 25.313093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205318, 35.548103, 25.271059>,  <34.824829, 35.446510, 25.201000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205318, 35.548103, 25.271059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216069, 0.143204, 0.965819,
		0.220222, -0.956548, 0.191096,
		0.951218, 0.253984, 0.175144,
		35.490685, 35.624298, 25.323603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984913, 35.040096, 25.801067>,  <34.824829, 35.446510, 25.201000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984913, 35.040096, 25.801067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265392, 35.325249, 25.805395>,  <35.433681, 35.496342, 25.807991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265392, 35.325249, 25.805395>,  <34.984913, 35.040096, 25.801067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265392, 35.325249, 25.805395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092244, 0.075664, 0.992857,
		0.706975, -0.697187, 0.118815,
		0.701197, 0.712886, 0.010818,
		35.475750, 35.539116, 25.808641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490631, 34.810833, 26.251148>,  <34.984913, 35.040096, 25.801067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490631, 34.810833, 26.251148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568127, 35.202950, 26.235674>,  <35.614624, 35.438217, 26.226389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568127, 35.202950, 26.235674>,  <35.490631, 34.810833, 26.251148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568127, 35.202950, 26.235674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229816, -0.007012, 0.973209,
		0.953755, -0.197443, -0.226644,
		0.193743, 0.980289, -0.038688,
		35.626251, 35.497036, 26.224068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143509, 34.812466, 26.535889>,  <35.490631, 34.810833, 26.251148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143509, 34.812466, 26.535889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963432, 35.167450, 26.575382>,  <35.855385, 35.380440, 26.599079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963432, 35.167450, 26.575382>,  <36.143509, 34.812466, 26.535889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963432, 35.167450, 26.575382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184985, -0.015482, 0.982619,
		0.873560, 0.460632, -0.157196,
		-0.450192, 0.887456, 0.098734,
		35.828373, 35.433685, 26.605003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542595, 35.324978, 26.915461>,  <36.143509, 34.812466, 26.535889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542595, 35.324978, 26.915461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181198, 35.490681, 26.959469>,  <35.964359, 35.590103, 26.985874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181198, 35.490681, 26.959469>,  <36.542595, 35.324978, 26.915461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181198, 35.490681, 26.959469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064701, -0.121929, 0.990428,
		0.423703, 0.901958, 0.083359,
		-0.903488, 0.414254, 0.110019,
		35.910152, 35.614956, 26.992476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610786, 35.942169, 27.413523>,  <36.542595, 35.324978, 26.915461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610786, 35.942169, 27.413523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234615, 35.807102, 27.397665>,  <36.008911, 35.726063, 27.388149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234615, 35.807102, 27.397665>,  <36.610786, 35.942169, 27.413523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234615, 35.807102, 27.397665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006174, -0.099627, 0.995006,
		-0.339934, 0.935977, 0.091608,
		-0.940429, -0.337671, -0.039645,
		35.952488, 35.705799, 27.385771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340805, 35.866791, 27.391581>,  <36.610786, 35.942169, 27.413523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340805, 35.866791, 27.391581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586174, 36.158096, 27.513792>,  <37.733395, 36.332878, 27.587118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586174, 36.158096, 27.513792>,  <37.340805, 35.866791, 27.391581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586174, 36.158096, 27.513792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575292, -0.147011, -0.804628,
		-0.541062, 0.669347, -0.509142,
		0.613426, 0.728259, 0.305528,
		37.770203, 36.376575, 27.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631207, 36.125603, 26.865757>,  <37.340805, 35.866791, 27.391581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631207, 36.125603, 26.865757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903893, 36.275707, 27.116976>,  <38.067505, 36.365772, 27.267708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903893, 36.275707, 27.116976>,  <37.631207, 36.125603, 26.865757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903893, 36.275707, 27.116976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699016, -0.080671, -0.710541,
		-0.215975, 0.923401, -0.317310,
		0.681712, 0.375264, 0.628049,
		38.108406, 36.388287, 27.305391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968048, 36.571735, 26.406256>,  <37.631207, 36.125603, 26.865757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968048, 36.571735, 26.406256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183067, 36.499996, 26.735832>,  <38.312077, 36.456951, 26.933578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183067, 36.499996, 26.735832>,  <37.968048, 36.571735, 26.406256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183067, 36.499996, 26.735832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764634, -0.308268, -0.565955,
		0.355500, 0.934239, -0.028569,
		0.537544, -0.179353, 0.823941,
		38.344330, 36.446190, 26.983015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545891, 36.798389, 26.214575>,  <37.968048, 36.571735, 26.406256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545891, 36.798389, 26.214575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668583, 36.577011, 26.524315>,  <38.742199, 36.444183, 26.710159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668583, 36.577011, 26.524315>,  <38.545891, 36.798389, 26.214575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668583, 36.577011, 26.524315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764685, -0.341128, -0.546707,
		0.566723, 0.759825, 0.318575,
		0.306727, -0.553441, 0.774352,
		38.760601, 36.410980, 26.756620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237972, 36.855904, 26.161467>,  <38.545891, 36.798389, 26.214575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237972, 36.855904, 26.161467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170094, 36.523460, 26.373304>,  <39.129368, 36.323994, 26.500406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.170094, 36.523460, 26.373304>,  <39.237972, 36.855904, 26.161467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170094, 36.523460, 26.373304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511042, -0.533699, -0.673796,
		0.842638, 0.156303, 0.515297,
		-0.169697, -0.831105, 0.529592,
		39.119186, 36.274128, 26.532183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895248, 36.587139, 26.340988>,  <39.237972, 36.855904, 26.161467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895248, 36.587139, 26.340988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645649, 36.274841, 26.354004>,  <39.495888, 36.087463, 26.361814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645649, 36.274841, 26.354004>,  <39.895248, 36.587139, 26.340988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645649, 36.274841, 26.354004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676220, -0.560390, -0.478216,
		0.391601, -0.276402, 0.877639,
		-0.624000, -0.780747, 0.032541,
		39.458450, 36.040619, 26.363766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349346, 35.981953, 26.337622>,  <39.895248, 36.587139, 26.340988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349346, 35.981953, 26.337622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999050, 35.806187, 26.257631>,  <39.788872, 35.700729, 26.209637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999050, 35.806187, 26.257631>,  <40.349346, 35.981953, 26.337622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999050, 35.806187, 26.257631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419284, -0.486923, -0.766229,
		0.239318, -0.754867, 0.610658,
		-0.875744, -0.439412, -0.199974,
		39.736328, 35.674362, 26.197639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398674, 35.312069, 26.257334>,  <40.349346, 35.981953, 26.337622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398674, 35.312069, 26.257334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042133, 35.333427, 26.077269>,  <39.828209, 35.346241, 25.969229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042133, 35.333427, 26.077269>,  <40.398674, 35.312069, 26.257334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042133, 35.333427, 26.077269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338707, -0.581561, -0.739638,
		-0.301288, -0.811749, 0.500290,
		-0.891349, 0.053393, -0.450162,
		39.774727, 35.349445, 25.942221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248943, 34.573898, 25.856579>,  <40.398674, 35.312069, 26.257334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248943, 34.573898, 25.856579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060246, 34.886173, 25.692633>,  <39.947029, 35.073540, 25.594265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060246, 34.886173, 25.692633>,  <40.248943, 34.573898, 25.856579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060246, 34.886173, 25.692633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345849, -0.263758, -0.900456,
		-0.811079, -0.566532, -0.145574,
		-0.471740, 0.780688, -0.409863,
		39.918724, 35.120380, 25.569674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837986, 34.304688, 25.316360>,  <40.248943, 34.573898, 25.856579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837986, 34.304688, 25.316360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840492, 34.695141, 25.229532>,  <39.841995, 34.929413, 25.177435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.840492, 34.695141, 25.229532>,  <39.837986, 34.304688, 25.316360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840492, 34.695141, 25.229532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003542, -0.217097, -0.976144,
		-0.999974, 0.005351, -0.004819,
		0.006270, 0.976136, -0.217072,
		39.842373, 34.987980, 25.164412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304459, 34.437981, 24.784939>,  <39.837986, 34.304688, 25.316360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304459, 34.437981, 24.784939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577152, 34.726505, 24.736044>,  <39.740768, 34.899620, 24.706707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577152, 34.726505, 24.736044>,  <39.304459, 34.437981, 24.784939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577152, 34.726505, 24.736044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014055, -0.154136, -0.987950,
		-0.731462, 0.675240, -0.094942,
		0.681737, 0.721313, -0.122235,
		39.781673, 34.942898, 24.699373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020206, 34.901260, 24.270741>,  <39.304459, 34.437981, 24.784939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020206, 34.901260, 24.270741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390999, 35.045650, 24.229923>,  <39.613472, 35.132282, 24.205433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390999, 35.045650, 24.229923>,  <39.020206, 34.901260, 24.270741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390999, 35.045650, 24.229923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066409, -0.109814, -0.991731,
		-0.369193, 0.926089, -0.077823,
		0.926977, 0.360972, -0.102043,
		39.669090, 35.153942, 24.199310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972515, 35.518143, 23.808327>,  <39.020206, 34.901260, 24.270741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972515, 35.518143, 23.808327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347446, 35.379406, 23.794991>,  <39.572407, 35.296165, 23.786989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347446, 35.379406, 23.794991>,  <38.972515, 35.518143, 23.808327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347446, 35.379406, 23.794991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023837, 0.031629, -0.999215,
		0.347624, 0.937390, 0.021379,
		0.937331, -0.346841, -0.033339,
		39.628647, 35.275352, 23.784988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330345, 35.961288, 23.287191>,  <38.972515, 35.518143, 23.808327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330345, 35.961288, 23.287191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501118, 35.604523, 23.346817>,  <39.603580, 35.390465, 23.382593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501118, 35.604523, 23.346817>,  <39.330345, 35.961288, 23.287191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501118, 35.604523, 23.346817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002070, -0.163878, -0.986478,
		0.904282, 0.421465, -0.068118,
		0.426930, -0.891914, 0.149065,
		39.629196, 35.336948, 23.391537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814167, 36.006355, 22.740490>,  <39.330345, 35.961288, 23.287191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814167, 36.006355, 22.740490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823864, 35.620285, 22.844683>,  <39.829681, 35.388645, 22.907198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823864, 35.620285, 22.844683>,  <39.814167, 36.006355, 22.740490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823864, 35.620285, 22.844683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106055, -0.256607, -0.960679,
		0.994065, 0.050917, 0.096140,
		0.024244, -0.965173, 0.260484,
		39.831139, 35.330734, 22.922829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375366, 35.780449, 22.279186>,  <39.814167, 36.006355, 22.740490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375366, 35.780449, 22.279186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171711, 35.457088, 22.397345>,  <40.049519, 35.263073, 22.468239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171711, 35.457088, 22.397345>,  <40.375366, 35.780449, 22.279186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171711, 35.457088, 22.397345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005966, -0.339886, -0.940448,
		0.860663, -0.480582, 0.168227,
		-0.509141, -0.808405, 0.295395,
		40.018970, 35.214565, 22.485964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664711, 35.172077, 22.024107>,  <40.375366, 35.780449, 22.279186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664711, 35.172077, 22.024107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.278610, 35.092407, 22.091782>,  <40.046951, 35.044605, 22.132385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.278610, 35.092407, 22.091782>,  <40.664711, 35.172077, 22.024107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278610, 35.092407, 22.091782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040823, -0.524532, -0.850412,
		0.258123, -0.827766, 0.498173,
		-0.965249, -0.199174, 0.169186,
		39.989037, 35.032654, 22.142538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570789, 34.445114, 21.797556>,  <40.664711, 35.172077, 22.024107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570789, 34.445114, 21.797556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214138, 34.625313, 21.815666>,  <40.000149, 34.733433, 21.826532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214138, 34.625313, 21.815666>,  <40.570789, 34.445114, 21.797556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214138, 34.625313, 21.815666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231722, -0.368128, -0.900437,
		-0.388988, -0.813342, 0.432624,
		-0.891624, 0.450508, 0.045272,
		39.946651, 34.760464, 21.829248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122784, 34.073936, 21.403364>,  <40.570789, 34.445114, 21.797556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122784, 34.073936, 21.403364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858410, 34.371414, 21.443539>,  <39.699787, 34.549900, 21.467644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858410, 34.371414, 21.443539>,  <40.122784, 34.073936, 21.403364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858410, 34.371414, 21.443539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200996, -0.046480, -0.978489,
		-0.723027, -0.666903, 0.180199,
		-0.660933, 0.743693, 0.100438,
		39.660130, 34.594521, 21.473671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.512161, 33.856926, 20.943426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561104, 34.252113, 20.981276>,  <39.590469, 34.489223, 21.003984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561104, 34.252113, 20.981276>,  <39.512161, 33.856926, 20.943426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561104, 34.252113, 20.981276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059370, 0.102456, -0.992964,
		-0.990709, 0.115880, 0.071192,
		0.122358, 0.987965, 0.094624,
		39.597813, 34.548504, 21.009663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879906, 34.284264, 20.596043>,  <39.512161, 33.856926, 20.943426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879906, 34.284264, 20.596043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201675, 34.519821, 20.627306>,  <39.394737, 34.661156, 20.646063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201675, 34.519821, 20.627306>,  <38.879906, 34.284264, 20.596043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201675, 34.519821, 20.627306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047902, 0.195437, -0.979546,
		-0.592126, 0.784223, 0.185423,
		0.804421, 0.588896, 0.078157,
		39.443001, 34.696491, 20.650753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674076, 34.963287, 20.368525>,  <38.879906, 34.284264, 20.596043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674076, 34.963287, 20.368525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071911, 34.950928, 20.328838>,  <39.310612, 34.943512, 20.305027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071911, 34.950928, 20.328838>,  <38.674076, 34.963287, 20.368525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071911, 34.950928, 20.328838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094278, 0.133263, -0.986586,
		0.043705, 0.990599, 0.129628,
		0.994586, -0.030898, -0.099216,
		39.370285, 34.941658, 20.299074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916306, 35.508099, 20.034122>,  <38.674076, 34.963287, 20.368525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916306, 35.508099, 20.034122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208958, 35.242096, 19.974144>,  <39.384548, 35.082493, 19.938156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208958, 35.242096, 19.974144>,  <38.916306, 35.508099, 20.034122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208958, 35.242096, 19.974144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034329, 0.255619, -0.966168,
		0.680839, 0.701728, 0.209847,
		0.731628, -0.665009, -0.149946,
		39.428448, 35.042595, 19.929159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348385, 35.877377, 19.589783>,  <38.916306, 35.508099, 20.034122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348385, 35.877377, 19.589783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418171, 35.485577, 19.549496>,  <39.460041, 35.250496, 19.525324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418171, 35.485577, 19.549496>,  <39.348385, 35.877377, 19.589783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418171, 35.485577, 19.549496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171915, 0.131016, -0.976361,
		0.969539, 0.153027, 0.191248,
		0.174466, -0.979499, -0.100718,
		39.470512, 35.191727, 19.519279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711903, 35.932880, 18.955315>,  <39.348385, 35.877377, 19.589783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711903, 35.932880, 18.955315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661961, 35.541248, 19.019579>,  <39.631996, 35.306271, 19.058138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661961, 35.541248, 19.019579>,  <39.711903, 35.932880, 18.955315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661961, 35.541248, 19.019579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179718, -0.181564, -0.966818,
		0.975763, -0.091837, 0.198627,
		-0.124853, -0.979082, 0.160658,
		39.624504, 35.247524, 19.067776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108318, 35.695766, 18.468113>,  <39.711903, 35.932880, 18.955315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108318, 35.695766, 18.468113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878021, 35.385090, 18.570303>,  <39.739841, 35.198685, 18.631617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878021, 35.385090, 18.570303>,  <40.108318, 35.695766, 18.468113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878021, 35.385090, 18.570303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115270, -0.386439, -0.915083,
		0.809464, -0.497405, 0.312019,
		-0.575743, -0.776694, 0.255473,
		39.705299, 35.152081, 18.646944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412617, 35.086891, 18.240641>,  <40.108318, 35.695766, 18.468113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412617, 35.086891, 18.240641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029076, 34.981865, 18.283833>,  <39.798950, 34.918850, 18.309748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029076, 34.981865, 18.283833>,  <40.412617, 35.086891, 18.240641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029076, 34.981865, 18.283833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005473, -0.363178, -0.931704,
		0.283845, -0.893959, 0.346798,
		-0.958854, -0.262561, 0.107979,
		39.741421, 34.903095, 18.316227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318119, 34.403599, 18.054802>,  <40.412617, 35.086891, 18.240641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318119, 34.403599, 18.054802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964592, 34.575397, 17.980623>,  <39.752476, 34.678478, 17.936117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.964592, 34.575397, 17.980623>,  <40.318119, 34.403599, 18.054802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964592, 34.575397, 17.980623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020974, -0.359623, -0.932862,
		-0.467355, -0.828372, 0.308834,
		-0.883820, 0.429500, -0.185446,
		39.699444, 34.704247, 17.924990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036102, 33.927288, 17.596664>,  <40.318119, 34.403599, 18.054802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036102, 33.927288, 17.596664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.790230, 34.240993, 17.562971>,  <39.642708, 34.429218, 17.542755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.790230, 34.240993, 17.562971>,  <40.036102, 33.927288, 17.596664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790230, 34.240993, 17.562971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146941, -0.218774, -0.964648,
		-0.774971, -0.580570, 0.249717,
		-0.614677, 0.784268, -0.084234,
		39.605827, 34.476273, 17.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408577, 33.749836, 17.382702>,  <40.036102, 33.927288, 17.596664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408577, 33.749836, 17.382702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441879, 34.131760, 17.268572>,  <39.461861, 34.360912, 17.200094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441879, 34.131760, 17.268572>,  <39.408577, 33.749836, 17.382702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441879, 34.131760, 17.268572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153408, -0.270626, -0.950383,
		-0.984649, 0.122898, 0.123944,
		0.083258, 0.954807, -0.285325,
		39.466858, 34.418201, 17.182974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099590, 33.701672, 16.648817>,  <39.408577, 33.749836, 17.382702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099590, 33.701672, 16.648817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289551, 34.052425, 16.678587>,  <39.403526, 34.262878, 16.696449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289551, 34.052425, 16.678587>,  <39.099590, 33.701672, 16.648817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289551, 34.052425, 16.678587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036078, 0.065097, -0.997227,
		-0.879300, 0.476267, -0.000721,
		0.474899, 0.876888, 0.074422,
		39.432022, 34.315491, 16.700914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841663, 34.108887, 16.124126>,  <39.099590, 33.701672, 16.648817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841663, 34.108887, 16.124126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185085, 34.299648, 16.199432>,  <39.391140, 34.414104, 16.244616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185085, 34.299648, 16.199432>,  <38.841663, 34.108887, 16.124126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185085, 34.299648, 16.199432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117948, 0.173632, -0.977722,
		-0.498968, 0.861635, 0.092824,
		0.858556, 0.476904, 0.188265,
		39.442654, 34.442719, 16.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789814, 34.726807, 15.828981>,  <38.841663, 34.108887, 16.124126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789814, 34.726807, 15.828981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182358, 34.662502, 15.871093>,  <39.417885, 34.623920, 15.896359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182358, 34.662502, 15.871093>,  <38.789814, 34.726807, 15.828981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182358, 34.662502, 15.871093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126698, 0.129377, -0.983468,
		0.144483, 0.978477, 0.147334,
		0.981362, -0.160761, 0.105279,
		39.476765, 34.614273, 15.902677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214806, 35.325905, 15.591538>,  <38.789814, 34.726807, 15.828981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214806, 35.325905, 15.591538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437828, 34.995632, 15.557158>,  <39.571640, 34.797470, 15.536530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437828, 34.995632, 15.557158>,  <39.214806, 35.325905, 15.591538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437828, 34.995632, 15.557158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202110, 0.235436, -0.950642,
		0.805163, 0.512661, 0.298146,
		0.557552, -0.825680, -0.085950,
		39.605095, 34.747929, 15.531373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597141, 35.523121, 15.073712>,  <39.214806, 35.325905, 15.591538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597141, 35.523121, 15.073712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705696, 35.139473, 15.105806>,  <39.770828, 34.909283, 15.125063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705696, 35.139473, 15.105806>,  <39.597141, 35.523121, 15.073712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705696, 35.139473, 15.105806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418901, 0.042652, -0.907030,
		0.866528, 0.279768, 0.413351,
		0.271388, -0.959120, 0.080236,
		39.787113, 34.851738, 15.129877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330860, 35.443295, 14.901816>,  <39.597141, 35.523121, 15.073712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330860, 35.443295, 14.901816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127155, 35.108582, 14.821366>,  <40.004932, 34.907753, 14.773096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127155, 35.108582, 14.821366>,  <40.330860, 35.443295, 14.901816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127155, 35.108582, 14.821366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198336, 0.113295, -0.973564,
		0.837446, -0.535689, 0.108267,
		-0.509261, -0.836781, -0.201125,
		39.974377, 34.857548, 14.761029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624550, 35.295815, 14.268361>,  <40.330860, 35.443295, 14.901816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624550, 35.295815, 14.268361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314571, 35.043064, 14.273697>,  <40.128582, 34.891415, 14.276898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314571, 35.043064, 14.273697>,  <40.624550, 35.295815, 14.268361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314571, 35.043064, 14.273697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009686, -0.032977, -0.999409,
		0.631947, -0.774364, 0.031676,
		-0.774951, -0.631881, 0.013339,
		40.082085, 34.853500, 14.277699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836437, 34.743538, 13.798747>,  <40.624550, 35.295815, 14.268361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836437, 34.743538, 13.798747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.444145, 34.687218, 13.852920>,  <40.208771, 34.653427, 13.885424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.444145, 34.687218, 13.852920>,  <40.836437, 34.743538, 13.798747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444145, 34.687218, 13.852920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120729, -0.108219, -0.986769,
		0.153596, -0.984105, 0.089135,
		-0.980730, -0.140803, 0.135432,
		40.149925, 34.644978, 13.893549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591499, 34.191589, 13.352489>,  <40.836437, 34.743538, 13.798747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591499, 34.191589, 13.352489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287636, 34.438023, 13.435774>,  <40.105316, 34.585884, 13.485745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287636, 34.438023, 13.435774>,  <40.591499, 34.191589, 13.352489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287636, 34.438023, 13.435774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200595, 0.082571, -0.976188,
		-0.618608, -0.783339, 0.060858,
		-0.759662, 0.616085, 0.208213,
		40.059738, 34.622849, 13.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027008, 33.948452, 12.843800>,  <40.591499, 34.191589, 13.352489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027008, 33.948452, 12.843800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880913, 34.300903, 12.963942>,  <39.793255, 34.512375, 13.036027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.880913, 34.300903, 12.963942>,  <40.027008, 33.948452, 12.843800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880913, 34.300903, 12.963942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371911, 0.157663, -0.914781,
		-0.853393, -0.445822, 0.270115,
		-0.365242, 0.881127, 0.300354,
		39.771339, 34.565243, 13.054048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394093, 34.111774, 12.463227>,  <40.027008, 33.948452, 12.843800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394093, 34.111774, 12.463227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513824, 34.473980, 12.583525>,  <39.585663, 34.691303, 12.655704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513824, 34.473980, 12.583525>,  <39.394093, 34.111774, 12.463227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513824, 34.473980, 12.583525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150973, 0.356173, -0.922143,
		-0.942129, 0.230623, 0.243323,
		0.299333, 0.905513, 0.300743,
		39.603622, 34.745632, 12.673748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769398, 33.741959, 12.824165>,  <39.394093, 34.111774, 12.463227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769398, 33.741959, 12.824165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943081, 33.709141, 12.465338>,  <39.047291, 33.689449, 12.250041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.943081, 33.709141, 12.465338>,  <38.769398, 33.741959, 12.824165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943081, 33.709141, 12.465338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889638, 0.117312, -0.441342,
		0.141445, 0.989701, -0.022048,
		0.434210, -0.082041, -0.897068,
		39.073345, 33.684528, 12.196218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454185, 33.921593, 12.194040>,  <38.769398, 33.741959, 12.824165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454185, 33.921593, 12.194040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113895, 33.821709, 12.009041>,  <37.909721, 33.761776, 11.898041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113895, 33.821709, 12.009041>,  <38.454185, 33.921593, 12.194040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113895, 33.821709, 12.009041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474917, -0.011820, 0.879951,
		-0.225203, 0.968247, -0.108538,
		-0.850728, -0.249714, -0.462499,
		37.858677, 33.746796, 11.870291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961884, 34.378059, 12.439264>,  <38.454185, 33.921593, 12.194040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961884, 34.378059, 12.439264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760258, 34.059204, 12.306304>,  <37.639282, 33.867893, 12.226528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760258, 34.059204, 12.306304>,  <37.961884, 34.378059, 12.439264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760258, 34.059204, 12.306304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393496, -0.130636, 0.909997,
		-0.768815, 0.589499, -0.247820,
		-0.504068, -0.797136, -0.332400,
		37.609035, 33.820065, 12.206584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231674, 34.487778, 12.645944>,  <37.961884, 34.378059, 12.439264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231674, 34.487778, 12.645944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266598, 34.095520, 12.575850>,  <37.287552, 33.860165, 12.533794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266598, 34.095520, 12.575850>,  <37.231674, 34.487778, 12.645944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266598, 34.095520, 12.575850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361287, -0.195098, 0.911816,
		-0.928358, -0.016298, -0.371328,
		0.087306, -0.980648, -0.175232,
		37.292789, 33.801327, 12.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548717, 34.124031, 12.574908>,  <37.231674, 34.487778, 12.645944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548717, 34.124031, 12.574908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817764, 33.853550, 12.695137>,  <36.979191, 33.691261, 12.767274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817764, 33.853550, 12.695137>,  <36.548717, 34.124031, 12.574908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817764, 33.853550, 12.695137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482338, -0.092585, 0.871079,
		-0.561195, -0.730877, -0.388431,
		0.672614, -0.676200, 0.300572,
		37.019550, 33.650688, 12.785309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238403, 33.819057, 13.142719>,  <36.548717, 34.124031, 12.574908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238403, 33.819057, 13.142719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594830, 33.642651, 13.185617>,  <36.808685, 33.536804, 13.211356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594830, 33.642651, 13.185617>,  <36.238403, 33.819057, 13.142719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594830, 33.642651, 13.185617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252487, -0.285306, 0.924582,
		-0.377163, -0.850941, -0.365578,
		0.891066, -0.441022, 0.107245,
		36.862148, 33.510345, 13.217791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075718, 33.173855, 13.365950>,  <36.238403, 33.819057, 13.142719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075718, 33.173855, 13.365950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457737, 33.243946, 13.461592>,  <36.686951, 33.286003, 13.518977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457737, 33.243946, 13.461592>,  <36.075718, 33.173855, 13.365950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457737, 33.243946, 13.461592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200288, -0.213202, 0.956258,
		0.218545, -0.961165, -0.168522,
		0.955051, 0.175232, 0.239105,
		36.744251, 33.296516, 13.533323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344868, 32.603470, 13.846804>,  <36.075718, 33.173855, 13.365950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344868, 32.603470, 13.846804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570541, 32.925365, 13.920661>,  <36.705948, 33.118504, 13.964975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570541, 32.925365, 13.920661>,  <36.344868, 32.603470, 13.846804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570541, 32.925365, 13.920661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049526, -0.190247, 0.980486,
		0.824159, -0.562324, -0.067479,
		0.564189, 0.804734, 0.184643,
		36.739799, 33.166786, 13.976054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736095, 32.384975, 14.339504>,  <36.344868, 32.603470, 13.846804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736095, 32.384975, 14.339504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746361, 32.784824, 14.343425>,  <36.752522, 33.024734, 14.345777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746361, 32.784824, 14.343425>,  <36.736095, 32.384975, 14.339504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746361, 32.784824, 14.343425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112923, -0.006842, 0.993580,
		0.993272, -0.026609, 0.112704,
		0.025667, 0.999622, 0.009801,
		36.754063, 33.084713, 14.346365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908482, 32.540493, 15.015822>,  <36.736095, 32.384975, 14.339504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908482, 32.540493, 15.015822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771027, 32.895840, 14.894019>,  <36.688553, 33.109047, 14.820937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771027, 32.895840, 14.894019>,  <36.908482, 32.540493, 15.015822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771027, 32.895840, 14.894019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070904, 0.298785, 0.951683,
		0.936423, 0.348621, -0.039684,
		-0.343633, 0.888364, -0.304508,
		36.667938, 33.162350, 14.802667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447346, 33.020920, 15.123440>,  <36.908482, 32.540493, 15.015822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447346, 33.020920, 15.123440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110355, 33.236404, 15.121859>,  <36.908161, 33.365696, 15.120910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110355, 33.236404, 15.121859>,  <37.447346, 33.020920, 15.123440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110355, 33.236404, 15.121859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174277, 0.279472, 0.944205,
		0.509763, 0.794783, -0.329335,
		-0.842478, 0.538716, -0.003952,
		36.857613, 33.398018, 15.120673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617950, 33.655834, 15.411406>,  <37.447346, 33.020920, 15.123440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617950, 33.655834, 15.411406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220375, 33.617142, 15.432283>,  <36.981831, 33.593925, 15.444810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220375, 33.617142, 15.432283>,  <37.617950, 33.655834, 15.411406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220375, 33.617142, 15.432283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044283, 0.082205, 0.995631,
		-0.100598, 0.991910, -0.077424,
		-0.993941, -0.096730, 0.052194,
		36.922192, 33.588123, 15.447942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452976, 34.278412, 15.617330>,  <37.617950, 33.655834, 15.411406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452976, 34.278412, 15.617330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148708, 34.040237, 15.720748>,  <36.966148, 33.897335, 15.782799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148708, 34.040237, 15.720748>,  <37.452976, 34.278412, 15.617330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148708, 34.040237, 15.720748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234040, 0.119945, 0.964800,
		-0.605485, 0.794401, 0.048117,
		-0.760666, -0.595433, 0.258546,
		36.920509, 33.861607, 15.798312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203983, 34.622910, 16.132301>,  <37.452976, 34.278412, 15.617330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203983, 34.622910, 16.132301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085510, 34.242821, 16.170975>,  <37.014427, 34.014767, 16.194178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085510, 34.242821, 16.170975>,  <37.203983, 34.622910, 16.132301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085510, 34.242821, 16.170975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174823, 0.045581, 0.983544,
		-0.938997, 0.308207, 0.152621,
		-0.296179, -0.950227, 0.096682,
		36.996658, 33.957752, 16.199980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733551, 34.651840, 16.717707>,  <37.203983, 34.622910, 16.132301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733551, 34.651840, 16.717707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851398, 34.270092, 16.698219>,  <36.922108, 34.041042, 16.686527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851398, 34.270092, 16.698219>,  <36.733551, 34.651840, 16.717707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851398, 34.270092, 16.698219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038666, -0.062847, 0.997274,
		-0.954831, -0.291935, -0.055418,
		0.294622, -0.954371, -0.048721,
		36.939785, 33.983780, 16.683603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280521, 34.321804, 17.198689>,  <36.733551, 34.651840, 16.717707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280521, 34.321804, 17.198689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599304, 34.087738, 17.138769>,  <36.790573, 33.947300, 17.102818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599304, 34.087738, 17.138769>,  <36.280521, 34.321804, 17.198689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599304, 34.087738, 17.138769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139536, -0.062941, 0.988215,
		-0.587693, -0.808471, 0.031489,
		0.796961, -0.585161, -0.149801,
		36.838394, 33.912189, 17.093828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190296, 33.731861, 17.675425>,  <36.280521, 34.321804, 17.198689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190296, 33.731861, 17.675425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577648, 33.737881, 17.575819>,  <36.810059, 33.741493, 17.516056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577648, 33.737881, 17.575819>,  <36.190296, 33.731861, 17.675425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577648, 33.737881, 17.575819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246526, -0.210574, 0.945983,
		-0.038198, -0.977462, -0.207626,
		0.968383, 0.015050, -0.249013,
		36.868164, 33.742393, 17.501116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491207, 33.093029, 17.966846>,  <36.190296, 33.731861, 17.675425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491207, 33.093029, 17.966846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760235, 33.383629, 17.910492>,  <36.921650, 33.557991, 17.876680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.760235, 33.383629, 17.910492>,  <36.491207, 33.093029, 17.966846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760235, 33.383629, 17.910492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367967, -0.163130, 0.915417,
		0.642071, -0.667520, -0.377045,
		0.672566, 0.726503, -0.140884,
		36.962006, 33.601582, 17.868227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961029, 32.732990, 18.133562>,  <36.491207, 33.093029, 17.966846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961029, 32.732990, 18.133562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072594, 33.116528, 18.154806>,  <37.139534, 33.346649, 18.167553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072594, 33.116528, 18.154806>,  <36.961029, 32.732990, 18.133562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072594, 33.116528, 18.154806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352599, -0.153693, 0.923067,
		0.893242, -0.238729, -0.380955,
		0.278913, 0.958847, 0.053110,
		37.156269, 33.404182, 18.170738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463966, 32.643330, 18.624819>,  <36.961029, 32.732990, 18.133562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463966, 32.643330, 18.624819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433247, 33.041725, 18.643179>,  <37.414814, 33.280762, 18.654196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433247, 33.041725, 18.643179>,  <37.463966, 32.643330, 18.624819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433247, 33.041725, 18.643179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337132, -0.017387, 0.941297,
		0.938320, 0.087763, -0.334445,
		-0.076796, 0.995990, 0.045902,
		37.410210, 33.340523, 18.656950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110981, 32.934711, 18.959049>,  <37.463966, 32.643330, 18.624819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110981, 32.934711, 18.959049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839684, 33.227222, 18.987961>,  <37.676907, 33.402729, 19.005308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839684, 33.227222, 18.987961>,  <38.110981, 32.934711, 18.959049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839684, 33.227222, 18.987961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328074, 0.213327, 0.920250,
		0.657536, 0.647865, -0.384600,
		-0.678244, 0.731274, 0.072277,
		37.636211, 33.446606, 19.009644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366360, 33.515949, 19.224724>,  <38.110981, 32.934711, 18.959049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366360, 33.515949, 19.224724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973652, 33.538960, 19.297195>,  <37.738029, 33.552765, 19.340677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973652, 33.538960, 19.297195>,  <38.366360, 33.515949, 19.224724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973652, 33.538960, 19.297195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183249, 0.033010, 0.982512,
		0.050542, 0.997798, -0.042951,
		-0.981766, 0.057528, 0.181178,
		37.679123, 33.556217, 19.351549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.838398, 34.823097, 23.852200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465458, 34.965038, 23.824463>,  <40.241695, 35.050205, 23.807821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465458, 34.965038, 23.824463>,  <40.838398, 34.823097, 23.852200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465458, 34.965038, 23.824463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024137, 0.252441, 0.967311,
		0.360761, 0.900195, -0.243927,
		-0.932346, 0.354856, -0.069343,
		40.185753, 35.071495, 23.803659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940651, 35.509995, 24.128405>,  <40.838398, 34.823097, 23.852200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940651, 35.509995, 24.128405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554001, 35.411694, 24.157377>,  <40.322010, 35.352715, 24.174761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554001, 35.411694, 24.157377>,  <40.940651, 35.509995, 24.128405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554001, 35.411694, 24.157377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002950, 0.293375, 0.955993,
		-0.256186, 0.923871, -0.284308,
		-0.966623, -0.245751, 0.072433,
		40.264015, 35.337967, 24.179108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560894, 35.987804, 24.582386>,  <40.940651, 35.509995, 24.128405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560894, 35.987804, 24.582386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306850, 35.680328, 24.612743>,  <40.154423, 35.495842, 24.630959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306850, 35.680328, 24.612743>,  <40.560894, 35.987804, 24.582386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306850, 35.680328, 24.612743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240312, 0.290012, 0.926360,
		-0.734090, 0.570101, -0.368913,
		-0.635108, -0.768686, 0.075893,
		40.116318, 35.449722, 24.635511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921143, 36.246704, 24.909531>,  <40.560894, 35.987804, 24.582386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921143, 36.246704, 24.909531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894379, 35.853123, 24.975681>,  <39.878323, 35.616974, 25.015371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894379, 35.853123, 24.975681>,  <39.921143, 36.246704, 24.909531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894379, 35.853123, 24.975681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576905, 0.173385, 0.798197,
		-0.814066, -0.042002, -0.579251,
		-0.066907, -0.983958, 0.165378,
		39.874306, 35.557934, 25.025295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270264, 36.217060, 25.157743>,  <39.921143, 36.246704, 24.909531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270264, 36.217060, 25.157743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434738, 35.869217, 25.267075>,  <39.533421, 35.660511, 25.332672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.434738, 35.869217, 25.267075>,  <39.270264, 36.217060, 25.157743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434738, 35.869217, 25.267075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539547, 0.009499, 0.841902,
		-0.734723, -0.493648, -0.465290,
		0.411183, -0.869610, 0.273326,
		39.558094, 35.608334, 25.349072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783005, 35.713303, 25.255930>,  <39.270264, 36.217060, 25.157743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783005, 35.713303, 25.255930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.103539, 35.616173, 25.474615>,  <39.295860, 35.557896, 25.605827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.103539, 35.616173, 25.474615>,  <38.783005, 35.713303, 25.255930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103539, 35.616173, 25.474615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516605, 0.179907, 0.837110,
		-0.301629, -0.953242, 0.018721,
		0.801336, -0.242825, 0.546715,
		39.343941, 35.543324, 25.638630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519299, 35.336922, 25.801357>,  <38.783005, 35.713303, 25.255930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519299, 35.336922, 25.801357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884605, 35.439812, 25.927704>,  <39.103790, 35.501545, 26.003511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884605, 35.439812, 25.927704>,  <38.519299, 35.336922, 25.801357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884605, 35.439812, 25.927704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401230, 0.434079, 0.806592,
		0.070367, -0.863371, 0.499639,
		0.913270, 0.257227, 0.315866,
		39.158588, 35.516979, 26.022463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771278, 35.002750, 26.499315>,  <38.519299, 35.336922, 25.801357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771278, 35.002750, 26.499315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966747, 35.347023, 26.442156>,  <39.084030, 35.553589, 26.407860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966747, 35.347023, 26.442156>,  <38.771278, 35.002750, 26.499315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966747, 35.347023, 26.442156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541579, 0.427656, 0.723742,
		0.684025, -0.276284, 0.675113,
		0.488674, 0.860685, -0.142898,
		39.113350, 35.605228, 26.399286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887524, 35.155003, 27.108810>,  <38.771278, 35.002750, 26.499315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887524, 35.155003, 27.108810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954712, 35.500622, 26.918987>,  <38.995026, 35.707993, 26.805094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954712, 35.500622, 26.918987>,  <38.887524, 35.155003, 27.108810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954712, 35.500622, 26.918987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429364, 0.497461, 0.753776,
		0.887373, 0.077144, 0.454552,
		0.167973, 0.864049, -0.474557,
		39.005104, 35.759838, 26.776621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198715, 35.569290, 27.646637>,  <38.887524, 35.155003, 27.108810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198715, 35.569290, 27.646637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026459, 35.807899, 27.375727>,  <38.923103, 35.951065, 27.213181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.026459, 35.807899, 27.375727>,  <39.198715, 35.569290, 27.646637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026459, 35.807899, 27.375727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409909, 0.539286, 0.735626,
		0.804067, 0.594413, 0.012283,
		-0.430641, 0.596527, -0.677276,
		38.897266, 35.986858, 27.172544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164799, 36.212242, 27.989735>,  <39.198715, 35.569290, 27.646637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164799, 36.212242, 27.989735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922024, 36.298126, 27.683657>,  <38.776360, 36.349655, 27.500010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.922024, 36.298126, 27.683657>,  <39.164799, 36.212242, 27.989735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922024, 36.298126, 27.683657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667112, 0.385665, 0.637357,
		0.431956, 0.897308, -0.090840,
		-0.606940, 0.214710, -0.765195,
		38.739941, 36.362537, 27.454098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024235, 36.936073, 28.009266>,  <39.164799, 36.212242, 27.989735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024235, 36.936073, 28.009266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731087, 36.779030, 27.786999>,  <38.555199, 36.684803, 27.653639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731087, 36.779030, 27.786999>,  <39.024235, 36.936073, 28.009266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731087, 36.779030, 27.786999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668698, 0.566283, 0.481838,
		0.125492, 0.724696, -0.677545,
		-0.732868, -0.392606, -0.555667,
		38.511227, 36.661247, 27.620298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505997, 37.452774, 27.689907>,  <39.024235, 36.936073, 28.009266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505997, 37.452774, 27.689907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310753, 37.104889, 27.719164>,  <38.193607, 36.896156, 27.736717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310753, 37.104889, 27.719164>,  <38.505997, 37.452774, 27.689907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310753, 37.104889, 27.719164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669048, 0.426670, 0.608545,
		-0.560466, 0.248102, -0.790141,
		-0.488110, -0.869711, 0.073142,
		38.164318, 36.843975, 27.741106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694771, 37.568901, 27.779055>,  <38.505997, 37.452774, 27.689907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694771, 37.568901, 27.779055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663761, 37.195633, 27.919443>,  <37.645157, 36.971672, 28.003675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663761, 37.195633, 27.919443>,  <37.694771, 37.568901, 27.779055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663761, 37.195633, 27.919443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785643, 0.273906, 0.554744,
		-0.613804, -0.232733, -0.754374,
		-0.077521, -0.933172, 0.350969,
		37.640507, 36.915680, 28.024734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174076, 37.515602, 28.294979>,  <37.694771, 37.568901, 27.779055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174076, 37.515602, 28.294979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983437, 37.855148, 28.386442>,  <36.869053, 38.058876, 28.441320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.983437, 37.855148, 28.386442>,  <37.174076, 37.515602, 28.294979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983437, 37.855148, 28.386442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449229, -0.011582, -0.893342,
		-0.755679, -0.528481, 0.386855,
		-0.476595, 0.848866, 0.228656,
		36.840458, 38.109810, 28.455040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606312, 37.483681, 27.920492>,  <37.174076, 37.515602, 28.294979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606312, 37.483681, 27.920492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564377, 37.866634, 28.028133>,  <36.539215, 38.096409, 28.092718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564377, 37.866634, 28.028133>,  <36.606312, 37.483681, 27.920492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564377, 37.866634, 28.028133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470874, 0.190554, -0.861375,
		-0.875949, -0.217016, 0.430833,
		-0.104836, 0.957389, 0.269103,
		36.532925, 38.153851, 28.108864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914845, 37.632988, 27.715153>,  <36.606312, 37.483681, 27.920492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914845, 37.632988, 27.715153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.094067, 37.988964, 27.749224>,  <36.201599, 38.202549, 27.769667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.094067, 37.988964, 27.749224>,  <35.914845, 37.632988, 27.715153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094067, 37.988964, 27.749224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357606, 0.265731, -0.895268,
		-0.819368, 0.370671, 0.437310,
		0.448056, 0.889939, 0.085177,
		36.228485, 38.255947, 27.774776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474548, 38.216652, 27.680344>,  <35.914845, 37.632988, 27.715153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474548, 38.216652, 27.680344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 38.331867, 27.544924>,  <36.047844, 38.400997, 27.463671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 38.331867, 27.544924>,  <35.474548, 38.216652, 27.680344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832859, 38.331867, 27.544924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404022, 0.210029, -0.890312,
		-0.185342, 0.934301, 0.304514,
		0.895776, 0.288043, -0.338551,
		36.101593, 38.418282, 27.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285049, 38.740566, 27.254124>,  <35.474548, 38.216652, 27.680344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285049, 38.740566, 27.254124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.655090, 38.616932, 27.165890>,  <35.877113, 38.542751, 27.112949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.655090, 38.616932, 27.165890>,  <35.285049, 38.740566, 27.254124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655090, 38.616932, 27.165890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129860, 0.288366, -0.948674,
		0.356831, 0.906262, 0.226629,
		0.925099, -0.309086, -0.220585,
		35.932621, 38.524208, 27.099714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510792, 39.226173, 26.736105>,  <35.285049, 38.740566, 27.254124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510792, 39.226173, 26.736105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769958, 38.922359, 26.713095>,  <35.925461, 38.740070, 26.699289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769958, 38.922359, 26.713095>,  <35.510792, 39.226173, 26.736105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769958, 38.922359, 26.713095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064344, 0.129825, -0.989447,
		0.758986, 0.637381, 0.132988,
		0.647920, -0.759533, -0.057523,
		35.964333, 38.694500, 26.695837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899750, 39.462860, 26.167423>,  <35.510792, 39.226173, 26.736105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899750, 39.462860, 26.167423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963486, 39.072102, 26.224394>,  <36.001728, 38.837646, 26.258577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963486, 39.072102, 26.224394>,  <35.899750, 39.462860, 26.167423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963486, 39.072102, 26.224394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026892, -0.139922, -0.989797,
		0.986857, 0.161546, 0.003976,
		0.159341, -0.976896, 0.142428,
		36.011288, 38.779034, 26.267122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391628, 39.332474, 25.745882>,  <35.899750, 39.462860, 26.167423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391628, 39.332474, 25.745882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.209351, 38.980347, 25.798628>,  <36.099983, 38.769070, 25.830276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.209351, 38.980347, 25.798628>,  <36.391628, 39.332474, 25.745882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209351, 38.980347, 25.798628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273040, -0.279237, -0.920584,
		0.847226, -0.383501, 0.367608,
		-0.455695, -0.880314, 0.131866,
		36.072643, 38.716251, 25.838188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753120, 38.925346, 25.199995>,  <36.391628, 39.332474, 25.745882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753120, 38.925346, 25.199995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434574, 38.707985, 25.306213>,  <36.243446, 38.577568, 25.369944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434574, 38.707985, 25.306213>,  <36.753120, 38.925346, 25.199995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434574, 38.707985, 25.306213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000872, -0.438018, -0.898966,
		0.604815, -0.716137, 0.348348,
		-0.796365, -0.543404, 0.265544,
		36.195663, 38.544964, 25.385878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901375, 38.325836, 24.912758>,  <36.753120, 38.925346, 25.199995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901375, 38.325836, 24.912758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502907, 38.319588, 24.947170>,  <36.263824, 38.315838, 24.967817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.502907, 38.319588, 24.947170>,  <36.901375, 38.325836, 24.912758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502907, 38.319588, 24.947170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076886, -0.312071, -0.946943,
		0.041643, -0.949930, 0.309674,
		-0.996170, -0.015624, 0.086032,
		36.204056, 38.314899, 24.972980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734253, 37.712101, 24.657438>,  <36.901375, 38.325836, 24.912758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734253, 37.712101, 24.657438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403469, 37.936214, 24.638597>,  <36.204998, 38.070683, 24.627293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403469, 37.936214, 24.638597>,  <36.734253, 37.712101, 24.657438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403469, 37.936214, 24.638597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100728, -0.230043, -0.967954,
		-0.553163, -0.795716, 0.246673,
		-0.826962, 0.560283, -0.047101,
		36.155380, 38.104298, 24.624468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222385, 37.346966, 24.314945>,  <36.734253, 37.712101, 24.657438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222385, 37.346966, 24.314945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059650, 37.711552, 24.290594>,  <35.962009, 37.930305, 24.275984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059650, 37.711552, 24.290594>,  <36.222385, 37.346966, 24.314945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059650, 37.711552, 24.290594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004276, -0.064742, -0.997893,
		-0.913490, -0.406241, 0.022442,
		-0.406838, 0.911469, -0.060878,
		35.937599, 37.984993, 24.272331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695030, 37.295227, 23.766266>,  <36.222385, 37.346966, 24.314945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695030, 37.295227, 23.766266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727737, 37.692604, 23.798239>,  <35.747360, 37.931030, 23.817423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727737, 37.692604, 23.798239>,  <35.695030, 37.295227, 23.766266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727737, 37.692604, 23.798239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283498, 0.053703, -0.957468,
		-0.955480, 0.100952, -0.277247,
		0.081769, 0.993441, 0.079931,
		35.752270, 37.990635, 23.822218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205559, 37.742844, 23.295780>,  <35.695030, 37.295227, 23.766266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205559, 37.742844, 23.295780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542305, 37.939178, 23.385530>,  <35.744354, 38.056980, 23.439381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542305, 37.939178, 23.385530>,  <35.205559, 37.742844, 23.295780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542305, 37.939178, 23.385530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216836, 0.073096, -0.973468,
		-0.494213, 0.868181, -0.044894,
		0.841864, 0.490835, 0.224378,
		35.794865, 38.086430, 23.452845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542088, 38.095200, 23.103636>,  <35.205559, 37.742844, 23.295780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542088, 38.095200, 23.103636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219666, 37.885731, 22.993330>,  <34.026215, 37.760048, 22.927147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219666, 37.885731, 22.993330>,  <34.542088, 38.095200, 23.103636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219666, 37.885731, 22.993330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249458, -0.121917, 0.960681,
		-0.536703, 0.843150, -0.032363,
		-0.806052, -0.523674, -0.275764,
		33.977848, 37.728630, 22.910601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998554, 38.362564, 23.444912>,  <34.542088, 38.095200, 23.103636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998554, 38.362564, 23.444912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.903091, 37.991322, 23.330605>,  <33.845814, 37.768578, 23.262020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.903091, 37.991322, 23.330605>,  <33.998554, 38.362564, 23.444912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903091, 37.991322, 23.330605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163972, -0.251534, 0.953858,
		-0.957160, 0.274504, -0.092152,
		-0.238658, -0.928105, -0.285769,
		33.831493, 37.712891, 23.244873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271526, 38.258121, 23.652828>,  <33.998554, 38.362564, 23.444912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271526, 38.258121, 23.652828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.432152, 37.894184, 23.611004>,  <33.528526, 37.675823, 23.585909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.432152, 37.894184, 23.611004>,  <33.271526, 38.258121, 23.652828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432152, 37.894184, 23.611004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310497, -0.242659, 0.919080,
		-0.861593, -0.336599, -0.379946,
		0.401559, -0.909845, -0.104560,
		33.552620, 37.621231, 23.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779617, 37.886147, 23.934238>,  <33.271526, 38.258121, 23.652828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779617, 37.886147, 23.934238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.082722, 37.625137, 23.932747>,  <33.264584, 37.468533, 23.931852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.082722, 37.625137, 23.932747>,  <32.779617, 37.886147, 23.934238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082722, 37.625137, 23.932747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324378, -0.381640, 0.865523,
		-0.566200, -0.654646, -0.500855,
		0.757757, -0.652526, -0.003731,
		33.310047, 37.429379, 23.931627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520679, 37.270321, 24.152042>,  <32.779617, 37.886147, 23.934238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520679, 37.270321, 24.152042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.908131, 37.185318, 24.203587>,  <33.140602, 37.134315, 24.234514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.908131, 37.185318, 24.203587>,  <32.520679, 37.270321, 24.152042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908131, 37.185318, 24.203587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231889, -0.586268, 0.776220,
		-0.089405, -0.781748, -0.617153,
		0.968625, -0.212509, 0.128863,
		33.198719, 37.121567, 24.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611458, 36.569221, 24.061480>,  <32.520679, 37.270321, 24.152042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611458, 36.569221, 24.061480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.903564, 36.708782, 24.296421>,  <33.078827, 36.792519, 24.437386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.903564, 36.708782, 24.296421>,  <32.611458, 36.569221, 24.061480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903564, 36.708782, 24.296421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273047, -0.639035, 0.719082,
		0.626229, -0.685494, -0.371397,
		0.730262, 0.348901, 0.587354,
		33.122643, 36.813454, 24.472628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904816, 35.977551, 24.377426>,  <32.611458, 36.569221, 24.061480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904816, 35.977551, 24.377426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.016201, 36.278374, 24.616379>,  <33.083035, 36.458866, 24.759750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.016201, 36.278374, 24.616379>,  <32.904816, 35.977551, 24.377426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016201, 36.278374, 24.616379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044106, -0.611315, 0.790158,
		0.959432, -0.246381, -0.137061,
		0.278467, 0.752057, 0.597382,
		33.099743, 36.503990, 24.795593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158760, 35.673153, 24.918644>,  <32.904816, 35.977551, 24.377426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158760, 35.673153, 24.918644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.121788, 36.041508, 25.070126>,  <33.099606, 36.262520, 25.161015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.121788, 36.041508, 25.070126>,  <33.158760, 35.673153, 24.918644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121788, 36.041508, 25.070126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147915, -0.388809, 0.909367,
		0.984672, 0.028036, 0.172151,
		-0.092429, 0.920892, 0.378703,
		33.094059, 36.317776, 25.183737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545155, 35.651501, 25.556057>,  <33.158760, 35.673153, 24.918644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545155, 35.651501, 25.556057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327087, 35.979591, 25.625372>,  <33.196247, 36.176445, 25.666960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327087, 35.979591, 25.625372>,  <33.545155, 35.651501, 25.556057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327087, 35.979591, 25.625372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189693, -0.322036, 0.927529,
		0.816585, 0.472786, 0.331153,
		-0.545166, 0.820223, 0.173286,
		33.163536, 36.225658, 25.677357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621059, 35.743313, 26.272606>,  <33.545155, 35.651501, 25.556057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621059, 35.743313, 26.272606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.335075, 36.013321, 26.199747>,  <33.163486, 36.175327, 26.156033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.335075, 36.013321, 26.199747>,  <33.621059, 35.743313, 26.272606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335075, 36.013321, 26.199747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276093, -0.033236, 0.960556,
		0.642344, 0.737048, 0.210131,
		-0.714960, 0.675023, -0.182145,
		33.120586, 36.215828, 26.145103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629051, 36.147488, 26.800734>,  <33.621059, 35.743313, 26.272606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629051, 36.147488, 26.800734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.265301, 36.231239, 26.656958>,  <33.047050, 36.281490, 26.570692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.265301, 36.231239, 26.656958>,  <33.629051, 36.147488, 26.800734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265301, 36.231239, 26.656958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364944, 0.013103, 0.930937,
		0.199627, 0.977747, 0.064495,
		-0.909376, 0.209377, -0.359438,
		32.992489, 36.294052, 26.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336990, 36.671787, 27.169512>,  <33.629051, 36.147488, 26.800734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336990, 36.671787, 27.169512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.090668, 36.396473, 27.016129>,  <32.942875, 36.231285, 26.924099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.090668, 36.396473, 27.016129>,  <33.336990, 36.671787, 27.169512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090668, 36.396473, 27.016129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410817, -0.134797, 0.901698,
		-0.672318, 0.712803, -0.199752,
		-0.615807, -0.688289, -0.383458,
		32.905926, 36.189987, 26.901091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.098137, 39.075420, 19.368765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041023, 38.680130, 19.346781>,  <34.006756, 38.442955, 19.333590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041023, 38.680130, 19.346781>,  <34.098137, 39.075420, 19.368765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041023, 38.680130, 19.346781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249214, -0.017845, 0.968284,
		-0.957865, 0.151952, -0.243732,
		-0.142784, -0.988227, -0.054961,
		33.998188, 38.383663, 19.330292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510658, 38.910530, 19.781954>,  <34.098137, 39.075420, 19.368765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510658, 38.910530, 19.781954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689087, 38.554630, 19.743252>,  <33.796146, 38.341091, 19.720030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689087, 38.554630, 19.743252>,  <33.510658, 38.910530, 19.781954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689087, 38.554630, 19.743252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028612, -0.122229, 0.992090,
		-0.894539, -0.439777, -0.079980,
		0.446075, -0.889751, -0.096755,
		33.822910, 38.287704, 19.714226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067577, 38.479660, 20.160103>,  <33.510658, 38.910530, 19.781954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067577, 38.479660, 20.160103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419830, 38.293453, 20.124840>,  <33.631184, 38.181728, 20.103682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419830, 38.293453, 20.124840>,  <33.067577, 38.479660, 20.160103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419830, 38.293453, 20.124840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057844, -0.290310, 0.955183,
		-0.470249, -0.836070, -0.282585,
		0.880637, -0.465519, -0.088157,
		33.684021, 38.153797, 20.098392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024956, 37.819775, 20.505833>,  <33.067577, 38.479660, 20.160103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024956, 37.819775, 20.505833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419140, 37.886444, 20.492617>,  <33.655651, 37.926445, 20.484686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419140, 37.886444, 20.492617>,  <33.024956, 37.819775, 20.505833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419140, 37.886444, 20.492617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063284, -0.179550, 0.981711,
		0.157691, -0.969527, -0.187487,
		0.985458, 0.166672, -0.033042,
		33.714779, 37.936447, 20.482704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218563, 37.361088, 20.914066>,  <33.024956, 37.819775, 20.505833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218563, 37.361088, 20.914066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551182, 37.582741, 20.898750>,  <33.750751, 37.715733, 20.889561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551182, 37.582741, 20.898750>,  <33.218563, 37.361088, 20.914066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551182, 37.582741, 20.898750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226270, -0.274980, 0.934445,
		0.507281, -0.785697, -0.354043,
		0.831545, 0.554136, -0.038288,
		33.800644, 37.748981, 20.887264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852978, 36.889893, 21.047447>,  <33.218563, 37.361088, 20.914066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852978, 36.889893, 21.047447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876072, 37.278767, 21.138243>,  <33.889927, 37.512093, 21.192720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876072, 37.278767, 21.138243>,  <33.852978, 36.889893, 21.047447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876072, 37.278767, 21.138243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251874, -0.234196, 0.938995,
		0.966036, 0.002960, -0.258389,
		0.057734, 0.972185, 0.226987,
		33.893391, 37.570423, 21.206339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270187, 36.775265, 21.582750>,  <33.852978, 36.889893, 21.047447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270187, 36.775265, 21.582750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147797, 37.155746, 21.598658>,  <34.074364, 37.384037, 21.608202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147797, 37.155746, 21.598658>,  <34.270187, 36.775265, 21.582750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147797, 37.155746, 21.598658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150516, 0.007086, 0.988582,
		0.940066, 0.308469, -0.145341,
		-0.305977, 0.951208, 0.039768,
		34.056004, 37.441109, 21.610588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798706, 37.157578, 21.968149>,  <34.270187, 36.775265, 21.582750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798706, 37.157578, 21.968149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459240, 37.368507, 21.984570>,  <34.255558, 37.495068, 21.994423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459240, 37.368507, 21.984570>,  <34.798706, 37.157578, 21.968149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459240, 37.368507, 21.984570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071752, 0.037882, 0.996703,
		0.524033, 0.848817, -0.069986,
		-0.848670, 0.527327, 0.041053,
		34.204639, 37.526707, 21.996885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845524, 37.549942, 22.541767>,  <34.798706, 37.157578, 21.968149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845524, 37.549942, 22.541767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453125, 37.576042, 22.468674>,  <34.217686, 37.591702, 22.424818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453125, 37.576042, 22.468674>,  <34.845524, 37.549942, 22.541767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453125, 37.576042, 22.468674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186349, -0.054377, 0.980978,
		0.054069, 0.996386, 0.065502,
		-0.980995, 0.065247, -0.182735,
		34.158825, 37.595615, 22.413853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359272, 38.136600, 22.657482>,  <34.845524, 37.549942, 22.541767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359272, 38.136600, 22.657482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699558, 38.116966, 22.866812>,  <35.903732, 38.105186, 22.992409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699558, 38.116966, 22.866812>,  <35.359272, 38.136600, 22.657482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699558, 38.116966, 22.866812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517317, -0.098079, -0.850155,
		0.093054, 0.993967, -0.058048,
		0.850720, -0.049081, 0.523323,
		35.954773, 38.102242, 23.023809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752487, 38.600468, 22.311918>,  <35.359272, 38.136600, 22.657482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752487, 38.600468, 22.311918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012390, 38.375469, 22.516434>,  <36.168331, 38.240471, 22.639143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012390, 38.375469, 22.516434>,  <35.752487, 38.600468, 22.311918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012390, 38.375469, 22.516434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570318, -0.083943, -0.817124,
		0.502547, 0.822529, 0.266258,
		0.649757, -0.562494, 0.511288,
		36.207317, 38.206722, 22.669821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319191, 38.860546, 22.227104>,  <35.752487, 38.600468, 22.311918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319191, 38.860546, 22.227104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426933, 38.487179, 22.321915>,  <36.491581, 38.263161, 22.378801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426933, 38.487179, 22.321915>,  <36.319191, 38.860546, 22.227104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426933, 38.487179, 22.321915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683948, 0.012144, -0.729430,
		0.677983, 0.358592, 0.641678,
		0.269361, -0.933415, 0.237025,
		36.507740, 38.207153, 22.393023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969570, 38.829037, 21.926067>,  <36.319191, 38.860546, 22.227104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969570, 38.829037, 21.926067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899399, 38.444004, 22.008696>,  <36.857296, 38.212986, 22.058271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899399, 38.444004, 22.008696>,  <36.969570, 38.829037, 21.926067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899399, 38.444004, 22.008696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586852, -0.270712, -0.763099,
		0.790462, -0.012641, 0.612380,
		-0.175425, -0.962577, 0.206569,
		36.846771, 38.155231, 22.070667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659065, 38.407127, 21.940716>,  <36.969570, 38.829037, 21.926067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659065, 38.407127, 21.940716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356350, 38.158581, 21.859543>,  <37.174721, 38.009453, 21.810839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356350, 38.158581, 21.859543>,  <37.659065, 38.407127, 21.940716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356350, 38.158581, 21.859543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529413, -0.400553, -0.747850,
		0.383400, -0.673399, 0.632091,
		-0.756787, -0.621363, -0.202934,
		37.129314, 37.972172, 21.798662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917072, 37.840584, 21.612316>,  <37.659065, 38.407127, 21.940716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917072, 37.840584, 21.612316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536308, 37.757187, 21.522512>,  <37.307850, 37.707150, 21.468630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536308, 37.757187, 21.522512>,  <37.917072, 37.840584, 21.612316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536308, 37.757187, 21.522512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303243, -0.536412, -0.787595,
		0.043780, -0.817797, 0.573839,
		-0.951907, -0.208494, -0.224507,
		37.250736, 37.694637, 21.455160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005684, 37.253765, 21.202671>,  <37.917072, 37.840584, 21.612316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005684, 37.253765, 21.202671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 37.409508, 21.136002>,  <37.425919, 37.502953, 21.096001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 37.409508, 21.136002>,  <38.005684, 37.253765, 21.202671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643330, 37.409508, 21.136002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034730, -0.460497, -0.886981,
		-0.422095, -0.797716, 0.430680,
		-0.905886, 0.389348, -0.166669,
		37.371563, 37.526314, 21.086000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497906, 36.732769, 20.901403>,  <38.005684, 37.253765, 21.202671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497906, 36.732769, 20.901403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362965, 37.090958, 20.785254>,  <37.282001, 37.305870, 20.715565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362965, 37.090958, 20.785254>,  <37.497906, 36.732769, 20.901403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362965, 37.090958, 20.785254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080494, -0.334765, -0.938857,
		-0.937931, -0.293352, 0.185014,
		-0.337352, 0.895476, -0.290373,
		37.261761, 37.359600, 20.698141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063843, 36.563694, 20.360483>,  <37.497906, 36.732769, 20.901403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063843, 36.563694, 20.360483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129250, 36.954357, 20.304766>,  <37.168495, 37.188755, 20.271336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129250, 36.954357, 20.304766>,  <37.063843, 36.563694, 20.360483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129250, 36.954357, 20.304766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010539, -0.142916, -0.989679,
		-0.986484, 0.160364, -0.033662,
		0.163520, 0.976657, -0.139294,
		37.178307, 37.247353, 20.262978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626545, 36.815334, 19.811819>,  <37.063843, 36.563694, 20.360483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626545, 36.815334, 19.811819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918312, 37.087986, 19.834900>,  <37.093372, 37.251579, 19.848747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918312, 37.087986, 19.834900>,  <36.626545, 36.815334, 19.811819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918312, 37.087986, 19.834900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145583, -0.072265, -0.986703,
		-0.668400, 0.728117, -0.151945,
		0.729416, 0.681633, 0.057700,
		37.137138, 37.292477, 19.852209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592525, 37.113564, 19.163799>,  <36.626545, 36.815334, 19.811819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592525, 37.113564, 19.163799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949600, 37.238167, 19.294079>,  <37.163845, 37.312927, 19.372246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949600, 37.238167, 19.294079>,  <36.592525, 37.113564, 19.163799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949600, 37.238167, 19.294079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329365, 0.042365, -0.943252,
		-0.307627, 0.949299, -0.064780,
		0.892684, 0.311506, 0.325698,
		37.217407, 37.331619, 19.391788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782997, 37.686615, 18.751118>,  <36.592525, 37.113564, 19.163799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782997, 37.686615, 18.751118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126675, 37.559803, 18.911757>,  <37.332882, 37.483715, 19.008139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126675, 37.559803, 18.911757>,  <36.782997, 37.686615, 18.751118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126675, 37.559803, 18.911757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446138, 0.079934, -0.891387,
		0.250499, 0.945040, 0.210120,
		0.859192, -0.317034, 0.401595,
		37.384434, 37.464691, 19.032234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274994, 38.086620, 18.466181>,  <36.782997, 37.686615, 18.751118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274994, 38.086620, 18.466181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481689, 37.766953, 18.589022>,  <37.605709, 37.575153, 18.662727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481689, 37.766953, 18.589022>,  <37.274994, 38.086620, 18.466181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481689, 37.766953, 18.589022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586974, 0.069573, -0.806611,
		0.623250, 0.597071, 0.505040,
		0.516741, -0.799165, 0.307104,
		37.636711, 37.527203, 18.681152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972290, 38.163277, 18.190933>,  <37.274994, 38.086620, 18.466181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972290, 38.163277, 18.190933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941296, 37.773743, 18.276382>,  <37.922699, 37.540020, 18.327652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941296, 37.773743, 18.276382>,  <37.972290, 38.163277, 18.190933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941296, 37.773743, 18.276382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406994, -0.226497, -0.884904,
		0.910138, 0.018373, 0.413897,
		-0.077488, -0.973839, 0.213621,
		37.918049, 37.481590, 18.340469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.147942, 31.845644, 17.996622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876720, 32.138714, 18.020061>,  <34.713989, 32.314556, 18.034124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.876720, 32.138714, 18.020061>,  <35.147942, 31.845644, 17.996622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876720, 32.138714, 18.020061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043875, -0.039237, 0.998266,
		0.733706, 0.679445, -0.005542,
		-0.678049, 0.732677, 0.058599,
		34.673306, 32.358517, 18.037642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392178, 32.357174, 18.572657>,  <35.147942, 31.845644, 17.996622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392178, 32.357174, 18.572657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.005974, 32.443275, 18.514055>,  <34.774254, 32.494938, 18.478895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.005974, 32.443275, 18.514055>,  <35.392178, 32.357174, 18.572657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005974, 32.443275, 18.514055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102179, 0.204287, 0.973564,
		0.239495, 0.954951, -0.175246,
		-0.965506, 0.215258, -0.146502,
		34.716324, 32.507854, 18.470104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309837, 32.927982, 18.893627>,  <35.392178, 32.357174, 18.572657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309837, 32.927982, 18.893627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949146, 32.758034, 18.861715>,  <34.732731, 32.656063, 18.842567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949146, 32.758034, 18.861715>,  <35.309837, 32.927982, 18.893627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949146, 32.758034, 18.861715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137465, 0.106840, 0.984728,
		-0.409861, 0.898926, -0.154746,
		-0.901730, -0.424873, -0.079782,
		34.678627, 32.630573, 18.837780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786190, 33.303833, 19.113245>,  <35.309837, 32.927982, 18.893627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786190, 33.303833, 19.113245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610855, 32.947075, 19.157747>,  <34.505653, 32.733021, 19.184448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610855, 32.947075, 19.157747>,  <34.786190, 33.303833, 19.113245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610855, 32.947075, 19.157747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028156, 0.110092, 0.993522,
		-0.898369, 0.438631, -0.023145,
		-0.438338, -0.891898, 0.111254,
		34.479355, 32.679504, 19.191124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287815, 33.392525, 19.674410>,  <34.786190, 33.303833, 19.113245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287815, 33.392525, 19.674410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.346062, 32.998112, 19.642059>,  <34.381008, 32.761463, 19.622648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.346062, 32.998112, 19.642059>,  <34.287815, 33.392525, 19.674410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346062, 32.998112, 19.642059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070803, -0.091925, 0.993246,
		-0.986805, -0.138905, -0.083200,
		0.145615, -0.986030, -0.080877,
		34.389748, 32.702301, 19.617796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682587, 33.130657, 20.004532>,  <34.287815, 33.392525, 19.674410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682587, 33.130657, 20.004532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975258, 32.858265, 19.992447>,  <34.150860, 32.694828, 19.985195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975258, 32.858265, 19.992447>,  <33.682587, 33.130657, 20.004532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975258, 32.858265, 19.992447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016925, -0.062457, 0.997904,
		-0.681442, -0.729632, -0.057224,
		0.731677, -0.680982, -0.030212,
		34.194759, 32.653969, 19.983383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513649, 32.624386, 20.386137>,  <33.682587, 33.130657, 20.004532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513649, 32.624386, 20.386137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908131, 32.559784, 20.400606>,  <34.144821, 32.521023, 20.409288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.908131, 32.559784, 20.400606>,  <33.513649, 32.624386, 20.386137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908131, 32.559784, 20.400606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033185, 0.021173, 0.999225,
		-0.162147, -0.986645, 0.015522,
		0.986208, -0.161506, 0.036175,
		34.203995, 32.511333, 20.411459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630451, 32.186859, 20.860033>,  <33.513649, 32.624386, 20.386137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630451, 32.186859, 20.860033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999405, 32.341145, 20.851793>,  <34.220779, 32.433716, 20.846849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.999405, 32.341145, 20.851793>,  <33.630451, 32.186859, 20.860033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999405, 32.341145, 20.851793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026518, -0.010031, 0.999598,
		0.385353, -0.922563, -0.019481,
		0.922388, 0.385715, -0.020600,
		34.276123, 32.456860, 20.845613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999413, 31.882408, 21.386433>,  <33.630451, 32.186859, 20.860033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999413, 31.882408, 21.386433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239197, 32.193863, 21.312273>,  <34.383068, 32.380737, 21.267776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239197, 32.193863, 21.312273>,  <33.999413, 31.882408, 21.386433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239197, 32.193863, 21.312273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007180, 0.226393, 0.974010,
		0.800375, -0.585208, 0.130122,
		0.599456, 0.778639, -0.185401,
		34.419033, 32.427456, 21.256653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553787, 31.831896, 21.853390>,  <33.999413, 31.882408, 21.386433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553787, 31.831896, 21.853390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556358, 32.216335, 21.742935>,  <34.557903, 32.446999, 21.676662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556358, 32.216335, 21.742935>,  <34.553787, 31.831896, 21.853390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556358, 32.216335, 21.742935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053367, 0.276078, 0.959652,
		0.998554, 0.008566, 0.053066,
		0.006430, 0.961097, -0.276136,
		34.558289, 32.504665, 21.660095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908852, 32.126202, 22.271162>,  <34.553787, 31.831896, 21.853390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908852, 32.126202, 22.271162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727985, 32.457623, 22.139071>,  <34.619465, 32.656475, 22.059816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727985, 32.457623, 22.139071>,  <34.908852, 32.126202, 22.271162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727985, 32.457623, 22.139071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075522, 0.404475, 0.911426,
		0.888733, 0.387173, -0.245462,
		-0.452162, 0.828552, -0.330230,
		34.592339, 32.706188, 22.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345127, 32.621193, 22.401476>,  <34.908852, 32.126202, 22.271162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345127, 32.621193, 22.401476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977627, 32.777035, 22.375835>,  <34.757126, 32.870541, 22.360451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.977627, 32.777035, 22.375835>,  <35.345127, 32.621193, 22.401476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977627, 32.777035, 22.375835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068915, 0.318075, 0.945557,
		0.388784, 0.864311, -0.319081,
		-0.918748, 0.389607, -0.064099,
		34.702003, 32.893917, 22.356606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402393, 33.328304, 22.594133>,  <35.345127, 32.621193, 22.401476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402393, 33.328304, 22.594133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025387, 33.206703, 22.649630>,  <34.799183, 33.133743, 22.682928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025387, 33.206703, 22.649630>,  <35.402393, 33.328304, 22.594133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025387, 33.206703, 22.649630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026056, 0.347057, 0.937482,
		-0.333152, 0.887204, -0.319185,
		-0.942513, -0.304008, 0.138740,
		34.742634, 33.115501, 22.691252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192627, 33.858227, 23.067455>,  <35.402393, 33.328304, 22.594133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192627, 33.858227, 23.067455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922543, 33.564812, 23.098488>,  <34.760494, 33.388763, 23.117107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922543, 33.564812, 23.098488>,  <35.192627, 33.858227, 23.067455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922543, 33.564812, 23.098488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021763, 0.085321, 0.996116,
		-0.737306, 0.674274, -0.041645,
		-0.675208, -0.733536, 0.077582,
		34.719978, 33.344749, 23.121763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366932, 34.608891, 23.061533>,  <35.192627, 33.858227, 23.067455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366932, 34.608891, 23.061533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752056, 34.611214, 23.169582>,  <35.983131, 34.612606, 23.234411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752056, 34.611214, 23.169582>,  <35.366932, 34.608891, 23.061533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752056, 34.611214, 23.169582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267763, -0.154092, -0.951083,
		0.036103, 0.988039, -0.149915,
		0.962808, 0.005805, 0.270123,
		36.040897, 34.612957, 23.250620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644188, 34.962471, 22.518322>,  <35.366932, 34.608891, 23.061533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644188, 34.962471, 22.518322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941872, 34.756203, 22.688145>,  <36.120480, 34.632442, 22.790037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941872, 34.756203, 22.688145>,  <35.644188, 34.962471, 22.518322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941872, 34.756203, 22.688145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397629, -0.168695, -0.901905,
		0.536703, 0.840017, 0.079501,
		0.744205, -0.515668, 0.424554,
		36.165134, 34.601501, 22.815512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214912, 35.276207, 22.207516>,  <35.644188, 34.962471, 22.518322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214912, 35.276207, 22.207516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347939, 34.934090, 22.366447>,  <36.427753, 34.728817, 22.461805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347939, 34.934090, 22.366447>,  <36.214912, 35.276207, 22.207516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347939, 34.934090, 22.366447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268994, -0.317779, -0.909208,
		0.903905, 0.409248, 0.124388,
		0.332563, -0.855297, 0.397327,
		36.447708, 34.677502, 22.485645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939777, 35.205029, 22.099518>,  <36.214912, 35.276207, 22.207516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939777, 35.205029, 22.099518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822491, 34.826157, 22.151470>,  <36.752117, 34.598831, 22.182642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822491, 34.826157, 22.151470>,  <36.939777, 35.205029, 22.099518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822491, 34.826157, 22.151470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429058, -0.251776, -0.867478,
		0.854361, -0.198634, 0.480221,
		-0.293219, -0.947182, 0.129881,
		36.734524, 34.542004, 22.190435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547020, 34.756279, 22.069258>,  <36.939777, 35.205029, 22.099518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547020, 34.756279, 22.069258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.233986, 34.520153, 21.990166>,  <37.046165, 34.378479, 21.942711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.233986, 34.520153, 21.990166>,  <37.547020, 34.756279, 22.069258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233986, 34.520153, 21.990166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435798, -0.292640, -0.851141,
		0.444575, -0.752258, 0.486272,
		-0.782581, -0.590313, -0.197732,
		36.999210, 34.343060, 21.930845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851570, 34.229290, 21.729301>,  <37.547020, 34.756279, 22.069258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851570, 34.229290, 21.729301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465809, 34.182152, 21.634619>,  <37.234352, 34.153870, 21.577808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465809, 34.182152, 21.634619>,  <37.851570, 34.229290, 21.729301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465809, 34.182152, 21.634619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261174, -0.284709, -0.922350,
		0.041304, -0.951342, 0.305355,
		-0.964408, -0.117848, -0.236706,
		37.176487, 34.146797, 21.563606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910065, 33.806843, 21.244465>,  <37.851570, 34.229290, 21.729301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910065, 33.806843, 21.244465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527843, 33.918484, 21.206467>,  <37.298512, 33.985470, 21.183668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527843, 33.918484, 21.206467>,  <37.910065, 33.806843, 21.244465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527843, 33.918484, 21.206467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021731, -0.254661, -0.966786,
		-0.294034, -0.925875, 0.237276,
		-0.955548, 0.279112, -0.094999,
		37.241180, 34.002216, 21.177967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590897, 33.220951, 20.911907>,  <37.910065, 33.806843, 21.244465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590897, 33.220951, 20.911907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393990, 33.557552, 20.822866>,  <37.275845, 33.759514, 20.769442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393990, 33.557552, 20.822866>,  <37.590897, 33.220951, 20.911907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393990, 33.557552, 20.822866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030035, -0.239158, -0.970516,
		-0.869928, -0.484435, 0.092454,
		-0.492263, 0.841502, -0.222601,
		37.246311, 33.810001, 20.756086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272202, 32.995365, 20.400272>,  <37.590897, 33.220951, 20.911907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272202, 32.995365, 20.400272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225594, 33.389946, 20.354082>,  <37.197628, 33.626694, 20.326368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225594, 33.389946, 20.354082>,  <37.272202, 32.995365, 20.400272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225594, 33.389946, 20.354082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066485, -0.123753, -0.990083,
		-0.990961, -0.107686, 0.080004,
		-0.116519, 0.986453, -0.115475,
		37.190639, 33.685883, 20.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791050, 33.072918, 19.921692>,  <37.272202, 32.995365, 20.400272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791050, 33.072918, 19.921692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023026, 33.397449, 19.892279>,  <37.162212, 33.592171, 19.874630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023026, 33.397449, 19.892279>,  <36.791050, 33.072918, 19.921692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023026, 33.397449, 19.892279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042170, -0.120042, -0.991873,
		-0.813566, 0.572127, -0.103831,
		0.579941, 0.811333, -0.073535,
		37.197006, 33.640850, 19.870218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427437, 33.730106, 19.494328>,  <36.791050, 33.072918, 19.921692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427437, 33.730106, 19.494328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.826195, 33.721962, 19.463900>,  <37.065449, 33.717075, 19.445642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.826195, 33.721962, 19.463900>,  <36.427437, 33.730106, 19.494328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826195, 33.721962, 19.463900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073410, 0.109330, -0.991291,
		0.028499, 0.993797, 0.107496,
		0.996895, -0.020359, -0.076071,
		37.125263, 33.715855, 19.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590950, 34.275505, 19.091528>,  <36.427437, 33.730106, 19.494328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590950, 34.275505, 19.091528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907951, 34.033897, 19.057821>,  <37.098152, 33.888931, 19.037598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907951, 34.033897, 19.057821>,  <36.590950, 34.275505, 19.091528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907951, 34.033897, 19.057821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038383, 0.088500, -0.995336,
		0.608662, 0.792039, 0.046952,
		0.792501, -0.604021, -0.084267,
		37.145702, 33.852692, 19.032541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197979, 34.626896, 18.731035>,  <36.590950, 34.275505, 19.091528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197979, 34.626896, 18.731035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273422, 34.234978, 18.704422>,  <37.318687, 33.999828, 18.688454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273422, 34.234978, 18.704422>,  <37.197979, 34.626896, 18.731035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273422, 34.234978, 18.704422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005662, 0.066661, -0.997760,
		0.982036, 0.188565, 0.007025,
		0.188611, -0.979796, -0.066531,
		37.330006, 33.941040, 18.684464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708420, 34.578949, 18.331493>,  <37.197979, 34.626896, 18.731035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708420, 34.578949, 18.331493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511730, 34.235069, 18.276163>,  <37.393719, 34.028744, 18.242966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511730, 34.235069, 18.276163>,  <37.708420, 34.578949, 18.331493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511730, 34.235069, 18.276163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096109, 0.211472, -0.972647,
		0.865433, -0.464975, -0.186610,
		-0.491720, -0.859696, -0.138326,
		37.364216, 33.977161, 18.234665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488808, 34.624477, 18.441813>,  <37.708420, 34.578949, 18.331493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488808, 34.624477, 18.441813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878166, 34.702854, 18.394293>,  <39.111782, 34.749878, 18.365782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878166, 34.702854, 18.394293>,  <38.488808, 34.624477, 18.441813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878166, 34.702854, 18.394293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087297, 0.162255, 0.982880,
		0.211864, -0.967099, 0.140833,
		0.973392, 0.195943, -0.118800,
		39.170185, 34.761635, 18.358652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839043, 34.216602, 18.922140>,  <38.488808, 34.624477, 18.441813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839043, 34.216602, 18.922140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.104015, 34.503891, 18.836962>,  <39.263000, 34.676262, 18.785854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.104015, 34.503891, 18.836962>,  <38.839043, 34.216602, 18.922140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104015, 34.503891, 18.836962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168651, 0.133981, 0.976528,
		0.729890, -0.682798, -0.032375,
		0.662434, 0.718217, -0.212946,
		39.302746, 34.719357, 18.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415024, 33.954834, 19.192533>,  <38.839043, 34.216602, 18.922140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415024, 33.954834, 19.192533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483696, 34.345531, 19.141150>,  <39.524899, 34.579948, 19.110319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483696, 34.345531, 19.141150>,  <39.415024, 33.954834, 19.192533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483696, 34.345531, 19.141150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180579, 0.096988, 0.978767,
		0.968461, -0.191233, -0.159728,
		0.171681, 0.976741, -0.128462,
		39.535202, 34.638554, 19.102612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036610, 34.048382, 19.442371>,  <39.415024, 33.954834, 19.192533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036610, 34.048382, 19.442371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846016, 34.399822, 19.455194>,  <39.731659, 34.610687, 19.462889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.846016, 34.399822, 19.455194>,  <40.036610, 34.048382, 19.442371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846016, 34.399822, 19.455194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266666, 0.109680, 0.957528,
		0.837767, 0.464794, -0.286553,
		-0.476482, 0.878600, 0.032058,
		39.703072, 34.663403, 19.464811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530277, 34.408577, 19.835785>,  <40.036610, 34.048382, 19.442371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530277, 34.408577, 19.835785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174988, 34.590378, 19.862564>,  <39.961815, 34.699459, 19.878632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174988, 34.590378, 19.862564>,  <40.530277, 34.408577, 19.835785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174988, 34.590378, 19.862564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133872, 0.116667, 0.984107,
		0.439467, 0.883073, -0.164472,
		-0.888227, 0.454501, 0.066948,
		39.908520, 34.726727, 19.882648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661358, 35.004475, 20.330982>,  <40.530277, 34.408577, 19.835785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661358, 35.004475, 20.330982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268784, 34.930157, 20.311924>,  <40.033241, 34.885567, 20.300489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268784, 34.930157, 20.311924>,  <40.661358, 35.004475, 20.330982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268784, 34.930157, 20.311924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084154, 0.193881, 0.977409,
		-0.172363, 0.963270, -0.205917,
		-0.981432, -0.185798, -0.047645,
		39.974354, 34.874416, 20.297630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469826, 35.493824, 20.789860>,  <40.661358, 35.004475, 20.330982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469826, 35.493824, 20.789860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169594, 35.234947, 20.736546>,  <39.989452, 35.079620, 20.704557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.169594, 35.234947, 20.736546>,  <40.469826, 35.493824, 20.789860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169594, 35.234947, 20.736546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222060, 0.057078, 0.973361,
		-0.622347, 0.760185, -0.186558,
		-0.750582, -0.647195, -0.133284,
		39.944420, 35.040791, 20.696560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957169, 35.772774, 21.178160>,  <40.469826, 35.493824, 20.789860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957169, 35.772774, 21.178160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847935, 35.389690, 21.141905>,  <39.782394, 35.159840, 21.120152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847935, 35.389690, 21.141905>,  <39.957169, 35.772774, 21.178160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847935, 35.389690, 21.141905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346295, 0.009963, 0.938073,
		-0.897500, 0.287557, -0.334371,
		-0.273081, -0.957712, -0.090637,
		39.766010, 35.102375, 21.114714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172401, 35.687859, 21.380610>,  <39.957169, 35.772774, 21.178160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172401, 35.687859, 21.380610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.380962, 35.352192, 21.442486>,  <39.506100, 35.150791, 21.479610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.380962, 35.352192, 21.442486>,  <39.172401, 35.687859, 21.380610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380962, 35.352192, 21.442486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275358, 0.006118, 0.961322,
		-0.807661, -0.543832, -0.227883,
		0.521404, -0.839172, 0.154690,
		39.537384, 35.100441, 21.488894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758045, 35.336460, 21.920801>,  <39.172401, 35.687859, 21.380610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758045, 35.336460, 21.920801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.109203, 35.146221, 21.898542>,  <39.319901, 35.032078, 21.885187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.109203, 35.146221, 21.898542>,  <38.758045, 35.336460, 21.920801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109203, 35.146221, 21.898542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003456, -0.109913, 0.993935,
		-0.478833, -0.872767, -0.094849,
		0.877899, -0.475601, -0.055646,
		39.372574, 35.003540, 21.881849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821796, 34.772358, 22.511536>,  <38.758045, 35.336460, 21.920801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821796, 34.772358, 22.511536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.200188, 34.813107, 22.388409>,  <39.427223, 34.837555, 22.314533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.200188, 34.813107, 22.388409>,  <38.821796, 34.772358, 22.511536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200188, 34.813107, 22.388409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318650, -0.116653, 0.940667,
		0.059917, -0.987935, -0.142812,
		0.945977, 0.101869, -0.307816,
		39.483982, 34.843666, 22.296064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189342, 34.283936, 22.833345>,  <38.821796, 34.772358, 22.511536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189342, 34.283936, 22.833345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436943, 34.580410, 22.729435>,  <39.585503, 34.758293, 22.667088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436943, 34.580410, 22.729435>,  <39.189342, 34.283936, 22.833345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436943, 34.580410, 22.729435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315601, 0.068145, 0.946442,
		0.719193, -0.667831, -0.191738,
		0.618997, 0.741187, -0.259778,
		39.622643, 34.802765, 22.651503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804565, 34.048500, 23.127794>,  <39.189342, 34.283936, 22.833345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804565, 34.048500, 23.127794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792927, 34.444946, 23.075880>,  <39.785942, 34.682816, 23.044731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.792927, 34.444946, 23.075880>,  <39.804565, 34.048500, 23.127794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792927, 34.444946, 23.075880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334563, 0.132006, 0.933082,
		0.941924, -0.016271, -0.335432,
		-0.029097, 0.991116, -0.129783,
		39.784199, 34.742279, 23.036945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396744, 34.325409, 23.301714>,  <39.804565, 34.048500, 23.127794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396744, 34.325409, 23.301714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136288, 34.624180, 23.355560>,  <39.980015, 34.803440, 23.387869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.136288, 34.624180, 23.355560>,  <40.396744, 34.325409, 23.301714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136288, 34.624180, 23.355560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317166, 0.106655, 0.942354,
		0.689508, 0.656301, -0.306346,
		-0.651141, 0.746923, 0.134617,
		39.940945, 34.848255, 23.395945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.739422, 37.777012, 18.066792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457924, 37.494537, 18.035702>,  <38.289024, 37.325050, 18.017048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457924, 37.494537, 18.035702>,  <38.739422, 37.777012, 18.066792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457924, 37.494537, 18.035702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273859, -0.168694, -0.946860,
		0.655551, -0.687632, 0.312114,
		-0.703743, -0.706191, -0.077726,
		38.246799, 37.282681, 18.012384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065388, 37.212341, 17.826822>,  <38.739422, 37.777012, 18.066792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065388, 37.212341, 17.826822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680367, 37.156540, 17.733837>,  <38.449356, 37.123058, 17.678047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.680367, 37.156540, 17.733837>,  <39.065388, 37.212341, 17.826822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680367, 37.156540, 17.733837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265992, -0.320165, -0.909254,
		0.052415, -0.937035, 0.345280,
		-0.962549, -0.139501, -0.232462,
		38.391602, 37.114689, 17.664099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085457, 36.555016, 17.272385>,  <39.065388, 37.212341, 17.826822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085457, 36.555016, 17.272385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728001, 36.731804, 17.241224>,  <38.513527, 36.837875, 17.222528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728001, 36.731804, 17.241224>,  <39.085457, 36.555016, 17.272385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728001, 36.731804, 17.241224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028213, -0.228569, -0.973119,
		-0.447893, -0.867422, 0.216728,
		-0.893642, 0.441968, -0.077901,
		38.459908, 36.864395, 17.217854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767204, 36.223011, 16.812395>,  <39.085457, 36.555016, 17.272385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767204, 36.223011, 16.812395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552608, 36.560436, 16.802803>,  <38.423851, 36.762890, 16.797049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552608, 36.560436, 16.802803>,  <38.767204, 36.223011, 16.812395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552608, 36.560436, 16.802803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092115, -0.086782, -0.991960,
		-0.838863, -0.529970, 0.124263,
		-0.536493, 0.843564, -0.023980,
		38.391659, 36.813507, 16.795609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182911, 36.112286, 16.256880>,  <38.767204, 36.223011, 16.812395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182911, 36.112286, 16.256880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228184, 36.506844, 16.304556>,  <38.255348, 36.743580, 16.333162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228184, 36.506844, 16.304556>,  <38.182911, 36.112286, 16.256880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228184, 36.506844, 16.304556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124688, 0.104914, -0.986634,
		-0.985719, 0.126532, -0.111117,
		0.113183, 0.986399, 0.119192,
		38.262138, 36.802765, 16.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729710, 36.486057, 15.789050>,  <38.182911, 36.112286, 16.256880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729710, 36.486057, 15.789050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019962, 36.749290, 15.869444>,  <38.194115, 36.907230, 15.917680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019962, 36.749290, 15.869444>,  <37.729710, 36.486057, 15.789050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019962, 36.749290, 15.869444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117617, 0.169166, -0.978544,
		-0.677960, 0.733699, 0.045350,
		0.725629, 0.658080, 0.200983,
		38.237652, 36.946712, 15.929739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579517, 37.134289, 15.408353>,  <37.729710, 36.486057, 15.789050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579517, 37.134289, 15.408353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974487, 37.126755, 15.471127>,  <38.211472, 37.122234, 15.508791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974487, 37.126755, 15.471127>,  <37.579517, 37.134289, 15.408353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974487, 37.126755, 15.471127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154566, 0.322688, -0.933800,
		-0.033050, 0.946318, 0.321543,
		0.987430, -0.018837, 0.156933,
		38.270718, 37.121105, 15.518207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754921, 37.654720, 15.051600>,  <37.579517, 37.134289, 15.408353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754921, 37.654720, 15.051600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.101013, 37.467461, 15.123383>,  <38.308670, 37.355106, 15.166452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.101013, 37.467461, 15.123383>,  <37.754921, 37.654720, 15.051600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101013, 37.467461, 15.123383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264431, 0.122004, -0.956656,
		0.425964, 0.875186, 0.229355,
		0.865234, -0.468150, 0.179458,
		38.360584, 37.327015, 15.177219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256088, 38.194912, 14.922680>,  <37.754921, 37.654720, 15.051600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256088, 38.194912, 14.922680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439606, 37.844791, 14.861555>,  <38.549717, 37.634720, 14.824881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439606, 37.844791, 14.861555>,  <38.256088, 38.194912, 14.922680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439606, 37.844791, 14.861555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253391, 0.293725, -0.921693,
		0.851648, 0.384143, 0.356553,
		0.458791, -0.875305, -0.152812,
		38.577244, 37.582199, 14.815711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985516, 38.328468, 14.625811>,  <38.256088, 38.194912, 14.922680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985516, 38.328468, 14.625811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891212, 37.949306, 14.540121>,  <38.834629, 37.721809, 14.488708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891212, 37.949306, 14.540121>,  <38.985516, 38.328468, 14.625811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891212, 37.949306, 14.540121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293257, 0.140769, -0.945613,
		0.926509, -0.285759, 0.244793,
		-0.235758, -0.947906, -0.214225,
		38.820484, 37.664936, 14.475854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540981, 38.106194, 14.365389>,  <38.985516, 38.328468, 14.625811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540981, 38.106194, 14.365389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252975, 37.855389, 14.246440>,  <39.080170, 37.704906, 14.175071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252975, 37.855389, 14.246440>,  <39.540981, 38.106194, 14.365389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252975, 37.855389, 14.246440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283157, 0.125774, -0.950791,
		0.633560, -0.768788, 0.086984,
		-0.720016, -0.627013, -0.297373,
		39.036972, 37.667286, 14.157228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865215, 37.669506, 14.034858>,  <39.540981, 38.106194, 14.365389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865215, 37.669506, 14.034858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488865, 37.625626, 13.906655>,  <39.263054, 37.599297, 13.829734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488865, 37.625626, 13.906655>,  <39.865215, 37.669506, 14.034858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488865, 37.625626, 13.906655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320588, 0.017365, -0.947060,
		0.109464, -0.993812, 0.018832,
		-0.940873, -0.109707, -0.320505,
		39.206604, 37.592716, 13.810504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970226, 37.052589, 13.608596>,  <39.865215, 37.669506, 14.034858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970226, 37.052589, 13.608596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321850, 37.156265, 13.768638>,  <40.532822, 37.218472, 13.864663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.321850, 37.156265, 13.768638>,  <39.970226, 37.052589, 13.608596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321850, 37.156265, 13.768638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028927, 0.866740, -0.497921,
		-0.475842, 0.426126, 0.769409,
		0.879055, 0.259189, 0.400105,
		40.585567, 37.234020, 13.888669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178745, 36.626095, 12.979622>,  <39.970226, 37.052589, 13.608596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178745, 36.626095, 12.979622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.575935, 36.625282, 13.026952>,  <40.814247, 36.624794, 13.055349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.575935, 36.625282, 13.026952>,  <40.178745, 36.626095, 12.979622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575935, 36.625282, 13.026952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022893, -0.977669, -0.208902,
		0.116107, 0.210143, -0.970752,
		0.992973, -0.002031, 0.118325,
		40.873829, 36.624672, 13.062449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907589, 35.938110, 13.049415>,  <40.178745, 36.626095, 12.979622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907589, 35.938110, 13.049415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820568, 35.562248, 12.943801>,  <39.768356, 35.336731, 12.880432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820568, 35.562248, 12.943801>,  <39.907589, 35.938110, 13.049415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820568, 35.562248, 12.943801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047999, -0.280486, 0.958657,
		-0.974868, 0.195882, 0.106122,
		-0.217550, -0.939658, -0.264035,
		39.755302, 35.280350, 12.864591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400101, 35.756023, 13.538782>,  <39.907589, 35.938110, 13.049415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400101, 35.756023, 13.538782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501312, 35.404995, 13.375885>,  <39.562038, 35.194378, 13.278147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501312, 35.404995, 13.375885>,  <39.400101, 35.756023, 13.538782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501312, 35.404995, 13.375885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075244, -0.437518, 0.896056,
		-0.964527, -0.196089, -0.176738,
		0.253032, -0.877569, -0.407243,
		39.577221, 35.141724, 13.253712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966370, 35.263474, 13.773458>,  <39.400101, 35.756023, 13.538782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966370, 35.263474, 13.773458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279518, 35.030743, 13.685283>,  <39.467407, 34.891106, 13.632377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279518, 35.030743, 13.685283>,  <38.966370, 35.263474, 13.773458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279518, 35.030743, 13.685283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076976, -0.442150, 0.893632,
		-0.617406, -0.682629, -0.390932,
		0.782869, -0.581826, -0.220440,
		39.514378, 34.856194, 13.619151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846432, 34.617146, 14.048746>,  <38.966370, 35.263474, 13.773458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846432, 34.617146, 14.048746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243431, 34.600498, 14.002766>,  <39.481632, 34.590508, 13.975178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243431, 34.600498, 14.002766>,  <38.846432, 34.617146, 14.048746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243431, 34.600498, 14.002766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097308, -0.300265, 0.948879,
		-0.074008, -0.952947, -0.293963,
		0.992499, -0.041620, -0.114951,
		39.541180, 34.588013, 13.968280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114197, 34.023010, 14.332614>,  <38.846432, 34.617146, 14.048746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114197, 34.023010, 14.332614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416618, 34.284813, 14.332567>,  <39.598072, 34.441895, 14.332539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416618, 34.284813, 14.332567>,  <39.114197, 34.023010, 14.332614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416618, 34.284813, 14.332567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190245, -0.219591, 0.956863,
		0.626247, -0.723465, -0.290539,
		0.756056, 0.654507, -0.000117,
		39.643436, 34.481163, 14.332532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579353, 33.662052, 14.758688>,  <39.114197, 34.023010, 14.332614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579353, 33.662052, 14.758688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722301, 34.034882, 14.734949>,  <39.808071, 34.258579, 14.720706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722301, 34.034882, 14.734949>,  <39.579353, 33.662052, 14.758688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722301, 34.034882, 14.734949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297977, -0.053567, 0.953069,
		0.885152, -0.358287, -0.296880,
		0.357375, 0.932074, -0.059346,
		39.829514, 34.314503, 14.717145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216091, 33.654049, 15.068618>,  <39.579353, 33.662052, 14.758688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216091, 33.654049, 15.068618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079002, 34.028259, 15.102880>,  <39.996750, 34.252785, 15.123437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079002, 34.028259, 15.102880>,  <40.216091, 33.654049, 15.068618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079002, 34.028259, 15.102880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198975, -0.016821, 0.979860,
		0.918124, 0.352860, -0.180381,
		-0.342720, 0.935525, 0.085654,
		39.976185, 34.308918, 15.128575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426128, 33.828949, 15.780227>,  <40.216091, 33.654049, 15.068618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426128, 33.828949, 15.780227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181496, 34.125759, 15.670414>,  <40.034718, 34.303844, 15.604527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181496, 34.125759, 15.670414>,  <40.426128, 33.828949, 15.780227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181496, 34.125759, 15.670414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113209, 0.261345, 0.958584,
		0.783042, 0.617329, -0.075829,
		-0.611579, 0.742027, -0.274531,
		39.998024, 34.348366, 15.588055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724144, 34.386967, 16.072966>,  <40.426128, 33.828949, 15.780227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724144, 34.386967, 16.072966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.339085, 34.477402, 16.013374>,  <40.108047, 34.531662, 15.977620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.339085, 34.477402, 16.013374>,  <40.724144, 34.386967, 16.072966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339085, 34.477402, 16.013374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122480, 0.127087, 0.984301,
		0.241471, 0.965781, -0.094649,
		-0.962647, 0.226088, -0.148977,
		40.050289, 34.545227, 15.968681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572968, 35.023071, 16.461880>,  <40.724144, 34.386967, 16.072966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572968, 35.023071, 16.461880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.207802, 34.865616, 16.418739>,  <39.988701, 34.771141, 16.392855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.207802, 34.865616, 16.418739>,  <40.572968, 35.023071, 16.461880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207802, 34.865616, 16.418739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165270, 0.114912, 0.979531,
		-0.373187, 0.912055, -0.169962,
		-0.912917, -0.393638, -0.107852,
		39.933926, 34.747524, 16.386383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097935, 35.437729, 16.703491>,  <40.572968, 35.023071, 16.461880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097935, 35.437729, 16.703491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867058, 35.111282, 16.714809>,  <39.728531, 34.915413, 16.721601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.867058, 35.111282, 16.714809>,  <40.097935, 35.437729, 16.703491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867058, 35.111282, 16.714809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276952, 0.228233, 0.933385,
		-0.768212, 0.530903, -0.357760,
		-0.577189, -0.816120, 0.028297,
		39.693901, 34.866447, 16.723299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456036, 35.707668, 16.948940>,  <40.097935, 35.437729, 16.703491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456036, 35.707668, 16.948940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457401, 35.313618, 17.017653>,  <39.458221, 35.077187, 17.058880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457401, 35.313618, 17.017653>,  <39.456036, 35.707668, 16.948940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457401, 35.313618, 17.017653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203362, 0.167511, 0.964668,
		-0.979098, -0.038223, -0.199767,
		0.003409, -0.985129, 0.171782,
		39.458424, 35.018078, 17.069187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798805, 35.412903, 17.362661>,  <39.456036, 35.707668, 16.948940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798805, 35.412903, 17.362661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091866, 35.151596, 17.439039>,  <39.267700, 34.994812, 17.484867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091866, 35.151596, 17.439039>,  <38.798805, 35.412903, 17.362661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091866, 35.151596, 17.439039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298094, -0.055789, 0.952905,
		-0.611851, -0.755067, -0.235609,
		0.732651, -0.653270, 0.190946,
		39.311661, 34.955616, 17.496323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499302, 34.956730, 17.796137>,  <38.798805, 35.412903, 17.362661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499302, 34.956730, 17.796137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888519, 34.884846, 17.853951>,  <39.122051, 34.841717, 17.888639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888519, 34.884846, 17.853951>,  <38.499302, 34.956730, 17.796137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888519, 34.884846, 17.853951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190383, -0.272237, 0.943208,
		-0.130153, -0.945300, -0.299111,
		0.973044, -0.179707, 0.144537,
		39.180431, 34.830933, 17.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989773, 34.342449, 17.696020>,  <38.499302, 34.956730, 17.796137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989773, 34.342449, 17.696020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.694847, 34.075420, 17.737436>,  <37.517891, 33.915203, 17.762287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.694847, 34.075420, 17.737436>,  <37.989773, 34.342449, 17.696020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694847, 34.075420, 17.737436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048242, -0.100848, -0.993732,
		0.673829, -0.737684, 0.042152,
		-0.737311, -0.667571, 0.103542,
		37.473652, 33.875149, 17.768499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150211, 33.696716, 17.373650>,  <37.989773, 34.342449, 17.696020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150211, 33.696716, 17.373650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751644, 33.724682, 17.392698>,  <37.512505, 33.741459, 17.404127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751644, 33.724682, 17.392698>,  <38.150211, 33.696716, 17.373650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751644, 33.724682, 17.392698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057765, -0.151082, -0.986832,
		-0.061793, -0.986046, 0.154579,
		-0.996416, 0.069908, 0.047623,
		37.452721, 33.745655, 17.406984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877930, 33.125309, 16.988152>,  <38.150211, 33.696716, 17.373650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877930, 33.125309, 16.988152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580914, 33.392838, 17.002619>,  <37.402702, 33.553352, 17.011299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580914, 33.392838, 17.002619>,  <37.877930, 33.125309, 16.988152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580914, 33.392838, 17.002619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218864, -0.191245, -0.956830,
		-0.633030, -0.718405, 0.288388,
		-0.742544, 0.668820, 0.036169,
		37.358150, 33.593483, 17.013470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185852, 32.726822, 16.686985>,  <37.877930, 33.125309, 16.988152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185852, 32.726822, 16.686985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.093082, 33.115849, 16.679722>,  <37.037418, 33.349262, 16.675364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.093082, 33.115849, 16.679722>,  <37.185852, 32.726822, 16.686985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093082, 33.115849, 16.679722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464609, -0.127158, -0.876338,
		-0.854604, -0.194808, 0.481353,
		-0.231926, 0.972564, -0.018160,
		37.023506, 33.407619, 16.674274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520691, 32.823940, 16.511921>,  <37.185852, 32.726822, 16.686985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520691, 32.823940, 16.511921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678177, 33.176239, 16.406649>,  <36.772671, 33.387619, 16.343485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.678177, 33.176239, 16.406649>,  <36.520691, 32.823940, 16.511921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678177, 33.176239, 16.406649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318765, -0.137722, -0.937775,
		-0.862192, 0.453112, 0.226529,
		0.393719, 0.880751, -0.263179,
		36.796291, 33.440464, 16.327694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965340, 33.131031, 16.177843>,  <36.520691, 32.823940, 16.511921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965340, 33.131031, 16.177843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276871, 33.340214, 16.039310>,  <36.463787, 33.465725, 15.956191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276871, 33.340214, 16.039310>,  <35.965340, 33.131031, 16.177843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276871, 33.340214, 16.039310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468026, 0.116912, -0.875947,
		-0.417595, 0.844301, 0.335813,
		0.778824, 0.522960, -0.346333,
		36.510517, 33.497101, 15.935410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678028, 33.653576, 15.724064>,  <35.965340, 33.131031, 16.177843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678028, 33.653576, 15.724064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061813, 33.628757, 15.614097>,  <36.292084, 33.613869, 15.548117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061813, 33.628757, 15.614097>,  <35.678028, 33.653576, 15.724064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061813, 33.628757, 15.614097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278101, -0.050230, -0.959238,
		0.045705, 0.996809, -0.065448,
		0.959464, -0.062044, -0.274918,
		36.349651, 33.610146, 15.531621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867416, 33.725494, 15.578981>,  <35.678028, 33.653576, 15.724064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867416, 33.725494, 15.578981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760754, 33.348282, 15.499399>,  <34.696754, 33.121956, 15.451650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760754, 33.348282, 15.499399>,  <34.867416, 33.725494, 15.578981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760754, 33.348282, 15.499399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349187, -0.097875, 0.931928,
		-0.898310, 0.317980, -0.303195,
		-0.266659, -0.943032, -0.198957,
		34.680756, 33.065372, 15.439713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323135, 33.682465, 15.888948>,  <34.867416, 33.725494, 15.578981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323135, 33.682465, 15.888948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399300, 33.294735, 15.826787>,  <34.444996, 33.062096, 15.789490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399300, 33.294735, 15.826787>,  <34.323135, 33.682465, 15.888948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399300, 33.294735, 15.826787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337058, -0.213227, 0.917020,
		-0.922029, -0.122228, -0.367319,
		0.190408, -0.969327, -0.155404,
		34.456421, 33.003937, 15.780166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764389, 33.263683, 16.103621>,  <34.323135, 33.682465, 15.888948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764389, 33.263683, 16.103621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028091, 32.963005, 16.111048>,  <34.186314, 32.782600, 16.115505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028091, 32.963005, 16.111048>,  <33.764389, 33.263683, 16.103621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028091, 32.963005, 16.111048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240081, -0.187025, 0.952566,
		-0.712563, -0.632441, -0.303764,
		0.659254, -0.751691, 0.018570,
		34.225868, 32.737499, 16.116619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424606, 32.804085, 16.558899>,  <33.764389, 33.263683, 16.103621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424606, 32.804085, 16.558899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803478, 32.683300, 16.515686>,  <34.030800, 32.610828, 16.489758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803478, 32.683300, 16.515686>,  <33.424606, 32.804085, 16.558899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803478, 32.683300, 16.515686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036208, -0.234017, 0.971558,
		-0.318660, -0.924149, -0.210722,
		0.947177, -0.301967, -0.108033,
		34.087631, 32.592709, 16.483276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479099, 32.146866, 16.893000>,  <33.424606, 32.804085, 16.558899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479099, 32.146866, 16.893000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850636, 32.295059, 16.892216>,  <34.073555, 32.383976, 16.891747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850636, 32.295059, 16.892216>,  <33.479099, 32.146866, 16.893000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850636, 32.295059, 16.892216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097551, -0.239466, 0.965992,
		0.357411, -0.897441, -0.258566,
		0.928838, 0.370479, -0.001959,
		34.129288, 32.406204, 16.891628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967361, 31.667553, 17.290676>,  <33.479099, 32.146866, 16.893000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967361, 31.667553, 17.290676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106468, 32.042576, 17.288044>,  <34.189930, 32.267590, 17.286465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106468, 32.042576, 17.288044>,  <33.967361, 31.667553, 17.290676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106468, 32.042576, 17.288044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047266, -0.010524, 0.998827,
		0.936390, -0.347668, -0.047975,
		0.347765, 0.937559, -0.006578,
		34.210796, 32.323845, 17.286070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456524, 31.456881, 17.703859>,  <33.967361, 31.667553, 17.290676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456524, 31.456881, 17.703859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424953, 31.855537, 17.695108>,  <34.406013, 32.094730, 17.689857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424953, 31.855537, 17.695108>,  <34.456524, 31.456881, 17.703859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424953, 31.855537, 17.695108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227949, 0.039406, 0.972876,
		0.970469, 0.071795, -0.230293,
		-0.078922, 0.996641, -0.021877,
		34.401276, 32.154530, 17.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.726509, 37.686302, 12.497452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.075401, 37.708397, 12.691836>,  <36.284737, 37.721653, 12.808467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.075401, 37.708397, 12.691836>,  <35.726509, 37.686302, 12.497452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075401, 37.708397, 12.691836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480310, -0.090687, 0.872398,
		0.092262, -0.994346, -0.052568,
		0.872233, 0.055240, 0.485962,
		36.337070, 37.724968, 12.837625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788960, 37.162743, 12.932022>,  <35.726509, 37.686302, 12.497452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788960, 37.162743, 12.932022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.024040, 37.433102, 13.109904>,  <36.165089, 37.595318, 13.216634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.024040, 37.433102, 13.109904>,  <35.788960, 37.162743, 12.932022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024040, 37.433102, 13.109904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608369, 0.006823, 0.793625,
		0.533378, -0.736960, 0.415208,
		0.587702, 0.675902, 0.444705,
		36.200352, 37.635872, 13.243316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872097, 36.907333, 13.602825>,  <35.788960, 37.162743, 12.932022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872097, 36.907333, 13.602825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037735, 37.269165, 13.643350>,  <36.137119, 37.486263, 13.667665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037735, 37.269165, 13.643350>,  <35.872097, 36.907333, 13.602825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037735, 37.269165, 13.643350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296636, 0.028885, 0.954554,
		0.860540, -0.425332, 0.280291,
		0.414098, 0.904576, 0.101312,
		36.161964, 37.540539, 13.673743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339226, 36.889450, 14.280438>,  <35.872097, 36.907333, 13.602825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339226, 36.889450, 14.280438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.182354, 37.244659, 14.184437>,  <36.088230, 37.457787, 14.126836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.182354, 37.244659, 14.184437>,  <36.339226, 36.889450, 14.280438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182354, 37.244659, 14.184437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422782, 0.057713, 0.904392,
		0.816976, 0.456155, 0.352808,
		-0.392181, 0.888027, -0.240005,
		36.064701, 37.511066, 14.112435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396908, 37.244587, 14.892599>,  <36.339226, 36.889450, 14.280438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396908, 37.244587, 14.892599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138828, 37.462276, 14.678108>,  <35.983982, 37.592888, 14.549414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138828, 37.462276, 14.678108>,  <36.396908, 37.244587, 14.892599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138828, 37.462276, 14.678108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440343, 0.308671, 0.843102,
		0.624351, 0.780094, 0.040490,
		-0.645200, 0.544221, -0.536228,
		35.945267, 37.625542, 14.517240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561115, 37.931808, 15.192939>,  <36.396908, 37.244587, 14.892599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561115, 37.931808, 15.192939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.197945, 37.888927, 15.030867>,  <35.980042, 37.863201, 14.933623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.197945, 37.888927, 15.030867>,  <36.561115, 37.931808, 15.192939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197945, 37.888927, 15.030867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419031, 0.252425, 0.872178,
		0.008780, 0.961660, -0.274104,
		-0.907930, -0.107201, -0.405181,
		35.925568, 37.856766, 14.909312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140205, 38.424255, 15.490220>,  <36.561115, 37.931808, 15.192939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140205, 38.424255, 15.490220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.855789, 38.188370, 15.337039>,  <35.685139, 38.046837, 15.245131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.855789, 38.188370, 15.337039>,  <36.140205, 38.424255, 15.490220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855789, 38.188370, 15.337039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594878, 0.214149, 0.774765,
		-0.374881, 0.778703, -0.503077,
		-0.711044, -0.589714, -0.382953,
		35.642475, 38.011456, 15.222153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504944, 38.787216, 15.625990>,  <36.140205, 38.424255, 15.490220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504944, 38.787216, 15.625990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.386261, 38.408749, 15.574260>,  <35.315052, 38.181667, 15.543221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.386261, 38.408749, 15.574260>,  <35.504944, 38.787216, 15.625990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386261, 38.408749, 15.574260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665327, 0.107665, 0.738748,
		-0.685057, 0.305238, -0.661458,
		-0.296709, -0.946170, -0.129326,
		35.297249, 38.124897, 15.535462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776360, 38.800770, 15.719751>,  <35.504944, 38.787216, 15.625990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776360, 38.800770, 15.719751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879635, 38.418594, 15.776989>,  <34.941601, 38.189289, 15.811332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879635, 38.418594, 15.776989>,  <34.776360, 38.800770, 15.719751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879635, 38.418594, 15.776989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716439, -0.089987, 0.691822,
		-0.648118, -0.281136, -0.707747,
		0.258184, -0.955440, 0.143094,
		34.957088, 38.131962, 15.819918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161949, 38.420815, 15.700171>,  <34.776360, 38.800770, 15.719751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161949, 38.420815, 15.700171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.421844, 38.196125, 15.905033>,  <34.577782, 38.061310, 16.027950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.421844, 38.196125, 15.905033>,  <34.161949, 38.420815, 15.700171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421844, 38.196125, 15.905033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661423, -0.085708, 0.745100,
		-0.374647, -0.822872, -0.427226,
		0.649739, -0.561726, 0.512156,
		34.616768, 38.027607, 16.058680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792728, 37.780750, 16.088541>,  <34.161949, 38.420815, 15.700171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792728, 37.780750, 16.088541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148037, 37.847645, 16.259663>,  <34.361221, 37.887783, 16.362335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148037, 37.847645, 16.259663>,  <33.792728, 37.780750, 16.088541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148037, 37.847645, 16.259663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427707, -0.038444, 0.903099,
		0.167478, -0.985167, 0.037379,
		0.888267, 0.167237, 0.427802,
		34.414516, 37.897816, 16.388002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918652, 37.241886, 16.564718>,  <33.792728, 37.780750, 16.088541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918652, 37.241886, 16.564718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143803, 37.537712, 16.712345>,  <34.278893, 37.715210, 16.800920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143803, 37.537712, 16.712345>,  <33.918652, 37.241886, 16.564718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143803, 37.537712, 16.712345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384691, -0.160802, 0.908931,
		0.731564, -0.653590, 0.193994,
		0.562874, 0.739569, 0.369067,
		34.312664, 37.759583, 16.823065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821232, 36.468464, 16.458645>,  <33.918652, 37.241886, 16.564718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821232, 36.468464, 16.458645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.484982, 36.252300, 16.473068>,  <33.283230, 36.122601, 16.481722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.484982, 36.252300, 16.473068>,  <33.821232, 36.468464, 16.458645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484982, 36.252300, 16.473068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055604, 0.019883, -0.998255,
		0.538749, -0.841168, -0.046763,
		-0.840630, -0.540409, 0.036060,
		33.232792, 36.090179, 16.483887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834171, 35.776176, 16.180868>,  <33.821232, 36.468464, 16.458645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834171, 35.776176, 16.180868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.434780, 35.797028, 16.188139>,  <33.195145, 35.809540, 16.192501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.434780, 35.797028, 16.188139>,  <33.834171, 35.776176, 16.180868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434780, 35.797028, 16.188139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033126, -0.302341, -0.952624,
		-0.044166, -0.951773, 0.303606,
		-0.998475, 0.052130, 0.018175,
		33.135239, 35.812668, 16.193592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625034, 35.229427, 15.743731>,  <33.834171, 35.776176, 16.180868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625034, 35.229427, 15.743731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.323940, 35.491863, 15.765374>,  <33.143284, 35.649326, 15.778359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.323940, 35.491863, 15.765374>,  <33.625034, 35.229427, 15.743731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323940, 35.491863, 15.765374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308590, -0.279056, -0.909340,
		-0.581512, -0.701192, 0.412520,
		-0.752738, 0.656092, 0.054106,
		33.098118, 35.688690, 15.781606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969467, 34.845039, 15.546226>,  <33.625034, 35.229427, 15.743731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969467, 34.845039, 15.546226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.929554, 35.238583, 15.486814>,  <32.905605, 35.474709, 15.451168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.929554, 35.238583, 15.486814>,  <32.969467, 34.845039, 15.546226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929554, 35.238583, 15.486814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447764, -0.177703, -0.876315,
		-0.888567, -0.020934, 0.458269,
		-0.099780, 0.983861, -0.148528,
		32.899620, 35.533741, 15.442256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468304, 34.897640, 15.058539>,  <32.969467, 34.845039, 15.546226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468304, 34.897640, 15.058539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.606377, 35.270981, 15.019134>,  <32.689220, 35.494984, 14.995490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.606377, 35.270981, 15.019134>,  <32.468304, 34.897640, 15.058539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606377, 35.270981, 15.019134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147531, -0.049700, -0.987808,
		-0.926869, 0.355505, 0.120543,
		0.345179, 0.933352, -0.098514,
		32.709930, 35.550987, 14.989579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900944, 35.234768, 14.639443>,  <32.468304, 34.897640, 15.058539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900944, 35.234768, 14.639443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.247326, 35.430962, 14.600371>,  <32.455154, 35.548679, 14.576928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.247326, 35.430962, 14.600371>,  <31.900944, 35.234768, 14.639443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247326, 35.430962, 14.600371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049494, -0.110304, -0.992665,
		-0.497665, 0.864438, -0.071242,
		0.865956, 0.490488, -0.097679,
		32.507114, 35.578110, 14.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806522, 35.755440, 14.099547>,  <31.900944, 35.234768, 14.639443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806522, 35.755440, 14.099547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203468, 35.706413, 14.105015>,  <32.441635, 35.676998, 14.108295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.203468, 35.706413, 14.105015>,  <31.806522, 35.755440, 14.099547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203468, 35.706413, 14.105015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034598, 0.170296, -0.984785,
		0.118373, 0.977741, 0.173236,
		0.992366, -0.122566, 0.013670,
		32.501179, 35.669643, 14.109116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037502, 36.298656, 13.594457>,  <31.806522, 35.755440, 14.099547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037502, 36.298656, 13.594457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346859, 36.052185, 13.654044>,  <32.532475, 35.904305, 13.689796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.346859, 36.052185, 13.654044>,  <32.037502, 36.298656, 13.594457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346859, 36.052185, 13.654044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229014, 0.052452, -0.972009,
		0.591114, 0.785860, 0.181679,
		0.773393, -0.616175, 0.148968,
		32.578876, 35.867332, 13.698734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495083, 36.480762, 13.050040>,  <32.037502, 36.298656, 13.594457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495083, 36.480762, 13.050040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.634567, 36.130539, 13.183785>,  <32.718258, 35.920406, 13.264032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.634567, 36.130539, 13.183785>,  <32.495083, 36.480762, 13.050040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634567, 36.130539, 13.183785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239884, -0.261492, -0.934921,
		0.906010, 0.406229, 0.118846,
		0.348715, -0.875557, 0.334362,
		32.739182, 35.867870, 13.284094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152233, 36.278103, 12.590339>,  <32.495083, 36.480762, 13.050040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152233, 36.278103, 12.590339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.992161, 35.944229, 12.741687>,  <32.896118, 35.743904, 12.832496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.992161, 35.944229, 12.741687>,  <33.152233, 36.278103, 12.590339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992161, 35.944229, 12.741687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103364, -0.451344, -0.886343,
		0.910591, -0.315584, 0.266894,
		-0.400176, -0.834683, 0.378370,
		32.872108, 35.693825, 12.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498711, 35.717300, 12.163087>,  <33.152233, 36.278103, 12.590339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498711, 35.717300, 12.163087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186188, 35.528004, 12.325863>,  <32.998672, 35.414425, 12.423529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186188, 35.528004, 12.325863>,  <33.498711, 35.717300, 12.163087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186188, 35.528004, 12.325863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032578, -0.682031, -0.730597,
		0.623292, -0.557566, 0.548295,
		-0.781310, -0.473238, 0.406940,
		32.951794, 35.386032, 12.447945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615849, 34.983089, 12.214166>,  <33.498711, 35.717300, 12.163087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615849, 34.983089, 12.214166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219494, 35.036964, 12.214342>,  <32.981682, 35.069290, 12.214448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.219494, 35.036964, 12.214342>,  <33.615849, 34.983089, 12.214166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219494, 35.036964, 12.214342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066724, -0.488028, -0.870274,
		-0.117002, -0.862373, 0.492568,
		-0.990888, 0.134690, 0.000440,
		32.922226, 35.077370, 12.214474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273338, 34.330433, 12.021370>,  <33.615849, 34.983089, 12.214166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273338, 34.330433, 12.021370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.977394, 34.586475, 11.938540>,  <32.799828, 34.740101, 11.888842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.977394, 34.586475, 11.938540>,  <33.273338, 34.330433, 12.021370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977394, 34.586475, 11.938540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189218, -0.493358, -0.848996,
		-0.645609, -0.588952, 0.486133,
		-0.739856, 0.640104, -0.207076,
		32.755436, 34.778507, 11.876417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216648, 34.654037, 12.701097>,  <33.273338, 34.330433, 12.021370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216648, 34.654037, 12.701097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549934, 34.445343, 12.627839>,  <33.749905, 34.320126, 12.583885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549934, 34.445343, 12.627839>,  <33.216648, 34.654037, 12.701097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549934, 34.445343, 12.627839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114253, -0.486511, 0.866171,
		-0.541015, -0.700783, -0.464979,
		0.833216, -0.521737, -0.183143,
		33.799900, 34.288822, 12.572896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121605, 33.974049, 12.929962>,  <33.216648, 34.654037, 12.701097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121605, 33.974049, 12.929962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.521168, 33.983242, 12.913724>,  <33.760906, 33.988758, 12.903981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.521168, 33.983242, 12.913724>,  <33.121605, 33.974049, 12.929962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521168, 33.983242, 12.913724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046626, -0.463211, 0.885021,
		0.001540, -0.885950, -0.463778,
		0.998911, 0.022987, -0.040595,
		33.820843, 33.990139, 12.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394184, 33.350651, 13.206231>,  <33.121605, 33.974049, 12.929962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394184, 33.350651, 13.206231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727749, 33.569443, 13.235605>,  <33.927887, 33.700718, 13.253230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.727749, 33.569443, 13.235605>,  <33.394184, 33.350651, 13.206231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727749, 33.569443, 13.235605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204694, -0.430118, 0.879260,
		0.512528, -0.718197, -0.470647,
		0.833916, 0.546984, 0.073436,
		33.977924, 33.733540, 13.257636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894360, 32.859386, 13.258325>,  <33.394184, 33.350651, 13.206231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894360, 32.859386, 13.258325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020596, 33.207836, 13.408818>,  <34.096336, 33.416904, 13.499114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.020596, 33.207836, 13.408818>,  <33.894360, 32.859386, 13.258325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020596, 33.207836, 13.408818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322803, -0.471408, 0.820715,
		0.892302, -0.137559, -0.429971,
		0.315588, 0.871121, 0.376234,
		34.115273, 33.469173, 13.521688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549911, 32.619698, 13.583657>,  <33.894360, 32.859386, 13.258325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549911, 32.619698, 13.583657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498280, 32.977985, 13.753844>,  <34.467300, 33.192959, 13.855956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.498280, 32.977985, 13.753844>,  <34.549911, 32.619698, 13.583657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498280, 32.977985, 13.753844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498949, -0.312125, 0.808473,
		0.856965, 0.316641, -0.406631,
		-0.129076, 0.895721, 0.425468,
		34.459557, 33.246700, 13.881485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261185, 32.775688, 13.963370>,  <34.549911, 32.619698, 13.583657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261185, 32.775688, 13.963370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949898, 32.986042, 14.100672>,  <34.763126, 33.112255, 14.183053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.949898, 32.986042, 14.100672>,  <35.261185, 32.775688, 13.963370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949898, 32.986042, 14.100672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208189, -0.299638, 0.931061,
		0.592479, 0.796031, 0.123702,
		-0.778220, 0.525881, 0.343254,
		34.716431, 33.143806, 14.203648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470070, 32.943737, 14.534265>,  <35.261185, 32.775688, 13.963370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470070, 32.943737, 14.534265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.084301, 33.034313, 14.588843>,  <34.852840, 33.088661, 14.621591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.084301, 33.034313, 14.588843>,  <35.470070, 32.943737, 14.534265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084301, 33.034313, 14.588843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064612, -0.298575, 0.952197,
		0.256360, 0.927133, 0.273320,
		-0.964420, 0.226445, 0.136446,
		34.794975, 33.102245, 14.629777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414818, 33.454960, 15.098848>,  <35.470070, 32.943737, 14.534265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414818, 33.454960, 15.098848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.078224, 33.244221, 15.050954>,  <34.876266, 33.117779, 15.022218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.078224, 33.244221, 15.050954>,  <35.414818, 33.454960, 15.098848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078224, 33.244221, 15.050954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095789, -0.363587, 0.926622,
		-0.531721, 0.768269, 0.356420,
		-0.841485, -0.526846, -0.119735,
		34.825779, 33.086166, 15.015033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771244, 34.124985, 15.114792>,  <35.414818, 33.454960, 15.098848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771244, 34.124985, 15.114792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094116, 33.889046, 15.105513>,  <36.287838, 33.747482, 15.099945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.094116, 33.889046, 15.105513>,  <35.771244, 34.124985, 15.114792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094116, 33.889046, 15.105513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049542, -0.028532, -0.998364,
		0.588223, 0.807009, -0.052253,
		0.807180, -0.589850, -0.023198,
		36.336269, 33.712090, 15.098554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136383, 34.254761, 14.458875>,  <35.771244, 34.124985, 15.114792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136383, 34.254761, 14.458875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342075, 33.934086, 14.580769>,  <36.465492, 33.741680, 14.653905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.342075, 33.934086, 14.580769>,  <36.136383, 34.254761, 14.458875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342075, 33.934086, 14.580769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346074, -0.131142, -0.928997,
		0.784727, 0.583183, 0.210005,
		0.514235, -0.801686, 0.304735,
		36.496346, 33.693581, 14.672189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869114, 34.400745, 14.314200>,  <36.136383, 34.254761, 14.458875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869114, 34.400745, 14.314200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.831501, 34.002998, 14.333773>,  <36.808933, 33.764351, 14.345516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.831501, 34.002998, 14.333773>,  <36.869114, 34.400745, 14.314200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831501, 34.002998, 14.333773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450396, -0.086320, -0.888647,
		0.887864, -0.061521, 0.455975,
		-0.094030, -0.994366, 0.048931,
		36.803291, 33.704689, 14.348452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545422, 34.071732, 14.188971>,  <36.869114, 34.400745, 14.314200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545422, 34.071732, 14.188971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256172, 33.814415, 14.088364>,  <37.082623, 33.660027, 14.027999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256172, 33.814415, 14.088364>,  <37.545422, 34.071732, 14.188971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256172, 33.814415, 14.088364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372542, -0.056611, -0.926287,
		0.581635, -0.763524, 0.280590,
		-0.723127, -0.643293, -0.251518,
		37.039234, 33.621426, 14.012908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930996, 33.549461, 13.872620>,  <37.545422, 34.071732, 14.188971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930996, 33.549461, 13.872620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553299, 33.478970, 13.761371>,  <37.326679, 33.436676, 13.694621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.553299, 33.478970, 13.761371>,  <37.930996, 33.549461, 13.872620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553299, 33.478970, 13.761371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294404, -0.073671, -0.952837,
		0.147429, -0.981588, 0.121446,
		-0.944241, -0.176230, -0.278122,
		37.270027, 33.426102, 13.677934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011681, 33.015434, 13.370053>,  <37.930996, 33.549461, 13.872620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011681, 33.015434, 13.370053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648930, 33.176624, 13.320763>,  <37.431278, 33.273338, 13.291188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648930, 33.176624, 13.320763>,  <38.011681, 33.015434, 13.370053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648930, 33.176624, 13.320763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107871, -0.060682, -0.992311,
		-0.407351, -0.913199, 0.011562,
		-0.906879, 0.402972, -0.123227,
		37.376865, 33.297516, 13.283794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695015, 32.579678, 12.911466>,  <38.011681, 33.015434, 13.370053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695015, 32.579678, 12.911466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503258, 32.929054, 12.877315>,  <37.388203, 33.138680, 12.856824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.503258, 32.929054, 12.877315>,  <37.695015, 32.579678, 12.911466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503258, 32.929054, 12.877315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108800, -0.037385, -0.993360,
		-0.870831, -0.485498, -0.077108,
		-0.479392, 0.873438, -0.085378,
		37.359440, 33.191086, 12.851701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481209, 32.521538, 12.285090>,  <37.695015, 32.579678, 12.911466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481209, 32.521538, 12.285090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409981, 32.906994, 12.364775>,  <37.367245, 33.138268, 12.412585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409981, 32.906994, 12.364775>,  <37.481209, 32.521538, 12.285090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409981, 32.906994, 12.364775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184524, 0.231557, -0.955161,
		-0.966561, -0.133329, -0.219049,
		-0.178073, 0.963641, 0.199212,
		37.356560, 33.196087, 12.424539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034756, 32.691860, 11.767104>,  <37.481209, 32.521538, 12.285090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034756, 32.691860, 11.767104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184715, 33.039085, 11.897282>,  <37.274693, 33.247421, 11.975389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184715, 33.039085, 11.897282>,  <37.034756, 32.691860, 11.767104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184715, 33.039085, 11.897282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368150, 0.182778, -0.911624,
		-0.850833, 0.461578, -0.251055,
		0.374898, 0.868066, 0.325444,
		37.297184, 33.299503, 11.994915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.065418, 35.039387, 27.599205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230618, 35.387848, 27.705433>,  <35.329739, 35.596924, 27.769171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230618, 35.387848, 27.705433>,  <35.065418, 35.039387, 27.599205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230618, 35.387848, 27.705433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036613, 0.275485, -0.960608,
		-0.909996, 0.406453, 0.081879,
		0.412998, 0.871151, 0.265571,
		35.354519, 35.649193, 27.785105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544331, 35.597824, 27.389999>,  <35.065418, 35.039387, 27.599205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544331, 35.597824, 27.389999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942455, 35.634369, 27.402668>,  <35.181332, 35.656296, 27.410269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.942455, 35.634369, 27.402668>,  <34.544331, 35.597824, 27.389999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942455, 35.634369, 27.402668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019228, 0.133977, -0.990798,
		-0.094760, 0.986764, 0.131593,
		0.995314, 0.091358, 0.031670,
		35.241051, 35.661777, 27.412169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664433, 36.047741, 26.912403>,  <34.544331, 35.597824, 27.389999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664433, 36.047741, 26.912403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037434, 35.907715, 26.947929>,  <35.261234, 35.823700, 26.969246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037434, 35.907715, 26.947929>,  <34.664433, 36.047741, 26.912403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037434, 35.907715, 26.947929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119663, 0.067450, -0.990521,
		0.340753, 0.934295, 0.104787,
		0.932507, -0.350062, 0.088817,
		35.317184, 35.802696, 26.974575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150379, 36.589611, 26.705524>,  <34.664433, 36.047741, 26.912403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150379, 36.589611, 26.705524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354191, 36.248013, 26.663454>,  <35.476479, 36.043053, 26.638212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354191, 36.248013, 26.663454>,  <35.150379, 36.589611, 26.705524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354191, 36.248013, 26.663454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135870, 0.200553, -0.970215,
		0.849657, 0.480065, 0.218221,
		0.509531, -0.854000, -0.105175,
		35.507050, 35.991814, 26.631901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601551, 36.761330, 26.135674>,  <35.150379, 36.589611, 26.705524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601551, 36.761330, 26.135674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646191, 36.366074, 26.177862>,  <35.672974, 36.128922, 26.203175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646191, 36.366074, 26.177862>,  <35.601551, 36.761330, 26.135674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646191, 36.366074, 26.177862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293943, -0.068560, -0.953361,
		0.949286, 0.137396, 0.282806,
		0.111598, -0.988140, 0.105470,
		35.679668, 36.069630, 26.209503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253826, 36.539471, 25.983959>,  <35.601551, 36.761330, 26.135674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253826, 36.539471, 25.983959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014584, 36.225918, 25.917271>,  <35.871037, 36.037785, 25.877256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014584, 36.225918, 25.917271>,  <36.253826, 36.539471, 25.983959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014584, 36.225918, 25.917271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397419, -0.109457, -0.911086,
		0.695934, -0.611187, 0.376996,
		-0.598109, -0.783881, -0.166722,
		35.835152, 35.990753, 25.867254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636665, 36.153084, 25.540329>,  <36.253826, 36.539471, 25.983959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636665, 36.153084, 25.540329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281197, 35.980766, 25.477484>,  <36.067917, 35.877377, 25.439777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281197, 35.980766, 25.477484>,  <36.636665, 36.153084, 25.540329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281197, 35.980766, 25.477484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320544, -0.338614, -0.884642,
		0.327895, -0.836517, 0.439003,
		-0.888671, -0.430790, -0.157111,
		36.014595, 35.851528, 25.430351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818695, 35.517437, 25.237103>,  <36.636665, 36.153084, 25.540329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818695, 35.517437, 25.237103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427826, 35.536892, 25.154377>,  <36.193306, 35.548565, 25.104742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427826, 35.536892, 25.154377>,  <36.818695, 35.517437, 25.237103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427826, 35.536892, 25.154377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171107, -0.396834, -0.901801,
		-0.125935, -0.916601, 0.379451,
		-0.977171, 0.048642, -0.206812,
		36.134674, 35.551483, 25.092333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709877, 34.876793, 25.166271>,  <36.818695, 35.517437, 25.237103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709877, 34.876793, 25.166271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433929, 35.092041, 24.972570>,  <36.268360, 35.221191, 24.856350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433929, 35.092041, 24.972570>,  <36.709877, 34.876793, 25.166271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433929, 35.092041, 24.972570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190570, -0.510335, -0.838595,
		-0.698399, -0.670806, 0.249515,
		-0.689871, 0.538124, -0.484253,
		36.226967, 35.253479, 24.827295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225971, 34.443733, 24.906137>,  <36.709877, 34.876793, 25.166271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225971, 34.443733, 24.906137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199829, 34.753128, 24.653965>,  <36.184143, 34.938766, 24.502663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199829, 34.753128, 24.653965>,  <36.225971, 34.443733, 24.906137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199829, 34.753128, 24.653965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111950, -0.622107, -0.774887,
		-0.991562, -0.121222, -0.045932,
		-0.065359, 0.773490, -0.630429,
		36.180222, 34.985176, 24.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758904, 34.254478, 24.409754>,  <36.225971, 34.443733, 24.906137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758904, 34.254478, 24.409754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935802, 34.574276, 24.247158>,  <36.041943, 34.766155, 24.149601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935802, 34.574276, 24.247158>,  <35.758904, 34.254478, 24.409754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935802, 34.574276, 24.247158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018188, -0.445130, -0.895281,
		-0.896710, 0.403326, -0.182315,
		0.442244, 0.799492, -0.406489,
		36.068474, 34.814125, 24.125212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358276, 34.263386, 23.747463>,  <35.758904, 34.254478, 24.409754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358276, 34.263386, 23.747463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714806, 34.443970, 23.730833>,  <35.928722, 34.552319, 23.720856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714806, 34.443970, 23.730833>,  <35.358276, 34.263386, 23.747463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714806, 34.443970, 23.730833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097082, -0.279632, -0.955187,
		-0.442851, 0.847344, -0.293071,
		0.891324, 0.451457, -0.041574,
		35.982204, 34.579407, 23.718361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730370, 34.187904, 23.597210>,  <35.358276, 34.263386, 23.747463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730370, 34.187904, 23.597210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627941, 33.801628, 23.579939>,  <34.566486, 33.569862, 23.569576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627941, 33.801628, 23.579939>,  <34.730370, 34.187904, 23.597210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627941, 33.801628, 23.579939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168159, 0.000516, 0.985760,
		-0.951920, 0.259682, -0.162523,
		-0.256068, -0.965694, -0.043177,
		34.551121, 33.511921, 23.566986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034645, 34.107323, 23.821842>,  <34.730370, 34.187904, 23.597210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034645, 34.107323, 23.821842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197262, 33.742615, 23.845186>,  <34.294830, 33.523792, 23.859194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197262, 33.742615, 23.845186>,  <34.034645, 34.107323, 23.821842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197262, 33.742615, 23.845186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450216, -0.144340, 0.881176,
		-0.795003, -0.384511, -0.469172,
		0.406543, -0.911766, 0.058362,
		34.319225, 33.469086, 23.862696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495354, 33.726662, 24.010227>,  <34.034645, 34.107323, 23.821842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495354, 33.726662, 24.010227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803497, 33.511818, 24.147667>,  <33.988384, 33.382912, 24.230131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803497, 33.511818, 24.147667>,  <33.495354, 33.726662, 24.010227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803497, 33.511818, 24.147667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424447, -0.029852, 0.904961,
		-0.475804, -0.842986, -0.250970,
		0.770361, -0.537107, 0.343599,
		34.034607, 33.350685, 24.250746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201988, 33.067387, 24.171064>,  <33.495354, 33.726662, 24.010227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201988, 33.067387, 24.171064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547089, 33.134384, 24.361895>,  <33.754150, 33.174583, 24.476393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547089, 33.134384, 24.361895>,  <33.201988, 33.067387, 24.171064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547089, 33.134384, 24.361895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464367, -0.110825, 0.878681,
		0.200049, -0.979624, -0.017834,
		0.862753, 0.167498, 0.477076,
		33.805916, 33.184631, 24.505018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161575, 32.508568, 24.723553>,  <33.201988, 33.067387, 24.171064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161575, 32.508568, 24.723553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452637, 32.760841, 24.831450>,  <33.627274, 32.912205, 24.896189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452637, 32.760841, 24.831450>,  <33.161575, 32.508568, 24.723553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452637, 32.760841, 24.831450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313960, -0.043418, 0.948443,
		0.609881, -0.774823, 0.166417,
		0.727650, 0.630685, 0.269743,
		33.670933, 32.950047, 24.912373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481571, 32.157463, 25.354954>,  <33.161575, 32.508568, 24.723553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481571, 32.157463, 25.354954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567783, 32.547897, 25.366310>,  <33.619511, 32.782158, 25.373123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.567783, 32.547897, 25.366310>,  <33.481571, 32.157463, 25.354954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567783, 32.547897, 25.366310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458991, 0.075606, 0.885218,
		0.861900, -0.203825, 0.464309,
		0.215535, 0.976084, 0.028389,
		33.632442, 32.840721, 25.374826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661644, 32.303783, 25.976986>,  <33.481571, 32.157463, 25.354954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661644, 32.303783, 25.976986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589542, 32.681095, 25.865465>,  <33.546284, 32.907482, 25.798553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589542, 32.681095, 25.865465>,  <33.661644, 32.303783, 25.976986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589542, 32.681095, 25.865465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496966, 0.157272, 0.853399,
		0.848843, 0.292380, 0.440431,
		-0.180250, 0.943281, -0.278802,
		33.535469, 32.964081, 25.781824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652313, 32.525799, 26.598911>,  <33.661644, 32.303783, 25.976986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652313, 32.525799, 26.598911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510498, 32.819489, 26.367319>,  <33.425407, 32.995701, 26.228363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.510498, 32.819489, 26.367319>,  <33.652313, 32.525799, 26.598911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510498, 32.819489, 26.367319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479291, 0.388968, 0.786755,
		0.802858, 0.556437, 0.214001,
		-0.354540, 0.734222, -0.578981,
		33.404137, 33.039757, 26.193624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841644, 33.097652, 27.004084>,  <33.652313, 32.525799, 26.598911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841644, 33.097652, 27.004084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529781, 33.171730, 26.764805>,  <33.342663, 33.216179, 26.621237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529781, 33.171730, 26.764805>,  <33.841644, 33.097652, 27.004084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529781, 33.171730, 26.764805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530006, 0.313617, 0.787869,
		0.333516, 0.931314, -0.146358,
		-0.779654, 0.185197, -0.598199,
		33.295883, 33.227287, 26.585344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609928, 33.874474, 27.235186>,  <33.841644, 33.097652, 27.004084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609928, 33.874474, 27.235186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314251, 33.700294, 27.029671>,  <33.136845, 33.595787, 26.906363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314251, 33.700294, 27.029671>,  <33.609928, 33.874474, 27.235186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314251, 33.700294, 27.029671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655821, 0.291771, 0.696253,
		-0.153277, 0.851617, -0.501254,
		-0.739192, -0.435452, -0.513786,
		33.092495, 33.569660, 26.875534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972477, 34.333523, 27.318048>,  <33.609928, 33.874474, 27.235186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972477, 34.333523, 27.318048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797817, 33.994785, 27.196594>,  <32.693020, 33.791542, 27.123722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797817, 33.994785, 27.196594>,  <32.972477, 34.333523, 27.318048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797817, 33.994785, 27.196594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827729, 0.245957, 0.504350,
		-0.352423, 0.471554, -0.808353,
		-0.436649, -0.846842, -0.303638,
		32.666824, 33.740734, 27.105503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293648, 34.595139, 27.325041>,  <32.972477, 34.333523, 27.318048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293648, 34.595139, 27.325041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298630, 34.195377, 27.337980>,  <32.301620, 33.955521, 27.345743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298630, 34.195377, 27.337980>,  <32.293648, 34.595139, 27.325041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298630, 34.195377, 27.337980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713515, 0.013781, 0.700505,
		-0.700530, -0.031807, -0.712914,
		0.012456, -0.999399, 0.032349,
		32.302368, 33.895557, 27.347685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587540, 34.308861, 27.066935>,  <32.293648, 34.595139, 27.325041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587540, 34.308861, 27.066935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756483, 34.021118, 27.287531>,  <31.857849, 33.848473, 27.419888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756483, 34.021118, 27.287531>,  <31.587540, 34.308861, 27.066935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756483, 34.021118, 27.287531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761696, 0.048146, 0.646144,
		-0.491360, -0.692970, -0.527596,
		0.422357, -0.719357, 0.551490,
		31.883190, 33.805313, 27.452978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050779, 33.776478, 27.181547>,  <31.587540, 34.308861, 27.066935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050779, 33.776478, 27.181547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328077, 33.742802, 27.467855>,  <31.494455, 33.722595, 27.639641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328077, 33.742802, 27.467855>,  <31.050779, 33.776478, 27.181547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328077, 33.742802, 27.467855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718805, -0.152812, 0.678209,
		0.052279, -0.984663, -0.166453,
		0.693243, -0.084191, 0.715769,
		31.536051, 33.717545, 27.682587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458553, 33.518810, 26.864622>,  <31.050779, 33.776478, 27.181547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458553, 33.518810, 26.864622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.342939, 33.137482, 26.899595>,  <30.273571, 32.908684, 26.920578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.342939, 33.137482, 26.899595>,  <30.458553, 33.518810, 26.864622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342939, 33.137482, 26.899595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659196, 0.264420, 0.703948,
		-0.694205, 0.145829, -0.704849,
		-0.289033, -0.953318, 0.087432,
		30.256229, 32.851486, 26.925825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433432, 33.748432, 26.180878>,  <30.458553, 33.518810, 26.864622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433432, 33.748432, 26.180878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.421135, 34.125626, 26.313448>,  <30.413757, 34.351940, 26.392990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.421135, 34.125626, 26.313448>,  <30.433432, 33.748432, 26.180878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421135, 34.125626, 26.313448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209461, 0.330299, -0.920341,
		-0.977333, 0.041128, -0.207672,
		-0.030743, 0.942980, 0.331427,
		30.411913, 34.408520, 26.412876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024656, 34.201561, 25.805586>,  <30.433432, 33.748432, 26.180878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024656, 34.201561, 25.805586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316624, 34.421051, 25.968618>,  <30.491804, 34.552746, 26.066439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.316624, 34.421051, 25.968618>,  <30.024656, 34.201561, 25.805586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316624, 34.421051, 25.968618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135003, 0.468811, -0.872921,
		-0.670069, 0.692186, 0.268116,
		0.729919, 0.548721, 0.407583,
		30.535599, 34.585667, 26.090893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994814, 34.944168, 25.618622>,  <30.024656, 34.201561, 25.805586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994814, 34.944168, 25.618622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373070, 34.876381, 25.729654>,  <30.600023, 34.835709, 25.796274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.373070, 34.876381, 25.729654>,  <29.994814, 34.944168, 25.618622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373070, 34.876381, 25.729654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314947, 0.264335, -0.911556,
		0.081104, 0.949425, 0.303338,
		0.945638, -0.169466, 0.277580,
		30.656761, 34.825542, 25.812929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416271, 35.452049, 25.390223>,  <29.994814, 34.944168, 25.618622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416271, 35.452049, 25.390223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715908, 35.198223, 25.466312>,  <30.895689, 35.045925, 25.511967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715908, 35.198223, 25.466312>,  <30.416271, 35.452049, 25.390223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715908, 35.198223, 25.466312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447716, 0.273292, -0.851388,
		0.488277, 0.722934, 0.488827,
		0.749090, -0.634569, 0.190226,
		30.940636, 35.007851, 25.523380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015928, 35.826733, 25.101665>,  <30.416271, 35.452049, 25.390223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015928, 35.826733, 25.101665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127136, 35.445488, 25.149458>,  <31.193861, 35.216740, 25.178133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127136, 35.445488, 25.149458>,  <31.015928, 35.826733, 25.101665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127136, 35.445488, 25.149458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680495, 0.107636, -0.724804,
		0.677961, 0.282818, 0.678515,
		0.278021, -0.953115, 0.119483,
		31.210543, 35.159554, 25.185303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769094, 35.801041, 25.200325>,  <31.015928, 35.826733, 25.101665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769094, 35.801041, 25.200325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637684, 35.447731, 25.066517>,  <31.558838, 35.235744, 24.986233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.637684, 35.447731, 25.066517>,  <31.769094, 35.801041, 25.200325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637684, 35.447731, 25.066517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586273, 0.086980, -0.805430,
		0.740510, -0.460723, 0.489264,
		-0.328524, -0.883272, -0.334519,
		31.539127, 35.182751, 24.966162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365898, 35.464554, 25.015139>,  <31.769094, 35.801041, 25.200325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365898, 35.464554, 25.015139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098804, 35.234589, 24.825991>,  <31.938549, 35.096607, 24.712502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098804, 35.234589, 24.825991>,  <32.365898, 35.464554, 25.015139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098804, 35.234589, 24.825991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580130, -0.003852, -0.814515,
		0.466456, -0.818204, 0.336097,
		-0.667734, -0.574915, -0.472868,
		31.898483, 35.062115, 24.684130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795223, 35.105728, 24.602465>,  <32.365898, 35.464554, 25.015139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795223, 35.105728, 24.602465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428673, 35.048084, 24.453074>,  <32.208740, 35.013500, 24.363440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428673, 35.048084, 24.453074>,  <32.795223, 35.105728, 24.602465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428673, 35.048084, 24.453074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368415, 0.061356, -0.927634,
		0.156593, -0.987658, -0.003134,
		-0.916378, -0.144107, -0.373476,
		32.153759, 35.004852, 24.341030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884014, 34.622135, 24.114985>,  <32.795223, 35.105728, 24.602465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884014, 34.622135, 24.114985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556423, 34.826904, 24.011286>,  <32.359867, 34.949764, 23.949066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556423, 34.826904, 24.011286>,  <32.884014, 34.622135, 24.114985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556423, 34.826904, 24.011286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311995, 0.018082, -0.949912,
		-0.481595, -0.858840, -0.174527,
		-0.818978, 0.511924, -0.259246,
		32.310730, 34.980480, 23.933512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524097, 34.207550, 23.658440>,  <32.884014, 34.622135, 24.114985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524097, 34.207550, 23.658440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425724, 34.587856, 23.583019>,  <32.366699, 34.816040, 23.537767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.425724, 34.587856, 23.583019>,  <32.524097, 34.207550, 23.658440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425724, 34.587856, 23.583019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328056, -0.101400, -0.939200,
		-0.912082, -0.292840, -0.286968,
		-0.245937, 0.950770, -0.188553,
		32.351944, 34.873089, 23.526453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237865, 34.146385, 23.026596>,  <32.524097, 34.207550, 23.658440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237865, 34.146385, 23.026596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322041, 34.535618, 23.064190>,  <32.372543, 34.769157, 23.086746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322041, 34.535618, 23.064190>,  <32.237865, 34.146385, 23.026596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322041, 34.535618, 23.064190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391752, 0.004145, -0.920062,
		-0.895683, 0.230430, -0.380333,
		0.210434, 0.973080, 0.093984,
		32.385170, 34.827541, 23.092384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010216, 34.387894, 22.393209>,  <32.237865, 34.146385, 23.026596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010216, 34.387894, 22.393209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245987, 34.688648, 22.511362>,  <32.387447, 34.869099, 22.582254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245987, 34.688648, 22.511362>,  <32.010216, 34.387894, 22.393209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245987, 34.688648, 22.511362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430467, 0.017075, -0.902445,
		-0.683576, 0.659077, -0.313596,
		0.589426, 0.751882, 0.295383,
		32.422813, 34.914211, 22.599977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025505, 34.897217, 21.867508>,  <32.010216, 34.387894, 22.393209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025505, 34.897217, 21.867508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357071, 34.976566, 22.076715>,  <32.556011, 35.024178, 22.202240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357071, 34.976566, 22.076715>,  <32.025505, 34.897217, 21.867508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357071, 34.976566, 22.076715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446057, 0.329795, -0.832027,
		-0.337540, 0.922975, 0.184886,
		0.828915, 0.198373, 0.523018,
		32.605747, 35.036079, 22.233622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149704, 35.582783, 21.805359>,  <32.025505, 34.897217, 21.867508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149704, 35.582783, 21.805359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499565, 35.408638, 21.890629>,  <32.709480, 35.304150, 21.941792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499565, 35.408638, 21.890629>,  <32.149704, 35.582783, 21.805359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499565, 35.408638, 21.890629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409306, 0.427667, -0.805959,
		0.259715, 0.792188, 0.552256,
		0.874652, -0.435362, 0.213176,
		32.761959, 35.278030, 21.954582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684494, 36.108112, 21.579142>,  <32.149704, 35.582783, 21.805359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684494, 36.108112, 21.579142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919128, 35.784267, 21.587635>,  <33.059910, 35.589962, 21.592731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919128, 35.784267, 21.587635>,  <32.684494, 36.108112, 21.579142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919128, 35.784267, 21.587635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347112, 0.227630, -0.909779,
		0.731734, 0.541031, 0.414549,
		0.586583, -0.809611, 0.021234,
		33.095104, 35.541386, 21.594006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318123, 36.326229, 21.395226>,  <32.684494, 36.108112, 21.579142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318123, 36.326229, 21.395226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306004, 35.936100, 21.307753>,  <33.298733, 35.702023, 21.255270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306004, 35.936100, 21.307753>,  <33.318123, 36.326229, 21.395226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306004, 35.936100, 21.307753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320900, 0.197708, -0.926248,
		0.946628, -0.098240, 0.306991,
		-0.030300, -0.975326, -0.218681,
		33.296913, 35.643501, 21.242147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976021, 36.047894, 21.123056>,  <33.318123, 36.326229, 21.395226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976021, 36.047894, 21.123056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700836, 35.784092, 21.001886>,  <33.535725, 35.625809, 20.929184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700836, 35.784092, 21.001886>,  <33.976021, 36.047894, 21.123056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700836, 35.784092, 21.001886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382074, 0.025749, -0.923773,
		0.617035, -0.751257, 0.234266,
		-0.687959, -0.659507, -0.302923,
		33.494450, 35.586239, 20.911009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302559, 35.695656, 20.541401>,  <33.976021, 36.047894, 21.123056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302559, 35.695656, 20.541401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913052, 35.611450, 20.506834>,  <33.679348, 35.560928, 20.486094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913052, 35.611450, 20.506834>,  <34.302559, 35.695656, 20.541401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913052, 35.611450, 20.506834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103868, -0.073276, -0.991888,
		0.202475, -0.974841, 0.093219,
		-0.973763, -0.210515, -0.086418,
		33.620922, 35.548294, 20.480909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314434, 35.136349, 20.143463>,  <34.302559, 35.695656, 20.541401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314434, 35.136349, 20.143463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937325, 35.267288, 20.118105>,  <33.711060, 35.345852, 20.102890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937325, 35.267288, 20.118105>,  <34.314434, 35.136349, 20.143463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937325, 35.267288, 20.118105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000709, -0.188159, -0.982138,
		-0.333434, -0.925979, 0.177159,
		-0.942773, 0.327352, -0.063395,
		33.654491, 35.365494, 20.099087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972504, 34.630348, 19.781691>,  <34.314434, 35.136349, 20.143463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972504, 34.630348, 19.781691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744652, 34.956104, 19.737345>,  <33.607941, 35.151558, 19.710737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744652, 34.956104, 19.737345>,  <33.972504, 34.630348, 19.781691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744652, 34.956104, 19.737345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030784, -0.113651, -0.993044,
		-0.821328, -0.569076, 0.039667,
		-0.569626, 0.814393, -0.110863,
		33.573765, 35.200420, 19.704086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547394, 34.493824, 19.197712>,  <33.972504, 34.630348, 19.781691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547394, 34.493824, 19.197712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481762, 34.888168, 19.211279>,  <33.442383, 35.124775, 19.219419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481762, 34.888168, 19.211279>,  <33.547394, 34.493824, 19.197712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481762, 34.888168, 19.211279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337895, -0.023867, -0.940881,
		-0.926771, -0.165843, 0.337035,
		-0.164083, 0.985864, 0.033919,
		33.432537, 35.183926, 19.221455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829170, 34.675987, 18.851610>,  <33.547394, 34.493824, 19.197712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829170, 34.675987, 18.851610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052406, 35.007484, 18.834970>,  <33.186348, 35.206383, 18.824987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052406, 35.007484, 18.834970>,  <32.829170, 34.675987, 18.851610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052406, 35.007484, 18.834970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302055, 0.156204, -0.940406,
		-0.772853, 0.537394, 0.337500,
		0.558087, 0.828739, -0.041600,
		33.219833, 35.256107, 18.822491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467285, 35.078438, 18.489876>,  <32.829170, 34.675987, 18.851610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467285, 35.078438, 18.489876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800381, 35.299019, 18.470087>,  <33.000237, 35.431370, 18.458214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800381, 35.299019, 18.470087>,  <32.467285, 35.078438, 18.489876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800381, 35.299019, 18.470087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162732, 0.158372, -0.973877,
		-0.529216, 0.819033, 0.221621,
		0.832736, 0.551456, -0.049470,
		33.050201, 35.464455, 18.455246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203793, 35.578304, 18.146898>,  <32.467285, 35.078438, 18.489876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203793, 35.578304, 18.146898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601849, 35.595646, 18.111515>,  <32.840683, 35.606052, 18.090284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601849, 35.595646, 18.111515>,  <32.203793, 35.578304, 18.146898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601849, 35.595646, 18.111515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098458, 0.467627, -0.878425,
		0.003282, 0.882862, 0.469621,
		0.995136, 0.043355, -0.088460,
		32.900391, 35.608654, 18.084978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280193, 36.250790, 17.778130>,  <32.203793, 35.578304, 18.146898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280193, 36.250790, 17.778130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606541, 36.023758, 17.733936>,  <32.802349, 35.887539, 17.707420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606541, 36.023758, 17.733936>,  <32.280193, 36.250790, 17.778130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606541, 36.023758, 17.733936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043542, 0.250831, -0.967051,
		0.576590, 0.784179, 0.229360,
		0.815872, -0.567579, -0.110482,
		32.851303, 35.853485, 17.700792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803661, 36.708969, 17.450815>,  <32.280193, 36.250790, 17.778130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803661, 36.708969, 17.450815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924618, 36.338585, 17.360340>,  <32.997192, 36.116356, 17.306055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924618, 36.338585, 17.360340>,  <32.803661, 36.708969, 17.450815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924618, 36.338585, 17.360340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146156, 0.279535, -0.948946,
		0.941913, 0.253889, 0.219863,
		0.302387, -0.925959, -0.226190,
		33.015335, 36.060799, 17.292482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403030, 36.779716, 17.052500>,  <32.803661, 36.708969, 17.450815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403030, 36.779716, 17.052500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277485, 36.412880, 16.954168>,  <33.202156, 36.192780, 16.895170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277485, 36.412880, 16.954168>,  <33.403030, 36.779716, 17.052500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277485, 36.412880, 16.954168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137066, 0.299963, -0.944052,
		0.939522, -0.262610, -0.219850,
		-0.313864, -0.917092, -0.245827,
		33.183327, 36.137753, 16.880421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081989, 37.002167, 17.387770>,  <33.403030, 36.779716, 17.052500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081989, 37.002167, 17.387770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199516, 37.382607, 17.349653>,  <34.270031, 37.610870, 17.326784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199516, 37.382607, 17.349653>,  <34.081989, 37.002167, 17.387770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199516, 37.382607, 17.349653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270346, 0.178304, 0.946108,
		0.916835, -0.252218, 0.309514,
		0.293813, 0.951101, -0.095289,
		34.287659, 37.667938, 17.321066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699814, 37.203125, 17.865599>,  <34.081989, 37.002167, 17.387770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699814, 37.203125, 17.865599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502560, 37.545475, 17.803263>,  <34.384205, 37.750885, 17.765862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502560, 37.545475, 17.803263>,  <34.699814, 37.203125, 17.865599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502560, 37.545475, 17.803263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229556, 0.044766, 0.972265,
		0.839117, 0.515237, 0.174396,
		-0.493140, 0.855878, -0.155840,
		34.354618, 37.802238, 17.756512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946430, 37.584991, 18.337614>,  <34.699814, 37.203125, 17.865599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946430, 37.584991, 18.337614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621796, 37.787525, 18.221027>,  <34.427013, 37.909046, 18.151075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621796, 37.787525, 18.221027>,  <34.946430, 37.584991, 18.337614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621796, 37.787525, 18.221027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251395, 0.147679, 0.956552,
		0.527379, 0.849597, 0.007436,
		-0.811586, 0.506335, -0.291467,
		34.378319, 37.939426, 18.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046635, 38.295685, 18.571213>,  <34.946430, 37.584991, 18.337614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046635, 38.295685, 18.571213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654648, 38.231232, 18.524382>,  <34.419456, 38.192562, 18.496283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654648, 38.231232, 18.524382>,  <35.046635, 38.295685, 18.571213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654648, 38.231232, 18.524382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176319, 0.428413, 0.886213,
		-0.092636, 0.889101, -0.448240,
		-0.979964, -0.161128, -0.117079,
		34.360657, 38.182892, 18.489258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693092, 38.841747, 18.950888>,  <35.046635, 38.295685, 18.571213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693092, 38.841747, 18.950888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413425, 38.556858, 18.925888>,  <34.245625, 38.385925, 18.910889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413425, 38.556858, 18.925888>,  <34.693092, 38.841747, 18.950888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413425, 38.556858, 18.925888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303498, 0.216514, 0.927907,
		-0.647341, 0.667732, -0.367537,
		-0.699170, -0.712219, -0.062497,
		34.203674, 38.343193, 18.907139>
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
