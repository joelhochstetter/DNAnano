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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.421055, 33.505005, 52.164776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333660, 33.395153, 51.790215>,  <40.281223, 33.329243, 51.565479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333660, 33.395153, 51.790215>,  <40.421055, 33.505005, 52.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333660, 33.395153, 51.790215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974994, -0.101386, -0.197758,
		-0.040627, -0.956190, 0.289913,
		-0.218488, -0.274629, -0.936398,
		40.268112, 33.312763, 51.509296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767696, 33.040642, 52.175278>,  <40.421055, 33.505005, 52.164776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767696, 33.040642, 52.175278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699295, 33.125290, 51.790367>,  <40.658257, 33.176079, 51.559422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699295, 33.125290, 51.790367>,  <40.767696, 33.040642, 52.175278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699295, 33.125290, 51.790367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984949, 0.061698, -0.161461,
		0.025202, -0.975402, -0.218986,
		-0.171001, 0.211621, -0.962276,
		40.647995, 33.188778, 51.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131805, 32.585979, 51.844994>,  <40.767696, 33.040642, 52.175278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131805, 32.585979, 51.844994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068928, 32.914654, 51.625862>,  <41.031200, 33.111858, 51.494381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068928, 32.914654, 51.625862>,  <41.131805, 32.585979, 51.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068928, 32.914654, 51.625862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987407, 0.140772, -0.072189,
		0.017803, -0.552280, -0.833469,
		-0.157198, 0.821687, -0.547831,
		41.021767, 33.161160, 51.461514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660408, 32.667664, 51.355953>,  <41.131805, 32.585979, 51.844994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660408, 32.667664, 51.355953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546150, 33.048706, 51.397789>,  <41.477596, 33.277332, 51.422890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546150, 33.048706, 51.397789>,  <41.660408, 32.667664, 51.355953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546150, 33.048706, 51.397789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952059, 0.269613, 0.144544,
		0.109494, 0.140867, -0.983955,
		-0.285649, 0.952610, 0.104592,
		41.460457, 33.334488, 51.429165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065334, 33.058949, 50.894615>,  <41.660408, 32.667664, 51.355953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065334, 33.058949, 50.894615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915508, 33.336105, 51.141064>,  <41.825615, 33.502399, 51.288933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915508, 33.336105, 51.141064>,  <42.065334, 33.058949, 50.894615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915508, 33.336105, 51.141064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889063, 0.457016, 0.026530,
		-0.263196, 0.557708, -0.787204,
		-0.374561, 0.692891, 0.616122,
		41.803139, 33.543972, 51.325901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338356, 33.677269, 50.622467>,  <42.065334, 33.058949, 50.894615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338356, 33.677269, 50.622467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231274, 33.762852, 50.998245>,  <42.167023, 33.814201, 51.223713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231274, 33.762852, 50.998245>,  <42.338356, 33.677269, 50.622467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231274, 33.762852, 50.998245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878199, 0.455286, 0.146562,
		-0.396357, 0.864254, -0.309783,
		-0.267706, 0.213960, 0.939444,
		42.150963, 33.827042, 51.280079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495567, 34.332687, 50.688049>,  <42.338356, 33.677269, 50.622467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495567, 34.332687, 50.688049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480755, 34.178936, 51.057022>,  <42.471867, 34.086685, 51.278404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480755, 34.178936, 51.057022>,  <42.495567, 34.332687, 50.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480755, 34.178936, 51.057022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885625, 0.414978, 0.208476,
		-0.462923, 0.824647, 0.325052,
		-0.037029, -0.384383, 0.922431,
		42.469646, 34.063622, 51.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774334, 34.801682, 51.020641>,  <42.495567, 34.332687, 50.688049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774334, 34.801682, 51.020641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792614, 34.497074, 51.279251>,  <42.803581, 34.314308, 51.434418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792614, 34.497074, 51.279251>,  <42.774334, 34.801682, 51.020641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792614, 34.497074, 51.279251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852794, 0.366793, 0.371760,
		-0.520244, 0.534366, 0.666183,
		0.045695, -0.761522, 0.646526,
		42.806324, 34.268616, 51.473209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847645, 35.055714, 51.678726>,  <42.774334, 34.801682, 51.020641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847645, 35.055714, 51.678726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982010, 34.682789, 51.732319>,  <43.062630, 34.459034, 51.764473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982010, 34.682789, 51.732319>,  <42.847645, 35.055714, 51.678726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982010, 34.682789, 51.732319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879738, 0.361374, 0.308981,
		-0.336484, 0.014074, 0.941584,
		0.335916, -0.932315, 0.133978,
		43.082783, 34.403095, 51.772511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415073, 35.093487, 52.226875>,  <42.847645, 35.055714, 51.678726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415073, 35.093487, 52.226875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481647, 34.738831, 52.054287>,  <43.521591, 34.526035, 51.950733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481647, 34.738831, 52.054287>,  <43.415073, 35.093487, 52.226875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481647, 34.738831, 52.054287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983782, 0.119634, 0.133641,
		-0.066873, -0.446715, 0.892174,
		0.166434, -0.886642, -0.431470,
		43.531578, 34.472839, 51.924847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939667, 34.800179, 52.683327>,  <43.415073, 35.093487, 52.226875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939667, 34.800179, 52.683327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938431, 34.634678, 52.319172>,  <43.937691, 34.535378, 52.100677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938431, 34.634678, 52.319172>,  <43.939667, 34.800179, 52.683327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938431, 34.634678, 52.319172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986769, 0.146318, -0.069845,
		0.162105, -0.898556, 0.407823,
		-0.003088, -0.413749, -0.910386,
		43.937504, 34.510551, 52.046055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507912, 34.392189, 52.709908>,  <43.939667, 34.800179, 52.683327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507912, 34.392189, 52.709908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424774, 34.480270, 52.328686>,  <44.374893, 34.533119, 52.099953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424774, 34.480270, 52.328686>,  <44.507912, 34.392189, 52.709908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424774, 34.480270, 52.328686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974435, 0.131587, -0.182099,
		0.085310, -0.966537, -0.241926,
		-0.207840, 0.220207, -0.953054,
		44.362423, 34.546333, 52.042770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879429, 33.957481, 52.273628>,  <44.507912, 34.392189, 52.709908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879429, 33.957481, 52.273628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807274, 34.258530, 52.020321>,  <44.763981, 34.439159, 51.868336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807274, 34.258530, 52.020321>,  <44.879429, 33.957481, 52.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807274, 34.258530, 52.020321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980501, 0.086550, -0.176431,
		-0.077976, -0.652745, -0.753554,
		-0.180384, 0.752617, -0.633268,
		44.753159, 34.484314, 51.830341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314568, 33.864712, 51.652481>,  <44.879429, 33.957481, 52.273628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314568, 33.864712, 51.652481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206234, 34.249336, 51.634377>,  <45.141235, 34.480110, 51.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206234, 34.249336, 51.634377>,  <45.314568, 33.864712, 51.652481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206234, 34.249336, 51.634377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913676, 0.241971, -0.326568,
		-0.303062, -0.129803, -0.944089,
		-0.270831, 0.961562, -0.045266,
		45.124985, 34.537804, 51.620796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493641, 34.061131, 51.031464>,  <45.314568, 33.864712, 51.652481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493641, 34.061131, 51.031464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453011, 34.396278, 51.245998>,  <45.428635, 34.597366, 51.374718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453011, 34.396278, 51.245998>,  <45.493641, 34.061131, 51.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453011, 34.396278, 51.245998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901871, 0.305105, -0.305841,
		-0.419894, 0.452640, -0.786642,
		-0.101573, 0.837871, 0.536335,
		45.422539, 34.647640, 51.406898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684517, 34.676453, 50.547405>,  <45.493641, 34.061131, 51.031464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684517, 34.676453, 50.547405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728901, 34.794586, 50.926975>,  <45.755531, 34.865467, 51.154716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728901, 34.794586, 50.926975>,  <45.684517, 34.676453, 50.547405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728901, 34.794586, 50.926975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960039, 0.214991, -0.179174,
		-0.256927, 0.930890, -0.259678,
		0.110963, 0.295335, 0.948928,
		45.762188, 34.883186, 51.211655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029747, 35.331741, 50.529732>,  <45.684517, 34.676453, 50.547405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029747, 35.331741, 50.529732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087017, 35.227760, 50.911713>,  <46.121380, 35.165371, 51.140900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087017, 35.227760, 50.911713>,  <46.029747, 35.331741, 50.529732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087017, 35.227760, 50.911713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943913, 0.325948, -0.052793,
		-0.297539, 0.908946, 0.292041,
		0.143176, -0.259953, 0.954947,
		46.129971, 35.149773, 51.198196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377514, 35.882320, 50.917427>,  <46.029747, 35.331741, 50.529732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377514, 35.882320, 50.917427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449394, 35.539497, 51.110577>,  <46.492523, 35.333805, 51.226467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449394, 35.539497, 51.110577>,  <46.377514, 35.882320, 50.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449394, 35.539497, 51.110577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977633, 0.210119, 0.009120,
		-0.109277, 0.470430, 0.875645,
		0.179699, -0.857056, 0.482870,
		46.503304, 35.282379, 51.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014095, 35.995003, 51.286308>,  <46.377514, 35.882320, 50.917427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014095, 35.995003, 51.286308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989605, 35.597385, 51.322380>,  <46.974911, 35.358814, 51.344025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989605, 35.597385, 51.322380>,  <47.014095, 35.995003, 51.286308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989605, 35.597385, 51.322380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996561, -0.055831, 0.061231,
		-0.055831, 0.093622, 0.994041,
		-0.061231, -0.994041, 0.090183,
		46.971237, 35.299171, 51.349434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452194, 35.819904, 51.945602>,  <47.014095, 35.995003, 51.286308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452194, 35.819904, 51.945602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413589, 35.502319, 51.705498>,  <47.390427, 35.311768, 51.561436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.413589, 35.502319, 51.705498>,  <47.452194, 35.819904, 51.945602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.413589, 35.502319, 51.705498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980486, -0.179609, 0.079926,
		-0.171270, -0.580832, 0.795802,
		-0.096510, -0.793961, -0.600259,
		47.384636, 35.264130, 51.525421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850208, 35.362206, 52.323879>,  <47.452194, 35.819904, 51.945602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850208, 35.362206, 52.323879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755367, 35.176876, 51.982327>,  <47.698463, 35.065678, 51.777393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.755367, 35.176876, 51.982327>,  <47.850208, 35.362206, 52.323879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.755367, 35.176876, 51.982327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891589, -0.452841, -0.001854,
		-0.385813, -0.761751, 0.520465,
		-0.237100, -0.463326, -0.853881,
		47.684238, 35.037880, 51.726162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.256584, 35.088062, 51.672157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.268816, 35.030754, 52.067841>,  <24.276155, 34.996368, 52.305252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.268816, 35.030754, 52.067841>,  <24.256584, 35.088062, 51.672157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268816, 35.030754, 52.067841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950818, -0.301027, -0.072989,
		0.308237, 0.942792, 0.127015,
		0.030579, -0.143266, 0.989212,
		24.277990, 34.987774, 52.364605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766062, 35.546829, 51.874504>,  <24.256584, 35.088062, 51.672157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766062, 35.546829, 51.874504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.748333, 35.258984, 52.151688>,  <24.737696, 35.086277, 52.317997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.748333, 35.258984, 52.151688>,  <24.766062, 35.546829, 51.874504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748333, 35.258984, 52.151688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961477, -0.219089, -0.166016,
		0.271287, 0.658908, 0.701601,
		-0.044324, -0.719612, 0.692961,
		24.735035, 35.043098, 52.359577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442509, 35.685062, 52.328381>,  <24.766062, 35.546829, 51.874504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442509, 35.685062, 52.328381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.312336, 35.310646, 52.381927>,  <25.234232, 35.085995, 52.414055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.312336, 35.310646, 52.381927>,  <25.442509, 35.685062, 52.328381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312336, 35.310646, 52.381927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944861, -0.327377, 0.007837,
		0.036488, 0.129034, 0.990969,
		-0.325432, -0.936042, 0.133864,
		25.214706, 35.029835, 52.422089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862608, 35.460644, 52.774059>,  <25.442509, 35.685062, 52.328381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862608, 35.460644, 52.774059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.711571, 35.124210, 52.619137>,  <25.620949, 34.922352, 52.526184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.711571, 35.124210, 52.619137>,  <25.862608, 35.460644, 52.774059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711571, 35.124210, 52.619137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905497, -0.422864, 0.035518,
		-0.193651, -0.337292, 0.921267,
		-0.377591, -0.841083, -0.387305,
		25.598293, 34.871887, 52.502945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266542, 34.942562, 53.089546>,  <25.862608, 35.460644, 52.774059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266542, 34.942562, 53.089546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.073481, 34.756447, 52.792751>,  <25.957644, 34.644775, 52.614674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.073481, 34.756447, 52.792751>,  <26.266542, 34.942562, 53.089546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073481, 34.756447, 52.792751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820727, -0.536005, -0.197750,
		-0.305698, -0.704416, 0.640583,
		-0.482654, -0.465292, -0.741989,
		25.928684, 34.616859, 52.570156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288452, 34.252644, 53.246582>,  <26.266542, 34.942562, 53.089546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288452, 34.252644, 53.246582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.219357, 34.284645, 52.853897>,  <26.177900, 34.303844, 52.618286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.219357, 34.284645, 52.853897>,  <26.288452, 34.252644, 53.246582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219357, 34.284645, 52.853897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840940, -0.506944, -0.189279,
		-0.512816, -0.858258, 0.020295,
		-0.172739, 0.079999, -0.981714,
		26.167536, 34.308647, 52.559383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331604, 33.558971, 52.973927>,  <26.288452, 34.252644, 53.246582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331604, 33.558971, 52.973927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.415737, 33.830978, 52.692974>,  <26.466217, 33.994183, 52.524403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.415737, 33.830978, 52.692974>,  <26.331604, 33.558971, 52.973927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415737, 33.830978, 52.692974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881336, -0.442819, -0.164799,
		-0.423093, -0.584368, -0.692464,
		0.210332, 0.680019, -0.702378,
		26.478836, 34.034985, 52.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859356, 33.227123, 52.634747>,  <26.331604, 33.558971, 52.973927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859356, 33.227123, 52.634747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.891354, 33.580997, 52.451038>,  <26.910553, 33.793324, 52.340813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.891354, 33.580997, 52.451038>,  <26.859356, 33.227123, 52.634747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891354, 33.580997, 52.451038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946264, -0.212235, -0.244010,
		-0.313346, -0.415072, -0.854125,
		0.079994, 0.884687, -0.459271,
		26.915352, 33.846405, 52.313255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312574, 33.053627, 52.158291>,  <26.859356, 33.227123, 52.634747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312574, 33.053627, 52.158291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349871, 33.451878, 52.155731>,  <27.372248, 33.690826, 52.154194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349871, 33.451878, 52.155731>,  <27.312574, 33.053627, 52.158291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349871, 33.451878, 52.155731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918280, -0.088477, -0.385919,
		-0.384796, 0.030107, -0.922511,
		0.093240, 0.995623, -0.006399,
		27.377842, 33.750565, 52.153812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606102, 33.200531, 51.439640>,  <27.312574, 33.053627, 52.158291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606102, 33.200531, 51.439640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.686226, 33.511234, 51.678482>,  <27.734301, 33.697655, 51.821785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.686226, 33.511234, 51.678482>,  <27.606102, 33.200531, 51.439640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686226, 33.511234, 51.678482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933886, 0.032876, -0.356057,
		-0.296199, 0.628945, -0.718814,
		0.200308, 0.776754, 0.597101,
		27.746319, 33.744259, 51.857613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008650, 33.712650, 50.967194>,  <27.606102, 33.200531, 51.439640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008650, 33.712650, 50.967194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068344, 33.814613, 51.349346>,  <28.104160, 33.875790, 51.578636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068344, 33.814613, 51.349346>,  <28.008650, 33.712650, 50.967194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068344, 33.814613, 51.349346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957932, 0.202268, -0.203603,
		-0.245143, 0.945573, -0.214000,
		0.149237, 0.254909, 0.955379,
		28.113115, 33.891087, 51.635960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412390, 34.398220, 50.973446>,  <28.008650, 33.712650, 50.967194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412390, 34.398220, 50.973446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.462662, 34.199230, 51.316776>,  <28.492825, 34.079838, 51.522774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.462662, 34.199230, 51.316776>,  <28.412390, 34.398220, 50.973446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462662, 34.199230, 51.316776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991749, 0.085057, -0.095918,
		-0.025290, 0.863299, 0.504058,
		0.125680, -0.497473, 0.858327,
		28.500366, 34.049988, 51.574276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981560, 34.742355, 51.226105>,  <28.412390, 34.398220, 50.973446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981560, 34.742355, 51.226105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.976458, 34.382099, 51.399857>,  <28.973396, 34.165947, 51.504108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.976458, 34.382099, 51.399857>,  <28.981560, 34.742355, 51.226105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976458, 34.382099, 51.399857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997277, -0.043015, -0.059904,
		0.072637, 0.432436, 0.898734,
		-0.012755, -0.900638, 0.434383,
		28.972631, 34.111908, 51.530170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431501, 34.806740, 51.724583>,  <28.981560, 34.742355, 51.226105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431501, 34.806740, 51.724583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408224, 34.412163, 51.663200>,  <29.394257, 34.175419, 51.626369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.408224, 34.412163, 51.663200>,  <29.431501, 34.806740, 51.724583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408224, 34.412163, 51.663200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972239, -0.021105, -0.233037,
		0.226639, -0.162756, 0.960284,
		-0.058195, -0.986440, -0.153455,
		29.390766, 34.116230, 51.617165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924877, 34.560379, 52.043339>,  <29.431501, 34.806740, 51.724583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924877, 34.560379, 52.043339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845842, 34.248150, 51.806137>,  <29.798422, 34.060810, 51.663815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845842, 34.248150, 51.806137>,  <29.924877, 34.560379, 52.043339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845842, 34.248150, 51.806137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974910, -0.093210, -0.202143,
		0.102514, -0.618070, 0.779410,
		-0.197588, -0.780577, -0.593008,
		29.786566, 34.013977, 51.628235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384113, 34.105038, 52.275829>,  <29.924877, 34.560379, 52.043339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384113, 34.105038, 52.275829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.290829, 33.960991, 51.914516>,  <30.234858, 33.874561, 51.697727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.290829, 33.960991, 51.914516>,  <30.384113, 34.105038, 52.275829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290829, 33.960991, 51.914516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972416, -0.082147, -0.218310,
		0.004415, -0.929283, 0.369343,
		-0.233212, -0.360119, -0.903287,
		30.220865, 33.852955, 51.643532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832418, 33.427959, 52.207279>,  <30.384113, 34.105038, 52.275829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832418, 33.427959, 52.207279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.722034, 33.567554, 51.849049>,  <30.655804, 33.651314, 51.634109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.722034, 33.567554, 51.849049>,  <30.832418, 33.427959, 52.207279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722034, 33.567554, 51.849049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943582, -0.079059, -0.321563,
		-0.183026, -0.933785, -0.307485,
		-0.275961, 0.348992, -0.895573,
		30.639246, 33.672253, 51.580376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187445, 33.022114, 51.780300>,  <30.832418, 33.427959, 52.207279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187445, 33.022114, 51.780300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092386, 33.349468, 51.571007>,  <31.035351, 33.545879, 51.445431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092386, 33.349468, 51.571007>,  <31.187445, 33.022114, 51.780300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092386, 33.349468, 51.571007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932279, 0.040927, -0.359417,
		-0.272727, -0.573212, -0.772689,
		-0.237646, 0.818384, -0.523232,
		31.021091, 33.594982, 51.414036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597538, 33.034290, 51.098656>,  <31.187445, 33.022114, 51.780300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597538, 33.034290, 51.098656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.494007, 33.419106, 51.064034>,  <31.431889, 33.649994, 51.043262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.494007, 33.419106, 51.064034>,  <31.597538, 33.034290, 51.098656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494007, 33.419106, 51.064034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839112, 0.179562, -0.513467,
		-0.478433, -0.205527, -0.853733,
		-0.258829, 0.962038, -0.086552,
		31.416359, 33.707718, 51.038067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573761, 33.144371, 50.401592>,  <31.597538, 33.034290, 51.098656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573761, 33.144371, 50.401592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613251, 33.494808, 50.590363>,  <31.636946, 33.705070, 50.703625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613251, 33.494808, 50.590363>,  <31.573761, 33.144371, 50.401592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613251, 33.494808, 50.590363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743590, 0.250210, -0.620056,
		-0.661308, 0.412132, -0.626753,
		0.098725, 0.876095, 0.471922,
		31.642868, 33.757637, 50.731937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571756, 33.603542, 49.947422>,  <31.573761, 33.144371, 50.401592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571756, 33.603542, 49.947422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741262, 33.807678, 50.246750>,  <31.842966, 33.930161, 50.426346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.741262, 33.807678, 50.246750>,  <31.571756, 33.603542, 49.947422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741262, 33.807678, 50.246750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629257, 0.428373, -0.648485,
		-0.651505, 0.745689, -0.139603,
		0.423766, 0.510337, 0.748317,
		31.868393, 33.960781, 50.471245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.151230, 35.234684, 35.178913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.338690, 34.931614, 34.997234>,  <24.451166, 34.749771, 34.888229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.338690, 34.931614, 34.997234>,  <24.151230, 35.234684, 35.178913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338690, 34.931614, 34.997234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306858, -0.342509, 0.887990,
		-0.828374, -0.555531, 0.071982,
		0.468652, -0.757676, -0.454194,
		24.479286, 34.704311, 34.860977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.947186, 34.514236, 35.511986>,  <24.151230, 35.234684, 35.178913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.947186, 34.514236, 35.511986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.318460, 34.604317, 35.393494>,  <24.541225, 34.658363, 35.322399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.318460, 34.604317, 35.393494>,  <23.947186, 34.514236, 35.511986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318460, 34.604317, 35.393494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372075, -0.572227, 0.730833,
		-0.004926, -0.788570, -0.614925,
		0.928190, 0.225198, -0.296226,
		24.596918, 34.671875, 35.304626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370867, 33.835701, 35.453205>,  <23.947186, 34.514236, 35.511986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370867, 33.835701, 35.453205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.553675, 34.182781, 35.531410>,  <24.663359, 34.391029, 35.578335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.553675, 34.182781, 35.531410>,  <24.370867, 33.835701, 35.453205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553675, 34.182781, 35.531410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282848, -0.350179, 0.892956,
		0.843286, -0.352797, -0.405467,
		0.457018, 0.867703, 0.195513,
		24.690781, 34.443092, 35.590065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912596, 33.730320, 35.959648>,  <24.370867, 33.835701, 35.453205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912596, 33.730320, 35.959648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.834030, 34.122528, 35.958504>,  <24.786890, 34.357853, 35.957817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.834030, 34.122528, 35.958504>,  <24.912596, 33.730320, 35.959648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834030, 34.122528, 35.958504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036756, 0.010280, 0.999272,
		0.979832, 0.196167, -0.038059,
		-0.196415, 0.980517, -0.002862,
		24.775106, 34.416683, 35.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329760, 34.057320, 36.401794>,  <24.912596, 33.730320, 35.959648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329760, 34.057320, 36.401794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.982130, 34.255100, 36.407841>,  <24.773552, 34.373768, 36.411469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.982130, 34.255100, 36.407841>,  <25.329760, 34.057320, 36.401794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982130, 34.255100, 36.407841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058665, -0.133355, 0.989331,
		0.491188, 0.858916, 0.144903,
		-0.869076, 0.494448, 0.015115,
		24.721407, 34.403435, 36.412376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380344, 34.643887, 36.830650>,  <25.329760, 34.057320, 36.401794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380344, 34.643887, 36.830650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.990252, 34.555607, 36.824829>,  <24.756195, 34.502640, 36.821335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.990252, 34.555607, 36.824829>,  <25.380344, 34.643887, 36.830650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990252, 34.555607, 36.824829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007661, -0.099483, 0.995010,
		-0.221047, 0.970255, 0.098710,
		-0.975233, -0.220700, -0.014557,
		24.697681, 34.489395, 36.820461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860792, 35.016815, 37.269875>,  <25.380344, 34.643887, 36.830650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860792, 35.016815, 37.269875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.768473, 34.633915, 37.200130>,  <24.713081, 34.404175, 37.158283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.768473, 34.633915, 37.200130>,  <24.860792, 35.016815, 37.269875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768473, 34.633915, 37.200130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165226, -0.215152, 0.962502,
		-0.958871, 0.193334, 0.207820,
		-0.230797, -0.957252, -0.174360,
		24.699234, 34.346741, 37.147823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509935, 34.949627, 37.804855>,  <24.860792, 35.016815, 37.269875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509935, 34.949627, 37.804855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651352, 34.606182, 37.656372>,  <24.736202, 34.400116, 37.567284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651352, 34.606182, 37.656372>,  <24.509935, 34.949627, 37.804855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651352, 34.606182, 37.656372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375101, -0.233401, 0.897120,
		-0.856918, -0.456409, 0.239549,
		0.353542, -0.858612, -0.371205,
		24.757414, 34.348598, 37.545010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324604, 34.280136, 38.272930>,  <24.509935, 34.949627, 37.804855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324604, 34.280136, 38.272930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.669304, 34.239269, 38.074154>,  <24.876123, 34.214748, 37.954887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.669304, 34.239269, 38.074154>,  <24.324604, 34.280136, 38.272930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.669304, 34.239269, 38.074154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432544, -0.363945, 0.824894,
		-0.265133, -0.925801, -0.269439,
		0.861748, -0.102162, -0.496944,
		24.927828, 34.208622, 37.925072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535904, 33.637821, 38.440319>,  <24.324604, 34.280136, 38.272930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535904, 33.637821, 38.440319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.843582, 33.863216, 38.319775>,  <25.028189, 33.998455, 38.247448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.843582, 33.863216, 38.319775>,  <24.535904, 33.637821, 38.440319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843582, 33.863216, 38.319775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561958, -0.371986, 0.738803,
		0.304206, -0.737635, -0.602788,
		0.769195, 0.563490, -0.301359,
		25.074341, 34.032265, 38.229366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076540, 33.150608, 38.271740>,  <24.535904, 33.637821, 38.440319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076540, 33.150608, 38.271740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.211699, 33.510990, 38.380627>,  <25.292793, 33.727219, 38.445957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.211699, 33.510990, 38.380627>,  <25.076540, 33.150608, 38.271740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211699, 33.510990, 38.380627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685309, -0.433762, 0.584980,
		0.645118, -0.011113, -0.764002,
		0.337896, 0.900959, 0.272212,
		25.313066, 33.781277, 38.462292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902657, 33.036442, 38.289196>,  <25.076540, 33.150608, 38.271740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902657, 33.036442, 38.289196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.809206, 33.371883, 38.486034>,  <25.753136, 33.573151, 38.604137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.809206, 33.371883, 38.486034>,  <25.902657, 33.036442, 38.289196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809206, 33.371883, 38.486034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533750, -0.312419, 0.785815,
		0.812730, 0.446241, -0.374618,
		-0.233625, 0.838608, 0.492094,
		25.739119, 33.623466, 38.633663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510799, 33.253876, 38.514542>,  <25.902657, 33.036442, 38.289196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510799, 33.253876, 38.514542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.245564, 33.443584, 38.746189>,  <26.086422, 33.557411, 38.885178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.245564, 33.443584, 38.746189>,  <26.510799, 33.253876, 38.514542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245564, 33.443584, 38.746189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537433, -0.236879, 0.809354,
		0.521037, 0.847910, -0.097819,
		-0.663088, 0.474275, 0.579118,
		26.046637, 33.585865, 38.919926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878832, 33.708603, 38.992046>,  <26.510799, 33.253876, 38.514542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878832, 33.708603, 38.992046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.513628, 33.640053, 39.140121>,  <26.294506, 33.598923, 39.228966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.513628, 33.640053, 39.140121>,  <26.878832, 33.708603, 38.992046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513628, 33.640053, 39.140121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405959, -0.292422, 0.865845,
		-0.040136, 0.940807, 0.336557,
		-0.913010, -0.171379, 0.370192,
		26.239725, 33.588638, 39.251179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777122, 34.099934, 39.613430>,  <26.878832, 33.708603, 38.992046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777122, 34.099934, 39.613430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.527180, 33.788975, 39.642311>,  <26.377214, 33.602402, 39.659641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.527180, 33.788975, 39.642311>,  <26.777122, 34.099934, 39.613430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527180, 33.788975, 39.642311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282715, -0.139095, 0.949065,
		-0.727755, 0.613442, 0.306696,
		-0.624856, -0.777394, 0.072202,
		26.339724, 33.555756, 39.663971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118513, 34.124031, 40.067062>,  <26.777122, 34.099934, 39.613430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118513, 34.124031, 40.067062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.306448, 33.771084, 40.056610>,  <26.419209, 33.559315, 40.050339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.306448, 33.771084, 40.056610>,  <26.118513, 34.124031, 40.067062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306448, 33.771084, 40.056610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121911, 0.035543, 0.991904,
		-0.874295, -0.469218, 0.124270,
		0.469836, -0.882367, -0.026128,
		26.447399, 33.506374, 40.048771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965338, 33.793388, 40.614090>,  <26.118513, 34.124031, 40.067062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965338, 33.793388, 40.614090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.300894, 33.603069, 40.508358>,  <26.502228, 33.488876, 40.444920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.300894, 33.603069, 40.508358>,  <25.965338, 33.793388, 40.614090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300894, 33.603069, 40.508358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263903, -0.069187, 0.962064,
		-0.476041, -0.876827, 0.067525,
		0.838892, -0.475802, -0.264334,
		26.552561, 33.460327, 40.429058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125847, 33.115421, 40.892132>,  <25.965338, 33.793388, 40.614090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125847, 33.115421, 40.892132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443768, 33.355190, 40.854229>,  <26.634520, 33.499050, 40.831486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.443768, 33.355190, 40.854229>,  <26.125847, 33.115421, 40.892132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443768, 33.355190, 40.854229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000170, 0.156368, 0.987699,
		0.606867, -0.785011, 0.124383,
		0.794804, 0.599423, -0.094761,
		26.682209, 33.535019, 40.825802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567907, 32.988224, 41.388893>,  <26.125847, 33.115421, 40.892132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567907, 32.988224, 41.388893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692410, 33.348419, 41.267406>,  <26.767111, 33.564537, 41.194515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.692410, 33.348419, 41.267406>,  <26.567907, 32.988224, 41.388893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692410, 33.348419, 41.267406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301121, 0.209675, 0.930249,
		0.901359, -0.380999, -0.205894,
		0.311253, 0.900487, -0.303719,
		26.785786, 33.618565, 41.176292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313421, 33.068893, 41.472542>,  <26.567907, 32.988224, 41.388893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313421, 33.068893, 41.472542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.100727, 33.405876, 41.507221>,  <26.973110, 33.608067, 41.528027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.100727, 33.405876, 41.507221>,  <27.313421, 33.068893, 41.472542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100727, 33.405876, 41.507221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233285, 0.047294, 0.971258,
		0.814147, 0.536677, -0.221681,
		-0.531736, 0.842461, 0.086694,
		26.941206, 33.658615, 41.533230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610977, 33.379734, 42.027683>,  <27.313421, 33.068893, 41.472542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610977, 33.379734, 42.027683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302246, 33.632137, 41.996410>,  <27.117008, 33.783581, 41.977646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.302246, 33.632137, 41.996410>,  <27.610977, 33.379734, 42.027683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302246, 33.632137, 41.996410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092599, 0.233201, 0.968010,
		0.629054, 0.739896, -0.238422,
		-0.771827, 0.631008, -0.078183,
		27.070698, 33.821438, 41.972954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530615, 33.895981, 42.618969>,  <27.610977, 33.379734, 42.027683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530615, 33.895981, 42.618969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.815273, 33.683712, 42.803123>,  <27.986069, 33.556351, 42.913616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.815273, 33.683712, 42.803123>,  <27.530615, 33.895981, 42.618969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815273, 33.683712, 42.803123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336911, 0.832829, 0.439188,
		-0.616485, -0.157438, 0.771466,
		0.711644, -0.530668, 0.460384,
		28.028767, 33.524513, 42.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669624, 34.270142, 43.319542>,  <27.530615, 33.895981, 42.618969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669624, 34.270142, 43.319542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983618, 34.022392, 43.324921>,  <28.172014, 33.873745, 43.328148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983618, 34.022392, 43.324921>,  <27.669624, 34.270142, 43.319542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983618, 34.022392, 43.324921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501645, 0.648217, 0.572858,
		-0.363526, -0.442940, 0.819544,
		0.784984, -0.619370, 0.013445,
		28.219112, 33.836582, 43.328953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959215, 34.223728, 44.048759>,  <27.669624, 34.270142, 43.319542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959215, 34.223728, 44.048759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262072, 34.108246, 43.814365>,  <28.443787, 34.038956, 43.673729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262072, 34.108246, 43.814365>,  <27.959215, 34.223728, 44.048759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262072, 34.108246, 43.814365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622591, 0.590503, 0.513503,
		0.197775, -0.753627, 0.626842,
		0.757143, -0.288708, -0.585988,
		28.489214, 34.021633, 43.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431856, 33.819744, 44.485497>,  <27.959215, 34.223728, 44.048759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431856, 33.819744, 44.485497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593901, 34.029503, 44.185925>,  <28.691128, 34.155357, 44.006180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.593901, 34.029503, 44.185925>,  <28.431856, 33.819744, 44.485497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593901, 34.029503, 44.185925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671637, 0.385088, 0.632939,
		0.620313, -0.759419, -0.196200,
		0.405111, 0.524396, -0.748929,
		28.715435, 34.186821, 43.961246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044752, 33.801567, 44.593231>,  <28.431856, 33.819744, 44.485497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044752, 33.801567, 44.593231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020962, 34.114353, 44.345039>,  <29.006687, 34.302025, 44.196125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.020962, 34.114353, 44.345039>,  <29.044752, 33.801567, 44.593231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020962, 34.114353, 44.345039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709087, 0.470594, 0.525106,
		0.702608, -0.408741, -0.582471,
		-0.059475, 0.781967, -0.620476,
		29.003119, 34.348942, 44.158897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743280, 33.982052, 44.278831>,  <29.044752, 33.801567, 44.593231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743280, 33.982052, 44.278831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507790, 34.302612, 44.321079>,  <29.366495, 34.494949, 44.346428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.507790, 34.302612, 44.321079>,  <29.743280, 33.982052, 44.278831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507790, 34.302612, 44.321079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729547, 0.470522, 0.496356,
		0.348085, 0.369272, -0.861670,
		-0.588726, 0.801403, 0.105620,
		29.331171, 34.543034, 44.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236629, 34.491119, 44.209377>,  <29.743280, 33.982052, 44.278831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236629, 34.491119, 44.209377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904783, 34.618843, 44.392586>,  <29.705675, 34.695477, 44.502510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904783, 34.618843, 44.392586>,  <30.236629, 34.491119, 44.209377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904783, 34.618843, 44.392586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549479, 0.321398, 0.771217,
		0.099048, 0.891486, -0.442089,
		-0.829616, 0.319306, 0.458019,
		29.655899, 34.714634, 44.529991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991688, 34.338345, 44.910397>,  <30.236629, 34.491119, 44.209377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991688, 34.338345, 44.910397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293535, 34.090118, 44.825111>,  <30.474644, 33.941185, 44.773941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293535, 34.090118, 44.825111>,  <29.991688, 34.338345, 44.910397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293535, 34.090118, 44.825111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501304, 0.335579, 0.797546,
		-0.423377, -0.708725, 0.564323,
		0.754616, -0.620561, -0.213210,
		30.519920, 33.903950, 44.761147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228378, 33.985661, 45.577820>,  <29.991688, 34.338345, 44.910397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228378, 33.985661, 45.577820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516987, 34.009758, 45.301914>,  <30.690151, 34.024216, 45.136372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.516987, 34.009758, 45.301914>,  <30.228378, 33.985661, 45.577820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516987, 34.009758, 45.301914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643403, 0.309731, 0.700071,
		0.255813, -0.948914, 0.184720,
		0.721521, 0.060238, -0.689768,
		30.733442, 34.027832, 45.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870964, 33.656876, 45.828186>,  <30.228378, 33.985661, 45.577820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870964, 33.656876, 45.828186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.902798, 33.979889, 45.594414>,  <30.921898, 34.173698, 45.454151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.902798, 33.979889, 45.594414>,  <30.870964, 33.656876, 45.828186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902798, 33.979889, 45.594414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447685, 0.494881, 0.744762,
		0.890643, -0.320912, -0.322136,
		0.079584, 0.807532, -0.584429,
		30.926674, 34.222149, 45.419086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616131, 33.845596, 45.685020>,  <30.870964, 33.656876, 45.828186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616131, 33.845596, 45.685020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333158, 34.127712, 45.703403>,  <31.163376, 34.296982, 45.714436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.333158, 34.127712, 45.703403>,  <31.616131, 33.845596, 45.685020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333158, 34.127712, 45.703403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445247, 0.394212, 0.803961,
		0.548905, 0.589210, -0.592904,
		-0.707431, 0.705286, 0.045959,
		31.120930, 34.339298, 45.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933109, 34.525520, 45.866753>,  <31.616131, 33.845596, 45.685020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933109, 34.525520, 45.866753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567137, 34.472401, 46.019207>,  <31.347553, 34.440529, 46.110680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567137, 34.472401, 46.019207>,  <31.933109, 34.525520, 45.866753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567137, 34.472401, 46.019207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323157, 0.324712, 0.888893,
		-0.241801, 0.936444, -0.254175,
		-0.914933, -0.132797, 0.381134,
		31.292658, 34.432560, 46.133549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627542, 35.176762, 46.034309>,  <31.933109, 34.525520, 45.866753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627542, 35.176762, 46.034309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.503065, 34.863613, 46.249817>,  <31.428379, 34.675724, 46.379124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.503065, 34.863613, 46.249817>,  <31.627542, 35.176762, 46.034309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503065, 34.863613, 46.249817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308753, 0.452883, 0.836402,
		-0.898794, 0.426630, 0.100779,
		-0.311193, -0.782869, 0.538772,
		31.409708, 34.628754, 46.411449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237165, 35.485340, 46.605957>,  <31.627542, 35.176762, 46.034309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237165, 35.485340, 46.605957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356449, 35.113213, 46.691353>,  <31.428019, 34.889935, 46.742592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356449, 35.113213, 46.691353>,  <31.237165, 35.485340, 46.605957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356449, 35.113213, 46.691353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499003, 0.342621, 0.795994,
		-0.813675, -0.130838, 0.566404,
		0.298208, -0.930318, 0.213493,
		31.445911, 34.834118, 46.755402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205099, 35.439495, 47.349113>,  <31.237165, 35.485340, 46.605957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205099, 35.439495, 47.349113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455256, 35.135483, 47.278419>,  <31.605350, 34.953075, 47.236004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455256, 35.135483, 47.278419>,  <31.205099, 35.439495, 47.349113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455256, 35.135483, 47.278419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577749, 0.298777, 0.759565,
		-0.524491, -0.577133, 0.625961,
		0.625393, -0.760033, -0.176732,
		31.642874, 34.907475, 47.225399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352911, 34.878006, 47.912125>,  <31.205099, 35.439495, 47.349113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352911, 34.878006, 47.912125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673523, 34.947048, 47.683125>,  <31.865891, 34.988476, 47.545723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673523, 34.947048, 47.683125>,  <31.352911, 34.878006, 47.912125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673523, 34.947048, 47.683125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547946, 0.171278, 0.818791,
		0.239391, -0.969984, 0.042702,
		0.801528, 0.172612, -0.572501,
		31.913982, 34.998833, 47.511375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990427, 34.669998, 48.179180>,  <31.352911, 34.878006, 47.912125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990427, 34.669998, 48.179180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160362, 34.907345, 47.905704>,  <32.262325, 35.049755, 47.741619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160362, 34.907345, 47.905704>,  <31.990427, 34.669998, 48.179180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160362, 34.907345, 47.905704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739394, 0.208302, 0.640240,
		0.522311, -0.777511, -0.350239,
		0.424839, 0.593369, -0.683685,
		32.287815, 35.085354, 47.700600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964567, 34.508011, 48.880596>,  <31.990427, 34.669998, 48.179180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964567, 34.508011, 48.880596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101162, 34.135555, 48.931770>,  <32.183121, 33.912083, 48.962475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.101162, 34.135555, 48.931770>,  <31.964567, 34.508011, 48.880596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101162, 34.135555, 48.931770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412761, -0.270863, -0.869633,
		0.844401, 0.244162, -0.476834,
		0.341488, -0.931138, 0.127937,
		32.203609, 33.856213, 48.970150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769567, 34.357346, 49.626038>,  <31.964567, 34.508011, 48.880596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769567, 34.357346, 49.626038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971203, 34.328632, 49.970303>,  <32.092182, 34.311405, 50.176861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971203, 34.328632, 49.970303>,  <31.769567, 34.357346, 49.626038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971203, 34.328632, 49.970303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807723, 0.391972, -0.440387,
		-0.305745, 0.917173, 0.255567,
		0.504086, -0.071781, 0.860665,
		32.122429, 34.307098, 50.228500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060806, 35.079178, 49.814110>,  <31.769567, 34.357346, 49.626038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060806, 35.079178, 49.814110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288696, 34.793236, 49.976295>,  <32.425430, 34.621670, 50.073608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288696, 34.793236, 49.976295>,  <32.060806, 35.079178, 49.814110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288696, 34.793236, 49.976295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800148, 0.369883, -0.472176,
		0.187561, 0.593442, 0.782718,
		0.569723, -0.714852, 0.405466,
		32.459614, 34.578781, 50.097935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657372, 35.382725, 50.063770>,  <32.060806, 35.079178, 49.814110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657372, 35.382725, 50.063770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744049, 34.998512, 49.994007>,  <32.796055, 34.767982, 49.952148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744049, 34.998512, 49.994007>,  <32.657372, 35.382725, 50.063770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744049, 34.998512, 49.994007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849963, 0.273510, -0.450284,
		0.480216, -0.050668, 0.875686,
		0.216694, -0.960534, -0.174410,
		32.809059, 34.710354, 49.941685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387024, 35.453117, 49.935299>,  <32.657372, 35.382725, 50.063770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387024, 35.453117, 49.935299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311333, 35.078770, 49.816406>,  <33.265919, 34.854160, 49.745071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311333, 35.078770, 49.816406>,  <33.387024, 35.453117, 49.935299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311333, 35.078770, 49.816406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826371, 0.011721, -0.563004,
		0.530380, -0.352163, 0.771154,
		-0.189230, -0.935865, -0.297234,
		33.254562, 34.798012, 49.727238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907730, 35.033081, 50.101353>,  <33.387024, 35.453117, 49.935299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907730, 35.033081, 50.101353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739124, 34.834255, 49.797970>,  <33.637959, 34.714958, 49.615940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739124, 34.834255, 49.797970>,  <33.907730, 35.033081, 50.101353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739124, 34.834255, 49.797970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802992, 0.184020, -0.566869,
		0.421340, -0.847977, 0.321571,
		-0.421517, -0.497064, -0.758453,
		33.612671, 34.685135, 49.570435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497623, 34.642666, 49.865414>,  <33.907730, 35.033081, 50.101353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497623, 34.642666, 49.865414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222919, 34.648285, 49.574715>,  <34.058098, 34.651657, 49.400295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.222919, 34.648285, 49.574715>,  <34.497623, 34.642666, 49.865414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222919, 34.648285, 49.574715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726260, -0.028185, -0.686842,
		-0.030151, -0.999504, 0.009133,
		-0.686758, 0.014076, -0.726750,
		34.016891, 34.652500, 49.356689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709137, 34.001225, 49.484322>,  <34.497623, 34.642666, 49.865414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709137, 34.001225, 49.484322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484928, 34.257263, 49.274147>,  <34.350403, 34.410885, 49.148041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484928, 34.257263, 49.274147>,  <34.709137, 34.001225, 49.484322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484928, 34.257263, 49.274147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576805, -0.153513, -0.802328,
		-0.594230, -0.752801, -0.283164,
		-0.560524, 0.640098, -0.525441,
		34.316772, 34.449291, 49.116516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594673, 33.691303, 48.913738>,  <34.709137, 34.001225, 49.484322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594673, 33.691303, 48.913738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516788, 34.068813, 48.806881>,  <34.470058, 34.295319, 48.742767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516788, 34.068813, 48.806881>,  <34.594673, 33.691303, 48.913738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516788, 34.068813, 48.806881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577017, -0.110031, -0.809286,
		-0.793182, -0.311726, -0.523153,
		-0.194712, 0.943780, -0.267146,
		34.458374, 34.351948, 48.726738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448639, 33.621773, 48.215923>,  <34.594673, 33.691303, 48.913738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448639, 33.621773, 48.215923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542995, 34.006721, 48.269875>,  <34.599609, 34.237690, 48.302246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.542995, 34.006721, 48.269875>,  <34.448639, 33.621773, 48.215923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542995, 34.006721, 48.269875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768004, -0.099582, -0.632655,
		-0.595418, 0.252828, -0.762597,
		0.235894, 0.962373, 0.134880,
		34.613762, 34.295433, 48.310337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707619, 33.810020, 47.550163>,  <34.448639, 33.621773, 48.215923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707619, 33.810020, 47.550163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848579, 34.108452, 47.776150>,  <34.933155, 34.287510, 47.911743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.848579, 34.108452, 47.776150>,  <34.707619, 33.810020, 47.550163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848579, 34.108452, 47.776150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879528, -0.057763, -0.472328,
		-0.319758, 0.663352, -0.676549,
		0.352399, 0.746074, 0.564967,
		34.954300, 34.332275, 47.945641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024235, 34.289379, 47.105076>,  <34.707619, 33.810020, 47.550163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024235, 34.289379, 47.105076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187782, 34.360210, 47.463177>,  <35.285912, 34.402710, 47.678036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187782, 34.360210, 47.463177>,  <35.024235, 34.289379, 47.105076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187782, 34.360210, 47.463177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912564, -0.087126, -0.399544,
		0.007248, 0.980332, -0.197221,
		0.408869, 0.177081, 0.895248,
		35.310444, 34.413334, 47.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530399, 34.779690, 46.891426>,  <35.024235, 34.289379, 47.105076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530399, 34.779690, 46.891426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632889, 34.619476, 47.243317>,  <35.694382, 34.523350, 47.454453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632889, 34.619476, 47.243317>,  <35.530399, 34.779690, 46.891426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632889, 34.619476, 47.243317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965551, 0.063288, -0.252401,
		0.045419, 0.914093, 0.402952,
		0.256220, -0.400535, 0.879729,
		35.709755, 34.499317, 47.507236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050762, 35.201389, 47.128952>,  <35.530399, 34.779690, 46.891426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050762, 35.201389, 47.128952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093178, 34.868900, 47.347244>,  <36.118629, 34.669407, 47.478218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093178, 34.868900, 47.347244>,  <36.050762, 35.201389, 47.128952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093178, 34.868900, 47.347244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962031, -0.053051, -0.267736,
		0.251500, 0.553401, 0.794037,
		0.106041, -0.831224, 0.545731,
		36.124989, 34.619534, 47.510963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760952, 35.240295, 47.301601>,  <36.050762, 35.201389, 47.128952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760952, 35.240295, 47.301601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621090, 34.869156, 47.353497>,  <36.537174, 34.646473, 47.384632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621090, 34.869156, 47.353497>,  <36.760952, 35.240295, 47.301601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621090, 34.869156, 47.353497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898701, -0.371302, -0.233390,
		0.264724, 0.034991, 0.963689,
		-0.349653, -0.927852, 0.129739,
		36.516193, 34.590801, 47.392418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172409, 34.664806, 47.701733>,  <36.760952, 35.240295, 47.301601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172409, 34.664806, 47.701733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951851, 34.494522, 47.414753>,  <36.819515, 34.392353, 47.242565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951851, 34.494522, 47.414753>,  <37.172409, 34.664806, 47.701733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951851, 34.494522, 47.414753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824208, -0.145007, -0.547407,
		0.129002, -0.893165, 0.430830,
		-0.551398, -0.425710, -0.717448,
		36.786430, 34.366810, 47.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680920, 34.845196, 48.230049>,  <37.172409, 34.664806, 47.701733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680920, 34.845196, 48.230049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621136, 34.898418, 48.621960>,  <37.585266, 34.930351, 48.857105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621136, 34.898418, 48.621960>,  <37.680920, 34.845196, 48.230049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621136, 34.898418, 48.621960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673779, -0.711519, 0.199406,
		0.723660, 0.689955, 0.016696,
		-0.149461, 0.133053, 0.979775,
		37.576298, 34.938335, 48.915894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243370, 34.867290, 48.660011>,  <37.680920, 34.845196, 48.230049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243370, 34.867290, 48.660011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992672, 34.712433, 48.930508>,  <37.842251, 34.619518, 49.092808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992672, 34.712433, 48.930508>,  <38.243370, 34.867290, 48.660011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992672, 34.712433, 48.930508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716989, -0.626370, 0.305921,
		0.305145, 0.676596, 0.670153,
		-0.626749, -0.387142, 0.676245,
		37.804646, 34.596291, 49.133381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970322, 34.522907, 48.698032>,  <38.243370, 34.867290, 48.660011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970322, 34.522907, 48.698032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235634, 34.255272, 48.832119>,  <39.394821, 34.094688, 48.912571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235634, 34.255272, 48.832119>,  <38.970322, 34.522907, 48.698032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235634, 34.255272, 48.832119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666413, -0.324257, 0.671380,
		-0.340517, -0.668710, -0.660965,
		0.663281, -0.669092, 0.335222,
		39.434620, 34.054543, 48.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720901, 33.812660, 48.702263>,  <38.970322, 34.522907, 48.698032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720901, 33.812660, 48.702263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001530, 33.864857, 48.982483>,  <39.169907, 33.896175, 49.150616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001530, 33.864857, 48.982483>,  <38.720901, 33.812660, 48.702263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001530, 33.864857, 48.982483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641341, -0.312881, 0.700562,
		0.310605, -0.940786, -0.135820,
		0.701574, 0.130491, 0.700547,
		39.212002, 33.904003, 49.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651550, 33.151581, 49.016472>,  <38.720901, 33.812660, 48.702263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651550, 33.151581, 49.016472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822281, 33.433178, 49.243530>,  <38.924717, 33.602135, 49.379765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822281, 33.433178, 49.243530>,  <38.651550, 33.151581, 49.016472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822281, 33.433178, 49.243530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581811, -0.266773, 0.768328,
		0.692327, -0.658201, 0.295725,
		0.426823, 0.703991, 0.567643,
		38.950329, 33.644375, 49.413822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039360, 32.681675, 49.514969>,  <38.651550, 33.151581, 49.016472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039360, 32.681675, 49.514969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916508, 33.030693, 49.666931>,  <38.842796, 33.240105, 49.758106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.916508, 33.030693, 49.666931>,  <39.039360, 32.681675, 49.514969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916508, 33.030693, 49.666931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472083, -0.486309, 0.735283,
		0.826321, 0.046485, 0.561278,
		-0.307135, 0.872550, 0.379902,
		38.824368, 33.292458, 49.780903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812389, 32.511711, 50.188389>,  <39.039360, 32.681675, 49.514969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812389, 32.511711, 50.188389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686245, 32.890934, 50.171700>,  <38.610558, 33.118465, 50.161686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686245, 32.890934, 50.171700>,  <38.812389, 32.511711, 50.188389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686245, 32.890934, 50.171700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512539, -0.133160, 0.848276,
		0.798655, 0.288900, 0.527908,
		-0.315364, 0.948053, -0.041723,
		38.591637, 33.175350, 50.159184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349964, 32.548809, 50.685230>,  <38.812389, 32.511711, 50.188389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349964, 32.548809, 50.685230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309612, 32.943672, 50.635696>,  <38.285400, 33.180592, 50.605976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309612, 32.943672, 50.635696>,  <38.349964, 32.548809, 50.685230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309612, 32.943672, 50.635696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347680, 0.081643, 0.934052,
		0.932171, 0.137280, 0.334981,
		-0.100877, 0.987162, -0.123835,
		38.279350, 33.239822, 50.598545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697193, 32.941734, 51.186642>,  <38.349964, 32.548809, 50.685230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697193, 32.941734, 51.186642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389122, 33.139950, 51.026009>,  <38.204281, 33.258877, 50.929626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389122, 33.139950, 51.026009>,  <38.697193, 32.941734, 51.186642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389122, 33.139950, 51.026009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408475, 0.100368, 0.907235,
		0.489874, 0.862769, 0.125113,
		-0.770177, 0.495536, -0.401587,
		38.158070, 33.288612, 50.905533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590031, 33.639095, 51.565453>,  <38.697193, 32.941734, 51.186642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590031, 33.639095, 51.565453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.249352, 33.499077, 51.409462>,  <38.044945, 33.415066, 51.315868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.249352, 33.499077, 51.409462>,  <38.590031, 33.639095, 51.565453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249352, 33.499077, 51.409462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485525, 0.247104, 0.838573,
		-0.197172, 0.903554, -0.380412,
		-0.851697, -0.350043, -0.389976,
		37.993843, 33.394062, 51.292469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112476, 34.168751, 51.581104>,  <38.590031, 33.639095, 51.565453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112476, 34.168751, 51.581104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888981, 33.838066, 51.554691>,  <37.754883, 33.639656, 51.538845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888981, 33.838066, 51.554691>,  <38.112476, 34.168751, 51.581104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888981, 33.838066, 51.554691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470763, 0.250603, 0.845919,
		-0.682781, 0.503736, -0.529207,
		-0.558741, -0.826709, -0.066033,
		37.721359, 33.590054, 51.534882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397552, 34.414455, 51.591618>,  <38.112476, 34.168751, 51.581104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397552, 34.414455, 51.591618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396896, 34.032589, 51.710682>,  <37.396503, 33.803467, 51.782120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396896, 34.032589, 51.710682>,  <37.397552, 34.414455, 51.591618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396896, 34.032589, 51.710682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681515, 0.218897, 0.698298,
		-0.731802, -0.201715, -0.650982,
		-0.001641, -0.954670, 0.297661,
		37.396404, 33.746189, 51.799980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677696, 34.260212, 51.769028>,  <37.397552, 34.414455, 51.591618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677696, 34.260212, 51.769028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890858, 33.961174, 51.927578>,  <37.018757, 33.781750, 52.022709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890858, 33.961174, 51.927578>,  <36.677696, 34.260212, 51.769028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890858, 33.961174, 51.927578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548007, 0.052003, 0.834855,
		-0.644747, -0.662115, -0.381975,
		0.532907, -0.747596, 0.396373,
		37.050732, 33.736897, 52.046490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173317, 33.776474, 51.864811>,  <36.677696, 34.260212, 51.769028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173317, 33.776474, 51.864811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496319, 33.679607, 52.079956>,  <36.690121, 33.621487, 52.209045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496319, 33.679607, 52.079956>,  <36.173317, 33.776474, 51.864811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496319, 33.679607, 52.079956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559655, -0.026454, 0.828303,
		-0.186357, -0.969875, -0.156890,
		0.807501, -0.242165, 0.537865,
		36.738567, 33.606956, 52.241314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028732, 33.172451, 52.220287>,  <36.173317, 33.776474, 51.864811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028732, 33.172451, 52.220287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319035, 33.362007, 52.419765>,  <36.493217, 33.475742, 52.539452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319035, 33.362007, 52.419765>,  <36.028732, 33.172451, 52.220287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319035, 33.362007, 52.419765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509538, -0.116762, 0.852489,
		0.462217, -0.872808, 0.156724,
		0.725760, 0.473892, 0.498698,
		36.536762, 33.504173, 52.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053410, 32.827763, 52.800564>,  <36.028732, 33.172451, 52.220287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053410, 32.827763, 52.800564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235058, 33.166786, 52.910412>,  <36.344048, 33.370201, 52.976322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.235058, 33.166786, 52.910412>,  <36.053410, 32.827763, 52.800564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235058, 33.166786, 52.910412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415861, -0.070954, 0.906656,
		0.787929, -0.525939, 0.320244,
		0.454124, 0.847557, 0.274625,
		36.371296, 33.421055, 52.992798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002087, 32.798004, 53.514362>,  <36.053410, 32.827763, 52.800564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002087, 32.798004, 53.514362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112728, 33.180111, 53.472504>,  <36.179115, 33.409374, 53.447388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112728, 33.180111, 53.472504>,  <36.002087, 32.798004, 53.514362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112728, 33.180111, 53.472504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537147, 0.243985, 0.807430,
		0.796845, -0.167131, 0.580608,
		0.276606, 0.955269, -0.104644,
		36.195709, 33.466690, 53.441109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286411, 32.951900, 54.149353>,  <36.002087, 32.798004, 53.514362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286411, 32.951900, 54.149353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204044, 33.300381, 53.971092>,  <36.154625, 33.509468, 53.864136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204044, 33.300381, 53.971092>,  <36.286411, 32.951900, 54.149353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204044, 33.300381, 53.971092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559917, 0.268601, 0.783802,
		0.802553, 0.410925, 0.432492,
		-0.205916, 0.871202, -0.445651,
		36.142269, 33.561741, 53.837399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630146, 33.556137, 54.512230>,  <36.286411, 32.951900, 54.149353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630146, 33.556137, 54.512230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312389, 33.689915, 54.309414>,  <36.121735, 33.770184, 54.187725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312389, 33.689915, 54.309414>,  <36.630146, 33.556137, 54.512230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312389, 33.689915, 54.309414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386946, 0.364813, 0.846867,
		0.468207, 0.868940, -0.160391,
		-0.794390, 0.334446, -0.507041,
		36.074074, 33.790249, 54.157303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610390, 34.251537, 54.660019>,  <36.630146, 33.556137, 54.512230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610390, 34.251537, 54.660019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236233, 34.149445, 54.562126>,  <36.011738, 34.088188, 54.503391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236233, 34.149445, 54.562126>,  <36.610390, 34.251537, 54.660019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236233, 34.149445, 54.562126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337619, 0.438918, 0.832685,
		-0.105110, 0.861515, -0.496733,
		-0.935396, -0.255230, -0.244730,
		35.955612, 34.072876, 54.488708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290890, 34.830883, 54.686901>,  <36.610390, 34.251537, 54.660019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290890, 34.830883, 54.686901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021687, 34.542442, 54.752731>,  <35.860165, 34.369377, 54.792229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021687, 34.542442, 54.752731>,  <36.290890, 34.830883, 54.686901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021687, 34.542442, 54.752731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381433, 0.529002, 0.758067,
		-0.633700, 0.447408, -0.631071,
		-0.673003, -0.721098, 0.164572,
		35.819786, 34.326115, 54.802105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699734, 35.295956, 54.910385>,  <36.290890, 34.830883, 54.686901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699734, 35.295956, 54.910385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522064, 34.939869, 54.950825>,  <35.415462, 34.726215, 54.975090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522064, 34.939869, 54.950825>,  <35.699734, 35.295956, 54.910385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522064, 34.939869, 54.950825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410744, 0.302616, 0.860066,
		-0.796241, 0.340492, -0.500066,
		-0.444174, -0.890218, 0.101100,
		35.388813, 34.672802, 54.981155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061138, 35.365871, 55.042637>,  <35.699734, 35.295956, 54.910385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061138, 35.365871, 55.042637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136429, 35.002815, 55.192711>,  <35.181602, 34.784981, 55.282757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136429, 35.002815, 55.192711>,  <35.061138, 35.365871, 55.042637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136429, 35.002815, 55.192711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438293, 0.264233, 0.859116,
		-0.878903, -0.326147, -0.348077,
		0.188224, -0.907639, 0.375183,
		35.192898, 34.730522, 55.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435936, 35.179325, 55.370293>,  <35.061138, 35.365871, 55.042637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435936, 35.179325, 55.370293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731876, 34.972115, 55.542000>,  <34.909443, 34.847790, 55.645023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731876, 34.972115, 55.542000>,  <34.435936, 35.179325, 55.370293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731876, 34.972115, 55.542000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400926, 0.172888, 0.899649,
		-0.540253, -0.837712, -0.079777,
		0.739854, -0.518023, 0.429264,
		34.953835, 34.816708, 55.670780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095303, 34.912346, 55.903717>,  <34.435936, 35.179325, 55.370293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095303, 34.912346, 55.903717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469147, 34.816628, 56.008976>,  <34.693455, 34.759197, 56.072132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469147, 34.816628, 56.008976>,  <34.095303, 34.912346, 55.903717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469147, 34.816628, 56.008976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241193, 0.117345, 0.963357,
		-0.261404, -0.963830, 0.051956,
		0.934609, -0.239294, 0.263143,
		34.749531, 34.744839, 56.087917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977631, 34.462860, 56.454281>,  <34.095303, 34.912346, 55.903717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977631, 34.462860, 56.454281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356945, 34.589512, 56.463299>,  <34.584534, 34.665504, 56.468708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356945, 34.589512, 56.463299>,  <33.977631, 34.462860, 56.454281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356945, 34.589512, 56.463299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035750, 0.035964, 0.998713,
		0.315411, -0.947868, 0.045423,
		0.948281, 0.316629, 0.022543,
		34.641430, 34.684502, 56.470062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333248, 34.089104, 57.023232>,  <33.977631, 34.462860, 56.454281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333248, 34.089104, 57.023232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523304, 34.433777, 56.951965>,  <34.637337, 34.640579, 56.909206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.523304, 34.433777, 56.951965>,  <34.333248, 34.089104, 57.023232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523304, 34.433777, 56.951965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067880, 0.165984, 0.983789,
		0.877288, -0.479532, 0.020374,
		0.475140, 0.861683, -0.178167,
		34.665848, 34.692284, 56.898514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968140, 34.009548, 57.419056>,  <34.333248, 34.089104, 57.023232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968140, 34.009548, 57.419056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874382, 34.396461, 57.380215>,  <34.818127, 34.628609, 57.356911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.874382, 34.396461, 57.380215>,  <34.968140, 34.009548, 57.419056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874382, 34.396461, 57.380215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130376, 0.130257, 0.982871,
		0.963359, 0.217723, -0.156642,
		-0.234397, 0.967280, -0.097099,
		34.804062, 34.686646, 57.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088520, 34.215279, 57.994995>,  <34.968140, 34.009548, 57.419056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088520, 34.215279, 57.994995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983608, 34.569286, 57.841137>,  <34.920662, 34.781693, 57.748821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983608, 34.569286, 57.841137>,  <35.088520, 34.215279, 57.994995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983608, 34.569286, 57.841137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032765, 0.406538, 0.913046,
		0.964436, 0.226869, -0.135623,
		-0.262277, 0.885018, -0.384646,
		34.904926, 34.834793, 57.725742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430046, 34.736103, 58.304569>,  <35.088520, 34.215279, 57.994995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430046, 34.736103, 58.304569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090363, 34.900913, 58.172455>,  <34.886555, 34.999798, 58.093185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090363, 34.900913, 58.172455>,  <35.430046, 34.736103, 58.304569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090363, 34.900913, 58.172455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125824, 0.449569, 0.884339,
		0.512855, 0.792542, -0.329933,
		-0.849204, 0.412024, -0.330285,
		34.835602, 35.024521, 58.073368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366192, 35.443600, 58.530987>,  <35.430046, 34.736103, 58.304569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366192, 35.443600, 58.530987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982594, 35.378025, 58.438503>,  <34.752434, 35.338680, 58.383015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982594, 35.378025, 58.438503>,  <35.366192, 35.443600, 58.530987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982594, 35.378025, 58.438503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282423, 0.484209, 0.828118,
		-0.023804, 0.859458, -0.510652,
		-0.958995, -0.163933, -0.231204,
		34.694897, 35.328846, 58.369141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993599, 36.035770, 58.739109>,  <35.366192, 35.443600, 58.530987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993599, 36.035770, 58.739109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721355, 35.743042, 58.725201>,  <34.558010, 35.567406, 58.716858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721355, 35.743042, 58.725201>,  <34.993599, 36.035770, 58.739109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721355, 35.743042, 58.725201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431742, 0.362281, 0.826046,
		-0.591924, 0.577223, -0.562530,
		-0.680606, -0.731824, -0.034768,
		34.517174, 35.523495, 58.714771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340481, 36.368320, 58.801624>,  <34.993599, 36.035770, 58.739109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340481, 36.368320, 58.801624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247826, 35.998867, 58.923763>,  <34.192234, 35.777195, 58.997047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.247826, 35.998867, 58.923763>,  <34.340481, 36.368320, 58.801624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247826, 35.998867, 58.923763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601051, 0.382689, 0.701631,
		-0.764907, -0.021007, -0.643798,
		-0.231636, -0.923638, 0.305348,
		34.178333, 35.721775, 59.015369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529659, 36.281441, 58.886559>,  <34.340481, 36.368320, 58.801624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529659, 36.281441, 58.886559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674805, 35.960861, 59.076721>,  <33.761890, 35.768513, 59.190819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.674805, 35.960861, 59.076721>,  <33.529659, 36.281441, 58.886559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674805, 35.960861, 59.076721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491724, 0.268680, 0.828262,
		-0.791541, -0.534315, -0.296597,
		0.362863, -0.801448, 0.475408,
		33.783665, 35.720428, 59.219345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942757, 35.771801, 59.062542>,  <33.529659, 36.281441, 58.886559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942757, 35.771801, 59.062542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241604, 35.715393, 59.322365>,  <33.420914, 35.681549, 59.478260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241604, 35.715393, 59.322365>,  <32.942757, 35.771801, 59.062542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241604, 35.715393, 59.322365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611015, 0.239009, 0.754676,
		-0.261673, -0.960723, 0.092405,
		0.747120, -0.141018, 0.649558,
		33.465740, 35.673088, 59.517231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591263, 35.455067, 59.612476>,  <32.942757, 35.771801, 59.062542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591263, 35.455067, 59.612476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933487, 35.576698, 59.780071>,  <33.138821, 35.649677, 59.880627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933487, 35.576698, 59.780071>,  <32.591263, 35.455067, 59.612476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933487, 35.576698, 59.780071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478803, 0.156974, 0.863775,
		0.196890, -0.939623, 0.279897,
		0.855560, 0.304084, 0.418987,
		33.190155, 35.667923, 59.905769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628765, 35.116428, 60.250229>,  <32.591263, 35.455067, 59.612476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628765, 35.116428, 60.250229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844498, 35.453232, 60.255070>,  <32.973938, 35.655315, 60.257973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844498, 35.453232, 60.255070>,  <32.628765, 35.116428, 60.250229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844498, 35.453232, 60.255070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470327, 0.289275, 0.833734,
		0.698510, -0.455349, 0.552034,
		0.539330, 0.842008, 0.012102,
		33.006298, 35.705833, 60.258701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676052, 35.151184, 60.993828>,  <32.628765, 35.116428, 60.250229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676052, 35.151184, 60.993828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778839, 35.496628, 60.820320>,  <32.840511, 35.703892, 60.716217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778839, 35.496628, 60.820320>,  <32.676052, 35.151184, 60.993828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778839, 35.496628, 60.820320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164643, 0.481396, 0.860901,
		0.952292, -0.149808, 0.265890,
		0.256968, 0.863606, -0.433765,
		32.855930, 35.755711, 60.690189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227699, 35.464993, 61.523800>,  <32.676052, 35.151184, 60.993828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227699, 35.464993, 61.523800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095234, 35.762402, 61.291420>,  <33.015755, 35.940845, 61.151993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095234, 35.762402, 61.291420>,  <33.227699, 35.464993, 61.523800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095234, 35.762402, 61.291420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200152, 0.546328, 0.813305,
		0.922101, 0.385616, -0.032107,
		-0.331164, 0.743523, -0.580951,
		32.995884, 35.985458, 61.117134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451977, 36.062931, 61.854610>,  <33.227699, 35.464993, 61.523800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451977, 36.062931, 61.854610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140728, 36.178955, 61.631760>,  <32.953979, 36.248569, 61.498047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.140728, 36.178955, 61.631760>,  <33.451977, 36.062931, 61.854610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140728, 36.178955, 61.631760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293000, 0.616957, 0.730422,
		0.555588, 0.731596, -0.395081,
		-0.778121, 0.290055, -0.557131,
		32.907291, 36.265972, 61.464619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307518, 36.687737, 62.132488>,  <33.451977, 36.062931, 61.854610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307518, 36.687737, 62.132488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993114, 36.653687, 61.887558>,  <32.804470, 36.633255, 61.740601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993114, 36.653687, 61.887558>,  <33.307518, 36.687737, 62.132488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993114, 36.653687, 61.887558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503496, 0.662868, 0.554164,
		0.358713, 0.743881, -0.563884,
		-0.786013, -0.085128, -0.612321,
		32.757309, 36.628147, 61.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162067, 37.364998, 61.968437>,  <33.307518, 36.687737, 62.132488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162067, 37.364998, 61.968437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841156, 37.128365, 61.936489>,  <32.648609, 36.986385, 61.917320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.841156, 37.128365, 61.936489>,  <33.162067, 37.364998, 61.968437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841156, 37.128365, 61.936489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570344, 0.720121, 0.395136,
		-0.176239, 0.362563, -0.915143,
		-0.802276, -0.591585, -0.079873,
		32.600471, 36.950890, 61.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728889, 37.790180, 61.632092>,  <33.162067, 37.364998, 61.968437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728889, 37.790180, 61.632092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516518, 37.519157, 61.835674>,  <32.389095, 37.356544, 61.957825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516518, 37.519157, 61.835674>,  <32.728889, 37.790180, 61.632092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516518, 37.519157, 61.835674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468100, 0.735141, 0.490357,
		-0.706397, 0.022103, -0.707470,
		-0.530929, -0.677554, 0.508955,
		32.357239, 37.315891, 61.988361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060493, 38.089325, 61.559673>,  <32.728889, 37.790180, 61.632092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060493, 38.089325, 61.559673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023518, 37.831131, 61.862938>,  <32.001331, 37.676216, 62.044895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.023518, 37.831131, 61.862938>,  <32.060493, 38.089325, 61.559673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023518, 37.831131, 61.862938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452329, 0.705541, 0.545538,
		-0.887048, -0.292507, -0.357192,
		-0.092440, -0.645486, 0.758157,
		31.995785, 37.637486, 62.090385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348333, 38.170555, 61.871986>,  <32.060493, 38.089325, 61.559673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348333, 38.170555, 61.871986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535269, 37.982349, 62.171375>,  <31.647430, 37.869427, 62.351009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535269, 37.982349, 62.171375>,  <31.348333, 38.170555, 61.871986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535269, 37.982349, 62.171375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537135, 0.521328, 0.663102,
		-0.702197, -0.711924, -0.009092,
		0.467338, -0.470512, 0.748474,
		31.675470, 37.841194, 62.395916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821793, 38.016808, 62.341873>,  <31.348333, 38.170555, 61.871986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821793, 38.016808, 62.341873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154980, 37.990131, 62.561588>,  <31.354893, 37.974125, 62.693417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154980, 37.990131, 62.561588>,  <30.821793, 38.016808, 62.341873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154980, 37.990131, 62.561588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424413, 0.559935, 0.711581,
		-0.355018, -0.825849, 0.438105,
		0.832968, -0.066686, 0.549287,
		31.404871, 37.970127, 62.726376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685366, 37.995659, 63.089188>,  <30.821793, 38.016808, 62.341873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685366, 37.995659, 63.089188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071802, 38.093475, 63.122326>,  <31.303665, 38.152164, 63.142208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071802, 38.093475, 63.122326>,  <30.685366, 37.995659, 63.089188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071802, 38.093475, 63.122326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236752, 0.710969, 0.662172,
		0.103027, -0.659334, 0.744758,
		0.966092, 0.244544, 0.082850,
		31.361629, 38.166840, 63.147182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797272, 38.181370, 63.754189>,  <30.685366, 37.995659, 63.089188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797272, 38.181370, 63.754189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112823, 38.338253, 63.564941>,  <31.302155, 38.432384, 63.451393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112823, 38.338253, 63.564941>,  <30.797272, 38.181370, 63.754189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112823, 38.338253, 63.564941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001436, 0.771040, 0.636786,
		0.614544, -0.501669, 0.608822,
		0.788881, 0.392207, -0.473117,
		31.349487, 38.455914, 63.423008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449209, 38.336800, 64.247383>,  <30.797272, 38.181370, 63.754189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449209, 38.336800, 64.247383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474035, 38.596577, 63.944233>,  <31.488932, 38.752441, 63.762344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.474035, 38.596577, 63.944233>,  <31.449209, 38.336800, 64.247383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474035, 38.596577, 63.944233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204363, 0.734980, 0.646561,
		0.976926, -0.195010, -0.087106,
		0.062065, 0.649443, -0.757874,
		31.492655, 38.791409, 63.716869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846495, 38.891529, 64.445717>,  <31.449209, 38.336800, 64.247383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846495, 38.891529, 64.445717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604731, 39.053776, 64.171440>,  <31.459673, 39.151123, 64.006874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.604731, 39.053776, 64.171440>,  <31.846495, 38.891529, 64.445717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604731, 39.053776, 64.171440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076319, 0.827248, 0.556629,
		0.793010, 0.388763, -0.469040,
		-0.604409, 0.405615, -0.685686,
		31.423409, 39.175461, 63.965733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449772, 38.738163, 64.828438>,  <31.846495, 38.891529, 64.445717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449772, 38.738163, 64.828438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447483, 38.339279, 64.798645>,  <32.446110, 38.099949, 64.780769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447483, 38.339279, 64.798645>,  <32.449772, 38.738163, 64.828438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447483, 38.339279, 64.798645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194368, 0.074175, -0.978120,
		0.980912, 0.008883, -0.194249,
		-0.005720, -0.997206, -0.074485,
		32.445766, 38.040119, 64.776299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940504, 38.847160, 65.234970>,  <32.449772, 38.738163, 64.828438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940504, 38.847160, 65.234970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986988, 38.469673, 65.358841>,  <32.014877, 38.243183, 65.433159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986988, 38.469673, 65.358841>,  <31.940504, 38.847160, 65.234970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986988, 38.469673, 65.358841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881303, -0.045810, -0.470325,
		0.458039, 0.327570, 0.826376,
		0.116208, -0.943716, 0.309672,
		32.021851, 38.186558, 65.451744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363152, 39.409245, 65.139565>,  <31.940504, 38.847160, 65.234970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363152, 39.409245, 65.139565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320742, 39.580875, 65.498375>,  <31.295296, 39.683853, 65.713661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320742, 39.580875, 65.498375>,  <31.363152, 39.409245, 65.139565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320742, 39.580875, 65.498375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801836, 0.570395, -0.178067,
		-0.588062, 0.700385, -0.404528,
		-0.106026, 0.429080, 0.897022,
		31.288935, 39.709599, 65.767479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062243, 39.325722, 64.500229>,  <31.363152, 39.409245, 65.139565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062243, 39.325722, 64.500229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.682426, 39.446995, 64.468079>,  <30.454536, 39.519756, 64.448792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.682426, 39.446995, 64.468079>,  <31.062243, 39.325722, 64.500229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682426, 39.446995, 64.468079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217748, 0.452761, -0.864635,
		-0.225749, -0.838505, -0.495930,
		-0.949538, 0.303178, -0.080372,
		30.397564, 39.537949, 64.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744308, 39.120811, 63.866219>,  <31.062243, 39.325722, 64.500229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744308, 39.120811, 63.866219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562754, 39.456051, 63.987267>,  <30.453821, 39.657196, 64.059898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.562754, 39.456051, 63.987267>,  <30.744308, 39.120811, 63.866219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562754, 39.456051, 63.987267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210286, 0.430773, -0.877618,
		-0.865891, -0.334701, -0.371762,
		-0.453885, 0.838099, 0.302620,
		30.426588, 39.707481, 64.078049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281549, 39.194153, 63.432110>,  <30.744308, 39.120811, 63.866219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281549, 39.194153, 63.432110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438768, 39.512562, 63.616226>,  <30.533100, 39.703606, 63.726696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438768, 39.512562, 63.616226>,  <30.281549, 39.194153, 63.432110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438768, 39.512562, 63.616226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333722, 0.342955, -0.878073,
		-0.856822, 0.498732, -0.130852,
		0.393046, 0.796020, 0.460289,
		30.556683, 39.751369, 63.754314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048679, 39.753780, 63.066654>,  <30.281549, 39.194153, 63.432110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048679, 39.753780, 63.066654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399622, 39.817451, 63.247723>,  <30.610188, 39.855656, 63.356361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399622, 39.817451, 63.247723>,  <30.048679, 39.753780, 63.066654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399622, 39.817451, 63.247723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389293, 0.315402, -0.865432,
		-0.280533, 0.935512, 0.214751,
		0.877355, 0.159181, 0.452669,
		30.662828, 39.865208, 63.383522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246773, 40.500751, 63.011494>,  <30.048679, 39.753780, 63.066654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246773, 40.500751, 63.011494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574240, 40.272453, 63.036903>,  <30.770720, 40.135475, 63.052147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574240, 40.272453, 63.036903>,  <30.246773, 40.500751, 63.011494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574240, 40.272453, 63.036903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309036, 0.344625, -0.886414,
		0.484026, 0.745308, 0.458514,
		0.818667, -0.570745, 0.063520,
		30.819839, 40.101231, 63.055958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808386, 40.905941, 62.790741>,  <30.246773, 40.500751, 63.011494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808386, 40.905941, 62.790741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.950041, 40.532032, 62.779579>,  <31.035034, 40.307686, 62.772881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.950041, 40.532032, 62.779579>,  <30.808386, 40.905941, 62.790741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950041, 40.532032, 62.779579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491789, 0.211529, -0.844630,
		0.795444, 0.285390, 0.534623,
		0.354137, -0.934777, -0.027908,
		31.056282, 40.251598, 62.771206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563156, 40.937550, 62.727551>,  <30.808386, 40.905941, 62.790741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563156, 40.937550, 62.727551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409626, 40.598553, 62.580891>,  <31.317507, 40.395153, 62.492893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409626, 40.598553, 62.580891>,  <31.563156, 40.937550, 62.727551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409626, 40.598553, 62.580891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444154, 0.178676, -0.877953,
		0.809570, -0.499832, 0.307837,
		-0.383826, -0.847492, -0.366654,
		31.294477, 40.344307, 62.470894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003906, 40.787945, 62.114841>,  <31.563156, 40.937550, 62.727551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003906, 40.787945, 62.114841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.716629, 40.512325, 62.076061>,  <31.544262, 40.346954, 62.052792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.716629, 40.512325, 62.076061>,  <32.003906, 40.787945, 62.114841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716629, 40.512325, 62.076061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298813, -0.179575, -0.937264,
		0.628414, -0.702110, 0.334868,
		-0.718196, -0.689053, -0.096952,
		31.501169, 40.305611, 62.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295315, 40.454315, 61.610943>,  <32.003906, 40.787945, 62.114841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295315, 40.454315, 61.610943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917732, 40.323521, 61.628979>,  <31.691183, 40.245045, 61.639801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917732, 40.323521, 61.628979>,  <32.295315, 40.454315, 61.610943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917732, 40.323521, 61.628979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015993, -0.181755, -0.983214,
		0.329695, -0.927385, 0.176798,
		-0.943952, -0.326989, 0.045092,
		31.634546, 40.225426, 61.642506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238579, 39.797050, 61.244701>,  <32.295315, 40.454315, 61.610943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238579, 39.797050, 61.244701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886723, 39.987080, 61.254005>,  <31.675610, 40.101097, 61.259586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886723, 39.987080, 61.254005>,  <32.238579, 39.797050, 61.244701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886723, 39.987080, 61.254005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108818, -0.153397, -0.982155,
		-0.463032, -0.866470, 0.186631,
		-0.879636, 0.475078, 0.023259,
		31.622831, 40.129604, 61.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807455, 39.379192, 60.884029>,  <32.238579, 39.797050, 61.244701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807455, 39.379192, 60.884029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593704, 39.716763, 60.865124>,  <31.465454, 39.919304, 60.853779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593704, 39.716763, 60.865124>,  <31.807455, 39.379192, 60.884029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593704, 39.716763, 60.865124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077138, -0.104379, -0.991541,
		-0.841718, -0.526212, 0.120877,
		-0.534378, 0.843923, -0.047267,
		31.433392, 39.969940, 60.850945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211391, 39.215828, 60.458321>,  <31.807455, 39.379192, 60.884029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211391, 39.215828, 60.458321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209705, 39.615211, 60.436218>,  <31.208693, 39.854843, 60.422958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209705, 39.615211, 60.436218>,  <31.211391, 39.215828, 60.458321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209705, 39.615211, 60.436218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107357, -0.055388, -0.992676,
		-0.994212, 0.001745, 0.107426,
		-0.004217, 0.998463, -0.055255,
		31.208441, 39.914749, 60.419643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672758, 39.376354, 59.914322>,  <31.211391, 39.215828, 60.458321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672758, 39.376354, 59.914322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880892, 39.716160, 59.949123>,  <31.005772, 39.920044, 59.970005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880892, 39.716160, 59.949123>,  <30.672758, 39.376354, 59.914322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880892, 39.716160, 59.949123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095119, 0.158904, -0.982701,
		-0.848648, 0.503058, 0.163489,
		0.520335, 0.849519, 0.087003,
		31.036993, 39.971016, 59.975224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258038, 39.926662, 59.631496>,  <30.672758, 39.376354, 59.914322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258038, 39.926662, 59.631496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642214, 40.038055, 59.632343>,  <30.872719, 40.104889, 59.632851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642214, 40.038055, 59.632343>,  <30.258038, 39.926662, 59.631496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642214, 40.038055, 59.632343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053624, 0.192389, -0.979853,
		-0.273277, 0.940976, 0.199711,
		0.960440, 0.278481, 0.002117,
		30.930346, 40.121601, 59.632977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343004, 40.620098, 59.339523>,  <30.258038, 39.926662, 59.631496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343004, 40.620098, 59.339523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714119, 40.472000, 59.321064>,  <30.936787, 40.383141, 59.309986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.714119, 40.472000, 59.321064>,  <30.343004, 40.620098, 59.339523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714119, 40.472000, 59.321064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019452, 0.171526, -0.984988,
		0.372606, 0.912960, 0.166341,
		0.927786, -0.370248, -0.046152,
		30.992455, 40.360928, 59.307217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774239, 41.139988, 59.054222>,  <30.343004, 40.620098, 59.339523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774239, 41.139988, 59.054222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.914110, 40.777462, 58.959290>,  <30.998034, 40.559948, 58.902332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.914110, 40.777462, 58.959290>,  <30.774239, 41.139988, 59.054222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914110, 40.777462, 58.959290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059816, 0.274403, -0.959753,
		0.934958, 0.321409, 0.150165,
		0.349679, -0.906311, -0.237329,
		31.019014, 40.505569, 58.888092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111465, 41.256298, 58.428669>,  <30.774239, 41.139988, 59.054222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111465, 41.256298, 58.428669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092962, 40.856728, 58.428135>,  <31.081860, 40.616985, 58.427814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.092962, 40.856728, 58.428135>,  <31.111465, 41.256298, 58.428669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092962, 40.856728, 58.428135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000107, 0.001343, -0.999999,
		0.998930, -0.046258, -0.000169,
		-0.046258, -0.998929, -0.001337,
		31.079084, 40.557049, 58.427734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560329, 41.084366, 57.959896>,  <31.111465, 41.256298, 58.428669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560329, 41.084366, 57.959896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322273, 40.764702, 57.993732>,  <31.179440, 40.572903, 58.014034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.322273, 40.764702, 57.993732>,  <31.560329, 41.084366, 57.959896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322273, 40.764702, 57.993732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048932, -0.141106, -0.988784,
		0.802132, -0.584324, 0.123082,
		-0.595138, -0.799159, 0.084594,
		31.143732, 40.524956, 58.019112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846748, 40.466694, 57.673565>,  <31.560329, 41.084366, 57.959896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846748, 40.466694, 57.673565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453110, 40.423489, 57.617149>,  <31.216927, 40.397564, 57.583302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453110, 40.423489, 57.617149>,  <31.846748, 40.466694, 57.673565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453110, 40.423489, 57.617149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168724, -0.319859, -0.932321,
		0.055592, -0.941288, 0.332996,
		-0.984094, -0.108014, -0.141037,
		31.157881, 40.391083, 57.574837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737814, 39.764534, 57.434219>,  <31.846748, 40.466694, 57.673565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737814, 39.764534, 57.434219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455544, 40.029083, 57.332546>,  <31.286180, 40.187813, 57.271542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.455544, 40.029083, 57.332546>,  <31.737814, 39.764534, 57.434219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455544, 40.029083, 57.332546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080061, -0.282023, -0.956061,
		-0.703996, -0.695021, 0.146067,
		-0.705677, 0.661369, -0.254187,
		31.243841, 40.227493, 57.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264320, 39.432137, 57.024143>,  <31.737814, 39.764534, 57.434219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264320, 39.432137, 57.024143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.199663, 39.818542, 56.943462>,  <31.160870, 40.050388, 56.895054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.199663, 39.818542, 56.943462>,  <31.264320, 39.432137, 57.024143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199663, 39.818542, 56.943462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012181, -0.206324, -0.978408,
		-0.986775, -0.155694, 0.045117,
		-0.161641, 0.966018, -0.201699,
		31.151171, 40.108349, 56.882954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672007, 39.438782, 56.585461>,  <31.264320, 39.432137, 57.024143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672007, 39.438782, 56.585461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876690, 39.778957, 56.536610>,  <30.999500, 39.983063, 56.507301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876690, 39.778957, 56.536610>,  <30.672007, 39.438782, 56.585461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876690, 39.778957, 56.536610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196206, -0.254060, -0.947078,
		-0.836457, 0.460665, -0.296865,
		0.511707, 0.850436, -0.122125,
		31.030201, 40.034088, 56.499973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530708, 39.737141, 55.956161>,  <30.672007, 39.438782, 56.585461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530708, 39.737141, 55.956161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874720, 39.926903, 56.031300>,  <31.081127, 40.040760, 56.076385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874720, 39.926903, 56.031300>,  <30.530708, 39.737141, 55.956161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874720, 39.926903, 56.031300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249721, -0.070295, -0.965763,
		-0.444962, 0.877493, -0.178926,
		0.860028, 0.474409, 0.187850,
		31.132729, 40.069225, 56.087654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613659, 40.131458, 55.386230>,  <30.530708, 39.737141, 55.956161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613659, 40.131458, 55.386230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984020, 40.139893, 55.537102>,  <31.206236, 40.144951, 55.627625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984020, 40.139893, 55.537102>,  <30.613659, 40.131458, 55.386230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984020, 40.139893, 55.537102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377516, -0.087917, -0.921820,
		0.013727, 0.995905, -0.089362,
		0.925901, 0.021082, 0.377177,
		31.261791, 40.146217, 55.650253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034174, 40.566010, 54.962376>,  <30.613659, 40.131458, 55.386230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034174, 40.566010, 54.962376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287718, 40.319141, 55.148846>,  <31.439844, 40.171021, 55.260727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287718, 40.319141, 55.148846>,  <31.034174, 40.566010, 54.962376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287718, 40.319141, 55.148846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521106, -0.104614, -0.847056,
		0.571548, 0.779842, 0.255302,
		0.633862, -0.617173, 0.466173,
		31.477877, 40.133991, 55.288696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683912, 40.705246, 54.650425>,  <31.034174, 40.566010, 54.962376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683912, 40.705246, 54.650425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765003, 40.355598, 54.826981>,  <31.813658, 40.145809, 54.932915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765003, 40.355598, 54.826981>,  <31.683912, 40.705246, 54.650425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765003, 40.355598, 54.826981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499250, -0.295500, -0.814512,
		0.842408, 0.385485, 0.376497,
		0.202727, -0.874118, 0.441384,
		31.825821, 40.093365, 54.959396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376141, 40.550468, 54.517014>,  <31.683912, 40.705246, 54.650425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376141, 40.550468, 54.517014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244694, 40.189575, 54.628723>,  <32.165825, 39.973042, 54.695751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244694, 40.189575, 54.628723>,  <32.376141, 40.550468, 54.517014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244694, 40.189575, 54.628723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574503, -0.425653, -0.699118,
		0.749639, -0.069295, 0.658209,
		-0.328614, -0.902229, 0.279276,
		32.146111, 39.918907, 54.712505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968479, 40.169903, 54.588543>,  <32.376141, 40.550468, 54.517014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968479, 40.169903, 54.588543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674442, 39.901897, 54.547119>,  <32.498020, 39.741093, 54.522266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674442, 39.901897, 54.547119>,  <32.968479, 40.169903, 54.588543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674442, 39.901897, 54.547119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596055, -0.565904, -0.569623,
		0.323053, -0.480449, 0.815356,
		-0.735088, -0.670016, -0.103557,
		32.453915, 39.700893, 54.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330032, 39.452229, 54.760429>,  <32.968479, 40.169903, 54.588543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330032, 39.452229, 54.760429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006195, 39.445637, 54.525723>,  <32.811893, 39.441681, 54.384899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006195, 39.445637, 54.525723>,  <33.330032, 39.452229, 54.760429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006195, 39.445637, 54.525723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421751, -0.711594, -0.561926,
		-0.408280, -0.702398, 0.583048,
		-0.809588, -0.016478, -0.586766,
		32.763317, 39.440693, 54.349693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459518, 38.917465, 54.289860>,  <33.330032, 39.452229, 54.760429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459518, 38.917465, 54.289860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125153, 39.039421, 54.107307>,  <32.924534, 39.112595, 53.997776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125153, 39.039421, 54.107307>,  <33.459518, 38.917465, 54.289860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125153, 39.039421, 54.107307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306642, -0.430196, -0.849059,
		-0.455198, -0.849691, 0.266120,
		-0.835922, 0.304887, -0.456375,
		32.874378, 39.130890, 53.970394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193909, 38.333202, 53.868080>,  <33.459518, 38.917465, 54.289860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193909, 38.333202, 53.868080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078259, 38.675480, 53.696407>,  <33.008869, 38.880848, 53.593403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078259, 38.675480, 53.696407>,  <33.193909, 38.333202, 53.868080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078259, 38.675480, 53.696407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222323, -0.376049, -0.899533,
		-0.931118, -0.355492, -0.081516,
		-0.289123, 0.855694, -0.429180,
		32.991520, 38.932190, 53.567654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004768, 38.101833, 53.287163>,  <33.193909, 38.333202, 53.868080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004768, 38.101833, 53.287163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041031, 38.496128, 53.230453>,  <33.062790, 38.732704, 53.196430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041031, 38.496128, 53.230453>,  <33.004768, 38.101833, 53.287163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041031, 38.496128, 53.230453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190580, -0.156898, -0.969052,
		-0.977476, 0.060836, -0.202087,
		0.090660, 0.985739, -0.141770,
		33.068230, 38.791851, 53.187923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625408, 38.193367, 52.727688>,  <33.004768, 38.101833, 53.287163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625408, 38.193367, 52.727688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854969, 38.520519, 52.744247>,  <32.992706, 38.716808, 52.754181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854969, 38.520519, 52.744247>,  <32.625408, 38.193367, 52.727688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854969, 38.520519, 52.744247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203326, -0.093344, -0.974651,
		-0.793282, 0.567771, -0.219866,
		0.573902, 0.817878, 0.041395,
		33.027138, 38.765884, 52.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441383, 38.693707, 52.115623>,  <32.625408, 38.193367, 52.727688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441383, 38.693707, 52.115623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815517, 38.742821, 52.248333>,  <33.039997, 38.772289, 52.327961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.815517, 38.742821, 52.248333>,  <32.441383, 38.693707, 52.115623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815517, 38.742821, 52.248333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351273, -0.211103, -0.912164,
		-0.041964, 0.969721, -0.240583,
		0.935332, 0.122788, 0.331778,
		33.096119, 38.779655, 52.347866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814995, 39.062237, 51.535370>,  <32.441383, 38.693707, 52.115623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814995, 39.062237, 51.535370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135258, 38.978771, 51.760014>,  <33.327415, 38.928692, 51.894802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135258, 38.978771, 51.760014>,  <32.814995, 39.062237, 51.535370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135258, 38.978771, 51.760014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522802, -0.214501, -0.825026,
		0.292618, 0.954175, -0.062653,
		0.800658, -0.208662, 0.561612,
		33.375454, 38.916172, 51.928497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439697, 39.394970, 51.274242>,  <32.814995, 39.062237, 51.535370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439697, 39.394970, 51.274242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575329, 39.080818, 51.481396>,  <33.656708, 38.892326, 51.605686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575329, 39.080818, 51.481396>,  <33.439697, 39.394970, 51.274242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575329, 39.080818, 51.481396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468632, -0.336317, -0.816869,
		0.815726, 0.519680, 0.254016,
		0.339081, -0.785381, 0.517881,
		33.677052, 38.845203, 51.636761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167332, 39.201015, 50.959427>,  <33.439697, 39.394970, 51.274242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167332, 39.201015, 50.959427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084034, 38.860592, 51.152229>,  <34.034054, 38.656338, 51.267910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084034, 38.860592, 51.152229>,  <34.167332, 39.201015, 50.959427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084034, 38.860592, 51.152229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225842, -0.521331, -0.822927,
		0.951645, -0.062514, 0.300770,
		-0.208245, -0.851062, 0.482004,
		34.021561, 38.605274, 51.296829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608307, 38.711781, 50.721508>,  <34.167332, 39.201015, 50.959427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608307, 38.711781, 50.721508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327843, 38.482384, 50.890968>,  <34.159565, 38.344746, 50.992645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327843, 38.482384, 50.890968>,  <34.608307, 38.711781, 50.721508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327843, 38.482384, 50.890968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352300, -0.795240, -0.493435,
		0.619886, -0.196724, 0.759632,
		-0.701161, -0.573491, 0.423653,
		34.117493, 38.310337, 51.018063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891617, 38.061970, 50.785019>,  <34.608307, 38.711781, 50.721508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891617, 38.061970, 50.785019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503555, 37.970631, 50.817646>,  <34.270718, 37.915825, 50.837223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.503555, 37.970631, 50.817646>,  <34.891617, 38.061970, 50.785019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503555, 37.970631, 50.817646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165099, -0.868424, -0.467528,
		0.177592, -0.440109, 0.880207,
		-0.970156, -0.228351, 0.081564,
		34.212509, 37.902126, 50.842113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827133, 37.339638, 51.041843>,  <34.891617, 38.061970, 50.785019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827133, 37.339638, 51.041843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497997, 37.454338, 50.845596>,  <34.300514, 37.523159, 50.727848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497997, 37.454338, 50.845596>,  <34.827133, 37.339638, 51.041843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497997, 37.454338, 50.845596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062188, -0.903607, -0.423825,
		-0.564855, -0.318231, 0.761359,
		-0.822844, 0.286747, -0.490616,
		34.251144, 37.540363, 50.698410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340481, 36.820007, 51.205055>,  <34.827133, 37.339638, 51.041843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340481, 36.820007, 51.205055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251247, 37.018761, 50.869595>,  <34.197708, 37.138012, 50.668320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251247, 37.018761, 50.869595>,  <34.340481, 36.820007, 51.205055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251247, 37.018761, 50.869595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053204, -0.852845, -0.519446,
		-0.973346, -0.160501, 0.163821,
		-0.223085, 0.496884, -0.838653,
		34.184322, 37.167828, 50.618000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892502, 36.395191, 50.933987>,  <34.340481, 36.820007, 51.205055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892502, 36.395191, 50.933987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001492, 36.647343, 50.643227>,  <34.066887, 36.798634, 50.468773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.001492, 36.647343, 50.643227>,  <33.892502, 36.395191, 50.933987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001492, 36.647343, 50.643227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006919, -0.756746, -0.653672,
		-0.962137, 0.173081, -0.210558,
		0.272478, 0.630379, -0.726896,
		34.083237, 36.836456, 50.425159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409134, 36.207275, 50.421429>,  <33.892502, 36.395191, 50.933987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409134, 36.207275, 50.421429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694378, 36.401268, 50.218937>,  <33.865524, 36.517666, 50.097443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694378, 36.401268, 50.218937>,  <33.409134, 36.207275, 50.421429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694378, 36.401268, 50.218937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016751, -0.710103, -0.703898,
		-0.700853, 0.510436, -0.498257,
		0.713109, 0.484983, -0.506228,
		33.908310, 36.546764, 50.067070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149578, 36.282490, 49.695953>,  <33.409134, 36.207275, 50.421429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149578, 36.282490, 49.695953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547371, 36.314163, 49.723461>,  <33.786049, 36.333168, 49.739964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.547371, 36.314163, 49.723461>,  <33.149578, 36.282490, 49.695953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547371, 36.314163, 49.723461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104838, -0.768078, -0.631717,
		0.002794, 0.635442, -0.772144,
		0.994485, 0.079185, 0.068765,
		33.845718, 36.337917, 49.744091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492943, 36.158081, 49.014137>,  <33.149578, 36.282490, 49.695953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492943, 36.158081, 49.014137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755367, 36.082092, 49.306301>,  <33.912823, 36.036499, 49.481598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.755367, 36.082092, 49.306301>,  <33.492943, 36.158081, 49.014137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755367, 36.082092, 49.306301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162230, -0.909678, -0.382318,
		0.737068, 0.369317, -0.565982,
		0.656058, -0.189975, 0.730409,
		33.952187, 36.025101, 49.525425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900211, 35.805180, 48.507179>,  <33.492943, 36.158081, 49.014137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900211, 35.805180, 48.507179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514881, 35.763435, 48.408291>,  <32.283684, 35.738388, 48.348957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514881, 35.763435, 48.408291>,  <32.900211, 35.805180, 48.507179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514881, 35.763435, 48.408291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226320, 0.810972, 0.539540,
		0.144185, 0.575702, -0.804846,
		-0.963322, -0.104359, -0.247223,
		32.225883, 35.732128, 48.334126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710976, 36.550999, 48.252899>,  <32.900211, 35.805180, 48.507179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710976, 36.550999, 48.252899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382149, 36.341015, 48.341106>,  <32.184853, 36.215023, 48.394032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.382149, 36.341015, 48.341106>,  <32.710976, 36.550999, 48.252899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382149, 36.341015, 48.341106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377925, 0.792727, 0.478285,
		-0.425892, 0.309841, -0.850067,
		-0.822063, -0.524960, 0.220519,
		32.135529, 36.183525, 48.407261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170750, 37.033287, 48.201397>,  <32.710976, 36.550999, 48.252899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170750, 37.033287, 48.201397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991287, 36.773495, 48.446960>,  <31.883610, 36.617619, 48.594299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991287, 36.773495, 48.446960>,  <32.170750, 37.033287, 48.201397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991287, 36.773495, 48.446960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451089, 0.757576, 0.471802,
		-0.771508, -0.065250, -0.632864,
		-0.448657, -0.649477, 0.613910,
		31.856689, 36.578651, 48.631134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605675, 37.347942, 48.433578>,  <32.170750, 37.033287, 48.201397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605675, 37.347942, 48.433578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576382, 37.039722, 48.686844>,  <31.558805, 36.854790, 48.838802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576382, 37.039722, 48.686844>,  <31.605675, 37.347942, 48.433578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576382, 37.039722, 48.686844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392379, 0.605926, 0.692021,
		-0.916884, -0.197761, -0.346720,
		-0.073232, -0.770548, 0.633161,
		31.554413, 36.808559, 48.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891781, 37.421017, 48.698971>,  <31.605675, 37.347942, 48.433578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891781, 37.421017, 48.698971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108179, 37.182053, 48.935757>,  <31.238018, 37.038673, 49.077827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108179, 37.182053, 48.935757>,  <30.891781, 37.421017, 48.698971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108179, 37.182053, 48.935757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352847, 0.477696, 0.804553,
		-0.763428, -0.644134, 0.047638,
		0.540997, -0.597409, 0.591967,
		31.270477, 37.002831, 49.113346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430035, 37.216522, 49.220383>,  <30.891781, 37.421017, 48.698971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430035, 37.216522, 49.220383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.764353, 37.127453, 49.421127>,  <30.964943, 37.074013, 49.541573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.764353, 37.127453, 49.421127>,  <30.430035, 37.216522, 49.220383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764353, 37.127453, 49.421127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332921, 0.521313, 0.785746,
		-0.436592, -0.823802, 0.361577,
		0.835793, -0.222674, 0.501862,
		31.015091, 37.060650, 49.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203722, 36.838291, 49.862030>,  <30.430035, 37.216522, 49.220383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203722, 36.838291, 49.862030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565784, 36.997044, 49.922928>,  <30.783022, 37.092297, 49.959469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565784, 36.997044, 49.922928>,  <30.203722, 36.838291, 49.862030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565784, 36.997044, 49.922928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357037, 0.515450, 0.778996,
		0.230694, -0.759470, 0.608264,
		0.905154, 0.396883, 0.152248,
		30.837330, 37.116108, 49.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481653, 36.635231, 50.478439>,  <30.203722, 36.838291, 49.862030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481653, 36.635231, 50.478439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.684628, 36.976109, 50.427425>,  <30.806412, 37.180637, 50.396816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.684628, 36.976109, 50.427425>,  <30.481653, 36.635231, 50.478439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684628, 36.976109, 50.427425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163433, 0.240504, 0.956790,
		0.846047, -0.464668, 0.261318,
		0.507438, 0.852198, -0.127536,
		30.836859, 37.231770, 50.389164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903763, 36.598465, 51.068405>,  <30.481653, 36.635231, 50.478439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903763, 36.598465, 51.068405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864178, 36.972794, 50.933086>,  <30.840427, 37.197392, 50.851894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864178, 36.972794, 50.933086>,  <30.903763, 36.598465, 51.068405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864178, 36.972794, 50.933086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289999, 0.298082, 0.909421,
		0.951896, 0.188103, 0.241888,
		-0.098962, 0.935823, -0.338293,
		30.834490, 37.253540, 50.831600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078503, 36.990013, 51.598095>,  <30.903763, 36.598465, 51.068405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078503, 36.990013, 51.598095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894661, 37.262627, 51.370316>,  <30.784355, 37.426197, 51.233650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894661, 37.262627, 51.370316>,  <31.078503, 36.990013, 51.598095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894661, 37.262627, 51.370316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410681, 0.405418, 0.816687,
		0.787466, 0.609215, 0.093562,
		-0.459606, 0.681538, -0.569446,
		30.756779, 37.467087, 51.199482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268055, 37.623451, 51.942627>,  <31.078503, 36.990013, 51.598095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268055, 37.623451, 51.942627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.941332, 37.678936, 51.718632>,  <30.745298, 37.712227, 51.584236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.941332, 37.678936, 51.718632>,  <31.268055, 37.623451, 51.942627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941332, 37.678936, 51.718632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470434, 0.401724, 0.785691,
		0.333947, 0.905194, -0.262875,
		-0.816806, 0.138713, -0.559988,
		30.696291, 37.720551, 51.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027304, 38.307571, 52.149609>,  <31.268055, 37.623451, 51.942627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027304, 38.307571, 52.149609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713137, 38.112202, 51.997524>,  <30.524637, 37.994980, 51.906273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713137, 38.112202, 51.997524>,  <31.027304, 38.307571, 52.149609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713137, 38.112202, 51.997524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589509, 0.403033, 0.700031,
		-0.188677, 0.773953, -0.604481,
		-0.785417, -0.488427, -0.380209,
		30.477512, 37.965675, 51.883461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541401, 38.749256, 52.101143>,  <31.027304, 38.307571, 52.149609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541401, 38.749256, 52.101143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368643, 38.389282, 52.125076>,  <30.264988, 38.173298, 52.139435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.368643, 38.389282, 52.125076>,  <30.541401, 38.749256, 52.101143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368643, 38.389282, 52.125076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670438, 0.364716, 0.646138,
		-0.603305, 0.238950, -0.760871,
		-0.431897, -0.899936, 0.059834,
		30.239073, 38.119301, 52.143028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796177, 38.821800, 51.891556>,  <30.541401, 38.749256, 52.101143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796177, 38.821800, 51.891556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855562, 38.507637, 52.131920>,  <29.891193, 38.319138, 52.276138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855562, 38.507637, 52.131920>,  <29.796177, 38.821800, 51.891556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855562, 38.507637, 52.131920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702506, 0.343913, 0.623064,
		-0.696020, -0.514646, -0.500695,
		0.148462, -0.785407, 0.600912,
		29.900101, 38.272015, 52.312195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081020, 38.504856, 52.026566>,  <29.796177, 38.821800, 51.891556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081020, 38.504856, 52.026566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316824, 38.393829, 52.329994>,  <29.458305, 38.327213, 52.512051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.316824, 38.393829, 52.329994>,  <29.081020, 38.504856, 52.026566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316824, 38.393829, 52.329994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678713, 0.338993, 0.651485,
		-0.437985, -0.898909, 0.011447,
		0.589507, -0.277572, 0.758575,
		29.493675, 38.310558, 52.557568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606253, 38.340080, 52.663204>,  <29.081020, 38.504856, 52.026566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606253, 38.340080, 52.663204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974661, 38.327251, 52.818478>,  <29.195705, 38.319553, 52.911644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974661, 38.327251, 52.818478>,  <28.606253, 38.340080, 52.663204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974661, 38.327251, 52.818478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331681, 0.457941, 0.824790,
		-0.204220, -0.888404, 0.411136,
		0.921022, -0.032072, 0.388187,
		29.250967, 38.317631, 52.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598475, 38.099594, 53.405010>,  <28.606253, 38.340080, 52.663204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598475, 38.099594, 53.405010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.940353, 38.303715, 53.366886>,  <29.145481, 38.426186, 53.344013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.940353, 38.303715, 53.366886>,  <28.598475, 38.099594, 53.405010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940353, 38.303715, 53.366886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237736, 0.547972, 0.802003,
		0.461491, -0.662811, 0.589668,
		0.854698, 0.510302, -0.095310,
		29.196762, 38.456806, 53.338295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766867, 38.109371, 54.046871>,  <28.598475, 38.099594, 53.405010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766867, 38.109371, 54.046871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.987431, 38.392448, 53.870182>,  <29.119770, 38.562294, 53.764168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.987431, 38.392448, 53.870182>,  <28.766867, 38.109371, 54.046871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987431, 38.392448, 53.870182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068281, 0.566010, 0.821566,
		0.831434, -0.422859, 0.360426,
		0.551411, 0.707689, -0.441727,
		29.152855, 38.604755, 53.737663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101896, 38.231342, 54.511765>,  <28.766867, 38.109371, 54.046871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101896, 38.231342, 54.511765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141050, 38.551876, 54.275707>,  <29.164543, 38.744198, 54.134071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.141050, 38.551876, 54.275707>,  <29.101896, 38.231342, 54.511765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141050, 38.551876, 54.275707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107243, 0.598036, 0.794262,
		0.989403, -0.014455, 0.144476,
		0.097883, 0.801339, -0.590148,
		29.170416, 38.792278, 54.098663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668364, 38.566551, 54.814751>,  <29.101896, 38.231342, 54.511765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668364, 38.566551, 54.814751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458931, 38.839737, 54.611015>,  <29.333271, 39.003647, 54.488773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.458931, 38.839737, 54.611015>,  <29.668364, 38.566551, 54.814751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458931, 38.839737, 54.611015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006283, 0.600913, 0.799289,
		0.851954, 0.415291, -0.318917,
		-0.523579, 0.682961, -0.509341,
		29.301857, 39.044624, 54.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974991, 39.234753, 54.962025>,  <29.668364, 38.566551, 54.814751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974991, 39.234753, 54.962025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615335, 39.332462, 54.816761>,  <29.399542, 39.391087, 54.729603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615335, 39.332462, 54.816761>,  <29.974991, 39.234753, 54.962025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615335, 39.332462, 54.816761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166767, 0.575946, 0.800297,
		0.404648, 0.780139, -0.477119,
		-0.899138, 0.244271, -0.363157,
		29.345594, 39.405743, 54.707813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060757, 39.933273, 54.930614>,  <29.974991, 39.234753, 54.962025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060757, 39.933273, 54.930614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682707, 39.811531, 54.978130>,  <29.455877, 39.738487, 55.006641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.682707, 39.811531, 54.978130>,  <30.060757, 39.933273, 54.930614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682707, 39.811531, 54.978130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100738, 0.617354, 0.780209,
		-0.310798, 0.725426, -0.614135,
		-0.945122, -0.304354, 0.118794,
		29.399170, 39.720226, 55.013767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706751, 40.418747, 55.165821>,  <30.060757, 39.933273, 54.930614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706751, 40.418747, 55.165821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401995, 40.169258, 55.235672>,  <29.219141, 40.019566, 55.277584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401995, 40.169258, 55.235672>,  <29.706751, 40.418747, 55.165821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401995, 40.169258, 55.235672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241366, 0.523599, 0.817060,
		-0.601052, 0.580361, -0.549470,
		-0.761891, -0.623719, 0.174631,
		29.173428, 39.982143, 55.288063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079590, 40.813778, 55.333725>,  <29.706751, 40.418747, 55.165821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079590, 40.813778, 55.333725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.998819, 40.454659, 55.490280>,  <28.950357, 40.239189, 55.584213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.998819, 40.454659, 55.490280>,  <29.079590, 40.813778, 55.333725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998819, 40.454659, 55.490280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264637, 0.434773, 0.860779,
		-0.942970, 0.070240, -0.325383,
		-0.201928, -0.897797, 0.391389,
		28.938240, 40.185318, 55.607697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642391, 40.893192, 55.884441>,  <29.079590, 40.813778, 55.333725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642391, 40.893192, 55.884441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760956, 40.528511, 55.998238>,  <28.832094, 40.309700, 56.066513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760956, 40.528511, 55.998238>,  <28.642391, 40.893192, 55.884441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760956, 40.528511, 55.998238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004988, 0.299347, 0.954131,
		-0.955048, -0.281395, 0.093277,
		0.296410, -0.911706, 0.284487,
		28.849878, 40.254997, 56.083584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165653, 40.712269, 56.378242>,  <28.642391, 40.893192, 55.884441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165653, 40.712269, 56.378242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.469711, 40.458565, 56.434658>,  <28.652147, 40.306343, 56.468506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.469711, 40.458565, 56.434658>,  <28.165653, 40.712269, 56.378242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469711, 40.458565, 56.434658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136421, 0.056433, 0.989042,
		-0.635269, -0.771057, -0.043629,
		0.760146, -0.634260, 0.141039,
		28.697756, 40.268288, 56.476971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974171, 40.214333, 56.887589>,  <28.165653, 40.712269, 56.378242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974171, 40.214333, 56.887589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372993, 40.244289, 56.881092>,  <28.612288, 40.262264, 56.877193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372993, 40.244289, 56.881092>,  <27.974171, 40.214333, 56.887589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372993, 40.244289, 56.881092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015129, 0.015391, 0.999767,
		0.075131, -0.997072, 0.014212,
		0.997059, 0.074899, -0.016241,
		28.672112, 40.266758, 56.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168608, 39.703995, 57.295574>,  <27.974171, 40.214333, 56.887589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168608, 39.703995, 57.295574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.476654, 39.959152, 57.297096>,  <28.661482, 40.112247, 57.298008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.476654, 39.959152, 57.297096>,  <28.168608, 39.703995, 57.295574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476654, 39.959152, 57.297096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003728, -0.010462, 0.999938,
		0.637896, -0.770052, -0.010435,
		0.770114, 0.637896, 0.003803,
		28.707687, 40.150520, 57.298237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708282, 39.395954, 57.800430>,  <28.168608, 39.703995, 57.295574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708282, 39.395954, 57.800430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760950, 39.791874, 57.778656>,  <28.792551, 40.029427, 57.765591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760950, 39.791874, 57.778656>,  <28.708282, 39.395954, 57.800430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760950, 39.791874, 57.778656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049589, 0.061425, 0.996879,
		0.990052, -0.128560, 0.057171,
		0.131671, 0.989798, -0.054439,
		28.800451, 40.088814, 57.762325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001919, 39.535213, 58.420429>,  <28.708282, 39.395954, 57.800430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001919, 39.535213, 58.420429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.898746, 39.903988, 58.304836>,  <28.836843, 40.125252, 58.235481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.898746, 39.903988, 58.304836>,  <29.001919, 39.535213, 58.420429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898746, 39.903988, 58.304836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119186, 0.266461, 0.956448,
		0.958784, 0.281141, 0.041152,
		-0.257932, 0.921932, -0.288986,
		28.821367, 40.180569, 58.218140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335670, 39.932030, 58.848728>,  <29.001919, 39.535213, 58.420429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335670, 39.932030, 58.848728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024240, 40.137596, 58.704666>,  <28.837383, 40.260937, 58.618229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024240, 40.137596, 58.704666>,  <29.335670, 39.932030, 58.848728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024240, 40.137596, 58.704666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165006, 0.386067, 0.907593,
		0.605473, 0.766055, -0.215782,
		-0.778573, 0.513918, -0.360157,
		28.790668, 40.291771, 58.596619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415440, 40.661053, 59.021095>,  <29.335670, 39.932030, 58.848728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415440, 40.661053, 59.021095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024256, 40.600475, 58.963604>,  <28.789545, 40.564129, 58.929108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024256, 40.600475, 58.963604>,  <29.415440, 40.661053, 59.021095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024256, 40.600475, 58.963604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179011, 0.253883, 0.950525,
		-0.107456, 0.955306, -0.275397,
		-0.977961, -0.151439, -0.143729,
		28.730867, 40.555042, 58.920486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098648, 41.142025, 59.420517>,  <29.415440, 40.661053, 59.021095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098648, 41.142025, 59.420517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.800106, 40.882954, 59.359241>,  <28.620981, 40.727509, 59.322475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.800106, 40.882954, 59.359241>,  <29.098648, 41.142025, 59.420517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800106, 40.882954, 59.359241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341564, 0.175199, 0.923385,
		-0.571219, 0.741496, -0.351984,
		-0.746353, -0.647680, -0.153191,
		28.576200, 40.688648, 59.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877243, 41.321701, 59.983047>,  <29.098648, 41.142025, 59.420517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877243, 41.321701, 59.983047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676081, 41.003380, 59.848118>,  <28.555384, 40.812386, 59.767159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676081, 41.003380, 59.848118>,  <28.877243, 41.321701, 59.983047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676081, 41.003380, 59.848118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418714, -0.117115, 0.900535,
		-0.756153, 0.594125, -0.274316,
		-0.502904, -0.795801, -0.337325,
		28.525209, 40.764641, 59.746922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115976, 41.430897, 60.153976>,  <28.877243, 41.321701, 59.983047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115976, 41.430897, 60.153976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.190685, 41.039360, 60.120533>,  <28.235512, 40.804440, 60.100468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.190685, 41.039360, 60.120533>,  <28.115976, 41.430897, 60.153976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190685, 41.039360, 60.120533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272542, -0.133396, 0.952852,
		-0.943841, -0.155180, -0.291690,
		0.186774, -0.978839, -0.083611,
		28.246717, 40.745708, 60.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457577, 41.013561, 60.396049>,  <28.115976, 41.430897, 60.153976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457577, 41.013561, 60.396049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771860, 40.767372, 60.420876>,  <27.960430, 40.619659, 60.435772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.771860, 40.767372, 60.420876>,  <27.457577, 41.013561, 60.396049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771860, 40.767372, 60.420876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368886, -0.385630, 0.845703,
		-0.496574, -0.687372, -0.530032,
		0.785708, -0.615475, 0.062068,
		28.007572, 40.582729, 60.439495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131050, 40.485065, 60.754456>,  <27.457577, 41.013561, 60.396049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131050, 40.485065, 60.754456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.513634, 40.377357, 60.799492>,  <27.743185, 40.312733, 60.826515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.513634, 40.377357, 60.799492>,  <27.131050, 40.485065, 60.754456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513634, 40.377357, 60.799492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257527, -0.597069, 0.759730,
		-0.137345, -0.755648, -0.640416,
		0.956460, -0.269269, 0.112595,
		27.800571, 40.296577, 60.833271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114353, 39.780476, 60.871838>,  <27.131050, 40.485065, 60.754456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114353, 39.780476, 60.871838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457285, 39.905682, 61.035305>,  <27.663044, 39.980804, 61.133385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457285, 39.905682, 61.035305>,  <27.114353, 39.780476, 60.871838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457285, 39.905682, 61.035305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243505, -0.452842, 0.857694,
		0.453536, -0.834837, -0.312012,
		0.857328, 0.313019, 0.408667,
		27.714483, 39.999588, 61.157906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588724, 39.171677, 61.068928>,  <27.114353, 39.780476, 60.871838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588724, 39.171677, 61.068928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.421434, 38.808346, 61.070717>,  <26.321060, 38.590347, 61.071793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.421434, 38.808346, 61.070717>,  <26.588724, 39.171677, 61.068928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421434, 38.808346, 61.070717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619265, -0.288728, -0.730169,
		0.664528, -0.302604, 0.683252,
		-0.418226, -0.908332, 0.004476,
		26.295967, 38.535847, 61.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170622, 38.714310, 60.901615>,  <26.588724, 39.171677, 61.068928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170622, 38.714310, 60.901615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.812004, 38.548828, 60.838295>,  <26.596834, 38.449539, 60.800301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.812004, 38.548828, 60.838295>,  <27.170622, 38.714310, 60.901615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812004, 38.548828, 60.838295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324651, -0.370568, -0.870219,
		0.301352, -0.831581, 0.466540,
		-0.896542, -0.413705, -0.158302,
		26.543041, 38.424717, 60.790806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373777, 38.098969, 60.762047>,  <27.170622, 38.714310, 60.901615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373777, 38.098969, 60.762047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005901, 38.128258, 60.607742>,  <26.785175, 38.145832, 60.515160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005901, 38.128258, 60.607742>,  <27.373777, 38.098969, 60.762047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005901, 38.128258, 60.607742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305255, -0.484614, -0.819737,
		-0.246967, -0.871658, 0.423343,
		-0.919688, 0.073220, -0.385762,
		26.729996, 38.150223, 60.492012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185883, 37.490532, 60.593330>,  <27.373777, 38.098969, 60.762047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185883, 37.490532, 60.593330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.945097, 37.716431, 60.367516>,  <26.800627, 37.851971, 60.232025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.945097, 37.716431, 60.367516>,  <27.185883, 37.490532, 60.593330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945097, 37.716431, 60.367516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208080, -0.571615, -0.793699,
		-0.770938, -0.595246, 0.226578,
		-0.601961, 0.564746, -0.564539,
		26.764509, 37.885853, 60.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798798, 37.021580, 60.186497>,  <27.185883, 37.490532, 60.593330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798798, 37.021580, 60.186497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.781174, 37.363785, 59.980133>,  <26.770599, 37.569107, 59.856316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.781174, 37.363785, 59.980133>,  <26.798798, 37.021580, 60.186497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781174, 37.363785, 59.980133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075997, -0.512042, -0.855592,
		-0.996134, -0.076905, -0.042455,
		-0.044061, 0.855511, -0.515907,
		26.767956, 37.620438, 59.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579174, 36.805679, 59.608475>,  <26.798798, 37.021580, 60.186497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579174, 36.805679, 59.608475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729263, 37.163261, 59.510456>,  <26.819317, 37.377811, 59.451645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.729263, 37.163261, 59.510456>,  <26.579174, 36.805679, 59.608475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729263, 37.163261, 59.510456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177953, -0.328919, -0.927440,
		-0.909693, 0.304389, -0.282500,
		0.375222, 0.893957, -0.245049,
		26.841829, 37.431450, 59.436943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349949, 37.021866, 58.920204>,  <26.579174, 36.805679, 59.608475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349949, 37.021866, 58.920204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.654800, 37.278732, 58.953144>,  <26.837711, 37.432854, 58.972908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.654800, 37.278732, 58.953144>,  <26.349949, 37.021866, 58.920204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654800, 37.278732, 58.953144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386026, -0.348615, -0.854079,
		-0.519752, 0.682708, -0.513583,
		0.762129, 0.642166, 0.082350,
		26.883440, 37.471382, 58.977848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431692, 37.164112, 58.209232>,  <26.349949, 37.021866, 58.920204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431692, 37.164112, 58.209232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.767757, 37.235233, 58.414177>,  <26.969397, 37.277905, 58.537144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.767757, 37.235233, 58.414177>,  <26.431692, 37.164112, 58.209232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767757, 37.235233, 58.414177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540406, -0.194818, -0.818540,
		-0.045720, 0.964589, -0.259763,
		0.840161, 0.177801, 0.512363,
		27.019806, 37.288574, 58.567886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891371, 37.656273, 57.838211>,  <26.431692, 37.164112, 58.209232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891371, 37.656273, 57.838211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146761, 37.468754, 58.082367>,  <27.299995, 37.356243, 58.228859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146761, 37.468754, 58.082367>,  <26.891371, 37.656273, 57.838211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146761, 37.468754, 58.082367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571112, -0.243057, -0.784063,
		0.515929, 0.849205, 0.112552,
		0.638474, -0.468801, 0.610391,
		27.338303, 37.328114, 58.265484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542654, 37.757812, 57.543255>,  <26.891371, 37.656273, 57.838211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542654, 37.757812, 57.543255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612017, 37.453663, 57.793617>,  <27.653633, 37.271172, 57.943836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.612017, 37.453663, 57.793617>,  <27.542654, 37.757812, 57.543255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612017, 37.453663, 57.793617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541161, -0.457424, -0.705626,
		0.822846, 0.461074, 0.332167,
		0.173405, -0.760378, 0.625905,
		27.664038, 37.225548, 57.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235966, 37.740162, 57.640350>,  <27.542654, 37.757812, 57.543255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235966, 37.740162, 57.640350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.128855, 37.369305, 57.745201>,  <28.064589, 37.146790, 57.808109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.128855, 37.369305, 57.745201>,  <28.235966, 37.740162, 57.640350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128855, 37.369305, 57.745201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764681, -0.370017, -0.527589,
		0.586139, 0.059163, 0.808048,
		-0.267778, -0.927139, 0.262122,
		28.048521, 37.091164, 57.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789923, 37.396450, 57.790890>,  <28.235966, 37.740162, 57.640350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789923, 37.396450, 57.790890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534986, 37.095963, 57.722221>,  <28.382025, 36.915672, 57.681019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.534986, 37.095963, 57.722221>,  <28.789923, 37.396450, 57.790890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534986, 37.095963, 57.722221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668605, -0.428345, -0.607855,
		0.383095, -0.502193, 0.775268,
		-0.637343, -0.751214, -0.171672,
		28.343784, 36.870598, 57.670719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197203, 36.865925, 57.863762>,  <28.789923, 37.396450, 57.790890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197203, 36.865925, 57.863762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884403, 36.757805, 57.639114>,  <28.696724, 36.692932, 57.504326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.884403, 36.757805, 57.639114>,  <29.197203, 36.865925, 57.863762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884403, 36.757805, 57.639114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623216, -0.351880, -0.698414,
		-0.008844, -0.896170, 0.443623,
		-0.781999, -0.270297, -0.561620,
		28.649803, 36.676716, 57.470627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424559, 36.213223, 57.550690>,  <29.197203, 36.865925, 57.863762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424559, 36.213223, 57.550690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113609, 36.332256, 57.329010>,  <28.927040, 36.403675, 57.196003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.113609, 36.332256, 57.329010>,  <29.424559, 36.213223, 57.550690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113609, 36.332256, 57.329010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389902, -0.463416, -0.795752,
		-0.493629, -0.834678, 0.244217,
		-0.777372, 0.297586, -0.554199,
		28.880398, 36.421532, 57.162750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272047, 35.582947, 57.056992>,  <29.424559, 36.213223, 57.550690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272047, 35.582947, 57.056992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.087898, 35.907925, 56.913887>,  <28.977409, 36.102909, 56.828022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.087898, 35.907925, 56.913887>,  <29.272047, 35.582947, 57.056992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087898, 35.907925, 56.913887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125774, -0.339253, -0.932249,
		-0.878771, -0.474180, 0.053999,
		-0.460373, 0.812442, -0.357765,
		28.949787, 36.151657, 56.806557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899839, 35.332687, 56.516907>,  <29.272047, 35.582947, 57.056992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899839, 35.332687, 56.516907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908741, 35.725628, 56.442623>,  <28.914082, 35.961391, 56.398052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908741, 35.725628, 56.442623>,  <28.899839, 35.332687, 56.516907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908741, 35.725628, 56.442623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067666, -0.186813, -0.980063,
		-0.997460, 0.009242, -0.070629,
		0.022252, 0.982352, -0.185714,
		28.915417, 36.020332, 56.386909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375240, 35.573814, 55.990620>,  <28.899839, 35.332687, 56.516907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375240, 35.573814, 55.990620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.663795, 35.850086, 55.970387>,  <28.836929, 36.015850, 55.958248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.663795, 35.850086, 55.970387>,  <28.375240, 35.573814, 55.990620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663795, 35.850086, 55.970387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012581, -0.086096, -0.996208,
		-0.692416, 0.718017, -0.070798,
		0.721389, 0.690680, -0.050581,
		28.880213, 36.057289, 55.955212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184076, 36.140377, 55.633121>,  <28.375240, 35.573814, 55.990620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184076, 36.140377, 55.633121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.581594, 36.133434, 55.589169>,  <28.820105, 36.129269, 55.562798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.581594, 36.133434, 55.589169>,  <28.184076, 36.140377, 55.633121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581594, 36.133434, 55.589169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111103, -0.105464, -0.988197,
		0.005562, 0.994272, -0.106738,
		0.993793, -0.017355, -0.109880,
		28.879732, 36.128227, 55.556206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273682, 36.612377, 55.117096>,  <28.184076, 36.140377, 55.633121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273682, 36.612377, 55.117096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628918, 36.428772, 55.126965>,  <28.842058, 36.318611, 55.132885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628918, 36.428772, 55.126965>,  <28.273682, 36.612377, 55.117096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628918, 36.428772, 55.126965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016919, -0.020986, -0.999637,
		0.459361, 0.888183, -0.010871,
		0.888088, -0.459011, 0.024667,
		28.895344, 36.291069, 55.134365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676294, 37.026318, 54.710030>,  <28.273682, 36.612377, 55.117096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676294, 37.026318, 54.710030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853956, 36.668217, 54.724171>,  <28.960554, 36.453358, 54.732655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853956, 36.668217, 54.724171>,  <28.676294, 37.026318, 54.710030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853956, 36.668217, 54.724171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193565, 0.057351, -0.979410,
		0.874791, 0.441854, 0.198762,
		0.444155, -0.895252, 0.035357,
		28.987204, 36.399643, 54.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178347, 37.060272, 54.201935>,  <28.676294, 37.026318, 54.710030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178347, 37.060272, 54.201935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.147583, 36.665035, 54.255230>,  <29.129126, 36.427891, 54.287205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.147583, 36.665035, 54.255230>,  <29.178347, 37.060272, 54.201935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147583, 36.665035, 54.255230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183488, -0.145375, -0.972213,
		0.980009, -0.050324, 0.192485,
		-0.076908, -0.988096, 0.133234,
		29.124510, 36.368607, 54.295200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795898, 36.702480, 54.043587>,  <29.178347, 37.060272, 54.201935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795898, 36.702480, 54.043587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471619, 36.478786, 53.974281>,  <29.277050, 36.344570, 53.932697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471619, 36.478786, 53.974281>,  <29.795898, 36.702480, 54.043587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471619, 36.478786, 53.974281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360728, -0.244030, -0.900181,
		0.461128, -0.792280, 0.399566,
		-0.810701, -0.559233, -0.173268,
		29.228409, 36.311016, 53.922302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916500, 36.404781, 53.400642>,  <29.795898, 36.702480, 54.043587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916500, 36.404781, 53.400642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560257, 36.224537, 53.425179>,  <29.346510, 36.116390, 53.439899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.560257, 36.224537, 53.425179>,  <29.916500, 36.404781, 53.400642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560257, 36.224537, 53.425179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092978, -0.312455, -0.945371,
		0.445162, -0.836254, 0.320173,
		-0.890610, -0.450613, 0.061340,
		29.293074, 36.089352, 53.443581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982706, 35.694424, 53.187786>,  <29.916500, 36.404781, 53.400642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982706, 35.694424, 53.187786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.612398, 35.819363, 53.102566>,  <29.390213, 35.894325, 53.051434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.612398, 35.819363, 53.102566>,  <29.982706, 35.694424, 53.187786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612398, 35.819363, 53.102566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115529, -0.302860, -0.946007,
		-0.360012, -0.900396, 0.244292,
		-0.925767, 0.312351, -0.213055,
		29.334667, 35.913067, 53.038651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764641, 35.180580, 52.729649>,  <29.982706, 35.694424, 53.187786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764641, 35.180580, 52.729649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472059, 35.452778, 52.712181>,  <29.296511, 35.616096, 52.701702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472059, 35.452778, 52.712181>,  <29.764641, 35.180580, 52.729649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472059, 35.452778, 52.712181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263593, -0.341236, -0.902262,
		-0.628883, -0.648452, 0.428971,
		-0.731455, 0.680491, -0.043670,
		29.252623, 35.656925, 52.699081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060799, 34.900909, 52.519382>,  <29.764641, 35.180580, 52.729649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060799, 34.900909, 52.519382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055883, 35.282810, 52.400520>,  <29.052935, 35.511951, 52.329205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055883, 35.282810, 52.400520>,  <29.060799, 34.900909, 52.519382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055883, 35.282810, 52.400520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162001, -0.295152, -0.941616,
		-0.986714, 0.036569, 0.158297,
		-0.012288, 0.954750, -0.297155,
		29.052197, 35.569237, 52.311375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608717, 34.921589, 51.964306>,  <29.060799, 34.900909, 52.519382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608717, 34.921589, 51.964306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782187, 35.274715, 51.892132>,  <28.886269, 35.486591, 51.848827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782187, 35.274715, 51.892132>,  <28.608717, 34.921589, 51.964306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782187, 35.274715, 51.892132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102367, -0.247221, -0.963536,
		-0.895235, 0.399392, -0.197585,
		0.433676, 0.882818, -0.180437,
		28.912289, 35.539562, 51.838001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258049, 35.278671, 51.387535>,  <28.608717, 34.921589, 51.964306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258049, 35.278671, 51.387535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629318, 35.425392, 51.412666>,  <28.852079, 35.513424, 51.427746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629318, 35.425392, 51.412666>,  <28.258049, 35.278671, 51.387535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629318, 35.425392, 51.412666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133619, -0.170909, -0.976184,
		-0.347333, 0.914463, -0.207646,
		0.928173, 0.366806, 0.062827,
		28.907770, 35.535435, 51.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353058, 35.688599, 50.727226>,  <28.258049, 35.278671, 51.387535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353058, 35.688599, 50.727226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709078, 35.599926, 50.886559>,  <28.922689, 35.546722, 50.982159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.709078, 35.599926, 50.886559>,  <28.353058, 35.688599, 50.727226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709078, 35.599926, 50.886559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344862, -0.244018, -0.906380,
		0.298130, 0.944093, -0.140738,
		0.890050, -0.221684, 0.398331,
		28.976093, 35.533421, 51.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816822, 36.006584, 50.227634>,  <28.353058, 35.688599, 50.727226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816822, 36.006584, 50.227634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.048262, 35.753483, 50.433487>,  <29.187126, 35.601624, 50.556999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.048262, 35.753483, 50.433487>,  <28.816822, 36.006584, 50.227634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048262, 35.753483, 50.433487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499043, -0.224428, -0.837011,
		0.645120, 0.741117, 0.185918,
		0.578598, -0.632754, 0.514633,
		29.221842, 35.563656, 50.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531307, 36.061390, 49.927677>,  <28.816822, 36.006584, 50.227634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531307, 36.061390, 49.927677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.455629, 35.708359, 50.099846>,  <29.410223, 35.496540, 50.203148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.455629, 35.708359, 50.099846>,  <29.531307, 36.061390, 49.927677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455629, 35.708359, 50.099846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411645, -0.469250, -0.781251,
		0.891490, 0.029372, 0.452088,
		-0.189195, -0.882577, 0.430423,
		29.398870, 35.443584, 50.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184011, 35.793552, 49.959961>,  <29.531307, 36.061390, 49.927677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184011, 35.793552, 49.959961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957298, 35.465725, 49.993565>,  <29.821270, 35.269028, 50.013729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957298, 35.465725, 49.993565>,  <30.184011, 35.793552, 49.959961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957298, 35.465725, 49.993565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538347, -0.445622, -0.715264,
		0.623648, -0.360172, 0.693786,
		-0.566785, -0.819571, 0.084014,
		29.787262, 35.219852, 50.018768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593992, 35.307762, 49.814686>,  <30.184011, 35.793552, 49.959961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593992, 35.307762, 49.814686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249756, 35.112549, 49.756432>,  <30.043215, 34.995422, 49.721481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249756, 35.112549, 49.756432>,  <30.593992, 35.307762, 49.814686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249756, 35.112549, 49.756432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436097, -0.558423, -0.705679,
		0.263071, -0.670810, 0.693403,
		-0.860589, -0.488035, -0.145634,
		29.991579, 34.966137, 49.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798344, 34.569111, 49.761055>,  <30.593992, 35.307762, 49.814686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798344, 34.569111, 49.761055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.429853, 34.565948, 49.605473>,  <30.208759, 34.564053, 49.512123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.429853, 34.565948, 49.605473>,  <30.798344, 34.569111, 49.761055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429853, 34.565948, 49.605473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280939, -0.705119, -0.651061,
		-0.269111, -0.709045, 0.651793,
		-0.921223, -0.007907, -0.388954,
		30.153486, 34.563576, 49.488785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723583, 33.931046, 49.610058>,  <30.798344, 34.569111, 49.761055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723583, 33.931046, 49.610058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421457, 34.091335, 49.402630>,  <30.240181, 34.187511, 49.278172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421457, 34.091335, 49.402630>,  <30.723583, 33.931046, 49.610058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421457, 34.091335, 49.402630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172447, -0.641865, -0.747176,
		-0.632246, -0.653790, 0.415720,
		-0.755333, 0.400709, -0.518561,
		30.194862, 34.211555, 49.247059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220562, 33.342361, 49.506203>,  <30.723583, 33.931046, 49.610058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220562, 33.342361, 49.506203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179209, 33.620117, 49.221348>,  <30.154398, 33.786770, 49.050434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179209, 33.620117, 49.221348>,  <30.220562, 33.342361, 49.506203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179209, 33.620117, 49.221348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120393, -0.701972, -0.701955,
		-0.987329, -0.158305, -0.011029,
		-0.103381, 0.694388, -0.712135,
		30.148195, 33.828434, 49.007706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654072, 33.087925, 49.156887>,  <30.220562, 33.342361, 49.506203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654072, 33.087925, 49.156887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885426, 33.312092, 48.919769>,  <30.024239, 33.446590, 48.777500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885426, 33.312092, 48.919769>,  <29.654072, 33.087925, 49.156887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885426, 33.312092, 48.919769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056519, -0.752457, -0.656211,
		-0.813803, 0.346039, -0.466885,
		0.578386, 0.560415, -0.592794,
		30.058941, 33.480217, 48.741932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512791, 32.919445, 48.472046>,  <29.654072, 33.087925, 49.156887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512791, 32.919445, 48.472046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853416, 33.109577, 48.383598>,  <30.057793, 33.223656, 48.330528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853416, 33.109577, 48.383598>,  <29.512791, 32.919445, 48.472046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853416, 33.109577, 48.383598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293593, -0.781840, -0.550027,
		-0.434327, 0.403464, -0.805342,
		0.851565, 0.475335, -0.221120,
		30.108887, 33.252178, 48.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719488, 32.686592, 47.800526>,  <29.512791, 32.919445, 48.472046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719488, 32.686592, 47.800526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051004, 32.819439, 47.980659>,  <30.249914, 32.899147, 48.088741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.051004, 32.819439, 47.980659>,  <29.719488, 32.686592, 47.800526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051004, 32.819439, 47.980659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506954, -0.786345, -0.353072,
		0.236857, 0.520922, -0.820085,
		0.828792, 0.332117, 0.450335,
		30.299643, 32.919075, 48.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204124, 32.616596, 47.315418>,  <29.719488, 32.686592, 47.800526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204124, 32.616596, 47.315418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413536, 32.657696, 47.653732>,  <30.539183, 32.682358, 47.856720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413536, 32.657696, 47.653732>,  <30.204124, 32.616596, 47.315418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413536, 32.657696, 47.653732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626440, -0.719269, -0.300374,
		0.577487, 0.687091, -0.440926,
		0.523529, 0.102751, 0.845790,
		30.570595, 32.688522, 47.907471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977125, 32.756813, 47.153381>,  <30.204124, 32.616596, 47.315418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977125, 32.756813, 47.153381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912779, 32.553364, 47.491714>,  <30.874170, 32.431293, 47.694714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912779, 32.553364, 47.491714>,  <30.977125, 32.756813, 47.153381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912779, 32.553364, 47.491714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776768, -0.593947, -0.209424,
		0.608895, 0.623325, 0.490625,
		-0.160866, -0.508619, 0.845830,
		30.864519, 32.400780, 47.745464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554527, 32.626949, 47.435085>,  <30.977125, 32.756813, 47.153381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554527, 32.626949, 47.435085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366312, 32.330498, 47.626637>,  <31.253384, 32.152626, 47.741566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366312, 32.330498, 47.626637>,  <31.554527, 32.626949, 47.435085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366312, 32.330498, 47.626637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822052, -0.565418, -0.067328,
		0.320663, 0.361979, 0.875298,
		-0.470538, -0.741130, 0.478874,
		31.225151, 32.108158, 47.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978447, 32.337502, 47.959415>,  <31.554527, 32.626949, 47.435085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978447, 32.337502, 47.959415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735174, 32.054981, 47.814495>,  <31.589211, 31.885469, 47.727543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.735174, 32.054981, 47.814495>,  <31.978447, 32.337502, 47.959415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735174, 32.054981, 47.814495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773715, -0.629466, -0.071676,
		-0.177431, -0.323909, 0.929301,
		-0.608180, -0.706297, -0.362300,
		31.552721, 31.843092, 47.705807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214176, 31.829191, 48.435574>,  <31.978447, 32.337502, 47.959415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214176, 31.829191, 48.435574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019169, 31.723204, 48.102802>,  <31.902163, 31.659611, 47.903137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.019169, 31.723204, 48.102802>,  <32.214176, 31.829191, 48.435574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019169, 31.723204, 48.102802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727242, -0.650511, -0.218985,
		-0.483157, -0.711776, 0.509837,
		-0.487523, -0.264971, -0.831933,
		31.872911, 31.643713, 47.853222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800014, 31.207970, 48.422237>,  <32.214176, 31.829191, 48.435574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800014, 31.207970, 48.422237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401478, 31.241844, 48.417622>,  <32.162357, 31.262169, 48.414852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401478, 31.241844, 48.417622>,  <32.800014, 31.207970, 48.422237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401478, 31.241844, 48.417622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063982, -0.828519, -0.556293,
		-0.056670, -0.553520, 0.830906,
		-0.996341, 0.084688, -0.011537,
		32.102577, 31.267250, 48.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575096, 31.224245, 48.252796>,  <32.800014, 31.207970, 48.422237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575096, 31.224245, 48.252796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535492, 31.583364, 48.081146>,  <33.511730, 31.798836, 47.978157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535492, 31.583364, 48.081146>,  <33.575096, 31.224245, 48.252796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535492, 31.583364, 48.081146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933947, 0.232672, 0.271306,
		0.343424, -0.373922, -0.861535,
		-0.099008, 0.897801, -0.429128,
		33.505791, 31.852705, 47.952408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100113, 31.495241, 47.801441>,  <33.575096, 31.224245, 48.252796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100113, 31.495241, 47.801441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923904, 31.824110, 47.945648>,  <33.818180, 32.021431, 48.032173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.923904, 31.824110, 47.945648>,  <34.100113, 31.495241, 47.801441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923904, 31.824110, 47.945648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860652, 0.272529, 0.430124,
		0.255386, 0.499758, -0.827660,
		-0.440519, 0.822174, 0.360517,
		33.791748, 32.070763, 48.053802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602699, 32.004093, 47.698788>,  <34.100113, 31.495241, 47.801441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602699, 32.004093, 47.698788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378994, 32.127316, 48.006638>,  <34.244770, 32.201248, 48.191349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378994, 32.127316, 48.006638>,  <34.602699, 32.004093, 47.698788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378994, 32.127316, 48.006638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828964, 0.214936, 0.516353,
		-0.006352, 0.926769, -0.375578,
		-0.559265, 0.308060, 0.769624,
		34.211216, 32.219734, 48.237526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729691, 32.670685, 47.865101>,  <34.602699, 32.004093, 47.698788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729691, 32.670685, 47.865101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633446, 32.483982, 48.205509>,  <34.575699, 32.371960, 48.409756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633446, 32.483982, 48.205509>,  <34.729691, 32.670685, 47.865101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633446, 32.483982, 48.205509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865169, 0.294316, 0.406030,
		-0.439989, 0.833975, 0.333010,
		-0.240609, -0.466758, 0.851025,
		34.561264, 32.343956, 48.460815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122776, 33.024418, 48.295723>,  <34.729691, 32.670685, 47.865101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122776, 33.024418, 48.295723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023602, 32.691998, 48.494873>,  <34.964096, 32.492546, 48.614365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023602, 32.691998, 48.494873>,  <35.122776, 33.024418, 48.295723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023602, 32.691998, 48.494873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850613, 0.059220, 0.522446,
		-0.463663, 0.553037, 0.692218,
		-0.247939, -0.831049, 0.497879,
		34.949219, 32.442684, 48.644238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320362, 33.121075, 49.027901>,  <35.122776, 33.024418, 48.295723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320362, 33.121075, 49.027901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310303, 32.728588, 48.951401>,  <35.304268, 32.493095, 48.905499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310303, 32.728588, 48.951401>,  <35.320362, 33.121075, 49.027901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310303, 32.728588, 48.951401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878734, -0.112917, 0.463763,
		-0.476649, -0.156396, 0.865070,
		-0.025150, -0.981219, -0.191252,
		35.302757, 32.434223, 48.894024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375454, 32.789818, 49.646362>,  <35.320362, 33.121075, 49.027901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375454, 32.789818, 49.646362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478062, 32.498981, 49.391636>,  <35.539627, 32.324478, 49.238800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478062, 32.498981, 49.391636>,  <35.375454, 32.789818, 49.646362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478062, 32.498981, 49.391636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871375, -0.111112, 0.477869,
		-0.418213, -0.677489, 0.605067,
		0.256522, -0.727091, -0.636816,
		35.555019, 32.280853, 49.200592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847633, 32.290726, 50.117340>,  <35.375454, 32.789818, 49.646362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847633, 32.290726, 50.117340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938068, 32.220924, 49.734001>,  <35.992329, 32.179043, 49.503998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938068, 32.220924, 49.734001>,  <35.847633, 32.290726, 50.117340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938068, 32.220924, 49.734001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928992, -0.257310, 0.266017,
		-0.293014, -0.950442, 0.103939,
		0.226089, -0.174505, -0.958349,
		36.005894, 32.168571, 49.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149178, 31.663469, 50.069195>,  <35.847633, 32.290726, 50.117340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149178, 31.663469, 50.069195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.275558, 31.835596, 49.730965>,  <36.351387, 31.938873, 49.528027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.275558, 31.835596, 49.730965>,  <36.149178, 31.663469, 50.069195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275558, 31.835596, 49.730965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942537, -0.244389, 0.227812,
		-0.108618, -0.868965, -0.482806,
		0.315953, 0.430318, -0.845577,
		36.370346, 31.964691, 49.477291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649715, 31.193041, 49.860626>,  <36.149178, 31.663469, 50.069195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649715, 31.193041, 49.860626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730896, 31.528391, 49.658264>,  <36.779606, 31.729601, 49.536846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730896, 31.528391, 49.658264>,  <36.649715, 31.193041, 49.860626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730896, 31.528391, 49.658264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978575, -0.191957, 0.074462,
		-0.034686, -0.510179, -0.859368,
		0.202951, 0.838373, -0.505907,
		36.791782, 31.779903, 49.506493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222652, 31.073797, 49.452633>,  <36.649715, 31.193041, 49.860626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222652, 31.073797, 49.452633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207470, 31.473209, 49.468121>,  <37.198360, 31.712856, 49.477413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207470, 31.473209, 49.468121>,  <37.222652, 31.073797, 49.452633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207470, 31.473209, 49.468121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959306, 0.025557, 0.281211,
		0.279808, 0.047821, -0.958864,
		-0.037954, 0.998529, 0.038724,
		37.196083, 31.772768, 49.479736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790565, 31.262253, 48.978493>,  <37.222652, 31.073797, 49.452633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790565, 31.262253, 48.978493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721985, 31.581013, 49.210201>,  <37.680836, 31.772268, 49.349228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721985, 31.581013, 49.210201>,  <37.790565, 31.262253, 48.978493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721985, 31.581013, 49.210201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958093, -0.002095, 0.286450,
		0.229484, 0.604110, -0.763143,
		-0.171449, 0.796898, 0.579274,
		37.670551, 31.820082, 49.383984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310833, 31.863998, 48.897007>,  <37.790565, 31.262253, 48.978493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310833, 31.863998, 48.897007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141796, 31.882658, 49.259056>,  <38.040375, 31.893854, 49.476284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141796, 31.882658, 49.259056>,  <38.310833, 31.863998, 48.897007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141796, 31.882658, 49.259056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904509, 0.084823, 0.417933,
		-0.057278, 0.995303, -0.078040,
		-0.422590, 0.046650, 0.905119,
		38.015018, 31.896652, 49.530594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441822, 32.305244, 48.312138>,  <38.310833, 31.863998, 48.897007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441822, 32.305244, 48.312138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722279, 32.047817, 48.434921>,  <38.890553, 31.893360, 48.508591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722279, 32.047817, 48.434921>,  <38.441822, 32.305244, 48.312138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722279, 32.047817, 48.434921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181045, -0.255709, -0.949651,
		0.689658, 0.721410, -0.062772,
		0.701138, -0.643569, 0.306959,
		38.932621, 31.854746, 48.527008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906605, 32.356930, 47.800121>,  <38.441822, 32.305244, 48.312138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906605, 32.356930, 47.800121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970287, 32.007008, 47.983150>,  <39.008495, 31.797054, 48.092968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970287, 32.007008, 47.983150>,  <38.906605, 32.356930, 47.800121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970287, 32.007008, 47.983150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309959, -0.395755, -0.864467,
		0.937326, 0.279454, 0.208148,
		0.159203, -0.874805, 0.457570,
		39.018047, 31.744566, 48.120422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502010, 32.128185, 47.569057>,  <38.906605, 32.356930, 47.800121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502010, 32.128185, 47.569057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306633, 31.793926, 47.669556>,  <39.189407, 31.593370, 47.729855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306633, 31.793926, 47.669556>,  <39.502010, 32.128185, 47.569057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306633, 31.793926, 47.669556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335652, -0.445698, -0.829874,
		0.805459, -0.321015, 0.498183,
		-0.488441, -0.835645, 0.251242,
		39.160099, 31.543232, 47.744926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934010, 31.551126, 47.504868>,  <39.502010, 32.128185, 47.569057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934010, 31.551126, 47.504868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560307, 31.415556, 47.460522>,  <39.336086, 31.334213, 47.433914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560307, 31.415556, 47.460522>,  <39.934010, 31.551126, 47.504868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560307, 31.415556, 47.460522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255675, -0.419943, -0.870792,
		0.248579, -0.841889, 0.478990,
		-0.934259, -0.338926, -0.110861,
		39.280029, 31.313879, 47.427265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915951, 31.281748, 46.845535>,  <39.934010, 31.551126, 47.504868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915951, 31.281748, 46.845535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532841, 31.176739, 46.892433>,  <39.302975, 31.113733, 46.920574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.532841, 31.176739, 46.892433>,  <39.915951, 31.281748, 46.845535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532841, 31.176739, 46.892433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026879, -0.487764, -0.872562,
		0.286257, -0.832567, 0.474224,
		-0.957775, -0.262524, 0.117247,
		39.245506, 31.097982, 46.927608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218357, 32.026299, 46.754597>,  <39.915951, 31.281748, 46.845535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218357, 32.026299, 46.754597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.260605, 32.417156, 46.828384>,  <40.285954, 32.651672, 46.872658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.260605, 32.417156, 46.828384>,  <40.218357, 32.026299, 46.754597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260605, 32.417156, 46.828384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701732, 0.204674, -0.682408,
		-0.704569, -0.057375, 0.707312,
		0.105615, 0.977147, 0.184469,
		40.292290, 32.710300, 46.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037102, 31.842016, 46.962811>,  <40.218357, 32.026299, 46.754597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037102, 31.842016, 46.962811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089951, 31.474663, 46.813618>,  <41.121662, 31.254251, 46.724102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089951, 31.474663, 46.813618>,  <41.037102, 31.842016, 46.962811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089951, 31.474663, 46.813618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840661, 0.095551, -0.533067,
		0.525198, 0.383983, -0.759424,
		0.132125, -0.918383, -0.372982,
		41.129589, 31.199148, 46.701721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865761, 31.916994, 46.327404>,  <41.037102, 31.842016, 46.962811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865761, 31.916994, 46.327404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776237, 31.550331, 46.459858>,  <40.722523, 31.330334, 46.539330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.776237, 31.550331, 46.459858>,  <40.865761, 31.916994, 46.327404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776237, 31.550331, 46.459858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968275, 0.170385, -0.182789,
		0.111134, -0.361540, -0.925709,
		-0.223813, -0.916656, 0.331135,
		40.709095, 31.275333, 46.559196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170734, 31.858389, 45.722351>,  <40.865761, 31.916994, 46.327404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170734, 31.858389, 45.722351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.153618, 31.460379, 45.686371>,  <41.143349, 31.221573, 45.664783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.153618, 31.460379, 45.686371>,  <41.170734, 31.858389, 45.722351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153618, 31.460379, 45.686371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930846, 0.072405, -0.358167,
		0.362899, 0.068404, -0.929314,
		-0.042787, -0.995027, -0.089949,
		41.140781, 31.161871, 45.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864365, 31.756269, 45.075493>,  <41.170734, 31.858389, 45.722351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864365, 31.756269, 45.075493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807339, 31.426321, 45.294312>,  <40.773121, 31.228352, 45.425602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807339, 31.426321, 45.294312>,  <40.864365, 31.756269, 45.075493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807339, 31.426321, 45.294312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968526, 0.002326, -0.248902,
		0.204040, -0.565315, -0.799241,
		-0.142567, -0.824872, 0.547048,
		40.764568, 31.178860, 45.458427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786053, 32.001942, 44.248482>,  <40.864365, 31.756269, 45.075493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786053, 32.001942, 44.248482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174610, 32.079536, 44.193676>,  <41.407745, 32.126091, 44.160793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.174610, 32.079536, 44.193676>,  <40.786053, 32.001942, 44.248482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174610, 32.079536, 44.193676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057827, 0.752740, 0.655773,
		0.230343, -0.629088, 0.742422,
		0.971390, 0.193985, -0.137010,
		41.466026, 32.137733, 44.152573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867603, 31.240936, 44.029095>,  <40.786053, 32.001942, 44.248482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867603, 31.240936, 44.029095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228378, 31.379936, 43.926521>,  <41.444843, 31.463335, 43.864979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228378, 31.379936, 43.926521>,  <40.867603, 31.240936, 44.029095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228378, 31.379936, 43.926521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431019, -0.687037, 0.584981,
		0.027103, -0.638141, -0.769442,
		0.901936, 0.347498, -0.256430,
		41.498959, 31.484186, 43.849590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329655, 30.642170, 43.814991>,  <40.867603, 31.240936, 44.029095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329655, 30.642170, 43.814991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528084, 30.954445, 43.967010>,  <41.647141, 31.141809, 44.058220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.528084, 30.954445, 43.967010>,  <41.329655, 30.642170, 43.814991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528084, 30.954445, 43.967010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499379, -0.614592, 0.610654,
		0.710304, -0.113142, -0.694742,
		0.496074, 0.780689, 0.380046,
		41.676907, 31.188652, 44.081024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104027, 30.567924, 43.798973>,  <41.329655, 30.642170, 43.814991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104027, 30.567924, 43.798973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.082550, 30.822414, 44.106827>,  <42.069664, 30.975109, 44.291538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.082550, 30.822414, 44.106827>,  <42.104027, 30.567924, 43.798973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082550, 30.822414, 44.106827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678974, -0.541887, 0.495330,
		0.732196, 0.549157, -0.402884,
		-0.053696, 0.636227, 0.769631,
		42.066441, 31.013283, 44.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823387, 30.821373, 44.051418>,  <42.104027, 30.567924, 43.798973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823387, 30.821373, 44.051418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.526550, 30.781000, 44.316479>,  <42.348446, 30.756777, 44.475517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.526550, 30.781000, 44.316479>,  <42.823387, 30.821373, 44.051418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526550, 30.781000, 44.316479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503931, -0.735877, 0.452260,
		0.441984, 0.669551, 0.596952,
		-0.742094, -0.100931, 0.662653,
		42.303921, 30.750721, 44.515274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054043, 30.522488, 44.711815>,  <42.823387, 30.821373, 44.051418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054043, 30.522488, 44.711815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.658730, 30.463459, 44.727386>,  <42.421539, 30.428041, 44.736729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.658730, 30.463459, 44.727386>,  <43.054043, 30.522488, 44.711815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658730, 30.463459, 44.727386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149877, -0.890301, 0.430001,
		-0.028795, 0.430798, 0.901989,
		-0.988285, -0.147569, 0.038931,
		42.362244, 30.419188, 44.739067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532413, 31.004128, 44.818661>,  <43.054043, 30.522488, 44.711815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532413, 31.004128, 44.818661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.501736, 30.919691, 44.428879>,  <43.483330, 30.869030, 44.195011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.501736, 30.919691, 44.428879>,  <43.532413, 31.004128, 44.818661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501736, 30.919691, 44.428879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278560, 0.933878, -0.224224,
		0.957352, -0.288640, -0.012821,
		-0.076693, -0.211090, -0.974453,
		43.478729, 30.856363, 44.136543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814289, 31.349535, 44.698799>,  <43.532413, 31.004128, 44.818661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814289, 31.349535, 44.698799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102818, 31.626385, 44.709122>,  <43.275932, 31.792494, 44.715317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102818, 31.626385, 44.709122>,  <42.814289, 31.349535, 44.698799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102818, 31.626385, 44.709122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484992, 0.531348, -0.694587,
		-0.494451, 0.488504, 0.718945,
		0.721319, 0.692122, 0.025805,
		43.319214, 31.834021, 44.716862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540386, 32.088715, 44.783337>,  <42.814289, 31.349535, 44.698799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540386, 32.088715, 44.783337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.887878, 32.092873, 44.585266>,  <43.096375, 32.095367, 44.466423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.887878, 32.092873, 44.585266>,  <42.540386, 32.088715, 44.783337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887878, 32.092873, 44.585266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431604, 0.506303, -0.746575,
		0.242952, 0.862293, 0.444325,
		0.868730, 0.010391, -0.495177,
		43.148499, 32.095989, 44.436714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860474, 32.826050, 44.658470>,  <42.540386, 32.088715, 44.783337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860474, 32.826050, 44.658470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982136, 32.561649, 44.384079>,  <43.055134, 32.403008, 44.219444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.982136, 32.561649, 44.384079>,  <42.860474, 32.826050, 44.658470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982136, 32.561649, 44.384079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546113, 0.469027, -0.694099,
		0.780543, 0.585735, -0.218326,
		0.304158, -0.661005, -0.685974,
		43.073383, 32.363346, 44.178288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848343, 33.213329, 43.982086>,  <42.860474, 32.826050, 44.658470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848343, 33.213329, 43.982086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.819263, 32.839748, 43.842113>,  <42.801815, 32.615601, 43.758129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.819263, 32.839748, 43.842113>,  <42.848343, 33.213329, 43.982086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819263, 32.839748, 43.842113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395231, 0.349113, -0.849655,
		0.915700, 0.076532, -0.394507,
		-0.072702, -0.933950, -0.349931,
		42.797451, 32.559563, 43.737133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216995, 33.260189, 43.377251>,  <42.848343, 33.213329, 43.982086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216995, 33.260189, 43.377251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.939461, 32.972134, 43.376453>,  <42.772942, 32.799301, 43.375973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.939461, 32.972134, 43.376453>,  <43.216995, 33.260189, 43.377251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939461, 32.972134, 43.376453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556962, 0.538373, -0.632414,
		0.456497, -0.437678, -0.774628,
		-0.693832, -0.720134, -0.001996,
		42.731312, 32.756092, 43.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843014, 33.339947, 42.714565>,  <43.216995, 33.260189, 43.377251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843014, 33.339947, 42.714565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599648, 33.096176, 42.917908>,  <42.453629, 32.949913, 43.039913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599648, 33.096176, 42.917908>,  <42.843014, 33.339947, 42.714565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599648, 33.096176, 42.917908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755684, 0.249213, -0.605669,
		0.242381, -0.752699, -0.612124,
		-0.608436, -0.609375, 0.508398,
		42.417122, 32.913349, 43.070415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075081, 34.065128, 42.389904>,  <42.843014, 33.339947, 42.714565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075081, 34.065128, 42.389904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349400, 34.356098, 42.399143>,  <43.513992, 34.530678, 42.404686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349400, 34.356098, 42.399143>,  <43.075081, 34.065128, 42.389904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349400, 34.356098, 42.399143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224548, 0.241678, -0.944018,
		-0.692282, 0.642222, 0.329084,
		0.685801, 0.727422, 0.023100,
		43.555141, 34.574326, 42.406075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528561, 33.684654, 41.869404>,  <43.075081, 34.065128, 42.389904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528561, 33.684654, 41.869404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.240887, 33.620934, 41.598881>,  <43.068283, 33.582703, 41.436565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.240887, 33.620934, 41.598881>,  <43.528561, 33.684654, 41.869404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240887, 33.620934, 41.598881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690569, -0.056376, -0.721066,
		0.076740, -0.985619, 0.150554,
		-0.719184, -0.159303, -0.676312,
		43.025131, 33.573143, 41.395988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627720, 33.080166, 41.481842>,  <43.528561, 33.684654, 41.869404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627720, 33.080166, 41.481842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433159, 33.355560, 41.266655>,  <43.316422, 33.520798, 41.137543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.433159, 33.355560, 41.266655>,  <43.627720, 33.080166, 41.481842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433159, 33.355560, 41.266655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663584, -0.109453, -0.740052,
		-0.568395, -0.716946, -0.403628,
		-0.486399, 0.688483, -0.537967,
		43.287239, 33.562103, 41.105267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315254, 32.790783, 40.817795>,  <43.627720, 33.080166, 41.481842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315254, 32.790783, 40.817795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404396, 33.179924, 40.792805>,  <43.457882, 33.413406, 40.777813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.404396, 33.179924, 40.792805>,  <43.315254, 32.790783, 40.817795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404396, 33.179924, 40.792805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570860, -0.182177, -0.800581,
		-0.790226, 0.142747, -0.595959,
		0.222851, 0.972849, -0.062473,
		43.471252, 33.471779, 40.774063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163116, 32.977787, 40.117588>,  <43.315254, 32.790783, 40.817795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163116, 32.977787, 40.117588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.462437, 33.182655, 40.286224>,  <43.642029, 33.305576, 40.387405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.462437, 33.182655, 40.286224>,  <43.163116, 32.977787, 40.117588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462437, 33.182655, 40.286224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576353, -0.187303, -0.795446,
		-0.328435, 0.838215, -0.435346,
		0.748296, 0.512166, 0.421591,
		43.686924, 33.336304, 40.412701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539032, 33.209518, 39.494457>,  <43.163116, 32.977787, 40.117588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539032, 33.209518, 39.494457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797722, 33.258286, 39.795624>,  <43.952938, 33.287544, 39.976322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797722, 33.258286, 39.795624>,  <43.539032, 33.209518, 39.494457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797722, 33.258286, 39.795624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758692, -0.001502, -0.651448,
		-0.078292, 0.992539, -0.093468,
		0.646728, 0.121917, 0.752914,
		43.991741, 33.294861, 40.021500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910397, 33.923923, 39.518631>,  <43.539032, 33.209518, 39.494457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910397, 33.923923, 39.518631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119663, 33.607765, 39.646107>,  <44.245224, 33.418068, 39.722591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.119663, 33.607765, 39.646107>,  <43.910397, 33.923923, 39.518631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119663, 33.607765, 39.646107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673972, 0.154858, -0.722344,
		0.521589, 0.592694, 0.613725,
		0.523170, -0.790400, 0.318687,
		44.276615, 33.370644, 39.741714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500259, 34.106934, 39.028324>,  <43.910397, 33.923923, 39.518631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500259, 34.106934, 39.028324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362164, 34.353588, 38.745319>,  <44.279305, 34.501579, 38.575516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.362164, 34.353588, 38.745319>,  <44.500259, 34.106934, 39.028324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362164, 34.353588, 38.745319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785503, 0.602408, 0.141733,
		0.513609, -0.506821, -0.692343,
		-0.345240, 0.616633, -0.707512,
		44.258591, 34.538578, 38.533066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989445, 34.261532, 38.525188>,  <44.500259, 34.106934, 39.028324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989445, 34.261532, 38.525188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726650, 34.558765, 38.576084>,  <44.568974, 34.737106, 38.606621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.726650, 34.558765, 38.576084>,  <44.989445, 34.261532, 38.525188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726650, 34.558765, 38.576084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745234, 0.614593, 0.258654,
		0.113999, 0.264758, -0.957553,
		-0.656986, 0.743087, 0.127244,
		44.529556, 34.781693, 38.614258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014500, 34.813164, 38.025486>,  <44.989445, 34.261532, 38.525188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014500, 34.813164, 38.025486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900795, 34.932549, 38.389927>,  <44.832573, 35.004177, 38.608593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900795, 34.932549, 38.389927>,  <45.014500, 34.813164, 38.025486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900795, 34.932549, 38.389927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793813, 0.606177, 0.049097,
		-0.537639, 0.737205, -0.409236,
		-0.284264, 0.298460, 0.911107,
		44.815517, 35.022087, 38.663258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661495, 34.705879, 38.111801>,  <45.014500, 34.813164, 38.025486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661495, 34.705879, 38.111801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.047314, 34.809502, 38.091663>,  <46.278805, 34.871674, 38.079582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.047314, 34.809502, 38.091663>,  <45.661495, 34.705879, 38.111801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047314, 34.809502, 38.091663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035758, -0.317300, -0.947651,
		-0.261464, 0.912257, -0.315315,
		0.964551, 0.259052, -0.050342,
		46.336678, 34.887218, 38.076561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846573, 35.150200, 37.453930>,  <45.661495, 34.705879, 38.111801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846573, 35.150200, 37.453930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.169769, 34.965038, 37.599731>,  <46.363689, 34.853939, 37.687214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.169769, 34.965038, 37.599731>,  <45.846573, 35.150200, 37.453930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169769, 34.965038, 37.599731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202786, -0.362368, -0.909707,
		0.553195, 0.808954, -0.198919,
		0.807993, -0.462908, 0.364505,
		46.412167, 34.826164, 37.709084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594765, 35.364513, 37.157387>,  <45.846573, 35.150200, 37.453930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594765, 35.364513, 37.157387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.591702, 34.976814, 37.255779>,  <46.589863, 34.744194, 37.314816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.591702, 34.976814, 37.255779>,  <46.594765, 35.364513, 37.157387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591702, 34.976814, 37.255779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166742, -0.243778, -0.955389,
		0.985971, 0.033697, 0.163482,
		-0.007659, -0.969245, 0.245977,
		46.589405, 34.686039, 37.329571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283203, 34.860279, 37.175568>,  <46.594765, 35.364513, 37.157387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283203, 34.860279, 37.175568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.915783, 34.750431, 37.061829>,  <46.695332, 34.684525, 36.993584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.915783, 34.750431, 37.061829>,  <47.283203, 34.860279, 37.175568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915783, 34.750431, 37.061829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323987, -0.110853, -0.939544,
		0.226496, -0.955142, 0.190797,
		-0.918549, -0.274619, -0.284346,
		46.640217, 34.668045, 36.976524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270039, 34.256889, 36.784958>,  <47.283203, 34.860279, 37.175568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270039, 34.256889, 36.784958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.948856, 34.462521, 36.664299>,  <46.756145, 34.585899, 36.591904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.948856, 34.462521, 36.664299>,  <47.270039, 34.256889, 36.784958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948856, 34.462521, 36.664299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381558, 0.054537, -0.922735,
		-0.457905, -0.856010, -0.239940,
		-0.802955, 0.514075, -0.301644,
		46.707970, 34.616745, 36.573807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116547, 33.925632, 36.130638>,  <47.270039, 34.256889, 36.784958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116547, 33.925632, 36.130638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.906155, 34.265347, 36.112514>,  <46.779919, 34.469177, 36.101639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.906155, 34.265347, 36.112514>,  <47.116547, 33.925632, 36.130638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.906155, 34.265347, 36.112514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410874, 0.207098, -0.887859,
		-0.744664, -0.485614, -0.457880,
		-0.525983, 0.849288, -0.045308,
		46.748360, 34.520134, 36.098923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797184, 34.051754, 35.440777>,  <47.116547, 33.925632, 36.130638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797184, 34.051754, 35.440777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.940826, 34.355343, 35.658035>,  <47.027012, 34.537495, 35.788391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.940826, 34.355343, 35.658035>,  <46.797184, 34.051754, 35.440777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940826, 34.355343, 35.658035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576583, 0.277207, -0.768575,
		-0.733888, 0.589172, -0.338060,
		0.359111, 0.758968, 0.543146,
		47.048561, 34.583035, 35.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242523, 34.267662, 34.986126>,  <46.797184, 34.051754, 35.440777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242523, 34.267662, 34.986126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252590, 34.543308, 35.275810>,  <47.258629, 34.708694, 35.449623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252590, 34.543308, 35.275810>,  <47.242523, 34.267662, 34.986126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252590, 34.543308, 35.275810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610899, 0.562838, -0.556790,
		-0.791308, 0.456436, -0.406815,
		0.025168, 0.689115, 0.724215,
		47.260139, 34.750042, 35.493076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.801994, 34.551224, 34.720287>,  <47.242523, 34.267662, 34.986126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.801994, 34.551224, 34.720287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.701881, 34.792072, 35.023552>,  <47.641811, 34.936581, 35.205509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.701881, 34.792072, 35.023552>,  <47.801994, 34.551224, 34.720287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.701881, 34.792072, 35.023552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754079, 0.612376, -0.237404,
		-0.607225, 0.512294, -0.607315,
		-0.250284, 0.602121, 0.758160,
		47.626797, 34.972710, 35.250999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.311478, 33.128963, 57.103165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.627213, 33.191299, 57.340706>,  <31.816654, 33.228703, 57.483231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.627213, 33.191299, 57.340706>,  <31.311478, 33.128963, 57.103165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627213, 33.191299, 57.340706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600961, 0.001849, -0.799276,
		-0.125657, 0.987781, -0.092194,
		0.789339, 0.155839, 0.593850,
		31.864014, 33.238052, 57.518860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644880, 33.678047, 56.831944>,  <31.311478, 33.128963, 57.103165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644880, 33.678047, 56.831944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.925730, 33.505539, 57.058578>,  <32.094238, 33.402035, 57.194561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.925730, 33.505539, 57.058578>,  <31.644880, 33.678047, 56.831944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925730, 33.505539, 57.058578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647577, 0.055881, -0.759949,
		0.296085, 0.900488, 0.318519,
		0.702124, -0.431275, 0.566589,
		32.136368, 33.376156, 57.228554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295715, 34.066738, 56.673302>,  <31.644880, 33.678047, 56.831944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295715, 34.066738, 56.673302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400196, 33.713871, 56.830044>,  <32.462883, 33.502151, 56.924088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400196, 33.713871, 56.830044>,  <32.295715, 34.066738, 56.673302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400196, 33.713871, 56.830044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776345, -0.049256, -0.628380,
		0.573639, 0.468348, 0.672003,
		0.261200, -0.882170, 0.391855,
		32.478558, 33.449219, 56.947601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995556, 34.090706, 56.815212>,  <32.295715, 34.066738, 56.673302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995556, 34.090706, 56.815212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.891991, 33.705845, 56.781200>,  <32.829849, 33.474930, 56.760792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.891991, 33.705845, 56.781200>,  <32.995556, 34.090706, 56.815212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891991, 33.705845, 56.781200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751399, -0.145321, -0.643647,
		0.606928, -0.230542, 0.760584,
		-0.258916, -0.962150, -0.085029,
		32.814316, 33.417198, 56.755692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586472, 33.771004, 56.652641>,  <32.995556, 34.090706, 56.815212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586472, 33.771004, 56.652641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327869, 33.483730, 56.549690>,  <33.172707, 33.311367, 56.487919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.327869, 33.483730, 56.549690>,  <33.586472, 33.771004, 56.652641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327869, 33.483730, 56.549690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488815, -0.130929, -0.862507,
		0.585736, -0.683429, 0.435704,
		-0.646509, -0.718180, -0.257380,
		33.133915, 33.268276, 56.472477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971558, 33.242252, 56.369850>,  <33.586472, 33.771004, 56.652641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971558, 33.242252, 56.369850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607670, 33.164482, 56.223091>,  <33.389339, 33.117821, 56.135036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.607670, 33.164482, 56.223091>,  <33.971558, 33.242252, 56.369850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607670, 33.164482, 56.223091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413936, -0.354944, -0.838256,
		0.032753, -0.914446, 0.403379,
		-0.909717, -0.194429, -0.366897,
		33.334755, 33.106155, 56.113022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086662, 32.620762, 56.034302>,  <33.971558, 33.242252, 56.369850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086662, 32.620762, 56.034302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754478, 32.778839, 55.877254>,  <33.555168, 32.873688, 55.783028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.754478, 32.778839, 55.877254>,  <34.086662, 32.620762, 56.034302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754478, 32.778839, 55.877254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269212, -0.332316, -0.903931,
		-0.487704, -0.856380, 0.169584,
		-0.830464, 0.395196, -0.392620,
		33.505341, 32.897396, 55.759468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988495, 32.164413, 55.347679>,  <34.086662, 32.620762, 56.034302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988495, 32.164413, 55.347679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.711239, 32.447670, 55.293877>,  <33.544884, 32.617622, 55.261597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.711239, 32.447670, 55.293877>,  <33.988495, 32.164413, 55.347679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711239, 32.447670, 55.293877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128222, -0.062490, -0.989775,
		-0.709306, -0.703300, -0.047485,
		-0.693141, 0.708142, -0.134503,
		33.503296, 32.660114, 55.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586243, 31.910925, 54.797028>,  <33.988495, 32.164413, 55.347679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586243, 31.910925, 54.797028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513626, 32.304249, 54.792152>,  <33.470055, 32.540241, 54.789227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513626, 32.304249, 54.792152>,  <33.586243, 31.910925, 54.797028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513626, 32.304249, 54.792152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205173, 0.025755, -0.978387,
		-0.961741, -0.180119, -0.206424,
		-0.181542, 0.983307, -0.012186,
		33.459164, 32.599239, 54.788498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133923, 32.035580, 54.348907>,  <33.586243, 31.910925, 54.797028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133923, 32.035580, 54.348907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316723, 32.390041, 54.379574>,  <33.426403, 32.602718, 54.397972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316723, 32.390041, 54.379574>,  <33.133923, 32.035580, 54.348907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316723, 32.390041, 54.379574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114855, 0.026677, -0.993024,
		-0.882022, 0.462613, -0.089588,
		0.456996, 0.886159, 0.076663,
		33.453823, 32.655888, 54.402573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777306, 32.422455, 53.908901>,  <33.133923, 32.035580, 54.348907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777306, 32.422455, 53.908901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135632, 32.596581, 53.944706>,  <33.350628, 32.701054, 53.966190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.135632, 32.596581, 53.944706>,  <32.777306, 32.422455, 53.908901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135632, 32.596581, 53.944706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177800, -0.166448, -0.969888,
		-0.407302, 0.884760, -0.226505,
		0.895819, 0.435310, 0.089516,
		33.404377, 32.727173, 53.971561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848839, 32.901882, 53.397018>,  <32.777306, 32.422455, 53.908901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848839, 32.901882, 53.397018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.230476, 32.825901, 53.489647>,  <33.459457, 32.780312, 53.545223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.230476, 32.825901, 53.489647>,  <32.848839, 32.901882, 53.397018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230476, 32.825901, 53.489647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226687, -0.047373, -0.972815,
		0.195763, 0.980649, -0.002138,
		0.954091, -0.189957, 0.231574,
		33.516705, 32.768913, 53.559120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139233, 33.240589, 52.949924>,  <32.848839, 32.901882, 53.397018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139233, 33.240589, 52.949924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433128, 33.012508, 53.096916>,  <33.609467, 32.875660, 53.185112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.433128, 33.012508, 53.096916>,  <33.139233, 33.240589, 52.949924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433128, 33.012508, 53.096916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365433, -0.123696, -0.922582,
		0.571509, 0.812142, 0.117486,
		0.734735, -0.570198, 0.367477,
		33.653549, 32.841450, 53.207161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807175, 33.496220, 52.645615>,  <33.139233, 33.240589, 52.949924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807175, 33.496220, 52.645615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.869545, 33.123859, 52.777748>,  <33.906967, 32.900444, 52.857029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.869545, 33.123859, 52.777748>,  <33.807175, 33.496220, 52.645615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869545, 33.123859, 52.777748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496596, -0.215211, -0.840878,
		0.853862, 0.295153, 0.428723,
		0.155922, -0.930897, 0.330333,
		33.916321, 32.844589, 52.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511150, 33.317001, 52.408314>,  <33.807175, 33.496220, 52.645615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511150, 33.317001, 52.408314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.304390, 32.982796, 52.482845>,  <34.180332, 32.782272, 52.527565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.304390, 32.982796, 52.482845>,  <34.511150, 33.317001, 52.408314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304390, 32.982796, 52.482845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426647, -0.440151, -0.790088,
		0.742147, -0.328901, 0.583987,
		-0.516903, -0.835518, 0.186332,
		34.149319, 32.732140, 52.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984982, 32.731461, 52.300552>,  <34.511150, 33.317001, 52.408314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984982, 32.731461, 52.300552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.621201, 32.574718, 52.244915>,  <34.402931, 32.480675, 52.211533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.621201, 32.574718, 52.244915>,  <34.984982, 32.731461, 52.300552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621201, 32.574718, 52.244915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280777, -0.332013, -0.900517,
		0.306692, -0.858031, 0.411974,
		-0.909453, -0.391854, -0.139090,
		34.348366, 32.457161, 52.203186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178761, 32.150822, 51.938400>,  <34.984982, 32.731461, 52.300552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178761, 32.150822, 51.938400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.787552, 32.200974, 51.871769>,  <34.552826, 32.231064, 51.831791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.787552, 32.200974, 51.871769>,  <35.178761, 32.150822, 51.938400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787552, 32.200974, 51.871769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137069, -0.215379, -0.966863,
		-0.157099, -0.968449, 0.193461,
		-0.978024, 0.125375, -0.166580,
		34.494144, 32.238586, 51.821796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999863, 31.573801, 51.580257>,  <35.178761, 32.150822, 51.938400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999863, 31.573801, 51.580257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.671474, 31.792112, 51.513161>,  <34.474442, 31.923100, 51.472900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.671474, 31.792112, 51.513161>,  <34.999863, 31.573801, 51.580257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671474, 31.792112, 51.513161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071835, -0.390180, -0.917932,
		-0.566440, -0.741541, 0.359531,
		-0.820966, 0.545780, -0.167745,
		34.425186, 31.955847, 51.462837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354618, 31.159744, 51.588428>,  <34.999863, 31.573801, 51.580257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354618, 31.159744, 51.588428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.306080, 31.499306, 51.382656>,  <34.276955, 31.703043, 51.259193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.306080, 31.499306, 51.382656>,  <34.354618, 31.159744, 51.588428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306080, 31.499306, 51.382656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088733, -0.525462, -0.846177,
		-0.988636, -0.057036, 0.139090,
		-0.121349, 0.848903, -0.514430,
		34.269676, 31.753977, 51.228329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820114, 31.028986, 51.158066>,  <34.354618, 31.159744, 51.588428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820114, 31.028986, 51.158066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.992466, 31.329615, 50.958271>,  <34.095879, 31.509991, 50.838394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.992466, 31.329615, 50.958271>,  <33.820114, 31.028986, 51.158066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992466, 31.329615, 50.958271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262686, -0.425068, -0.866206,
		-0.863328, 0.504441, 0.014273,
		0.430883, 0.751569, -0.499483,
		34.121731, 31.555086, 50.808426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290688, 31.297508, 50.733524>,  <33.820114, 31.028986, 51.158066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290688, 31.297508, 50.733524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.646587, 31.391460, 50.576973>,  <33.860126, 31.447832, 50.483040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.646587, 31.391460, 50.576973>,  <33.290688, 31.297508, 50.733524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646587, 31.391460, 50.576973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257672, -0.449302, -0.855414,
		-0.376768, 0.861951, -0.339244,
		0.889748, 0.234879, -0.391383,
		33.913513, 31.461924, 50.459557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125969, 31.594358, 50.060474>,  <33.290688, 31.297508, 50.733524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125969, 31.594358, 50.060474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.512360, 31.492304, 50.043537>,  <33.744194, 31.431070, 50.033375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.512360, 31.492304, 50.043537>,  <33.125969, 31.594358, 50.060474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512360, 31.492304, 50.043537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166636, -0.488790, -0.856339,
		0.197788, 0.834260, -0.514676,
		0.965977, -0.255137, -0.042342,
		33.802155, 31.415762, 50.030834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437584, 31.681786, 49.841030>,  <33.125969, 31.594358, 50.060474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437584, 31.681786, 49.841030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.122929, 31.569658, 49.620987>,  <31.934135, 31.502382, 49.488960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.122929, 31.569658, 49.620987>,  <32.437584, 31.681786, 49.841030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122929, 31.569658, 49.620987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394240, -0.457652, 0.796950,
		-0.475160, 0.843787, 0.249493,
		-0.786637, -0.280319, -0.550112,
		31.886938, 31.485563, 49.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806341, 31.925856, 50.136646>,  <32.437584, 31.681786, 49.841030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806341, 31.925856, 50.136646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.681847, 31.624567, 49.904858>,  <31.607151, 31.443794, 49.765785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.681847, 31.624567, 49.904858>,  <31.806341, 31.925856, 50.136646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681847, 31.624567, 49.904858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611284, -0.308201, 0.728934,
		-0.727643, 0.581092, -0.364510,
		-0.311235, -0.753223, -0.579472,
		31.588476, 31.398600, 49.731014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154894, 31.932877, 50.154942>,  <31.806341, 31.925856, 50.136646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154894, 31.932877, 50.154942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.249071, 31.556576, 50.057331>,  <31.305576, 31.330795, 49.998764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.249071, 31.556576, 50.057331>,  <31.154894, 31.932877, 50.154942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249071, 31.556576, 50.057331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691551, -0.338585, 0.638057,
		-0.682880, 0.018535, -0.730296,
		0.235441, -0.940753, -0.244031,
		31.319704, 31.274349, 49.984123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485477, 31.535278, 50.059612>,  <31.154894, 31.932877, 50.154942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485477, 31.535278, 50.059612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.756962, 31.250647, 50.132286>,  <30.919851, 31.079868, 50.175892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.756962, 31.250647, 50.132286>,  <30.485477, 31.535278, 50.059612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756962, 31.250647, 50.132286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600047, -0.394666, 0.695832,
		-0.423441, -0.581280, -0.694846,
		0.678706, -0.711584, 0.181678,
		30.960575, 31.037172, 50.186790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125612, 30.898317, 50.268089>,  <30.485477, 31.535278, 50.059612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125612, 30.898317, 50.268089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.489262, 30.783445, 50.388767>,  <30.707451, 30.714523, 50.461174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.489262, 30.783445, 50.388767>,  <30.125612, 30.898317, 50.268089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489262, 30.783445, 50.388767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396944, -0.377895, 0.836440,
		-0.126198, -0.880184, -0.457547,
		0.909126, -0.287178, 0.301694,
		30.761999, 30.697292, 50.479275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907803, 30.263500, 50.561302>,  <30.125612, 30.898317, 50.268089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907803, 30.263500, 50.561302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276066, 30.346598, 50.693504>,  <30.497023, 30.396456, 50.772827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.276066, 30.346598, 50.693504>,  <29.907803, 30.263500, 50.561302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276066, 30.346598, 50.693504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252935, -0.327437, 0.910390,
		0.297346, -0.921753, -0.248912,
		0.920657, 0.207742, 0.330505,
		30.552263, 30.408920, 50.792656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026350, 29.740475, 51.081841>,  <29.907803, 30.263500, 50.561302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026350, 29.740475, 51.081841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.292686, 30.025663, 51.169777>,  <30.452488, 30.196775, 51.222538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.292686, 30.025663, 51.169777>,  <30.026350, 29.740475, 51.081841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292686, 30.025663, 51.169777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145886, -0.164555, 0.975520,
		0.731692, -0.681612, -0.005555,
		0.665840, 0.712970, 0.219841,
		30.492439, 30.239553, 51.235729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458925, 29.546934, 51.670086>,  <30.026350, 29.740475, 51.081841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458925, 29.546934, 51.670086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.489983, 29.945276, 51.651131>,  <30.508617, 30.184280, 51.639759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.489983, 29.945276, 51.651131>,  <30.458925, 29.546934, 51.670086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489983, 29.945276, 51.651131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049516, 0.051322, 0.997454,
		0.995751, -0.075101, 0.053296,
		0.077645, 0.995854, -0.047386,
		30.513277, 30.244032, 51.636913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930567, 29.788406, 52.158676>,  <30.458925, 29.546934, 51.670086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930567, 29.788406, 52.158676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.700274, 30.110954, 52.104565>,  <30.562098, 30.304483, 52.072098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.700274, 30.110954, 52.104565>,  <30.930567, 29.788406, 52.158676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700274, 30.110954, 52.104565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037997, 0.191662, 0.980725,
		0.816755, 0.559495, -0.140986,
		-0.575732, 0.806369, -0.135281,
		30.527554, 30.352865, 52.063980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230774, 30.258060, 52.592857>,  <30.930567, 29.788406, 52.158676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230774, 30.258060, 52.592857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.863241, 30.394577, 52.513588>,  <30.642721, 30.476486, 52.466026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.863241, 30.394577, 52.513588>,  <31.230774, 30.258060, 52.592857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863241, 30.394577, 52.513588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057048, 0.382008, 0.922397,
		0.390509, 0.858831, -0.331530,
		-0.918830, 0.341291, -0.198172,
		30.587593, 30.496964, 52.454136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205662, 30.933598, 52.786701>,  <31.230774, 30.258060, 52.592857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205662, 30.933598, 52.786701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828135, 30.803955, 52.812508>,  <30.601618, 30.726170, 52.827991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828135, 30.803955, 52.812508>,  <31.205662, 30.933598, 52.786701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828135, 30.803955, 52.812508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028530, 0.274408, 0.961190,
		-0.329233, 0.905347, -0.268238,
		-0.943817, -0.324108, 0.064515,
		30.544989, 30.706722, 52.831863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972130, 31.308012, 53.314480>,  <31.205662, 30.933598, 52.786701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972130, 31.308012, 53.314480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694023, 31.022404, 53.281544>,  <30.527159, 30.851040, 53.261784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694023, 31.022404, 53.281544>,  <30.972130, 31.308012, 53.314480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694023, 31.022404, 53.281544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276592, 0.160055, 0.947565,
		-0.663400, 0.681586, -0.308773,
		-0.695268, -0.714019, -0.082340,
		30.485443, 30.808199, 53.256844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311979, 31.489065, 53.316471>,  <30.972130, 31.308012, 53.314480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311979, 31.489065, 53.316471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.345684, 31.126448, 53.481918>,  <30.365906, 30.908878, 53.581188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.345684, 31.126448, 53.481918>,  <30.311979, 31.489065, 53.316471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345684, 31.126448, 53.481918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361856, 0.358920, 0.860370,
		-0.928418, -0.222165, -0.297795,
		0.084259, -0.906543, 0.413620,
		30.370962, 30.854485, 53.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714130, 31.251259, 53.434231>,  <30.311979, 31.489065, 53.316471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714130, 31.251259, 53.434231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.990713, 31.151009, 53.705250>,  <30.156662, 31.090858, 53.867863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.990713, 31.151009, 53.705250>,  <29.714130, 31.251259, 53.434231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990713, 31.151009, 53.705250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533388, 0.455433, 0.712796,
		-0.487223, -0.854265, 0.181232,
		0.691456, -0.250624, 0.677552,
		30.198151, 31.075821, 53.908516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362850, 30.971947, 54.067734>,  <29.714130, 31.251259, 53.434231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362850, 30.971947, 54.067734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.722704, 31.100563, 54.185898>,  <29.938616, 31.177732, 54.256798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.722704, 31.100563, 54.185898>,  <29.362850, 30.971947, 54.067734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722704, 31.100563, 54.185898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432942, 0.568974, 0.699163,
		0.056726, -0.756889, 0.651078,
		0.899635, 0.321540, 0.295414,
		29.992594, 31.197025, 54.274521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416363, 30.894417, 54.795177>,  <29.362850, 30.971947, 54.067734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416363, 30.894417, 54.795177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.713556, 31.156528, 54.740654>,  <29.891872, 31.313795, 54.707939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.713556, 31.156528, 54.740654>,  <29.416363, 30.894417, 54.795177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713556, 31.156528, 54.740654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360849, 0.563703, 0.742985,
		0.563703, -0.502838, 0.655280,
		-0.742985, -0.655280, 0.136313,
		29.936451, 31.353113, 54.699760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737398, 30.947458, 55.466862>,  <29.416363, 30.894417, 54.795177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737398, 30.947458, 55.466862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.829306, 31.285179, 55.273216>,  <29.884451, 31.487812, 55.157028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.829306, 31.285179, 55.273216>,  <29.737398, 30.947458, 55.466862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829306, 31.285179, 55.273216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258699, 0.532508, 0.805922,
		0.938233, -0.059936, 0.340773,
		0.229768, 0.844300, -0.484111,
		29.898235, 31.538469, 55.127983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171484, 31.302607, 55.957706>,  <29.737398, 30.947458, 55.466862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171484, 31.302607, 55.957706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.031040, 31.562998, 55.688499>,  <29.946774, 31.719233, 55.526974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.031040, 31.562998, 55.688499>,  <30.171484, 31.302607, 55.957706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031040, 31.562998, 55.688499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119954, 0.681582, 0.721842,
		0.928619, 0.334177, -0.161222,
		-0.351109, 0.650977, -0.673016,
		29.925707, 31.758291, 55.486595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.608253, 31.919586, 56.021671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267591, 32.042736, 55.852013>,  <30.063194, 32.116627, 55.750217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267591, 32.042736, 55.852013>,  <30.608253, 31.919586, 56.021671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267591, 32.042736, 55.852013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126938, 0.664008, 0.736872,
		0.508499, 0.681400, -0.526425,
		-0.851655, 0.307875, -0.424143,
		30.012094, 32.135098, 55.724770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588135, 32.615562, 56.161015>,  <30.608253, 31.919586, 56.021671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588135, 32.615562, 56.161015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216702, 32.494808, 56.074665>,  <29.993841, 32.422356, 56.022858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216702, 32.494808, 56.074665>,  <30.588135, 32.615562, 56.161015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216702, 32.494808, 56.074665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352298, 0.534105, 0.768517,
		-0.116705, 0.789683, -0.602314,
		-0.928583, -0.301884, -0.215871,
		29.938128, 32.404243, 56.009903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206018, 33.251003, 55.956608>,  <30.588135, 32.615562, 56.161015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206018, 33.251003, 55.956608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934088, 32.994740, 56.099373>,  <29.770929, 32.840981, 56.185032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934088, 32.994740, 56.099373>,  <30.206018, 33.251003, 55.956608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934088, 32.994740, 56.099373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225743, 0.645854, 0.729323,
		-0.697764, 0.415243, -0.583694,
		-0.679828, -0.640660, 0.356916,
		29.730139, 32.802540, 56.206448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798725, 33.681160, 56.264545>,  <30.206018, 33.251003, 55.956608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798725, 33.681160, 56.264545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657772, 33.333202, 56.402596>,  <29.573200, 33.124428, 56.485424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657772, 33.333202, 56.402596>,  <29.798725, 33.681160, 56.264545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657772, 33.333202, 56.402596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350009, 0.464516, 0.813461,
		-0.867941, 0.165851, -0.468157,
		-0.352380, -0.869895, 0.345123,
		29.552057, 33.072235, 56.506134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128473, 33.843861, 56.582508>,  <29.798725, 33.681160, 56.264545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128473, 33.843861, 56.582508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204052, 33.476360, 56.721191>,  <29.249399, 33.255859, 56.804401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204052, 33.476360, 56.721191>,  <29.128473, 33.843861, 56.582508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204052, 33.476360, 56.721191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344415, 0.268634, 0.899563,
		-0.919608, -0.289378, -0.265673,
		0.188945, -0.918747, 0.346704,
		29.260735, 33.200737, 56.825203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633896, 33.642338, 56.919468>,  <29.128473, 33.843861, 56.582508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633896, 33.642338, 56.919468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876160, 33.375462, 57.092918>,  <29.021517, 33.215336, 57.196987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876160, 33.375462, 57.092918>,  <28.633896, 33.642338, 56.919468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876160, 33.375462, 57.092918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433162, 0.180683, 0.883020,
		-0.667494, -0.722638, -0.179571,
		0.605658, -0.667194, 0.433624,
		29.057858, 33.175304, 57.223007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201300, 33.279224, 57.339092>,  <28.633896, 33.642338, 56.919468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201300, 33.279224, 57.339092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574694, 33.219097, 57.469330>,  <28.798731, 33.183022, 57.547470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574694, 33.219097, 57.469330>,  <28.201300, 33.279224, 57.339092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574694, 33.219097, 57.469330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335170, -0.042814, 0.941185,
		-0.127541, -0.987710, -0.090349,
		0.933486, -0.150322, 0.325590,
		28.854740, 33.174000, 57.567005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118029, 32.996498, 57.972858>,  <28.201300, 33.279224, 57.339092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118029, 32.996498, 57.972858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501020, 33.108040, 58.002438>,  <28.730816, 33.174965, 58.020187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501020, 33.108040, 58.002438>,  <28.118029, 32.996498, 57.972858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501020, 33.108040, 58.002438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113528, 0.128541, 0.985185,
		0.265222, -0.951690, 0.154734,
		0.957480, 0.278860, 0.073952,
		28.788265, 33.191696, 58.024624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476559, 32.554173, 58.458530>,  <28.118029, 32.996498, 57.972858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476559, 32.554173, 58.458530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694372, 32.889297, 58.442764>,  <28.825060, 33.090374, 58.433304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694372, 32.889297, 58.442764>,  <28.476559, 32.554173, 58.458530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694372, 32.889297, 58.442764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216014, 0.185494, 0.958608,
		0.810445, -0.513481, 0.281987,
		0.544534, 0.837812, -0.039414,
		28.857733, 33.140640, 58.430939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682495, 32.484203, 59.098804>,  <28.476559, 32.554173, 58.458530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682495, 32.484203, 59.098804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744022, 32.862682, 58.984932>,  <28.780939, 33.089771, 58.916611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744022, 32.862682, 58.984932>,  <28.682495, 32.484203, 59.098804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744022, 32.862682, 58.984932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372037, 0.322365, 0.870442,
		0.915384, -0.027980, 0.401608,
		0.153820, 0.946202, -0.284678,
		28.790169, 33.146542, 58.899529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952370, 32.801781, 59.622028>,  <28.682495, 32.484203, 59.098804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952370, 32.801781, 59.622028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822830, 33.125977, 59.426792>,  <28.745106, 33.320496, 59.309650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822830, 33.125977, 59.426792>,  <28.952370, 32.801781, 59.622028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822830, 33.125977, 59.426792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362191, 0.370384, 0.855355,
		0.874036, 0.453786, 0.173604,
		-0.323848, 0.810490, -0.488087,
		28.725676, 33.369125, 59.280365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177294, 33.204365, 60.119667>,  <28.952370, 32.801781, 59.622028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177294, 33.204365, 60.119667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920301, 33.420609, 59.902428>,  <28.766106, 33.550354, 59.772083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920301, 33.420609, 59.902428>,  <29.177294, 33.204365, 60.119667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920301, 33.420609, 59.902428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345634, 0.428102, 0.835024,
		0.683925, 0.724202, -0.088194,
		-0.642482, 0.540611, -0.543098,
		28.727556, 33.582790, 59.739498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311569, 33.988522, 60.172623>,  <29.177294, 33.204365, 60.119667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311569, 33.988522, 60.172623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928305, 33.954739, 60.063225>,  <28.698347, 33.934471, 59.997585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928305, 33.954739, 60.063225>,  <29.311569, 33.988522, 60.172623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928305, 33.954739, 60.063225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258342, 0.666575, 0.699240,
		0.123251, 0.740638, -0.660503,
		-0.958159, -0.084454, -0.273494,
		28.640858, 33.929401, 59.981178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053530, 34.688480, 60.080528>,  <29.311569, 33.988522, 60.172623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053530, 34.688480, 60.080528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702026, 34.498241, 60.096512>,  <28.491125, 34.384098, 60.106102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702026, 34.498241, 60.096512>,  <29.053530, 34.688480, 60.080528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702026, 34.498241, 60.096512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337626, 0.678628, 0.652282,
		-0.337337, 0.559708, -0.756923,
		-0.878756, -0.475596, 0.039954,
		28.438400, 34.355564, 60.108498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472445, 35.199490, 59.867847>,  <29.053530, 34.688480, 60.080528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472445, 35.199490, 59.867847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354336, 34.899647, 60.104797>,  <28.283470, 34.719742, 60.246967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354336, 34.899647, 60.104797>,  <28.472445, 35.199490, 59.867847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354336, 34.899647, 60.104797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608188, 0.625638, 0.488553,
		-0.736833, -0.216018, -0.640635,
		-0.295270, -0.749608, 0.592371,
		28.265755, 34.674763, 60.282509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734051, 35.212662, 59.890320>,  <28.472445, 35.199490, 59.867847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734051, 35.212662, 59.890320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856026, 35.025543, 60.222149>,  <27.929211, 34.913273, 60.421246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856026, 35.025543, 60.222149>,  <27.734051, 35.212662, 59.890320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856026, 35.025543, 60.222149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631288, 0.552914, 0.543840,
		-0.713084, -0.689534, -0.126708,
		0.304937, -0.467792, 0.829568,
		27.947506, 34.885204, 60.471020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233334, 35.259094, 60.341106>,  <27.734051, 35.212662, 59.890320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233334, 35.259094, 60.341106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500193, 35.155426, 60.620461>,  <27.660309, 35.093224, 60.788071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500193, 35.155426, 60.620461>,  <27.233334, 35.259094, 60.341106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500193, 35.155426, 60.620461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448746, 0.608495, 0.654493,
		-0.594591, -0.750042, 0.289653,
		0.667150, -0.259175, 0.698384,
		27.700338, 35.077675, 60.829975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884880, 35.016651, 60.916485>,  <27.233334, 35.259094, 60.341106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884880, 35.016651, 60.916485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240673, 35.141506, 61.049984>,  <27.454149, 35.216419, 61.130085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240673, 35.141506, 61.049984>,  <26.884880, 35.016651, 60.916485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240673, 35.141506, 61.049984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455937, 0.557183, 0.694024,
		0.030676, -0.769490, 0.637922,
		0.889483, 0.312142, 0.333747,
		27.507519, 35.235149, 61.150108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859201, 34.984669, 61.686462>,  <26.884880, 35.016651, 60.916485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859201, 34.984669, 61.686462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197720, 35.191620, 61.635696>,  <27.400831, 35.315788, 61.605236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197720, 35.191620, 61.635696>,  <26.859201, 34.984669, 61.686462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197720, 35.191620, 61.635696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202233, 0.532430, 0.821961,
		0.492829, -0.669960, 0.555224,
		0.846299, 0.517371, -0.126909,
		27.451609, 35.346832, 61.597622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161119, 35.042980, 62.374580>,  <26.859201, 34.984669, 61.686462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161119, 35.042980, 62.374580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323700, 35.326855, 62.144402>,  <27.421247, 35.497181, 62.006294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323700, 35.326855, 62.144402>,  <27.161119, 35.042980, 62.374580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323700, 35.326855, 62.144402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196478, 0.682976, 0.703520,
		0.892297, -0.172883, 0.417033,
		0.406450, 0.709687, -0.575450,
		27.445635, 35.539761, 61.971767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559628, 35.431969, 62.878052>,  <27.161119, 35.042980, 62.374580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559628, 35.431969, 62.878052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531504, 35.664165, 62.553562>,  <27.514629, 35.803486, 62.358868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531504, 35.664165, 62.553562>,  <27.559628, 35.431969, 62.878052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531504, 35.664165, 62.553562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191425, 0.790268, 0.582093,
		0.978986, 0.196215, 0.055558,
		-0.070309, 0.580496, -0.811222,
		27.510410, 35.838314, 62.310196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040779, 36.177048, 62.994209>,  <27.559628, 35.431969, 62.878052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040779, 36.177048, 62.994209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729172, 36.203426, 62.744801>,  <27.542208, 36.219254, 62.595154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729172, 36.203426, 62.744801>,  <28.040779, 36.177048, 62.994209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729172, 36.203426, 62.744801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497545, 0.540137, 0.678750,
		0.381550, 0.838989, -0.387964,
		-0.779018, 0.065948, -0.623524,
		27.495466, 36.223209, 62.557743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257792, 36.536877, 63.669106>,  <28.040779, 36.177048, 62.994209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257792, 36.536877, 63.669106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208815, 36.470192, 64.060455>,  <28.179428, 36.430183, 64.295265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208815, 36.470192, 64.060455>,  <28.257792, 36.536877, 63.669106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208815, 36.470192, 64.060455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022773, 0.986004, 0.165159,
		-0.992215, -0.002059, -0.124524,
		-0.122441, -0.166709, 0.978375,
		28.172083, 36.420181, 64.353966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257151, 37.144356, 64.121315>,  <28.257792, 36.536877, 63.669106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257151, 37.144356, 64.121315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633181, 37.273079, 64.166389>,  <28.858799, 37.350315, 64.193436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633181, 37.273079, 64.166389>,  <28.257151, 37.144356, 64.121315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633181, 37.273079, 64.166389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244968, -0.407555, -0.879710,
		-0.237176, 0.854597, -0.461966,
		0.940074, 0.321813, 0.112686,
		28.915203, 37.369621, 64.200195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533625, 37.465130, 63.481850>,  <28.257151, 37.144356, 64.121315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533625, 37.465130, 63.481850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854805, 37.363258, 63.697407>,  <29.047514, 37.302135, 63.826740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854805, 37.363258, 63.697407>,  <28.533625, 37.465130, 63.481850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854805, 37.363258, 63.697407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373241, -0.490064, -0.787736,
		0.464714, 0.833651, -0.298440,
		0.802952, -0.254682, 0.538893,
		29.095690, 37.286854, 63.859074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046083, 37.405231, 62.975601>,  <28.533625, 37.465130, 63.481850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046083, 37.405231, 62.975601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242119, 37.239056, 63.282124>,  <29.359739, 37.139351, 63.466038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242119, 37.239056, 63.282124>,  <29.046083, 37.405231, 62.975601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242119, 37.239056, 63.282124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533701, -0.552062, -0.640617,
		0.689187, 0.722936, -0.048837,
		0.490087, -0.415440, 0.766306,
		29.389145, 37.114422, 63.512016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812826, 37.430573, 62.805725>,  <29.046083, 37.405231, 62.975601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812826, 37.430573, 62.805725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739666, 37.143944, 63.074970>,  <29.695770, 36.971966, 63.236519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739666, 37.143944, 63.074970>,  <29.812826, 37.430573, 62.805725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739666, 37.143944, 63.074970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512414, -0.653791, -0.556766,
		0.839035, 0.243080, 0.486757,
		-0.182898, -0.716568, 0.673111,
		29.684797, 36.928974, 63.276905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401228, 37.124001, 62.982479>,  <29.812826, 37.430573, 62.805725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401228, 37.124001, 62.982479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137341, 36.832371, 63.055382>,  <29.979008, 36.657391, 63.099121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137341, 36.832371, 63.055382>,  <30.401228, 37.124001, 62.982479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137341, 36.832371, 63.055382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412166, -0.553811, -0.723472,
		0.628401, -0.402170, 0.665861,
		-0.659720, -0.729076, 0.182255,
		29.939425, 36.613647, 63.110058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772507, 36.447933, 63.094559>,  <30.401228, 37.124001, 62.982479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772507, 36.447933, 63.094559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398703, 36.338242, 63.003788>,  <30.174421, 36.272427, 62.949326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398703, 36.338242, 63.003788>,  <30.772507, 36.447933, 63.094559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398703, 36.338242, 63.003788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352456, -0.623924, -0.697491,
		0.049686, -0.731792, 0.679714,
		-0.934509, -0.274225, -0.226925,
		30.118351, 36.255974, 62.935711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890066, 35.757881, 62.940681>,  <30.772507, 36.447933, 63.094559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890066, 35.757881, 62.940681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537104, 35.853848, 62.778793>,  <30.325327, 35.911427, 62.681660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537104, 35.853848, 62.778793>,  <30.890066, 35.757881, 62.940681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537104, 35.853848, 62.778793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160507, -0.655102, -0.738295,
		-0.442264, -0.716436, 0.539557,
		-0.882406, 0.239919, -0.404721,
		30.272383, 35.925823, 62.657375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458225, 35.150246, 62.918365>,  <30.890066, 35.757881, 62.940681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458225, 35.150246, 62.918365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330309, 35.413944, 62.646152>,  <30.253559, 35.572163, 62.482826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330309, 35.413944, 62.646152>,  <30.458225, 35.150246, 62.918365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330309, 35.413944, 62.646152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193953, -0.657493, -0.728069,
		-0.927424, -0.364823, 0.082399,
		-0.319793, 0.659247, -0.680533,
		30.234371, 35.611717, 62.441994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152645, 34.763283, 62.413708>,  <30.458225, 35.150246, 62.918365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152645, 34.763283, 62.413708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209454, 35.103680, 62.211460>,  <30.243540, 35.307919, 62.090111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209454, 35.103680, 62.211460>,  <30.152645, 34.763283, 62.413708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209454, 35.103680, 62.211460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319312, -0.522876, -0.790342,
		-0.936947, -0.049204, -0.345991,
		0.142022, 0.850988, -0.505618,
		30.252060, 35.358974, 62.059776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866924, 34.609482, 61.815689>,  <30.152645, 34.763283, 62.413708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866924, 34.609482, 61.815689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081760, 34.934364, 61.724602>,  <30.210663, 35.129292, 61.669949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081760, 34.934364, 61.724602>,  <29.866924, 34.609482, 61.815689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081760, 34.934364, 61.724602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261396, -0.416934, -0.870539,
		-0.802001, 0.408033, -0.436238,
		0.537092, 0.812204, -0.227723,
		30.242887, 35.178024, 61.656284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793001, 34.652081, 61.178185>,  <29.866924, 34.609482, 61.815689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793001, 34.652081, 61.178185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104387, 34.896336, 61.236298>,  <30.291220, 35.042889, 61.271168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104387, 34.896336, 61.236298>,  <29.793001, 34.652081, 61.178185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104387, 34.896336, 61.236298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343100, -0.220140, -0.913138,
		-0.525617, 0.760694, -0.380882,
		0.778466, 0.610642, 0.145285,
		30.337927, 35.079529, 61.279884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680677, 35.217007, 60.710720>,  <29.793001, 34.652081, 61.178185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680677, 35.217007, 60.710720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072487, 35.165970, 60.773014>,  <30.307573, 35.135345, 60.810390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072487, 35.165970, 60.773014>,  <29.680677, 35.217007, 60.710720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072487, 35.165970, 60.773014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128247, -0.200848, -0.971191,
		0.155200, 0.971277, -0.180371,
		0.979523, -0.127597, 0.155735,
		30.366344, 35.127689, 60.819733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967588, 35.350739, 60.036121>,  <29.680677, 35.217007, 60.710720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967588, 35.350739, 60.036121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268059, 35.180061, 60.237583>,  <30.448341, 35.077656, 60.358459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268059, 35.180061, 60.237583>,  <29.967588, 35.350739, 60.036121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268059, 35.180061, 60.237583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416345, -0.285826, -0.863111,
		0.512244, 0.858040, -0.037051,
		0.751174, -0.426698, 0.503654,
		30.493410, 35.052052, 60.388680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630657, 35.651901, 59.764545>,  <29.967588, 35.350739, 60.036121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630657, 35.651901, 59.764545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732725, 35.305450, 59.936462>,  <30.793966, 35.097580, 60.039612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732725, 35.305450, 59.936462>,  <30.630657, 35.651901, 59.764545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732725, 35.305450, 59.936462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323635, -0.342356, -0.882073,
		0.911124, 0.364175, 0.192948,
		0.255172, -0.866123, 0.429789,
		30.809277, 35.045612, 60.065399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314419, 35.413910, 59.554924>,  <30.630657, 35.651901, 59.764545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314419, 35.413910, 59.554924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138926, 35.074329, 59.672764>,  <31.033630, 34.870579, 59.743465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138926, 35.074329, 59.672764>,  <31.314419, 35.413910, 59.554924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138926, 35.074329, 59.672764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360349, -0.466531, -0.807773,
		0.823203, -0.248238, 0.510602,
		-0.438732, -0.848956, 0.294597,
		31.007305, 34.819641, 59.761143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835417, 34.870506, 59.449875>,  <31.314419, 35.413910, 59.554924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835417, 34.870506, 59.449875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482019, 34.683743, 59.464996>,  <31.269981, 34.571682, 59.474072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482019, 34.683743, 59.464996>,  <31.835417, 34.870506, 59.449875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482019, 34.683743, 59.464996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262518, -0.560343, -0.785557,
		0.387972, -0.684111, 0.617633,
		-0.883494, -0.466914, 0.037806,
		31.216970, 34.543667, 59.476337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004688, 34.219429, 59.564026>,  <31.835417, 34.870506, 59.449875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004688, 34.219429, 59.564026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641788, 34.212555, 59.395927>,  <31.424049, 34.208431, 59.295067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641788, 34.212555, 59.395927>,  <32.004688, 34.219429, 59.564026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641788, 34.212555, 59.395927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317650, -0.682904, -0.657830,
		-0.275681, -0.730306, 0.625023,
		-0.907248, -0.017187, -0.420245,
		31.369614, 34.207397, 59.269855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948359, 33.536865, 59.518494>,  <32.004688, 34.219429, 59.564026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948359, 33.536865, 59.518494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691067, 33.703556, 59.261559>,  <31.536692, 33.803570, 59.107399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691067, 33.703556, 59.261559>,  <31.948359, 33.536865, 59.518494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691067, 33.703556, 59.261559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279305, -0.653403, -0.703600,
		-0.712911, -0.631985, 0.303896,
		-0.643232, 0.416724, -0.642335,
		31.498096, 33.828575, 59.068859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604399, 32.909149, 59.138626>,  <31.948359, 33.536865, 59.518494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604399, 32.909149, 59.138626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603306, 33.255360, 58.938286>,  <31.602650, 33.463085, 58.818081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603306, 33.255360, 58.938286>,  <31.604399, 32.909149, 59.138626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603306, 33.255360, 58.938286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275336, -0.480845, -0.832454,
		-0.961344, -0.140177, -0.236997,
		-0.002732, 0.865528, -0.500853,
		31.602486, 33.515018, 58.788029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314304, 32.699253, 58.555233>,  <31.604399, 32.909149, 59.138626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314304, 32.699253, 58.555233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469234, 33.049850, 58.440868>,  <31.562193, 33.260208, 58.372250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469234, 33.049850, 58.440868>,  <31.314304, 32.699253, 58.555233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469234, 33.049850, 58.440868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236100, -0.394079, -0.888233,
		-0.891200, 0.276530, -0.359575,
		0.387324, 0.876489, -0.285914,
		31.585432, 33.312798, 58.355095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183611, 32.704140, 57.855980>,  <31.314304, 32.699253, 58.555233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183611, 32.704140, 57.855980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466452, 32.982513, 57.906075>,  <31.636156, 33.149536, 57.936131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466452, 32.982513, 57.906075>,  <31.183611, 32.704140, 57.855980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466452, 32.982513, 57.906075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417812, -0.268311, -0.868011,
		-0.570475, 0.666098, -0.480492,
		0.707101, 0.695933, 0.125239,
		31.678581, 33.191292, 57.943645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.512638, 34.727402, 50.498936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.633282, 34.792465, 50.874718>,  <47.705666, 34.831505, 51.100185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.633282, 34.792465, 50.874718>,  <47.512638, 34.727402, 50.498936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633282, 34.792465, 50.874718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949126, -0.042325, 0.312039,
		0.090519, -0.985774, 0.141620,
		0.301606, 0.162661, 0.939455,
		47.723763, 34.841263, 51.156555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306286, 34.078430, 50.941174>,  <47.512638, 34.727402, 50.498936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306286, 34.078430, 50.941174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.332798, 34.440975, 51.108078>,  <47.348705, 34.658504, 51.208221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.332798, 34.440975, 51.108078>,  <47.306286, 34.078430, 50.941174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332798, 34.440975, 51.108078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991590, 0.013249, 0.128739,
		0.111156, -0.422288, 0.899620,
		0.066284, 0.906365, 0.417264,
		47.352684, 34.712883, 51.233257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893974, 33.999634, 51.586662>,  <47.306286, 34.078430, 50.941174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893974, 33.999634, 51.586662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.907158, 34.386040, 51.484112>,  <46.915070, 34.617882, 51.422581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.907158, 34.386040, 51.484112>,  <46.893974, 33.999634, 51.586662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.907158, 34.386040, 51.484112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980560, 0.080899, 0.178764,
		0.193430, 0.245500, 0.949903,
		0.032959, 0.966015, -0.256375,
		46.917046, 34.675846, 51.407200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617683, 34.378067, 52.132542>,  <46.893974, 33.999634, 51.586662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617683, 34.378067, 52.132542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.608223, 34.642288, 51.832382>,  <46.602547, 34.800823, 51.652287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.608223, 34.642288, 51.832382>,  <46.617683, 34.378067, 52.132542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608223, 34.642288, 51.832382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950302, 0.218219, 0.222049,
		0.310428, 0.718362, 0.622567,
		-0.023656, 0.660558, -0.750403,
		46.601128, 34.840454, 51.607262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327065, 34.983650, 52.441711>,  <46.617683, 34.378067, 52.132542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327065, 34.983650, 52.441711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.275543, 35.027893, 52.047520>,  <46.244629, 35.054440, 51.811005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.275543, 35.027893, 52.047520>,  <46.327065, 34.983650, 52.441711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275543, 35.027893, 52.047520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980758, 0.132809, 0.143094,
		0.146708, 0.984951, 0.091370,
		-0.128805, 0.110605, -0.985482,
		46.236900, 35.061073, 51.751877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800896, 35.401943, 52.458275>,  <46.327065, 34.983650, 52.441711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800896, 35.401943, 52.458275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.794079, 35.243816, 52.090919>,  <45.789989, 35.148941, 51.870506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.794079, 35.243816, 52.090919>,  <45.800896, 35.401943, 52.458275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794079, 35.243816, 52.090919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975033, -0.196825, 0.102814,
		-0.221406, 0.897207, -0.382097,
		-0.017039, -0.395321, -0.918385,
		45.788967, 35.125221, 51.815403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284798, 35.737755, 52.128407>,  <45.800896, 35.401943, 52.458275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284798, 35.737755, 52.128407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.318295, 35.411419, 51.899536>,  <45.338394, 35.215618, 51.762215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.318295, 35.411419, 51.899536>,  <45.284798, 35.737755, 52.128407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318295, 35.411419, 51.899536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954022, -0.231477, 0.190422,
		-0.287800, 0.529924, -0.797717,
		0.083744, -0.815843, -0.572178,
		45.343418, 35.166668, 51.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696056, 35.771946, 51.684750>,  <45.284798, 35.737755, 52.128407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696056, 35.771946, 51.684750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.838348, 35.398808, 51.661938>,  <44.923725, 35.174923, 51.648251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.838348, 35.398808, 51.661938>,  <44.696056, 35.771946, 51.684750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838348, 35.398808, 51.661938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934382, -0.356272, -0.000756,
		-0.019612, 0.053555, -0.998372,
		0.355732, -0.932846, -0.057028,
		44.945068, 35.118954, 51.644829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347118, 35.456726, 51.042927>,  <44.696056, 35.771946, 51.684750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347118, 35.456726, 51.042927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.476513, 35.173985, 51.294552>,  <44.554150, 35.004341, 51.445526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.476513, 35.173985, 51.294552>,  <44.347118, 35.456726, 51.042927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476513, 35.173985, 51.294552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899061, -0.436889, -0.028586,
		0.295036, -0.556318, -0.776830,
		0.323486, -0.706851, 0.629062,
		44.573559, 34.961929, 51.483269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010704, 34.842312, 50.815434>,  <44.347118, 35.456726, 51.042927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010704, 34.842312, 50.815434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.119316, 34.764572, 51.192474>,  <44.184483, 34.717930, 51.418697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.119316, 34.764572, 51.192474>,  <44.010704, 34.842312, 50.815434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119316, 34.764572, 51.192474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869772, -0.468845, 0.153888,
		0.412027, -0.861635, -0.296343,
		0.271534, -0.194345, 0.942602,
		44.200775, 34.706268, 51.475254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061157, 34.065712, 50.794025>,  <44.010704, 34.842312, 50.815434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061157, 34.065712, 50.794025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.010456, 34.178009, 51.174576>,  <43.980034, 34.245388, 51.402905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.010456, 34.178009, 51.174576>,  <44.061157, 34.065712, 50.794025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010456, 34.178009, 51.174576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843759, -0.534799, 0.045395,
		0.521539, -0.796979, 0.304667,
		-0.126757, 0.280741, 0.951377,
		43.972427, 34.262230, 51.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877724, 33.437695, 51.244167>,  <44.061157, 34.065712, 50.794025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877724, 33.437695, 51.244167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.760002, 33.754395, 51.458275>,  <43.689369, 33.944416, 51.586739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.760002, 33.754395, 51.458275>,  <43.877724, 33.437695, 51.244167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760002, 33.754395, 51.458275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917475, -0.390896, 0.073753,
		0.267630, -0.469393, 0.841454,
		-0.294302, 0.791751, 0.535272,
		43.671711, 33.991920, 51.618855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531784, 33.120171, 51.638271>,  <43.877724, 33.437695, 51.244167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531784, 33.120171, 51.638271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.407028, 33.499634, 51.659355>,  <43.332176, 33.727310, 51.672005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.407028, 33.499634, 51.659355>,  <43.531784, 33.120171, 51.638271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407028, 33.499634, 51.659355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935131, -0.296682, -0.193675,
		-0.168093, -0.109695, 0.979649,
		-0.311890, 0.948655, 0.052709,
		43.313461, 33.784229, 51.675167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992714, 33.180645, 52.182873>,  <43.531784, 33.120171, 51.638271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992714, 33.180645, 52.182873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.927231, 33.499855, 51.950890>,  <42.887939, 33.691383, 51.811699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.927231, 33.499855, 51.950890>,  <42.992714, 33.180645, 52.182873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927231, 33.499855, 51.950890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979770, -0.200122, 0.001200,
		-0.115105, 0.568422, 0.814645,
		-0.163710, 0.798027, -0.579958,
		42.878117, 33.739262, 51.776901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388134, 33.606503, 52.516685>,  <42.992714, 33.180645, 52.182873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388134, 33.606503, 52.516685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.441376, 33.743347, 52.144611>,  <42.473320, 33.825455, 51.921368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.441376, 33.743347, 52.144611>,  <42.388134, 33.606503, 52.516685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441376, 33.743347, 52.144611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962368, -0.179737, -0.203819,
		-0.236918, 0.922307, 0.305318,
		0.133107, 0.342116, -0.930182,
		42.481308, 33.845982, 51.865555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774281, 33.935699, 52.509769>,  <42.388134, 33.606503, 52.516685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774281, 33.935699, 52.509769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885620, 33.904015, 52.126884>,  <41.952423, 33.885002, 51.897156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.885620, 33.904015, 52.126884>,  <41.774281, 33.935699, 52.509769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885620, 33.904015, 52.126884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945315, -0.198994, -0.258419,
		-0.170009, 0.976794, -0.130268,
		0.278344, -0.079211, -0.957209,
		41.969124, 33.880253, 51.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278652, 34.416710, 52.155304>,  <41.774281, 33.935699, 52.509769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278652, 34.416710, 52.155304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.460686, 34.144558, 51.925529>,  <41.569904, 33.981266, 51.787663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.460686, 34.144558, 51.925529>,  <41.278652, 34.416710, 52.155304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460686, 34.144558, 51.925529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887928, -0.298230, -0.350204,
		0.066958, 0.669432, -0.739849,
		0.455083, -0.680382, -0.574438,
		41.597210, 33.940445, 51.753197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043354, 34.537991, 51.539074>,  <41.278652, 34.416710, 52.155304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043354, 34.537991, 51.539074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.174747, 34.161087, 51.513023>,  <41.253582, 33.934944, 51.497395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.174747, 34.161087, 51.513023>,  <41.043354, 34.537991, 51.539074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174747, 34.161087, 51.513023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854284, -0.266987, -0.446001,
		0.402863, 0.202136, -0.892660,
		0.328482, -0.942263, -0.065122,
		41.273293, 33.878407, 51.493488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858894, 34.300079, 50.799965>,  <41.043354, 34.537991, 51.539074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858894, 34.300079, 50.799965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903706, 33.952984, 50.993660>,  <40.930592, 33.744728, 51.109875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903706, 33.952984, 50.993660>,  <40.858894, 34.300079, 50.799965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903706, 33.952984, 50.993660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921153, -0.273468, -0.276934,
		0.372728, -0.415029, -0.829955,
		0.112031, -0.867736, 0.484235,
		40.937313, 33.692661, 51.138931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738491, 33.726246, 50.380245>,  <40.858894, 34.300079, 50.799965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738491, 33.726246, 50.380245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.669430, 33.578255, 50.745388>,  <40.627995, 33.489460, 50.964474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.669430, 33.578255, 50.745388>,  <40.738491, 33.726246, 50.380245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669430, 33.578255, 50.745388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883501, -0.351549, -0.309580,
		0.435452, -0.859959, -0.266182,
		-0.172650, -0.369979, 0.912857,
		40.617634, 33.467262, 51.019245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116837, 33.666779, 49.932327>,  <40.738491, 33.726246, 50.380245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116837, 33.666779, 49.932327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815723, 33.696297, 49.670681>,  <39.635056, 33.714008, 49.513695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.815723, 33.696297, 49.670681>,  <40.116837, 33.666779, 49.932327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815723, 33.696297, 49.670681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655510, 0.006749, 0.755156,
		0.060144, 0.997251, 0.043295,
		-0.752788, 0.073798, -0.654114,
		39.589886, 33.718437, 49.474445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656696, 34.172562, 50.159298>,  <40.116837, 33.666779, 49.932327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656696, 34.172562, 50.159298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468864, 33.902905, 49.931252>,  <39.356167, 33.741112, 49.794422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468864, 33.902905, 49.931252>,  <39.656696, 34.172562, 50.159298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468864, 33.902905, 49.931252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780702, 0.015492, 0.624711,
		-0.412310, 0.738442, -0.533577,
		-0.469579, -0.674139, -0.570116,
		39.327991, 33.700665, 49.760216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024113, 34.420719, 50.332863>,  <39.656696, 34.172562, 50.159298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024113, 34.420719, 50.332863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021152, 34.028416, 50.254833>,  <39.019375, 33.793034, 50.208015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021152, 34.028416, 50.254833>,  <39.024113, 34.420719, 50.332863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021152, 34.028416, 50.254833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750160, -0.123544, 0.649614,
		-0.661216, 0.151146, -0.734812,
		-0.007405, -0.980761, -0.195073,
		39.018932, 33.734188, 50.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287277, 34.112389, 50.086430>,  <39.024113, 34.420719, 50.332863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287277, 34.112389, 50.086430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515953, 33.825668, 50.246113>,  <38.653160, 33.653637, 50.341923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515953, 33.825668, 50.246113>,  <38.287277, 34.112389, 50.086430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515953, 33.825668, 50.246113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726691, -0.216490, 0.651961,
		-0.380902, -0.662820, -0.644657,
		0.571694, -0.716800, 0.399204,
		38.687462, 33.610630, 50.365875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933327, 33.464691, 50.111355>,  <38.287277, 34.112389, 50.086430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933327, 33.464691, 50.111355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.186703, 33.549938, 50.408901>,  <38.338726, 33.601086, 50.587429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.186703, 33.549938, 50.408901>,  <37.933327, 33.464691, 50.111355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186703, 33.549938, 50.408901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730421, -0.152648, 0.665720,
		0.255429, -0.965027, 0.058976,
		0.633435, 0.213122, 0.743867,
		38.376732, 33.613876, 50.632061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370052, 32.904747, 50.083984>,  <37.933327, 33.464691, 50.111355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370052, 32.904747, 50.083984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458157, 32.582775, 49.863594>,  <37.511021, 32.389591, 49.731361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.458157, 32.582775, 49.863594>,  <37.370052, 32.904747, 50.083984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458157, 32.582775, 49.863594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873685, 0.088382, -0.478397,
		0.433772, 0.586752, -0.683787,
		0.220265, -0.804929, -0.550974,
		37.524235, 32.341297, 49.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263336, 33.085922, 49.362442>,  <37.370052, 32.904747, 50.083984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263336, 33.085922, 49.362442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245613, 32.687725, 49.395973>,  <37.234978, 32.448807, 49.416092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245613, 32.687725, 49.395973>,  <37.263336, 33.085922, 49.362442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245613, 32.687725, 49.395973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849040, -0.006697, -0.528286,
		0.526468, -0.094581, -0.844918,
		-0.044307, -0.995494, 0.083829,
		37.232323, 32.389076, 49.421124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973831, 32.820374, 48.693401>,  <37.263336, 33.085922, 49.362442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973831, 32.820374, 48.693401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902153, 32.532784, 48.962013>,  <36.859146, 32.360229, 49.123180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902153, 32.532784, 48.962013>,  <36.973831, 32.820374, 48.693401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902153, 32.532784, 48.962013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904264, -0.148518, -0.400311,
		0.387550, -0.678978, -0.623534,
		-0.179196, -0.718980, 0.671533,
		36.848392, 32.317089, 49.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605793, 32.362965, 48.305206>,  <36.973831, 32.820374, 48.693401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605793, 32.362965, 48.305206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.543671, 32.259583, 48.686588>,  <36.506397, 32.197556, 48.915417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.543671, 32.259583, 48.686588>,  <36.605793, 32.362965, 48.305206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543671, 32.259583, 48.686588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923753, -0.304045, -0.232887,
		0.350085, -0.916929, -0.191526,
		-0.155308, -0.258453, 0.953458,
		36.497078, 32.182045, 48.972626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244171, 31.800236, 48.204834>,  <36.605793, 32.362965, 48.305206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244171, 31.800236, 48.204834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161228, 31.922848, 48.576435>,  <36.111462, 31.996414, 48.799397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161228, 31.922848, 48.576435>,  <36.244171, 31.800236, 48.204834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161228, 31.922848, 48.576435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971347, -0.177259, -0.158318,
		0.116145, -0.935211, 0.334501,
		-0.207354, 0.306528, 0.929002,
		36.099022, 32.014805, 48.855137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776936, 31.310307, 48.451691>,  <36.244171, 31.800236, 48.204834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776936, 31.310307, 48.451691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742054, 31.640064, 48.675396>,  <35.721123, 31.837919, 48.809620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742054, 31.640064, 48.675396>,  <35.776936, 31.310307, 48.451691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742054, 31.640064, 48.675396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987172, 0.003855, -0.159616,
		-0.133743, -0.566005, 0.813481,
		-0.087207, 0.824393, 0.559260,
		35.715893, 31.887383, 48.843174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173912, 31.161327, 48.815887>,  <35.776936, 31.310307, 48.451691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173912, 31.161327, 48.815887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205444, 31.555565, 48.875744>,  <35.224365, 31.792107, 48.911659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205444, 31.555565, 48.875744>,  <35.173912, 31.161327, 48.815887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205444, 31.555565, 48.875744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994068, 0.089001, -0.062518,
		-0.074936, -0.143828, 0.986762,
		0.078831, 0.985592, 0.149644,
		35.229092, 31.851242, 48.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656433, 31.342276, 49.229206>,  <35.173912, 31.161327, 48.815887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656433, 31.342276, 49.229206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744247, 31.698696, 49.070293>,  <34.796936, 31.912548, 48.974945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744247, 31.698696, 49.070293>,  <34.656433, 31.342276, 49.229206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744247, 31.698696, 49.070293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971111, 0.160552, -0.176539,
		-0.093521, 0.424558, 0.900558,
		0.219537, 0.891052, -0.397278,
		34.810108, 31.966011, 48.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158607, 31.886974, 49.585281>,  <34.656433, 31.342276, 49.229206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158607, 31.886974, 49.585281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277443, 32.006649, 49.222576>,  <34.348743, 32.078453, 49.004951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277443, 32.006649, 49.222576>,  <34.158607, 31.886974, 49.585281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277443, 32.006649, 49.222576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954765, 0.080341, -0.286303,
		-0.012807, 0.950807, 0.309520,
		0.297086, 0.299185, -0.906768,
		34.366570, 32.096405, 48.950546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564449, 32.309250, 49.368275>,  <34.158607, 31.886974, 49.585281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564449, 32.309250, 49.368275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769787, 32.265480, 49.027802>,  <33.892990, 32.239216, 48.823517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769787, 32.265480, 49.027802>,  <33.564449, 32.309250, 49.368275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769787, 32.265480, 49.027802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790177, 0.326688, -0.518551,
		0.334814, 0.938776, 0.081235,
		0.513341, -0.109428, -0.851179,
		33.923790, 32.232651, 48.772449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.585897, 29.874626, 53.159111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.825695, 30.191959, 53.201492>,  <29.969574, 30.382359, 53.226921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.825695, 30.191959, 53.201492>,  <29.585897, 29.874626, 53.159111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825695, 30.191959, 53.201492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010540, 0.124546, -0.992158,
		-0.800309, 0.595911, 0.066303,
		0.599495, 0.793334, 0.105956,
		30.005543, 30.429960, 53.233280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294079, 30.431198, 52.756420>,  <29.585897, 29.874626, 53.159111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294079, 30.431198, 52.756420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.683664, 30.515917, 52.788765>,  <29.917416, 30.566748, 52.808174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.683664, 30.515917, 52.788765>,  <29.294079, 30.431198, 52.756420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683664, 30.515917, 52.788765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099765, -0.080104, -0.991781,
		-0.203578, 0.974026, -0.099148,
		0.973962, 0.211796, 0.080866,
		29.975853, 30.579456, 52.813026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427275, 30.959505, 52.216400>,  <29.294079, 30.431198, 52.756420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427275, 30.959505, 52.216400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.799442, 30.826305, 52.277634>,  <30.022743, 30.746386, 52.314373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.799442, 30.826305, 52.277634>,  <29.427275, 30.959505, 52.216400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799442, 30.826305, 52.277634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210385, 0.143258, -0.967065,
		0.300103, 0.931981, 0.203348,
		0.930417, -0.333000, 0.153083,
		30.078568, 30.726406, 52.323559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846323, 31.349567, 51.760998>,  <29.427275, 30.959505, 52.216400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846323, 31.349567, 51.760998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089788, 31.054203, 51.877117>,  <30.235868, 30.876984, 51.946789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.089788, 31.054203, 51.877117>,  <29.846323, 31.349567, 51.760998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089788, 31.054203, 51.877117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394229, -0.036067, -0.918304,
		0.688556, 0.673386, 0.269150,
		0.608665, -0.738411, 0.290302,
		30.272388, 30.832680, 51.964207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585485, 31.517788, 51.610828>,  <29.846323, 31.349567, 51.760998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585485, 31.517788, 51.610828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543468, 31.120003, 51.612141>,  <30.518257, 30.881332, 51.612926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.543468, 31.120003, 51.612141>,  <30.585485, 31.517788, 51.610828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543468, 31.120003, 51.612141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641864, -0.070316, -0.763588,
		0.759590, -0.078107, 0.645695,
		-0.105044, -0.994462, 0.003277,
		30.511955, 30.821665, 51.613125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220554, 31.236544, 51.514736>,  <30.585485, 31.517788, 51.610828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220554, 31.236544, 51.514736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976097, 30.929453, 51.437695>,  <30.829422, 30.745197, 51.391468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976097, 30.929453, 51.437695>,  <31.220554, 31.236544, 51.514736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976097, 30.929453, 51.437695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481741, -0.167700, -0.860118,
		0.628037, -0.618442, 0.472334,
		-0.611143, -0.767728, -0.192607,
		30.792755, 30.699135, 51.379913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709974, 30.725517, 51.290314>,  <31.220554, 31.236544, 51.514736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709974, 30.725517, 51.290314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349329, 30.646423, 51.136433>,  <31.132942, 30.598967, 51.044106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.349329, 30.646423, 51.136433>,  <31.709974, 30.725517, 51.290314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349329, 30.646423, 51.136433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392814, -0.001965, -0.919616,
		0.181084, -0.980253, 0.079445,
		-0.901613, -0.197735, -0.384701,
		31.078846, 30.587103, 51.021023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911358, 30.198652, 50.872845>,  <31.709974, 30.725517, 51.290314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911358, 30.198652, 50.872845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561049, 30.346165, 50.748253>,  <31.350863, 30.434673, 50.673496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.561049, 30.346165, 50.748253>,  <31.911358, 30.198652, 50.872845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561049, 30.346165, 50.748253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392128, 0.167182, -0.904592,
		-0.281525, -0.914357, -0.291024,
		-0.875774, 0.368784, -0.311479,
		31.298317, 30.456800, 50.654808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840673, 30.030455, 50.174847>,  <31.911358, 30.198652, 50.872845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840673, 30.030455, 50.174847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593929, 30.343195, 50.211048>,  <31.445883, 30.530840, 50.232769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593929, 30.343195, 50.211048>,  <31.840673, 30.030455, 50.174847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593929, 30.343195, 50.211048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301758, 0.341129, -0.890266,
		-0.726929, -0.521860, -0.446359,
		-0.616860, 0.781853, 0.090501,
		31.408871, 30.577751, 50.238197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692415, 30.137550, 49.494350>,  <31.840673, 30.030455, 50.174847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692415, 30.137550, 49.494350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580349, 30.476620, 49.674553>,  <31.513109, 30.680061, 49.782677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580349, 30.476620, 49.674553>,  <31.692415, 30.137550, 49.494350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580349, 30.476620, 49.674553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171028, 0.505871, -0.845485,
		-0.944594, -0.159824, -0.286702,
		-0.280163, 0.847674, 0.450508,
		31.496300, 30.730923, 49.809704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191631, 30.353340, 49.138802>,  <31.692415, 30.137550, 49.494350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191631, 30.353340, 49.138802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362692, 30.661015, 49.328735>,  <31.465328, 30.845619, 49.442696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362692, 30.661015, 49.328735>,  <31.191631, 30.353340, 49.138802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362692, 30.661015, 49.328735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236629, 0.411719, -0.880053,
		-0.872424, 0.488715, -0.005940,
		0.427649, 0.769185, 0.474838,
		31.490986, 30.891769, 49.471188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081564, 30.848190, 48.728645>,  <31.191631, 30.353340, 49.138802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081564, 30.848190, 48.728645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357828, 31.048723, 48.937126>,  <31.523586, 31.169043, 49.062214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.357828, 31.048723, 48.937126>,  <31.081564, 30.848190, 48.728645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357828, 31.048723, 48.937126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192752, 0.567029, -0.800828,
		-0.697020, 0.653562, 0.294991,
		0.690659, 0.501333, 0.521205,
		31.565025, 31.199123, 49.093487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670122, 31.538782, 48.761978>,  <31.081564, 30.848190, 48.728645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670122, 31.538782, 48.761978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.822357, 31.720495, 48.439789>,  <30.913698, 31.829523, 48.246475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.822357, 31.720495, 48.439789>,  <30.670122, 31.538782, 48.761978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822357, 31.720495, 48.439789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223994, 0.890367, 0.396325,
		0.897213, 0.029592, 0.440605,
		0.380572, 0.454281, -0.805477,
		30.936533, 31.856779, 48.198147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180239, 31.971313, 48.994221>,  <30.670122, 31.538782, 48.761978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180239, 31.971313, 48.994221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048590, 32.099667, 48.638981>,  <30.969601, 32.176678, 48.425838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048590, 32.099667, 48.638981>,  <31.180239, 31.971313, 48.994221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048590, 32.099667, 48.638981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045098, 0.934078, 0.354210,
		0.943210, 0.156630, -0.292955,
		-0.329123, 0.320883, -0.888095,
		30.949854, 32.195930, 48.372551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409971, 32.653027, 48.925480>,  <31.180239, 31.971313, 48.994221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409971, 32.653027, 48.925480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156073, 32.671688, 48.616955>,  <31.003735, 32.682884, 48.431839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156073, 32.671688, 48.616955>,  <31.409971, 32.653027, 48.925480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156073, 32.671688, 48.616955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296914, 0.906822, 0.299191,
		0.713401, 0.418923, -0.561749,
		-0.634745, 0.046652, -0.771312,
		30.965649, 32.685684, 48.385563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312311, 33.364983, 48.915394>,  <31.409971, 32.653027, 48.925480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312311, 33.364983, 48.915394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010708, 33.222565, 48.694595>,  <30.829746, 33.137112, 48.562115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010708, 33.222565, 48.694595>,  <31.312311, 33.364983, 48.915394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010708, 33.222565, 48.694595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449627, 0.892383, 0.038574,
		0.478859, 0.277278, -0.832953,
		-0.754009, -0.356047, -0.551998,
		30.784506, 33.115749, 48.528996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266005, 33.823200, 48.314491>,  <31.312311, 33.364983, 48.915394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266005, 33.823200, 48.314491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923143, 33.618591, 48.338627>,  <30.717426, 33.495827, 48.353107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923143, 33.618591, 48.338627>,  <31.266005, 33.823200, 48.314491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923143, 33.618591, 48.338627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508125, 0.858945, 0.063416,
		-0.084262, 0.023699, -0.996162,
		-0.857151, -0.511518, 0.060334,
		30.665998, 33.465137, 48.356728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773987, 34.336555, 48.078903>,  <31.266005, 33.823200, 48.314491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773987, 34.336555, 48.078903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553392, 34.064297, 48.271809>,  <30.421036, 33.900940, 48.387554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553392, 34.064297, 48.271809>,  <30.773987, 34.336555, 48.078903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553392, 34.064297, 48.271809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554369, 0.731040, 0.397814,
		-0.623328, -0.047966, -0.780488,
		-0.551486, -0.680647, 0.482268,
		30.387947, 33.860104, 48.416489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002968, 34.576015, 47.969395>,  <30.773987, 34.336555, 48.078903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002968, 34.576015, 47.969395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040432, 34.360893, 48.304535>,  <30.062910, 34.231819, 48.505619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040432, 34.360893, 48.304535>,  <30.002968, 34.576015, 47.969395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040432, 34.360893, 48.304535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409357, 0.746319, 0.524818,
		-0.907554, -0.392134, -0.150255,
		0.093661, -0.537809, 0.837848,
		30.068531, 34.199551, 48.555889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444677, 34.743099, 48.348961>,  <30.002968, 34.576015, 47.969395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444677, 34.743099, 48.348961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651680, 34.569820, 48.644131>,  <29.775881, 34.465855, 48.821232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651680, 34.569820, 48.644131>,  <29.444677, 34.743099, 48.348961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651680, 34.569820, 48.644131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297897, 0.717221, 0.629961,
		-0.802150, -0.545833, 0.242119,
		0.517507, -0.433197, 0.737921,
		29.806932, 34.439861, 48.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092859, 34.872658, 48.902138>,  <29.444677, 34.743099, 48.348961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092859, 34.872658, 48.902138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430233, 34.764874, 49.088047>,  <29.632658, 34.700203, 49.199593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.430233, 34.764874, 49.088047>,  <29.092859, 34.872658, 48.902138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430233, 34.764874, 49.088047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324349, 0.434250, 0.840372,
		-0.428273, -0.859545, 0.278862,
		0.843434, -0.269460, 0.464770,
		29.683264, 34.684036, 49.227478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871548, 34.314831, 49.426506>,  <29.092859, 34.872658, 48.902138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871548, 34.314831, 49.426506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.196653, 34.530819, 49.514004>,  <29.391718, 34.660412, 49.566502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.196653, 34.530819, 49.514004>,  <28.871548, 34.314831, 49.426506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196653, 34.530819, 49.514004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385159, 0.216314, 0.897140,
		0.437111, -0.813414, 0.383787,
		0.812765, 0.539969, 0.218741,
		29.440483, 34.692810, 49.579628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984674, 34.212593, 50.131924>,  <28.871548, 34.314831, 49.426506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984674, 34.212593, 50.131924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228252, 34.527409, 50.092415>,  <29.374399, 34.716297, 50.068710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.228252, 34.527409, 50.092415>,  <28.984674, 34.212593, 50.131924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228252, 34.527409, 50.092415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212079, 0.281529, 0.935823,
		0.764336, -0.548916, 0.338350,
		0.608943, 0.787040, -0.098769,
		29.410936, 34.763519, 50.062782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414740, 34.280609, 50.766552>,  <28.984674, 34.212593, 50.131924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414740, 34.280609, 50.766552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.425907, 34.652977, 50.620892>,  <29.432608, 34.876396, 50.533493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.425907, 34.652977, 50.620892>,  <29.414740, 34.280609, 50.766552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425907, 34.652977, 50.620892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045333, 0.365101, 0.929864,
		0.998582, -0.009451, 0.052394,
		0.027918, 0.930920, -0.364154,
		29.434282, 34.932255, 50.511646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976751, 34.717190, 51.096115>,  <29.414740, 34.280609, 50.766552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976751, 34.717190, 51.096115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688181, 34.957870, 50.959000>,  <29.515039, 35.102280, 50.876728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.688181, 34.957870, 50.959000>,  <29.976751, 34.717190, 51.096115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688181, 34.957870, 50.959000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020944, 0.475825, 0.879291,
		0.692176, 0.641522, -0.330670,
		-0.721425, 0.601698, -0.342791,
		29.471754, 35.138378, 50.856163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160126, 35.328766, 51.454586>,  <29.976751, 34.717190, 51.096115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160126, 35.328766, 51.454586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794380, 35.399124, 51.308712>,  <29.574932, 35.441338, 51.221188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794380, 35.399124, 51.308712>,  <30.160126, 35.328766, 51.454586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794380, 35.399124, 51.308712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221374, 0.536974, 0.814035,
		0.339013, 0.825057, -0.452052,
		-0.914365, 0.175896, -0.364687,
		29.520071, 35.451893, 51.199306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107479, 36.052765, 51.475197>,  <30.160126, 35.328766, 51.454586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107479, 36.052765, 51.475197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741367, 35.891674, 51.478783>,  <29.521700, 35.795021, 51.480934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.741367, 35.891674, 51.478783>,  <30.107479, 36.052765, 51.475197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741367, 35.891674, 51.478783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229066, 0.538655, 0.810789,
		-0.331353, 0.740044, -0.585270,
		-0.915278, -0.402723, 0.008966,
		29.466784, 35.770859, 51.481472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625643, 36.587463, 51.707573>,  <30.107479, 36.052765, 51.475197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625643, 36.587463, 51.707573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.415205, 36.251915, 51.763462>,  <29.288942, 36.050587, 51.796997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.415205, 36.251915, 51.763462>,  <29.625643, 36.587463, 51.707573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415205, 36.251915, 51.763462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412892, 0.395587, 0.820385,
		-0.743469, 0.373909, -0.554478,
		-0.526093, -0.838870, 0.139722,
		29.257378, 36.000256, 51.805378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550802, 37.271374, 51.333336>,  <29.625643, 36.587463, 51.707573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550802, 37.271374, 51.333336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833452, 37.503746, 51.494930>,  <30.003042, 37.643169, 51.591888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833452, 37.503746, 51.494930>,  <29.550802, 37.271374, 51.333336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833452, 37.503746, 51.494930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493202, 0.005024, -0.869900,
		-0.507377, 0.813941, -0.282964,
		0.706626, 0.580926, 0.403986,
		30.045441, 37.678024, 51.616127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657078, 37.800446, 50.804123>,  <29.550802, 37.271374, 51.333336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657078, 37.800446, 50.804123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970964, 37.777798, 51.051029>,  <30.159296, 37.764210, 51.199173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970964, 37.777798, 51.051029>,  <29.657078, 37.800446, 50.804123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970964, 37.777798, 51.051029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619001, 0.123845, -0.775565,
		-0.032536, 0.990685, 0.132228,
		0.784716, -0.056616, 0.617264,
		30.206379, 37.760815, 51.236210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079407, 38.339439, 50.520405>,  <29.657078, 37.800446, 50.804123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079407, 38.339439, 50.520405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.295328, 38.085835, 50.741905>,  <30.424881, 37.933670, 50.874805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.295328, 38.085835, 50.741905>,  <30.079407, 38.339439, 50.520405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295328, 38.085835, 50.741905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683877, -0.053278, -0.727649,
		0.490842, 0.771485, 0.404828,
		0.539802, -0.634013, 0.553752,
		30.457268, 37.895630, 50.908031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823566, 38.521412, 50.430065>,  <30.079407, 38.339439, 50.520405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823566, 38.521412, 50.430065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808176, 38.136665, 50.538387>,  <30.798943, 37.905819, 50.603382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.808176, 38.136665, 50.538387>,  <30.823566, 38.521412, 50.430065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808176, 38.136665, 50.538387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588855, -0.240776, -0.771542,
		0.807323, 0.129779, 0.575663,
		-0.038476, -0.961865, 0.270804,
		30.796633, 37.848106, 50.619629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528208, 38.328094, 50.293106>,  <30.823566, 38.521412, 50.430065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528208, 38.328094, 50.293106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316486, 37.990246, 50.325218>,  <31.189453, 37.787537, 50.344486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316486, 37.990246, 50.325218>,  <31.528208, 38.328094, 50.293106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316486, 37.990246, 50.325218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490084, -0.381614, -0.783702,
		0.692571, -0.375472, 0.615927,
		-0.529305, -0.844625, 0.080282,
		31.157696, 37.736858, 50.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040615, 37.700180, 50.095814>,  <31.528208, 38.328094, 50.293106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040615, 37.700180, 50.095814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680214, 37.527550, 50.078217>,  <31.463972, 37.423973, 50.067657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680214, 37.527550, 50.078217>,  <32.040615, 37.700180, 50.095814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680214, 37.527550, 50.078217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348859, -0.660553, -0.664806,
		0.257853, -0.614340, 0.745720,
		-0.901005, -0.431573, -0.043992,
		31.409912, 37.398079, 50.065018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195683, 37.004902, 50.033974>,  <32.040615, 37.700180, 50.095814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195683, 37.004902, 50.033974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820196, 37.035275, 49.899487>,  <31.594904, 37.053497, 49.818794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820196, 37.035275, 49.899487>,  <32.195683, 37.004902, 50.033974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820196, 37.035275, 49.899487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220750, -0.616700, -0.755613,
		-0.264723, -0.783527, 0.562144,
		-0.938718, 0.075935, -0.336219,
		31.538580, 37.058056, 49.798622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023720, 36.375988, 50.017033>,  <32.195683, 37.004902, 50.033974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023720, 36.375988, 50.017033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806843, 36.588184, 49.756386>,  <31.676718, 36.715504, 49.599998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806843, 36.588184, 49.756386>,  <32.023720, 36.375988, 50.017033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806843, 36.588184, 49.756386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183975, -0.681732, -0.708092,
		-0.819869, -0.503800, 0.272030,
		-0.542189, 0.530496, -0.651618,
		31.644186, 36.747334, 49.560902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786810, 35.846565, 49.745037>,  <32.023720, 36.375988, 50.017033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786810, 35.846565, 49.745037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746790, 36.155067, 49.493595>,  <31.722778, 36.340168, 49.342728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746790, 36.155067, 49.493595>,  <31.786810, 35.846565, 49.745037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746790, 36.155067, 49.493595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082647, -0.623153, -0.777721,
		-0.991544, -0.129765, -0.001394,
		-0.100052, 0.771260, -0.628608,
		31.716774, 36.386444, 49.305012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187592, 35.714790, 49.282520>,  <31.786810, 35.846565, 49.745037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187592, 35.714790, 49.282520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421776, 35.971352, 49.084190>,  <31.562286, 36.125290, 48.965195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421776, 35.971352, 49.084190>,  <31.187592, 35.714790, 49.282520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421776, 35.971352, 49.084190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044207, -0.585427, -0.809519,
		-0.809495, 0.495860, -0.314389,
		0.585460, 0.641404, -0.495821,
		31.597414, 36.163773, 48.935444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910078, 35.608315, 48.658234>,  <31.187592, 35.714790, 49.282520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910078, 35.608315, 48.658234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.274265, 35.759884, 48.591938>,  <31.492777, 35.850826, 48.552162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.274265, 35.759884, 48.591938>,  <30.910078, 35.608315, 48.658234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274265, 35.759884, 48.591938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092817, -0.577714, -0.810945,
		-0.403035, 0.722954, -0.561160,
		0.910466, 0.378924, -0.165737,
		31.547405, 35.873562, 48.542217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972569, 35.904247, 47.930183>,  <30.910078, 35.608315, 48.658234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972569, 35.904247, 47.930183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332001, 35.806847, 48.076202>,  <31.547661, 35.748405, 48.163815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332001, 35.806847, 48.076202>,  <30.972569, 35.904247, 47.930183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332001, 35.806847, 48.076202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161365, -0.590253, -0.790926,
		0.408058, 0.769618, -0.491099,
		0.898582, -0.243497, 0.365046,
		31.601576, 35.733799, 48.185715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.821047, 39.596191, 56.682415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503334, 39.827946, 56.609283>,  <29.312706, 39.966999, 56.565407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503334, 39.827946, 56.609283>,  <29.821047, 39.596191, 56.682415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503334, 39.827946, 56.609283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233735, -0.569173, -0.788296,
		-0.560787, -0.583397, 0.587507,
		-0.794283, 0.579387, -0.182825,
		29.265049, 40.001762, 56.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216000, 39.125004, 56.489471>,  <29.821047, 39.596191, 56.682415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216000, 39.125004, 56.489471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139915, 39.485001, 56.332588>,  <29.094265, 39.701000, 56.238457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139915, 39.485001, 56.332588>,  <29.216000, 39.125004, 56.489471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139915, 39.485001, 56.332588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280710, -0.432683, -0.856730,
		-0.940756, -0.052860, 0.334938,
		-0.190208, 0.899995, -0.392211,
		29.082853, 39.754997, 56.214924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593399, 38.987968, 56.067917>,  <29.216000, 39.125004, 56.489471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593399, 38.987968, 56.067917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681870, 39.352127, 55.928059>,  <28.734951, 39.570621, 55.844143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681870, 39.352127, 55.928059>,  <28.593399, 38.987968, 56.067917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681870, 39.352127, 55.928059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161105, -0.319490, -0.933794,
		-0.961835, 0.262860, 0.076007,
		0.221174, 0.910401, -0.349645,
		28.748222, 39.625248, 55.823166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144926, 39.164330, 55.505611>,  <28.593399, 38.987968, 56.067917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144926, 39.164330, 55.505611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457199, 39.406258, 55.442711>,  <28.644562, 39.551414, 55.404972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457199, 39.406258, 55.442711>,  <28.144926, 39.164330, 55.505611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457199, 39.406258, 55.442711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055187, -0.183925, -0.981390,
		-0.622489, 0.774830, -0.110209,
		0.780680, 0.604822, -0.157252,
		28.691402, 39.587704, 55.395535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002701, 39.576405, 54.999699>,  <28.144926, 39.164330, 55.505611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002701, 39.576405, 54.999699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402145, 39.579723, 55.020500>,  <28.641813, 39.581715, 55.032982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402145, 39.579723, 55.020500>,  <28.002701, 39.576405, 54.999699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402145, 39.579723, 55.020500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052658, -0.149708, -0.987327,
		-0.000407, 0.988695, -0.149937,
		0.998612, 0.008297, 0.052002,
		28.701729, 39.582211, 55.036102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139729, 39.706562, 54.345287>,  <28.002701, 39.576405, 54.999699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139729, 39.706562, 54.345287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498398, 39.591164, 54.479599>,  <28.713598, 39.521923, 54.560188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498398, 39.591164, 54.479599>,  <28.139729, 39.706562, 54.345287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498398, 39.591164, 54.479599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226792, -0.352046, -0.908091,
		0.380191, 0.890413, -0.250241,
		0.896672, -0.288495, 0.335782,
		28.767399, 39.504616, 54.580334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555918, 39.905079, 53.814285>,  <28.139729, 39.706562, 54.345287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555918, 39.905079, 53.814285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784639, 39.638226, 54.005272>,  <28.921871, 39.478115, 54.119865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784639, 39.638226, 54.005272>,  <28.555918, 39.905079, 53.814285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784639, 39.638226, 54.005272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367559, -0.311995, -0.876105,
		0.733446, 0.676457, 0.066811,
		0.571803, -0.667132, 0.477469,
		28.956181, 39.438087, 54.148514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222988, 39.899277, 53.376255>,  <28.555918, 39.905079, 53.814285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222988, 39.899277, 53.376255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.209143, 39.561592, 53.590210>,  <29.200836, 39.358982, 53.718582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.209143, 39.561592, 53.590210>,  <29.222988, 39.899277, 53.376255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209143, 39.561592, 53.590210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269542, -0.523263, -0.808420,
		0.962366, 0.116194, 0.245663,
		-0.034613, -0.844212, 0.534890,
		29.198759, 39.308327, 53.750675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843628, 39.570488, 53.216038>,  <29.222988, 39.899277, 53.376255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843628, 39.570488, 53.216038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640081, 39.266785, 53.378311>,  <29.517954, 39.084564, 53.475677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640081, 39.266785, 53.378311>,  <29.843628, 39.570488, 53.216038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640081, 39.266785, 53.378311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352387, -0.613695, -0.706543,
		0.785416, -0.216577, 0.579841,
		-0.508866, -0.759258, 0.405687,
		29.487421, 39.039005, 53.500019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366732, 38.944801, 53.324512>,  <29.843628, 39.570488, 53.216038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366732, 38.944801, 53.324512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994434, 38.800774, 53.298992>,  <29.771055, 38.714359, 53.283680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994434, 38.800774, 53.298992>,  <30.366732, 38.944801, 53.324512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994434, 38.800774, 53.298992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320372, -0.718810, -0.616988,
		0.176293, -0.594698, 0.784382,
		-0.930743, -0.360065, -0.063804,
		29.715212, 38.692753, 53.279850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476776, 38.193764, 53.308796>,  <30.366732, 38.944801, 53.324512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476776, 38.193764, 53.308796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096594, 38.247280, 53.196556>,  <29.868484, 38.279388, 53.129211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.096594, 38.247280, 53.196556>,  <30.476776, 38.193764, 53.308796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096594, 38.247280, 53.196556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070279, -0.786793, -0.613202,
		-0.302814, -0.602541, 0.738409,
		-0.950455, 0.133791, -0.280598,
		29.811457, 38.287418, 53.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149887, 37.561951, 53.409843>,  <30.476776, 38.193764, 53.308796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149887, 37.561951, 53.409843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976423, 37.803108, 53.141975>,  <29.872345, 37.947803, 52.981255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976423, 37.803108, 53.141975>,  <30.149887, 37.561951, 53.409843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976423, 37.803108, 53.141975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339703, -0.578970, -0.741212,
		-0.834591, -0.548923, 0.046271,
		-0.433658, 0.602890, -0.669675,
		29.846325, 37.983974, 52.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855770, 37.153667, 52.871330>,  <30.149887, 37.561951, 53.409843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855770, 37.153667, 52.871330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877308, 37.516411, 52.704136>,  <29.890230, 37.734055, 52.603817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.877308, 37.516411, 52.704136>,  <29.855770, 37.153667, 52.871330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877308, 37.516411, 52.704136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455147, -0.394872, -0.798071,
		-0.888787, -0.147273, -0.434015,
		0.053846, 0.906855, -0.417988,
		29.893461, 37.788467, 52.578739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559534, 37.115276, 52.177788>,  <29.855770, 37.153667, 52.871330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559534, 37.115276, 52.177788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825050, 37.413570, 52.200653>,  <29.984360, 37.592545, 52.214371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825050, 37.413570, 52.200653>,  <29.559534, 37.115276, 52.177788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825050, 37.413570, 52.200653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518990, -0.404233, -0.753156,
		-0.538547, 0.529602, -0.655353,
		0.663789, 0.745732, 0.057160,
		30.024187, 37.637291, 52.217800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922834, 36.813335, 51.972301>,  <29.559534, 37.115276, 52.177788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922834, 36.813335, 51.972301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974072, 36.432297, 52.082680>,  <29.004814, 36.203674, 52.148907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974072, 36.432297, 52.082680>,  <28.922834, 36.813335, 51.972301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974072, 36.432297, 52.082680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148710, 0.256640, 0.954998,
		-0.980549, -0.163365, -0.108787,
		0.128094, -0.952600, 0.275942,
		29.012501, 36.146515, 52.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417269, 36.654953, 52.525959>,  <28.922834, 36.813335, 51.972301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417269, 36.654953, 52.525959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666914, 36.344753, 52.564075>,  <28.816702, 36.158634, 52.586945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666914, 36.344753, 52.564075>,  <28.417269, 36.654953, 52.525959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666914, 36.344753, 52.564075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200538, -0.041114, 0.978823,
		-0.755159, -0.630008, -0.181177,
		0.624115, -0.775500, 0.095293,
		28.854149, 36.112103, 52.592663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080259, 36.006828, 52.875179>,  <28.417269, 36.654953, 52.525959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080259, 36.006828, 52.875179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475578, 35.994762, 52.934990>,  <28.712770, 35.987522, 52.970875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475578, 35.994762, 52.934990>,  <28.080259, 36.006828, 52.875179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475578, 35.994762, 52.934990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150538, -0.034664, 0.987996,
		-0.024634, -0.998943, -0.038802,
		0.988297, -0.030179, 0.149525,
		28.772068, 35.985710, 52.979847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091366, 35.675991, 53.518284>,  <28.080259, 36.006828, 52.875179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091366, 35.675991, 53.518284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480129, 35.769047, 53.504017>,  <28.713387, 35.824883, 53.495457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480129, 35.769047, 53.504017>,  <28.091366, 35.675991, 53.518284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480129, 35.769047, 53.504017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075339, -0.163960, 0.983586,
		0.222976, -0.958642, -0.176881,
		0.971908, 0.232642, -0.035664,
		28.771702, 35.838840, 53.493317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460238, 35.144192, 53.912834>,  <28.091366, 35.675991, 53.518284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460238, 35.144192, 53.912834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674299, 35.481792, 53.898579>,  <28.802736, 35.684353, 53.890026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674299, 35.481792, 53.898579>,  <28.460238, 35.144192, 53.912834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674299, 35.481792, 53.898579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189855, -0.079058, 0.978624,
		0.823144, -0.530480, -0.202547,
		0.535154, 0.844003, -0.035638,
		28.834845, 35.734993, 53.887886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987167, 35.070644, 54.373722>,  <28.460238, 35.144192, 53.912834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987167, 35.070644, 54.373722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008257, 35.469158, 54.346470>,  <29.020910, 35.708267, 54.330120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008257, 35.469158, 54.346470>,  <28.987167, 35.070644, 54.373722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008257, 35.469158, 54.346470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391675, 0.042127, 0.919138,
		0.918592, -0.075143, -0.387998,
		0.052722, 0.996282, -0.068129,
		29.024073, 35.768044, 54.326031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470257, 35.195335, 54.840252>,  <28.987167, 35.070644, 54.373722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470257, 35.195335, 54.840252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339697, 35.568340, 54.778423>,  <29.261362, 35.792141, 54.741325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339697, 35.568340, 54.778423>,  <29.470257, 35.195335, 54.840252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339697, 35.568340, 54.778423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301592, 0.257722, 0.917944,
		0.895827, 0.252998, -0.365357,
		-0.326398, 0.932508, -0.154572,
		29.241777, 35.848091, 54.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963871, 35.616096, 55.125919>,  <29.470257, 35.195335, 54.840252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963871, 35.616096, 55.125919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645000, 35.857204, 55.112175>,  <29.453678, 36.001869, 55.103928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645000, 35.857204, 55.112175>,  <29.963871, 35.616096, 55.125919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645000, 35.857204, 55.112175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119680, 0.213548, 0.969574,
		0.591768, 0.768808, -0.242375,
		-0.797175, 0.602770, -0.034360,
		29.405848, 36.038036, 55.101868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125534, 36.342121, 55.467991>,  <29.963871, 35.616096, 55.125919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125534, 36.342121, 55.467991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736525, 36.253326, 55.496044>,  <29.503119, 36.200050, 55.512878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736525, 36.253326, 55.496044>,  <30.125534, 36.342121, 55.467991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736525, 36.253326, 55.496044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019140, 0.224009, 0.974399,
		-0.232011, 0.948970, -0.213606,
		-0.972525, -0.221982, 0.070136,
		29.444767, 36.186733, 55.517086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848217, 36.890511, 55.919399>,  <30.125534, 36.342121, 55.467991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848217, 36.890511, 55.919399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548056, 36.626186, 55.913471>,  <29.367958, 36.467590, 55.909916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548056, 36.626186, 55.913471>,  <29.848217, 36.890511, 55.919399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548056, 36.626186, 55.913471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304435, 0.325639, 0.895142,
		-0.586695, 0.676230, -0.445535,
		-0.750405, -0.660812, -0.014817,
		29.322933, 36.427944, 55.909027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253376, 37.301701, 56.063763>,  <29.848217, 36.890511, 55.919399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253376, 37.301701, 56.063763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180950, 36.921455, 56.164593>,  <29.137495, 36.693306, 56.225090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180950, 36.921455, 56.164593>,  <29.253376, 37.301701, 56.063763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180950, 36.921455, 56.164593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492034, 0.309489, 0.813707,
		-0.851539, 0.023303, -0.523773,
		-0.181064, -0.950618, 0.252076,
		29.126631, 36.636269, 56.240215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471952, 37.244522, 56.268238>,  <29.253376, 37.301701, 56.063763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471952, 37.244522, 56.268238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.616631, 36.911659, 56.436375>,  <28.703438, 36.711941, 56.537258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.616631, 36.911659, 56.436375>,  <28.471952, 37.244522, 56.268238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616631, 36.911659, 56.436375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457704, 0.234298, 0.857678,
		-0.812210, -0.502610, -0.296138,
		0.361693, -0.832158, 0.420345,
		28.725138, 36.662010, 56.562477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820175, 36.817764, 56.544346>,  <28.471952, 37.244522, 56.268238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820175, 36.817764, 56.544346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161789, 36.707893, 56.721062>,  <28.366756, 36.641972, 56.827091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161789, 36.707893, 56.721062>,  <27.820175, 36.817764, 56.544346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161789, 36.707893, 56.721062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470328, -0.044785, 0.881354,
		-0.222301, -0.960493, -0.167436,
		0.854034, -0.274676, 0.441791,
		28.417999, 36.625492, 56.853600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662827, 36.211655, 56.835571>,  <27.820175, 36.817764, 56.544346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662827, 36.211655, 56.835571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964172, 36.373383, 57.043018>,  <28.144979, 36.470421, 57.167488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.964172, 36.373383, 57.043018>,  <27.662827, 36.211655, 56.835571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964172, 36.373383, 57.043018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571310, 0.011878, 0.820648,
		0.325646, -0.914540, 0.239942,
		0.753366, 0.404322, 0.518618,
		28.190182, 36.494678, 57.198605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.300766, 34.722351, 59.908382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120384, 35.006386, 59.692078>,  <34.012154, 35.176807, 59.562294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120384, 35.006386, 59.692078>,  <34.300766, 34.722351, 59.908382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120384, 35.006386, 59.692078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444244, -0.346919, -0.826011,
		-0.774137, -0.612723, -0.159005,
		-0.450954, 0.710083, -0.540761,
		33.985100, 35.219410, 59.529850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101585, 34.429703, 59.291443>,  <34.300766, 34.722351, 59.908382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101585, 34.429703, 59.291443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100506, 34.822342, 59.215065>,  <34.099857, 35.057926, 59.169239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100506, 34.822342, 59.215065>,  <34.101585, 34.429703, 59.291443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100506, 34.822342, 59.215065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389205, -0.174862, -0.904402,
		-0.921147, -0.076758, -0.381571,
		-0.002697, 0.981596, -0.190948,
		34.099697, 35.116821, 59.157780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638535, 34.524216, 58.670475>,  <34.101585, 34.429703, 59.291443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638535, 34.524216, 58.670475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883827, 34.840103, 58.677334>,  <34.031002, 35.029636, 58.681450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883827, 34.840103, 58.677334>,  <33.638535, 34.524216, 58.670475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883827, 34.840103, 58.677334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208051, -0.140539, -0.967969,
		-0.762012, 0.597157, -0.250484,
		0.613232, 0.789717, 0.017147,
		34.067795, 35.077019, 58.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448162, 35.046669, 58.090649>,  <33.638535, 34.524216, 58.670475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448162, 35.046669, 58.090649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827793, 35.123180, 58.190784>,  <34.055573, 35.169086, 58.250866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827793, 35.123180, 58.190784>,  <33.448162, 35.046669, 58.090649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827793, 35.123180, 58.190784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223902, 0.149489, -0.963079,
		-0.221641, 0.970085, 0.099049,
		0.949075, 0.191280, 0.250336,
		34.112514, 35.180565, 58.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751759, 35.424713, 57.494633>,  <33.448162, 35.046669, 58.090649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751759, 35.424713, 57.494633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087399, 35.337612, 57.694031>,  <34.288784, 35.285351, 57.813667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087399, 35.337612, 57.694031>,  <33.751759, 35.424713, 57.494633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087399, 35.337612, 57.694031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518411, 0.042474, -0.854076,
		0.164802, 0.975080, 0.148524,
		0.839101, -0.217750, 0.498492,
		34.339130, 35.272285, 57.843578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222866, 35.893349, 57.518124>,  <33.751759, 35.424713, 57.494633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222866, 35.893349, 57.518124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450417, 35.566666, 57.556854>,  <34.586945, 35.370655, 57.580093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450417, 35.566666, 57.556854>,  <34.222866, 35.893349, 57.518124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450417, 35.566666, 57.556854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159966, -0.005606, -0.987107,
		0.806719, 0.577027, 0.127457,
		0.568872, -0.816706, 0.096827,
		34.621078, 35.321655, 57.585903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760979, 35.989555, 57.129898>,  <34.222866, 35.893349, 57.518124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760979, 35.989555, 57.129898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764557, 35.591537, 57.169498>,  <34.766705, 35.352726, 57.193260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764557, 35.591537, 57.169498>,  <34.760979, 35.989555, 57.129898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764557, 35.591537, 57.169498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239212, -0.094001, -0.966406,
		0.970926, 0.032331, 0.237186,
		0.008949, -0.995047, 0.099002,
		34.767242, 35.293022, 57.199200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307331, 35.844990, 56.751350>,  <34.760979, 35.989555, 57.129898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307331, 35.844990, 56.751350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132011, 35.489414, 56.804535>,  <35.026817, 35.276070, 56.836445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132011, 35.489414, 56.804535>,  <35.307331, 35.844990, 56.751350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132011, 35.489414, 56.804535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269969, -0.271301, -0.923857,
		0.857325, -0.369033, 0.358898,
		-0.438304, -0.888938, 0.132966,
		35.000519, 35.222733, 56.844425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791580, 35.219135, 56.617764>,  <35.307331, 35.844990, 56.751350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791580, 35.219135, 56.617764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438175, 35.035336, 56.581383>,  <35.226131, 34.925056, 56.559555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438175, 35.035336, 56.581383>,  <35.791580, 35.219135, 56.617764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438175, 35.035336, 56.581383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282603, -0.368045, -0.885821,
		0.373560, -0.808333, 0.455027,
		-0.883509, -0.459499, -0.090950,
		35.173122, 34.897488, 56.554096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971771, 34.527363, 56.441944>,  <35.791580, 35.219135, 56.617764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971771, 34.527363, 56.441944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587345, 34.571350, 56.340549>,  <35.356689, 34.597744, 56.279713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587345, 34.571350, 56.340549>,  <35.971771, 34.527363, 56.441944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587345, 34.571350, 56.340549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143163, -0.586470, -0.797218,
		-0.236329, -0.802471, 0.547895,
		-0.961069, 0.109967, -0.253484,
		35.299023, 34.604340, 56.264503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827957, 33.952873, 56.204403>,  <35.971771, 34.527363, 56.441944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827957, 33.952873, 56.204403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565983, 34.210136, 56.045700>,  <35.408798, 34.364494, 55.950478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565983, 34.210136, 56.045700>,  <35.827957, 33.952873, 56.204403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565983, 34.210136, 56.045700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131127, -0.420339, -0.897842,
		-0.744225, -0.640050, 0.190958,
		-0.654931, 0.643157, -0.396754,
		35.369503, 34.403084, 55.926674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430485, 33.578716, 55.819817>,  <35.827957, 33.952873, 56.204403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430485, 33.578716, 55.819817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373180, 33.935097, 55.647453>,  <35.338799, 34.148926, 55.544037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373180, 33.935097, 55.647453>,  <35.430485, 33.578716, 55.819817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373180, 33.935097, 55.647453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069077, -0.443335, -0.893690,
		-0.987271, -0.098268, 0.125058,
		-0.143263, 0.890953, -0.430904,
		35.330200, 34.202381, 55.518181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984074, 33.461422, 55.282906>,  <35.430485, 33.578716, 55.819817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984074, 33.461422, 55.282906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126999, 33.822746, 55.187954>,  <35.212753, 34.039543, 55.130981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126999, 33.822746, 55.187954>,  <34.984074, 33.461422, 55.282906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126999, 33.822746, 55.187954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184387, -0.180929, -0.966057,
		-0.915602, 0.388955, 0.101911,
		0.357314, 0.903315, -0.237378,
		35.234192, 34.093742, 55.116741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622452, 33.678776, 54.695717>,  <34.984074, 33.461422, 55.282906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622452, 33.678776, 54.695717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987507, 33.840908, 54.716900>,  <35.206539, 33.938187, 54.729610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987507, 33.840908, 54.716900>,  <34.622452, 33.678776, 54.695717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987507, 33.840908, 54.716900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158577, -0.231651, -0.959787,
		-0.376764, 0.884333, -0.275689,
		0.912635, 0.405331, 0.052957,
		35.261299, 33.962509, 54.732788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046734, 33.796837, 54.430275>,  <34.622452, 33.678776, 54.695717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046734, 33.796837, 54.430275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861115, 33.444355, 54.394184>,  <33.749741, 33.232868, 54.372528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861115, 33.444355, 54.394184>,  <34.046734, 33.796837, 54.430275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861115, 33.444355, 54.394184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410410, 0.123614, 0.903484,
		-0.784997, 0.456295, -0.419017,
		-0.464052, -0.881200, -0.090232,
		33.721897, 33.179996, 54.367115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461868, 33.886574, 54.937645>,  <34.046734, 33.796837, 54.430275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461868, 33.886574, 54.937645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448425, 33.490818, 54.881096>,  <33.440361, 33.253365, 54.847168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448425, 33.490818, 54.881096>,  <33.461868, 33.886574, 54.937645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448425, 33.490818, 54.881096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390097, -0.117247, 0.913278,
		-0.920160, 0.085841, -0.382017,
		-0.033606, -0.989386, -0.141372,
		33.438343, 33.194004, 54.838684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832966, 33.733803, 55.003345>,  <33.461868, 33.886574, 54.937645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832966, 33.733803, 55.003345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020878, 33.389301, 55.080845>,  <33.133625, 33.182598, 55.127346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020878, 33.389301, 55.080845>,  <32.832966, 33.733803, 55.003345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020878, 33.389301, 55.080845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322689, 0.036756, 0.945791,
		-0.821692, -0.506836, -0.260651,
		0.469780, -0.861259, 0.193753,
		33.161812, 33.130924, 55.138969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358932, 33.327427, 55.345261>,  <32.832966, 33.733803, 55.003345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358932, 33.327427, 55.345261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711731, 33.177227, 55.459164>,  <32.923409, 33.087105, 55.527504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711731, 33.177227, 55.459164>,  <32.358932, 33.327427, 55.345261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711731, 33.177227, 55.459164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324789, -0.046527, 0.944642,
		-0.341469, -0.925652, -0.162997,
		0.881993, -0.375505, 0.284753,
		32.976330, 33.064575, 55.544590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147236, 32.761082, 55.657848>,  <32.358932, 33.327427, 55.345261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147236, 32.761082, 55.657848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506355, 32.851070, 55.809296>,  <32.721825, 32.905064, 55.900162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506355, 32.851070, 55.809296>,  <32.147236, 32.761082, 55.657848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506355, 32.851070, 55.809296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309986, -0.287871, 0.906112,
		0.312846, -0.930868, -0.188709,
		0.897795, 0.224976, 0.378616,
		32.775692, 32.918564, 55.922882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217705, 32.374775, 56.192825>,  <32.147236, 32.761082, 55.657848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217705, 32.374775, 56.192825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498341, 32.649811, 56.267654>,  <32.666721, 32.814831, 56.312553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498341, 32.649811, 56.267654>,  <32.217705, 32.374775, 56.192825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498341, 32.649811, 56.267654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203108, -0.058684, 0.977396,
		0.683027, -0.723723, 0.098483,
		0.701585, 0.687591, 0.187077,
		32.708817, 32.856087, 56.323776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540691, 32.144634, 56.723145>,  <32.217705, 32.374775, 56.192825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540691, 32.144634, 56.723145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626247, 32.535358, 56.726940>,  <32.677582, 32.769794, 56.729218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.626247, 32.535358, 56.726940>,  <32.540691, 32.144634, 56.723145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626247, 32.535358, 56.726940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354642, 0.068596, 0.932483,
		0.910208, -0.202817, 0.361090,
		0.213893, 0.976811, 0.009491,
		32.690414, 32.828403, 56.729786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930958, 32.307365, 57.391029>,  <32.540691, 32.144634, 56.723145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930958, 32.307365, 57.391029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759441, 32.639923, 57.249649>,  <32.656532, 32.839458, 57.164822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759441, 32.639923, 57.249649>,  <32.930958, 32.307365, 57.391029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759441, 32.639923, 57.249649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281552, 0.248775, 0.926736,
		0.858411, 0.496889, 0.127409,
		-0.428788, 0.831392, -0.353451,
		32.630806, 32.889339, 57.143612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053448, 32.794418, 57.939632>,  <32.930958, 32.307365, 57.391029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053448, 32.794418, 57.939632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766159, 32.955677, 57.712784>,  <32.593784, 33.052433, 57.576675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.766159, 32.955677, 57.712784>,  <33.053448, 32.794418, 57.939632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766159, 32.955677, 57.712784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437918, 0.371494, 0.818670,
		0.540726, 0.836341, -0.090270,
		-0.718222, 0.403145, -0.567125,
		32.550694, 33.076622, 57.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933552, 33.354580, 58.248894>,  <33.053448, 32.794418, 57.939632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933552, 33.354580, 58.248894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596497, 33.321274, 58.036095>,  <32.394264, 33.301289, 57.908413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596497, 33.321274, 58.036095>,  <32.933552, 33.354580, 58.248894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596497, 33.321274, 58.036095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502261, 0.477746, 0.720759,
		0.194146, 0.874543, -0.444389,
		-0.842640, -0.083267, -0.532001,
		32.343704, 33.296295, 57.876495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597961, 34.039692, 58.241112>,  <32.933552, 33.354580, 58.248894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597961, 34.039692, 58.241112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308380, 33.789463, 58.124794>,  <32.134632, 33.639328, 58.055004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308380, 33.789463, 58.124794>,  <32.597961, 34.039692, 58.241112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308380, 33.789463, 58.124794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652825, 0.485008, 0.581882,
		-0.222971, 0.611089, -0.759509,
		-0.723950, -0.625569, -0.290792,
		32.091194, 33.601791, 58.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065815, 34.488388, 58.089195>,  <32.597961, 34.039692, 58.241112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065815, 34.488388, 58.089195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923132, 34.124138, 58.172646>,  <31.837521, 33.905590, 58.222717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.923132, 34.124138, 58.172646>,  <32.065815, 34.488388, 58.089195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923132, 34.124138, 58.172646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679537, 0.406162, 0.610951,
		-0.641082, 0.076164, -0.763684,
		-0.356712, -0.910621, 0.208627,
		31.816118, 33.850952, 58.235233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254419, 34.512211, 58.061352>,  <32.065815, 34.488388, 58.089195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254419, 34.512211, 58.061352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380594, 34.209885, 58.290871>,  <31.456299, 34.028488, 58.428581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.380594, 34.209885, 58.290871>,  <31.254419, 34.512211, 58.061352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380594, 34.209885, 58.290871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663776, 0.256381, 0.702616,
		-0.678159, -0.602502, -0.420821,
		0.315438, -0.755817, 0.573794,
		31.475225, 33.983139, 58.463009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587923, 34.103741, 58.219379>,  <31.254419, 34.512211, 58.061352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587923, 34.103741, 58.219379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864214, 34.035782, 58.500526>,  <31.029989, 33.995007, 58.669216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.864214, 34.035782, 58.500526>,  <30.587923, 34.103741, 58.219379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864214, 34.035782, 58.500526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563021, 0.483585, 0.670189,
		-0.453763, -0.858650, 0.238368,
		0.690729, -0.169901, 0.702871,
		31.071432, 33.984810, 58.711388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956516, 33.753647, 58.045067>,  <30.587923, 34.103741, 58.219379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956516, 33.753647, 58.045067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.602486, 33.567749, 58.055256>,  <29.390068, 33.456211, 58.061371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.602486, 33.567749, 58.055256>,  <29.956516, 33.753647, 58.045067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602486, 33.567749, 58.055256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169054, -0.371985, -0.912715,
		0.433660, -0.803515, 0.407803,
		-0.885076, -0.464748, 0.025477,
		29.336964, 33.428326, 58.062901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113474, 33.112251, 57.741592>,  <29.956516, 33.753647, 58.045067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113474, 33.112251, 57.741592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716377, 33.148285, 57.709728>,  <29.478119, 33.169907, 57.690609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.716377, 33.148285, 57.709728>,  <30.113474, 33.112251, 57.741592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716377, 33.148285, 57.709728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034355, -0.422340, -0.905786,
		-0.115242, -0.901950, 0.416180,
		-0.992743, 0.090087, -0.079658,
		29.418554, 33.175312, 57.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969110, 32.389633, 57.670300>,  <30.113474, 33.112251, 57.741592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969110, 32.389633, 57.670300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688868, 32.639210, 57.531826>,  <29.520721, 32.788956, 57.448742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688868, 32.639210, 57.531826>,  <29.969110, 32.389633, 57.670300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688868, 32.639210, 57.531826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026399, -0.507492, -0.861252,
		-0.713061, -0.594259, 0.372023,
		-0.700605, 0.623946, -0.346184,
		29.478685, 32.826393, 57.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565844, 32.008739, 57.271179>,  <29.969110, 32.389633, 57.670300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565844, 32.008739, 57.271179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.439804, 32.369793, 57.153900>,  <29.364182, 32.586426, 57.083530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.439804, 32.369793, 57.153900>,  <29.565844, 32.008739, 57.271179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439804, 32.369793, 57.153900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031958, -0.318853, -0.947265,
		-0.948521, -0.289110, 0.129316,
		-0.315097, 0.902634, -0.293200,
		29.345276, 32.640583, 57.065941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891922, 31.964146, 56.949959>,  <29.565844, 32.008739, 57.271179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891922, 31.964146, 56.949959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.105665, 32.272434, 56.811134>,  <29.233912, 32.457409, 56.727840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.105665, 32.272434, 56.811134>,  <28.891922, 31.964146, 56.949959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105665, 32.272434, 56.811134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055774, -0.441852, -0.895353,
		-0.843417, 0.459081, -0.279092,
		0.534356, 0.770722, -0.347061,
		29.265972, 32.503651, 56.707016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633247, 32.125782, 56.364807>,  <28.891922, 31.964146, 56.949959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633247, 32.125782, 56.364807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997789, 32.286358, 56.328426>,  <29.216515, 32.382706, 56.306599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997789, 32.286358, 56.328426>,  <28.633247, 32.125782, 56.364807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997789, 32.286358, 56.328426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074120, -0.377404, -0.923077,
		-0.404889, 0.834512, -0.373705,
		0.911357, 0.401443, -0.090953,
		29.271196, 32.406792, 56.301140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656242, 32.383152, 55.726482>,  <28.633247, 32.125782, 56.364807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656242, 32.383152, 55.726482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047947, 32.365318, 55.805531>,  <29.282970, 32.354618, 55.852959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047947, 32.365318, 55.805531>,  <28.656242, 32.383152, 55.726482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047947, 32.365318, 55.805531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176112, -0.294834, -0.939179,
		0.100136, 0.954508, -0.280869,
		0.979264, -0.044582, 0.197624,
		29.341726, 32.351944, 55.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911200, 32.464577, 55.073307>,  <28.656242, 32.383152, 55.726482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911200, 32.464577, 55.073307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.231245, 32.364735, 55.291485>,  <29.423273, 32.304829, 55.422394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.231245, 32.364735, 55.291485>,  <28.911200, 32.464577, 55.073307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231245, 32.364735, 55.291485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365235, -0.518602, -0.773082,
		0.475838, 0.817770, -0.323775,
		0.800114, -0.249608, 0.545449,
		29.471279, 32.289852, 55.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491566, 32.667843, 54.680317>,  <28.911200, 32.464577, 55.073307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491566, 32.667843, 54.680317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621721, 32.386505, 54.933121>,  <29.699816, 32.217705, 55.084801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.621721, 32.386505, 54.933121>,  <29.491566, 32.667843, 54.680317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621721, 32.386505, 54.933121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435722, -0.481661, -0.760361,
		0.839206, 0.522793, 0.149734,
		0.325390, -0.703342, 0.632005,
		29.719337, 32.175503, 55.122723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109056, 32.572166, 54.393528>,  <29.491566, 32.667843, 54.680317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109056, 32.572166, 54.393528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042620, 32.256878, 54.630547>,  <30.002758, 32.067703, 54.772758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042620, 32.256878, 54.630547>,  <30.109056, 32.572166, 54.393528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042620, 32.256878, 54.630547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642938, -0.542173, -0.540998,
		0.747693, 0.291118, 0.596830,
		-0.166091, -0.788225, 0.592550,
		29.992792, 32.020409, 54.808311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765215, 32.282513, 54.440441>,  <30.109056, 32.572166, 54.393528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765215, 32.282513, 54.440441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521826, 31.976164, 54.523586>,  <30.375792, 31.792356, 54.573475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521826, 31.976164, 54.523586>,  <30.765215, 32.282513, 54.440441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521826, 31.976164, 54.523586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586999, -0.610635, -0.531561,
		0.534035, -0.201423, 0.821118,
		-0.608472, -0.765868, 0.207865,
		30.339285, 31.746403, 54.585945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185497, 31.598934, 54.622559>,  <30.765215, 32.282513, 54.440441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185497, 31.598934, 54.622559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818249, 31.503824, 54.495739>,  <30.597900, 31.446758, 54.419647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.818249, 31.503824, 54.495739>,  <31.185497, 31.598934, 54.622559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818249, 31.503824, 54.495739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389043, -0.693193, -0.606736,
		-0.075508, -0.680401, 0.728939,
		-0.918120, -0.237776, -0.317047,
		30.542812, 31.432491, 54.400623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154425, 30.916264, 54.731079>,  <31.185497, 31.598934, 54.622559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154425, 30.916264, 54.731079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873781, 30.994165, 54.456905>,  <30.705395, 31.040907, 54.292400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873781, 30.994165, 54.456905>,  <31.154425, 30.916264, 54.731079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873781, 30.994165, 54.456905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367870, -0.724821, -0.582500,
		-0.610258, -0.660837, 0.436898,
		-0.701611, 0.194753, -0.685430,
		30.663298, 31.052591, 54.251278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754080, 30.345680, 54.535046>,  <31.154425, 30.916264, 54.731079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754080, 30.345680, 54.535046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773672, 30.584822, 54.215004>,  <30.785427, 30.728306, 54.022980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.773672, 30.584822, 54.215004>,  <30.754080, 30.345680, 54.535046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773672, 30.584822, 54.215004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522083, -0.698244, -0.489779,
		-0.851487, -0.393732, -0.346331,
		0.048982, 0.597854, -0.800107,
		30.788366, 30.764177, 53.974972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.689671, 35.843140, 57.468021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870956, 36.196823, 57.513210>,  <27.979729, 36.409035, 57.540325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.870956, 36.196823, 57.513210>,  <27.689671, 35.843140, 57.468021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870956, 36.196823, 57.513210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561052, 0.184468, 0.806965,
		0.692689, -0.429113, 0.579693,
		0.453214, 0.884214, 0.112976,
		28.006920, 36.462086, 57.547104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576061, 35.920856, 58.118851>,  <27.689671, 35.843140, 57.468021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576061, 35.920856, 58.118851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.715067, 36.281300, 58.015125>,  <27.798470, 36.497566, 57.952888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.715067, 36.281300, 58.015125>,  <27.576061, 35.920856, 58.118851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715067, 36.281300, 58.015125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427396, 0.398375, 0.811560,
		0.834606, -0.171197, 0.523569,
		0.347513, 0.901104, -0.259317,
		27.819321, 36.551632, 57.937328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927586, 36.236378, 58.742760>,  <27.576061, 35.920856, 58.118851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927586, 36.236378, 58.742760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.807903, 36.536888, 58.507450>,  <27.736094, 36.717194, 58.366264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.807903, 36.536888, 58.507450>,  <27.927586, 36.236378, 58.742760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807903, 36.536888, 58.507450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361752, 0.481179, 0.798500,
		0.882956, 0.451726, 0.127803,
		-0.299207, 0.751273, -0.588273,
		27.718142, 36.762268, 58.330967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847046, 36.684814, 59.214531>,  <27.927586, 36.236378, 58.742760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847046, 36.684814, 59.214531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.708345, 36.875168, 58.891224>,  <27.625124, 36.989380, 58.697239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.708345, 36.875168, 58.891224>,  <27.847046, 36.684814, 59.214531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708345, 36.875168, 58.891224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470713, 0.657071, 0.588802,
		0.811290, 0.584631, -0.003836,
		-0.346752, 0.475883, -0.808268,
		27.604321, 37.017933, 58.648743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092855, 37.469475, 59.199684>,  <27.847046, 36.684814, 59.214531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092855, 37.469475, 59.199684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.754087, 37.409828, 58.995533>,  <27.550827, 37.374039, 58.873043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.754087, 37.409828, 58.995533>,  <28.092855, 37.469475, 59.199684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754087, 37.409828, 58.995533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486484, 0.604728, 0.630585,
		0.214610, 0.782348, -0.584700,
		-0.846921, -0.149117, -0.510381,
		27.500011, 37.365093, 58.842419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879023, 38.220356, 59.174492>,  <28.092855, 37.469475, 59.199684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879023, 38.220356, 59.174492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.561586, 37.984383, 59.114899>,  <27.371124, 37.842800, 59.079144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.561586, 37.984383, 59.114899>,  <27.879023, 38.220356, 59.174492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561586, 37.984383, 59.114899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512568, 0.516244, 0.686124,
		-0.327853, 0.620866, -0.712066,
		-0.793591, -0.589931, -0.148984,
		27.323509, 37.807404, 59.070202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289274, 38.624496, 59.176247>,  <27.879023, 38.220356, 59.174492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289274, 38.624496, 59.176247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.154083, 38.256706, 59.256584>,  <27.072969, 38.036034, 59.304787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.154083, 38.256706, 59.256584>,  <27.289274, 38.624496, 59.176247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154083, 38.256706, 59.256584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680805, 0.386199, 0.622378,
		-0.649828, 0.073611, -0.756509,
		-0.337977, -0.919474, 0.200848,
		27.052691, 37.980865, 59.316837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621342, 38.670055, 59.097618>,  <27.289274, 38.624496, 59.176247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621342, 38.670055, 59.097618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709305, 38.368481, 59.345234>,  <26.762083, 38.187534, 59.493805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709305, 38.368481, 59.345234>,  <26.621342, 38.670055, 59.097618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709305, 38.368481, 59.345234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588529, 0.403551, 0.700557,
		-0.777993, -0.518383, -0.354972,
		0.219908, -0.753940, 0.619044,
		26.775276, 38.142300, 59.530949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988268, 38.687305, 59.541336>,  <26.621342, 38.670055, 59.097618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988268, 38.687305, 59.541336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.221548, 38.424095, 59.731861>,  <26.361517, 38.266167, 59.846176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.221548, 38.424095, 59.731861>,  <25.988268, 38.687305, 59.541336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221548, 38.424095, 59.731861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434113, 0.243140, 0.867426,
		-0.686603, -0.712658, -0.143860,
		0.583200, -0.658029, 0.476315,
		26.396507, 38.226688, 59.874756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574379, 38.247738, 59.989681>,  <25.988268, 38.687305, 59.541336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574379, 38.247738, 59.989681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.940006, 38.201603, 60.145210>,  <26.159382, 38.173923, 60.238525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.940006, 38.201603, 60.145210>,  <25.574379, 38.247738, 59.989681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940006, 38.201603, 60.145210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369347, 0.159294, 0.915537,
		-0.167529, -0.980471, 0.103007,
		0.914066, -0.115334, 0.388820,
		26.214226, 38.167004, 60.261856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448071, 37.761852, 60.457485>,  <25.574379, 38.247738, 59.989681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448071, 37.761852, 60.457485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.775644, 37.959522, 60.574196>,  <25.972189, 38.078125, 60.644222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.775644, 37.959522, 60.574196>,  <25.448071, 37.761852, 60.457485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775644, 37.959522, 60.574196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314460, -0.038894, 0.948474,
		0.480064, -0.868490, 0.123548,
		0.818934, 0.494179, 0.291777,
		26.021324, 38.107777, 60.661728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700172, 37.416283, 60.973644>,  <25.448071, 37.761852, 60.457485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700172, 37.416283, 60.973644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.883400, 37.767689, 61.027870>,  <25.993338, 37.978535, 61.060406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.883400, 37.767689, 61.027870>,  <25.700172, 37.416283, 60.973644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883400, 37.767689, 61.027870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384527, 0.058333, 0.921269,
		0.801443, -0.474135, 0.364534,
		0.458070, 0.878518, 0.135568,
		26.020821, 38.031242, 61.068539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342569, 37.430099, 61.547180>,  <25.700172, 37.416283, 60.973644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342569, 37.430099, 61.547180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.161121, 37.783157, 61.497902>,  <26.052254, 37.994991, 61.468334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.161121, 37.783157, 61.497902>,  <26.342569, 37.430099, 61.547180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161121, 37.783157, 61.497902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226691, 0.019409, 0.973773,
		0.861882, 0.469649, 0.191282,
		-0.453619, 0.882640, -0.123193,
		26.025036, 38.047951, 61.460945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366560, 37.082169, 62.194008>,  <26.342569, 37.430099, 61.547180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366560, 37.082169, 62.194008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.694414, 36.905300, 62.339710>,  <26.891127, 36.799179, 62.427132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.694414, 36.905300, 62.339710>,  <26.366560, 37.082169, 62.194008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694414, 36.905300, 62.339710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072420, -0.550745, -0.831526,
		0.568289, 0.707927, -0.419388,
		0.819636, -0.442175, 0.364251,
		26.940306, 36.772648, 62.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540192, 36.548328, 61.749874>,  <26.366560, 37.082169, 62.194008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540192, 36.548328, 61.749874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.829266, 36.447296, 62.007225>,  <27.002710, 36.386677, 62.161636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.829266, 36.447296, 62.007225>,  <26.540192, 36.548328, 61.749874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829266, 36.447296, 62.007225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253025, -0.769542, -0.586331,
		0.643201, 0.586521, -0.492225,
		0.722683, -0.252583, 0.643375,
		27.046070, 36.371521, 62.200237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197281, 36.524693, 61.239834>,  <26.540192, 36.548328, 61.749874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197281, 36.524693, 61.239834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.296326, 36.330627, 61.575287>,  <27.355753, 36.214188, 61.776558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.296326, 36.330627, 61.575287>,  <27.197281, 36.524693, 61.239834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296326, 36.330627, 61.575287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399444, -0.737477, -0.544585,
		0.882685, 0.469831, 0.011191,
		0.247610, -0.485167, 0.838631,
		27.370609, 36.185078, 61.826878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926968, 36.493546, 61.243980>,  <27.197281, 36.524693, 61.239834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926968, 36.493546, 61.243980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.785542, 36.191246, 61.464466>,  <27.700686, 36.009869, 61.596756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.785542, 36.191246, 61.464466>,  <27.926968, 36.493546, 61.243980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785542, 36.191246, 61.464466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519860, -0.648648, -0.555878,
		0.777648, 0.090015, 0.622222,
		-0.353566, -0.755746, 0.551215,
		27.679472, 35.964523, 61.629829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506029, 36.077595, 61.388489>,  <27.926968, 36.493546, 61.243980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506029, 36.077595, 61.388489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178915, 35.853241, 61.440079>,  <27.982647, 35.718628, 61.471031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.178915, 35.853241, 61.440079>,  <28.506029, 36.077595, 61.388489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178915, 35.853241, 61.440079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427760, -0.742290, -0.515778,
		0.385028, -0.366626, 0.846959,
		-0.817787, -0.560884, 0.128974,
		27.933578, 35.684975, 61.478771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725458, 35.392864, 61.549942>,  <28.506029, 36.077595, 61.388489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725458, 35.392864, 61.549942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.338646, 35.345428, 61.459793>,  <28.106560, 35.316967, 61.405704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.338646, 35.345428, 61.459793>,  <28.725458, 35.392864, 61.549942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338646, 35.345428, 61.459793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198489, -0.905414, -0.375270,
		-0.159550, -0.407630, 0.899100,
		-0.967030, -0.118587, -0.225369,
		28.048536, 35.309853, 61.392181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523857, 34.669220, 61.778473>,  <28.725458, 35.392864, 61.549942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523857, 34.669220, 61.778473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287720, 34.791412, 61.479626>,  <28.146038, 34.864727, 61.300320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.287720, 34.791412, 61.479626>,  <28.523857, 34.669220, 61.778473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287720, 34.791412, 61.479626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290576, -0.783123, -0.549804,
		-0.753035, -0.541666, 0.373545,
		-0.590342, 0.305479, -0.747114,
		28.110617, 34.883057, 61.255493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246311, 34.134396, 61.511520>,  <28.523857, 34.669220, 61.778473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246311, 34.134396, 61.511520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.173534, 34.380520, 61.204723>,  <28.129868, 34.528194, 61.020645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.173534, 34.380520, 61.204723>,  <28.246311, 34.134396, 61.511520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173534, 34.380520, 61.204723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345232, -0.690388, -0.635751,
		-0.920712, -0.380462, -0.086815,
		-0.181943, 0.615315, -0.766997,
		28.118952, 34.565113, 60.974625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906521, 33.728664, 61.075993>,  <28.246311, 34.134396, 61.511520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906521, 33.728664, 61.075993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024632, 34.017254, 60.825459>,  <28.095499, 34.190407, 60.675140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.024632, 34.017254, 60.825459>,  <27.906521, 33.728664, 61.075993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024632, 34.017254, 60.825459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216820, -0.689059, -0.691510,
		-0.930484, 0.068386, -0.359894,
		0.295278, 0.721471, -0.626331,
		28.113214, 34.233696, 60.637558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364126, 33.714458, 60.452755>,  <27.906521, 33.728664, 61.075993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364126, 33.714458, 60.452755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.714735, 33.873508, 60.344234>,  <27.925100, 33.968937, 60.279121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.714735, 33.873508, 60.344234>,  <27.364126, 33.714458, 60.452755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714735, 33.873508, 60.344234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004490, -0.570344, -0.821394,
		-0.481337, 0.718753, -0.501705,
		0.876524, 0.397620, -0.271300,
		27.977692, 33.992794, 60.262844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425756, 33.657265, 59.658867>,  <27.364126, 33.714458, 60.452755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425756, 33.657265, 59.658867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.801804, 33.752464, 59.756462>,  <28.027431, 33.809586, 59.815022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.801804, 33.752464, 59.756462>,  <27.425756, 33.657265, 59.658867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801804, 33.752464, 59.756462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331918, -0.476490, -0.814118,
		-0.077501, 0.846352, -0.526955,
		0.940119, 0.238001, 0.243991,
		28.083839, 33.823864, 59.829659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749640, 34.014545, 59.032185>,  <27.425756, 33.657265, 59.658867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749640, 34.014545, 59.032185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.051743, 33.885471, 59.260380>,  <28.233004, 33.808029, 59.397297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.051743, 33.885471, 59.260380>,  <27.749640, 34.014545, 59.032185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051743, 33.885471, 59.260380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532236, -0.206024, -0.821145,
		0.382505, 0.923812, 0.016142,
		0.755258, -0.322684, 0.570491,
		28.278320, 33.788666, 59.431526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293093, 34.472450, 58.780937>,  <27.749640, 34.014545, 59.032185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293093, 34.472450, 58.780937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457094, 34.141964, 58.935482>,  <28.555494, 33.943672, 59.028210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457094, 34.141964, 58.935482>,  <28.293093, 34.472450, 58.780937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457094, 34.141964, 58.935482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498366, -0.151840, -0.853567,
		0.763891, 0.542512, 0.349501,
		0.410002, -0.826211, 0.386359,
		28.580095, 33.894100, 59.051388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991695, 34.470646, 58.619076>,  <28.293093, 34.472450, 58.780937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991695, 34.470646, 58.619076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.910973, 34.084511, 58.685287>,  <28.862539, 33.852829, 58.725014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.910973, 34.084511, 58.685287>,  <28.991695, 34.470646, 58.619076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910973, 34.084511, 58.685287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545491, -0.251145, -0.799604,
		0.813458, -0.071070, 0.577265,
		-0.201805, -0.965337, 0.165528,
		28.850431, 33.794910, 58.734947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555174, 34.237133, 58.452873>,  <28.991695, 34.470646, 58.619076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555174, 34.237133, 58.452873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.332285, 33.905006, 58.449337>,  <29.198551, 33.705730, 58.447216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.332285, 33.905006, 58.449337>,  <29.555174, 34.237133, 58.452873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332285, 33.905006, 58.449337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469445, -0.306229, -0.828158,
		0.684926, -0.465617, 0.560426,
		-0.557223, -0.830316, -0.008837,
		29.165117, 33.655910, 58.446686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195444, 34.191757, 58.806229>,  <29.555174, 34.237133, 58.452873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195444, 34.191757, 58.806229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.564041, 34.155819, 58.957375>,  <30.785200, 34.134258, 59.048061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.564041, 34.155819, 58.957375>,  <30.195444, 34.191757, 58.806229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564041, 34.155819, 58.957375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322637, 0.364566, 0.873497,
		-0.216233, -0.926833, 0.306958,
		0.921492, -0.089843, 0.377862,
		30.840488, 34.128864, 59.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059404, 33.961941, 59.446327>,  <30.195444, 34.191757, 58.806229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059404, 33.961941, 59.446327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.429251, 34.109730, 59.483379>,  <30.651157, 34.198402, 59.505611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.429251, 34.109730, 59.483379>,  <30.059404, 33.961941, 59.446327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429251, 34.109730, 59.483379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252328, 0.411941, 0.875577,
		0.285339, -0.832945, 0.474114,
		0.924614, 0.369469, 0.092633,
		30.706635, 34.220570, 59.511169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476315, 33.693085, 60.140106>,  <30.059404, 33.961941, 59.446327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476315, 33.693085, 60.140106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644238, 34.038624, 60.028728>,  <30.744991, 34.245949, 59.961903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.644238, 34.038624, 60.028728>,  <30.476315, 33.693085, 60.140106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644238, 34.038624, 60.028728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033164, 0.291981, 0.955849,
		0.907008, -0.410504, 0.093927,
		0.419805, 0.863848, -0.278443,
		30.770180, 34.297779, 59.945194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077877, 33.867310, 60.636974>,  <30.476315, 33.693085, 60.140106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077877, 33.867310, 60.636974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.007191, 34.222633, 60.467422>,  <30.964779, 34.435829, 60.365692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.007191, 34.222633, 60.467422>,  <31.077877, 33.867310, 60.636974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007191, 34.222633, 60.467422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069797, 0.418266, 0.905639,
		0.981784, 0.189625, -0.011912,
		-0.176714, 0.888311, -0.423882,
		30.954176, 34.489128, 60.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482807, 34.415291, 61.029045>,  <31.077877, 33.867310, 60.636974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482807, 34.415291, 61.029045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190472, 34.614616, 60.842476>,  <31.015070, 34.734211, 60.730534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190472, 34.614616, 60.842476>,  <31.482807, 34.415291, 61.029045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190472, 34.614616, 60.842476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166987, 0.532052, 0.830082,
		0.661807, 0.684544, -0.305633,
		-0.730840, 0.498317, -0.466426,
		30.971220, 34.764111, 60.702549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605356, 35.135929, 61.233978>,  <31.482807, 34.415291, 61.029045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605356, 35.135929, 61.233978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.236320, 35.145283, 61.079948>,  <31.014900, 35.150894, 60.987530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.236320, 35.145283, 61.079948>,  <31.605356, 35.135929, 61.233978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236320, 35.145283, 61.079948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311279, 0.544515, 0.778851,
		0.227897, 0.838425, -0.495083,
		-0.922588, 0.023389, -0.385077,
		30.959543, 35.152298, 60.964424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381161, 35.783264, 61.162731>,  <31.605356, 35.135929, 61.233978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381161, 35.783264, 61.162731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.047565, 35.570404, 61.221085>,  <30.847408, 35.442688, 61.256096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.047565, 35.570404, 61.221085>,  <31.381161, 35.783264, 61.162731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047565, 35.570404, 61.221085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254916, 0.606062, 0.753463,
		-0.489365, 0.591193, -0.641103,
		-0.833990, -0.532146, 0.145880,
		30.797369, 35.410759, 61.264851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624607, 36.516678, 61.097759>,  <31.381161, 35.783264, 61.162731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624607, 36.516678, 61.097759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983831, 36.535404, 61.272705>,  <32.199368, 36.546638, 61.377674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983831, 36.535404, 61.272705>,  <31.624607, 36.516678, 61.097759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983831, 36.535404, 61.272705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426426, -0.336591, -0.839564,
		0.107910, 0.940486, -0.322244,
		0.898062, 0.046816, 0.437369,
		32.253250, 36.549450, 61.403915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999237, 36.579048, 60.572704>,  <31.624607, 36.516678, 61.097759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999237, 36.579048, 60.572704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.273712, 36.504955, 60.854080>,  <32.438396, 36.460499, 61.022907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.273712, 36.504955, 60.854080>,  <31.999237, 36.579048, 60.572704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273712, 36.504955, 60.854080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656273, -0.259474, -0.708504,
		0.313765, 0.947819, -0.056484,
		0.686190, -0.185234, 0.703443,
		32.479568, 36.449387, 61.065113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546436, 37.017281, 60.399708>,  <31.999237, 36.579048, 60.572704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546436, 37.017281, 60.399708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672230, 36.694511, 60.599701>,  <32.747707, 36.500851, 60.719696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672230, 36.694511, 60.599701>,  <32.546436, 37.017281, 60.399708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672230, 36.694511, 60.599701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533425, -0.285462, -0.796222,
		0.785212, 0.517101, 0.340658,
		0.314482, -0.806919, 0.499983,
		32.766575, 36.452435, 60.749695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172894, 36.909000, 60.153637>,  <32.546436, 37.017281, 60.399708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172894, 36.909000, 60.153637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.141342, 36.569389, 60.362606>,  <33.122410, 36.365623, 60.487988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.141342, 36.569389, 60.362606>,  <33.172894, 36.909000, 60.153637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141342, 36.569389, 60.362606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579816, -0.465372, -0.668762,
		0.810920, 0.250159, 0.528988,
		-0.078879, -0.849028, 0.522426,
		33.117680, 36.314682, 60.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866650, 36.672108, 60.315952>,  <33.172894, 36.909000, 60.153637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866650, 36.672108, 60.315952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617584, 36.359718, 60.335430>,  <33.468143, 36.172283, 60.347118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.617584, 36.359718, 60.335430>,  <33.866650, 36.672108, 60.315952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617584, 36.359718, 60.335430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567441, -0.493518, -0.659129,
		0.538796, -0.382782, 0.750452,
		-0.622663, -0.780973, 0.048699,
		33.430786, 36.125427, 60.350040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243069, 36.110649, 60.479172>,  <33.866650, 36.672108, 60.315952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243069, 36.110649, 60.479172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920639, 35.956657, 60.299381>,  <33.727180, 35.864262, 60.191505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920639, 35.956657, 60.299381>,  <34.243069, 36.110649, 60.479172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920639, 35.956657, 60.299381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591789, -0.531161, -0.606344,
		-0.005316, -0.754757, 0.655983,
		-0.806075, -0.384980, -0.449480,
		33.678818, 35.841164, 60.164536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424438, 35.432659, 60.346504>,  <34.243069, 36.110649, 60.479172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424438, 35.432659, 60.346504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133595, 35.512642, 60.083801>,  <33.959087, 35.560631, 59.926178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133595, 35.512642, 60.083801>,  <34.424438, 35.432659, 60.346504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133595, 35.512642, 60.083801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402041, -0.651419, -0.643441,
		-0.556483, -0.731895, 0.393262,
		-0.727110, 0.199957, -0.656755,
		33.915462, 35.572628, 59.886776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.796335, 40.441956, 61.654987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466173, 40.294483, 61.483978>,  <28.268076, 40.205997, 61.381371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466173, 40.294483, 61.483978>,  <28.796335, 40.441956, 61.654987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466173, 40.294483, 61.483978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206234, 0.508036, -0.836282,
		0.525529, -0.778439, -0.343297,
		-0.825401, -0.368690, -0.427528,
		28.218552, 40.183876, 61.355721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073513, 40.383457, 61.048134>,  <28.796335, 40.441956, 61.654987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073513, 40.383457, 61.048134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693785, 40.282345, 60.973415>,  <28.465948, 40.221676, 60.928585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693785, 40.282345, 60.973415>,  <29.073513, 40.383457, 61.048134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693785, 40.282345, 60.973415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130763, 0.222796, -0.966055,
		0.285822, -0.941521, -0.178450,
		-0.949319, -0.252785, -0.186797,
		28.408989, 40.206509, 60.917377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996893, 39.790771, 60.513107>,  <29.073513, 40.383457, 61.048134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996893, 39.790771, 60.513107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669781, 40.020962, 60.516315>,  <28.473513, 40.159077, 60.518242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669781, 40.020962, 60.516315>,  <28.996893, 39.790771, 60.513107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669781, 40.020962, 60.516315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118810, 0.182447, -0.976011,
		-0.563130, -0.797211, -0.217574,
		-0.817783, 0.575471, 0.008025,
		28.424446, 40.193604, 60.518723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537828, 39.486851, 60.062515>,  <28.996893, 39.790771, 60.513107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537828, 39.486851, 60.062515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464558, 39.879654, 60.080853>,  <28.420595, 40.115337, 60.091854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464558, 39.879654, 60.080853>,  <28.537828, 39.486851, 60.062515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464558, 39.879654, 60.080853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063530, 0.034712, -0.997376,
		-0.981025, -0.185607, 0.056029,
		-0.183175, 0.982011, 0.045845,
		28.409605, 40.174255, 60.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005638, 39.545666, 59.587238>,  <28.537828, 39.486851, 60.062515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005638, 39.545666, 59.587238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134584, 39.923672, 59.609249>,  <28.211952, 40.150475, 59.622456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134584, 39.923672, 59.609249>,  <28.005638, 39.545666, 59.587238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134584, 39.923672, 59.609249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046264, 0.073787, -0.996200,
		-0.945483, 0.318597, 0.067506,
		0.322368, 0.945014, 0.055025,
		28.231295, 40.207176, 59.625755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551832, 39.975117, 59.122135>,  <28.005638, 39.545666, 59.587238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551832, 39.975117, 59.122135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868359, 40.215176, 59.168858>,  <28.058275, 40.359211, 59.196892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868359, 40.215176, 59.168858>,  <27.551832, 39.975117, 59.122135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868359, 40.215176, 59.168858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003194, 0.186985, -0.982358,
		-0.611397, 0.777730, 0.146047,
		0.791318, 0.600144, 0.116806,
		28.105753, 40.395218, 59.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468653, 40.502766, 58.685432>,  <27.551832, 39.975117, 59.122135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468653, 40.502766, 58.685432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862240, 40.496693, 58.756508>,  <28.098392, 40.493050, 58.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862240, 40.496693, 58.756508>,  <27.468653, 40.502766, 58.685432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862240, 40.496693, 58.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178309, 0.100963, -0.978781,
		-0.003077, 0.994774, 0.102052,
		0.983970, -0.015185, 0.177688,
		28.157431, 40.492138, 58.809814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807669, 41.030010, 58.197376>,  <27.468653, 40.502766, 58.685432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807669, 41.030010, 58.197376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110958, 40.794277, 58.308929>,  <28.292933, 40.652836, 58.375862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110958, 40.794277, 58.308929>,  <27.807669, 41.030010, 58.197376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110958, 40.794277, 58.308929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306685, -0.055088, -0.950215,
		0.575360, 0.806007, 0.138971,
		0.758225, -0.589337, 0.278886,
		28.338425, 40.617477, 58.392593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307768, 41.318073, 57.860741>,  <27.807669, 41.030010, 58.197376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307768, 41.318073, 57.860741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470276, 40.967709, 57.964836>,  <28.567781, 40.757488, 58.027294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470276, 40.967709, 57.964836>,  <28.307768, 41.318073, 57.860741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470276, 40.967709, 57.964836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464050, -0.047560, -0.884531,
		0.787148, 0.480121, 0.387144,
		0.406270, -0.875912, 0.260237,
		28.592157, 40.704933, 58.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004841, 41.386177, 57.656559>,  <28.307768, 41.318073, 57.860741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004841, 41.386177, 57.656559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926016, 40.995487, 57.690456>,  <28.878721, 40.761074, 57.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926016, 40.995487, 57.690456>,  <29.004841, 41.386177, 57.656559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926016, 40.995487, 57.690456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440645, -0.165450, -0.882303,
		0.875785, -0.136527, 0.462991,
		-0.197060, -0.976722, 0.084739,
		28.866898, 40.702469, 57.715878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621399, 41.036198, 57.423283>,  <29.004841, 41.386177, 57.656559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621399, 41.036198, 57.423283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328480, 40.767529, 57.378399>,  <29.152729, 40.606327, 57.351467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328480, 40.767529, 57.378399>,  <29.621399, 41.036198, 57.423283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328480, 40.767529, 57.378399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258992, -0.122302, -0.958105,
		0.629813, -0.730680, 0.263520,
		-0.732296, -0.671677, -0.112213,
		29.108791, 40.566025, 57.344734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929638, 40.293442, 57.145905>,  <29.621399, 41.036198, 57.423283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929638, 40.293442, 57.145905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547226, 40.337471, 57.037174>,  <29.317780, 40.363888, 56.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547226, 40.337471, 57.037174>,  <29.929638, 40.293442, 57.145905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547226, 40.337471, 57.037174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222698, -0.330623, -0.917112,
		-0.190820, -0.937322, 0.291573,
		-0.956030, 0.110070, -0.271829,
		29.260416, 40.370491, 56.955624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007584, 39.941792, 57.760876>,  <29.929638, 40.293442, 57.145905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007584, 39.941792, 57.760876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393162, 40.031498, 57.703587>,  <30.624510, 40.085320, 57.669212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393162, 40.031498, 57.703587>,  <30.007584, 39.941792, 57.760876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393162, 40.031498, 57.703587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174336, -0.125617, 0.976641,
		0.201034, -0.966398, -0.160186,
		0.963946, 0.224264, -0.143225,
		30.682346, 40.098778, 57.660618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467833, 39.431293, 57.954632>,  <30.007584, 39.941792, 57.760876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467833, 39.431293, 57.954632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690918, 39.761829, 57.985931>,  <30.824768, 39.960152, 58.004711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690918, 39.761829, 57.985931>,  <30.467833, 39.431293, 57.954632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690918, 39.761829, 57.985931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206977, -0.229742, 0.950989,
		0.803814, -0.514183, -0.299163,
		0.557713, 0.826338, 0.078246,
		30.858232, 40.009731, 58.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090029, 39.251450, 58.342060>,  <30.467833, 39.431293, 57.954632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090029, 39.251450, 58.342060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056519, 39.648518, 58.376911>,  <31.036413, 39.886757, 58.397823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056519, 39.648518, 58.376911>,  <31.090029, 39.251450, 58.342060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056519, 39.648518, 58.376911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086137, -0.079897, 0.993074,
		0.992755, 0.090699, -0.078812,
		-0.083774, 0.992668, 0.087131,
		31.031387, 39.946320, 58.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629332, 39.377941, 58.765900>,  <31.090029, 39.251450, 58.342060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629332, 39.377941, 58.765900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441082, 39.729897, 58.792160>,  <31.328133, 39.941071, 58.807919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441082, 39.729897, 58.792160>,  <31.629332, 39.377941, 58.765900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441082, 39.729897, 58.792160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183172, 0.024642, 0.982772,
		0.863111, 0.474544, -0.172767,
		-0.470626, 0.879887, 0.065654,
		31.299894, 39.993862, 58.811855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133816, 39.774834, 59.105522>,  <31.629332, 39.377941, 58.765900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133816, 39.774834, 59.105522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777792, 39.947987, 59.162674>,  <31.564178, 40.051880, 59.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777792, 39.947987, 59.162674>,  <32.133816, 39.774834, 59.105522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777792, 39.947987, 59.162674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214301, 0.120694, 0.969282,
		0.402339, 0.893335, -0.200191,
		-0.890055, 0.432881, 0.142883,
		31.510775, 40.077850, 59.205540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201431, 40.403740, 59.605896>,  <32.133816, 39.774834, 59.105522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201431, 40.403740, 59.605896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809380, 40.324398, 59.607311>,  <31.574150, 40.276794, 59.608162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809380, 40.324398, 59.607311>,  <32.201431, 40.403740, 59.605896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809380, 40.324398, 59.607311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015331, 0.093532, 0.995498,
		-0.197789, 0.975658, -0.094714,
		-0.980125, -0.198351, 0.003542,
		31.515343, 40.264893, 59.608376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857784, 40.981739, 59.966728>,  <32.201431, 40.403740, 59.605896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857784, 40.981739, 59.966728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588434, 40.686722, 59.987091>,  <31.426825, 40.509712, 59.999310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588434, 40.686722, 59.987091>,  <31.857784, 40.981739, 59.966728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588434, 40.686722, 59.987091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048046, 0.112374, 0.992504,
		-0.737739, 0.665881, -0.111106,
		-0.673375, -0.737546, 0.050910,
		31.386421, 40.465458, 60.002365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274652, 41.217628, 60.250782>,  <31.857784, 40.981739, 59.966728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274652, 41.217628, 60.250782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261204, 40.822121, 60.309025>,  <31.253136, 40.584816, 60.343971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261204, 40.822121, 60.309025>,  <31.274652, 41.217628, 60.250782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261204, 40.822121, 60.309025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157915, 0.149118, 0.976129,
		-0.986880, 0.009824, -0.161155,
		-0.033621, -0.988771, 0.145610,
		31.251118, 40.525490, 60.352707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707130, 41.040844, 60.662384>,  <31.274652, 41.217628, 60.250782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707130, 41.040844, 60.662384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939924, 40.726597, 60.746380>,  <31.079599, 40.538048, 60.796776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939924, 40.726597, 60.746380>,  <30.707130, 41.040844, 60.662384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939924, 40.726597, 60.746380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168465, 0.136150, 0.976260,
		-0.795559, -0.603543, -0.053112,
		0.581983, -0.785620, 0.209991,
		31.114519, 40.490910, 60.809376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501455, 40.757648, 61.357681>,  <30.707130, 41.040844, 60.662384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501455, 40.757648, 61.357681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836330, 40.545555, 61.304070>,  <31.037256, 40.418297, 61.271904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836330, 40.545555, 61.304070>,  <30.501455, 40.757648, 61.357681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836330, 40.545555, 61.304070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019790, -0.274269, 0.961450,
		-0.546556, -0.802262, -0.240108,
		0.837189, -0.530238, -0.134027,
		31.087486, 40.386482, 61.263863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319818, 40.112556, 61.608795>,  <30.501455, 40.757648, 61.357681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319818, 40.112556, 61.608795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716515, 40.162785, 61.619221>,  <30.954533, 40.192921, 61.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716515, 40.162785, 61.619221>,  <30.319818, 40.112556, 61.608795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716515, 40.162785, 61.619221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025517, -0.392387, 0.919446,
		0.125687, -0.911188, -0.392351,
		0.991742, 0.125574, 0.026067,
		31.014038, 40.200455, 61.627041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524302, 39.486458, 61.848839>,  <30.319818, 40.112556, 61.608795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524302, 39.486458, 61.848839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820446, 39.748642, 61.908489>,  <30.998133, 39.905952, 61.944279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820446, 39.748642, 61.908489>,  <30.524302, 39.486458, 61.848839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820446, 39.748642, 61.908489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030576, -0.188778, 0.981544,
		0.671516, -0.731255, -0.119722,
		0.740359, 0.655462, 0.149126,
		31.042553, 39.945282, 61.953228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975718, 39.056828, 62.082214>,  <30.524302, 39.486458, 61.848839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975718, 39.056828, 62.082214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063171, 39.431355, 62.192131>,  <31.115644, 39.656071, 62.258080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063171, 39.431355, 62.192131>,  <30.975718, 39.056828, 62.082214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063171, 39.431355, 62.192131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203701, -0.231608, 0.951243,
		0.954308, -0.263951, 0.140091,
		0.218635, 0.936316, 0.274792,
		31.128761, 39.712250, 62.274570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546003, 39.037312, 62.521675>,  <30.975718, 39.056828, 62.082214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546003, 39.037312, 62.521675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346081, 39.375500, 62.596905>,  <31.226128, 39.578411, 62.642044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346081, 39.375500, 62.596905>,  <31.546003, 39.037312, 62.521675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346081, 39.375500, 62.596905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118014, -0.281596, 0.952248,
		0.858059, 0.453744, 0.240521,
		-0.499807, 0.845470, 0.188078,
		31.196138, 39.629139, 62.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313759, 39.009407, 62.749588>,  <31.546003, 39.037312, 62.521675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313759, 39.009407, 62.749588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039562, 38.839680, 62.986248>,  <31.875044, 38.737843, 63.128242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039562, 38.839680, 62.986248>,  <32.313759, 39.009407, 62.749588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039562, 38.839680, 62.986248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340482, -0.905113, -0.254643,
		0.643560, 0.026890, 0.764923,
		-0.685494, -0.424321, 0.591650,
		31.833914, 38.712383, 63.163742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631313, 38.498184, 63.151779>,  <32.313759, 39.009407, 62.749588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631313, 38.498184, 63.151779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 38.383728, 63.149536>,  <32.018082, 38.315056, 63.148190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 38.383728, 63.149536>,  <32.631313, 38.498184, 63.151779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248043, 38.383728, 63.149536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269194, -0.894440, -0.357088,
		0.097159, -0.343662, 0.934054,
		-0.958173, -0.286137, -0.005609,
		31.960590, 38.297886, 63.147854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616837, 37.756073, 63.353134>,  <32.631313, 38.498184, 63.151779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616837, 37.756073, 63.353134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271465, 37.830307, 63.165497>,  <32.064243, 37.874847, 63.052914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271465, 37.830307, 63.165497>,  <32.616837, 37.756073, 63.353134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271465, 37.830307, 63.165497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154816, -0.787527, -0.596518,
		-0.480128, -0.587674, 0.651242,
		-0.863429, 0.185583, -0.469095,
		32.012436, 37.885983, 63.024769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215591, 37.173615, 63.358627>,  <32.616837, 37.756073, 63.353134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215591, 37.173615, 63.358627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064644, 37.369114, 63.043995>,  <31.974075, 37.486416, 62.855213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064644, 37.369114, 63.043995>,  <32.215591, 37.173615, 63.358627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064644, 37.369114, 63.043995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267704, -0.755547, -0.597899,
		-0.886527, -0.436198, 0.154276,
		-0.377365, 0.488754, -0.786584,
		31.951433, 37.515739, 62.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978956, 36.674454, 62.987370>,  <32.215591, 37.173615, 63.358627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978956, 36.674454, 62.987370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992119, 36.979153, 62.728554>,  <32.000015, 37.161972, 62.573265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992119, 36.979153, 62.728554>,  <31.978956, 36.674454, 62.987370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992119, 36.979153, 62.728554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263192, -0.631140, -0.729653,
		-0.964182, -0.146285, -0.221255,
		0.032905, 0.761750, -0.647035,
		32.001991, 37.207676, 62.534443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593445, 36.368652, 62.468655>,  <31.978956, 36.674454, 62.987370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593445, 36.368652, 62.468655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799255, 36.672485, 62.309509>,  <31.922741, 36.854786, 62.214024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799255, 36.672485, 62.309509>,  <31.593445, 36.368652, 62.468655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799255, 36.672485, 62.309509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354826, -0.611008, -0.707650,
		-0.780615, 0.222934, -0.583901,
		0.514527, 0.759586, -0.397859,
		31.953613, 36.900360, 62.190151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553654, 36.185665, 61.781281>,  <31.593445, 36.368652, 62.468655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553654, 36.185665, 61.781281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861279, 36.437862, 61.823269>,  <32.045853, 36.589180, 61.848461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861279, 36.437862, 61.823269>,  <31.553654, 36.185665, 61.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861279, 36.437862, 61.823269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513598, -0.511813, -0.688669,
		-0.380477, 0.583542, -0.717437,
		0.769061, 0.630497, 0.104973,
		32.091995, 36.627010, 61.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869150, 36.290672, 61.395123>,  <31.553654, 36.185665, 61.781281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869150, 36.290672, 61.395123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650158, 35.960503, 61.450176>,  <30.518763, 35.762402, 61.483208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650158, 35.960503, 61.450176>,  <30.869150, 36.290672, 61.395123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650158, 35.960503, 61.450176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414719, 0.410487, 0.812102,
		-0.726824, 0.387530, -0.567051,
		-0.547481, -0.825422, 0.137636,
		30.485914, 35.712875, 61.491467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210648, 36.504967, 61.465023>,  <30.869150, 36.290672, 61.395123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210648, 36.504967, 61.465023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225733, 36.151180, 61.651054>,  <30.234783, 35.938908, 61.762672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225733, 36.151180, 61.651054>,  <30.210648, 36.504967, 61.465023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225733, 36.151180, 61.651054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424063, 0.407260, 0.808894,
		-0.904847, -0.227729, -0.359710,
		0.037713, -0.884465, 0.465080,
		30.237047, 35.885841, 61.790577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517937, 36.309685, 61.604980>,  <30.210648, 36.504967, 61.465023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517937, 36.309685, 61.604980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770393, 36.118774, 61.849560>,  <29.921867, 36.004227, 61.996307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770393, 36.118774, 61.849560>,  <29.517937, 36.309685, 61.604980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770393, 36.118774, 61.849560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495511, 0.358387, 0.791219,
		-0.596763, -0.802351, -0.010302,
		0.631143, -0.477275, 0.611446,
		29.959736, 35.975594, 62.032993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100094, 36.359444, 62.170540>,  <29.517937, 36.309685, 61.604980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100094, 36.359444, 62.170540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448273, 36.221882, 62.311428>,  <29.657179, 36.139343, 62.395962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448273, 36.221882, 62.311428>,  <29.100094, 36.359444, 62.170540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448273, 36.221882, 62.311428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276303, 0.250840, 0.927758,
		-0.407410, -0.904881, 0.123320,
		0.870445, -0.343904, 0.352216,
		29.709406, 36.118710, 62.417091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901093, 35.998207, 62.705799>,  <29.100094, 36.359444, 62.170540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901093, 35.998207, 62.705799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289259, 36.059940, 62.780067>,  <29.522160, 36.096981, 62.824627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289259, 36.059940, 62.780067>,  <28.901093, 35.998207, 62.705799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289259, 36.059940, 62.780067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234588, 0.420843, 0.876276,
		0.057101, -0.893908, 0.444598,
		0.970417, 0.154334, 0.185670,
		29.580383, 36.106239, 62.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071983, 35.721512, 63.398911>,  <28.901093, 35.998207, 62.705799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071983, 35.721512, 63.398911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340939, 36.002560, 63.305767>,  <29.502312, 36.171188, 63.249882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340939, 36.002560, 63.305767>,  <29.071983, 35.721512, 63.398911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340939, 36.002560, 63.305767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169304, 0.452239, 0.875680,
		0.720577, -0.549372, 0.423036,
		0.672388, 0.702617, -0.232862,
		29.542656, 36.213345, 63.235909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393003, 35.872562, 64.012794>,  <29.071983, 35.721512, 63.398911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393003, 35.872562, 64.012794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449688, 36.197639, 63.786716>,  <29.483700, 36.392685, 63.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449688, 36.197639, 63.786716>,  <29.393003, 35.872562, 64.012794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449688, 36.197639, 63.786716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263068, 0.581348, 0.769955,
		0.954313, 0.039574, 0.296177,
		0.141712, 0.812692, -0.565199,
		29.492201, 36.441448, 63.617157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889551, 36.363155, 64.425095>,  <29.393003, 35.872562, 64.012794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889551, 36.363155, 64.425095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737793, 36.608612, 64.148109>,  <29.646738, 36.755886, 63.981918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737793, 36.608612, 64.148109>,  <29.889551, 36.363155, 64.425095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737793, 36.608612, 64.148109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140899, 0.701371, 0.698731,
		0.914443, 0.362664, -0.179638,
		-0.379397, 0.613639, -0.692463,
		29.623974, 36.792706, 63.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180794, 37.017227, 64.542755>,  <29.889551, 36.363155, 64.425095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180794, 37.017227, 64.542755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849627, 37.081230, 64.327744>,  <29.650927, 37.119633, 64.198738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849627, 37.081230, 64.327744>,  <30.180794, 37.017227, 64.542755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849627, 37.081230, 64.327744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281100, 0.710975, 0.644591,
		0.485316, 0.684771, -0.543652,
		-0.827920, 0.160010, -0.537536,
		29.601250, 37.129234, 64.166481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.129002, 33.324497, 47.680977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266716, 33.693989, 47.613811>,  <36.349346, 33.915684, 47.573513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266716, 33.693989, 47.613811>,  <36.129002, 33.324497, 47.680977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266716, 33.693989, 47.613811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704999, 0.372473, 0.603523,
		0.620035, -0.089404, 0.779464,
		0.344287, 0.923726, -0.167917,
		36.370003, 33.971107, 47.563438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256756, 33.619728, 48.356781>,  <36.129002, 33.324497, 47.680977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256756, 33.619728, 48.356781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216679, 33.900749, 48.074966>,  <36.192631, 34.069363, 47.905876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216679, 33.900749, 48.074966>,  <36.256756, 33.619728, 48.356781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216679, 33.900749, 48.074966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726073, 0.432516, 0.534554,
		0.680278, 0.565105, 0.466773,
		-0.100192, 0.702557, -0.704539,
		36.186623, 34.111515, 47.863605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059109, 34.125759, 48.745701>,  <36.256756, 33.619728, 48.356781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059109, 34.125759, 48.745701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963829, 34.244514, 48.375813>,  <35.906662, 34.315769, 48.153877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963829, 34.244514, 48.375813>,  <36.059109, 34.125759, 48.745701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963829, 34.244514, 48.375813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767958, 0.525300, 0.366470,
		0.594560, 0.797443, 0.102874,
		-0.238199, 0.296892, -0.924725,
		35.892368, 34.333584, 48.098396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876938, 34.802055, 48.808624>,  <36.059109, 34.125759, 48.745701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876938, 34.802055, 48.808624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695633, 34.676201, 48.475021>,  <35.586849, 34.600689, 48.274860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695633, 34.676201, 48.475021>,  <35.876938, 34.802055, 48.808624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695633, 34.676201, 48.475021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873585, 0.342807, 0.345447,
		0.177213, 0.885150, -0.430239,
		-0.453261, -0.314633, -0.834003,
		35.559654, 34.581810, 48.224819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474354, 35.307823, 48.616215>,  <35.876938, 34.802055, 48.808624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474354, 35.307823, 48.616215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309963, 34.980030, 48.456440>,  <35.211330, 34.783356, 48.360573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309963, 34.980030, 48.456440>,  <35.474354, 35.307823, 48.616215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309963, 34.980030, 48.456440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883778, 0.250620, 0.395127,
		-0.223691, 0.515404, -0.827237,
		-0.410972, -0.819480, -0.399441,
		35.186672, 34.734184, 48.336609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900436, 35.523472, 48.520042>,  <35.474354, 35.307823, 48.616215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900436, 35.523472, 48.520042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826447, 35.132069, 48.483589>,  <34.782055, 34.897228, 48.461716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.826447, 35.132069, 48.483589>,  <34.900436, 35.523472, 48.520042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826447, 35.132069, 48.483589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934953, 0.146651, 0.323042,
		-0.302735, 0.144958, -0.941987,
		-0.184971, -0.978510, -0.091133,
		34.770954, 34.838516, 48.456249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142899, 35.543610, 48.392372>,  <34.900436, 35.523472, 48.520042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142899, 35.543610, 48.392372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249374, 35.178310, 48.515739>,  <34.313259, 34.959129, 48.589760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249374, 35.178310, 48.515739>,  <34.142899, 35.543610, 48.392372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249374, 35.178310, 48.515739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903295, -0.124654, 0.410510,
		-0.336453, -0.387862, -0.858116,
		0.266189, -0.913250, 0.308413,
		34.329231, 34.904335, 48.608265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623123, 35.157902, 48.255299>,  <34.142899, 35.543610, 48.392372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623123, 35.157902, 48.255299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821590, 34.921761, 48.509953>,  <33.940670, 34.780075, 48.662743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821590, 34.921761, 48.509953>,  <33.623123, 35.157902, 48.255299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821590, 34.921761, 48.509953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859029, -0.227355, 0.458670,
		-0.126035, -0.774464, -0.619935,
		0.496169, -0.590351, 0.636633,
		33.970440, 34.744656, 48.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249290, 34.533379, 48.313484>,  <33.623123, 35.157902, 48.255299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249290, 34.533379, 48.313484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.474560, 34.584846, 48.639988>,  <33.609722, 34.615726, 48.835888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.474560, 34.584846, 48.639988>,  <33.249290, 34.533379, 48.313484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474560, 34.584846, 48.639988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782021, -0.236150, 0.576781,
		0.266975, -0.963160, -0.032369,
		0.563176, 0.128673, 0.816257,
		33.643513, 34.623447, 48.884865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094532, 33.949417, 48.646736>,  <33.249290, 34.533379, 48.313484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094532, 33.949417, 48.646736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269005, 34.173771, 48.928204>,  <33.373688, 34.308384, 49.097084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269005, 34.173771, 48.928204>,  <33.094532, 33.949417, 48.646736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269005, 34.173771, 48.928204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670395, -0.319083, 0.669892,
		0.600262, -0.763934, 0.236835,
		0.436183, 0.560884, 0.703672,
		33.399860, 34.342037, 49.139305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118992, 33.505211, 49.327602>,  <33.094532, 33.949417, 48.646736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118992, 33.505211, 49.327602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161263, 33.881523, 49.456448>,  <33.186626, 34.107311, 49.533756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161263, 33.881523, 49.456448>,  <33.118992, 33.505211, 49.327602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161263, 33.881523, 49.456448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620093, -0.190888, 0.760951,
		0.777378, -0.280155, 0.563201,
		0.105676, 0.940784, 0.322114,
		33.192966, 34.163757, 49.553082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195389, 33.481606, 50.029530>,  <33.118992, 33.505211, 49.327602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195389, 33.481606, 50.029530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071365, 33.860638, 49.998646>,  <32.996952, 34.088055, 49.980114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.071365, 33.860638, 49.998646>,  <33.195389, 33.481606, 50.029530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071365, 33.860638, 49.998646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662620, -0.157151, 0.732283,
		0.681760, 0.278214, 0.676609,
		-0.310061, 0.947576, -0.077211,
		32.978348, 34.144909, 49.975483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241631, 33.722511, 50.678791>,  <33.195389, 33.481606, 50.029530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241631, 33.722511, 50.678791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967419, 33.935612, 50.480305>,  <32.802891, 34.063473, 50.361214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967419, 33.935612, 50.480305>,  <33.241631, 33.722511, 50.678791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967419, 33.935612, 50.480305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655045, -0.153861, 0.739759,
		0.317756, 0.832170, 0.454449,
		-0.685527, 0.532747, -0.496219,
		32.761761, 34.095436, 50.331440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990364, 34.191006, 51.181385>,  <33.241631, 33.722511, 50.678791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990364, 34.191006, 51.181385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716785, 34.185837, 50.889618>,  <32.552639, 34.182735, 50.714558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716785, 34.185837, 50.889618>,  <32.990364, 34.191006, 51.181385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716785, 34.185837, 50.889618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714667, -0.188949, 0.673461,
		-0.146523, 0.981902, 0.119999,
		-0.683946, -0.012918, -0.729418,
		32.511600, 34.181961, 50.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420956, 34.539368, 51.443523>,  <32.990364, 34.191006, 51.181385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420956, 34.539368, 51.443523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.258064, 34.339455, 51.137745>,  <32.160328, 34.219505, 50.954277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.258064, 34.339455, 51.137745>,  <32.420956, 34.539368, 51.443523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258064, 34.339455, 51.137745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880435, -0.007771, 0.474104,
		-0.242892, 0.866113, -0.436865,
		-0.407233, -0.499787, -0.764444,
		32.135895, 34.189518, 50.908413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770418, 34.936726, 51.188503>,  <32.420956, 34.539368, 51.443523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770418, 34.936726, 51.188503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731297, 34.562157, 51.053711>,  <31.707823, 34.337418, 50.972836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.731297, 34.562157, 51.053711>,  <31.770418, 34.936726, 51.188503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731297, 34.562157, 51.053711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969090, 0.012550, 0.246388,
		-0.226493, 0.350662, -0.908701,
		-0.097803, -0.936418, -0.336981,
		31.701956, 34.281231, 50.952618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244282, 34.983212, 50.940414>,  <31.770418, 34.936726, 51.188503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244282, 34.983212, 50.940414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311726, 34.593903, 51.002789>,  <31.352192, 34.360317, 51.040215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311726, 34.593903, 51.002789>,  <31.244282, 34.983212, 50.940414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311726, 34.593903, 51.002789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984540, -0.158681, 0.074166,
		-0.047439, -0.166033, -0.984978,
		0.168612, -0.973269, 0.155938,
		31.362309, 34.301922, 51.049568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829969, 34.591892, 50.612843>,  <31.244282, 34.983212, 50.940414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829969, 34.591892, 50.612843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.875284, 34.292683, 50.874416>,  <30.902473, 34.113159, 51.031361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.875284, 34.292683, 50.874416>,  <30.829969, 34.591892, 50.612843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875284, 34.292683, 50.874416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984176, -0.174739, -0.029379,
		0.136244, -0.640258, -0.755981,
		0.113289, -0.748021, 0.653934,
		30.909271, 34.068275, 51.070595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381821, 34.047974, 50.386082>,  <30.829969, 34.591892, 50.612843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381821, 34.047974, 50.386082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.451628, 33.924320, 50.760029>,  <30.493511, 33.850128, 50.984398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.451628, 33.924320, 50.760029>,  <30.381821, 34.047974, 50.386082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451628, 33.924320, 50.760029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967681, -0.229372, 0.104795,
		0.182036, -0.922942, -0.339177,
		0.174518, -0.309138, 0.934867,
		30.503983, 33.831577, 51.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894161, 33.505600, 50.476887>,  <30.381821, 34.047974, 50.386082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894161, 33.505600, 50.476887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.987995, 33.645355, 50.839741>,  <30.044294, 33.729210, 51.057453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.987995, 33.645355, 50.839741>,  <29.894161, 33.505600, 50.476887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987995, 33.645355, 50.839741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933931, -0.177905, 0.310035,
		0.269708, -0.919932, 0.284575,
		0.234583, 0.349392, 0.907136,
		30.058371, 33.750172, 51.111881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695097, 32.917950, 50.907734>,  <29.894161, 33.505600, 50.476887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695097, 32.917950, 50.907734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.703276, 33.245731, 51.136848>,  <29.708183, 33.442398, 51.274315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.703276, 33.245731, 51.136848>,  <29.695097, 32.917950, 50.907734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703276, 33.245731, 51.136848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934348, -0.188207, 0.302608,
		0.355775, -0.541367, 0.761804,
		0.020445, 0.819451, 0.572785,
		29.709410, 33.491566, 51.308685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301670, 32.816082, 51.464722>,  <29.695097, 32.917950, 50.907734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301670, 32.816082, 51.464722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.323114, 33.209526, 51.533585>,  <29.335981, 33.445591, 51.574902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.323114, 33.209526, 51.533585>,  <29.301670, 32.816082, 51.464722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323114, 33.209526, 51.533585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937187, -0.009949, 0.348687,
		0.344684, -0.180038, 0.921292,
		0.053611, 0.983609, 0.172158,
		29.339197, 33.504608, 51.585232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896793, 32.915764, 52.104893>,  <29.301670, 32.816082, 51.464722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896793, 32.915764, 52.104893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.926193, 33.275272, 51.932003>,  <28.943832, 33.490978, 51.828270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.926193, 33.275272, 51.932003>,  <28.896793, 32.915764, 52.104893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926193, 33.275272, 51.932003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938295, 0.209174, 0.275406,
		0.337935, 0.385311, 0.858682,
		0.073497, 0.898767, -0.432222,
		28.948242, 33.544903, 51.802338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695810, 33.410191, 52.678001>,  <28.896793, 32.915764, 52.104893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695810, 33.410191, 52.678001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.637226, 33.611355, 52.337265>,  <28.602076, 33.732052, 52.132824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.637226, 33.611355, 52.337265>,  <28.695810, 33.410191, 52.678001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637226, 33.611355, 52.337265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939068, 0.200016, 0.279543,
		0.310967, 0.840876, 0.442974,
		-0.146460, 0.502912, -0.851839,
		28.593288, 33.762230, 52.081715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235781, 33.930550, 52.929466>,  <28.695810, 33.410191, 52.678001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235781, 33.930550, 52.929466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227011, 33.910961, 52.530041>,  <28.221748, 33.899208, 52.290386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227011, 33.910961, 52.530041>,  <28.235781, 33.930550, 52.929466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227011, 33.910961, 52.530041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954585, 0.297872, 0.006350,
		0.297132, 0.953349, -0.053281,
		-0.021924, -0.048974, -0.998559,
		28.220434, 33.896271, 52.230473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978882, 34.659920, 52.686584>,  <28.235781, 33.930550, 52.929466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978882, 34.659920, 52.686584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895317, 34.376991, 52.416458>,  <27.845179, 34.207233, 52.254383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895317, 34.376991, 52.416458>,  <27.978882, 34.659920, 52.686584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895317, 34.376991, 52.416458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976866, 0.183208, 0.110307,
		0.045702, 0.682741, -0.729229,
		-0.208912, -0.707318, -0.675320,
		27.832644, 34.164795, 52.213863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588614, 34.991253, 52.235176>,  <27.978882, 34.659920, 52.686584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588614, 34.991253, 52.235176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.514935, 34.598137, 52.240788>,  <27.470726, 34.362267, 52.244156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.514935, 34.598137, 52.240788>,  <27.588614, 34.991253, 52.235176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514935, 34.598137, 52.240788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982512, 0.184504, 0.025090,
		-0.027247, -0.009164, -0.999587,
		-0.184198, -0.982789, 0.014031,
		27.459675, 34.303299, 52.244995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151400, 34.915836, 51.669579>,  <27.588614, 34.991253, 52.235176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151400, 34.915836, 51.669579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.069191, 34.600262, 51.901215>,  <27.019865, 34.410919, 52.040195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.069191, 34.600262, 51.901215>,  <27.151400, 34.915836, 51.669579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069191, 34.600262, 51.901215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976565, 0.203951, -0.068732,
		-0.063881, -0.579647, -0.812360,
		-0.205521, -0.788932, 0.579092,
		27.007534, 34.363583, 52.074944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564455, 34.670715, 51.353554>,  <27.151400, 34.915836, 51.669579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564455, 34.670715, 51.353554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577623, 34.475330, 51.702339>,  <26.585524, 34.358101, 51.911610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577623, 34.475330, 51.702339>,  <26.564455, 34.670715, 51.353554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577623, 34.475330, 51.702339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995303, 0.063447, 0.073118,
		-0.091039, -0.870275, -0.484080,
		0.032919, -0.488463, 0.871964,
		26.587500, 34.328793, 51.963928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968904, 34.281559, 51.297611>,  <26.564455, 34.670715, 51.353554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968904, 34.281559, 51.297611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.044958, 34.266319, 51.690018>,  <26.090591, 34.257175, 51.925461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.044958, 34.266319, 51.690018>,  <25.968904, 34.281559, 51.297611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044958, 34.266319, 51.690018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956140, 0.219594, 0.193842,
		-0.222810, -0.974847, 0.005329,
		0.190136, -0.038095, 0.981018,
		26.101999, 34.254890, 51.984322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418644, 34.114647, 51.528759>,  <25.968904, 34.281559, 51.297611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418644, 34.114647, 51.528759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.579346, 34.250744, 51.868835>,  <25.675768, 34.332401, 52.072880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.579346, 34.250744, 51.868835>,  <25.418644, 34.114647, 51.528759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579346, 34.250744, 51.868835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899377, 0.321365, 0.296389,
		-0.172377, -0.883718, 0.435119,
		0.401756, 0.340245, 0.850192,
		25.699873, 34.352818, 52.123894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020145, 33.800617, 52.057011>,  <25.418644, 34.114647, 51.528759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020145, 33.800617, 52.057011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.209276, 34.126308, 52.191753>,  <25.322754, 34.321724, 52.272598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.209276, 34.126308, 52.191753>,  <25.020145, 33.800617, 52.057011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209276, 34.126308, 52.191753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870626, 0.372769, 0.321020,
		0.135814, -0.445061, 0.885141,
		0.472827, 0.814226, 0.336854,
		25.351124, 34.370575, 52.292809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832407, 33.814976, 52.715710>,  <25.020145, 33.800617, 52.057011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832407, 33.814976, 52.715710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.951944, 34.184174, 52.618732>,  <25.023666, 34.405693, 52.560547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.951944, 34.184174, 52.618732>,  <24.832407, 33.814976, 52.715710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951944, 34.184174, 52.618732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869059, 0.368174, 0.330433,
		0.394248, 0.111950, 0.912160,
		0.298841, 0.922993, -0.242443,
		25.041597, 34.461071, 52.546001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709896, 34.198799, 53.337906>,  <24.832407, 33.814976, 52.715710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709896, 34.198799, 53.337906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.722496, 34.455231, 53.031174>,  <24.730055, 34.609089, 52.847134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.722496, 34.455231, 53.031174>,  <24.709896, 34.198799, 53.337906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722496, 34.455231, 53.031174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777441, 0.497891, 0.384305,
		0.628167, 0.584062, 0.514080,
		0.031498, 0.641075, -0.766831,
		24.731945, 34.647552, 52.801125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505291, 34.829144, 53.617554>,  <24.709896, 34.198799, 53.337906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505291, 34.829144, 53.617554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.433867, 34.872330, 53.226360>,  <24.391012, 34.898239, 52.991642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.433867, 34.872330, 53.226360>,  <24.505291, 34.829144, 53.617554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433867, 34.872330, 53.226360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848049, 0.487128, 0.208613,
		0.498927, 0.866632, 0.004573,
		-0.178564, 0.107961, -0.977987,
		24.380297, 34.904716, 52.932964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.151608, 31.168972, 50.002018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758564, 31.242306, 50.013779>,  <34.522736, 31.286306, 50.020836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758564, 31.242306, 50.013779>,  <35.151608, 31.168972, 50.002018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758564, 31.242306, 50.013779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155112, 0.723454, 0.672722,
		0.102059, 0.665585, -0.739311,
		-0.982611, 0.183333, 0.029405,
		34.463779, 31.297306, 50.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049549, 31.862242, 50.005215>,  <35.151608, 31.168972, 50.002018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049549, 31.862242, 50.005215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694046, 31.744234, 50.145538>,  <34.480743, 31.673429, 50.229733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694046, 31.744234, 50.145538>,  <35.049549, 31.862242, 50.005215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694046, 31.744234, 50.145538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090409, 0.637482, 0.765143,
		-0.449367, 0.711745, -0.539896,
		-0.888761, -0.295018, 0.350811,
		34.427418, 31.655729, 50.250782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694748, 32.466236, 50.137871>,  <35.049549, 31.862242, 50.005215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694748, 32.466236, 50.137871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504173, 32.180538, 50.342949>,  <34.389828, 32.009117, 50.465996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504173, 32.180538, 50.342949>,  <34.694748, 32.466236, 50.137871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504173, 32.180538, 50.342949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102723, 0.624362, 0.774351,
		-0.873189, 0.316261, -0.370836,
		-0.476433, -0.714249, 0.512699,
		34.361244, 31.966263, 50.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049976, 32.774899, 50.460667>,  <34.694748, 32.466236, 50.137871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049976, 32.774899, 50.460667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114559, 32.459202, 50.697659>,  <34.153309, 32.269783, 50.839855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114559, 32.459202, 50.697659>,  <34.049976, 32.774899, 50.460667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114559, 32.459202, 50.697659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125166, 0.579132, 0.805568,
		-0.978910, -0.204223, -0.005280,
		0.161458, -0.789239, 0.592480,
		34.162998, 32.222431, 50.875404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531639, 32.795208, 51.091484>,  <34.049976, 32.774899, 50.460667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531639, 32.795208, 51.091484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789940, 32.518017, 51.219727>,  <33.944920, 32.351704, 51.296673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789940, 32.518017, 51.219727>,  <33.531639, 32.795208, 51.091484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789940, 32.518017, 51.219727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130466, 0.313576, 0.940558,
		-0.752316, -0.649198, 0.112084,
		0.645755, -0.692974, 0.320606,
		33.983665, 32.310123, 51.315907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237293, 32.419334, 51.613689>,  <33.531639, 32.795208, 51.091484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237293, 32.419334, 51.613689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621933, 32.334660, 51.683559>,  <33.852718, 32.283855, 51.725479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621933, 32.334660, 51.683559>,  <33.237293, 32.419334, 51.613689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621933, 32.334660, 51.683559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130029, 0.209079, 0.969215,
		-0.241691, -0.954712, 0.173525,
		0.961602, -0.211687, 0.174673,
		33.910412, 32.271152, 51.735962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193993, 31.874561, 52.014843>,  <33.237293, 32.419334, 51.613689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193993, 31.874561, 52.014843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532349, 32.077473, 52.080730>,  <33.735363, 32.199219, 52.120262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532349, 32.077473, 52.080730>,  <33.193993, 31.874561, 52.014843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532349, 32.077473, 52.080730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269100, 0.139280, 0.952988,
		0.460488, -0.850453, 0.254325,
		0.845894, 0.507278, 0.164720,
		33.786118, 32.229656, 52.130146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523403, 31.556219, 52.699642>,  <33.193993, 31.874561, 52.014843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523403, 31.556219, 52.699642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715282, 31.903271, 52.647312>,  <33.830410, 32.111500, 52.615913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715282, 31.903271, 52.647312>,  <33.523403, 31.556219, 52.699642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715282, 31.903271, 52.647312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043979, 0.172686, 0.983995,
		0.876332, -0.466264, 0.120994,
		0.479696, 0.867627, -0.130825,
		33.859192, 32.163559, 52.608067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893612, 31.570904, 53.285461>,  <33.523403, 31.556219, 52.699642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893612, 31.570904, 53.285461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906784, 31.945631, 53.146156>,  <33.914688, 32.170467, 53.062572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906784, 31.945631, 53.146156>,  <33.893612, 31.570904, 53.285461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906784, 31.945631, 53.146156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007374, 0.348218, 0.937384,
		0.999430, -0.033433, 0.004558,
		0.032927, 0.936817, -0.348266,
		33.916660, 32.226677, 53.041676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496723, 31.927681, 53.643253>,  <33.893612, 31.570904, 53.285461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496723, 31.927681, 53.643253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231457, 32.197338, 53.513180>,  <34.072296, 32.359131, 53.435135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231457, 32.197338, 53.513180>,  <34.496723, 31.927681, 53.643253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231457, 32.197338, 53.513180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130929, 0.323281, 0.937202,
		0.736934, 0.664094, -0.126124,
		-0.663163, 0.674143, -0.325186,
		34.032509, 32.399582, 53.415623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754391, 32.530403, 53.890949>,  <34.496723, 31.927681, 53.643253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754391, 32.530403, 53.890949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372116, 32.601830, 53.797337>,  <34.142750, 32.644688, 53.741169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372116, 32.601830, 53.797337>,  <34.754391, 32.530403, 53.890949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372116, 32.601830, 53.797337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133552, 0.445466, 0.885282,
		0.262335, 0.877310, -0.401880,
		-0.955691, 0.178568, -0.234028,
		34.085407, 32.655399, 53.727127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591007, 33.182629, 54.128895>,  <34.754391, 32.530403, 53.890949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591007, 33.182629, 54.128895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216759, 33.050014, 54.080395>,  <33.992210, 32.970448, 54.051296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216759, 33.050014, 54.080395>,  <34.591007, 33.182629, 54.128895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216759, 33.050014, 54.080395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259765, 0.414022, 0.872415,
		-0.239034, 0.847745, -0.473488,
		-0.935620, -0.331533, -0.121250,
		33.936073, 32.950554, 54.044022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736965, 33.958069, 54.044106>,  <34.591007, 33.182629, 54.128895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736965, 33.958069, 54.044106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105228, 33.985558, 54.197815>,  <35.326187, 34.002052, 54.290043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105228, 33.985558, 54.197815>,  <34.736965, 33.958069, 54.044106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105228, 33.985558, 54.197815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390345, -0.173894, -0.904097,
		0.004694, 0.982364, -0.186922,
		0.920657, 0.068720, 0.384277,
		35.381424, 34.006172, 54.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071968, 34.364918, 53.562374>,  <34.736965, 33.958069, 54.044106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071968, 34.364918, 53.562374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366306, 34.163681, 53.743671>,  <35.542908, 34.042938, 53.852451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366306, 34.163681, 53.743671>,  <35.071968, 34.364918, 53.562374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366306, 34.163681, 53.743671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432751, -0.165433, -0.886204,
		0.520823, 0.848252, 0.095980,
		0.735846, -0.503091, 0.453243,
		35.587059, 34.012753, 53.879646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693291, 34.631905, 53.250572>,  <35.071968, 34.364918, 53.562374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693291, 34.631905, 53.250572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842484, 34.304867, 53.426037>,  <35.931999, 34.108646, 53.531315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842484, 34.304867, 53.426037>,  <35.693291, 34.631905, 53.250572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842484, 34.304867, 53.426037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664646, -0.094451, -0.741165,
		0.647403, 0.567997, 0.508181,
		0.372981, -0.817593, 0.438665,
		35.954376, 34.059589, 53.557636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321411, 34.737312, 53.264633>,  <35.693291, 34.631905, 53.250572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321411, 34.737312, 53.264633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306637, 34.340836, 53.315506>,  <36.297771, 34.102951, 53.346027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306637, 34.340836, 53.315506>,  <36.321411, 34.737312, 53.264633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306637, 34.340836, 53.315506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737313, -0.112939, -0.666043,
		0.674540, 0.069168, 0.734991,
		-0.036940, -0.991191, 0.127180,
		36.295555, 34.043480, 53.353661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012493, 34.453003, 53.383251>,  <36.321411, 34.737312, 53.264633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012493, 34.453003, 53.383251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816498, 34.126682, 53.260365>,  <36.698902, 33.930889, 53.186634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816498, 34.126682, 53.260365>,  <37.012493, 34.453003, 53.383251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816498, 34.126682, 53.260365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676041, -0.133120, -0.724740,
		0.550347, -0.562804, 0.616742,
		-0.489987, -0.815801, -0.307217,
		36.669502, 33.881943, 53.168198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573734, 34.004856, 53.193581>,  <37.012493, 34.453003, 53.383251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573734, 34.004856, 53.193581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251228, 33.854061, 53.011230>,  <37.057724, 33.763584, 52.901821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251228, 33.854061, 53.011230>,  <37.573734, 34.004856, 53.193581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251228, 33.854061, 53.011230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542932, -0.165595, -0.823288,
		0.234880, -0.911294, 0.338193,
		-0.806261, -0.376990, -0.455875,
		37.009350, 33.740963, 52.874466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680504, 33.295795, 53.077011>,  <37.573734, 34.004856, 53.193581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680504, 33.295795, 53.077011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407902, 33.403736, 52.804916>,  <37.244339, 33.468502, 52.641659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407902, 33.403736, 52.804916>,  <37.680504, 33.295795, 53.077011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407902, 33.403736, 52.804916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542382, -0.437775, -0.717060,
		-0.491295, -0.857631, 0.151982,
		-0.681507, 0.269856, -0.680240,
		37.203449, 33.484692, 52.600845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648071, 32.728054, 52.611523>,  <37.680504, 33.295795, 53.077011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648071, 32.728054, 52.611523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439491, 33.024490, 52.442348>,  <37.314342, 33.202354, 52.340843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.439491, 33.024490, 52.442348>,  <37.648071, 32.728054, 52.611523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439491, 33.024490, 52.442348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438650, -0.192327, -0.877836,
		-0.731900, -0.643266, -0.224791,
		-0.521449, 0.741093, -0.422933,
		37.283058, 33.246819, 52.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308846, 32.450829, 52.097450>,  <37.648071, 32.728054, 52.611523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308846, 32.450829, 52.097450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340000, 32.842339, 52.021618>,  <37.358692, 33.077244, 51.976116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340000, 32.842339, 52.021618>,  <37.308846, 32.450829, 52.097450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340000, 32.842339, 52.021618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266989, -0.203693, -0.941927,
		-0.960547, 0.022748, -0.277186,
		0.077888, 0.978770, -0.189583,
		37.363365, 33.135971, 51.964745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968277, 32.509941, 51.453350>,  <37.308846, 32.450829, 52.097450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968277, 32.509941, 51.453350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195309, 32.838760, 51.471645>,  <37.331528, 33.036053, 51.482620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.195309, 32.838760, 51.471645>,  <36.968277, 32.509941, 51.453350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195309, 32.838760, 51.471645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207045, -0.088748, -0.974298,
		-0.796858, 0.562464, -0.220573,
		0.567582, 0.822045, 0.045736,
		37.365585, 33.085373, 51.485367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746819, 33.081287, 50.917366>,  <36.968277, 32.509941, 51.453350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746819, 33.081287, 50.917366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135891, 33.126690, 50.998371>,  <37.369335, 33.153931, 51.046974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135891, 33.126690, 50.998371>,  <36.746819, 33.081287, 50.917366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135891, 33.126690, 50.998371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192322, 0.094578, -0.976764,
		-0.130022, 0.989025, 0.070164,
		0.972680, 0.113507, 0.202509,
		37.427696, 33.160744, 51.059124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142338, 33.779171, 50.671360>,  <36.746819, 33.081287, 50.917366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142338, 33.779171, 50.671360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384064, 33.460503, 50.675678>,  <37.529099, 33.269302, 50.678268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384064, 33.460503, 50.675678>,  <37.142338, 33.779171, 50.671360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384064, 33.460503, 50.675678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241622, 0.170329, -0.955305,
		0.759228, 0.579911, 0.295426,
		0.604311, -0.796675, 0.010800,
		37.565357, 33.221500, 50.678917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786991, 34.419624, 50.957382>,  <37.142338, 33.779171, 50.671360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786991, 34.419624, 50.957382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480957, 34.460346, 50.703049>,  <36.297337, 34.484779, 50.550449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.480957, 34.460346, 50.703049>,  <36.786991, 34.419624, 50.957382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480957, 34.460346, 50.703049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547558, 0.416775, 0.725588,
		0.338867, 0.903291, -0.263124,
		-0.765081, 0.101802, -0.635836,
		36.251434, 34.490887, 50.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649471, 35.123333, 50.874950>,  <36.786991, 34.419624, 50.957382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649471, 35.123333, 50.874950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330883, 34.896488, 50.791023>,  <36.139732, 34.760380, 50.740665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330883, 34.896488, 50.791023>,  <36.649471, 35.123333, 50.874950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330883, 34.896488, 50.791023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504729, 0.432417, 0.747170,
		-0.333001, 0.700998, -0.630644,
		-0.796466, -0.567113, -0.209819,
		36.091942, 34.726353, 50.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197048, 35.534992, 50.549603>,  <36.649471, 35.123333, 50.874950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197048, 35.534992, 50.549603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030693, 35.229210, 50.746635>,  <35.930878, 35.045742, 50.864857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030693, 35.229210, 50.746635>,  <36.197048, 35.534992, 50.549603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030693, 35.229210, 50.746635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469315, 0.644367, 0.603768,
		-0.778960, 0.019925, -0.626758,
		-0.415892, -0.764457, 0.492585,
		35.905926, 34.999874, 50.894409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517136, 35.782322, 50.441620>,  <36.197048, 35.534992, 50.549603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517136, 35.782322, 50.441620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527237, 35.510284, 50.734695>,  <35.533298, 35.347061, 50.910542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527237, 35.510284, 50.734695>,  <35.517136, 35.782322, 50.441620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527237, 35.510284, 50.734695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823316, 0.401568, 0.401117,
		-0.567022, -0.613365, -0.549791,
		0.025253, -0.680093, 0.732691,
		35.534813, 35.306255, 50.954502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075039, 36.051281, 49.996338>,  <35.517136, 35.782322, 50.441620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075039, 36.051281, 49.996338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744774, 36.063114, 49.770985>,  <34.546616, 36.070213, 49.635773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744774, 36.063114, 49.770985>,  <35.075039, 36.051281, 49.996338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744774, 36.063114, 49.770985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168983, 0.939807, 0.296999,
		0.538261, 0.340424, -0.770965,
		-0.825664, 0.029583, -0.563387,
		34.497074, 36.071991, 49.601967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124184, 36.551785, 49.521931>,  <35.075039, 36.051281, 49.996338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124184, 36.551785, 49.521931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736530, 36.497730, 49.604404>,  <34.503937, 36.465298, 49.653889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736530, 36.497730, 49.604404>,  <35.124184, 36.551785, 49.521931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736530, 36.497730, 49.604404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066735, 0.948953, 0.308276,
		-0.237323, 0.285001, -0.928683,
		-0.969136, -0.135137, 0.206189,
		34.445789, 36.457188, 49.666260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770519, 37.174805, 49.295441>,  <35.124184, 36.551785, 49.521931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770519, 37.174805, 49.295441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512146, 36.990368, 49.538803>,  <34.357121, 36.879707, 49.684822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512146, 36.990368, 49.538803>,  <34.770519, 37.174805, 49.295441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512146, 36.990368, 49.538803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310646, 0.886774, 0.342245,
		-0.697327, 0.032069, -0.716035,
		-0.645937, -0.461090, 0.608409,
		34.318363, 36.852039, 49.721325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199894, 37.574799, 49.247700>,  <34.770519, 37.174805, 49.295441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199894, 37.574799, 49.247700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.177826, 37.361351, 49.585270>,  <34.164585, 37.233284, 49.787811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.177826, 37.361351, 49.585270>,  <34.199894, 37.574799, 49.247700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177826, 37.361351, 49.585270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411399, 0.782282, 0.467744,
		-0.909784, -0.321384, -0.262689,
		-0.055172, -0.533616, 0.843925,
		34.161274, 37.201267, 49.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667938, 37.758324, 49.550095>,  <34.199894, 37.574799, 49.247700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667938, 37.758324, 49.550095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826141, 37.578793, 49.870625>,  <33.921062, 37.471073, 50.062943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826141, 37.578793, 49.870625>,  <33.667938, 37.758324, 49.550095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826141, 37.578793, 49.870625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453537, 0.663234, 0.595335,
		-0.798671, -0.598892, 0.058754,
		0.395509, -0.448830, 0.801326,
		33.944794, 37.444145, 50.111023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176395, 37.821541, 50.022129>,  <33.667938, 37.758324, 49.550095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176395, 37.821541, 50.022129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505604, 37.739670, 50.234066>,  <33.703129, 37.690548, 50.361229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505604, 37.739670, 50.234066>,  <33.176395, 37.821541, 50.022129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505604, 37.739670, 50.234066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299305, 0.636527, 0.710809,
		-0.482751, -0.743599, 0.462615,
		0.823024, -0.204681, 0.529847,
		33.752510, 37.678265, 50.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921703, 37.749111, 50.797253>,  <33.176395, 37.821541, 50.022129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921703, 37.749111, 50.797253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318039, 37.788040, 50.834682>,  <33.555840, 37.811398, 50.857140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.318039, 37.788040, 50.834682>,  <32.921703, 37.749111, 50.797253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318039, 37.788040, 50.834682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134359, 0.642535, 0.754385,
		0.013293, -0.760050, 0.649728,
		0.990844, 0.097325, 0.093578,
		33.615292, 37.817238, 50.862755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109146, 37.546749, 51.387386>,  <32.921703, 37.749111, 50.797253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109146, 37.546749, 51.387386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416473, 37.782715, 51.288036>,  <33.600868, 37.924294, 51.228428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416473, 37.782715, 51.288036>,  <33.109146, 37.546749, 51.387386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416473, 37.782715, 51.288036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153592, 0.546624, 0.823172,
		0.621371, -0.594307, 0.510585,
		0.768315, 0.589917, -0.248375,
		33.646969, 37.959690, 51.213524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602268, 37.547516, 51.954090>,  <33.109146, 37.546749, 51.387386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602268, 37.547516, 51.954090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.732735, 37.866108, 51.750431>,  <33.811012, 38.057262, 51.628235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.732735, 37.866108, 51.750431>,  <33.602268, 37.547516, 51.954090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732735, 37.866108, 51.750431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138029, 0.572960, 0.807877,
		0.935183, -0.193221, 0.296815,
		0.326162, 0.796481, -0.509152,
		33.830582, 38.105053, 51.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261803, 37.867825, 52.224930>,  <33.602268, 37.547516, 51.954090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261803, 37.867825, 52.224930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059155, 38.165577, 52.050926>,  <33.937565, 38.344227, 51.946522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059155, 38.165577, 52.050926>,  <34.261803, 37.867825, 52.224930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059155, 38.165577, 52.050926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126844, 0.434712, 0.891591,
		0.852785, 0.506881, -0.125817,
		-0.506625, 0.744377, -0.435011,
		33.907166, 38.388889, 51.920422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396004, 38.487095, 52.531578>,  <34.261803, 37.867825, 52.224930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396004, 38.487095, 52.531578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079376, 38.639103, 52.340164>,  <33.889400, 38.730309, 52.225315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079376, 38.639103, 52.340164>,  <34.396004, 38.487095, 52.531578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079376, 38.639103, 52.340164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333679, 0.387246, 0.859476,
		0.511933, 0.840014, -0.179727,
		-0.791570, 0.380022, -0.478539,
		33.841904, 38.753109, 52.196602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283031, 39.189163, 52.779369>,  <34.396004, 38.487095, 52.531578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283031, 39.189163, 52.779369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939064, 39.037159, 52.643051>,  <33.732685, 38.945957, 52.561260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939064, 39.037159, 52.643051>,  <34.283031, 39.189163, 52.779369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939064, 39.037159, 52.643051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462271, 0.296664, 0.835641,
		-0.216449, 0.876119, -0.430773,
		-0.859916, -0.380007, -0.340792,
		33.681087, 38.923157, 52.540813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895222, 39.713337, 52.818264>,  <34.283031, 39.189163, 52.779369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895222, 39.713337, 52.818264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633629, 39.412918, 52.781940>,  <33.476673, 39.232666, 52.760147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633629, 39.412918, 52.781940>,  <33.895222, 39.713337, 52.818264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633629, 39.412918, 52.781940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563281, 0.403289, 0.721160,
		-0.505003, 0.522772, -0.686791,
		-0.653978, -0.751044, -0.090805,
		33.437435, 39.187603, 52.754700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201309, 40.056808, 52.877003>,  <33.895222, 39.713337, 52.818264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201309, 40.056808, 52.877003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136078, 39.672707, 52.967609>,  <33.096939, 39.442245, 53.021973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136078, 39.672707, 52.967609>,  <33.201309, 40.056808, 52.877003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136078, 39.672707, 52.967609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461644, 0.277176, 0.842650,
		-0.871946, 0.032848, -0.488499,
		-0.163080, -0.960258, 0.226518,
		33.087154, 39.384628, 53.035564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509575, 40.043327, 53.097443>,  <33.201309, 40.056808, 52.877003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509575, 40.043327, 53.097443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673012, 39.707108, 53.239727>,  <32.771076, 39.505375, 53.325096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.673012, 39.707108, 53.239727>,  <32.509575, 40.043327, 53.097443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673012, 39.707108, 53.239727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509111, 0.113572, 0.853175,
		-0.757533, -0.529699, -0.381528,
		0.408594, -0.840548, 0.355710,
		32.795589, 39.454945, 53.346439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891399, 39.666775, 53.293213>,  <32.509575, 40.043327, 53.097443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891399, 39.666775, 53.293213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193630, 39.505825, 53.499977>,  <32.374969, 39.409256, 53.624035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193630, 39.505825, 53.499977>,  <31.891399, 39.666775, 53.293213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193630, 39.505825, 53.499977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570166, -0.015464, 0.821384,
		-0.322514, -0.915343, -0.241107,
		0.755576, -0.402379, 0.516910,
		32.420303, 39.385113, 53.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548780, 39.187691, 53.765980>,  <31.891399, 39.666775, 53.293213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548780, 39.187691, 53.765980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904390, 39.266983, 53.931068>,  <32.117756, 39.314556, 54.030121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904390, 39.266983, 53.931068>,  <31.548780, 39.187691, 53.765980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904390, 39.266983, 53.931068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435010, 0.084472, 0.896455,
		0.142845, -0.976508, 0.161331,
		0.889023, 0.198235, 0.412724,
		32.171097, 39.326450, 54.054886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488901, 38.914848, 54.441143>,  <31.548780, 39.187691, 53.765980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488901, 38.914848, 54.441143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807875, 39.155632, 54.457851>,  <31.999258, 39.300102, 54.467876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807875, 39.155632, 54.457851>,  <31.488901, 38.914848, 54.441143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807875, 39.155632, 54.457851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272221, 0.297113, 0.915215,
		0.538511, -0.741195, 0.400794,
		0.797434, 0.601958, 0.041771,
		32.047104, 39.336220, 54.470383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689402, 38.759987, 55.062653>,  <31.488901, 38.914848, 54.441143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689402, 38.759987, 55.062653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836390, 39.119499, 54.967026>,  <31.924582, 39.335209, 54.909649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.836390, 39.119499, 54.967026>,  <31.689402, 38.759987, 55.062653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836390, 39.119499, 54.967026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241125, 0.340334, 0.908863,
		0.898235, -0.276333, 0.341782,
		0.367469, 0.898784, -0.239069,
		31.946630, 39.389133, 54.895306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138916, 38.979221, 55.574345>,  <31.689402, 38.759987, 55.062653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138916, 38.979221, 55.574345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037273, 39.314083, 55.380600>,  <31.976288, 39.514999, 55.264355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037273, 39.314083, 55.380600>,  <32.138916, 38.979221, 55.574345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037273, 39.314083, 55.380600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229581, 0.434273, 0.871034,
		0.939532, 0.332537, 0.081841,
		-0.254110, 0.837153, -0.484358,
		31.961040, 39.565228, 55.235294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315014, 39.487438, 55.982189>,  <32.138916, 38.979221, 55.574345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315014, 39.487438, 55.982189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078045, 39.698620, 55.738781>,  <31.935863, 39.825329, 55.592735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.078045, 39.698620, 55.738781>,  <32.315014, 39.487438, 55.982189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078045, 39.698620, 55.738781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261638, 0.588307, 0.765141,
		0.761956, 0.612501, -0.210395,
		-0.592426, 0.527956, -0.608517,
		31.900316, 39.857006, 55.556225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454037, 40.211464, 56.096355>,  <32.315014, 39.487438, 55.982189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454037, 40.211464, 56.096355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082989, 40.206432, 55.947025>,  <31.860361, 40.203415, 55.857430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082989, 40.206432, 55.947025>,  <32.454037, 40.211464, 56.096355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082989, 40.206432, 55.947025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355830, 0.333796, 0.872906,
		0.113634, 0.942561, -0.314111,
		-0.927616, -0.012578, -0.373322,
		31.804705, 40.202660, 55.835030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172981, 40.861809, 56.211102>,  <32.454037, 40.211464, 56.096355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172981, 40.861809, 56.211102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.851442, 40.625809, 56.180813>,  <31.658520, 40.484211, 56.162640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.851442, 40.625809, 56.180813>,  <32.172981, 40.861809, 56.211102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851442, 40.625809, 56.180813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274025, 0.254315, 0.927488,
		-0.527958, 0.766308, -0.366104,
		-0.803847, -0.589996, -0.075720,
		31.610289, 40.448811, 56.158096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620592, 41.220474, 56.348885>,  <32.172981, 40.861809, 56.211102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620592, 41.220474, 56.348885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450153, 40.862560, 56.402248>,  <31.347891, 40.647812, 56.434265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.450153, 40.862560, 56.402248>,  <31.620592, 41.220474, 56.348885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450153, 40.862560, 56.402248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384290, 0.312519, 0.868708,
		-0.819002, 0.318885, -0.477021,
		-0.426096, -0.894787, 0.133410,
		31.322325, 40.594124, 56.442272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938433, 41.361408, 56.660927>,  <31.620592, 41.220474, 56.348885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938433, 41.361408, 56.660927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012537, 40.973236, 56.722832>,  <31.056999, 40.740334, 56.759975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012537, 40.973236, 56.722832>,  <30.938433, 41.361408, 56.660927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012537, 40.973236, 56.722832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483669, 0.047047, 0.873986,
		-0.855420, -0.236767, -0.460649,
		0.185259, -0.970426, 0.154762,
		31.068115, 40.682110, 56.769260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325245, 41.024963, 57.066978>,  <30.938433, 41.361408, 56.660927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325245, 41.024963, 57.066978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642872, 40.788990, 57.125546>,  <30.833448, 40.647408, 57.160686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642872, 40.788990, 57.125546>,  <30.325245, 41.024963, 57.066978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642872, 40.788990, 57.125546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188245, -0.009630, 0.982075,
		-0.577947, -0.807396, -0.118699,
		0.794067, -0.589931, 0.146422,
		30.881092, 40.612011, 57.169472>
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
