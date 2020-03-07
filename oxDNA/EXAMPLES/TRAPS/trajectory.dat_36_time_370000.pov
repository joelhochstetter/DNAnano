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
	<36.546608, 52.587326, 50.133663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654991, 52.848717, 49.850948>,  <36.720020, 53.005550, 49.681320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654991, 52.848717, 49.850948>,  <36.546608, 52.587326, 50.133663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654991, 52.848717, 49.850948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820291, 0.227457, 0.524773,
		0.503690, -0.721964, -0.474409,
		0.270959, 0.653476, -0.706789,
		36.736279, 53.044758, 49.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244648, 52.496746, 49.705624>,  <36.546608, 52.587326, 50.133663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244648, 52.496746, 49.705624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115635, 52.863640, 49.799141>,  <37.038227, 53.083775, 49.855251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115635, 52.863640, 49.799141>,  <37.244648, 52.496746, 49.705624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115635, 52.863640, 49.799141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845891, 0.168458, 0.506054,
		0.424786, 0.360979, -0.830212,
		-0.322531, 0.917233, 0.233790,
		37.018875, 53.138809, 49.869278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793591, 53.042007, 49.508904>,  <37.244648, 52.496746, 49.705624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793591, 53.042007, 49.508904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562832, 53.112694, 49.827892>,  <37.424377, 53.155106, 50.019287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562832, 53.112694, 49.827892>,  <37.793591, 53.042007, 49.508904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562832, 53.112694, 49.827892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808161, -0.018257, 0.588678,
		0.118589, 0.984092, -0.132284,
		-0.576898, 0.176717, 0.797470,
		37.389763, 53.165710, 50.067135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218552, 53.496670, 49.908981>,  <37.793591, 53.042007, 49.508904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218552, 53.496670, 49.908981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950871, 53.330833, 50.155647>,  <37.790260, 53.231331, 50.303646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950871, 53.330833, 50.155647>,  <38.218552, 53.496670, 49.908981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950871, 53.330833, 50.155647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742563, -0.404082, 0.534152,
		0.027728, 0.815371, 0.578274,
		-0.669202, -0.414594, 0.616669,
		37.750111, 53.206455, 50.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270546, 53.664207, 50.582668>,  <38.218552, 53.496670, 49.908981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270546, 53.664207, 50.582668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128979, 53.290165, 50.575478>,  <38.044037, 53.065739, 50.571163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128979, 53.290165, 50.575478>,  <38.270546, 53.664207, 50.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128979, 53.290165, 50.575478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728398, -0.287642, 0.621851,
		-0.586667, 0.206988, 0.782929,
		-0.353918, -0.935103, -0.017981,
		38.022804, 53.009632, 50.570084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129581, 53.509377, 51.277012>,  <38.270546, 53.664207, 50.582668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129581, 53.509377, 51.277012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229420, 53.185638, 51.064346>,  <38.289322, 52.991394, 50.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229420, 53.185638, 51.064346>,  <38.129581, 53.509377, 51.277012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229420, 53.185638, 51.064346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589859, -0.308353, 0.746314,
		-0.767965, -0.499880, 0.400437,
		0.249592, -0.809344, -0.531663,
		38.304298, 52.942837, 50.904846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011383, 52.809643, 51.745361>,  <38.129581, 53.509377, 51.277012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011383, 52.809643, 51.745361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295040, 52.815628, 51.463402>,  <38.465237, 52.819218, 51.294224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295040, 52.815628, 51.463402>,  <38.011383, 52.809643, 51.745361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295040, 52.815628, 51.463402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705060, -0.016772, 0.708950,
		-0.001210, -0.999748, -0.022448,
		0.709147, 0.014969, -0.704902,
		38.507786, 52.820118, 51.251930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585094, 52.473225, 52.075043>,  <38.011383, 52.809643, 51.745361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585094, 52.473225, 52.075043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737247, 52.627899, 51.738998>,  <38.828537, 52.720703, 51.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737247, 52.627899, 51.738998>,  <38.585094, 52.473225, 52.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737247, 52.627899, 51.738998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924781, -0.149567, 0.349871,
		0.009639, -0.910000, -0.414496,
		0.380378, 0.386690, -0.840109,
		38.851360, 52.743908, 51.486965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958290, 51.999893, 51.589516>,  <38.585094, 52.473225, 52.075043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958290, 51.999893, 51.589516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129536, 52.356178, 51.528404>,  <39.232285, 52.569950, 51.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129536, 52.356178, 51.528404>,  <38.958290, 51.999893, 51.589516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129536, 52.356178, 51.528404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836298, -0.326399, 0.440533,
		0.342523, -0.316367, -0.884641,
		0.428116, 0.890716, -0.152778,
		39.257969, 52.623394, 51.482571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693737, 52.011955, 51.559261>,  <38.958290, 51.999893, 51.589516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693737, 52.011955, 51.559261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616802, 52.387482, 51.673553>,  <39.570641, 52.612797, 51.742126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616802, 52.387482, 51.673553>,  <39.693737, 52.011955, 51.559261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616802, 52.387482, 51.673553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876784, 0.033627, 0.479707,
		0.440746, 0.342785, -0.829603,
		-0.192334, 0.938812, 0.285728,
		39.559101, 52.669125, 51.759274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298664, 52.419868, 51.532909>,  <39.693737, 52.011955, 51.559261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298664, 52.419868, 51.532909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058472, 52.598549, 51.798203>,  <39.914356, 52.705757, 51.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058472, 52.598549, 51.798203>,  <40.298664, 52.419868, 51.532909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058472, 52.598549, 51.798203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787581, 0.186893, 0.587186,
		0.138340, 0.874948, -0.464035,
		-0.600482, 0.446697, 0.663237,
		39.878326, 52.732559, 51.997173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331425, 51.702896, 51.421276>,  <40.298664, 52.419868, 51.532909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331425, 51.702896, 51.421276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464478, 51.972843, 51.157791>,  <40.544312, 52.134811, 50.999699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464478, 51.972843, 51.157791>,  <40.331425, 51.702896, 51.421276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464478, 51.972843, 51.157791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318148, 0.737844, 0.595288,
		0.887770, 0.011554, 0.460142,
		0.332636, 0.674872, -0.658711,
		40.564270, 52.175304, 50.960178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086323, 51.901211, 51.321678>,  <40.331425, 51.702896, 51.421276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086323, 51.901211, 51.321678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044064, 52.280041, 51.442928>,  <41.018707, 52.507339, 51.515678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044064, 52.280041, 51.442928>,  <41.086323, 51.901211, 51.321678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044064, 52.280041, 51.442928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994401, 0.101301, 0.030092,
		-0.002208, 0.304612, -0.952474,
		-0.105653, 0.947074, 0.303130,
		41.012367, 52.564163, 51.533867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474464, 52.248413, 50.889729>,  <41.086323, 51.901211, 51.321678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474464, 52.248413, 50.889729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428135, 52.443966, 51.235580>,  <41.400337, 52.561298, 51.443092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428135, 52.443966, 51.235580>,  <41.474464, 52.248413, 50.889729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428135, 52.443966, 51.235580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990748, 0.118853, 0.065515,
		-0.070734, 0.864215, -0.498126,
		-0.115822, 0.488884, 0.864626,
		41.393387, 52.590630, 51.494968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908474, 52.878159, 50.924423>,  <41.474464, 52.248413, 50.889729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908474, 52.878159, 50.924423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867382, 52.776474, 51.309093>,  <41.842728, 52.715462, 51.539894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867382, 52.776474, 51.309093>,  <41.908474, 52.878159, 50.924423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867382, 52.776474, 51.309093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991056, 0.056626, 0.120841,
		-0.085174, 0.965490, 0.246119,
		-0.102734, -0.254210, 0.961677,
		41.836563, 52.700211, 51.597595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325329, 53.411171, 51.194626>,  <41.908474, 52.878159, 50.924423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325329, 53.411171, 51.194626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293884, 53.076347, 51.411201>,  <42.275017, 52.875454, 51.541149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293884, 53.076347, 51.411201>,  <42.325329, 53.411171, 51.194626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293884, 53.076347, 51.411201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995493, -0.094817, -0.002058,
		0.053061, 0.538840, 0.840735,
		-0.078607, -0.837055, 0.541443,
		42.270302, 52.825230, 51.573635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798882, 52.878719, 51.513123>,  <42.325329, 53.411171, 51.194626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798882, 52.878719, 51.513123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847618, 53.196144, 51.751587>,  <42.876862, 53.386600, 51.894665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847618, 53.196144, 51.751587>,  <42.798882, 52.878719, 51.513123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847618, 53.196144, 51.751587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985327, 0.024376, 0.168927,
		0.119522, -0.607997, 0.784891,
		0.121840, 0.793565, 0.596162,
		42.884171, 53.434212, 51.930435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190079, 52.722061, 50.939110>,  <42.798882, 52.878719, 51.513123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190079, 52.722061, 50.939110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503880, 52.587517, 50.730721>,  <43.692162, 52.506790, 50.605686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.503880, 52.587517, 50.730721>,  <43.190079, 52.722061, 50.939110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503880, 52.587517, 50.730721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404243, 0.914468, 0.018319,
		0.470254, -0.224972, 0.853375,
		0.784506, -0.336356, -0.520975,
		43.739231, 52.486610, 50.574429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740852, 52.945354, 51.315739>,  <43.190079, 52.722061, 50.939110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740852, 52.945354, 51.315739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842091, 52.881741, 50.934029>,  <43.902836, 52.843571, 50.705002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842091, 52.881741, 50.934029>,  <43.740852, 52.945354, 51.315739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842091, 52.881741, 50.934029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294472, 0.952255, -0.080598,
		0.921535, -0.260610, 0.287846,
		0.253099, -0.159037, -0.954279,
		43.918018, 52.834030, 50.647743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438843, 53.245586, 51.209114>,  <43.740852, 52.945354, 51.315739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438843, 53.245586, 51.209114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252186, 53.278145, 50.856834>,  <44.140194, 53.297680, 50.645466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252186, 53.278145, 50.856834>,  <44.438843, 53.245586, 51.209114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252186, 53.278145, 50.856834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236001, 0.971112, -0.035295,
		0.852379, -0.224315, -0.472368,
		-0.466639, 0.081394, -0.880694,
		44.112194, 53.302563, 50.592625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200325, 53.409233, 51.629166>,  <44.438843, 53.245586, 51.209114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200325, 53.409233, 51.629166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272655, 53.686798, 51.350372>,  <45.316055, 53.853336, 51.183094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272655, 53.686798, 51.350372>,  <45.200325, 53.409233, 51.629166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272655, 53.686798, 51.350372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750727, 0.555206, 0.357987,
		0.635383, 0.458514, 0.621332,
		0.180825, 0.693910, -0.696987,
		45.326904, 53.894970, 51.141277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645706, 52.760281, 51.933243>,  <45.200325, 53.409233, 51.629166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645706, 52.760281, 51.933243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881622, 52.983486, 51.699745>,  <46.023174, 53.117409, 51.559647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881622, 52.983486, 51.699745>,  <45.645706, 52.760281, 51.933243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881622, 52.983486, 51.699745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304266, 0.823141, 0.479439,
		0.748041, -0.105156, 0.655268,
		0.589793, 0.558016, -0.583748,
		46.058559, 53.150890, 51.524620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785706, 53.370689, 52.331425>,  <45.645706, 52.760281, 51.933243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785706, 53.370689, 52.331425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885311, 53.515102, 51.971947>,  <45.945076, 53.601749, 51.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885311, 53.515102, 51.971947>,  <45.785706, 53.370689, 52.331425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885311, 53.515102, 51.971947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065646, 0.919497, 0.387578,
		0.966273, -0.155508, 0.205267,
		0.249013, 0.361031, -0.898693,
		45.960014, 53.623413, 51.702339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448425, 53.740025, 52.370388>,  <45.785706, 53.370689, 52.331425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448425, 53.740025, 52.370388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199261, 53.888718, 52.095055>,  <46.049763, 53.977932, 51.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199261, 53.888718, 52.095055>,  <46.448425, 53.740025, 52.370388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199261, 53.888718, 52.095055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111882, 0.828510, 0.548683,
		0.774252, 0.418792, -0.474497,
		-0.622910, 0.371731, -0.688331,
		46.012386, 54.000237, 51.888554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053898, 53.467777, 52.753441>,  <46.448425, 53.740025, 52.370388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053898, 53.467777, 52.753441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100601, 53.689610, 52.423882>,  <47.128624, 53.822708, 52.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.100601, 53.689610, 52.423882>,  <47.053898, 53.467777, 52.753441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100601, 53.689610, 52.423882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991688, -0.019933, 0.127116,
		0.054073, -0.831893, -0.552295,
		0.116756, 0.554577, -0.823901,
		47.135628, 53.855984, 52.176712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.521175, 53.033314, 52.409599>,  <47.053898, 53.467777, 52.753441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.521175, 53.033314, 52.409599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515572, 53.433125, 52.398643>,  <47.512211, 53.673012, 52.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515572, 53.433125, 52.398643>,  <47.521175, 53.033314, 52.409599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515572, 53.433125, 52.398643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967568, 0.020457, 0.251782,
		0.252223, -0.022973, -0.967397,
		-0.014006, 0.999527, -0.027387,
		47.511372, 53.732983, 52.390427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.008919, 53.189518, 51.963291>,  <47.521175, 53.033314, 52.409599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.008919, 53.189518, 51.963291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.978786, 53.504623, 52.207832>,  <47.960705, 53.693687, 52.354557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.978786, 53.504623, 52.207832>,  <48.008919, 53.189518, 51.963291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.978786, 53.504623, 52.207832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939474, -0.149432, 0.308317,
		0.334236, 0.597578, -0.728825,
		-0.075334, 0.787763, 0.611354,
		47.956188, 53.740952, 52.391239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.556664, 53.670952, 51.803238>,  <48.008919, 53.189518, 51.963291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.556664, 53.670952, 51.803238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440319, 53.695572, 52.185150>,  <48.370514, 53.710346, 52.414299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440319, 53.695572, 52.185150>,  <48.556664, 53.670952, 51.803238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.440319, 53.695572, 52.185150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906706, -0.300834, 0.295607,
		0.305427, 0.951688, 0.031688,
		-0.290858, 0.061554, 0.954784,
		48.353062, 53.714039, 52.471584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.129383, 53.295143, 52.076996>,  <48.556664, 53.670952, 51.803238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.129383, 53.295143, 52.076996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898159, 53.418755, 52.379082>,  <48.759426, 53.492920, 52.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.898159, 53.418755, 52.379082>,  <49.129383, 53.295143, 52.076996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.898159, 53.418755, 52.379082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728730, -0.220929, 0.648184,
		0.367157, 0.925036, -0.097489,
		-0.578056, 0.309029, 0.755217,
		48.724743, 53.511463, 52.605648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.609615, 53.212227, 52.602013>,  <49.129383, 53.295143, 52.076996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.609615, 53.212227, 52.602013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.264427, 53.304298, 52.781921>,  <49.057312, 53.359543, 52.889866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.264427, 53.304298, 52.781921>,  <49.609615, 53.212227, 52.602013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.264427, 53.304298, 52.781921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460556, -0.007698, 0.887597,
		0.207768, 0.973118, -0.099367,
		-0.862972, 0.230179, 0.449775,
		49.005535, 53.373352, 52.916855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.493500, 53.958492, 52.837116>,  <49.609615, 53.212227, 52.602013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.493500, 53.958492, 52.837116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321053, 53.676010, 53.061764>,  <49.217583, 53.506523, 53.196552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.321053, 53.676010, 53.061764>,  <49.493500, 53.958492, 52.837116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.321053, 53.676010, 53.061764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575215, 0.264440, 0.774080,
		-0.695171, 0.656771, 0.292213,
		-0.431120, -0.706204, 0.561615,
		49.191715, 53.464149, 53.230247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.093185, 54.325962, 53.420322>,  <49.493500, 53.958492, 52.837116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.093185, 54.325962, 53.420322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.259838, 53.967644, 53.482239>,  <49.359829, 53.752651, 53.519386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.259838, 53.967644, 53.482239>,  <49.093185, 54.325962, 53.420322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.259838, 53.967644, 53.482239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572046, 0.390676, 0.721204,
		-0.706527, -0.211931, 0.675207,
		0.416633, -0.895800, 0.154788,
		49.384827, 53.698902, 53.528675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.955582, 54.072460, 54.109200>,  <49.093185, 54.325962, 53.420322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.955582, 54.072460, 54.109200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.302326, 53.948090, 53.953308>,  <49.510372, 53.873466, 53.859776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.302326, 53.948090, 53.953308>,  <48.955582, 54.072460, 54.109200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.302326, 53.948090, 53.953308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497671, 0.493087, 0.713575,
		-0.029699, -0.812522, 0.582174,
		0.866857, -0.310923, -0.389724,
		49.562382, 53.854813, 53.836391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.503273, 53.899033, 54.541893>,  <48.955582, 54.072460, 54.109200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.503273, 53.899033, 54.541893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.673431, 54.037579, 54.207451>,  <49.775528, 54.120708, 54.006786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.673431, 54.037579, 54.207451>,  <49.503273, 53.899033, 54.541893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.673431, 54.037579, 54.207451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531997, 0.651679, 0.540642,
		0.732131, -0.674791, 0.092956,
		0.425398, 0.346369, -0.836101,
		49.801052, 54.141491, 53.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.321060, 53.940750, 54.613365>,  <49.503273, 53.899033, 54.541893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.321060, 53.940750, 54.613365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.153889, 54.208031, 54.367161>,  <50.053585, 54.368397, 54.219440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.153889, 54.208031, 54.367161>,  <50.321060, 53.940750, 54.613365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.153889, 54.208031, 54.367161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459253, 0.739960, 0.491473,
		0.783851, -0.077273, -0.616122,
		-0.417928, 0.668198, -0.615506,
		50.028511, 54.408489, 54.182510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.888607, 54.352989, 54.193188>,  <50.321060, 53.940750, 54.613365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.888607, 54.352989, 54.193188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.551483, 54.523842, 54.324173>,  <50.349209, 54.626354, 54.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.551483, 54.523842, 54.324173>,  <50.888607, 54.352989, 54.193188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.551483, 54.523842, 54.324173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536247, 0.718360, 0.443169,
		-0.045946, 0.549108, -0.834487,
		-0.842809, 0.427130, 0.327463,
		50.298641, 54.651981, 54.422413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.777496, 55.088150, 54.029175>,  <50.888607, 54.352989, 54.193188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.777496, 55.088150, 54.029175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.614872, 55.011509, 54.386497>,  <50.517300, 54.965527, 54.600891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.614872, 55.011509, 54.386497>,  <50.777496, 55.088150, 54.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.614872, 55.011509, 54.386497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718311, 0.537170, 0.442128,
		-0.564571, 0.821424, -0.080762,
		-0.406558, -0.191600, 0.893308,
		50.492905, 54.954029, 54.654491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.656536, 55.672379, 54.422447>,  <50.777496, 55.088150, 54.029175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.656536, 55.672379, 54.422447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.719166, 55.372894, 54.680103>,  <50.756744, 55.193203, 54.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.719166, 55.372894, 54.680103>,  <50.656536, 55.672379, 54.422447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.719166, 55.372894, 54.680103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824342, 0.458290, 0.332311,
		-0.544008, 0.478963, 0.688948,
		0.156573, -0.748709, 0.644143,
		50.766136, 55.148281, 54.873344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.890850, 56.009060, 55.106430>,  <50.656536, 55.672379, 54.422447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.890850, 56.009060, 55.106430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021877, 55.633015, 55.068718>,  <51.100494, 55.407387, 55.046089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021877, 55.633015, 55.068718>,  <50.890850, 56.009060, 55.106430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.021877, 55.633015, 55.068718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944286, 0.329124, -0.001010,
		0.031981, -0.088699, 0.995545,
		0.327568, -0.940112, -0.094283,
		51.120148, 55.350983, 55.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.391457, 55.740303, 55.664375>,  <50.890850, 56.009060, 55.106430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.391457, 55.740303, 55.664375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.465736, 55.569180, 55.310539>,  <51.510303, 55.466507, 55.098240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.465736, 55.569180, 55.310539>,  <51.391457, 55.740303, 55.664375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.465736, 55.569180, 55.310539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957407, 0.281348, 0.064926,
		0.221101, -0.858968, 0.461831,
		0.185704, -0.427805, -0.884588,
		51.521446, 55.440838, 55.045162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.050110, 55.379410, 55.750515>,  <51.391457, 55.740303, 55.664375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.050110, 55.379410, 55.750515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.943207, 55.483429, 55.379364>,  <51.879066, 55.545841, 55.156673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.943207, 55.483429, 55.379364>,  <52.050110, 55.379410, 55.750515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.943207, 55.483429, 55.379364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927826, 0.329465, -0.174905,
		0.260219, -0.907650, -0.329328,
		-0.267254, 0.260045, -0.927875,
		51.863029, 55.561443, 55.101002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.383644, 54.935535, 55.164948>,  <52.050110, 55.379410, 55.750515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.383644, 54.935535, 55.164948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.291531, 55.305561, 55.044136>,  <52.236263, 55.527576, 54.971649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.291531, 55.305561, 55.044136>,  <52.383644, 54.935535, 55.164948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.291531, 55.305561, 55.044136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968485, 0.187604, -0.163832,
		-0.094895, -0.330234, -0.939117,
		-0.230285, 0.925068, -0.302024,
		52.222446, 55.583080, 54.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.970093, 55.271313, 54.915508>,  <52.383644, 54.935535, 55.164948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.970093, 55.271313, 54.915508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.793633, 55.629349, 54.889557>,  <52.687756, 55.844170, 54.873985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.793633, 55.629349, 54.889557>,  <52.970093, 55.271313, 54.915508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.793633, 55.629349, 54.889557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891549, 0.445373, 0.082360,
		0.102615, -0.021510, -0.994489,
		-0.441147, 0.895087, -0.064879,
		52.661289, 55.897873, 54.870094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.404163, 55.599545, 54.458607>,  <52.970093, 55.271313, 54.915508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.404163, 55.599545, 54.458607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.194622, 55.831459, 54.708225>,  <53.068897, 55.970608, 54.857994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.194622, 55.831459, 54.708225>,  <53.404163, 55.599545, 54.458607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.194622, 55.831459, 54.708225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783282, 0.615768, 0.085432,
		-0.334733, 0.533555, -0.776706,
		-0.523853, 0.579783, 0.624043,
		53.037468, 56.005394, 54.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.615166, 54.942768, 54.487030>,  <53.404163, 55.599545, 54.458607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.615166, 54.942768, 54.487030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.791782, 55.248516, 54.674984>,  <53.897751, 55.431965, 54.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.791782, 55.248516, 54.674984>,  <53.615166, 54.942768, 54.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.791782, 55.248516, 54.674984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894545, -0.415591, -0.164537,
		0.069512, 0.492979, -0.867260,
		0.441539, 0.764366, 0.469881,
		53.924244, 55.477825, 54.815948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.172295, 55.227039, 54.136776>,  <53.615166, 54.942768, 54.487030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.172295, 55.227039, 54.136776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.261848, 55.316025, 54.516331>,  <54.315578, 55.369415, 54.744064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.261848, 55.316025, 54.516331>,  <54.172295, 55.227039, 54.136776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.261848, 55.316025, 54.516331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946090, -0.283438, -0.156768,
		0.234075, 0.932830, -0.273930,
		0.223880, 0.222467, 0.948887,
		54.329014, 55.382767, 54.800995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.746136, 55.687664, 54.161949>,  <54.172295, 55.227039, 54.136776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.746136, 55.687664, 54.161949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.714600, 55.476273, 54.500061>,  <54.695679, 55.349438, 54.702927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.714600, 55.476273, 54.500061>,  <54.746136, 55.687664, 54.161949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.714600, 55.476273, 54.500061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981441, -0.189832, -0.027145,
		0.174807, 0.827450, 0.533638,
		-0.078841, -0.528479, 0.845277,
		54.690948, 55.317730, 54.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.195187, 55.956684, 54.655441>,  <54.746136, 55.687664, 54.161949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.195187, 55.956684, 54.655441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.132317, 55.574932, 54.756996>,  <55.094593, 55.345882, 54.817928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.132317, 55.574932, 54.756996>,  <55.195187, 55.956684, 54.655441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.132317, 55.574932, 54.756996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986918, -0.142456, 0.075487,
		-0.035875, 0.262434, 0.964283,
		-0.157178, -0.954377, 0.253890,
		55.085163, 55.288620, 54.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.367107, 55.724358, 55.408928>,  <55.195187, 55.956684, 54.655441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.367107, 55.724358, 55.408928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.416756, 55.441967, 55.130020>,  <55.446545, 55.272533, 54.962677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.416756, 55.441967, 55.130020>,  <55.367107, 55.724358, 55.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.416756, 55.441967, 55.130020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990532, 0.046604, 0.129134,
		-0.058670, -0.706696, 0.705081,
		0.124118, -0.705981, -0.697270,
		55.453991, 55.230171, 54.920837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.921597, 55.145275, 55.638783>,  <55.367107, 55.724358, 55.408928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.921597, 55.145275, 55.638783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.872475, 55.138550, 55.241867>,  <55.843002, 55.134514, 55.003719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.872475, 55.138550, 55.241867>,  <55.921597, 55.145275, 55.638783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.872475, 55.138550, 55.241867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959885, -0.255968, -0.114460,
		-0.252069, -0.966539, 0.047574,
		-0.122808, -0.016813, -0.992288,
		55.835632, 55.133507, 54.944180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.497860, 54.699986, 55.501747>,  <55.921597, 55.145275, 55.638783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.497860, 54.699986, 55.501747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.423363, 54.870445, 55.147636>,  <56.378662, 54.972721, 54.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.423363, 54.870445, 55.147636>,  <56.497860, 54.699986, 55.501747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.423363, 54.870445, 55.147636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980719, 0.026363, -0.193636,
		-0.059179, -0.904268, -0.422845,
		-0.186246, 0.426152, -0.885272,
		56.367489, 54.998291, 54.882053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.680660, 54.168289, 54.973808>,  <56.497860, 54.699986, 55.501747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.680660, 54.168289, 54.973808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.773232, 54.553490, 54.918560>,  <56.828773, 54.784611, 54.885410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.773232, 54.553490, 54.918560>,  <56.680660, 54.168289, 54.973808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.773232, 54.553490, 54.918560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972833, -0.228172, 0.039163,
		0.006198, -0.143433, -0.989641,
		0.231426, 0.962998, -0.138122,
		56.842659, 54.842388, 54.877125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.180275, 54.102688, 54.506401>,  <56.680660, 54.168289, 54.973808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.180275, 54.102688, 54.506401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.233818, 54.447403, 54.702118>,  <57.265942, 54.654232, 54.819550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.233818, 54.447403, 54.702118>,  <57.180275, 54.102688, 54.506401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.233818, 54.447403, 54.702118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984051, -0.173958, 0.037187,
		0.117164, 0.476511, -0.871326,
		0.133854, 0.861786, 0.489293,
		57.273975, 54.705940, 54.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.888912, 54.399338, 54.319210>,  <57.180275, 54.102688, 54.506401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.888912, 54.399338, 54.319210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.799217, 54.569672, 54.669838>,  <57.745399, 54.671871, 54.880215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.799217, 54.569672, 54.669838>,  <57.888912, 54.399338, 54.319210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.799217, 54.569672, 54.669838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957048, -0.073408, 0.280481,
		0.183787, 0.901816, -0.391088,
		-0.224233, 0.425839, 0.876573,
		57.731949, 54.697422, 54.932812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.209736, 55.121483, 54.281483>,  <57.888912, 54.399338, 54.319210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.209736, 55.121483, 54.281483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.173691, 54.979694, 54.653770>,  <58.152065, 54.894623, 54.877144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.173691, 54.979694, 54.653770>,  <58.209736, 55.121483, 54.281483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.173691, 54.979694, 54.653770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970268, 0.179538, 0.162316,
		-0.224635, 0.917669, 0.327753,
		-0.090109, -0.354470, 0.930716,
		58.146660, 54.873352, 54.932983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.626598, 55.487751, 54.701984>,  <58.209736, 55.121483, 54.281483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.626598, 55.487751, 54.701984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.599068, 55.135017, 54.888592>,  <58.582550, 54.923378, 55.000557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.599068, 55.135017, 54.888592>,  <58.626598, 55.487751, 54.701984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.599068, 55.135017, 54.888592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989722, -0.001598, 0.142994,
		-0.125351, 0.471564, 0.872877,
		-0.068826, -0.881830, 0.466517,
		58.578419, 54.870468, 55.028545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.768108, 55.523247, 55.461864>,  <58.626598, 55.487751, 54.701984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.768108, 55.523247, 55.461864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872543, 55.188118, 55.270081>,  <58.935204, 54.987041, 55.155010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872543, 55.188118, 55.270081>,  <58.768108, 55.523247, 55.461864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.872543, 55.188118, 55.270081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963683, 0.197342, 0.179921,
		-0.056125, -0.509024, 0.858920,
		0.261085, -0.837825, -0.479462,
		58.950871, 54.936771, 55.126244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.500534, 55.425030, 55.744644>,  <58.768108, 55.523247, 55.461864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.500534, 55.425030, 55.744644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.461555, 55.168877, 55.439903>,  <59.438168, 55.015182, 55.257061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.461555, 55.168877, 55.439903>,  <59.500534, 55.425030, 55.744644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.461555, 55.168877, 55.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908795, 0.254792, -0.330413,
		0.405704, -0.724561, 0.557149,
		-0.097447, -0.640384, -0.761848,
		59.432320, 54.976761, 55.211349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.008842, 54.793270, 55.756844>,  <59.500534, 55.425030, 55.744644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.008842, 54.793270, 55.756844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.912468, 54.976490, 55.414581>,  <59.854641, 55.086422, 55.209225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.912468, 54.976490, 55.414581>,  <60.008842, 54.793270, 55.756844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.912468, 54.976490, 55.414581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912111, 0.408147, -0.038348,
		0.331666, -0.789690, -0.516127,
		-0.240939, 0.458046, -0.855653,
		59.840187, 55.113903, 55.157887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.556133, 54.889297, 55.121029>,  <60.008842, 54.793270, 55.756844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.556133, 54.889297, 55.121029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.354301, 55.229862, 55.063766>,  <60.233204, 55.434200, 55.029408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.354301, 55.229862, 55.063766>,  <60.556133, 54.889297, 55.121029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.354301, 55.229862, 55.063766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862536, 0.504381, -0.040379,
		0.037826, -0.143853, -0.988876,
		-0.504579, 0.851414, -0.143157,
		60.202927, 55.485287, 55.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.880959, 55.312183, 54.653252>,  <60.556133, 54.889297, 55.121029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.880959, 55.312183, 54.653252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.673508, 55.515213, 54.928467>,  <60.549038, 55.637032, 55.093597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.673508, 55.515213, 54.928467>,  <60.880959, 55.312183, 54.653252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.673508, 55.515213, 54.928467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829669, 0.493194, 0.261550,
		-0.206583, 0.706493, -0.676898,
		-0.518625, 0.507570, 0.688041,
		60.517921, 55.667484, 55.134880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.545155, 55.231628, 54.927586>,  <60.880959, 55.312183, 54.653252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.545155, 55.231628, 54.927586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.804138, 55.536095, 54.912491>,  <61.959530, 55.718773, 54.903435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.804138, 55.536095, 54.912491>,  <61.545155, 55.231628, 54.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.804138, 55.536095, 54.912491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033356, -0.021161, -0.999219,
		-0.761369, 0.648214, 0.011688,
		0.647461, 0.761164, -0.037733,
		61.998375, 55.764442, 54.901173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.297844, 56.021320, 54.722435>,  <61.545155, 55.231628, 54.927586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.297844, 56.021320, 54.722435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.661377, 55.900711, 54.607117>,  <61.879498, 55.828346, 54.537926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.661377, 55.900711, 54.607117>,  <61.297844, 56.021320, 54.722435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.661377, 55.900711, 54.607117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332514, -0.106264, -0.937093,
		0.251923, 0.947518, -0.196838,
		0.908829, -0.301526, -0.288292,
		61.934025, 55.810253, 54.520630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.593224, 56.647629, 54.395718>,  <61.297844, 56.021320, 54.722435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.593224, 56.647629, 54.395718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660995, 57.038464, 54.344177>,  <61.701660, 57.272964, 54.313255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660995, 57.038464, 54.344177>,  <61.593224, 56.647629, 54.395718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.660995, 57.038464, 54.344177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924808, -0.112437, 0.363438,
		0.340622, -0.180737, -0.922665,
		0.169429, 0.977084, -0.128848,
		61.711823, 57.331589, 54.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.058388, 56.707905, 53.807949>,  <61.593224, 56.647629, 54.395718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.058388, 56.707905, 53.807949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.074142, 56.997482, 54.083443>,  <62.083595, 57.171230, 54.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.074142, 56.997482, 54.083443>,  <62.058388, 56.707905, 53.807949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.074142, 56.997482, 54.083443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954807, -0.230484, 0.187672,
		0.294606, 0.650213, -0.700307,
		0.039383, 0.723947, 0.688730,
		62.085957, 57.214668, 54.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.569950, 57.137360, 53.598923>,  <62.058388, 56.707905, 53.807949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.569950, 57.137360, 53.598923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536407, 57.155655, 53.997093>,  <62.516281, 57.166630, 54.235996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.536407, 57.155655, 53.997093>,  <62.569950, 57.137360, 53.598923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.536407, 57.155655, 53.997093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970484, -0.222928, 0.091996,
		0.226116, 0.973761, -0.025691,
		-0.083854, 0.045734, 0.995428,
		62.511250, 57.169376, 54.295723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.997234, 57.757259, 53.893108>,  <62.569950, 57.137360, 53.598923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.997234, 57.757259, 53.893108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.963707, 57.436230, 54.129364>,  <62.943592, 57.243610, 54.271118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.963707, 57.436230, 54.129364>,  <62.997234, 57.757259, 53.893108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.963707, 57.436230, 54.129364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996385, -0.075734, 0.038484,
		0.013845, 0.591727, 0.806019,
		-0.083816, -0.802573, 0.590637,
		62.938560, 57.195457, 54.306557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.243271, 57.860188, 54.622482>,  <62.997234, 57.757259, 53.893108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.243271, 57.860188, 54.622482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.257416, 57.473030, 54.522942>,  <63.265903, 57.240734, 54.463219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.257416, 57.473030, 54.522942>,  <63.243271, 57.860188, 54.622482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.257416, 57.473030, 54.522942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916104, -0.068118, 0.395110,
		-0.399377, -0.241943, 0.884286,
		0.035358, -0.967896, -0.248850,
		63.268024, 57.182663, 54.448288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.687355, 57.430096, 54.950108>,  <63.243271, 57.860188, 54.622482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.687355, 57.430096, 54.950108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.672943, 57.585911, 55.318230>,  <62.664295, 57.679401, 55.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.672943, 57.585911, 55.318230>,  <62.687355, 57.430096, 54.950108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.672943, 57.585911, 55.318230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928025, 0.328623, -0.175431,
		-0.370770, -0.860386, 0.349664,
		-0.036031, 0.389542, 0.920304,
		62.662132, 57.702774, 55.594322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.104630, 57.157719, 55.422783>,  <62.687355, 57.430096, 54.950108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.104630, 57.157719, 55.422783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222984, 57.523438, 55.533424>,  <62.293999, 57.742870, 55.599808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222984, 57.523438, 55.533424>,  <62.104630, 57.157719, 55.422783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.222984, 57.523438, 55.533424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943772, 0.324519, -0.063102,
		-0.147458, -0.242380, 0.958910,
		0.295890, 0.914297, 0.276605,
		62.311752, 57.797726, 55.616405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.826382, 57.334244, 56.211174>,  <62.104630, 57.157719, 55.422783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.826382, 57.334244, 56.211174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.833252, 57.623161, 55.934624>,  <61.837372, 57.796513, 55.768696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.833252, 57.623161, 55.934624>,  <61.826382, 57.334244, 56.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.833252, 57.623161, 55.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966519, 0.189049, 0.173498,
		0.256020, 0.665244, 0.701359,
		0.017172, 0.722296, -0.691371,
		61.838402, 57.839851, 55.727211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.443016, 57.018383, 56.366982>,  <61.826382, 57.334244, 56.211174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.443016, 57.018383, 56.366982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.746376, 56.853043, 56.568565>,  <62.928391, 56.753838, 56.689518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.746376, 56.853043, 56.568565>,  <62.443016, 57.018383, 56.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.746376, 56.853043, 56.568565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537569, 0.833902, -0.125008,
		-0.368583, 0.365721, 0.854631,
		0.758397, -0.413347, 0.503962,
		62.973896, 56.729038, 56.719753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.634918, 57.135353, 57.140144>,  <62.443016, 57.018383, 56.366982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.634918, 57.135353, 57.140144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.947784, 57.080421, 56.897049>,  <63.135506, 57.047462, 56.751190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.947784, 57.080421, 56.897049>,  <62.634918, 57.135353, 57.140144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.947784, 57.080421, 56.897049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118416, 0.990394, -0.071401,
		0.611709, -0.016119, 0.790919,
		0.782170, -0.137334, -0.607741,
		63.182434, 57.039223, 56.714725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.886288, 57.758862, 57.205650>,  <62.634918, 57.135353, 57.140144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.886288, 57.758862, 57.205650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.113373, 57.600513, 56.916931>,  <63.249622, 57.505505, 56.743702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.113373, 57.600513, 56.916931>,  <62.886288, 57.758862, 57.205650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.113373, 57.600513, 56.916931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302227, 0.915788, -0.264559,
		0.765742, -0.067952, 0.639548,
		0.567713, -0.395872, -0.721795,
		63.283688, 57.481750, 56.700394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.455040, 58.062363, 57.220417>,  <62.886288, 57.758862, 57.205650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.455040, 58.062363, 57.220417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.567291, 57.964897, 56.849068>,  <63.634640, 57.906418, 56.626259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.567291, 57.964897, 56.849068>,  <63.455040, 58.062363, 57.220417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.567291, 57.964897, 56.849068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391462, 0.912192, -0.121091,
		0.876360, -0.329441, 0.351370,
		0.280625, -0.243667, -0.928373,
		63.651478, 57.891796, 56.570557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.217255, 57.969894, 57.084141>,  <63.455040, 58.062363, 57.220417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.217255, 57.969894, 57.084141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100441, 58.042351, 56.708504>,  <64.030350, 58.085823, 56.483120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100441, 58.042351, 56.708504>,  <64.217255, 57.969894, 57.084141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.100441, 58.042351, 56.708504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719408, 0.688615, -0.090895,
		0.630211, -0.702138, -0.331415,
		-0.292038, 0.181140, -0.939096,
		64.012833, 58.096691, 56.426773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.802483, 57.978615, 56.748123>,  <64.217255, 57.969894, 57.084141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.802483, 57.978615, 56.748123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.546883, 58.197620, 56.532013>,  <64.393524, 58.329025, 56.402348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.546883, 58.197620, 56.532013>,  <64.802483, 57.978615, 56.748123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.546883, 58.197620, 56.532013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723684, 0.665963, -0.181038,
		0.260682, -0.506672, -0.821784,
		-0.639004, 0.547519, -0.540275,
		64.355179, 58.361877, 56.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.920410, 58.467278, 57.312931>,  <64.802483, 57.978615, 56.748123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.920410, 58.467278, 57.312931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.249176, 58.680489, 57.232597>,  <65.446434, 58.808414, 57.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.249176, 58.680489, 57.232597>,  <64.920410, 58.467278, 57.312931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.249176, 58.680489, 57.232597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132519, 0.163964, 0.977525,
		0.553974, -0.830061, 0.064129,
		0.821920, 0.533025, -0.200830,
		65.495750, 58.840397, 57.172348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.020126, 58.521828, 58.018784>,  <64.920410, 58.467278, 57.312931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.020126, 58.521828, 58.018784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.995827, 58.154099, 57.863266>,  <64.981247, 57.933460, 57.769955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.995827, 58.154099, 57.863266>,  <65.020126, 58.521828, 58.018784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.995827, 58.154099, 57.863266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995837, -0.029306, -0.086313,
		0.067956, -0.392417, 0.917274,
		-0.060753, -0.919320, -0.388792,
		64.977600, 57.878304, 57.746628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.461632, 58.030895, 58.369598>,  <65.020126, 58.521828, 58.018784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.461632, 58.030895, 58.369598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.424301, 57.950680, 57.979507>,  <65.401901, 57.902550, 57.745453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.424301, 57.950680, 57.979507>,  <65.461632, 58.030895, 58.369598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.424301, 57.950680, 57.979507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976926, -0.207442, -0.050829,
		-0.192111, -0.957473, 0.215267,
		-0.093323, -0.200535, -0.975232,
		65.396301, 57.890518, 57.686939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.673836, 57.254627, 58.144875>,  <65.461632, 58.030895, 58.369598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.673836, 57.254627, 58.144875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772224, 57.546417, 57.889572>,  <65.831253, 57.721489, 57.736389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.772224, 57.546417, 57.889572>,  <65.673836, 57.254627, 58.144875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.772224, 57.546417, 57.889572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965817, -0.128851, 0.224932,
		0.081842, -0.671766, -0.736229,
		0.245965, 0.729471, -0.638257,
		65.846016, 57.765259, 57.698093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.408150, 57.117519, 58.089245>,  <65.673836, 57.254627, 58.144875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.408150, 57.117519, 58.089245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.368217, 57.470772, 57.905891>,  <66.344261, 57.682724, 57.795879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.368217, 57.470772, 57.905891>,  <66.408150, 57.117519, 58.089245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.368217, 57.470772, 57.905891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994845, 0.080317, -0.061915,
		-0.017863, -0.462199, -0.886596,
		-0.099826, 0.883131, -0.458382,
		66.338272, 57.735710, 57.768375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.907219, 57.065609, 57.563522>,  <66.408150, 57.117519, 58.089245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.907219, 57.065609, 57.563522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.819405, 57.451435, 57.622063>,  <66.766716, 57.682930, 57.657188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.819405, 57.451435, 57.622063>,  <66.907219, 57.065609, 57.563522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.819405, 57.451435, 57.622063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951049, 0.245041, -0.188311,
		-0.217501, 0.097848, -0.971143,
		-0.219544, 0.964562, 0.146355,
		66.753540, 57.740803, 57.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.277359, 57.638493, 57.087059>,  <66.907219, 57.065609, 57.563522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.277359, 57.638493, 57.087059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172798, 57.781662, 57.445625>,  <67.110062, 57.867561, 57.660767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172798, 57.781662, 57.445625>,  <67.277359, 57.638493, 57.087059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.172798, 57.781662, 57.445625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948903, 0.265396, 0.170731,
		-0.176798, 0.895242, -0.409003,
		-0.261393, 0.357919, 0.896419,
		67.094383, 57.889038, 57.714550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.643204, 58.293480, 57.319641>,  <67.277359, 57.638493, 57.087059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.643204, 58.293480, 57.319641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.525536, 58.101860, 57.650452>,  <67.454933, 57.986889, 57.848938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.525536, 58.101860, 57.650452>,  <67.643204, 58.293480, 57.319641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.525536, 58.101860, 57.650452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886182, 0.187379, 0.423758,
		-0.357967, 0.857557, 0.369398,
		-0.294179, -0.479045, 0.827028,
		67.437279, 57.958145, 57.898560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.566208, 58.712738, 58.121227>,  <67.643204, 58.293480, 57.319641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.566208, 58.712738, 58.121227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700729, 58.340893, 58.060944>,  <67.781441, 58.117786, 58.024773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.700729, 58.340893, 58.060944>,  <67.566208, 58.712738, 58.121227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.700729, 58.340893, 58.060944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934148, 0.308989, 0.178586,
		-0.119451, -0.200839, 0.972314,
		0.336302, -0.929618, -0.150704,
		67.801620, 58.062008, 58.015732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.997414, 58.681038, 58.582363>,  <67.566208, 58.712738, 58.121227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.997414, 58.681038, 58.582363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075813, 58.357777, 58.360199>,  <68.122856, 58.163822, 58.226902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075813, 58.357777, 58.360199>,  <67.997414, 58.681038, 58.582363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.075813, 58.357777, 58.360199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972137, 0.085881, 0.218113,
		-0.128569, -0.582683, 0.802465,
		0.196007, -0.808149, -0.555407,
		68.134613, 58.115334, 58.193577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.403282, 58.101490, 58.968784>,  <67.997414, 58.681038, 58.582363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.403282, 58.101490, 58.968784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.498749, 58.146721, 58.582985>,  <68.556030, 58.173859, 58.351505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.498749, 58.146721, 58.582985>,  <68.403282, 58.101490, 58.968784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.498749, 58.146721, 58.582985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952270, 0.167408, 0.255258,
		0.190328, -0.979382, -0.067723,
		0.238657, 0.113073, -0.964498,
		68.570343, 58.180645, 58.293636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.940796, 57.621067, 58.769310>,  <68.403282, 58.101490, 58.968784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.940796, 57.621067, 58.769310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.940414, 57.963280, 58.562210>,  <68.940186, 58.168606, 58.437950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.940414, 57.963280, 58.562210>,  <68.940796, 57.621067, 58.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.940414, 57.963280, 58.562210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965602, 0.135410, 0.221985,
		0.260023, -0.499730, -0.826231,
		-0.000947, 0.855532, -0.517750,
		68.940132, 58.219940, 58.406883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.520653, 57.640064, 58.294495>,  <68.940796, 57.621067, 58.769310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.520653, 57.640064, 58.294495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.400909, 58.010674, 58.385651>,  <69.329063, 58.233040, 58.440346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.400909, 58.010674, 58.385651>,  <69.520653, 57.640064, 58.294495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.400909, 58.010674, 58.385651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904428, 0.199455, 0.377130,
		0.303966, 0.319008, -0.897685,
		-0.299355, 0.926527, 0.227892,
		69.311104, 58.288631, 58.454018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.849434, 58.236790, 57.853622>,  <69.520653, 57.640064, 58.294495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.849434, 58.236790, 57.853622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.765320, 58.334465, 58.232285>,  <69.714851, 58.393070, 58.459480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.765320, 58.334465, 58.232285>,  <69.849434, 58.236790, 57.853622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.765320, 58.334465, 58.232285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977108, 0.084472, 0.195256,
		-0.032286, 0.966042, -0.256361,
		-0.210281, 0.244189, 0.946654,
		69.702232, 58.407722, 58.516281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.193588, 58.880276, 58.090672>,  <69.849434, 58.236790, 57.853622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.193588, 58.880276, 58.090672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.142128, 58.631340, 58.399513>,  <70.111252, 58.481979, 58.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.142128, 58.631340, 58.399513>,  <70.193588, 58.880276, 58.090672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.142128, 58.631340, 58.399513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960229, 0.116385, 0.253800,
		-0.247812, 0.774044, 0.582620,
		-0.128644, -0.622343, 0.772101,
		70.103539, 58.444637, 58.631142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.572922, 59.175957, 58.646576>,  <70.193588, 58.880276, 58.090672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.572922, 59.175957, 58.646576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567924, 58.779724, 58.701111>,  <70.564926, 58.541985, 58.733829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.567924, 58.779724, 58.701111>,  <70.572922, 59.175957, 58.646576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.567924, 58.779724, 58.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985981, 0.010479, 0.166527,
		-0.166387, 0.136504, 0.976566,
		-0.012498, -0.990584, 0.136334,
		70.564178, 58.482548, 58.742012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.852234, 59.017075, 59.289486>,  <70.572922, 59.175957, 58.646576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.852234, 59.017075, 59.289486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.895622, 58.715500, 59.030312>,  <70.921654, 58.534557, 58.874805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.895622, 58.715500, 59.030312>,  <70.852234, 59.017075, 59.289486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.895622, 58.715500, 59.030312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992819, 0.049082, 0.109092,
		-0.050446, -0.655115, 0.753843,
		0.108468, -0.753933, -0.647935,
		70.928162, 58.489319, 58.835930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.269150, 58.526115, 59.504177>,  <70.852234, 59.017075, 59.289486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.269150, 58.526115, 59.504177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.319931, 58.406178, 59.125977>,  <71.350403, 58.334217, 58.899055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.319931, 58.406178, 59.125977>,  <71.269150, 58.526115, 59.504177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.319931, 58.406178, 59.125977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979235, -0.114001, 0.167641,
		-0.158054, -0.947153, 0.279142,
		0.126959, -0.299842, -0.945503,
		71.358017, 58.316223, 58.842327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.543533, 57.779469, 59.489021>,  <71.269150, 58.526115, 59.504177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.543533, 57.779469, 59.489021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.657166, 58.035362, 59.203354>,  <71.725342, 58.188900, 59.031952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.657166, 58.035362, 59.203354>,  <71.543533, 57.779469, 59.489021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.657166, 58.035362, 59.203354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953366, -0.267670, 0.139446,
		-0.101954, -0.720480, -0.685940,
		0.284073, 0.639735, -0.714172,
		71.742386, 58.227283, 58.989101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.865410, 57.410805, 59.075550>,  <71.543533, 57.779469, 59.489021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.865410, 57.410805, 59.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.984238, 57.792633, 59.084862>,  <72.055534, 58.021729, 59.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.984238, 57.792633, 59.084862>,  <71.865410, 57.410805, 59.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.984238, 57.792633, 59.084862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927028, -0.294172, 0.232554,
		0.228839, -0.047501, -0.972305,
		0.297072, 0.954571, 0.023283,
		72.073357, 58.079006, 59.091846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.529823, 57.546337, 58.714699>,  <71.865410, 57.410805, 59.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.529823, 57.546337, 58.714699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494316, 57.836983, 58.987213>,  <72.473015, 58.011372, 59.150723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494316, 57.836983, 58.987213>,  <72.529823, 57.546337, 58.714699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.494316, 57.836983, 58.987213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970462, -0.090954, 0.223452,
		0.224330, 0.680994, -0.697082,
		-0.088767, 0.726618, 0.681283,
		72.467690, 58.054970, 59.191597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.273895, 57.511150, 59.034267>,  <72.529823, 57.546337, 58.714699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.273895, 57.511150, 59.034267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.316010, 57.725113, 59.369598>,  <73.341278, 57.853489, 59.570797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.316010, 57.725113, 59.369598>,  <73.273895, 57.511150, 59.034267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.316010, 57.725113, 59.369598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750808, -0.510022, 0.419720,
		0.652075, -0.673613, 0.347913,
		0.105286, 0.534905, 0.838327,
		73.347595, 57.885586, 59.621098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.414520, 57.210289, 59.786968>,  <73.273895, 57.511150, 59.034267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.414520, 57.210289, 59.786968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.184776, 57.537170, 59.806084>,  <73.046928, 57.733299, 59.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.184776, 57.537170, 59.806084>,  <73.414520, 57.210289, 59.786968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.184776, 57.537170, 59.806084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730034, -0.537765, 0.421733,
		0.370339, 0.207344, 0.905460,
		-0.574368, 0.817201, 0.047787,
		73.012466, 57.782330, 59.820419>
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
